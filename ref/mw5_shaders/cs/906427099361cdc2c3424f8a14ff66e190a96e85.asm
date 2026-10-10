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
; shader hash: e078716efc7b9445492376e4a349a01a
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

@BLUE_NOISE_SAMPLES.v.1dim = internal constant [384 x float] [float 0x3FE18FE160000000, float 0x3FE2F89540000000, float 0x3FE6E2D4C0000000, float 0x3FC15736E0000000, float 0x3FBA5540C0000000, float 0x3FD3170EC0000000, float 0x3FED0D5120000000, float 0x3FE296A0E0000000, float 0x3FC4826EA0000000, float 0x3FE8282660000000, float 0x3FAFC328C0000000, float 0x3FEC521960000000, float 0x3FE37806C0000000, float 0x3FCA6D0000000000, float 0x3FD7082D00000000, float 0x3FC5E13120000000, float 0x3FD2E650A0000000, float 0x3FEBB39F60000000, float 0x3FDC57B600000000, float 0x3FE7C97180000000, float 0x3FCBD95EA0000000, float 0x3FC9988140000000, float 0x3FEAC46E60000000, float 0x3FEAD953E0000000, float 0x3FC843F4E0000000, float 0x3FE1FA7840000000, float 0x3FDEF62560000000, float 0x3FD8DD05A0000000, float 0x3FB5C98040000000, float 0x3FE40B4F00000000, float 0x3FEC4AEE80000000, float 0x3FEB172F40000000, float 0x3FE0065C00000000, float 0x3FEA254D00000000, float 0x3FD8E6DF40000000, float 0x3FE24C96C0000000, float 0x3FDE978BA0000000, float 0x3FBA8F1180000000, float 0x3FB121A6A0000000, float 0x3FE3626000000000, float 0x3FDE58B860000000, float 0x3FB2DED7A0000000, float 0x3FD4F97900000000, float 0x3FD7645460000000, float 0x3FCE571520000000, float 0x3FE7E85200000000, float 0x3FEAFC6460000000, float 0x3FCC666220000000, float 0x3FEC4FF540000000, float 0x3FE7C8B540000000, float 0x3FEBF4AC20000000, float 0x3FD0C66640000000, float 0x3FE2F95320000000, float 0x3F915FFF00000000, float 0x3FE352C600000000, float 0x3FEBC2D0A0000000, float 0x3FE3664520000000, float 0x3FE4504660000000, float 0x3FE1D81AA0000000, float 0x3FD7A97CA0000000, float 0x3F86A53280000000, float 0x3FC1343780000000, float 0x3FE473A1A0000000, float 0x3FEC7EAE80000000, float 0x3FCE83F160000000, float 0x3FC3B66640000000, float 0x3FABB6C6C0000000, float 0x3FEC127C60000000, float 0x3FC3E70E00000000, float 0x3FDC159A60000000, float 0x3FD7AB8720000000, float 0x3FE14710E0000000, float 0x3FDE623A40000000, float 0x3FEB8A45E0000000, float 0x3FEC3C0140000000, float 0x3FD1597DE0000000, float 0x3FEAF0F9A0000000, float 0x3FE1C52360000000, float 0x3FEA622660000000, float 0x3FD760A060000000, float 0x3FEC561B20000000, float 0x3FBAF00320000000, float 0x3FE4643220000000, float 0x3FE72199C0000000, float 0x3FE2E54080000000, float 0x3FD56206C0000000, float 0x3FE8890420000000, float 0x3FEFBE55E0000000, float 0x3FD25DC400000000, float 0x3FD8BF4640000000, float 0x3FE956BCC0000000, float 0x3FE3A5DFE0000000, float 0x3FE5928420000000, float 0x3FE6754AA0000000, float 0x3FBBCDB900000000, float 0x3FE4509C40000000, float 0x3FE14E9AE0000000, float 0x3FEEE61140000000, float 0x3FD3ADB960000000, float 0x3FD3C9D440000000, float 0x3FDF30AF40000000, float 0x3FE885B760000000, float 0x3FEFC30220000000, float 0x3FB1A902E0000000, float 0x3FED532A00000000, float 0x3FBA846540000000, float 0x3FDAC4BEC0000000, float 0x3FB347E280000000, float 0x3FC77620A0000000, float 0x3FBBEF41C0000000, float 0x3FB2C764E0000000, float 0x3FC199A160000000, float 0x3FE44F4480000000, float 0x3FD01FE1E0000000, float 0x3FEC5559A0000000, float 0x3FA2E2FA40000000, float 0x3FD5AAA3C0000000, float 0x3FEDC06380000000, float 0x3FE393B900000000, float 0x3FDA23D800000000, float 0x3FC0BD6E60000000, float 0x3FD6E3CF60000000, float 0x3FE39D7140000000, float 0x3FE07677C0000000, float 0x3FBE721700000000, float 0x3FEA99EBC0000000, float 0x3FC9C1C7E0000000, float 0x3FB4545D20000000, float 0x3FE927BDC0000000, float 0x3FD2AF0880000000, float 0x3FEDDAA620000000, float 0x3FD4C3A220000000, float 0x3FE764E8C0000000, float 0x3FB5474C60000000, float 0x3FBD28BE60000000, float 0x3FDCAE7120000000, float 0x3FE65C7EC0000000, float 0x3FDFAE6DC0000000, float 0x3FEFF2D3E0000000, float 0x3FED44B380000000, float 0x3FE6676480000000, float 0x3FE59F4A80000000, float 0x3FE61D1240000000, float 0x3F80FB0B40000000, float 0x3FD57E1500000000, float 0x3FEC5C93C0000000, float 0x3FA826DF20000000, float 0x3FE939D3A0000000, float 0x3FDB702260000000, float 0x3FD0309DC0000000, float 0x3FC05BD4E0000000, float 0x3F647F5360000000, float 0x3FDFF14000000000, float 0x3FD6B472E0000000, float 0x3FC67E8AE0000000, float 0x3FD7E52D80000000, float 0x3FD9A20420000000, float 0x3FD873C2E0000000, float 0x3FEED079E0000000, float 0x3FD9280DA0000000, float 0x3FE0E70960000000, float 0x3FD7AD5C60000000, float 0x3FADC1E8A0000000, float 0x3FE9BAFE00000000, float 0x3FD6EB3FA0000000, float 0x3FE8B0FE80000000, float 0x3FEC006EA0000000, float 0x3FE7886EC0000000, float 0x3FD4E113A0000000, float 0x3FE5EB06E0000000, float 0x3FE7AE8F00000000, float 0x3FE594A1A0000000, float 0x3FE8BE5C40000000, float 0x3FDBBB7820000000, float 0x3FDC00F660000000, float 0x3FE3BEAF60000000, float 0x3FECE40A40000000, float 0x3FE476BE80000000, float 0x3FCE715760000000, float 0x3F9A66CEA0000000, float 0x3FE1E87120000000, float 0x3FD6EFB1C0000000, float 0x3FCE53C0A0000000, float 0x3FEEC44720000000, float 0x3FDE4FCA40000000, float 0x3FE71C3E60000000, float 0x3FEF2C7C20000000, float 0x3FE166A120000000, float 0x3FEE257F40000000, float 0x3FE9B56F40000000, float 0x3FECD0D600000000, float 0x3FA0FC3EC0000000, float 0x3FEC4C3DC0000000, float 0x3FD150EC60000000, float 0x3FE71F4F60000000, float 0x3FB622B360000000, float 0x3FDC8CDE60000000, float 0x3FD23942A0000000, float 0x3FE1F1FAA0000000, float 0x3FED974C60000000, float 0x3FB46602A0000000, float 0x3FE6E2E620000000, float 0x3FEFD8B280000000, float 0x3FDD9BF5C0000000, float 0x3FA674A1C0000000, float 0x3FE9B56E40000000, float 0x3FEEE67800000000, float 0x3FCDA72D80000000, float 0x3FD469FA40000000, float 0x3FDBC871E0000000, float 0x3FDD20E3E0000000, float 0x3FEF2C1DE0000000, float 0x3FDF7B00E0000000, float 0x3FD6281F00000000, float 0x3FC66B3000000000, float 0x3FEDE19700000000, float 0x3FDB2072A0000000, float 0x3FE0D7DF20000000, float 0x3FC3B1B640000000, float 0x3FDA9DE220000000, float 0x3FD04AFB60000000, float 0x3FE78D6920000000, float 0x3FEF438F00000000, float 0x3FD0DACEC0000000, float 0x3FED6152E0000000, float 0x3FE9CF90A0000000, float 0x3FD0689260000000, float 0x3FDB295100000000, float 0x3FE43A8B20000000, float 0x3FDB335EA0000000, float 0x3FE0E1EA60000000, float 0x3FEBAB00E0000000, float 0x3FDA8B1D60000000, float 0x3FB10CBD20000000, float 0x3FE78F4620000000, float 0x3FE227D0E0000000, float 0x3FEC0E76A0000000, float 0x3FEEF3F8C0000000, float 0x3FE5ADCD40000000, float 0x3FE386C040000000, float 0x3FE2FA86E0000000, float 0x3FCE803BA0000000, float 0x3FE26AEBE0000000, float 0x3FE58556A0000000, float 0x3FEB878100000000, float 0x3FEC77D980000000, float 0x3FC0793440000000, float 0x3FD134B520000000, float 0x3FC9DB4080000000, float 0x3FE83B8480000000, float 0x3FE4ECC2E0000000, float 0x3FCEA8E9A0000000, float 0x3FD60CA840000000, float 0x3FECE35B20000000, float 0x3FE746B7A0000000, float 0x3FCE074860000000, float 0x3FE81DE580000000, float 0x3FC2584AA0000000, float 0x3FD5C82E00000000, float 0x3FE0CECA40000000, float 0x3FE26646C0000000, float 0x3FC0854540000000, float 0x3FE77AA920000000, float 0x3FE0120580000000, float 0x3FEF5EE280000000, float 0x3FB39D7D80000000, float 0x3FC50B8D20000000, float 0x3FDBFF8BC0000000, float 0x3FB7077B80000000, float 0x3FCF722760000000, float 0x3FD274BA20000000, float 0x3FE7EC88A0000000, float 0x3FD8207A00000000, float 0x3FDC2B1A00000000, float 0x3FEAE81F60000000, float 0x3FD84A9200000000, float 0x3FEB3D1480000000, float 0x3F74CDAB80000000, float 0x3FE2903380000000, float 0x3FE3D88D60000000, float 0x3FE5557C00000000, float 0x3FE1B02540000000, float 0x3FCAD53680000000, float 0x3FC97E4340000000, float 0x3FE4A0C720000000, float 0x3FDE649800000000, float 0x3FE8A886A0000000, float 0x3FE77F7260000000, float 0x3FEB51B700000000, float 0x3FC2E2DE00000000, float 0x3F5888D4C0000000, float 0x3FD41984E0000000, float 0x3FD20DB1A0000000, float 0x3FB551A020000000, float 0x3FDB131880000000, float 0x3FEDC9D0C0000000, float 0x3FC7DD4AA0000000, float 0x3FD5F5F120000000, float 0x3F7F518660000000, float 0x3FEBF19260000000, float 0x3F799ADA40000000, float 0x3FDC20E100000000, float 0x3FE0E7DB40000000, float 0x3FC0BB4EE0000000, float 0x3FDECDAEE0000000, float 0x3FEA638F20000000, float 0x3FE70F2040000000, float 0x3FCA53C540000000, float 0x3FCCF95320000000, float 0x3FB324F500000000, float 0x3FE354CC40000000, float 0x3FB2C45460000000, float 0x3FE072AB00000000, float 0x3FE6B81580000000, float 0x3FAD0D1160000000, float 0x3FECCB0BE0000000, float 0x3FEB935140000000, float 0x3FD2A50CE0000000, float 0x3FE5A24D40000000, float 0x3FCB409DA0000000, float 0x3FEAFD5600000000, float 0x3FE2CA5C00000000, float 0x3FEEB0C0A0000000, float 0x3FE8201F60000000, float 0x3FAA420B00000000, float 0x3FD2EB8020000000, float 0x3FE7E3DFA0000000, float 0x3FE7E2A760000000, float 0x3FE8746C80000000, float 0x3FE31217A0000000, float 0x3FEB946480000000, float 0x3FE7B3EDC0000000, float 0x3FB74FEFA0000000, float 0x3FEE07E160000000, float 0x3FC272BDC0000000, float 0x3FDE3B38A0000000, float 0x3FE687E8E0000000, float 0x3FDD8CC5E0000000, float 0x3FE5BD32A0000000, float 0x3FC63803C0000000, float 0x3FED12DE60000000, float 0x3F99B048C0000000, float 0x3FEC98B3E0000000, float 0x3FB9C91A60000000, float 0x3FE8D6E040000000, float 0x3FD39228C0000000, float 0x3FE404F040000000, float 0x3FD00082E0000000, float 0x3FE9099100000000, float 0x3FE1A444E0000000, float 0x3FDDFDC900000000, float 0x3FD649EA00000000, float 0x3FE7F988C0000000, float 0x3FEEB362C0000000, float 0x3FBE7B5FE0000000, float 0x3FC6A55F60000000, float 0x3FE07F6B40000000, float 0x3FE0AFB880000000, float 0x3FDE87A600000000, float 0x3FEBF9DCC0000000, float 0x3FD039B760000000, float 0x3F73CF67C0000000, float 0x3FE33EED40000000, float 0x3FD43683E0000000, float 0x3FD1531020000000, float 0x3FE1D32C60000000, float 0x3FE16249C0000000, float 0x3FBCE097A0000000, float 0x3FDE6FED80000000, float 0x3FE47A3A60000000, float 0x3FE6D84580000000, float 0x3FEA3764C0000000, float 0x3FE9B3C000000000, float 0x3FCD0FDF40000000, float 0x3FE2C6AC00000000, float 0x3FCBCACA20000000, float 0x3FE02FE880000000, float 0x3FC52C7860000000, float 0x3FD5258C40000000, float 0x3FA7811BC0000000, float 0x3FAAEB5B20000000, float 0x3FE369AEC0000000, float 0x3FB38C3220000000, float 0x3FEF14BEE0000000], align 4
@"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [32 x float] undef, align 4

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
  %190 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %191 = icmp ult i32 %190, 32
  br i1 %191, label %192, label %310, !dx.controlflow.hints !41

; <label>:192                                     ; preds = %0
  %193 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %194 = fmul fast float %193, 0x3FE62E4300000000
  %195 = fmul fast float %194, %194
  %196 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %197 = add i32 %190, -1
  %198 = add i32 %190, 7
  %199 = and i32 %198, 4
  %200 = and i32 %197, %196
  %201 = xor i32 %200, %199
  %202 = and i32 %196, -4
  %203 = shl i32 %196, 1
  %204 = and i32 %203, 6
  %205 = lshr i32 177, %204
  %206 = and i32 %205, 3
  %207 = or i32 %206, %202
  %208 = udiv i32 %33, %190
  %209 = shl i32 %208, 2
  %210 = lshr i32 %196, 1
  %211 = and i32 %210, 1
  %212 = or i32 %209, %211
  %213 = lshr i32 %196, 2
  %214 = and i32 %213, 2
  %215 = or i32 %212, %214
  %216 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %194, i32 %201)  ; WaveReadLaneAt(value,lane)
  %217 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %195, i32 %201)  ; WaveReadLaneAt(value,lane)
  %218 = fadd fast float %216, %194
  %219 = fadd fast float %217, %195
  %220 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %218, i32 %207)  ; WaveReadLaneAt(value,lane)
  %221 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %219, i32 %207)  ; WaveReadLaneAt(value,lane)
  %222 = fadd fast float %220, %218
  %223 = fadd fast float %221, %219
  %224 = mul i32 %215, 2
  %225 = add i32 0, %224
  %226 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %225
  store float %222, float addrspace(3)* %226, align 4
  %227 = mul i32 %215, 2
  %228 = add i32 1, %227
  %229 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %228
  store float %223, float addrspace(3)* %229, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %230 = load float, float addrspace(3)* %226, align 4
  %231 = xor i32 %215, 4
  %232 = mul i32 %231, 2
  %233 = add i32 0, %232
  %234 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %233
  %235 = load float, float addrspace(3)* %234, align 4
  %236 = fadd fast float %235, %230
  %237 = fmul fast float %236, 1.250000e-01
  %238 = and i32 %56, 1
  %239 = and i32 %238, %57
  %240 = and i32 %239, %58
  %241 = icmp ne i32 %240, 0
  %242 = and i1 %241, %68
  br i1 %242, label %243, label %254, !dx.controlflow.hints !42

; <label>:243                                     ; preds = %192
  %244 = mul i32 %231, 2
  %245 = add i32 1, %244
  %246 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %245
  %247 = load float, float addrspace(3)* %246, align 4
  %248 = load float, float addrspace(3)* %229, align 4
  %249 = fadd fast float %247, %248
  %250 = fmul fast float %249, 1.250000e-01
  %251 = lshr i32 %56, 1
  %252 = lshr i32 %57, 1
  %253 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %251, i32 %252, i32 %253, float %237, float %250, float %237, float %237, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %254

; <label>:254                                     ; preds = %243, %192
  br i1 %67, label %256, label %255, !dx.controlflow.hints !43

; <label>:255                                     ; preds = %254
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %56, i32 %57, i32 %58, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %256

; <label>:256                                     ; preds = %255, %254
  %257 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %258 = add i32 %190, -1
  %259 = add i32 %190, 7
  %260 = and i32 %259, 4
  %261 = and i32 %258, %257
  %262 = xor i32 %261, %260
  %263 = and i32 %257, -4
  %264 = shl i32 %257, 1
  %265 = and i32 %264, 6
  %266 = lshr i32 177, %265
  %267 = and i32 %266, 3
  %268 = or i32 %267, %263
  %269 = udiv i32 %33, %190
  %270 = shl i32 %269, 2
  %271 = lshr i32 %257, 1
  %272 = and i32 %271, 1
  %273 = or i32 %270, %272
  %274 = lshr i32 %257, 2
  %275 = and i32 %274, 2
  %276 = or i32 %273, %275
  %277 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %262)  ; WaveReadLaneAt(value,lane)
  %278 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %262)  ; WaveReadLaneAt(value,lane)
  %279 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %277, i32 %268)  ; WaveReadLaneAt(value,lane)
  %280 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %278, i32 %268)  ; WaveReadLaneAt(value,lane)
  %281 = fadd fast float %279, %277
  %282 = fadd fast float %280, %278
  %283 = mul i32 %276, 2
  %284 = add i32 0, %283
  %285 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %284
  store float %281, float addrspace(3)* %285, align 4
  %286 = mul i32 %276, 2
  %287 = add i32 1, %286
  %288 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %287
  store float %282, float addrspace(3)* %288, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %289 = load float, float addrspace(3)* %285, align 4
  %290 = xor i32 %276, 4
  %291 = mul i32 %290, 2
  %292 = add i32 0, %291
  %293 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %292
  %294 = load float, float addrspace(3)* %293, align 4
  %295 = fadd fast float %294, %289
  %296 = fmul fast float %295, 1.250000e-01
  br i1 %242, label %297, label %308, !dx.controlflow.hints !44

; <label>:297                                     ; preds = %256
  %298 = mul i32 %290, 2
  %299 = add i32 1, %298
  %300 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %299
  %301 = load float, float addrspace(3)* %300, align 4
  %302 = load float, float addrspace(3)* %288, align 4
  %303 = fadd fast float %301, %302
  %304 = fmul fast float %303, 1.250000e-01
  %305 = lshr i32 %56, 1
  %306 = lshr i32 %57, 1
  %307 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %305, i32 %306, i32 %307, float %296, float %304, float %296, float %296, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %308

; <label>:308                                     ; preds = %297, %256
  br i1 %67, label %310, label %309, !dx.controlflow.hints !45

; <label>:309                                     ; preds = %308
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %56, i32 %57, i32 %58, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %310

; <label>:310                                     ; preds = %309, %308, %0
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = fsub fast float %184, %312
  %315 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %314)  ; FMax(a,b)
  %316 = fmul fast float %315, 0x3FF7154760000000
  %317 = fmul fast float %316, %313
  %318 = call float @dx.op.unary.f32(i32 21, float %317)  ; Exp(value)
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %322 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %325 = fmul fast float %324, %318
  %326 = fmul fast float %325, %320
  %327 = fmul fast float %325, %321
  %328 = fmul fast float %325, %322
  %329 = fcmp fast ogt float %325, 0.000000e+00
  br i1 %329, label %330, label %1842, !dx.controlflow.hints !46

; <label>:330                                     ; preds = %310
  %331 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %332 = fmul fast float %331, %325
  %333 = fdiv fast float 1.000000e+00, %325
  %334 = fmul fast float %333, %326
  %335 = fmul fast float %333, %327
  %336 = fmul fast float %333, %328
  %337 = fmul fast float %332, %333
  %338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.i32 %338, 2
  %340 = extractvalue %dx.types.CBufRet.i32 %338, 3
  %341 = call i32 @dx.op.tertiary.i32(i32 49, i32 %50, i32 %339, i32 %48)  ; UMad(a,b,c)
  %342 = call i32 @dx.op.tertiary.i32(i32 49, i32 %52, i32 %340, i32 %341)  ; UMad(a,b,c)
  %343 = fadd fast float %115, 1.000000e+00
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = fmul fast float %349, %123
  %351 = call float @dx.op.unary.f32(i32 21, float %350)  ; Exp(value)
  %352 = fmul fast float %351, %348
  %353 = fsub fast float 4.000000e+00, %348
  %354 = fadd fast float %353, %352
  %355 = fmul fast float %343, 2.000000e+00
  %356 = fmul fast float %355, %345
  %357 = fmul fast float %116, 2.000000e+00
  %358 = fmul fast float %357, %346
  %359 = fsub fast float 1.000000e+00, %356
  %360 = fsub fast float 1.000000e+00, %358
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %364 = extractvalue %dx.types.CBufRet.f32 %361, 2
  %365 = fmul fast float %362, %359
  %366 = fmul fast float %363, %359
  %367 = fmul fast float %364, %359
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = extractvalue %dx.types.CBufRet.f32 %368, 1
  %371 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %372 = fmul fast float %369, %360
  %373 = fmul fast float %370, %360
  %374 = fmul fast float %371, %360
  %375 = fadd fast float %372, %365
  %376 = fadd fast float %373, %366
  %377 = fadd fast float %374, %367
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %381 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %382 = fadd fast float %375, %379
  %383 = fadd fast float %376, %380
  %384 = fadd fast float %377, %381
  %385 = fadd fast float %116, 1.000000e+00
  %386 = fmul fast float %115, 2.000000e+00
  %387 = fmul fast float %386, %345
  %388 = fmul fast float %385, 2.000000e+00
  %389 = fmul fast float %388, %346
  %390 = fsub fast float 1.000000e+00, %387
  %391 = fsub fast float 1.000000e+00, %389
  %392 = fmul fast float %362, %390
  %393 = fmul fast float %363, %390
  %394 = fmul fast float %364, %390
  %395 = fmul fast float %369, %391
  %396 = fmul fast float %370, %391
  %397 = fmul fast float %371, %391
  %398 = fadd fast float %395, %392
  %399 = fadd fast float %396, %393
  %400 = fadd fast float %397, %394
  %401 = fadd fast float %398, %379
  %402 = fadd fast float %399, %380
  %403 = fadd fast float %400, %381
  %404 = fmul fast float %401, %354
  %405 = fmul fast float %402, %354
  %406 = fmul fast float %403, %354
  %407 = fadd fast float %401, %382
  %408 = fmul fast float %354, %407
  %409 = fadd fast float %402, %383
  %410 = fmul fast float %354, %409
  %411 = fadd fast float %403, %384
  %412 = fmul fast float %354, %411
  %413 = fmul fast float %408, 5.000000e-01
  %414 = fmul fast float %410, 5.000000e-01
  %415 = fmul fast float %412, 5.000000e-01
  %416 = fsub fast float %413, %404
  %417 = fsub fast float %414, %405
  %418 = fsub fast float %415, %406
  %419 = call float @dx.op.dot3.f32(i32 55, float %416, float %417, float %418, float %416, float %417, float %418)  ; Dot3(ax,ay,az,bx,by,bz)
  %420 = call float @dx.op.unary.f32(i32 25, float %419)  ; Rsqrt(value)
  %421 = fmul fast float %420, %419
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = fsub fast float %184, %425
  %427 = fmul fast float %349, %117
  %428 = call float @dx.op.unary.f32(i32 21, float %427)  ; Exp(value)
  %429 = fmul fast float %428, %348
  %430 = fadd fast float %353, %429
  %431 = fmul fast float %124, 2.000000e+00
  %432 = fmul fast float %431, %345
  %433 = fmul fast float %125, 2.000000e+00
  %434 = fmul fast float %433, %346
  %435 = fsub fast float 1.000000e+00, %432
  %436 = fsub fast float 1.000000e+00, %434
  %437 = fmul fast float %362, %435
  %438 = fmul fast float %363, %435
  %439 = fmul fast float %364, %435
  %440 = fmul fast float %369, %436
  %441 = fmul fast float %370, %436
  %442 = fmul fast float %371, %436
  %443 = fadd fast float %440, %437
  %444 = fadd fast float %441, %438
  %445 = fadd fast float %442, %439
  %446 = fadd fast float %443, %379
  %447 = fadd fast float %444, %380
  %448 = fadd fast float %445, %381
  %449 = fmul fast float %446, %430
  %450 = fmul fast float %447, %430
  %451 = fmul fast float %448, %430
  %452 = fadd fast float %117, 1.000000e+00
  %453 = fmul fast float %349, %452
  %454 = call float @dx.op.unary.f32(i32 21, float %453)  ; Exp(value)
  %455 = fsub fast float %454, %428
  %456 = fmul fast float %348, %455
  %457 = fmul fast float %446, %456
  %458 = fsub fast float %454, %428
  %459 = fmul fast float %348, %458
  %460 = fmul fast float %447, %459
  %461 = fsub fast float %454, %428
  %462 = fmul fast float %348, %461
  %463 = fmul fast float %448, %462
  %464 = call float @dx.op.dot3.f32(i32 55, float %457, float %460, float %463, float %457, float %460, float %463)  ; Dot3(ax,ay,az,bx,by,bz)
  %465 = call float @dx.op.unary.f32(i32 25, float %464)  ; Rsqrt(value)
  %466 = fmul fast float %465, %464
  %467 = fmul fast float %457, %465
  %468 = fmul fast float %460, %465
  %469 = fmul fast float %463, %465
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 3
  %472 = fcmp fast oeq float %471, 0.000000e+00
  br i1 %472, label %1212, label %473, !dx.controlflow.hints !47

; <label>:473                                     ; preds = %330
  %474 = fsub fast float %183, %424
  %475 = fsub fast float %182, %423
  %476 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %477 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %478 = extractvalue %dx.types.CBufRet.f32 %470, 2
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %481 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %482 = extractvalue %dx.types.CBufRet.f32 %479, 2
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = fmul fast float %484, %476
  %486 = fmul fast float %484, %477
  %487 = fmul fast float %484, %478
  %488 = fsub fast float %475, %485
  %489 = fsub fast float %474, %486
  %490 = fsub fast float %426, %487
  %491 = fcmp fast olt float %471, 0.000000e+00
  br i1 %491, label %1023, label %492, !dx.controlflow.hints !48

; <label>:492                                     ; preds = %473
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %496 = extractvalue %dx.types.CBufRet.f32 %493, 2
  %497 = extractvalue %dx.types.CBufRet.f32 %493, 3
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 0
  %500 = extractvalue %dx.types.CBufRet.f32 %498, 1
  %501 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %502 = extractvalue %dx.types.CBufRet.f32 %498, 3
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 0
  %505 = extractvalue %dx.types.CBufRet.f32 %503, 1
  %506 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %507 = extractvalue %dx.types.CBufRet.f32 %503, 3
  %508 = fmul fast float %494, %488
  %509 = call float @dx.op.tertiary.f32(i32 46, float %489, float %495, float %508)  ; FMad(a,b,c)
  %510 = call float @dx.op.tertiary.f32(i32 46, float %490, float %496, float %509)  ; FMad(a,b,c)
  %511 = fadd fast float %510, %497
  %512 = fmul fast float %499, %488
  %513 = call float @dx.op.tertiary.f32(i32 46, float %489, float %500, float %512)  ; FMad(a,b,c)
  %514 = call float @dx.op.tertiary.f32(i32 46, float %490, float %501, float %513)  ; FMad(a,b,c)
  %515 = fadd fast float %514, %502
  %516 = fmul fast float %504, %488
  %517 = call float @dx.op.tertiary.f32(i32 46, float %489, float %505, float %516)  ; FMad(a,b,c)
  %518 = call float @dx.op.tertiary.f32(i32 46, float %490, float %506, float %517)  ; FMad(a,b,c)
  %519 = fadd fast float %518, %507
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = extractvalue %dx.types.CBufRet.f32 %520, 3
  %524 = fmul fast float %523, %511
  %525 = fmul fast float %523, %515
  %526 = fadd fast float %524, %521
  %527 = fadd fast float %525, %522
  %528 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %529 = fcmp fast olt float %528, 0.000000e+00
  %530 = fsub fast float -0.000000e+00, %528
  %531 = select i1 %529, float %530, float %528
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %534 = fadd fast float %531, %533
  %535 = fcmp fast ogt float %534, 0.000000e+00
  br i1 %535, label %536, label %567, !dx.controlflow.hints !49

; <label>:536                                     ; preds = %492
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %539 = fsub fast float %538, %519
  %540 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %541 = fmul fast float %539, %540
  %542 = fsub fast float 1.000000e+00, %541
  %543 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %547 = fsub fast float %526, %545
  %548 = fsub fast float %527, %546
  %549 = fcmp fast olt float %547, 0.000000e+00
  %550 = fcmp fast olt float %548, 0.000000e+00
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %553 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %554 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %555 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %556 = select i1 %549, float %552, float %554
  %557 = select i1 %550, float %553, float %555
  %558 = fmul fast float %556, %547
  %559 = fmul fast float %557, %548
  %560 = call float @dx.op.unary.f32(i32 6, float %558)  ; FAbs(value)
  %561 = call float @dx.op.unary.f32(i32 6, float %559)  ; FAbs(value)
  %562 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %563 = call float @dx.op.binary.f32(i32 35, float %560, float %561)  ; FMax(a,b)
  %564 = fsub fast float %562, %563
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = fmul fast float %565, %543
  br label %567

; <label>:567                                     ; preds = %536, %492
  %568 = phi float [ %566, %536 ], [ 0.000000e+00, %492 ]
  %569 = call float @dx.op.binary.f32(i32 35, float %568, float 0.000000e+00)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %569)  ; FMax(a,b)
  %571 = fcmp fast olt float %570, 1.000000e+00
  br i1 %571, label %572, label %970, !dx.controlflow.hints !50

; <label>:572                                     ; preds = %567
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %575 = fcmp fast une float %574, 0.000000e+00
  br i1 %575, label %576, label %970, !dx.controlflow.hints !51

; <label>:576                                     ; preds = %572
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %581 = extractvalue %dx.types.CBufRet.f32 %577, 3
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %585 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %586 = extractvalue %dx.types.CBufRet.f32 %582, 3
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %592 = fmul fast float %578, %488
  %593 = call float @dx.op.tertiary.f32(i32 46, float %489, float %579, float %592)  ; FMad(a,b,c)
  %594 = call float @dx.op.tertiary.f32(i32 46, float %490, float %580, float %593)  ; FMad(a,b,c)
  %595 = fadd fast float %594, %581
  %596 = fmul fast float %583, %488
  %597 = call float @dx.op.tertiary.f32(i32 46, float %489, float %584, float %596)  ; FMad(a,b,c)
  %598 = call float @dx.op.tertiary.f32(i32 46, float %490, float %585, float %597)  ; FMad(a,b,c)
  %599 = fadd fast float %598, %586
  %600 = fmul fast float %588, %488
  %601 = call float @dx.op.tertiary.f32(i32 46, float %489, float %589, float %600)  ; FMad(a,b,c)
  %602 = call float @dx.op.tertiary.f32(i32 46, float %490, float %590, float %601)  ; FMad(a,b,c)
  %603 = fadd fast float %602, %591
  %604 = fcmp fast oge float %595, 1.000000e+00
  %605 = fcmp fast oge float %599, 1.000000e+00
  %606 = or i1 %604, %605
  %607 = fcmp fast olt float %595, 0.000000e+00
  %608 = fcmp fast olt float %599, 0.000000e+00
  %609 = or i1 %607, %608
  %610 = or i1 %606, %609
  br i1 %610, label %970, label %611, !dx.controlflow.hints !52

; <label>:611                                     ; preds = %576
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %615 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.i32 %616, 2
  %618 = uitofp i32 %617 to float
  %619 = extractvalue %dx.types.CBufRet.i32 %616, 3
  %620 = uitofp i32 %619 to float
  %621 = extractvalue %dx.types.CBufRet.f32 %612, 3
  %622 = fmul fast float %621, 2.000000e+00
  %623 = fsub fast float %595, %613
  %624 = fsub fast float %599, %614
  %625 = fmul fast float %622, %623
  %626 = fmul fast float %622, %624
  %627 = fdiv fast float 1.000000e+00, %478
  %628 = fmul fast float %626, %627
  %629 = call float @dx.op.unary.f32(i32 6, float %628)  ; FAbs(value)
  %630 = fmul fast float %615, %490
  %631 = fmul fast float %630, %622
  %632 = call float @dx.op.unary.f32(i32 6, float %631)  ; FAbs(value)
  %633 = call float @dx.op.unary.f32(i32 6, float %625)  ; FAbs(value)
  %634 = call float @dx.op.binary.f32(i32 35, float %632, float %629)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 35, float %633, float %634)  ; FMax(a,b)
  %636 = fmul fast float %635, 2.000000e+00
  %637 = call float @dx.op.unary.f32(i32 23, float %636)  ; Log(value)
  %638 = call float @dx.op.binary.f32(i32 35, float %637, float %618)  ; FMax(a,b)
  %639 = call float @dx.op.unary.f32(i32 22, float %638)  ; Frc(value)
  %640 = fadd fast float %639, 0xBFEA666660000000
  %641 = fmul fast float %640, 8.000000e+00
  %642 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %643 = call float @dx.op.unary.f32(i32 27, float %638)  ; Round_ni(value)
  %644 = fadd fast float %643, %642
  %645 = call float @dx.op.binary.f32(i32 36, float %644, float %620)  ; FMin(a,b)
  %646 = call float @dx.op.unary.f32(i32 27, float %645)  ; Round_ni(value)
  %647 = fsub fast float -0.000000e+00, %646
  %648 = call float @dx.op.unary.f32(i32 21, float %647)  ; Exp(value)
  %649 = fmul fast float %648, %622
  %650 = fmul fast float %649, %595
  %651 = fmul fast float %649, %599
  %652 = fmul fast float %650, 2.500000e-01
  %653 = fmul fast float %651, 2.500000e-01
  %654 = fadd fast float %652, 5.000000e-01
  %655 = fadd fast float %653, 5.000000e-01
  %656 = fsub fast float %620, %618
  %657 = fptoui float %656 to i32
  %658 = add i32 %657, 320
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %658)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %661 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %662 = fcmp fast une float %645, %620
  %663 = fsub fast float %595, %660
  %664 = fsub fast float %599, %661
  %665 = call float @dx.op.unary.f32(i32 6, float %663)  ; FAbs(value)
  %666 = call float @dx.op.unary.f32(i32 6, float %664)  ; FAbs(value)
  %667 = fmul fast float %665, %649
  %668 = fmul fast float %666, %649
  %669 = fcmp fast olt float %667, 1.000000e+00
  %670 = fcmp fast olt float %668, 1.000000e+00
  %671 = and i1 %669, %670
  %672 = or i1 %662, %671
  br i1 %672, label %673, label %970, !dx.controlflow.hints !53

; <label>:673                                     ; preds = %611
  %674 = fmul fast float %651, 5.000000e-01
  %675 = fmul fast float %650, 5.000000e-01
  %676 = fadd fast float %674, 5.000000e-01
  %677 = fadd fast float %675, 5.000000e-01
  %678 = sitofp i32 %617 to float
  %679 = fsub fast float %645, %678
  %680 = call float @dx.op.unary.f32(i32 27, float %679)  ; Round_ni(value)
  %681 = call float @dx.op.unary.f32(i32 22, float %645)  ; Frc(value)
  %682 = call float @dx.op.unary.f32(i32 22, float %677)  ; Frc(value)
  %683 = call float @dx.op.unary.f32(i32 22, float %676)  ; Frc(value)
  %684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %23, float %682, float %683, float %680, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = extractvalue %dx.types.ResRet.f32 %684, 3
  %689 = fcmp fast ogt float %681, 0.000000e+00
  br i1 %689, label %690, label %711, !dx.controlflow.hints !54

; <label>:690                                     ; preds = %673
  %691 = fadd fast float %680, 1.000000e+00
  %692 = call float @dx.op.unary.f32(i32 22, float %654)  ; Frc(value)
  %693 = call float @dx.op.unary.f32(i32 22, float %655)  ; Frc(value)
  %694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %23, float %692, float %693, float %691, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = extractvalue %dx.types.ResRet.f32 %694, 1
  %697 = extractvalue %dx.types.ResRet.f32 %694, 2
  %698 = extractvalue %dx.types.ResRet.f32 %694, 3
  %699 = fsub fast float %695, %685
  %700 = fsub fast float %696, %686
  %701 = fsub fast float %697, %687
  %702 = fsub fast float %698, %688
  %703 = fmul fast float %699, %681
  %704 = fmul fast float %700, %681
  %705 = fmul fast float %701, %681
  %706 = fmul fast float %702, %681
  %707 = fadd fast float %703, %685
  %708 = fadd fast float %704, %686
  %709 = fadd fast float %705, %687
  %710 = fadd fast float %706, %688
  br label %711

; <label>:711                                     ; preds = %690, %673
  %712 = phi float [ %707, %690 ], [ %685, %673 ]
  %713 = phi float [ %708, %690 ], [ %686, %673 ]
  %714 = phi float [ %709, %690 ], [ %687, %673 ]
  %715 = phi float [ %710, %690 ], [ %688, %673 ]
  %716 = fadd fast float %712, -5.000000e-01
  %717 = fadd fast float %714, -5.000000e-01
  %718 = fmul fast float %716, 0xBFD5555560000000
  %719 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %717, float %718)  ; FMad(a,b,c)
  %720 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %713, float 0.000000e+00)  ; FMad(a,b,c)
  %721 = fadd fast float %720, %715
  %722 = fmul fast float %716, -7.500000e-01
  %723 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %717, float %722)  ; FMad(a,b,c)
  %724 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %713, float 0.000000e+00)  ; FMad(a,b,c)
  %725 = fadd fast float %724, %715
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %731 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %732 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %733 = fsub fast float %729, %719
  %734 = fsub fast float %730, %721
  %735 = fsub fast float %731, %723
  %736 = fsub fast float %732, %725
  %737 = fmul fast float %733, %727
  %738 = fmul fast float %734, %727
  %739 = fmul fast float %735, %727
  %740 = fmul fast float %736, %727
  %741 = fadd fast float %737, %719
  %742 = fadd fast float %738, %721
  %743 = fadd fast float %739, %723
  %744 = fadd fast float %740, %725
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 536870911
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, %595
  %750 = fmul fast float %748, %599
  %751 = fptoui float %749 to i32
  %752 = fptoui float %750 to i32
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 31
  %756 = lshr i32 %751, %755
  %757 = lshr i32 %752, %755
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 31
  %761 = shl i32 1, %760
  %762 = call i32 @dx.op.binary.i32(i32 40, i32 %761, i32 4)  ; UMin(a,b)
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = extractvalue %dx.types.ResRet.i32 %763, 1
  %766 = icmp eq i32 %762, 0
  br i1 %766, label %808, label %767

; <label>:767                                     ; preds = %711
  br label %768

; <label>:768                                     ; preds = %796, %767
  %769 = phi i32 [ %799, %796 ], [ 0, %767 ]
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = lshr i32 %771, 16
  %773 = and i32 %772, 31
  %774 = shl i32 %757, %773
  %775 = add i32 %774, %756
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 31
  %779 = shl i32 %775, %778
  %780 = add i32 %779, %769
  %781 = shl i32 %780, 2
  %782 = add i32 %781, 32
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = icmp slt i32 %784, 0
  %786 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %769
  %787 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %769
  %788 = bitcast float* %786 to i32*
  %789 = bitcast float* %787 to i32*
  br i1 %785, label %790, label %796, !dx.controlflow.hints !55

; <label>:790                                     ; preds = %768
  %791 = and i32 %784, 1073741823
  %792 = add nuw nsw i32 %791, 20
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = extractvalue %dx.types.ResRet.i32 %793, 1
  br label %796

; <label>:796                                     ; preds = %790, %768
  %797 = phi i32 [ %794, %790 ], [ %764, %768 ]
  %798 = phi i32 [ %795, %790 ], [ %765, %768 ]
  store i32 %797, i32* %788, align 4
  store i32 %798, i32* %789, align 4
  %799 = add nuw i32 %769, 1
  %800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.i32 %800, 2
  %802 = icmp eq i32 %801, 0
  %803 = icmp ugt i32 %784, -1073741825
  %804 = and i1 %803, %802
  %805 = icmp ult i32 %799, %762
  %806 = and i1 %804, %805
  br i1 %806, label %768, label %807, !dx.controlflow.hints !56

; <label>:807                                     ; preds = %796
  br label %808

; <label>:808                                     ; preds = %807, %711
  %809 = phi i32 [ 0, %711 ], [ %799, %807 ]
  %810 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %811 = fptoui float %810 to i32
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %864, label %813

; <label>:813                                     ; preds = %808
  br label %814

; <label>:814                                     ; preds = %859, %813
  %815 = phi i32 [ %860, %859 ], [ %809, %813 ]
  %816 = phi i32 [ %861, %859 ], [ 0, %813 ]
  %817 = lshr i32 %816, 2
  %818 = and i32 %816, 3
  %819 = add nuw nsw i32 %817, 83
  %820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 %819)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.i32 %820, 0
  %822 = extractvalue %dx.types.CBufRet.i32 %820, 1
  %823 = extractvalue %dx.types.CBufRet.i32 %820, 2
  %824 = extractvalue %dx.types.CBufRet.i32 %820, 3
  %825 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %821, i32* %825, align 4
  %826 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %822, i32* %826, align 4
  %827 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %823, i32* %827, align 4
  %828 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %824, i32* %828, align 4
  %829 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i32 0, i32 %818
  %830 = load i32, i32* %829, align 4, !tbaa !57, !noalias !61
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = lshr i32 %832, 16
  %834 = and i32 %833, 31
  %835 = shl i32 %757, %834
  %836 = add i32 %835, %756
  %837 = shl i32 %836, 2
  %838 = add i32 %837, %830
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %859, label %842, !dx.controlflow.hints !71

; <label>:842                                     ; preds = %814
  %843 = icmp slt i32 %840, 0
  %844 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %815
  %845 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %815
  %846 = bitcast float* %844 to i32*
  %847 = bitcast float* %845 to i32*
  br i1 %843, label %848, label %855, !dx.controlflow.hints !72

; <label>:848                                     ; preds = %842
  %849 = and i32 %840, 1073741823
  %850 = add i32 %830, 20
  %851 = add i32 %850, %849
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = extractvalue %dx.types.ResRet.i32 %852, 1
  br label %855

; <label>:855                                     ; preds = %848, %842
  %856 = phi i32 [ %853, %848 ], [ %764, %842 ]
  %857 = phi i32 [ %854, %848 ], [ %765, %842 ]
  store i32 %856, i32* %846, align 4
  store i32 %857, i32* %847, align 4
  %858 = add i32 %815, 1
  br label %859

; <label>:859                                     ; preds = %855, %814
  %860 = phi i32 [ %815, %814 ], [ %858, %855 ]
  %861 = add nuw i32 %816, 1
  %862 = icmp eq i32 %861, %811
  br i1 %862, label %863, label %814

; <label>:863                                     ; preds = %859
  br label %864

; <label>:864                                     ; preds = %863, %808
  %865 = phi i32 [ %809, %808 ], [ %860, %863 ]
  %866 = icmp eq i32 %865, 1
  %867 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 0
  %868 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 0
  br i1 %866, label %869, label %872, !dx.controlflow.hints !73

; <label>:869                                     ; preds = %864
  %870 = load float, float* %867, align 4
  %871 = load float, float* %868, align 4
  br label %899

; <label>:872                                     ; preds = %864
  %873 = load float, float* %867, align 4
  %874 = load float, float* %868, align 4
  %875 = fdiv fast float 1.000000e+00, %874
  %876 = fsub fast float %873, %875
  %877 = icmp ugt i32 %865, 1
  br i1 %877, label %878, label %894

; <label>:878                                     ; preds = %872
  br label %879

; <label>:879                                     ; preds = %879, %878
  %880 = phi float [ %889, %879 ], [ %876, %878 ]
  %881 = phi float [ %890, %879 ], [ %873, %878 ]
  %882 = phi i32 [ %891, %879 ], [ 1, %878 ]
  %883 = getelementptr [12 x float], [12 x float]* %34, i32 0, i32 %882
  %884 = load float, float* %883, align 4
  %885 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %882
  %886 = load float, float* %885, align 4
  %887 = fdiv fast float 1.000000e+00, %886
  %888 = fsub fast float %884, %887
  %889 = call float @dx.op.binary.f32(i32 36, float %880, float %888)  ; FMin(a,b)
  %890 = call float @dx.op.binary.f32(i32 35, float %881, float %884)  ; FMax(a,b)
  %891 = add nuw i32 %882, 1
  %892 = icmp eq i32 %891, %865
  br i1 %892, label %893, label %879

; <label>:893                                     ; preds = %879
  br label %894

; <label>:894                                     ; preds = %893, %872
  %895 = phi float [ %876, %872 ], [ %889, %893 ]
  %896 = phi float [ %873, %872 ], [ %890, %893 ]
  %897 = fsub fast float %896, %895
  %898 = fdiv fast float 1.000000e+00, %897
  br label %899

; <label>:899                                     ; preds = %894, %869
  %900 = phi float [ %870, %869 ], [ %896, %894 ]
  %901 = phi float [ %871, %869 ], [ %898, %894 ]
  %902 = fadd fast float %603, %900
  %903 = fmul fast float %902, %901
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = fmul fast float %904, 2.000000e+00
  %906 = fsub fast float 1.000000e+00, %905
  %907 = fmul fast float %741, %741
  %908 = fsub fast float %742, %907
  %909 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %908)  ; FMax(a,b)
  %910 = fdiv fast float 1.000000e+00, %909
  %911 = fmul fast float %742, %741
  %912 = fsub fast float %743, %911
  %913 = fsub fast float %906, %741
  %914 = fmul fast float %906, %906
  %915 = fsub fast float %914, %742
  %916 = fmul fast float %910, %912
  %917 = fmul fast float %916, %913
  %918 = fsub fast float %915, %917
  %919 = fmul fast float %742, %742
  %920 = fsub fast float %744, %919
  %921 = fmul fast float %912, %912
  %922 = fmul fast float %921, %910
  %923 = fsub fast float %920, %922
  %924 = fdiv fast float %918, %923
  %925 = fmul fast float %924, %912
  %926 = fsub fast float %913, %925
  %927 = fmul fast float %926, %910
  %928 = fmul fast float %927, %741
  %929 = fsub fast float 1.000000e+00, %928
  %930 = fmul fast float %924, %742
  %931 = fsub fast float %929, %930
  %932 = fmul fast float %927, %927
  %933 = fmul fast float %924, 4.000000e+00
  %934 = fmul fast float %933, %931
  %935 = fsub fast float %932, %934
  %936 = call float @dx.op.unary.f32(i32 24, float %935)  ; Sqrt(value)
  %937 = fcmp fast oge float %927, 0.000000e+00
  %938 = fsub fast float -0.000000e+00, %936
  %939 = select i1 %937, float %938, float %936
  %940 = fsub fast float %939, %927
  %941 = fdiv fast float %940, %924
  %942 = fdiv fast float %931, %940
  %943 = fmul fast float %941, 5.000000e-01
  %944 = fmul fast float %942, 2.000000e+00
  %945 = select i1 %937, float %943, float %944
  %946 = select i1 %937, float %944, float %943
  %947 = call float @dx.op.binary.f32(i32 35, float %945, float %946)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 36, float %945, float %946)  ; FMin(a,b)
  %949 = fcmp fast ogt float %906, %947
  %950 = fsub fast float %906, %948
  %951 = fsub fast float %906, %947
  %952 = fsub fast float %947, %948
  %953 = select i1 %949, float %951, float %952
  %954 = fmul float %950, %953
  %955 = select i1 %949, float %948, float %906
  %956 = fcmp fast ogt float %906, %948
  %957 = fmul fast float %955, %947
  %958 = fadd fast float %955, %947
  %959 = fmul fast float %958, %741
  %960 = fadd fast float %957, %742
  %961 = fsub fast float %960, %959
  %962 = fdiv fast float %961, %954
  %963 = select i1 %956, float %962, float 0.000000e+00
  %964 = fsub fast float 1.000000e+00, %963
  %965 = select i1 %949, float %964, float %963
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = extractvalue %dx.types.CBufRet.f32 %726, 3
  %968 = fmul fast float %967, %966
  %969 = fsub fast float 1.000000e+00, %968
  br label %970

; <label>:970                                     ; preds = %899, %611, %576, %572, %567
  %971 = phi float [ 1.000000e+00, %567 ], [ %969, %899 ], [ 1.000000e+00, %576 ], [ 1.000000e+00, %611 ], [ 1.000000e+00, %572 ]
  %972 = fcmp fast ogt float %568, 0.000000e+00
  br i1 %972, label %973, label %979, !dx.controlflow.hints !74

; <label>:973                                     ; preds = %970
  %974 = fadd fast float %533, %519
  %975 = call float @dx.op.binary.f32(i32 35, float %974, float 0.000000e+00)  ; FMax(a,b)
  %976 = fadd fast float %975, 0x3F10000000000000
  %977 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %25, float %526, float %527, float undef, float undef, i32 0, i32 0, i32 undef, float %976)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %978 = extractvalue %dx.types.ResRet.f32 %977, 0
  br label %979

; <label>:979                                     ; preds = %973, %970
  %980 = phi float [ %978, %973 ], [ 1.000000e+00, %970 ]
  %981 = fsub fast float %980, %971
  %982 = fmul fast float %981, %568
  %983 = fadd fast float %982, %971
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %986 = fcmp fast ogt float %985, 0.000000e+00
  br i1 %986, label %987, label %1023, !dx.controlflow.hints !75

; <label>:987                                     ; preds = %979
  %988 = fcmp fast ugt float %985, 0.000000e+00
  br i1 %988, label %989, label %1020, !dx.controlflow.hints !76

; <label>:989                                     ; preds = %987
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %992 = extractvalue %dx.types.CBufRet.f32 %990, 1
  %993 = extractvalue %dx.types.CBufRet.f32 %990, 2
  %994 = extractvalue %dx.types.CBufRet.f32 %990, 3
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %999 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %1000 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %1002 = fadd fast float %423, %488
  %1003 = fadd fast float %424, %489
  %1004 = fadd fast float %425, %490
  %1005 = fmul fast float %1002, %991
  %1006 = call float @dx.op.tertiary.f32(i32 46, float %992, float %1003, float %1005)  ; FMad(a,b,c)
  %1007 = call float @dx.op.tertiary.f32(i32 46, float %993, float %1004, float %1006)  ; FMad(a,b,c)
  %1008 = fadd fast float %1007, %994
  %1009 = fmul fast float %1002, %996
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %997, float %1003, float %1009)  ; FMad(a,b,c)
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %998, float %1004, float %1010)  ; FMad(a,b,c)
  %1012 = fadd fast float %1011, %999
  %1013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %21, float %1008, float %1012, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = fmul fast float %1014, %1001
  %1016 = fadd fast float %1015, %1000
  %1017 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1018 = fmul fast float %1017, %985
  %1019 = fsub fast float 1.000000e+00, %1018
  br label %1020

; <label>:1020                                    ; preds = %989, %987
  %1021 = phi float [ %1019, %989 ], [ 1.000000e+00, %987 ]
  %1022 = fmul fast float %1021, %983
  br label %1023

; <label>:1023                                    ; preds = %1020, %979, %473
  %1024 = phi float [ 1.000000e+00, %473 ], [ %1022, %1020 ], [ %983, %979 ]
  %1025 = call float @dx.op.binary.f32(i32 36, float %1024, float %1024)  ; FMin(a,b)
  %1026 = call float @dx.op.binary.f32(i32 36, float %1024, float %1025)  ; FMin(a,b)
  %1027 = fcmp fast ogt float %1026, 0.000000e+00
  br i1 %1027, label %1028, label %1183, !dx.controlflow.hints !77

; <label>:1028                                    ; preds = %1023
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = extractvalue %dx.types.CBufRet.f32 %1029, 3
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1038 = extractvalue %dx.types.CBufRet.f32 %1034, 3
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1043 = extractvalue %dx.types.CBufRet.f32 %1039, 3
  %1044 = fmul fast float %1030, %488
  %1045 = call float @dx.op.tertiary.f32(i32 46, float %489, float %1031, float %1044)  ; FMad(a,b,c)
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %490, float %1032, float %1045)  ; FMad(a,b,c)
  %1047 = fadd fast float %1046, %1033
  %1048 = fmul fast float %1035, %488
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %489, float %1036, float %1048)  ; FMad(a,b,c)
  %1050 = call float @dx.op.tertiary.f32(i32 46, float %490, float %1037, float %1049)  ; FMad(a,b,c)
  %1051 = fadd fast float %1050, %1038
  %1052 = fmul fast float %1040, %488
  %1053 = call float @dx.op.tertiary.f32(i32 46, float %489, float %1041, float %1052)  ; FMad(a,b,c)
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %490, float %1042, float %1053)  ; FMad(a,b,c)
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.CBufRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.CBufRet.f32 %1055, 3
  %1059 = fmul fast float %1058, %1047
  %1060 = fmul fast float %1058, %1051
  %1061 = fadd fast float %1059, %1056
  %1062 = fadd fast float %1060, %1057
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.CBufRet.f32 %1063, 1
  %1066 = fsub fast float %1061, %1064
  %1067 = fsub fast float %1062, %1065
  %1068 = fcmp fast olt float %1066, 0.000000e+00
  %1069 = fcmp fast olt float %1067, 0.000000e+00
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1072 = extractvalue %dx.types.CBufRet.f32 %1070, 1
  %1073 = extractvalue %dx.types.CBufRet.f32 %1070, 2
  %1074 = extractvalue %dx.types.CBufRet.f32 %1070, 3
  %1075 = select i1 %1068, float %1071, float %1073
  %1076 = select i1 %1069, float %1072, float %1074
  %1077 = fmul fast float %1075, %1066
  %1078 = fmul fast float %1076, %1067
  %1079 = call float @dx.op.unary.f32(i32 6, float %1077)  ; FAbs(value)
  %1080 = call float @dx.op.unary.f32(i32 6, float %1078)  ; FAbs(value)
  %1081 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %1082 = call float @dx.op.binary.f32(i32 35, float %1079, float %1080)  ; FMax(a,b)
  %1083 = fsub fast float %1081, %1082
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  %1085 = fcmp fast ogt float %1084, 0.000000e+00
  br i1 %1085, label %1086, label %1127, !dx.controlflow.hints !78

; <label>:1086                                    ; preds = %1028
  %1087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %1061, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1089 = fcmp fast ogt float %1088, 0.000000e+00
  br i1 %1089, label %1090, label %1123, !dx.controlflow.hints !79

; <label>:1090                                    ; preds = %1086
  %1091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %24, float %1061, float %1062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1095 = extractvalue %dx.types.ResRet.f32 %1091, 3
  %1096 = fsub fast float 1.000000e+00, %1043
  %1097 = fsub fast float %1096, %1054
  %1098 = fmul fast float %1097, 0x400921FB60000000
  %1099 = fadd fast float %1098, 0x3FF921FB60000000
  %1100 = call float @dx.op.unary.f32(i32 13, float %1099)  ; Sin(value)
  %1101 = fadd fast float %1100, -1.000000e+00
  %1102 = fmul fast float %1101, 0x3FD45F3060000000
  %1103 = fmul fast float %1097, 0x401921FB60000000
  %1104 = fadd fast float %1103, 0x400921FB60000000
  %1105 = call float @dx.op.unary.f32(i32 13, float %1104)  ; Sin(value)
  %1106 = fadd fast float %1105, 0x3E7777A5C0000000
  %1107 = fmul fast float %1106, 0x3FC45F3060000000
  %1108 = fmul fast float %1097, 0x4022D97C80000000
  %1109 = fadd fast float %1108, 0x4012D97C80000000
  %1110 = call float @dx.op.unary.f32(i32 13, float %1109)  ; Sin(value)
  %1111 = fadd fast float %1110, 1.000000e+00
  %1112 = fmul fast float %1111, 0x3FBB2995E0000000
  %1113 = fmul fast float %1097, 0x402921FB60000000
  %1114 = fadd fast float %1113, 0x401921FB60000000
  %1115 = call float @dx.op.unary.f32(i32 13, float %1114)  ; Sin(value)
  %1116 = fadd fast float %1115, 0xBE8777A5C0000000
  %1117 = fmul fast float %1116, 0x3FB45F3060000000
  %1118 = call float @dx.op.dot4.f32(i32 56, float %1092, float %1093, float %1094, float %1095, float %1102, float %1107, float %1112, float %1117)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1119 = fmul fast float %1118, 0xBFF7154760000000
  %1120 = call float @dx.op.unary.f32(i32 21, float %1119)  ; Exp(value)
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1122 = fadd float %1121, -1.000000e+00
  br label %1123

; <label>:1123                                    ; preds = %1090, %1086
  %1124 = phi float [ %1122, %1090 ], [ 0.000000e+00, %1086 ]
  %1125 = fmul fast float %1124, %1084
  %1126 = fadd fast float %1125, 1.000000e+00
  br label %1127

; <label>:1127                                    ; preds = %1123, %1028
  %1128 = phi float [ %1126, %1123 ], [ 1.000000e+00, %1028 ]
  %1129 = fmul fast float %1128, %1024
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1132 = fsub fast float -0.000000e+00, %182
  %1133 = fsub fast float -0.000000e+00, %183
  %1134 = fsub fast float -0.000000e+00, %426
  %1135 = fsub fast float %1134, %425
  %1136 = fadd fast float %1135, %1131
  %1137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1132, float %1133, float %1136)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %476, float %477, float %478)  ; Dot3(ax,ay,az,bx,by,bz)
  %1139 = fdiv fast float 1.000000e+00, %1138
  %1140 = fmul fast float %1139, %1137
  %1141 = fmul fast float %476, %1140
  %1142 = fmul fast float %477, %1140
  %1143 = fadd fast float %1141, %182
  %1144 = fadd fast float %1142, %183
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.CBufRet.f32 %1145, 1
  %1148 = fsub fast float %1143, %1146
  %1149 = fsub fast float %1144, %1147
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 2
  %1152 = extractvalue %dx.types.CBufRet.f32 %1150, 3
  %1153 = fmul fast float %1148, %1151
  %1154 = fmul fast float %1149, %1152
  %1155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.i32 %1155, 3
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1163, label %1158, !dx.controlflow.hints !80

; <label>:1158                                    ; preds = %1127
  %1159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %23, float %1153, float %1154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.ResRet.f32 %1159, 2
  br label %1168

; <label>:1163                                    ; preds = %1127
  %1164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %24, float %1153, float %1154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  br label %1168

; <label>:1168                                    ; preds = %1163, %1158
  %1169 = phi float [ %1160, %1158 ], [ %1165, %1163 ]
  %1170 = phi float [ %1161, %1158 ], [ %1166, %1163 ]
  %1171 = phi float [ %1162, %1158 ], [ %1167, %1163 ]
  %1172 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1173 = fmul fast float %1172, %1169
  %1174 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1175 = fsub fast float %1140, %1174
  %1176 = fsub fast float %1175, %1173
  %1177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1176)  ; FMax(a,b)
  %1178 = fmul fast float %1177, %1170
  %1179 = call float @dx.op.binary.f32(i32 36, float %1171, float %1178)  ; FMin(a,b)
  %1180 = fmul fast float %1179, 0xBFF7154760000000
  %1181 = call float @dx.op.unary.f32(i32 21, float %1180)  ; Exp(value)
  %1182 = fmul fast float %1129, %1181
  br label %1183

; <label>:1183                                    ; preds = %1168, %1023
  %1184 = phi float [ %1182, %1168 ], [ %1024, %1023 ]
  %1185 = call float @dx.op.binary.f32(i32 36, float %1184, float %1184)  ; FMin(a,b)
  %1186 = call float @dx.op.binary.f32(i32 36, float %1184, float %1185)  ; FMin(a,b)
  %1187 = fcmp fast ogt float %1186, 0.000000e+00
  br i1 %1187, label %1188, label %1212, !dx.controlflow.hints !81

; <label>:1188                                    ; preds = %1183
  %1189 = call float @dx.op.dot3.f32(i32 55, float %476, float %477, float %478, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %1190 = fcmp fast ogt float %337, 0.000000e+00
  %1191 = select i1 %1190, float 1.000000e+00, float -1.000000e+00
  %1192 = fmul fast float %106, 7.812500e-03
  %1193 = fmul fast float %106, 3.125000e-02
  %1194 = fadd fast float %1193, -3.125000e-02
  %1195 = fmul fast float %1191, 5.000000e-01
  %1196 = fmul fast float %1195, %1189
  %1197 = fmul fast float %1191, %337
  %1198 = fadd fast float %1192, 4.921875e-01
  %1199 = fadd fast float %1198, %1196
  %1200 = fadd fast float %1192, 0x3FB25F3060000000
  %1201 = fadd fast float %1194, %1197
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %1199, float %1200, float %1201, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = fmul fast float %1184, 0x400921FB60000000
  %1207 = fmul fast float %1206, %1203
  %1208 = fmul fast float %1207, %1205
  %1209 = fmul fast float %1208, %480
  %1210 = fmul fast float %1208, %481
  %1211 = fmul fast float %1208, %482
  br label %1212

; <label>:1212                                    ; preds = %1188, %1183, %330
  %1213 = phi float [ %1209, %1188 ], [ 0.000000e+00, %330 ], [ 0.000000e+00, %1183 ]
  %1214 = phi float [ %1210, %1188 ], [ 0.000000e+00, %330 ], [ 0.000000e+00, %1183 ]
  %1215 = phi float [ %1211, %1188 ], [ 0.000000e+00, %330 ], [ 0.000000e+00, %1183 ]
  %1216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.i32 %1216, 0
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1813, label %1219, !dx.controlflow.hints !82

; <label>:1219                                    ; preds = %1212
  %1220 = add nsw i32 %1217, -1
  %1221 = call i32 @dx.op.binary.i32(i32 37, i32 %1220, i32 0)  ; IMax(a,b)
  br label %1222

; <label>:1222                                    ; preds = %1806, %1219
  %1223 = phi i32 [ 0, %1219 ], [ %1810, %1806 ]
  %1224 = phi float [ %1213, %1219 ], [ %1807, %1806 ]
  %1225 = phi float [ %1214, %1219 ], [ %1808, %1806 ]
  %1226 = phi float [ %1215, %1219 ], [ %1809, %1806 ]
  %1227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.i32 %1227, 0
  %1229 = call i32 @dx.op.tertiary.i32(i32 49, i32 %342, i32 %1228, i32 %1223)  ; UMad(a,b,c)
  %1230 = shl i32 %1229, 2
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1806, label %1234

; <label>:1234                                    ; preds = %1222
  br label %1235

; <label>:1235                                    ; preds = %1674, %1234
  %1236 = phi i32 [ %1245, %1674 ], [ %1232, %1234 ]
  %1237 = phi float [ %1675, %1674 ], [ %1224, %1234 ]
  %1238 = phi float [ %1676, %1674 ], [ %1225, %1234 ]
  %1239 = phi float [ %1677, %1674 ], [ %1226, %1234 ]
  %1240 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1236)  ; FirstbitLo(value)
  %1241 = shl i32 %1223, 5
  %1242 = add i32 %1240, %1241
  %1243 = and i32 %1240, 31
  %1244 = shl i32 1, %1243
  %1245 = xor i32 %1244, %1236
  %1246 = mul i32 %1242, 112
  %1247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1251 = or i32 %1246, 12
  %1252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = add i32 %1246, 16
  %1255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.ResRet.f32 %1255, 2
  %1259 = add i32 %1246, 28
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = add i32 %1246, 32
  %1263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = add i32 %1246, 44
  %1268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = add i32 %1246, 48
  %1271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.ResRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.ResRet.f32 %1271, 2
  %1275 = extractvalue %dx.types.ResRet.f32 %1271, 3
  %1276 = add i32 %1246, 64
  %1277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1277, 2
  %1281 = extractvalue %dx.types.ResRet.f32 %1277, 3
  %1282 = add i32 %1246, 92
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 65535
  %1286 = uitofp i32 %1285 to float
  %1287 = lshr i32 %1284, 16
  %1288 = uitofp i32 %1287 to float
  %1289 = and i32 %1261, 65535
  %1290 = and i32 %1261, 50331648
  %1291 = icmp eq i32 %1290, 33554432
  %1292 = fdiv fast float 1.000000e+00, %466
  br i1 %1291, label %1293, label %1485, !dx.controlflow.hints !83

; <label>:1293                                    ; preds = %1235
  %1294 = fsub fast float %1272, %1264
  %1295 = fsub fast float %1273, %1265
  %1296 = fsub fast float %1274, %1266
  %1297 = fmul fast float %467, %466
  %1298 = fmul fast float %468, %466
  %1299 = fmul fast float %469, %466
  %1300 = fadd fast float %1297, %449
  %1301 = fadd fast float %1298, %450
  %1302 = fadd fast float %1299, %451
  %1303 = fmul fast float %1264, 2.000000e+00
  %1304 = fmul fast float %1265, 2.000000e+00
  %1305 = fmul fast float %1266, 2.000000e+00
  %1306 = call float @dx.op.dot3.f32(i32 55, float %1303, float %1304, float %1305, float %1303, float %1304, float %1305)  ; Dot3(ax,ay,az,bx,by,bz)
  %1307 = fdiv fast float %1303, %1306
  %1308 = fdiv fast float %1304, %1306
  %1309 = fdiv fast float %1305, %1306
  %1310 = fsub fast float %449, %1294
  %1311 = fsub fast float %450, %1295
  %1312 = fsub fast float %451, %1296
  %1313 = call float @dx.op.dot3.f32(i32 55, float %1310, float %1311, float %1312, float %1303, float %1304, float %1305)  ; Dot3(ax,ay,az,bx,by,bz)
  %1314 = fmul fast float %1313, %1307
  %1315 = fmul fast float %1313, %1308
  %1316 = fmul fast float %1313, %1309
  %1317 = fsub fast float %449, %1314
  %1318 = fsub fast float %450, %1315
  %1319 = fsub fast float %451, %1316
  %1320 = fsub fast float %1300, %1294
  %1321 = fsub fast float %1301, %1295
  %1322 = fsub fast float %1302, %1296
  %1323 = call float @dx.op.dot3.f32(i32 55, float %1320, float %1321, float %1322, float %1303, float %1304, float %1305)  ; Dot3(ax,ay,az,bx,by,bz)
  %1324 = fmul fast float %1323, %1307
  %1325 = fmul fast float %1323, %1308
  %1326 = fmul fast float %1323, %1309
  %1327 = fsub fast float %1300, %1324
  %1328 = fsub fast float %1301, %1325
  %1329 = fsub fast float %1302, %1326
  %1330 = fsub fast float %1327, %1317
  %1331 = fsub fast float %1328, %1318
  %1332 = fsub fast float %1329, %1319
  %1333 = fsub fast float %1294, %1317
  %1334 = fsub fast float %1295, %1318
  %1335 = fsub fast float %1296, %1319
  %1336 = call float @dx.op.dot3.f32(i32 55, float %1333, float %1334, float %1335, float %1330, float %1331, float %1332)  ; Dot3(ax,ay,az,bx,by,bz)
  %1337 = call float @dx.op.dot3.f32(i32 55, float %1330, float %1331, float %1332, float %1330, float %1331, float %1332)  ; Dot3(ax,ay,az,bx,by,bz)
  %1338 = fdiv fast float %1336, %1337
  %1339 = fcmp fast une float %1317, %1327
  %1340 = fcmp fast une float %1318, %1328
  %1341 = fcmp fast une float %1319, %1329
  %1342 = or i1 %1339, %1340
  %1343 = or i1 %1341, %1342
  %1344 = select i1 %1343, float %1338, float 0.000000e+00
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = fmul fast float %1345, %1297
  %1347 = fmul fast float %1345, %1298
  %1348 = fmul fast float %1345, %1299
  %1349 = fadd fast float %1310, %1346
  %1350 = fadd fast float %1311, %1347
  %1351 = fadd fast float %1312, %1348
  %1352 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1303, float %1304, float %1305)  ; Dot3(ax,ay,az,bx,by,bz)
  %1353 = fdiv fast float %1352, %1306
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = fmul fast float %1303, %1354
  %1356 = fmul fast float %1304, %1354
  %1357 = fmul fast float %1305, %1354
  %1358 = fadd fast float %1355, %1294
  %1359 = fadd fast float %1356, %1295
  %1360 = fadd fast float %1357, %1296
  %1361 = fmul fast float %1280, %1256
  %1362 = fmul fast float %1280, %1257
  %1363 = fmul fast float %1280, %1258
  %1364 = fadd fast float %1358, %1361
  %1365 = fadd fast float %1359, %1362
  %1366 = fadd fast float %1360, %1363
  %1367 = fsub fast float -0.000000e+00, %1279
  %1368 = fdiv fast float %1367, %1278
  %1369 = fmul fast float %1368, %1368
  %1370 = call float @dx.op.dot3.f32(i32 55, float %467, float %468, float %469, float %1256, float %1257, float %1258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1371 = fsub fast float %449, %1364
  %1372 = fsub fast float %450, %1365
  %1373 = fsub fast float %451, %1366
  %1374 = call float @dx.op.dot3.f32(i32 55, float %1371, float %1372, float %1373, float %1256, float %1257, float %1258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1375 = fsub fast float %1364, %449
  %1376 = fsub fast float %1365, %450
  %1377 = fsub fast float %1366, %451
  %1378 = fmul fast float %1370, %1370
  %1379 = fsub fast float %1378, %1369
  %1380 = fmul fast float %1374, %1370
  %1381 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %467, float %468, float %469)  ; Dot3(ax,ay,az,bx,by,bz)
  %1382 = fmul fast float %1381, %1369
  %1383 = fadd fast float %1382, %1380
  %1384 = fmul fast float %1383, 2.000000e+00
  %1385 = fmul fast float %1374, %1374
  %1386 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1375, float %1376, float %1377)  ; Dot3(ax,ay,az,bx,by,bz)
  %1387 = fmul fast float %1386, %1369
  %1388 = fsub fast float %1385, %1387
  %1389 = fmul fast float %1384, %1384
  %1390 = fmul fast float %1379, 4.000000e+00
  %1391 = fmul fast float %1390, %1388
  %1392 = fsub fast float %1389, %1391
  %1393 = fcmp fast ogt float %1392, 0.000000e+00
  br i1 %1393, label %1394, label %1485, !dx.controlflow.hints !84

; <label>:1394                                    ; preds = %1293
  %1395 = call float @dx.op.unary.f32(i32 24, float %1392)  ; Sqrt(value)
  %1396 = fdiv fast float 5.000000e-01, %1379
  %1397 = fsub fast float -0.000000e+00, %1384
  %1398 = fsub fast float %1397, %1395
  %1399 = fmul fast float %1398, %1396
  %1400 = fsub fast float %1395, %1384
  %1401 = fmul fast float %1400, %1396
  %1402 = call float @dx.op.binary.f32(i32 35, float %1399, float %1401)  ; FMax(a,b)
  %1403 = call float @dx.op.binary.f32(i32 36, float %1399, float %1401)  ; FMin(a,b)
  %1404 = fsub fast float %1358, %449
  %1405 = fsub fast float %1359, %450
  %1406 = fsub fast float %1360, %451
  %1407 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1256, float %1257, float %1258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1408 = fdiv fast float %1407, %1370
  %1409 = fcmp fast ogt float %1370, 0.000000e+00
  br i1 %1409, label %1410, label %1413, !dx.controlflow.hints !85

; <label>:1410                                    ; preds = %1394
  %1411 = call float @dx.op.binary.f32(i32 36, float %1403, float %1408)  ; FMin(a,b)
  %1412 = call float @dx.op.binary.f32(i32 36, float %1402, float %1408)  ; FMin(a,b)
  br label %1416

; <label>:1413                                    ; preds = %1394
  %1414 = call float @dx.op.binary.f32(i32 35, float %1403, float %1408)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 35, float %1402, float %1408)  ; FMax(a,b)
  br label %1416

; <label>:1416                                    ; preds = %1413, %1410
  %1417 = phi float [ %1411, %1410 ], [ %1414, %1413 ]
  %1418 = phi float [ %1412, %1410 ], [ %1415, %1413 ]
  %1419 = fcmp fast oge float %1417, 0.000000e+00
  %1420 = fcmp fast olt float %1417, %466
  %1421 = and i1 %1419, %1420
  %1422 = fcmp fast ogt float %1418, 0.000000e+00
  %1423 = fcmp fast ole float %1418, %466
  %1424 = and i1 %1422, %1423
  %1425 = or i1 %1421, %1424
  br i1 %1425, label %1426, label %1485, !dx.controlflow.hints !86

; <label>:1426                                    ; preds = %1416
  %1427 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1417)  ; FMax(a,b)
  %1428 = call float @dx.op.binary.f32(i32 36, float %466, float %1418)  ; FMin(a,b)
  br i1 %1409, label %1429, label %1451, !dx.controlflow.hints !87

; <label>:1429                                    ; preds = %1426
  %1430 = fmul fast float %1428, %467
  %1431 = fmul fast float %1428, %468
  %1432 = fmul fast float %1428, %469
  %1433 = fsub fast float %1375, %1430
  %1434 = fsub fast float %1376, %1431
  %1435 = fsub fast float %1377, %1432
  %1436 = call float @dx.op.dot3.f32(i32 55, float %1433, float %1434, float %1435, float %1433, float %1434, float %1435)  ; Dot3(ax,ay,az,bx,by,bz)
  %1437 = call float @dx.op.unary.f32(i32 25, float %1436)  ; Rsqrt(value)
  %1438 = fmul fast float %1437, %1433
  %1439 = fmul fast float %1437, %1434
  %1440 = fmul fast float %1437, %1435
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1438, float %1439, float %1440, float %1256, float %1257, float %1258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = fmul fast float %1441, %1278
  %1443 = fadd fast float %1442, %1279
  %1444 = fcmp fast olt float %1443, 0xBF1A36E2E0000000
  %1445 = select i1 %1444, float 0.000000e+00, float %1427
  %1446 = select i1 %1444, float %1427, float %1428
  %1447 = fsub fast float %1445, %1446
  %1448 = call float @dx.op.unary.f32(i32 6, float %1447)  ; FAbs(value)
  %1449 = fcmp fast olt float %1448, 0x3F1A36E2E0000000
  br i1 %1449, label %1450, label %1473, !dx.controlflow.hints !88

; <label>:1450                                    ; preds = %1429
  br label %1473

; <label>:1451                                    ; preds = %1426
  %1452 = fmul fast float %1427, %467
  %1453 = fmul fast float %1427, %468
  %1454 = fmul fast float %1427, %469
  %1455 = fsub fast float %1375, %1452
  %1456 = fsub fast float %1376, %1453
  %1457 = fsub fast float %1377, %1454
  %1458 = call float @dx.op.dot3.f32(i32 55, float %1455, float %1456, float %1457, float %1455, float %1456, float %1457)  ; Dot3(ax,ay,az,bx,by,bz)
  %1459 = call float @dx.op.unary.f32(i32 25, float %1458)  ; Rsqrt(value)
  %1460 = fmul fast float %1459, %1455
  %1461 = fmul fast float %1459, %1456
  %1462 = fmul fast float %1459, %1457
  %1463 = call float @dx.op.dot3.f32(i32 55, float %1460, float %1461, float %1462, float %1256, float %1257, float %1258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1464 = fmul fast float %1463, %1278
  %1465 = fadd fast float %1464, %1279
  %1466 = fcmp fast olt float %1465, 0xBF1A36E2E0000000
  %1467 = select i1 %1466, float %1428, float %1427
  %1468 = select i1 %1466, float %466, float %1428
  %1469 = fsub fast float %1467, %1468
  %1470 = call float @dx.op.unary.f32(i32 6, float %1469)  ; FAbs(value)
  %1471 = fcmp fast olt float %1470, 0x3F1A36E2E0000000
  br i1 %1471, label %1472, label %1473, !dx.controlflow.hints !89

; <label>:1472                                    ; preds = %1451
  br label %1473

; <label>:1473                                    ; preds = %1472, %1451, %1450, %1429
  %1474 = phi float [ 0.000000e+00, %1450 ], [ %1445, %1429 ], [ %1467, %1472 ], [ %1467, %1451 ]
  %1475 = phi float [ %1446, %1450 ], [ %1446, %1429 ], [ %466, %1472 ], [ %1468, %1451 ]
  %1476 = fmul fast float %1474, %467
  %1477 = fmul fast float %1474, %468
  %1478 = fmul fast float %1474, %469
  %1479 = fadd fast float %1476, %449
  %1480 = fadd fast float %1477, %450
  %1481 = fadd fast float %1478, %451
  %1482 = fsub fast float %1475, %1474
  %1483 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1482)  ; FMax(a,b)
  %1484 = fmul fast float %1483, %1292
  br label %1485

; <label>:1485                                    ; preds = %1473, %1416, %1293, %1235
  %1486 = phi float [ %1364, %1473 ], [ %1364, %1416 ], [ %1364, %1293 ], [ %1272, %1235 ]
  %1487 = phi float [ %1365, %1473 ], [ %1365, %1416 ], [ %1365, %1293 ], [ %1273, %1235 ]
  %1488 = phi float [ %1366, %1473 ], [ %1366, %1416 ], [ %1366, %1293 ], [ %1274, %1235 ]
  %1489 = phi float [ %1479, %1473 ], [ %449, %1416 ], [ %449, %1293 ], [ %449, %1235 ]
  %1490 = phi float [ %1480, %1473 ], [ %450, %1416 ], [ %450, %1293 ], [ %450, %1235 ]
  %1491 = phi float [ %1481, %1473 ], [ %451, %1416 ], [ %451, %1293 ], [ %451, %1235 ]
  %1492 = phi float [ %1483, %1473 ], [ %466, %1416 ], [ %466, %1293 ], [ %466, %1235 ]
  %1493 = phi float [ %1484, %1473 ], [ 1.000000e+00, %1416 ], [ 1.000000e+00, %1293 ], [ 1.000000e+00, %1235 ]
  %1494 = fsub fast float %1486, %1489
  %1495 = fsub fast float %1487, %1490
  %1496 = fsub fast float %1488, %1491
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1494, float %1495, float %1496, float %467, float %468, float %469)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = call float @dx.op.binary.f32(i32 35, float %1497, float 0.000000e+00)  ; FMax(a,b)
  %1499 = call float @dx.op.binary.f32(i32 36, float %1498, float %1492)  ; FMin(a,b)
  %1500 = fmul fast float %1499, %467
  %1501 = fmul fast float %1499, %468
  %1502 = fmul fast float %1499, %469
  %1503 = fsub fast float %1489, %1486
  %1504 = fadd fast float %1503, %1500
  %1505 = fsub fast float %1490, %1487
  %1506 = fadd fast float %1505, %1501
  %1507 = fsub fast float %1491, %1488
  %1508 = fadd fast float %1507, %1502
  %1509 = fmul fast float %1504, %1504
  %1510 = fmul fast float %1506, %1506
  %1511 = fadd fast float %1509, %1510
  %1512 = fmul fast float %1508, %1508
  %1513 = fadd fast float %1511, %1512
  %1514 = call float @dx.op.unary.f32(i32 24, float %1513)  ; Sqrt(value)
  %1515 = fsub fast float -0.000000e+00, %1499
  %1516 = call float @dx.op.unary.f32(i32 6, float %1515)  ; FAbs(value)
  %1517 = fadd fast float %1516, 0x3DDB7CDFE0000000
  %1518 = fcmp fast oge float %1514, 0.000000e+00
  %1519 = fsub fast float -0.000000e+00, %1517
  %1520 = select i1 %1518, float %1519, float %1517
  %1521 = fadd fast float %1520, %1514
  %1522 = fsub fast float -0.000000e+00, %1514
  %1523 = select i1 %1518, float %1514, float %1522
  %1524 = fadd fast float %1517, %1523
  %1525 = fdiv fast float %1521, %1524
  %1526 = select i1 %1518, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %1527 = fmul fast float %1525, %1525
  %1528 = fmul fast float %1527, 0x3FC9205BC0000000
  %1529 = fadd fast float %1528, 0xBFEF6A1620000000
  %1530 = fmul fast float %1529, %1525
  %1531 = fadd fast float %1530, %1526
  %1532 = fcmp ole float %1499, -0.000000e+00
  %1533 = fsub fast float -0.000000e+00, %1531
  %1534 = select i1 %1532, float %1531, float %1533
  %1535 = fsub fast float %1492, %1499
  %1536 = call float @dx.op.unary.f32(i32 6, float %1535)  ; FAbs(value)
  %1537 = fadd fast float %1536, 0x3DDB7CDFE0000000
  %1538 = fsub fast float -0.000000e+00, %1537
  %1539 = select i1 %1518, float %1538, float %1537
  %1540 = fadd fast float %1539, %1514
  %1541 = fadd fast float %1537, %1523
  %1542 = fdiv fast float %1540, %1541
  %1543 = fmul fast float %1542, %1542
  %1544 = fmul fast float %1543, 0x3FC9205BC0000000
  %1545 = fadd fast float %1544, 0xBFEF6A1620000000
  %1546 = fmul fast float %1545, %1542
  %1547 = fadd fast float %1546, %1526
  %1548 = fcmp fast oge float %1535, 0.000000e+00
  %1549 = fsub fast float -0.000000e+00, %1547
  %1550 = select i1 %1548, float %1547, float %1549
  %1551 = fsub fast float %1550, %1534
  %1552 = fmul fast float %1551, %106
  %1553 = fadd fast float %1552, %1534
  %1554 = call float @dx.op.unary.f32(i32 14, float %1553)  ; Tan(value)
  %1555 = fmul fast float %1554, %1514
  %1556 = fadd fast float %1555, %1499
  %1557 = fmul fast float %1514, %1514
  %1558 = fmul fast float %1555, %1555
  %1559 = fadd fast float %1558, %1557
  %1560 = fmul fast float %1551, %1559
  %1561 = fdiv fast float %1514, %1560
  %1562 = fdiv fast float 1.000000e+00, %1561
  %1563 = fmul fast float %1493, %1292
  %1564 = fmul fast float %1563, %1562
  %1565 = fmul fast float %1556, %467
  %1566 = fmul fast float %1556, %468
  %1567 = fmul fast float %1556, %469
  %1568 = fadd fast float %1565, %1489
  %1569 = fadd fast float %1566, %1490
  %1570 = fadd fast float %1567, %1491
  %1571 = call float @dx.op.dot3.f32(i32 55, float %1264, float %1265, float %1266, float %1264, float %1265, float %1266)  ; Dot3(ax,ay,az,bx,by,bz)
  %1572 = fsub fast float %1568, %1272
  %1573 = fsub fast float %1569, %1273
  %1574 = fsub fast float %1570, %1274
  %1575 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1573, float %1574, float %1264, float %1265, float %1266)  ; Dot3(ax,ay,az,bx,by,bz)
  %1576 = fdiv fast float %1575, %1571
  %1577 = call float @dx.op.binary.f32(i32 35, float %1576, float -1.000000e+00)  ; FMax(a,b)
  %1578 = call float @dx.op.binary.f32(i32 36, float %1577, float 1.000000e+00)  ; FMin(a,b)
  %1579 = fmul fast float %1578, %1264
  %1580 = fmul fast float %1578, %1265
  %1581 = fmul fast float %1578, %1266
  %1582 = fadd fast float %1579, %1272
  %1583 = fadd fast float %1580, %1273
  %1584 = fadd fast float %1581, %1274
  %1585 = fsub fast float %1582, %1568
  %1586 = fsub fast float %1583, %1569
  %1587 = fsub fast float %1584, %1570
  %1588 = call float @dx.op.dot3.f32(i32 55, float %1585, float %1586, float %1587, float %1585, float %1586, float %1587)  ; Dot3(ax,ay,az,bx,by,bz)
  %1589 = call float @dx.op.unary.f32(i32 24, float %1588)  ; Sqrt(value)
  %1590 = fdiv fast float 1.000000e+00, %1589
  %1591 = fmul fast float %1585, %1590
  %1592 = fmul fast float %1586, %1590
  %1593 = fmul fast float %1587, %1590
  %1594 = fadd fast float %1589, %1253
  %1595 = fdiv fast float 1.000000e+00, %1594
  %1596 = fmul float %1269, %1595
  %1597 = fmul float %1596, %1596
  %1598 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  br i1 %1291, label %1599, label %1623, !dx.controlflow.hints !90

; <label>:1599                                    ; preds = %1485
  %1600 = fmul fast float %1280, %1256
  %1601 = fmul fast float %1280, %1257
  %1602 = fmul fast float %1280, %1258
  %1603 = fsub fast float %1600, %1568
  %1604 = fadd fast float %1603, %1582
  %1605 = fsub fast float %1601, %1569
  %1606 = fadd fast float %1605, %1583
  %1607 = fsub fast float %1602, %1570
  %1608 = fadd fast float %1607, %1584
  %1609 = call float @dx.op.dot3.f32(i32 55, float %1604, float %1606, float %1608, float %1604, float %1606, float %1608)  ; Dot3(ax,ay,az,bx,by,bz)
  %1610 = call float @dx.op.unary.f32(i32 25, float %1609)  ; Rsqrt(value)
  %1611 = fmul fast float %1610, %1604
  %1612 = fmul fast float %1610, %1606
  %1613 = fmul fast float %1610, %1608
  %1614 = fsub fast float %1568, %1582
  %1615 = fsub fast float %1569, %1583
  %1616 = fsub fast float %1570, %1584
  %1617 = fsub fast float -0.000000e+00, %1614
  %1618 = fsub fast float -0.000000e+00, %1615
  %1619 = fsub fast float -0.000000e+00, %1616
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1617, float %1618, float %1619, float %1256, float %1257, float %1258)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = fcmp fast ogt float %1620, 0.000000e+00
  %1622 = uitofp i1 %1621 to float
  br label %1623

; <label>:1623                                    ; preds = %1599, %1485
  %1624 = phi float [ %1622, %1599 ], [ 1.000000e+00, %1485 ]
  %1625 = phi float [ %1611, %1599 ], [ %1591, %1485 ]
  %1626 = phi float [ %1612, %1599 ], [ %1592, %1485 ]
  %1627 = phi float [ %1613, %1599 ], [ %1593, %1485 ]
  %1628 = call float @dx.op.dot3.f32(i32 55, float %1256, float %1257, float %1258, float %1625, float %1626, float %1627)  ; Dot3(ax,ay,az,bx,by,bz)
  %1629 = fmul fast float %1628, %1628
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = fsub fast float 1.000000e+00, %1630
  %1632 = fmul fast float %1631, 5.000000e-01
  %1633 = fcmp fast ogt float %1628, 0.000000e+00
  %1634 = fsub fast float 1.000000e+00, %1632
  %1635 = select i1 %1633, float %1632, float %1634
  %1636 = fmul fast float %1635, %1288
  %1637 = fadd fast float %1636, %1286
  %1638 = fmul fast float %1637, 0x3EF0001000000000
  %1639 = fsub fast float %1582, %413
  %1640 = fsub fast float %1583, %414
  %1641 = fsub fast float %1584, %415
  %1642 = call float @dx.op.dot3.f32(i32 55, float %1639, float %1640, float %1641, float %1639, float %1640, float %1641)  ; Dot3(ax,ay,az,bx,by,bz)
  %1643 = fmul fast float %421, %421
  %1644 = fsub fast float %1642, %1643
  %1645 = fdiv fast float %1644, %1642
  %1646 = call float @dx.op.unary.f32(i32 24, float %1645)  ; Sqrt(value)
  %1647 = fsub fast float 1.000000e+00, %1646
  %1648 = fcmp fast olt float %1642, %1643
  %1649 = fmul fast float %1647, 2.560000e+02
  %1650 = select i1 %1648, float 2.560000e+02, float %1649
  %1651 = call float @dx.op.unary.f32(i32 23, float %1650)  ; Log(value)
  %1652 = call float @dx.op.binary.f32(i32 36, float %1651, float 7.000000e+00)  ; FMin(a,b)
  %1653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %22, float %1638, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %1652)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1654 = extractvalue %dx.types.ResRet.f32 %1653, 0
  %1655 = fmul fast float %1628, %1278
  %1656 = fadd fast float %1655, %1279
  %1657 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1658 = select i1 %1291, float 1.000000e+00, float %1657
  %1659 = select i1 %1291, float %1657, float 1.000000e+00
  %1660 = fmul fast float %1589, %1275
  %1661 = fsub fast float 1.000000e+00, %1660
  %1662 = fmul fast float %1661, %1281
  %1663 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1664 = fmul fast float %1663, %1659
  %1665 = fmul fast float %1664, 2.000000e+00
  %1666 = fsub fast float 3.000000e+00, %1665
  %1667 = fmul fast float %1654, %1624
  %1668 = fmul fast float %1664, %1664
  %1669 = fmul fast float %1668, %1667
  %1670 = fmul fast float %1669, %1666
  %1671 = call float @dx.op.binary.f32(i32 36, float %1670, float %1670)  ; FMin(a,b)
  %1672 = call float @dx.op.binary.f32(i32 36, float %1670, float %1671)  ; FMin(a,b)
  %1673 = fcmp fast ogt float %1672, 0.000000e+00
  br i1 %1673, label %1679, label %1674, !dx.controlflow.hints !91

; <label>:1674                                    ; preds = %1772, %1767, %1623
  %1675 = phi float [ %1802, %1772 ], [ %1237, %1767 ], [ %1237, %1623 ]
  %1676 = phi float [ %1803, %1772 ], [ %1238, %1767 ], [ %1238, %1623 ]
  %1677 = phi float [ %1804, %1772 ], [ %1239, %1767 ], [ %1239, %1623 ]
  %1678 = icmp eq i32 %1236, %1244
  br i1 %1678, label %1805, label %1235

; <label>:1679                                    ; preds = %1623
  %1680 = icmp eq i32 %1289, 255
  br i1 %1680, label %1767, label %1681, !dx.controlflow.hints !92

; <label>:1681                                    ; preds = %1679
  %1682 = mul nuw nsw i32 %1289, 176
  %1683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.ResRet.f32 %1683, 1
  %1686 = extractvalue %dx.types.ResRet.f32 %1683, 2
  %1687 = extractvalue %dx.types.ResRet.f32 %1683, 3
  %1688 = add nuw nsw i32 %1682, 16
  %1689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.f32 %1689, 0
  %1691 = extractvalue %dx.types.ResRet.f32 %1689, 1
  %1692 = add nuw nsw i32 %1682, 32
  %1693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.ResRet.f32 %1693, 2
  %1696 = add nuw nsw i32 %1682, 48
  %1697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.ResRet.f32 %1697, 1
  %1700 = extractvalue %dx.types.ResRet.f32 %1697, 2
  %1701 = extractvalue %dx.types.ResRet.f32 %1697, 3
  %1702 = add nuw nsw i32 %1682, 64
  %1703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.f32 %1703, 0
  %1705 = extractvalue %dx.types.ResRet.f32 %1703, 1
  %1706 = extractvalue %dx.types.ResRet.f32 %1703, 2
  %1707 = extractvalue %dx.types.ResRet.f32 %1703, 3
  %1708 = add nuw nsw i32 %1682, 80
  %1709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.ResRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.ResRet.f32 %1709, 2
  %1713 = extractvalue %dx.types.ResRet.f32 %1709, 3
  %1714 = add nuw nsw i32 %1682, 96
  %1715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.ResRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.ResRet.f32 %1715, 2
  %1719 = extractvalue %dx.types.ResRet.f32 %1715, 3
  %1720 = bitcast float %1691 to i32
  %1721 = fmul fast float %1695, %1591
  %1722 = fmul fast float %1695, %1592
  %1723 = fmul fast float %1695, %1593
  %1724 = fsub fast float %1568, %1721
  %1725 = fsub fast float %1569, %1722
  %1726 = fsub fast float %1570, %1723
  %1727 = fmul fast float %1724, %1698
  %1728 = call float @dx.op.tertiary.f32(i32 46, float %1725, float %1704, float %1727)  ; FMad(a,b,c)
  %1729 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1710, float %1728)  ; FMad(a,b,c)
  %1730 = fadd fast float %1729, %1716
  %1731 = fmul fast float %1724, %1699
  %1732 = call float @dx.op.tertiary.f32(i32 46, float %1725, float %1705, float %1731)  ; FMad(a,b,c)
  %1733 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1711, float %1732)  ; FMad(a,b,c)
  %1734 = fadd fast float %1733, %1717
  %1735 = fmul fast float %1724, %1700
  %1736 = call float @dx.op.tertiary.f32(i32 46, float %1725, float %1706, float %1735)  ; FMad(a,b,c)
  %1737 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1712, float %1736)  ; FMad(a,b,c)
  %1738 = fadd fast float %1737, %1718
  %1739 = fmul fast float %1724, %1701
  %1740 = call float @dx.op.tertiary.f32(i32 46, float %1725, float %1707, float %1739)  ; FMad(a,b,c)
  %1741 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1713, float %1740)  ; FMad(a,b,c)
  %1742 = fadd fast float %1741, %1719
  %1743 = fdiv fast float %1730, %1742
  %1744 = fdiv fast float %1734, %1742
  %1745 = fdiv fast float %1738, %1742
  %1746 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %1745)  ; FMax(a,b)
  %1747 = fmul fast float %1686, 5.000000e-01
  %1748 = call float @dx.op.tertiary.f32(i32 46, float %1747, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %1749 = fadd fast float %1748, %1743
  %1750 = fadd fast float %1744, %1747
  %1751 = fmul fast float %1749, %1690
  %1752 = fmul fast float %1750, %1690
  %1753 = call float @dx.op.binary.f32(i32 35, float %1751, float %1686)  ; FMax(a,b)
  %1754 = call float @dx.op.binary.f32(i32 35, float %1752, float %1686)  ; FMax(a,b)
  %1755 = call float @dx.op.binary.f32(i32 36, float %1753, float %1687)  ; FMin(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1754, float %1687)  ; FMin(a,b)
  %1757 = fadd fast float %1755, %1684
  %1758 = fadd fast float %1756, %1685
  %1759 = uitofp i32 %1720 to float
  %1760 = fadd fast float %1746, %1694
  %1761 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %25, float %1757, float %1758, float %1759, float undef, i32 0, i32 0, i32 undef, float %1760)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = fadd fast float %1762, -1.000000e+00
  %1764 = fmul fast float %1763, %1658
  %1765 = fadd fast float %1764, 1.000000e+00
  %1766 = fmul fast float %1765, %1670
  br label %1767

; <label>:1767                                    ; preds = %1681, %1679
  %1768 = phi float [ %1766, %1681 ], [ %1670, %1679 ]
  %1769 = call float @dx.op.binary.f32(i32 36, float %1768, float %1768)  ; FMin(a,b)
  %1770 = call float @dx.op.binary.f32(i32 36, float %1768, float %1769)  ; FMin(a,b)
  %1771 = fcmp fast ogt float %1770, 0.000000e+00
  br i1 %1771, label %1772, label %1674, !dx.controlflow.hints !93

; <label>:1772                                    ; preds = %1767
  %1773 = call float @dx.op.dot3.f32(i32 55, float %1591, float %1592, float %1593, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %1774 = fcmp fast ogt float %337, 0.000000e+00
  %1775 = select i1 %1774, float 1.000000e+00, float -1.000000e+00
  %1776 = fmul fast float %106, 7.812500e-03
  %1777 = fmul fast float %106, 3.125000e-02
  %1778 = fadd fast float %1777, -3.125000e-02
  %1779 = fmul fast float %1775, 5.000000e-01
  %1780 = fmul fast float %1779, %1773
  %1781 = fmul fast float %1775, %337
  %1782 = fadd fast float %1776, 4.921875e-01
  %1783 = fadd fast float %1782, %1780
  %1784 = fadd fast float %1776, 0x3FB25F3060000000
  %1785 = fadd fast float %1778, %1781
  %1786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %1783, float %1784, float %1785, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1787 = extractvalue %dx.types.ResRet.f32 %1786, 0
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1791 = select i1 %1291, float %1789, float %1790
  %1792 = fmul fast float %1598, 0x400921FB60000000
  %1793 = fmul fast float %1792, %1768
  %1794 = fmul fast float %1793, %1787
  %1795 = fmul fast float %1794, %1791
  %1796 = fmul fast float %1564, %1248
  %1797 = fmul fast float %1796, %1795
  %1798 = fmul fast float %1564, %1249
  %1799 = fmul fast float %1798, %1795
  %1800 = fmul fast float %1564, %1250
  %1801 = fmul fast float %1800, %1795
  %1802 = fadd fast float %1797, %1237
  %1803 = fadd fast float %1799, %1238
  %1804 = fadd fast float %1801, %1239
  br label %1674

; <label>:1805                                    ; preds = %1674
  br label %1806

; <label>:1806                                    ; preds = %1805, %1222
  %1807 = phi float [ %1224, %1222 ], [ %1675, %1805 ]
  %1808 = phi float [ %1225, %1222 ], [ %1676, %1805 ]
  %1809 = phi float [ %1226, %1222 ], [ %1677, %1805 ]
  %1810 = add i32 %1223, 1
  %1811 = icmp ugt i32 %1810, %1221
  br i1 %1811, label %1812, label %1222

; <label>:1812                                    ; preds = %1806
  br label %1813

; <label>:1813                                    ; preds = %1812, %1212
  %1814 = phi float [ %1213, %1212 ], [ %1807, %1812 ]
  %1815 = phi float [ %1214, %1212 ], [ %1808, %1812 ]
  %1816 = phi float [ %1215, %1212 ], [ %1809, %1812 ]
  %1817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %22, float %131, float %132, float %133, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.ResRet.f32 %1817, 1
  %1820 = extractvalue %dx.types.ResRet.f32 %1817, 2
  %1821 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1818)  ; IsNaN(value)
  %1822 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1819)  ; IsNaN(value)
  %1823 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1820)  ; IsNaN(value)
  %1824 = or i1 %1821, %1822
  %1825 = or i1 %1824, %1823
  %1826 = select i1 %1825, float 0.000000e+00, float %1818
  %1827 = select i1 %1825, float 0.000000e+00, float %1819
  %1828 = select i1 %1825, float 0.000000e+00, float %1820
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 1
  %1831 = fmul fast float %1826, %1830
  %1832 = fmul fast float %1827, %1830
  %1833 = fmul fast float %1828, %1830
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 3
  %1836 = fmul fast float %1831, %1835
  %1837 = fmul fast float %1832, %1835
  %1838 = fmul fast float %1833, %1835
  %1839 = fadd fast float %1836, %1814
  %1840 = fadd fast float %1837, %1815
  %1841 = fadd fast float %1838, %1816
  br label %1842

; <label>:1842                                    ; preds = %1813, %310
  %1843 = phi float [ %334, %1813 ], [ %326, %310 ]
  %1844 = phi float [ %335, %1813 ], [ %327, %310 ]
  %1845 = phi float [ %336, %1813 ], [ %328, %310 ]
  %1846 = phi float [ %1839, %1813 ], [ 0.000000e+00, %310 ]
  %1847 = phi float [ %1840, %1813 ], [ 0.000000e+00, %310 ]
  %1848 = phi float [ %1841, %1813 ], [ 0.000000e+00, %310 ]
  %1849 = fmul fast float %1843, %325
  %1850 = fmul fast float %1844, %325
  %1851 = fmul fast float %1845, %325
  %1852 = fmul fast float %1849, %1846
  %1853 = fmul fast float %1850, %1847
  %1854 = fmul fast float %1851, %1848
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 0
  %1857 = fmul fast float %1852, %1856
  %1858 = fmul fast float %1853, %1856
  %1859 = fmul fast float %1854, %1856
  %1860 = fmul fast float %1858, 5.000000e-01
  %1861 = fadd fast float %1854, %1852
  %1862 = fmul fast float %1856, %1861
  %1863 = fmul fast float %1862, 2.500000e-01
  %1864 = fadd fast float %1863, %1860
  %1865 = call float @dx.op.unary.f32(i32 23, float %1864)  ; Log(value)
  %1866 = fmul fast float %1865, 0x3FE62E4300000000
  %1867 = fmul fast float %1866, %1866
  %1868 = icmp ugt i32 %190, 31
  %1869 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %1870 = add i32 %190, -1
  %1871 = add i32 %190, 7
  %1872 = and i32 %1871, 4
  %1873 = and i32 %1870, %1869
  %1874 = xor i32 %1873, %1872
  %1875 = and i32 %1869, -4
  %1876 = shl i32 %1869, 1
  %1877 = and i32 %1876, 6
  %1878 = lshr i32 177, %1877
  %1879 = and i32 %1878, 3
  %1880 = or i32 %1879, %1875
  br i1 %1868, label %1881, label %1897, !dx.controlflow.hints !94

; <label>:1881                                    ; preds = %1842
  %1882 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1866, i32 %1874)  ; WaveReadLaneAt(value,lane)
  %1883 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1867, i32 %1874)  ; WaveReadLaneAt(value,lane)
  %1884 = fadd fast float %1882, %1866
  %1885 = fadd fast float %1883, %1867
  %1886 = add i32 %190, 31
  %1887 = and i32 %1886, 16
  %1888 = xor i32 %1873, %1887
  %1889 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1884, i32 %1888)  ; WaveReadLaneAt(value,lane)
  %1890 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1885, i32 %1888)  ; WaveReadLaneAt(value,lane)
  %1891 = fadd fast float %1889, %1884
  %1892 = fadd fast float %1890, %1885
  %1893 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1891, i32 %1880)  ; WaveReadLaneAt(value,lane)
  %1894 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1892, i32 %1880)  ; WaveReadLaneAt(value,lane)
  %1895 = fadd fast float %1893, %1891
  %1896 = fadd fast float %1894, %1892
  br label %1933

; <label>:1897                                    ; preds = %1842
  %1898 = udiv i32 %33, %190
  %1899 = shl i32 %1898, 2
  %1900 = lshr i32 %1869, 1
  %1901 = and i32 %1900, 1
  %1902 = or i32 %1899, %1901
  %1903 = lshr i32 %1869, 2
  %1904 = and i32 %1903, 2
  %1905 = or i32 %1902, %1904
  %1906 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1866, i32 %1874)  ; WaveReadLaneAt(value,lane)
  %1907 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1867, i32 %1874)  ; WaveReadLaneAt(value,lane)
  %1908 = fadd fast float %1906, %1866
  %1909 = fadd fast float %1907, %1867
  %1910 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1908, i32 %1880)  ; WaveReadLaneAt(value,lane)
  %1911 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1909, i32 %1880)  ; WaveReadLaneAt(value,lane)
  %1912 = fadd fast float %1910, %1908
  %1913 = fadd fast float %1911, %1909
  %1914 = mul i32 %1905, 2
  %1915 = add i32 0, %1914
  %1916 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1915
  store float %1912, float addrspace(3)* %1916, align 4
  %1917 = mul i32 %1905, 2
  %1918 = add i32 1, %1917
  %1919 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1918
  store float %1913, float addrspace(3)* %1919, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1920 = load float, float addrspace(3)* %1916, align 4
  %1921 = load float, float addrspace(3)* %1919, align 4
  %1922 = xor i32 %1905, 4
  %1923 = mul i32 %1922, 2
  %1924 = add i32 0, %1923
  %1925 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1924
  %1926 = load float, float addrspace(3)* %1925, align 4
  %1927 = mul i32 %1922, 2
  %1928 = add i32 1, %1927
  %1929 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %1928
  %1930 = load float, float addrspace(3)* %1929, align 4
  %1931 = fadd fast float %1926, %1920
  %1932 = fadd fast float %1930, %1921
  br label %1933

; <label>:1933                                    ; preds = %1897, %1881
  %1934 = phi float [ %1895, %1881 ], [ %1931, %1897 ]
  %1935 = phi float [ %1896, %1881 ], [ %1932, %1897 ]
  %1936 = fmul fast float %1934, 1.250000e-01
  %1937 = and i32 %56, 1
  %1938 = and i32 %1937, %57
  %1939 = and i32 %1938, %58
  %1940 = icmp ne i32 %1939, 0
  %1941 = and i1 %1940, %68
  br i1 %1941, label %1942, label %1947, !dx.controlflow.hints !42

; <label>:1942                                    ; preds = %1933
  %1943 = fmul fast float %1935, 1.250000e-01
  %1944 = lshr i32 %56, 1
  %1945 = lshr i32 %57, 1
  %1946 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1944, i32 %1945, i32 %1946, float %1936, float %1943, float %1936, float %1936, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1947

; <label>:1947                                    ; preds = %1942, %1933
  br i1 %67, label %1982, label %1948, !dx.controlflow.hints !43

; <label>:1948                                    ; preds = %1947
  %1949 = fadd fast float %106, 0x3FE3C6EF40000000
  %1950 = call float @dx.op.unary.f32(i32 22, float %1949)  ; Frc(value)
  %1951 = call float @dx.op.unary.f32(i32 23, float %1857)  ; Log(value)
  %1952 = fadd fast float %1951, -7.000000e+00
  %1953 = call float @dx.op.unary.f32(i32 21, float %1952)  ; Exp(value)
  %1954 = fmul fast float %1950, 2.000000e+00
  %1955 = fadd fast float %1954, -1.000000e+00
  %1956 = fmul fast float %1953, %1955
  %1957 = fcmp fast ogt float %1857, 0.000000e+00
  %1958 = select i1 %1957, float %1956, float 0.000000e+00
  %1959 = fadd fast float %1958, %1857
  %1960 = fadd fast float %106, 0x3FF3C6EF40000000
  %1961 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  %1962 = call float @dx.op.unary.f32(i32 23, float %1858)  ; Log(value)
  %1963 = fadd fast float %1962, -7.000000e+00
  %1964 = call float @dx.op.unary.f32(i32 21, float %1963)  ; Exp(value)
  %1965 = fmul fast float %1961, 2.000000e+00
  %1966 = fadd fast float %1965, -1.000000e+00
  %1967 = fmul fast float %1964, %1966
  %1968 = fcmp fast ogt float %1858, 0.000000e+00
  %1969 = select i1 %1968, float %1967, float 0.000000e+00
  %1970 = fadd fast float %1969, %1858
  %1971 = fadd fast float %106, 0x3FFDAA66E0000000
  %1972 = call float @dx.op.unary.f32(i32 22, float %1971)  ; Frc(value)
  %1973 = call float @dx.op.unary.f32(i32 23, float %1859)  ; Log(value)
  %1974 = fadd fast float %1973, -6.000000e+00
  %1975 = call float @dx.op.unary.f32(i32 21, float %1974)  ; Exp(value)
  %1976 = fmul fast float %1972, 2.000000e+00
  %1977 = fadd fast float %1976, -1.000000e+00
  %1978 = fmul fast float %1975, %1977
  %1979 = fcmp fast ogt float %1859, 0.000000e+00
  %1980 = select i1 %1979, float %1978, float 0.000000e+00
  %1981 = fadd fast float %1980, %1859
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %56, i32 %57, i32 %58, float %1959, float %1970, float %1981, float %1959, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1982

; <label>:1982                                    ; preds = %1948, %1947
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 0
  %1985 = fmul fast float %1984, %325
  %1986 = fmul fast float %1985, 5.000000e-01
  %1987 = fadd fast float %318, %318
  %1988 = fmul fast float %324, %1987
  %1989 = fmul fast float %1984, %1988
  %1990 = fmul fast float %1989, 2.500000e-01
  %1991 = fadd fast float %1990, %1986
  %1992 = fmul fast float %1991, %1991
  %1993 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %1994 = add i32 %190, -1
  %1995 = add i32 %190, 7
  %1996 = and i32 %1995, 4
  %1997 = and i32 %1994, %1993
  %1998 = xor i32 %1997, %1996
  %1999 = and i32 %1993, -4
  %2000 = shl i32 %1993, 1
  %2001 = and i32 %2000, 6
  %2002 = lshr i32 177, %2001
  %2003 = and i32 %2002, 3
  %2004 = or i32 %2003, %1999
  br i1 %1868, label %2005, label %2021, !dx.controlflow.hints !94

; <label>:2005                                    ; preds = %1982
  %2006 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1991, i32 %1998)  ; WaveReadLaneAt(value,lane)
  %2007 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1992, i32 %1998)  ; WaveReadLaneAt(value,lane)
  %2008 = fadd fast float %2006, %1991
  %2009 = fadd fast float %2007, %1992
  %2010 = add i32 %190, 31
  %2011 = and i32 %2010, 16
  %2012 = xor i32 %1997, %2011
  %2013 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2008, i32 %2012)  ; WaveReadLaneAt(value,lane)
  %2014 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2009, i32 %2012)  ; WaveReadLaneAt(value,lane)
  %2015 = fadd fast float %2013, %2008
  %2016 = fadd fast float %2014, %2009
  %2017 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2015, i32 %2004)  ; WaveReadLaneAt(value,lane)
  %2018 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2016, i32 %2004)  ; WaveReadLaneAt(value,lane)
  %2019 = fadd fast float %2017, %2015
  %2020 = fadd fast float %2018, %2016
  br label %2057

; <label>:2021                                    ; preds = %1982
  %2022 = udiv i32 %33, %190
  %2023 = shl i32 %2022, 2
  %2024 = lshr i32 %1993, 1
  %2025 = and i32 %2024, 1
  %2026 = or i32 %2023, %2025
  %2027 = lshr i32 %1993, 2
  %2028 = and i32 %2027, 2
  %2029 = or i32 %2026, %2028
  %2030 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1991, i32 %1998)  ; WaveReadLaneAt(value,lane)
  %2031 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %1992, i32 %1998)  ; WaveReadLaneAt(value,lane)
  %2032 = fadd fast float %2030, %1991
  %2033 = fadd fast float %2031, %1992
  %2034 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2032, i32 %2004)  ; WaveReadLaneAt(value,lane)
  %2035 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2033, i32 %2004)  ; WaveReadLaneAt(value,lane)
  %2036 = fadd fast float %2034, %2032
  %2037 = fadd fast float %2035, %2033
  %2038 = mul i32 %2029, 2
  %2039 = add i32 0, %2038
  %2040 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2039
  store float %2036, float addrspace(3)* %2040, align 4
  %2041 = mul i32 %2029, 2
  %2042 = add i32 1, %2041
  %2043 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2042
  store float %2037, float addrspace(3)* %2043, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2044 = load float, float addrspace(3)* %2040, align 4
  %2045 = load float, float addrspace(3)* %2043, align 4
  %2046 = xor i32 %2029, 4
  %2047 = mul i32 %2046, 2
  %2048 = add i32 0, %2047
  %2049 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2048
  %2050 = load float, float addrspace(3)* %2049, align 4
  %2051 = mul i32 %2046, 2
  %2052 = add i32 1, %2051
  %2053 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2052
  %2054 = load float, float addrspace(3)* %2053, align 4
  %2055 = fadd fast float %2050, %2044
  %2056 = fadd fast float %2054, %2045
  br label %2057

; <label>:2057                                    ; preds = %2021, %2005
  %2058 = phi float [ %2019, %2005 ], [ %2055, %2021 ]
  %2059 = phi float [ %2020, %2005 ], [ %2056, %2021 ]
  %2060 = fmul fast float %2058, 1.250000e-01
  br i1 %1941, label %2061, label %2066, !dx.controlflow.hints !44

; <label>:2061                                    ; preds = %2057
  %2062 = fmul fast float %2059, 1.250000e-01
  %2063 = lshr i32 %56, 1
  %2064 = lshr i32 %57, 1
  %2065 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2063, i32 %2064, i32 %2065, float %2060, float %2062, float %2060, float %2060, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2066

; <label>:2066                                    ; preds = %2061, %2057
  br i1 %67, label %2095, label %2067, !dx.controlflow.hints !45

; <label>:2067                                    ; preds = %2066
  %2068 = fadd fast float %106, 0x3FE3C6EF40000000
  %2069 = call float @dx.op.unary.f32(i32 22, float %2068)  ; Frc(value)
  %2070 = call float @dx.op.unary.f32(i32 23, float %1985)  ; Log(value)
  %2071 = fadd fast float %2070, -7.000000e+00
  %2072 = call float @dx.op.unary.f32(i32 21, float %2071)  ; Exp(value)
  %2073 = fmul fast float %2069, 2.000000e+00
  %2074 = fadd fast float %2073, -1.000000e+00
  %2075 = fmul fast float %2072, %2074
  %2076 = fcmp fast ogt float %1985, 0.000000e+00
  %2077 = select i1 %2076, float %2075, float 0.000000e+00
  %2078 = fadd fast float %2077, %1985
  %2079 = fadd fast float %106, 0x3FF3C6EF40000000
  %2080 = call float @dx.op.unary.f32(i32 22, float %2079)  ; Frc(value)
  %2081 = fmul fast float %2080, 2.000000e+00
  %2082 = fadd fast float %2081, -1.000000e+00
  %2083 = fmul fast float %2072, %2082
  %2084 = select i1 %2076, float %2083, float 0.000000e+00
  %2085 = fadd fast float %2084, %1985
  %2086 = fadd fast float %106, 0x3FFDAA66E0000000
  %2087 = call float @dx.op.unary.f32(i32 22, float %2086)  ; Frc(value)
  %2088 = fadd fast float %2070, -6.000000e+00
  %2089 = call float @dx.op.unary.f32(i32 21, float %2088)  ; Exp(value)
  %2090 = fmul fast float %2087, 2.000000e+00
  %2091 = fadd fast float %2090, -1.000000e+00
  %2092 = fmul fast float %2089, %2091
  %2093 = select i1 %2076, float %2092, float 0.000000e+00
  %2094 = fadd fast float %2093, %1985
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %56, i32 %57, i32 %58, float %2078, float %2085, float %2094, float %2078, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2095

; <label>:2095                                    ; preds = %2067, %2066
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
!39 = !{i32 0, i64 524560, i32 4, !40}
!40 = !{i32 4, i32 4, i32 4}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !{!62, !64, !66, !68, !70}
!62 = distinct !{!62, !63, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!63 = distinct !{!63, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!64 = distinct !{!64, !65, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!65 = distinct !{!65, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!66 = distinct !{!66, !67, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!67 = distinct !{!67, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!68 = distinct !{!68, !69, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!69 = distinct !{!69, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!70 = distinct !{!70, !69, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
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
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}

