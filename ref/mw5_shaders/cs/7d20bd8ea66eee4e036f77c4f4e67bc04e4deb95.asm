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
; shader hash: 8c0fb62ef2df77f17d663774954b555e
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
;                                   sampler      NA          NA      S2             s4     1
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
;                                   texture    byte         r/o     T10            t12     1
;                                   texture     f32          1d     T11            t54     1
;                                   texture     f32          3d     T12             t5     1
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %25 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %26 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %27 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 3
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %34 = mul i32 %33, %31
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %37 = mul i32 %34, %36
  %38 = add i32 %37, %26
  %39 = shl i32 %38, 2
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = and i32 %41, 255
  %43 = lshr i32 %41, 8
  %44 = and i32 %43, 255
  %45 = lshr i32 %41, 16
  %46 = and i32 %45, 255
  %47 = shl nuw nsw i32 %42, 2
  %48 = shl nuw nsw i32 %44, 2
  %49 = shl nuw nsw i32 %46, 2
  %50 = add i32 %47, %23
  %51 = add i32 %48, %24
  %52 = add i32 %49, %25
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.i32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.i32 %53, 2
  %57 = icmp uge i32 %50, %54
  %58 = icmp uge i32 %51, %55
  %59 = icmp uge i32 %52, %56
  %60 = or i1 %57, %58
  %61 = or i1 %59, %60
  %62 = xor i1 %61, true
  %63 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.i32 %63, 3
  %65 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %51, i32 %64)  ; UMad(a,b,c)
  %66 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %50, i32 %65)  ; UMad(a,b,c)
  %67 = mul i32 %66, -63
  %68 = lshr i32 %67, 17
  %69 = xor i32 %68, %67
  %70 = mul i32 %69, -511
  %71 = mul i32 %69, -8176
  %72 = xor i32 %70, %71
  %73 = mul i32 %72, -7
  %74 = mul i32 %72, -7168
  %75 = xor i32 %73, %74
  %76 = lshr i32 %75, 15
  %77 = xor i32 %76, %73
  %78 = and i32 %77, 127
  %79 = mul i32 %78, 3
  %80 = add i32 0, %79
  %81 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %80
  %82 = load float, float* %81, align 4
  %83 = mul i32 %78, 3
  %84 = add i32 1, %83
  %85 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %84
  %86 = load float, float* %85, align 4
  %87 = mul i32 %78, 3
  %88 = add i32 2, %87
  %89 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %88
  %90 = load float, float* %89, align 4
  %91 = uitofp i32 %64 to float
  %92 = fmul fast float %91, 0x3FEA36A940000000
  %93 = fmul fast float %91, 0x3FE5793080000000
  %94 = fmul fast float %91, 0x3FE1972580000000
  %95 = fadd fast float %82, %92
  %96 = fadd fast float %86, %93
  %97 = fadd fast float %90, %94
  %98 = call float @dx.op.unary.f32(i32 22, float %95)  ; Frc(value)
  %99 = call float @dx.op.unary.f32(i32 22, float %96)  ; Frc(value)
  %100 = call float @dx.op.unary.f32(i32 22, float %97)  ; Frc(value)
  %101 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = fcmp fast ogt float %102, -1.000000e+00
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %106 = select i1 %103, float %105, float 1.000000e+00
  %107 = fadd fast float %102, 1.000000e+00
  %108 = fmul fast float %106, %107
  %109 = uitofp i32 %50 to float
  %110 = uitofp i32 %51 to float
  %111 = uitofp i32 %52 to float
  %112 = fadd fast float %109, -5.000000e-01
  %113 = fadd fast float %112, %98
  %114 = fadd fast float %110, -5.000000e-01
  %115 = fadd fast float %114, %99
  %116 = fadd fast float %111, -5.000000e-01
  %117 = fadd fast float %116, %100
  %118 = fadd fast float %113, 5.000000e-01
  %119 = fadd fast float %115, 5.000000e-01
  %120 = fadd fast float %117, 5.000000e-01
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %122, %118
  %126 = fmul fast float %123, %119
  %127 = fmul fast float %124, %120
  %128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.i32 %128, 0
  %130 = uitofp i32 %129 to float
  %131 = fmul fast float %130, %127
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = fmul fast float %131, %134
  %136 = call float @dx.op.unary.f32(i32 21, float %135)  ; Exp(value)
  %137 = fmul fast float %136, %133
  %138 = fsub fast float 4.000000e+00, %133
  %139 = fadd fast float %138, %137
  %140 = call float @dx.op.binary.f32(i32 36, float %139, float %108)  ; FMin(a,b)
  %141 = fmul fast float %125, 2.000000e+00
  %142 = fmul fast float %126, 2.000000e+00
  %143 = fsub fast float 1.000000e+00, %141
  %144 = fsub fast float 1.000000e+00, %142
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fmul fast float %146, %143
  %150 = fmul fast float %147, %143
  %151 = fmul fast float %148, %143
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = fmul fast float %153, %144
  %157 = fmul fast float %154, %144
  %158 = fmul fast float %155, %144
  %159 = fadd fast float %156, %149
  %160 = fadd fast float %157, %150
  %161 = fadd fast float %158, %151
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = fadd fast float %159, %163
  %167 = fadd fast float %160, %164
  %168 = fadd fast float %161, %165
  %169 = fmul fast float %166, %140
  %170 = fmul fast float %167, %140
  %171 = fmul fast float %168, %140
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = fadd fast float %169, %173
  %177 = fadd fast float %170, %174
  %178 = fadd fast float %171, %175
  %179 = call float @dx.op.dot3.f32(i32 55, float %169, float %170, float %171, float %169, float %170, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %180 = call float @dx.op.unary.f32(i32 25, float %179)  ; Rsqrt(value)
  %181 = fmul fast float %169, %180
  %182 = fmul fast float %170, %180
  %183 = fmul fast float %171, %180
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = fcmp fast ogt float %185, 0.000000e+00
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %191 = fsub fast float %176, %188
  %192 = fadd fast float %191, %190
  %193 = fsub fast float %177, %189
  %194 = fadd fast float %193, %190
  %195 = extractvalue %dx.types.CBufRet.f32 %187, 3
  %196 = fmul fast float %192, %195
  %197 = fmul fast float %194, %195
  %198 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %199 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %200 = fsub fast float 1.000000e+00, %198
  %201 = fsub fast float 1.000000e+00, %199
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %200, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = fmul fast float %205, %203
  %207 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %208 = fadd fast float %207, %206
  %209 = fcmp fast ogt float %203, 0.000000e+00
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 32768
  %213 = icmp ne i32 %212, 0
  %214 = and i1 %209, %213
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 3
  %217 = fadd fast float %216, %208
  %218 = fcmp fast ole float %178, %217
  %219 = and i1 %214, %218
  %220 = select i1 %186, i32 %129, i32 0
  %221 = add i32 %220, %52
  %222 = xor i1 %186, %219
  %223 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %224 = fmul fast float %223, 0x3FE62E4300000000
  %225 = fmul fast float %224, %224
  %226 = select i1 %61, float 0.000000e+00, float 1.000000e+00
  %227 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %27
  store float %226, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  %228 = fmul fast float %224, %226
  %229 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %27
  store float %228, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  %230 = fmul fast float %225, %226
  %231 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %27
  store float %230, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %232 = xor i32 %27, 4
  %233 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %232
  %234 = load float, float addrspace(3)* %233, align 4, !tbaa !35, !noalias !39
  %235 = fadd fast float %234, %226
  %236 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %232
  %237 = load float, float addrspace(3)* %236, align 4, !tbaa !35, !noalias !39
  %238 = fadd fast float %237, %224
  %239 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %232
  %240 = load float, float addrspace(3)* %239, align 4, !tbaa !35, !noalias !39
  %241 = fadd fast float %240, %225
  store float %235, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  store float %238, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  store float %241, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %242 = xor i32 %27, 16
  %243 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %242
  %244 = load float, float addrspace(3)* %243, align 4, !tbaa !35, !noalias !39
  %245 = fadd fast float %244, %235
  %246 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %242
  %247 = load float, float addrspace(3)* %246, align 4, !tbaa !35, !noalias !39
  %248 = fadd fast float %247, %238
  %249 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %242
  %250 = load float, float addrspace(3)* %249, align 4, !tbaa !35, !noalias !39
  %251 = fadd fast float %250, %241
  store float %245, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  store float %248, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  store float %251, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %252 = xor i32 %27, 1
  %253 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %252
  %254 = load float, float addrspace(3)* %253, align 4, !tbaa !35, !noalias !39
  %255 = fadd fast float %254, %245
  %256 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %252
  %257 = load float, float addrspace(3)* %256, align 4, !tbaa !35, !noalias !39
  %258 = fadd fast float %257, %248
  %259 = fdiv fast float %258, %255
  %260 = and i32 %50, 1
  %261 = and i32 %260, %51
  %262 = and i32 %261, %221
  %263 = icmp ne i32 %262, 0
  %264 = and i1 %263, %62
  br i1 %264, label %265, label %273, !dx.controlflow.hints !43

; <label>:265                                     ; preds = %0
  %266 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %252
  %267 = load float, float addrspace(3)* %266, align 4, !tbaa !35, !noalias !39
  %268 = fadd fast float %267, %251
  %269 = fdiv fast float %268, %255
  %270 = lshr i32 %50, 1
  %271 = lshr i32 %51, 1
  %272 = lshr i32 %221, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %270, i32 %271, i32 %272, float %259, float %269, float %259, float %259, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %273

; <label>:273                                     ; preds = %265, %0
  br i1 %61, label %275, label %274, !dx.controlflow.hints !44

; <label>:274                                     ; preds = %273
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %50, i32 %51, i32 %221, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %275

; <label>:275                                     ; preds = %274, %273
  store float %226, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  store float 0.000000e+00, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  store float 0.000000e+00, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %276 = load float, float addrspace(3)* %233, align 4, !tbaa !35, !noalias !39
  %277 = fadd fast float %276, %226
  %278 = load float, float addrspace(3)* %236, align 4, !tbaa !35, !noalias !39
  %279 = load float, float addrspace(3)* %239, align 4, !tbaa !35, !noalias !39
  store float %277, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  store float %278, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  store float %279, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %280 = load float, float addrspace(3)* %243, align 4, !tbaa !35, !noalias !39
  %281 = fadd fast float %280, %277
  %282 = load float, float addrspace(3)* %246, align 4, !tbaa !35, !noalias !39
  %283 = fadd fast float %282, %278
  %284 = load float, float addrspace(3)* %249, align 4, !tbaa !35, !noalias !39
  %285 = fadd fast float %284, %279
  store float %281, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  store float %283, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  store float %285, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %286 = load float, float addrspace(3)* %253, align 4, !tbaa !35, !noalias !39
  %287 = fadd fast float %286, %281
  %288 = load float, float addrspace(3)* %256, align 4, !tbaa !35, !noalias !39
  %289 = fadd fast float %288, %283
  %290 = fdiv fast float %289, %287
  br i1 %264, label %291, label %299, !dx.controlflow.hints !45

; <label>:291                                     ; preds = %275
  %292 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %252
  %293 = load float, float addrspace(3)* %292, align 4, !tbaa !35, !noalias !39
  %294 = fadd fast float %293, %285
  %295 = fdiv fast float %294, %287
  %296 = lshr i32 %50, 1
  %297 = lshr i32 %51, 1
  %298 = lshr i32 %221, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %296, i32 %297, i32 %298, float %290, float %295, float %290, float %290, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %299

; <label>:299                                     ; preds = %291, %275
  br i1 %61, label %301, label %300, !dx.controlflow.hints !46

; <label>:300                                     ; preds = %299
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %50, i32 %51, i32 %221, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %301

; <label>:301                                     ; preds = %300, %299
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = fsub fast float %178, %303
  %306 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %305)  ; FMax(a,b)
  %307 = fmul fast float %306, 0x3FF7154760000000
  %308 = fmul fast float %307, %304
  %309 = call float @dx.op.unary.f32(i32 21, float %308)  ; Exp(value)
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %316 = fmul fast float %315, %309
  %317 = fmul fast float %316, %311
  %318 = fmul fast float %316, %312
  %319 = fmul fast float %316, %313
  %320 = select i1 %219, float 0.000000e+00, float %316
  %321 = fcmp fast ogt float %320, 0.000000e+00
  br i1 %321, label %322, label %1504, !dx.controlflow.hints !47

; <label>:322                                     ; preds = %301
  %323 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %324 = fmul fast float %323, %316
  %325 = fdiv fast float 1.000000e+00, %320
  %326 = fmul fast float %325, %317
  %327 = fmul fast float %325, %318
  %328 = fmul fast float %325, %319
  %329 = fmul fast float %324, %325
  %330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.i32 %330, 2
  %332 = extractvalue %dx.types.CBufRet.i32 %330, 3
  %333 = call i32 @dx.op.tertiary.i32(i32 49, i32 %44, i32 %331, i32 %42)  ; UMad(a,b,c)
  %334 = call i32 @dx.op.tertiary.i32(i32 49, i32 %46, i32 %332, i32 %333)  ; UMad(a,b,c)
  %335 = fadd fast float %109, 1.000000e+00
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = fmul fast float %341, %117
  %343 = call float @dx.op.unary.f32(i32 21, float %342)  ; Exp(value)
  %344 = fmul fast float %343, %340
  %345 = fsub fast float 4.000000e+00, %340
  %346 = fadd fast float %345, %344
  %347 = fmul fast float %335, 2.000000e+00
  %348 = fmul fast float %347, %337
  %349 = fmul fast float %110, 2.000000e+00
  %350 = fmul fast float %349, %338
  %351 = fsub fast float 1.000000e+00, %348
  %352 = fsub fast float 1.000000e+00, %350
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = fmul fast float %354, %351
  %358 = fmul fast float %355, %351
  %359 = fmul fast float %356, %351
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fmul fast float %361, %352
  %365 = fmul fast float %362, %352
  %366 = fmul fast float %363, %352
  %367 = fadd fast float %364, %357
  %368 = fadd fast float %365, %358
  %369 = fadd fast float %366, %359
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %374 = fadd fast float %367, %371
  %375 = fadd fast float %368, %372
  %376 = fadd fast float %369, %373
  %377 = fadd fast float %110, 1.000000e+00
  %378 = fmul fast float %109, 2.000000e+00
  %379 = fmul fast float %378, %337
  %380 = fmul fast float %377, 2.000000e+00
  %381 = fmul fast float %380, %338
  %382 = fsub fast float 1.000000e+00, %379
  %383 = fsub fast float 1.000000e+00, %381
  %384 = fmul fast float %354, %382
  %385 = fmul fast float %355, %382
  %386 = fmul fast float %356, %382
  %387 = fmul fast float %361, %383
  %388 = fmul fast float %362, %383
  %389 = fmul fast float %363, %383
  %390 = fadd fast float %387, %384
  %391 = fadd fast float %388, %385
  %392 = fadd fast float %389, %386
  %393 = fadd fast float %390, %371
  %394 = fadd fast float %391, %372
  %395 = fadd fast float %392, %373
  %396 = fmul fast float %393, %346
  %397 = fmul fast float %394, %346
  %398 = fmul fast float %395, %346
  %399 = fadd fast float %393, %374
  %400 = fmul fast float %346, %399
  %401 = fadd fast float %394, %375
  %402 = fmul fast float %346, %401
  %403 = fadd fast float %395, %376
  %404 = fmul fast float %346, %403
  %405 = fmul fast float %400, 5.000000e-01
  %406 = fmul fast float %402, 5.000000e-01
  %407 = fmul fast float %404, 5.000000e-01
  %408 = fsub fast float %405, %396
  %409 = fsub fast float %406, %397
  %410 = fsub fast float %407, %398
  %411 = call float @dx.op.dot3.f32(i32 55, float %408, float %409, float %410, float %408, float %409, float %410)  ; Dot3(ax,ay,az,bx,by,bz)
  %412 = call float @dx.op.unary.f32(i32 25, float %411)  ; Rsqrt(value)
  %413 = fmul fast float %412, %411
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %416 = extractvalue %dx.types.CBufRet.f32 %414, 1
  %417 = extractvalue %dx.types.CBufRet.f32 %414, 2
  %418 = fsub fast float %176, %415
  %419 = fsub fast float %177, %416
  %420 = fsub fast float %178, %417
  %421 = fmul fast float %341, %111
  %422 = call float @dx.op.unary.f32(i32 21, float %421)  ; Exp(value)
  %423 = fmul fast float %422, %340
  %424 = fadd fast float %345, %423
  %425 = fmul fast float %118, 2.000000e+00
  %426 = fmul fast float %425, %337
  %427 = fmul fast float %119, 2.000000e+00
  %428 = fmul fast float %427, %338
  %429 = fsub fast float 1.000000e+00, %426
  %430 = fsub fast float 1.000000e+00, %428
  %431 = fmul fast float %354, %429
  %432 = fmul fast float %355, %429
  %433 = fmul fast float %356, %429
  %434 = fmul fast float %361, %430
  %435 = fmul fast float %362, %430
  %436 = fmul fast float %363, %430
  %437 = fadd fast float %434, %431
  %438 = fadd fast float %435, %432
  %439 = fadd fast float %436, %433
  %440 = fadd fast float %437, %371
  %441 = fadd fast float %438, %372
  %442 = fadd fast float %439, %373
  %443 = fmul fast float %440, %424
  %444 = fmul fast float %441, %424
  %445 = fmul fast float %442, %424
  %446 = fadd fast float %111, 1.000000e+00
  %447 = fmul fast float %341, %446
  %448 = call float @dx.op.unary.f32(i32 21, float %447)  ; Exp(value)
  %449 = fsub fast float %448, %422
  %450 = fmul fast float %340, %449
  %451 = fmul fast float %440, %450
  %452 = fsub fast float %448, %422
  %453 = fmul fast float %340, %452
  %454 = fmul fast float %441, %453
  %455 = fsub fast float %448, %422
  %456 = fmul fast float %340, %455
  %457 = fmul fast float %442, %456
  %458 = call float @dx.op.dot3.f32(i32 55, float %451, float %454, float %457, float %451, float %454, float %457)  ; Dot3(ax,ay,az,bx,by,bz)
  %459 = call float @dx.op.unary.f32(i32 25, float %458)  ; Rsqrt(value)
  %460 = fmul fast float %459, %458
  %461 = fmul fast float %451, %459
  %462 = fmul fast float %454, %459
  %463 = fmul fast float %457, %459
  %464 = fsub fast float %208, %417
  %465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.i32 %465, 0
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %1475, label %468, !dx.controlflow.hints !48

; <label>:468                                     ; preds = %322
  %469 = add nsw i32 %466, -1
  %470 = call i32 @dx.op.binary.i32(i32 37, i32 %469, i32 0)  ; IMax(a,b)
  br label %471

; <label>:471                                     ; preds = %1468, %468
  %472 = phi i32 [ 0, %468 ], [ %1472, %1468 ]
  %473 = phi float [ 0.000000e+00, %468 ], [ %1469, %1468 ]
  %474 = phi float [ 0.000000e+00, %468 ], [ %1470, %1468 ]
  %475 = phi float [ 0.000000e+00, %468 ], [ %1471, %1468 ]
  %476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.i32 %476, 0
  %478 = call i32 @dx.op.tertiary.i32(i32 49, i32 %334, i32 %477, i32 %472)  ; UMad(a,b,c)
  %479 = shl i32 %478, 2
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %1468, label %483

; <label>:483                                     ; preds = %471
  br label %484

; <label>:484                                     ; preds = %923, %483
  %485 = phi i32 [ %494, %923 ], [ %481, %483 ]
  %486 = phi float [ %924, %923 ], [ %473, %483 ]
  %487 = phi float [ %925, %923 ], [ %474, %483 ]
  %488 = phi float [ %926, %923 ], [ %475, %483 ]
  %489 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %485)  ; FirstbitLo(value)
  %490 = shl i32 %472, 5
  %491 = add i32 %489, %490
  %492 = and i32 %489, 31
  %493 = shl i32 1, %492
  %494 = xor i32 %493, %485
  %495 = mul i32 %491, 112
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = or i32 %495, 12
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = add i32 %495, 16
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = add i32 %495, 28
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = add i32 %495, 32
  %512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  %514 = extractvalue %dx.types.ResRet.f32 %512, 1
  %515 = extractvalue %dx.types.ResRet.f32 %512, 2
  %516 = add i32 %495, 44
  %517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = add i32 %495, 48
  %520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = extractvalue %dx.types.ResRet.f32 %520, 2
  %524 = extractvalue %dx.types.ResRet.f32 %520, 3
  %525 = add i32 %495, 64
  %526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = extractvalue %dx.types.ResRet.f32 %526, 3
  %531 = add i32 %495, 92
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 65535
  %535 = uitofp i32 %534 to float
  %536 = lshr i32 %533, 16
  %537 = uitofp i32 %536 to float
  %538 = and i32 %510, 65535
  %539 = and i32 %510, 50331648
  %540 = icmp eq i32 %539, 33554432
  %541 = fdiv fast float 1.000000e+00, %460
  br i1 %540, label %542, label %734, !dx.controlflow.hints !49

; <label>:542                                     ; preds = %484
  %543 = fsub fast float %521, %513
  %544 = fsub fast float %522, %514
  %545 = fsub fast float %523, %515
  %546 = fmul fast float %461, %460
  %547 = fmul fast float %462, %460
  %548 = fmul fast float %463, %460
  %549 = fadd fast float %546, %443
  %550 = fadd fast float %547, %444
  %551 = fadd fast float %548, %445
  %552 = fmul fast float %513, 2.000000e+00
  %553 = fmul fast float %514, 2.000000e+00
  %554 = fmul fast float %515, 2.000000e+00
  %555 = call float @dx.op.dot3.f32(i32 55, float %552, float %553, float %554, float %552, float %553, float %554)  ; Dot3(ax,ay,az,bx,by,bz)
  %556 = fdiv fast float %552, %555
  %557 = fdiv fast float %553, %555
  %558 = fdiv fast float %554, %555
  %559 = fsub fast float %443, %543
  %560 = fsub fast float %444, %544
  %561 = fsub fast float %445, %545
  %562 = call float @dx.op.dot3.f32(i32 55, float %559, float %560, float %561, float %552, float %553, float %554)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = fmul fast float %562, %556
  %564 = fmul fast float %562, %557
  %565 = fmul fast float %562, %558
  %566 = fsub fast float %443, %563
  %567 = fsub fast float %444, %564
  %568 = fsub fast float %445, %565
  %569 = fsub fast float %549, %543
  %570 = fsub fast float %550, %544
  %571 = fsub fast float %551, %545
  %572 = call float @dx.op.dot3.f32(i32 55, float %569, float %570, float %571, float %552, float %553, float %554)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = fmul fast float %572, %556
  %574 = fmul fast float %572, %557
  %575 = fmul fast float %572, %558
  %576 = fsub fast float %549, %573
  %577 = fsub fast float %550, %574
  %578 = fsub fast float %551, %575
  %579 = fsub fast float %576, %566
  %580 = fsub fast float %577, %567
  %581 = fsub fast float %578, %568
  %582 = fsub fast float %543, %566
  %583 = fsub fast float %544, %567
  %584 = fsub fast float %545, %568
  %585 = call float @dx.op.dot3.f32(i32 55, float %582, float %583, float %584, float %579, float %580, float %581)  ; Dot3(ax,ay,az,bx,by,bz)
  %586 = call float @dx.op.dot3.f32(i32 55, float %579, float %580, float %581, float %579, float %580, float %581)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = fdiv fast float %585, %586
  %588 = fcmp fast une float %566, %576
  %589 = fcmp fast une float %567, %577
  %590 = fcmp fast une float %568, %578
  %591 = or i1 %588, %589
  %592 = or i1 %590, %591
  %593 = select i1 %592, float %587, float 0.000000e+00
  %594 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  %595 = fmul fast float %594, %546
  %596 = fmul fast float %594, %547
  %597 = fmul fast float %594, %548
  %598 = fadd fast float %559, %595
  %599 = fadd fast float %560, %596
  %600 = fadd fast float %561, %597
  %601 = call float @dx.op.dot3.f32(i32 55, float %598, float %599, float %600, float %552, float %553, float %554)  ; Dot3(ax,ay,az,bx,by,bz)
  %602 = fdiv fast float %601, %555
  %603 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  %604 = fmul fast float %552, %603
  %605 = fmul fast float %553, %603
  %606 = fmul fast float %554, %603
  %607 = fadd fast float %604, %543
  %608 = fadd fast float %605, %544
  %609 = fadd fast float %606, %545
  %610 = fmul fast float %529, %505
  %611 = fmul fast float %529, %506
  %612 = fmul fast float %529, %507
  %613 = fadd fast float %607, %610
  %614 = fadd fast float %608, %611
  %615 = fadd fast float %609, %612
  %616 = fsub fast float -0.000000e+00, %528
  %617 = fdiv fast float %616, %527
  %618 = fmul fast float %617, %617
  %619 = call float @dx.op.dot3.f32(i32 55, float %461, float %462, float %463, float %505, float %506, float %507)  ; Dot3(ax,ay,az,bx,by,bz)
  %620 = fsub fast float %443, %613
  %621 = fsub fast float %444, %614
  %622 = fsub fast float %445, %615
  %623 = call float @dx.op.dot3.f32(i32 55, float %620, float %621, float %622, float %505, float %506, float %507)  ; Dot3(ax,ay,az,bx,by,bz)
  %624 = fsub fast float %613, %443
  %625 = fsub fast float %614, %444
  %626 = fsub fast float %615, %445
  %627 = fmul fast float %619, %619
  %628 = fsub fast float %627, %618
  %629 = fmul fast float %623, %619
  %630 = call float @dx.op.dot3.f32(i32 55, float %624, float %625, float %626, float %461, float %462, float %463)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = fmul fast float %630, %618
  %632 = fadd fast float %631, %629
  %633 = fmul fast float %632, 2.000000e+00
  %634 = fmul fast float %623, %623
  %635 = call float @dx.op.dot3.f32(i32 55, float %624, float %625, float %626, float %624, float %625, float %626)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = fmul fast float %635, %618
  %637 = fsub fast float %634, %636
  %638 = fmul fast float %633, %633
  %639 = fmul fast float %628, 4.000000e+00
  %640 = fmul fast float %639, %637
  %641 = fsub fast float %638, %640
  %642 = fcmp fast ogt float %641, 0.000000e+00
  br i1 %642, label %643, label %734, !dx.controlflow.hints !50

; <label>:643                                     ; preds = %542
  %644 = call float @dx.op.unary.f32(i32 24, float %641)  ; Sqrt(value)
  %645 = fdiv fast float 5.000000e-01, %628
  %646 = fsub fast float -0.000000e+00, %633
  %647 = fsub fast float %646, %644
  %648 = fmul fast float %647, %645
  %649 = fsub fast float %644, %633
  %650 = fmul fast float %649, %645
  %651 = call float @dx.op.binary.f32(i32 35, float %648, float %650)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float %648, float %650)  ; FMin(a,b)
  %653 = fsub fast float %607, %443
  %654 = fsub fast float %608, %444
  %655 = fsub fast float %609, %445
  %656 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float %655, float %505, float %506, float %507)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = fdiv fast float %656, %619
  %658 = fcmp fast ogt float %619, 0.000000e+00
  br i1 %658, label %659, label %662, !dx.controlflow.hints !51

; <label>:659                                     ; preds = %643
  %660 = call float @dx.op.binary.f32(i32 36, float %652, float %657)  ; FMin(a,b)
  %661 = call float @dx.op.binary.f32(i32 36, float %651, float %657)  ; FMin(a,b)
  br label %665

; <label>:662                                     ; preds = %643
  %663 = call float @dx.op.binary.f32(i32 35, float %652, float %657)  ; FMax(a,b)
  %664 = call float @dx.op.binary.f32(i32 35, float %651, float %657)  ; FMax(a,b)
  br label %665

; <label>:665                                     ; preds = %662, %659
  %666 = phi float [ %660, %659 ], [ %663, %662 ]
  %667 = phi float [ %661, %659 ], [ %664, %662 ]
  %668 = fcmp fast oge float %666, 0.000000e+00
  %669 = fcmp fast olt float %666, %460
  %670 = and i1 %668, %669
  %671 = fcmp fast ogt float %667, 0.000000e+00
  %672 = fcmp fast ole float %667, %460
  %673 = and i1 %671, %672
  %674 = or i1 %670, %673
  br i1 %674, label %675, label %734, !dx.controlflow.hints !52

; <label>:675                                     ; preds = %665
  %676 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %666)  ; FMax(a,b)
  %677 = call float @dx.op.binary.f32(i32 36, float %460, float %667)  ; FMin(a,b)
  br i1 %658, label %678, label %700, !dx.controlflow.hints !53

; <label>:678                                     ; preds = %675
  %679 = fmul fast float %677, %461
  %680 = fmul fast float %677, %462
  %681 = fmul fast float %677, %463
  %682 = fsub fast float %624, %679
  %683 = fsub fast float %625, %680
  %684 = fsub fast float %626, %681
  %685 = call float @dx.op.dot3.f32(i32 55, float %682, float %683, float %684, float %682, float %683, float %684)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = call float @dx.op.unary.f32(i32 25, float %685)  ; Rsqrt(value)
  %687 = fmul fast float %686, %682
  %688 = fmul fast float %686, %683
  %689 = fmul fast float %686, %684
  %690 = call float @dx.op.dot3.f32(i32 55, float %687, float %688, float %689, float %505, float %506, float %507)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = fmul fast float %690, %527
  %692 = fadd fast float %691, %528
  %693 = fcmp fast olt float %692, 0xBF1A36E2E0000000
  %694 = select i1 %693, float 0.000000e+00, float %676
  %695 = select i1 %693, float %676, float %677
  %696 = fsub fast float %694, %695
  %697 = call float @dx.op.unary.f32(i32 6, float %696)  ; FAbs(value)
  %698 = fcmp fast olt float %697, 0x3F1A36E2E0000000
  br i1 %698, label %699, label %722, !dx.controlflow.hints !54

; <label>:699                                     ; preds = %678
  br label %722

; <label>:700                                     ; preds = %675
  %701 = fmul fast float %676, %461
  %702 = fmul fast float %676, %462
  %703 = fmul fast float %676, %463
  %704 = fsub fast float %624, %701
  %705 = fsub fast float %625, %702
  %706 = fsub fast float %626, %703
  %707 = call float @dx.op.dot3.f32(i32 55, float %704, float %705, float %706, float %704, float %705, float %706)  ; Dot3(ax,ay,az,bx,by,bz)
  %708 = call float @dx.op.unary.f32(i32 25, float %707)  ; Rsqrt(value)
  %709 = fmul fast float %708, %704
  %710 = fmul fast float %708, %705
  %711 = fmul fast float %708, %706
  %712 = call float @dx.op.dot3.f32(i32 55, float %709, float %710, float %711, float %505, float %506, float %507)  ; Dot3(ax,ay,az,bx,by,bz)
  %713 = fmul fast float %712, %527
  %714 = fadd fast float %713, %528
  %715 = fcmp fast olt float %714, 0xBF1A36E2E0000000
  %716 = select i1 %715, float %677, float %676
  %717 = select i1 %715, float %460, float %677
  %718 = fsub fast float %716, %717
  %719 = call float @dx.op.unary.f32(i32 6, float %718)  ; FAbs(value)
  %720 = fcmp fast olt float %719, 0x3F1A36E2E0000000
  br i1 %720, label %721, label %722, !dx.controlflow.hints !55

; <label>:721                                     ; preds = %700
  br label %722

; <label>:722                                     ; preds = %721, %700, %699, %678
  %723 = phi float [ 0.000000e+00, %699 ], [ %694, %678 ], [ %716, %721 ], [ %716, %700 ]
  %724 = phi float [ %695, %699 ], [ %695, %678 ], [ %460, %721 ], [ %717, %700 ]
  %725 = fmul fast float %723, %461
  %726 = fmul fast float %723, %462
  %727 = fmul fast float %723, %463
  %728 = fadd fast float %725, %443
  %729 = fadd fast float %726, %444
  %730 = fadd fast float %727, %445
  %731 = fsub fast float %724, %723
  %732 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %731)  ; FMax(a,b)
  %733 = fmul fast float %732, %541
  br label %734

; <label>:734                                     ; preds = %722, %665, %542, %484
  %735 = phi float [ %613, %722 ], [ %613, %665 ], [ %613, %542 ], [ %521, %484 ]
  %736 = phi float [ %614, %722 ], [ %614, %665 ], [ %614, %542 ], [ %522, %484 ]
  %737 = phi float [ %615, %722 ], [ %615, %665 ], [ %615, %542 ], [ %523, %484 ]
  %738 = phi float [ %728, %722 ], [ %443, %665 ], [ %443, %542 ], [ %443, %484 ]
  %739 = phi float [ %729, %722 ], [ %444, %665 ], [ %444, %542 ], [ %444, %484 ]
  %740 = phi float [ %730, %722 ], [ %445, %665 ], [ %445, %542 ], [ %445, %484 ]
  %741 = phi float [ %732, %722 ], [ %460, %665 ], [ %460, %542 ], [ %460, %484 ]
  %742 = phi float [ %733, %722 ], [ 1.000000e+00, %665 ], [ 1.000000e+00, %542 ], [ 1.000000e+00, %484 ]
  %743 = fsub fast float %735, %738
  %744 = fsub fast float %736, %739
  %745 = fsub fast float %737, %740
  %746 = call float @dx.op.dot3.f32(i32 55, float %743, float %744, float %745, float %461, float %462, float %463)  ; Dot3(ax,ay,az,bx,by,bz)
  %747 = call float @dx.op.binary.f32(i32 35, float %746, float 0.000000e+00)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 36, float %747, float %741)  ; FMin(a,b)
  %749 = fmul fast float %748, %461
  %750 = fmul fast float %748, %462
  %751 = fmul fast float %748, %463
  %752 = fsub fast float %738, %735
  %753 = fadd fast float %752, %749
  %754 = fsub fast float %739, %736
  %755 = fadd fast float %754, %750
  %756 = fsub fast float %740, %737
  %757 = fadd fast float %756, %751
  %758 = fmul fast float %753, %753
  %759 = fmul fast float %755, %755
  %760 = fadd fast float %758, %759
  %761 = fmul fast float %757, %757
  %762 = fadd fast float %760, %761
  %763 = call float @dx.op.unary.f32(i32 24, float %762)  ; Sqrt(value)
  %764 = fsub fast float -0.000000e+00, %748
  %765 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %766 = fadd fast float %765, 0x3DDB7CDFE0000000
  %767 = fcmp fast oge float %763, 0.000000e+00
  %768 = fsub fast float -0.000000e+00, %766
  %769 = select i1 %767, float %768, float %766
  %770 = fadd fast float %769, %763
  %771 = fsub fast float -0.000000e+00, %763
  %772 = select i1 %767, float %763, float %771
  %773 = fadd fast float %766, %772
  %774 = fdiv fast float %770, %773
  %775 = select i1 %767, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %776 = fmul fast float %774, %774
  %777 = fmul fast float %776, 0x3FC9205BC0000000
  %778 = fadd fast float %777, 0xBFEF6A1620000000
  %779 = fmul fast float %778, %774
  %780 = fadd fast float %779, %775
  %781 = fcmp ole float %748, -0.000000e+00
  %782 = fsub fast float -0.000000e+00, %780
  %783 = select i1 %781, float %780, float %782
  %784 = fsub fast float %741, %748
  %785 = call float @dx.op.unary.f32(i32 6, float %784)  ; FAbs(value)
  %786 = fadd fast float %785, 0x3DDB7CDFE0000000
  %787 = fsub fast float -0.000000e+00, %786
  %788 = select i1 %767, float %787, float %786
  %789 = fadd fast float %788, %763
  %790 = fadd fast float %786, %772
  %791 = fdiv fast float %789, %790
  %792 = fmul fast float %791, %791
  %793 = fmul fast float %792, 0x3FC9205BC0000000
  %794 = fadd fast float %793, 0xBFEF6A1620000000
  %795 = fmul fast float %794, %791
  %796 = fadd fast float %795, %775
  %797 = fcmp fast oge float %784, 0.000000e+00
  %798 = fsub fast float -0.000000e+00, %796
  %799 = select i1 %797, float %796, float %798
  %800 = fsub fast float %799, %783
  %801 = fmul fast float %800, %100
  %802 = fadd fast float %801, %783
  %803 = call float @dx.op.unary.f32(i32 14, float %802)  ; Tan(value)
  %804 = fmul fast float %803, %763
  %805 = fadd fast float %804, %748
  %806 = fmul fast float %763, %763
  %807 = fmul fast float %804, %804
  %808 = fadd fast float %807, %806
  %809 = fmul fast float %800, %808
  %810 = fdiv fast float %763, %809
  %811 = fdiv fast float 1.000000e+00, %810
  %812 = fmul fast float %742, %541
  %813 = fmul fast float %812, %811
  %814 = fmul fast float %805, %461
  %815 = fmul fast float %805, %462
  %816 = fmul fast float %805, %463
  %817 = fadd fast float %814, %738
  %818 = fadd fast float %815, %739
  %819 = fadd fast float %816, %740
  %820 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %513, float %514, float %515)  ; Dot3(ax,ay,az,bx,by,bz)
  %821 = fsub fast float %817, %521
  %822 = fsub fast float %818, %522
  %823 = fsub fast float %819, %523
  %824 = call float @dx.op.dot3.f32(i32 55, float %821, float %822, float %823, float %513, float %514, float %515)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = fdiv fast float %824, %820
  %826 = call float @dx.op.binary.f32(i32 35, float %825, float -1.000000e+00)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 36, float %826, float 1.000000e+00)  ; FMin(a,b)
  %828 = fmul fast float %827, %513
  %829 = fmul fast float %827, %514
  %830 = fmul fast float %827, %515
  %831 = fadd fast float %828, %521
  %832 = fadd fast float %829, %522
  %833 = fadd fast float %830, %523
  %834 = fsub fast float %831, %817
  %835 = fsub fast float %832, %818
  %836 = fsub fast float %833, %819
  %837 = call float @dx.op.dot3.f32(i32 55, float %834, float %835, float %836, float %834, float %835, float %836)  ; Dot3(ax,ay,az,bx,by,bz)
  %838 = call float @dx.op.unary.f32(i32 24, float %837)  ; Sqrt(value)
  %839 = fdiv fast float 1.000000e+00, %838
  %840 = fmul fast float %834, %839
  %841 = fmul fast float %835, %839
  %842 = fmul fast float %836, %839
  %843 = fadd fast float %838, %502
  %844 = fdiv fast float 1.000000e+00, %843
  %845 = fmul float %518, %844
  %846 = fmul float %845, %845
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  br i1 %540, label %848, label %872, !dx.controlflow.hints !56

; <label>:848                                     ; preds = %734
  %849 = fmul fast float %529, %505
  %850 = fmul fast float %529, %506
  %851 = fmul fast float %529, %507
  %852 = fsub fast float %849, %817
  %853 = fadd fast float %852, %831
  %854 = fsub fast float %850, %818
  %855 = fadd fast float %854, %832
  %856 = fsub fast float %851, %819
  %857 = fadd fast float %856, %833
  %858 = call float @dx.op.dot3.f32(i32 55, float %853, float %855, float %857, float %853, float %855, float %857)  ; Dot3(ax,ay,az,bx,by,bz)
  %859 = call float @dx.op.unary.f32(i32 25, float %858)  ; Rsqrt(value)
  %860 = fmul fast float %859, %853
  %861 = fmul fast float %859, %855
  %862 = fmul fast float %859, %857
  %863 = fsub fast float %817, %831
  %864 = fsub fast float %818, %832
  %865 = fsub fast float %819, %833
  %866 = fsub fast float -0.000000e+00, %863
  %867 = fsub fast float -0.000000e+00, %864
  %868 = fsub fast float -0.000000e+00, %865
  %869 = call float @dx.op.dot3.f32(i32 55, float %866, float %867, float %868, float %505, float %506, float %507)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = fcmp fast ogt float %869, 0.000000e+00
  %871 = uitofp i1 %870 to float
  br label %872

; <label>:872                                     ; preds = %848, %734
  %873 = phi float [ %871, %848 ], [ 1.000000e+00, %734 ]
  %874 = phi float [ %860, %848 ], [ %840, %734 ]
  %875 = phi float [ %861, %848 ], [ %841, %734 ]
  %876 = phi float [ %862, %848 ], [ %842, %734 ]
  %877 = call float @dx.op.dot3.f32(i32 55, float %505, float %506, float %507, float %874, float %875, float %876)  ; Dot3(ax,ay,az,bx,by,bz)
  %878 = fmul fast float %877, %877
  %879 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %880 = fsub fast float 1.000000e+00, %879
  %881 = fmul fast float %880, 5.000000e-01
  %882 = fcmp fast ogt float %877, 0.000000e+00
  %883 = fsub fast float 1.000000e+00, %881
  %884 = select i1 %882, float %881, float %883
  %885 = fmul fast float %884, %537
  %886 = fadd fast float %885, %535
  %887 = fmul fast float %886, 0x3EF0001000000000
  %888 = fsub fast float %831, %405
  %889 = fsub fast float %832, %406
  %890 = fsub fast float %833, %407
  %891 = call float @dx.op.dot3.f32(i32 55, float %888, float %889, float %890, float %888, float %889, float %890)  ; Dot3(ax,ay,az,bx,by,bz)
  %892 = fmul fast float %413, %413
  %893 = fsub fast float %891, %892
  %894 = fdiv fast float %893, %891
  %895 = call float @dx.op.unary.f32(i32 24, float %894)  ; Sqrt(value)
  %896 = fsub fast float 1.000000e+00, %895
  %897 = fcmp fast olt float %891, %892
  %898 = fmul fast float %896, 2.560000e+02
  %899 = select i1 %897, float 2.560000e+02, float %898
  %900 = call float @dx.op.unary.f32(i32 23, float %899)  ; Log(value)
  %901 = call float @dx.op.binary.f32(i32 36, float %900, float 7.000000e+00)  ; FMin(a,b)
  %902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %887, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %901)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = fmul fast float %877, %527
  %905 = fadd fast float %904, %528
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = select i1 %540, float 1.000000e+00, float %906
  %908 = select i1 %540, float %906, float 1.000000e+00
  %909 = fmul fast float %838, %524
  %910 = fsub fast float 1.000000e+00, %909
  %911 = fmul fast float %910, %530
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fmul fast float %912, %908
  %914 = fmul fast float %913, 2.000000e+00
  %915 = fsub fast float 3.000000e+00, %914
  %916 = fmul fast float %903, %873
  %917 = fmul fast float %913, %913
  %918 = fmul fast float %917, %916
  %919 = fmul fast float %918, %915
  %920 = call float @dx.op.binary.f32(i32 36, float %919, float %919)  ; FMin(a,b)
  %921 = call float @dx.op.binary.f32(i32 36, float %919, float %920)  ; FMin(a,b)
  %922 = fcmp fast ogt float %921, 0.000000e+00
  br i1 %922, label %928, label %923, !dx.controlflow.hints !57

; <label>:923                                     ; preds = %1431, %1016, %872
  %924 = phi float [ %1464, %1431 ], [ %486, %1016 ], [ %486, %872 ]
  %925 = phi float [ %1465, %1431 ], [ %487, %1016 ], [ %487, %872 ]
  %926 = phi float [ %1466, %1431 ], [ %488, %1016 ], [ %488, %872 ]
  %927 = icmp eq i32 %485, %493
  br i1 %927, label %1467, label %484

; <label>:928                                     ; preds = %872
  %929 = icmp eq i32 %538, 255
  br i1 %929, label %1016, label %930, !dx.controlflow.hints !58

; <label>:930                                     ; preds = %928
  %931 = mul nuw nsw i32 %538, 176
  %932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = extractvalue %dx.types.ResRet.f32 %932, 1
  %935 = extractvalue %dx.types.ResRet.f32 %932, 2
  %936 = extractvalue %dx.types.ResRet.f32 %932, 3
  %937 = add nuw nsw i32 %931, 16
  %938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = add nuw nsw i32 %931, 32
  %942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = extractvalue %dx.types.ResRet.f32 %942, 2
  %945 = add nuw nsw i32 %931, 48
  %946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = extractvalue %dx.types.ResRet.f32 %946, 1
  %949 = extractvalue %dx.types.ResRet.f32 %946, 2
  %950 = extractvalue %dx.types.ResRet.f32 %946, 3
  %951 = add nuw nsw i32 %931, 64
  %952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 0
  %954 = extractvalue %dx.types.ResRet.f32 %952, 1
  %955 = extractvalue %dx.types.ResRet.f32 %952, 2
  %956 = extractvalue %dx.types.ResRet.f32 %952, 3
  %957 = add nuw nsw i32 %931, 80
  %958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = extractvalue %dx.types.ResRet.f32 %958, 1
  %961 = extractvalue %dx.types.ResRet.f32 %958, 2
  %962 = extractvalue %dx.types.ResRet.f32 %958, 3
  %963 = add nuw nsw i32 %931, 96
  %964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = extractvalue %dx.types.ResRet.f32 %964, 1
  %967 = extractvalue %dx.types.ResRet.f32 %964, 2
  %968 = extractvalue %dx.types.ResRet.f32 %964, 3
  %969 = bitcast float %940 to i32
  %970 = fmul fast float %944, %840
  %971 = fmul fast float %944, %841
  %972 = fmul fast float %944, %842
  %973 = fsub fast float %817, %970
  %974 = fsub fast float %818, %971
  %975 = fsub fast float %819, %972
  %976 = fmul fast float %973, %947
  %977 = call float @dx.op.tertiary.f32(i32 46, float %974, float %953, float %976)  ; FMad(a,b,c)
  %978 = call float @dx.op.tertiary.f32(i32 46, float %975, float %959, float %977)  ; FMad(a,b,c)
  %979 = fadd fast float %978, %965
  %980 = fmul fast float %973, %948
  %981 = call float @dx.op.tertiary.f32(i32 46, float %974, float %954, float %980)  ; FMad(a,b,c)
  %982 = call float @dx.op.tertiary.f32(i32 46, float %975, float %960, float %981)  ; FMad(a,b,c)
  %983 = fadd fast float %982, %966
  %984 = fmul fast float %973, %949
  %985 = call float @dx.op.tertiary.f32(i32 46, float %974, float %955, float %984)  ; FMad(a,b,c)
  %986 = call float @dx.op.tertiary.f32(i32 46, float %975, float %961, float %985)  ; FMad(a,b,c)
  %987 = fadd fast float %986, %967
  %988 = fmul fast float %973, %950
  %989 = call float @dx.op.tertiary.f32(i32 46, float %974, float %956, float %988)  ; FMad(a,b,c)
  %990 = call float @dx.op.tertiary.f32(i32 46, float %975, float %962, float %989)  ; FMad(a,b,c)
  %991 = fadd fast float %990, %968
  %992 = fdiv fast float %979, %991
  %993 = fdiv fast float %983, %991
  %994 = fdiv fast float %987, %991
  %995 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %994)  ; FMax(a,b)
  %996 = fmul fast float %935, 5.000000e-01
  %997 = call float @dx.op.tertiary.f32(i32 46, float %996, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %998 = fadd fast float %997, %992
  %999 = fadd fast float %993, %996
  %1000 = fmul fast float %998, %939
  %1001 = fmul fast float %999, %939
  %1002 = call float @dx.op.binary.f32(i32 35, float %1000, float %935)  ; FMax(a,b)
  %1003 = call float @dx.op.binary.f32(i32 35, float %1001, float %935)  ; FMax(a,b)
  %1004 = call float @dx.op.binary.f32(i32 36, float %1002, float %936)  ; FMin(a,b)
  %1005 = call float @dx.op.binary.f32(i32 36, float %1003, float %936)  ; FMin(a,b)
  %1006 = fadd fast float %1004, %933
  %1007 = fadd fast float %1005, %934
  %1008 = uitofp i32 %969 to float
  %1009 = fadd fast float %995, %943
  %1010 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %20, float %1006, float %1007, float %1008, float undef, i32 0, i32 0, i32 undef, float %1009)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = fadd fast float %1011, -1.000000e+00
  %1013 = fmul fast float %1012, %907
  %1014 = fadd fast float %1013, 1.000000e+00
  %1015 = fmul fast float %1014, %919
  br label %1016

; <label>:1016                                    ; preds = %930, %928
  %1017 = phi float [ %1015, %930 ], [ %919, %928 ]
  %1018 = call float @dx.op.binary.f32(i32 36, float %1017, float %1017)  ; FMin(a,b)
  %1019 = call float @dx.op.binary.f32(i32 36, float %1017, float %1018)  ; FMin(a,b)
  %1020 = fcmp fast ogt float %1019, 0.000000e+00
  br i1 %1020, label %1021, label %923, !dx.controlflow.hints !59

; <label>:1021                                    ; preds = %1016
  br i1 %219, label %1022, label %1431, !dx.controlflow.hints !60

; <label>:1022                                    ; preds = %1021
  %1023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.i32 %1023, 0
  %1025 = and i32 %1024, 64
  %1026 = icmp ne i32 %1025, 0
  %1027 = fsub fast float %523, %464
  %1028 = fcmp fast ogt float %1027, 0.000000e+00
  %1029 = fsub fast float %178, %208
  %1030 = fcmp fast ogt float %1029, 0.000000e+00
  %1031 = xor i1 %1030, %1028
  %1032 = fsub fast float %464, %523
  %1033 = fmul fast float %1032, 2.000000e+00
  %1034 = fadd fast float %1033, %523
  %1035 = select i1 %1031, float %523, float %1034
  %1036 = fsub fast float %521, %418
  %1037 = fsub fast float %522, %419
  %1038 = fsub fast float %1035, %420
  %1039 = call float @dx.op.dot3.f32(i32 55, float %1036, float %1037, float %1038, float %1036, float %1037, float %1038)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = call float @dx.op.unary.f32(i32 25, float %1039)  ; Rsqrt(value)
  %1041 = fmul fast float %1040, %1036
  %1042 = fmul fast float %1040, %1037
  %1043 = fmul fast float %1040, %1038
  %1044 = fsub fast float %208, %178
  %1045 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1044)  ; Dot3(ax,ay,az,bx,by,bz)
  %1046 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1041, float %1042, float %1043)  ; Dot3(ax,ay,az,bx,by,bz)
  %1047 = fdiv fast float 1.000000e+00, %1046
  %1048 = fmul fast float %1047, %1045
  %1049 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1029, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1050 = fcmp fast ogt float %1049, 0.000000e+00
  %1051 = fcmp fast olt float %1049, 0.000000e+00
  %1052 = zext i1 %1050 to i32
  %1053 = zext i1 %1051 to i32
  %1054 = sub nsw i32 %1052, %1053
  %1055 = sitofp i32 %1054 to float
  %1056 = fsub fast float %1035, %464
  %1057 = call float @dx.op.dot3.f32(i32 55, float %1036, float %1037, float %1056, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1058 = fcmp fast ogt float %1057, 0.000000e+00
  %1059 = fcmp fast olt float %1057, 0.000000e+00
  %1060 = zext i1 %1058 to i32
  %1061 = zext i1 %1059 to i32
  %1062 = sub nsw i32 %1060, %1061
  %1063 = sitofp i32 %1062 to float
  %1064 = fcmp fast une float %1055, %1063
  br i1 %1064, label %1065, label %1075, !dx.controlflow.hints !61

; <label>:1065                                    ; preds = %1022
  %1066 = fmul fast float %1048, %1043
  %1067 = fmul fast float %1048, %1042
  %1068 = fmul fast float %1048, %1041
  %1069 = fmul fast float %1068, %1068
  %1070 = fmul fast float %1067, %1067
  %1071 = fadd fast float %1069, %1070
  %1072 = fmul fast float %1066, %1066
  %1073 = fadd fast float %1071, %1072
  %1074 = call float @dx.op.unary.f32(i32 24, float %1073)  ; Sqrt(value)
  br label %1087

; <label>:1075                                    ; preds = %1022
  %1076 = icmp slt i32 %1054, 0
  br i1 %1076, label %1077, label %1087, !dx.controlflow.hints !62

; <label>:1077                                    ; preds = %1075
  %1078 = fsub fast float %418, %521
  %1079 = fsub fast float %419, %522
  %1080 = fsub fast float %420, %1035
  %1081 = fmul fast float %1078, %1078
  %1082 = fmul fast float %1079, %1079
  %1083 = fadd fast float %1081, %1082
  %1084 = fmul fast float %1080, %1080
  %1085 = fadd fast float %1083, %1084
  %1086 = call float @dx.op.unary.f32(i32 24, float %1085)  ; Sqrt(value)
  br label %1087

; <label>:1087                                    ; preds = %1077, %1075, %1065
  %1088 = phi float [ %1074, %1065 ], [ %1086, %1077 ], [ 0.000000e+00, %1075 ]
  %1089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.i32 %1089, 1
  %1091 = icmp ne i32 %1090, 0
  %1092 = and i1 %1031, %1091
  %1093 = call float @dx.op.dot3.f32(i32 55, float %1041, float %1042, float %1043, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = fmul fast float %1093, %1093
  %1095 = fsub fast float 1.000000e+00, %1094
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 0
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 0
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.CBufRet.f32 %1100, 1
  %1107 = extractvalue %dx.types.CBufRet.f32 %1102, 1
  %1108 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1109 = extractvalue %dx.types.CBufRet.f32 %1100, 3
  %1110 = extractvalue %dx.types.CBufRet.f32 %1102, 3
  %1111 = extractvalue %dx.types.CBufRet.f32 %1104, 3
  %1112 = fadd fast float %1097, %418
  %1113 = fadd fast float %1098, %419
  %1114 = fadd fast float %1099, %420
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1119 = extractvalue %dx.types.CBufRet.f32 %1115, 3
  br i1 %1092, label %1120, label %1313, !dx.controlflow.hints !63

; <label>:1120                                    ; preds = %1087
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = fmul fast float %1122, %1122
  %1124 = fmul fast float %1123, %1095
  %1125 = fsub fast float 1.000000e+00, %1124
  %1126 = fcmp fast oge float %1125, 0.000000e+00
  %1127 = fmul fast float %1122, %1041
  %1128 = fmul fast float %1122, %1042
  %1129 = fmul fast float %1122, %1043
  %1130 = call float @dx.op.unary.f32(i32 24, float %1125)  ; Sqrt(value)
  %1131 = fmul fast float %1122, %1093
  %1132 = fsub fast float -0.000000e+00, %1130
  %1133 = fsub fast float %1132, %1131
  %1134 = fadd fast float %1133, %1129
  %1135 = select i1 %1126, float %1127, float 0.000000e+00
  %1136 = select i1 %1126, float %1128, float 0.000000e+00
  %1137 = select i1 %1126, float %1134, float 0.000000e+00
  %1138 = fmul fast float %1135, %1088
  %1139 = fmul fast float %1136, %1088
  %1140 = fmul fast float %1137, %1088
  %1141 = fadd fast float %1112, %1138
  %1142 = fadd fast float %1141, %1109
  %1143 = fadd fast float %1113, %1139
  %1144 = fadd fast float %1143, %1110
  %1145 = fadd fast float %1114, %1140
  %1146 = fadd fast float %1145, %1111
  %1147 = fmul fast float %1142, %1101
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1144, float %1103, float %1147)  ; FMad(a,b,c)
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1146, float %1105, float %1148)  ; FMad(a,b,c)
  %1150 = fmul fast float %1142, %1106
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %1144, float %1107, float %1150)  ; FMad(a,b,c)
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1146, float %1108, float %1151)  ; FMad(a,b,c)
  %1153 = fsub fast float %1149, %1109
  %1154 = fsub fast float %1153, %1116
  %1155 = fadd fast float %1154, %1118
  %1156 = fsub fast float %1152, %1110
  %1157 = fsub fast float %1156, %1117
  %1158 = fadd fast float %1157, %1118
  %1159 = fmul fast float %1155, %1119
  %1160 = fmul fast float %1158, %1119
  %1161 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1162 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1163 = fsub fast float 1.000000e+00, %1161
  %1164 = fsub fast float 1.000000e+00, %1162
  %1165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1163, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = fmul fast float %1166, 0x3FBC5ABC00000000
  %1168 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1169 = fmul fast float %1168, %1168
  %1170 = fmul fast float %1169, %1095
  %1171 = fsub fast float 1.000000e+00, %1170
  %1172 = fcmp fast oge float %1171, 0.000000e+00
  %1173 = fmul fast float %1168, %1041
  %1174 = fmul fast float %1168, %1042
  %1175 = fmul fast float %1168, %1043
  %1176 = call float @dx.op.unary.f32(i32 24, float %1171)  ; Sqrt(value)
  %1177 = fmul fast float %1168, %1093
  %1178 = fsub fast float -0.000000e+00, %1176
  %1179 = fsub fast float %1178, %1177
  %1180 = fadd fast float %1179, %1175
  %1181 = select i1 %1172, float %1173, float 0.000000e+00
  %1182 = select i1 %1172, float %1174, float 0.000000e+00
  %1183 = select i1 %1172, float %1180, float 0.000000e+00
  %1184 = fmul fast float %1181, %1088
  %1185 = fmul fast float %1182, %1088
  %1186 = fmul fast float %1183, %1088
  %1187 = fadd fast float %1112, %1184
  %1188 = fadd fast float %1187, %1109
  %1189 = fadd fast float %1113, %1185
  %1190 = fadd fast float %1189, %1110
  %1191 = fadd fast float %1114, %1186
  %1192 = fadd fast float %1191, %1111
  %1193 = fmul fast float %1188, %1101
  %1194 = call float @dx.op.tertiary.f32(i32 46, float %1190, float %1103, float %1193)  ; FMad(a,b,c)
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %1192, float %1105, float %1194)  ; FMad(a,b,c)
  %1196 = fmul fast float %1188, %1106
  %1197 = call float @dx.op.tertiary.f32(i32 46, float %1190, float %1107, float %1196)  ; FMad(a,b,c)
  %1198 = call float @dx.op.tertiary.f32(i32 46, float %1192, float %1108, float %1197)  ; FMad(a,b,c)
  %1199 = fsub fast float %1195, %1109
  %1200 = fsub fast float %1199, %1116
  %1201 = fadd fast float %1200, %1118
  %1202 = fsub fast float %1198, %1110
  %1203 = fsub fast float %1202, %1117
  %1204 = fadd fast float %1203, %1118
  %1205 = fmul fast float %1201, %1119
  %1206 = fmul fast float %1204, %1119
  %1207 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1208 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1209 = fsub fast float 1.000000e+00, %1207
  %1210 = fsub fast float 1.000000e+00, %1208
  %1211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1209, float %1210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = fmul fast float %1212, 0x3F9E4BBD60000000
  %1214 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1215 = fmul fast float %1214, %1214
  %1216 = fmul fast float %1215, %1095
  %1217 = fsub fast float 1.000000e+00, %1216
  %1218 = fcmp fast oge float %1217, 0.000000e+00
  %1219 = fmul fast float %1214, %1041
  %1220 = fmul fast float %1214, %1042
  %1221 = fmul fast float %1214, %1043
  %1222 = call float @dx.op.unary.f32(i32 24, float %1217)  ; Sqrt(value)
  %1223 = fmul fast float %1214, %1093
  %1224 = fsub fast float -0.000000e+00, %1222
  %1225 = fsub fast float %1224, %1223
  %1226 = fadd fast float %1225, %1221
  %1227 = select i1 %1218, float %1219, float 0.000000e+00
  %1228 = select i1 %1218, float %1220, float 0.000000e+00
  %1229 = select i1 %1218, float %1226, float 0.000000e+00
  %1230 = fmul fast float %1227, %1088
  %1231 = fmul fast float %1228, %1088
  %1232 = fmul fast float %1229, %1088
  %1233 = fadd fast float %1112, %1230
  %1234 = fadd fast float %1233, %1109
  %1235 = fadd fast float %1113, %1231
  %1236 = fadd fast float %1235, %1110
  %1237 = fadd fast float %1114, %1232
  %1238 = fadd fast float %1237, %1111
  %1239 = fmul fast float %1234, %1101
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1236, float %1103, float %1239)  ; FMad(a,b,c)
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1238, float %1105, float %1240)  ; FMad(a,b,c)
  %1242 = fmul fast float %1234, %1106
  %1243 = call float @dx.op.tertiary.f32(i32 46, float %1236, float %1107, float %1242)  ; FMad(a,b,c)
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %1238, float %1108, float %1243)  ; FMad(a,b,c)
  %1245 = fsub fast float %1241, %1109
  %1246 = fsub fast float %1245, %1116
  %1247 = fadd fast float %1246, %1118
  %1248 = fsub fast float %1244, %1110
  %1249 = fsub fast float %1248, %1117
  %1250 = fadd fast float %1249, %1118
  %1251 = fmul fast float %1247, %1119
  %1252 = fmul fast float %1250, %1119
  %1253 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1254 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1255 = fsub fast float 1.000000e+00, %1253
  %1256 = fsub fast float 1.000000e+00, %1254
  %1257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1255, float %1256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = fmul fast float %1258, 0x3FDDEACB00000000
  %1260 = fadd fast float %1259, %1213
  %1261 = extractvalue %dx.types.CBufRet.f32 %1121, 3
  %1262 = fmul fast float %1261, %1261
  %1263 = fmul fast float %1262, %1095
  %1264 = fsub fast float 1.000000e+00, %1263
  %1265 = fcmp fast oge float %1264, 0.000000e+00
  %1266 = fmul fast float %1261, %1041
  %1267 = fmul fast float %1261, %1042
  %1268 = fmul fast float %1261, %1043
  %1269 = call float @dx.op.unary.f32(i32 24, float %1264)  ; Sqrt(value)
  %1270 = fmul fast float %1261, %1093
  %1271 = fsub fast float -0.000000e+00, %1269
  %1272 = fsub fast float %1271, %1270
  %1273 = fadd fast float %1272, %1268
  %1274 = select i1 %1265, float %1266, float 0.000000e+00
  %1275 = select i1 %1265, float %1267, float 0.000000e+00
  %1276 = select i1 %1265, float %1273, float 0.000000e+00
  %1277 = fmul fast float %1274, %1088
  %1278 = fmul fast float %1275, %1088
  %1279 = fmul fast float %1276, %1088
  %1280 = fadd fast float %1112, %1277
  %1281 = fadd fast float %1280, %1109
  %1282 = fadd fast float %1113, %1278
  %1283 = fadd fast float %1282, %1110
  %1284 = fadd fast float %1114, %1279
  %1285 = fadd fast float %1284, %1111
  %1286 = fmul fast float %1281, %1101
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1103, float %1286)  ; FMad(a,b,c)
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1285, float %1105, float %1287)  ; FMad(a,b,c)
  %1289 = fmul fast float %1281, %1106
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1107, float %1289)  ; FMad(a,b,c)
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1285, float %1108, float %1290)  ; FMad(a,b,c)
  %1292 = fsub fast float %1288, %1109
  %1293 = fsub fast float %1292, %1116
  %1294 = fadd fast float %1293, %1118
  %1295 = fsub fast float %1291, %1110
  %1296 = fsub fast float %1295, %1117
  %1297 = fadd fast float %1296, %1118
  %1298 = fmul fast float %1294, %1119
  %1299 = fmul fast float %1297, %1119
  %1300 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1301 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1302 = fsub fast float 1.000000e+00, %1300
  %1303 = fsub fast float 1.000000e+00, %1301
  %1304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1302, float %1303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = fmul fast float %1305, 0x3FE0183CA0000000
  %1307 = fmul fast float %1305, 0x3FB51033E0000000
  %1308 = fadd fast float %1260, %1306
  %1309 = fadd fast float %1258, %1212
  %1310 = fmul fast float %1309, 0x3FD9D2A200000000
  %1311 = fadd fast float %1307, %1167
  %1312 = fadd fast float %1311, %1310
  br label %1359

; <label>:1313                                    ; preds = %1087
  %1314 = fmul fast float %1095, 0x3FE2024E20000000
  %1315 = fsub fast float 1.000000e+00, %1314
  %1316 = fcmp fast oge float %1315, 0.000000e+00
  %1317 = fmul fast float %1041, 0x3FE8018960000000
  %1318 = fmul fast float %1042, 0x3FE8018960000000
  %1319 = fmul fast float %1043, 0x3FE8018960000000
  %1320 = call float @dx.op.unary.f32(i32 24, float %1315)  ; Sqrt(value)
  %1321 = fmul fast float %1093, 0x3FE8018960000000
  %1322 = fsub fast float %1319, %1320
  %1323 = fsub fast float %1322, %1321
  %1324 = select i1 %1316, float %1317, float 0.000000e+00
  %1325 = select i1 %1316, float %1318, float 0.000000e+00
  %1326 = select i1 %1316, float %1323, float 0.000000e+00
  %1327 = select i1 %1031, float %1324, float %1041
  %1328 = select i1 %1031, float %1325, float %1042
  %1329 = select i1 %1031, float %1326, float %1043
  %1330 = fmul fast float %1327, %1088
  %1331 = fmul fast float %1328, %1088
  %1332 = fmul fast float %1329, %1088
  %1333 = fadd fast float %1112, %1330
  %1334 = fadd fast float %1333, %1109
  %1335 = fadd fast float %1113, %1331
  %1336 = fadd fast float %1335, %1110
  %1337 = fadd fast float %1114, %1332
  %1338 = fadd fast float %1337, %1111
  %1339 = fmul fast float %1334, %1101
  %1340 = call float @dx.op.tertiary.f32(i32 46, float %1336, float %1103, float %1339)  ; FMad(a,b,c)
  %1341 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %1105, float %1340)  ; FMad(a,b,c)
  %1342 = fmul fast float %1334, %1106
  %1343 = call float @dx.op.tertiary.f32(i32 46, float %1336, float %1107, float %1342)  ; FMad(a,b,c)
  %1344 = call float @dx.op.tertiary.f32(i32 46, float %1338, float %1108, float %1343)  ; FMad(a,b,c)
  %1345 = fsub fast float %1341, %1109
  %1346 = fsub fast float %1345, %1116
  %1347 = fadd fast float %1346, %1118
  %1348 = fsub fast float %1344, %1110
  %1349 = fsub fast float %1348, %1117
  %1350 = fadd fast float %1349, %1118
  %1351 = fmul fast float %1347, %1119
  %1352 = fmul fast float %1350, %1119
  %1353 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1354 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1355 = fsub fast float 1.000000e+00, %1353
  %1356 = fsub fast float 1.000000e+00, %1354
  %1357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %1355, float %1356, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  br label %1359

; <label>:1359                                    ; preds = %1313, %1120
  %1360 = phi float [ %1358, %1313 ], [ %1308, %1120 ]
  %1361 = phi float [ %1358, %1313 ], [ %1312, %1120 ]
  %1362 = phi float [ %1358, %1313 ], [ %1166, %1120 ]
  %1363 = fmul fast float %1036, %1036
  %1364 = fmul fast float %1037, %1037
  %1365 = fadd fast float %1363, %1364
  %1366 = fmul fast float %1038, %1038
  %1367 = fadd fast float %1365, %1366
  %1368 = call float @dx.op.unary.f32(i32 24, float %1367)  ; Sqrt(value)
  %1369 = fsub fast float %418, %521
  %1370 = fsub fast float %419, %522
  %1371 = fsub fast float %420, %523
  %1372 = fmul fast float %1369, %1369
  %1373 = fmul fast float %1370, %1370
  %1374 = fadd fast float %1372, %1373
  %1375 = fmul fast float %1371, %1371
  %1376 = fadd fast float %1374, %1375
  %1377 = call float @dx.op.unary.f32(i32 24, float %1376)  ; Sqrt(value)
  %1378 = fsub fast float %1368, %1377
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 0
  %1381 = call float @dx.op.unary.f32(i32 6, float %1380)  ; FAbs(value)
  %1382 = fmul fast float %1377, %1377
  %1383 = fmul fast float %1382, %1381
  %1384 = fmul fast float %1378, %1378
  %1385 = fadd fast float %1384, %1382
  %1386 = fdiv fast float %1383, %1385
  %1387 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1388 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1389 = fsub fast float 1.000000e+00, %1388
  %1390 = bitcast float %1389 to i32
  %1391 = sitofp i32 %1390 to float
  %1392 = fptosi float %1391 to i32
  %1393 = bitcast i32 %1392 to float
  %1394 = fmul fast float %1393, 0x3FEF333340000000
  %1395 = fadd fast float %1394, 0x3F999999A0000000
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = fsub fast float 1.000000e+00, %1396
  %1398 = fadd fast float %1360, 1.000000e+00
  %1399 = fadd fast float %1361, 1.000000e+00
  %1400 = fadd fast float %1362, 1.000000e+00
  %1401 = fmul fast float %1397, %1398
  %1402 = fmul fast float %1397, %1399
  %1403 = fmul fast float %1397, %1400
  %1404 = fmul fast float %1387, %1398
  %1405 = fmul fast float %1404, %1396
  %1406 = fmul fast float %1387, %1399
  %1407 = fmul fast float %1406, %1396
  %1408 = fmul fast float %1387, %1400
  %1409 = fmul fast float %1408, %1396
  %1410 = fadd fast float %1405, 1.000000e+00
  %1411 = fadd fast float %1407, 1.000000e+00
  %1412 = fadd fast float %1409, 1.000000e+00
  %1413 = call float @dx.op.unary.f32(i32 6, float %1029)  ; FAbs(value)
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1415 = select i1 %1031, float %1401, float %1410
  %1416 = select i1 %1031, float %1402, float %1411
  %1417 = select i1 %1031, float %1403, float %1412
  %1418 = select i1 %1026, float %1414, float 0.000000e+00
  %1419 = fadd fast float %1415, -1.000000e+00
  %1420 = fadd fast float %1416, -1.000000e+00
  %1421 = fadd fast float %1417, -1.000000e+00
  %1422 = fmul fast float %1419, %1418
  %1423 = fmul fast float %1420, %1418
  %1424 = fmul fast float %1421, %1418
  %1425 = fadd fast float %1422, 1.000000e+00
  %1426 = fadd fast float %1423, 1.000000e+00
  %1427 = fadd fast float %1424, 1.000000e+00
  %1428 = fmul fast float %1425, %497
  %1429 = fmul fast float %1426, %498
  %1430 = fmul fast float %1427, %499
  br label %1431

; <label>:1431                                    ; preds = %1359, %1021
  %1432 = phi float [ %1428, %1359 ], [ %497, %1021 ]
  %1433 = phi float [ %1429, %1359 ], [ %498, %1021 ]
  %1434 = phi float [ %1430, %1359 ], [ %499, %1021 ]
  %1435 = call float @dx.op.dot3.f32(i32 55, float %840, float %841, float %842, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1436 = fcmp fast ogt float %329, 0.000000e+00
  %1437 = select i1 %1436, float 1.000000e+00, float -1.000000e+00
  %1438 = fmul fast float %100, 7.812500e-03
  %1439 = fmul fast float %100, 3.125000e-02
  %1440 = fadd fast float %1439, -3.125000e-02
  %1441 = fmul fast float %1437, 5.000000e-01
  %1442 = fmul fast float %1441, %1435
  %1443 = fmul fast float %1437, %329
  %1444 = fadd fast float %1438, 4.921875e-01
  %1445 = fadd fast float %1444, %1442
  %1446 = fadd fast float %1438, 0x3FB25F3060000000
  %1447 = fadd fast float %1440, %1443
  %1448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %19, float %1445, float %1446, float %1447, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1450, 1
  %1452 = extractvalue %dx.types.CBufRet.f32 %1450, 2
  %1453 = select i1 %540, float %1451, float %1452
  %1454 = fmul fast float %847, 0x400921FB60000000
  %1455 = fmul fast float %1454, %1017
  %1456 = fmul fast float %1455, %1449
  %1457 = fmul fast float %1456, %1453
  %1458 = fmul fast float %1432, %813
  %1459 = fmul fast float %1458, %1457
  %1460 = fmul fast float %1433, %813
  %1461 = fmul fast float %1460, %1457
  %1462 = fmul fast float %1434, %813
  %1463 = fmul fast float %1462, %1457
  %1464 = fadd fast float %1459, %486
  %1465 = fadd fast float %1461, %487
  %1466 = fadd fast float %1463, %488
  br label %923

; <label>:1467                                    ; preds = %923
  br label %1468

; <label>:1468                                    ; preds = %1467, %471
  %1469 = phi float [ %473, %471 ], [ %924, %1467 ]
  %1470 = phi float [ %474, %471 ], [ %925, %1467 ]
  %1471 = phi float [ %475, %471 ], [ %926, %1467 ]
  %1472 = add i32 %472, 1
  %1473 = icmp ugt i32 %1472, %470
  br i1 %1473, label %1474, label %471

; <label>:1474                                    ; preds = %1468
  br label %1475

; <label>:1475                                    ; preds = %1474, %322
  %1476 = phi float [ 0.000000e+00, %322 ], [ %1469, %1474 ]
  %1477 = phi float [ 0.000000e+00, %322 ], [ %1470, %1474 ]
  %1478 = phi float [ 0.000000e+00, %322 ], [ %1471, %1474 ]
  %1479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %125, float %126, float %127, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.ResRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.ResRet.f32 %1479, 2
  %1483 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1480)  ; IsNaN(value)
  %1484 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1481)  ; IsNaN(value)
  %1485 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1482)  ; IsNaN(value)
  %1486 = or i1 %1483, %1484
  %1487 = or i1 %1486, %1485
  %1488 = select i1 %1487, float 0.000000e+00, float %1480
  %1489 = select i1 %1487, float 0.000000e+00, float %1481
  %1490 = select i1 %1487, float 0.000000e+00, float %1482
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 1
  %1493 = fmul fast float %1488, %1492
  %1494 = fmul fast float %1489, %1492
  %1495 = fmul fast float %1490, %1492
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 3
  %1498 = fmul fast float %1493, %1497
  %1499 = fmul fast float %1494, %1497
  %1500 = fmul fast float %1495, %1497
  %1501 = fadd fast float %1498, %1476
  %1502 = fadd fast float %1499, %1477
  %1503 = fadd fast float %1500, %1478
  br label %1504

; <label>:1504                                    ; preds = %1475, %301
  %1505 = phi float [ %326, %1475 ], [ %317, %301 ]
  %1506 = phi float [ %327, %1475 ], [ %318, %301 ]
  %1507 = phi float [ %328, %1475 ], [ %319, %301 ]
  %1508 = phi float [ %1501, %1475 ], [ 0.000000e+00, %301 ]
  %1509 = phi float [ %1502, %1475 ], [ 0.000000e+00, %301 ]
  %1510 = phi float [ %1503, %1475 ], [ 0.000000e+00, %301 ]
  %1511 = fmul fast float %1505, %320
  %1512 = fmul fast float %1506, %320
  %1513 = fmul fast float %1507, %320
  %1514 = fmul fast float %1511, %1508
  %1515 = fmul fast float %1512, %1509
  %1516 = fmul fast float %1513, %1510
  br i1 %186, label %2288, label %1517, !dx.controlflow.hints !64

; <label>:1517                                    ; preds = %1504
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.CBufRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.CBufRet.f32 %1518, 2
  %1522 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1525 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1526 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1527 = extractvalue %dx.types.CBufRet.f32 %1523, 3
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 0
  %1530 = extractvalue %dx.types.CBufRet.f32 %1528, 1
  %1531 = extractvalue %dx.types.CBufRet.f32 %1528, 2
  %1532 = extractvalue %dx.types.CBufRet.f32 %1528, 3
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.CBufRet.f32 %1533, 1
  %1536 = extractvalue %dx.types.CBufRet.f32 %1533, 2
  %1537 = extractvalue %dx.types.CBufRet.f32 %1533, 3
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 3
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 3
  %1542 = extractvalue %dx.types.CBufRet.f32 %1540, 0
  %1543 = extractvalue %dx.types.CBufRet.f32 %1540, 1
  %1544 = extractvalue %dx.types.CBufRet.f32 %1540, 2
  %1545 = fcmp fast olt float %1544, -5.000000e-01
  %1546 = fmul fast float %180, %179
  %1547 = fadd fast float %1546, %1522
  %1548 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %1519, float %1520, float %1521)  ; Dot3(ax,ay,az,bx,by,bz)
  %1549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.i32 %1549, 1
  %1551 = and i32 %1550, 1
  %1552 = icmp ne i32 %1551, 0
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 2
  %1555 = fcmp fast ogt float %1554, 0.000000e+00
  %1556 = and i1 %1552, %1555
  br i1 %1556, label %1557, label %1963, !dx.controlflow.hints !65

; <label>:1557                                    ; preds = %1517
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 3
  %1560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1560, 2
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 2
  %1564 = fsub fast float %1561, %1563
  %1565 = and i32 %1550, 2
  %1566 = extractvalue %dx.types.CBufRet.i32 %1549, 0
  %1567 = call i32 @dx.op.binary.i32(i32 40, i32 %1566, i32 3)  ; UMin(a,b)
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.CBufRet.f32 %1568, 1
  %1571 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1572 = extractvalue %dx.types.CBufRet.f32 %1562, 1
  %1573 = fsub fast float %1569, %1571
  %1574 = fsub fast float %1570, %1572
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 0
  %1577 = fcmp fast ogt float %1576, 0.000000e+00
  %1578 = fsub fast float -0.000000e+00, %1573
  %1579 = fsub fast float -0.000000e+00, %1574
  %1580 = call float @dx.op.dot2.f32(i32 54, float %181, float %182, float %181, float %182)  ; Dot2(ax,ay,bx,by)
  %1581 = call float @dx.op.dot2.f32(i32 54, float %181, float %182, float %1578, float %1579)  ; Dot2(ax,ay,bx,by)
  %1582 = fmul fast float %1581, 2.000000e+00
  %1583 = call float @dx.op.dot2.f32(i32 54, float %1578, float %1579, float %1578, float %1579)  ; Dot2(ax,ay,bx,by)
  %1584 = fmul fast float %1576, %1576
  %1585 = fsub fast float %1583, %1584
  %1586 = fmul fast float %1582, %1582
  %1587 = fmul fast float %1580, 4.000000e+00
  %1588 = fmul fast float %1587, %1585
  %1589 = fsub fast float %1586, %1588
  %1590 = fcmp fast ogt float %1589, 0.000000e+00
  br i1 %1590, label %1591, label %1606, !dx.controlflow.hints !66

; <label>:1591                                    ; preds = %1557
  %1592 = fcmp fast ogt float %1582, 0.000000e+00
  %1593 = call float @dx.op.unary.f32(i32 24, float %1589)  ; Sqrt(value)
  %1594 = fsub fast float -0.000000e+00, %1593
  %1595 = select i1 %1592, float %1593, float %1594
  %1596 = fadd fast float %1595, %1582
  %1597 = fmul float %1596, -5.000000e-01
  %1598 = fdiv fast float %1597, %1580
  %1599 = call float @dx.op.binary.f32(i32 35, float %1598, float 0.000000e+00)  ; FMax(a,b)
  %1600 = call float @dx.op.binary.f32(i32 36, float %1546, float %1599)  ; FMin(a,b)
  %1601 = fdiv fast float %1585, %1597
  %1602 = call float @dx.op.binary.f32(i32 35, float %1601, float 0.000000e+00)  ; FMax(a,b)
  %1603 = call float @dx.op.binary.f32(i32 36, float %1546, float %1602)  ; FMin(a,b)
  %1604 = call float @dx.op.binary.f32(i32 36, float %1600, float %1603)  ; FMin(a,b)
  %1605 = call float @dx.op.binary.f32(i32 35, float %1600, float %1603)  ; FMax(a,b)
  br label %1606

; <label>:1606                                    ; preds = %1591, %1557
  %1607 = phi float [ %1605, %1591 ], [ -1.000000e+00, %1557 ]
  %1608 = phi float [ %1604, %1591 ], [ -1.000000e+00, %1557 ]
  %1609 = phi i1 [ true, %1591 ], [ false, %1557 ]
  %1610 = and i1 %1577, %1609
  br i1 %1610, label %1611, label %1613, !dx.controlflow.hints !67

; <label>:1611                                    ; preds = %1606
  %1612 = fcmp fast oeq float %1608, %1607
  br i1 %1612, label %1916, label %1614, !dx.controlflow.hints !68

; <label>:1613                                    ; preds = %1606
  br i1 %1577, label %1916, label %1614, !dx.controlflow.hints !69

; <label>:1614                                    ; preds = %1613, %1611
  %1615 = phi float [ %1546, %1613 ], [ %1607, %1611 ]
  %1616 = phi float [ 0.000000e+00, %1613 ], [ %1608, %1611 ]
  %1617 = icmp ne i32 %1565, 0
  %1618 = fmul fast float %1615, %183
  %1619 = fadd fast float %1618, %1559
  %1620 = fmul fast float %1619, %1615
  %1621 = select i1 %1617, float 0.000000e+00, float %1620
  %1622 = fcmp fast oeq float %183, 0.000000e+00
  %1623 = fdiv fast float %1564, %183
  %1624 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1623)  ; FMax(a,b)
  %1625 = select i1 %1622, float %1615, float %1624
  %1626 = call float @dx.op.binary.f32(i32 36, float %1615, float %1625)  ; FMin(a,b)
  %1627 = fcmp fast ogt float %183, 0.000000e+00
  %1628 = fcmp fast olt float %1564, 0.000000e+00
  br i1 %1627, label %1629, label %1686, !dx.controlflow.hints !70

; <label>:1629                                    ; preds = %1614
  %1630 = icmp eq i32 %1565, 0
  br i1 %1628, label %1631, label %1675, !dx.controlflow.hints !71

; <label>:1631                                    ; preds = %1629
  %1632 = select i1 %1630, float %1615, float 0.000000e+00
  %1633 = fsub fast float -0.000000e+00, %1632
  %1634 = call float @dx.op.unary.f32(i32 6, float %1633)  ; FAbs(value)
  %1635 = fmul fast float %1632, %183
  %1636 = fadd fast float %1635, %1559
  %1637 = fmul fast float %1634, %1636
  %1638 = fsub fast float %1621, %1637
  %1639 = fsub fast float %1615, %1634
  %1640 = select i1 %1630, float %1639, float 0.000000e+00
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1649 = extractvalue %dx.types.CBufRet.f32 %1645, 3
  %1650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1651 = extractvalue %dx.types.CBufRet.f32 %1650, 3
  %1652 = call float @dx.op.binary.f32(i32 36, float %1638, float %1651)  ; FMin(a,b)
  %1653 = fmul fast float %1649, %1640
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = fsub fast float %1646, %1642
  %1656 = fsub fast float %1647, %1643
  %1657 = fsub fast float %1648, %1644
  %1658 = fmul fast float %1654, %1655
  %1659 = fmul fast float %1654, %1656
  %1660 = fmul fast float %1654, %1657
  %1661 = fadd fast float %1658, %1642
  %1662 = fadd fast float %1659, %1643
  %1663 = fadd fast float %1660, %1644
  %1664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.CBufRet.f32 %1664, 1
  %1667 = fadd fast float %1666, %1665
  %1668 = call float @dx.op.unary.f32(i32 7, float %1667)  ; Saturate(value)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1664, 2
  %1670 = extractvalue %dx.types.CBufRet.f32 %1664, 3
  %1671 = fadd fast float %1670, %1669
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1673 = fmul fast float %1668, %1652
  %1674 = fmul fast float %1673, %1672
  br label %1916

; <label>:1675                                    ; preds = %1629
  br i1 %1630, label %1676, label %1697, !dx.controlflow.hints !72

; <label>:1676                                    ; preds = %1675
  %1677 = call float @dx.op.binary.f32(i32 36, float %1626, float %1616)  ; FMin(a,b)
  %1678 = fsub fast float %1626, %1677
  %1679 = fsub fast float %1678, %1615
  %1680 = call float @dx.op.unary.f32(i32 6, float %1679)  ; FAbs(value)
  %1681 = fadd fast float %1678, %1615
  %1682 = fmul fast float %1681, %183
  %1683 = fadd fast float %1682, %1559
  %1684 = fmul fast float %1683, %1680
  %1685 = fsub fast float %1621, %1684
  br label %1697

; <label>:1686                                    ; preds = %1614
  br i1 %1628, label %1687, label %1697, !dx.controlflow.hints !73

; <label>:1687                                    ; preds = %1686
  %1688 = call float @dx.op.binary.f32(i32 35, float %1616, float %1626)  ; FMax(a,b)
  %1689 = icmp eq i32 %1565, 0
  %1690 = select i1 %1689, float %1626, float 0.000000e+00
  %1691 = fsub fast float -0.000000e+00, %1690
  %1692 = call float @dx.op.unary.f32(i32 6, float %1691)  ; FAbs(value)
  %1693 = fmul fast float %1690, %183
  %1694 = fadd fast float %1693, %1559
  %1695 = fmul fast float %1692, %1694
  %1696 = fsub fast float %1621, %1695
  br label %1697

; <label>:1697                                    ; preds = %1687, %1686, %1676, %1675
  %1698 = phi float [ %1616, %1675 ], [ %1616, %1676 ], [ %1688, %1687 ], [ %1616, %1686 ]
  %1699 = phi float [ 0.000000e+00, %1675 ], [ %1680, %1676 ], [ %1692, %1687 ], [ 0.000000e+00, %1686 ]
  %1700 = phi float [ %1621, %1675 ], [ %1685, %1676 ], [ %1696, %1687 ], [ %1621, %1686 ]
  %1701 = phi float [ %1626, %1675 ], [ %1626, %1676 ], [ %1615, %1687 ], [ %1615, %1686 ]
  %1702 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 0
  store float -1.000000e+00, float* %1702, align 4, !tbaa !35, !noalias !74
  %1703 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 1
  store float -1.000000e+00, float* %1703, align 4, !tbaa !35, !noalias !74
  %1704 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 2
  store float -1.000000e+00, float* %1704, align 4, !tbaa !35, !noalias !74
  %1705 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 0
  store float -1.000000e+00, float* %1705, align 4, !tbaa !35, !noalias !74
  %1706 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 1
  store float -1.000000e+00, float* %1706, align 4, !tbaa !35, !noalias !74
  %1707 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 2
  store float -1.000000e+00, float* %1707, align 4, !tbaa !35, !noalias !74
  %1708 = icmp sgt i32 %1567, 0
  br i1 %1708, label %1709, label %1770

; <label>:1709                                    ; preds = %1697
  br label %1710

; <label>:1710                                    ; preds = %1759, %1709
  %1711 = phi i32 [ %1760, %1759 ], [ 0, %1709 ]
  %1712 = phi i32 [ %1761, %1759 ], [ 0, %1709 ]
  %1713 = add nuw i32 %1712, 171
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1713)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 1
  %1720 = fsub fast float %1715, %1718
  %1721 = fsub fast float %1716, %1719
  %1722 = extractvalue %dx.types.CBufRet.f32 %1714, 2
  %1723 = fsub fast float -0.000000e+00, %1720
  %1724 = fsub fast float -0.000000e+00, %1721
  %1725 = call float @dx.op.dot2.f32(i32 54, float %181, float %182, float %1723, float %1724)  ; Dot2(ax,ay,bx,by)
  %1726 = fmul fast float %1725, 2.000000e+00
  %1727 = call float @dx.op.dot2.f32(i32 54, float %1723, float %1724, float %1723, float %1724)  ; Dot2(ax,ay,bx,by)
  %1728 = fmul fast float %1722, %1722
  %1729 = fsub fast float %1727, %1728
  %1730 = fmul fast float %1726, %1726
  %1731 = fmul fast float %1587, %1729
  %1732 = fsub fast float %1730, %1731
  %1733 = fcmp fast ogt float %1732, 0.000000e+00
  br i1 %1733, label %1734, label %1749, !dx.controlflow.hints !66

; <label>:1734                                    ; preds = %1710
  %1735 = fcmp fast ogt float %1726, 0.000000e+00
  %1736 = call float @dx.op.unary.f32(i32 24, float %1732)  ; Sqrt(value)
  %1737 = fsub fast float -0.000000e+00, %1736
  %1738 = select i1 %1735, float %1736, float %1737
  %1739 = fadd fast float %1738, %1726
  %1740 = fmul float %1739, -5.000000e-01
  %1741 = fdiv fast float %1740, %1580
  %1742 = call float @dx.op.binary.f32(i32 35, float %1741, float 0.000000e+00)  ; FMax(a,b)
  %1743 = call float @dx.op.binary.f32(i32 36, float %1615, float %1742)  ; FMin(a,b)
  %1744 = fdiv fast float %1729, %1740
  %1745 = call float @dx.op.binary.f32(i32 35, float %1744, float 0.000000e+00)  ; FMax(a,b)
  %1746 = call float @dx.op.binary.f32(i32 36, float %1615, float %1745)  ; FMin(a,b)
  %1747 = call float @dx.op.binary.f32(i32 36, float %1743, float %1746)  ; FMin(a,b)
  %1748 = call float @dx.op.binary.f32(i32 35, float %1743, float %1746)  ; FMax(a,b)
  br label %1749

; <label>:1749                                    ; preds = %1734, %1710
  %1750 = phi float [ %1748, %1734 ], [ -1.000000e+00, %1710 ]
  %1751 = phi float [ %1747, %1734 ], [ -1.000000e+00, %1710 ]
  %1752 = phi i1 [ true, %1734 ], [ false, %1710 ]
  br i1 %1752, label %1753, label %1759, !dx.controlflow.hints !80

; <label>:1753                                    ; preds = %1749
  %1754 = call float @dx.op.binary.f32(i32 35, float %1698, float %1751)  ; FMax(a,b)
  %1755 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %1712
  store float %1754, float* %1755, align 4, !tbaa !35, !noalias !74
  %1756 = call float @dx.op.binary.f32(i32 35, float %1698, float %1750)  ; FMax(a,b)
  %1757 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %1712
  store float %1756, float* %1757, align 4, !tbaa !35, !noalias !74
  %1758 = add nsw i32 %1711, 1
  br label %1759

; <label>:1759                                    ; preds = %1753, %1749
  %1760 = phi i32 [ %1758, %1753 ], [ %1711, %1749 ]
  %1761 = add nuw nsw i32 %1712, 1
  %1762 = icmp eq i32 %1761, %1567
  br i1 %1762, label %1763, label %1710

; <label>:1763                                    ; preds = %1759
  %1764 = load float, float* %1704, align 4, !tbaa !35, !alias.scope !81, !noalias !84
  %1765 = load float, float* %1703, align 4, !tbaa !35, !alias.scope !87, !noalias !88
  %1766 = load float, float* %1702, align 4, !tbaa !35, !alias.scope !89, !noalias !90
  %1767 = load float, float* %1707, align 4, !tbaa !35, !alias.scope !91, !noalias !94
  %1768 = load float, float* %1706, align 4, !tbaa !35, !alias.scope !97, !noalias !98
  %1769 = load float, float* %1705, align 4, !tbaa !35, !alias.scope !99, !noalias !100
  br label %1770

; <label>:1770                                    ; preds = %1763, %1697
  %1771 = phi float [ -1.000000e+00, %1697 ], [ %1769, %1763 ]
  %1772 = phi float [ -1.000000e+00, %1697 ], [ %1768, %1763 ]
  %1773 = phi float [ -1.000000e+00, %1697 ], [ %1767, %1763 ]
  %1774 = phi float [ -1.000000e+00, %1697 ], [ %1766, %1763 ]
  %1775 = phi float [ -1.000000e+00, %1697 ], [ %1765, %1763 ]
  %1776 = phi float [ -1.000000e+00, %1697 ], [ %1764, %1763 ]
  %1777 = phi i32 [ 0, %1697 ], [ %1760, %1763 ]
  %1778 = call float @dx.op.binary.f32(i32 36, float %1775, float %1776)  ; FMin(a,b)
  %1779 = call float @dx.op.binary.f32(i32 36, float %1774, float %1778)  ; FMin(a,b)
  %1780 = call float @dx.op.binary.f32(i32 35, float %1774, float %1775)  ; FMax(a,b)
  %1781 = call float @dx.op.binary.f32(i32 36, float %1780, float %1776)  ; FMin(a,b)
  %1782 = call float @dx.op.binary.f32(i32 36, float %1774, float %1775)  ; FMin(a,b)
  %1783 = call float @dx.op.binary.f32(i32 35, float %1782, float %1781)  ; FMax(a,b)
  %1784 = call float @dx.op.binary.f32(i32 35, float %1775, float %1776)  ; FMax(a,b)
  %1785 = call float @dx.op.binary.f32(i32 35, float %1774, float %1784)  ; FMax(a,b)
  store float %1779, float* %1702, align 4, !tbaa !35, !alias.scope !89, !noalias !90
  store float %1783, float* %1703, align 4, !tbaa !35, !alias.scope !87, !noalias !88
  store float %1785, float* %1704, align 4, !tbaa !35, !alias.scope !81, !noalias !84
  %1786 = call float @dx.op.binary.f32(i32 36, float %1772, float %1773)  ; FMin(a,b)
  %1787 = call float @dx.op.binary.f32(i32 36, float %1771, float %1786)  ; FMin(a,b)
  %1788 = call float @dx.op.binary.f32(i32 35, float %1771, float %1772)  ; FMax(a,b)
  %1789 = call float @dx.op.binary.f32(i32 36, float %1788, float %1773)  ; FMin(a,b)
  %1790 = call float @dx.op.binary.f32(i32 36, float %1771, float %1772)  ; FMin(a,b)
  %1791 = call float @dx.op.binary.f32(i32 35, float %1790, float %1789)  ; FMax(a,b)
  %1792 = call float @dx.op.binary.f32(i32 35, float %1772, float %1773)  ; FMax(a,b)
  %1793 = call float @dx.op.binary.f32(i32 35, float %1771, float %1792)  ; FMax(a,b)
  store float %1787, float* %1705, align 4, !tbaa !35, !alias.scope !99, !noalias !100
  store float %1791, float* %1706, align 4, !tbaa !35, !alias.scope !97, !noalias !98
  store float %1793, float* %1707, align 4, !tbaa !35, !alias.scope !91, !noalias !94
  %1794 = sub nsw i32 3, %1777
  %1795 = icmp sgt i32 %1794, 2
  br i1 %1795, label %1796, label %1834, !dx.controlflow.hints !101

; <label>:1796                                    ; preds = %1770
  %1797 = icmp eq i32 %1565, 0
  %1798 = fsub fast float %1615, %1699
  %1799 = select i1 %1797, float %1798, float %1699
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1803 = extractvalue %dx.types.CBufRet.f32 %1800, 2
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = extractvalue %dx.types.CBufRet.f32 %1804, 1
  %1807 = extractvalue %dx.types.CBufRet.f32 %1804, 2
  %1808 = extractvalue %dx.types.CBufRet.f32 %1804, 3
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 3
  %1811 = call float @dx.op.binary.f32(i32 36, float %1700, float %1810)  ; FMin(a,b)
  %1812 = fmul fast float %1808, %1799
  %1813 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  %1814 = fsub fast float %1805, %1801
  %1815 = fsub fast float %1806, %1802
  %1816 = fsub fast float %1807, %1803
  %1817 = fmul fast float %1813, %1814
  %1818 = fmul fast float %1813, %1815
  %1819 = fmul fast float %1813, %1816
  %1820 = fadd fast float %1817, %1801
  %1821 = fadd fast float %1818, %1802
  %1822 = fadd fast float %1819, %1803
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = fadd fast float %1825, %1824
  %1827 = call float @dx.op.unary.f32(i32 7, float %1826)  ; Saturate(value)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1829 = extractvalue %dx.types.CBufRet.f32 %1823, 3
  %1830 = fadd fast float %1829, %1828
  %1831 = call float @dx.op.unary.f32(i32 7, float %1830)  ; Saturate(value)
  %1832 = fmul fast float %1827, %1811
  %1833 = fmul fast float %1832, %1831
  br label %1916

; <label>:1834                                    ; preds = %1770
  %1835 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %1794
  %1836 = load float, float* %1835, align 4, !tbaa !35, !noalias !74
  %1837 = fcmp fast olt float %1836, %1701
  %1838 = icmp sgt i32 %1777, 0
  %1839 = and i1 %1838, %1837
  br i1 %1839, label %1840, label %1877

; <label>:1840                                    ; preds = %1834
  br label %1841

; <label>:1841                                    ; preds = %1870, %1840
  %1842 = phi float [ %1871, %1870 ], [ %1699, %1840 ]
  %1843 = phi float [ %1872, %1870 ], [ %1700, %1840 ]
  %1844 = phi float [ %1852, %1870 ], [ %1836, %1840 ]
  %1845 = phi i32 [ %1849, %1870 ], [ %1794, %1840 ]
  %1846 = getelementptr inbounds [3 x float], [3 x float]* %29, i32 0, i32 %1845
  %1847 = load float, float* %1846, align 4, !tbaa !35, !noalias !74
  %1848 = icmp slt i32 %1845, 2
  %1849 = add nsw i32 %1845, 1
  %1850 = getelementptr inbounds [3 x float], [3 x float]* %28, i32 0, i32 %1849
  %1851 = load float, float* %1850, align 4, !tbaa !35, !noalias !74
  %1852 = select i1 %1848, float %1851, float %1615
  %1853 = call float @dx.op.binary.f32(i32 36, float %1852, float %1847)  ; FMin(a,b)
  %1854 = call float @dx.op.binary.f32(i32 36, float %1701, float %1853)  ; FMin(a,b)
  %1855 = icmp eq i32 %1565, 0
  %1856 = fadd fast float %1854, %1844
  %1857 = fmul fast float %1856, %183
  %1858 = fadd fast float %1857, %1559
  br i1 %1855, label %1864, label %1859, !dx.controlflow.hints !102

; <label>:1859                                    ; preds = %1841
  %1860 = fsub fast float %1854, %1844
  %1861 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1860)  ; FMax(a,b)
  %1862 = fmul fast float %1861, %1858
  %1863 = fadd fast float %1862, %1843
  br label %1870

; <label>:1864                                    ; preds = %1841
  %1865 = fsub fast float %1844, %1854
  %1866 = call float @dx.op.unary.f32(i32 6, float %1865)  ; FAbs(value)
  %1867 = fadd fast float %1866, %1842
  %1868 = fmul fast float %1866, %1858
  %1869 = fsub fast float %1843, %1868
  br label %1870

; <label>:1870                                    ; preds = %1864, %1859
  %1871 = phi float [ %1861, %1859 ], [ %1867, %1864 ]
  %1872 = phi float [ %1863, %1859 ], [ %1869, %1864 ]
  %1873 = fcmp fast olt float %1852, %1701
  %1874 = icmp slt i32 %1849, 3
  %1875 = and i1 %1874, %1873
  br i1 %1875, label %1841, label %1876

; <label>:1876                                    ; preds = %1870
  br label %1877

; <label>:1877                                    ; preds = %1876, %1834
  %1878 = phi float [ %1699, %1834 ], [ %1871, %1876 ]
  %1879 = phi float [ %1700, %1834 ], [ %1872, %1876 ]
  %1880 = fsub fast float %1615, %1878
  %1881 = select i1 %1617, float %1878, float %1880
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1885 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.CBufRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1890 = extractvalue %dx.types.CBufRet.f32 %1886, 3
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 3
  %1893 = call float @dx.op.binary.f32(i32 36, float %1879, float %1892)  ; FMin(a,b)
  %1894 = fmul fast float %1890, %1881
  %1895 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1896 = fsub fast float %1887, %1883
  %1897 = fsub fast float %1888, %1884
  %1898 = fsub fast float %1889, %1885
  %1899 = fmul fast float %1895, %1896
  %1900 = fmul fast float %1895, %1897
  %1901 = fmul fast float %1895, %1898
  %1902 = fadd fast float %1899, %1883
  %1903 = fadd fast float %1900, %1884
  %1904 = fadd fast float %1901, %1885
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.CBufRet.f32 %1905, 1
  %1908 = fadd fast float %1907, %1906
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1905, 2
  %1911 = extractvalue %dx.types.CBufRet.f32 %1905, 3
  %1912 = fadd fast float %1911, %1910
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = fmul fast float %1909, %1893
  %1915 = fmul fast float %1914, %1913
  br label %1916

; <label>:1916                                    ; preds = %1877, %1796, %1631, %1613, %1611
  %1917 = phi float [ %1640, %1631 ], [ %1799, %1796 ], [ %1881, %1877 ], [ 0.000000e+00, %1611 ], [ 0.000000e+00, %1613 ]
  %1918 = phi float [ %1674, %1631 ], [ %1833, %1796 ], [ %1915, %1877 ], [ 0.000000e+00, %1611 ], [ 0.000000e+00, %1613 ]
  %1919 = phi float [ %1661, %1631 ], [ %1820, %1796 ], [ %1902, %1877 ], [ 0.000000e+00, %1611 ], [ 0.000000e+00, %1613 ]
  %1920 = phi float [ %1662, %1631 ], [ %1821, %1796 ], [ %1903, %1877 ], [ 0.000000e+00, %1611 ], [ 0.000000e+00, %1613 ]
  %1921 = phi float [ %1663, %1631 ], [ %1822, %1796 ], [ %1904, %1877 ], [ 0.000000e+00, %1611 ], [ 0.000000e+00, %1613 ]
  %1922 = fmul fast float %1554, %1918
  %1923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1923, 2
  %1925 = fsub fast float %1561, %1924
  %1926 = fcmp fast olt float %1922, -2.000000e+01
  %1927 = call float @dx.op.unary.f32(i32 21, float %1922)  ; Exp(value)
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 2
  %1930 = extractvalue %dx.types.CBufRet.f32 %1928, 3
  %1931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.f32 %1931, 2
  %1933 = fmul fast float %1930, %1925
  %1934 = call float @dx.op.unary.f32(i32 7, float %1933)  ; Saturate(value)
  %1935 = fsub fast float 1.000000e+00, %1934
  %1936 = fmul fast float %183, 5.000000e-01
  %1937 = fadd fast float %1936, 5.000000e-01
  %1938 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1939 = fsub fast float 1.000000e+00, %1938
  %1940 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1935)  ; FMax(a,b)
  %1941 = fdiv fast float %1939, %1940
  %1942 = fsub fast float %1925, %171
  %1943 = call float @dx.op.unary.f32(i32 6, float %1942)  ; FAbs(value)
  %1944 = fmul fast float %1943, %1929
  %1945 = call float @dx.op.unary.f32(i32 7, float %1941)  ; Saturate(value)
  %1946 = fsub fast float 1.000000e+00, %1944
  %1947 = fmul fast float %1946, %1945
  %1948 = fadd fast float %1947, %1944
  %1949 = fmul fast float %1932, %1925
  %1950 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1951 = fsub fast float 1.000000e+00, %1948
  %1952 = fmul fast float %1951, %1950
  %1953 = fadd fast float %1952, %1948
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1955 = fadd fast float %1927, -1.000000e+00
  %1956 = select i1 %1926, float -1.000000e+00, float %1955
  %1957 = fmul fast float %1954, %1956
  %1958 = fadd fast float %1957, 1.000000e+00
  %1959 = fsub fast float -0.000000e+00, %1957
  %1960 = fmul fast float %1919, %1959
  %1961 = fmul fast float %1920, %1959
  %1962 = fmul fast float %1921, %1959
  br label %1963

; <label>:1963                                    ; preds = %1916, %1517
  %1964 = phi float [ %1917, %1916 ], [ 0.000000e+00, %1517 ]
  %1965 = phi float [ %1958, %1916 ], [ 1.000000e+00, %1517 ]
  %1966 = phi float [ %1960, %1916 ], [ 0.000000e+00, %1517 ]
  %1967 = phi float [ %1961, %1916 ], [ 0.000000e+00, %1517 ]
  %1968 = phi float [ %1962, %1916 ], [ 0.000000e+00, %1517 ]
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1971 = fsub fast float 1.000000e+00, %1965
  %1972 = fmul fast float %1971, %1547
  %1973 = fmul fast float %1972, %1970
  %1974 = fsub fast float %1547, %1973
  br i1 %1545, label %1975, label %2004, !dx.controlflow.hints !103

; <label>:1975                                    ; preds = %1963
  %1976 = fmul fast float %1548, %1542
  %1977 = fadd fast float %1976, %1543
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = fmul fast float %1524, %1974
  %1980 = fsub fast float -0.000000e+00, %1979
  %1981 = fmul fast float %1525, %1974
  %1982 = fsub fast float -0.000000e+00, %1981
  %1983 = call float @dx.op.unary.f32(i32 21, float %1980)  ; Exp(value)
  %1984 = call float @dx.op.unary.f32(i32 21, float %1982)  ; Exp(value)
  %1985 = call float @dx.op.binary.f32(i32 35, float %1532, float %1983)  ; FMax(a,b)
  %1986 = call float @dx.op.binary.f32(i32 35, float %1532, float %1984)  ; FMax(a,b)
  %1987 = fsub fast float %1986, %1985
  %1988 = fmul fast float %1987, %1978
  %1989 = fadd fast float %1988, %1985
  %1990 = call float @dx.op.unary.f32(i32 7, float %1989)  ; Saturate(value)
  %1991 = fsub fast float %1529, %1534
  %1992 = fsub fast float %1530, %1535
  %1993 = fsub fast float %1531, %1536
  %1994 = fmul fast float %1978, %1991
  %1995 = fmul fast float %1978, %1992
  %1996 = fmul fast float %1978, %1993
  %1997 = fadd fast float %1994, %1534
  %1998 = fadd fast float %1995, %1535
  %1999 = fadd fast float %1996, %1536
  %2000 = fsub fast float 1.000000e+00, %1990
  %2001 = fmul fast float %2000, %1997
  %2002 = fmul fast float %2000, %1998
  %2003 = fmul fast float %2000, %1999
  br label %2063

; <label>:2004                                    ; preds = %1963
  %2005 = fmul fast float %1974, %1541
  %2006 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  %2007 = fsub fast float 2.000000e+00, %2006
  %2008 = fmul fast float %2006, 9.921875e-01
  %2009 = fmul fast float %2008, %2007
  %2010 = fadd fast float %2009, 3.906250e-03
  %2011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %2010, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = fsub fast float %2006, %2012
  %2014 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2013)  ; FMax(a,b)
  %2015 = fmul fast float %1527, %171
  %2016 = call float @dx.op.unary.f32(i32 6, float %2015)  ; FAbs(value)
  %2017 = fcmp fast ogt float %2016, 0x3EB0C6F7A0000000
  br i1 %2017, label %2018, label %2024, !dx.controlflow.hints !104

; <label>:2018                                    ; preds = %2004
  %2019 = fmul fast float %2015, 0xBFF7154760000000
  %2020 = call float @dx.op.unary.f32(i32 21, float %2019)  ; Exp(value)
  %2021 = fsub fast float 1.000000e+00, %2020
  %2022 = fdiv fast float %2021, %2015
  %2023 = fmul fast float %2022, %1537
  br label %2024

; <label>:2024                                    ; preds = %2018, %2004
  %2025 = phi float [ %2023, %2018 ], [ %1537, %2004 ]
  %2026 = fadd fast float %2025, %1539
  %2027 = fmul fast float %2026, %2014
  %2028 = fmul fast float %1524, %2027
  %2029 = fsub fast float -0.000000e+00, %2028
  %2030 = fmul fast float %1525, %2027
  %2031 = fsub fast float -0.000000e+00, %2030
  %2032 = fmul fast float %1526, %2027
  %2033 = fsub fast float -0.000000e+00, %2032
  %2034 = call float @dx.op.unary.f32(i32 21, float %2029)  ; Exp(value)
  %2035 = call float @dx.op.unary.f32(i32 21, float %2031)  ; Exp(value)
  %2036 = call float @dx.op.unary.f32(i32 21, float %2033)  ; Exp(value)
  %2037 = fmul fast float %1548, %1548
  %2038 = fadd fast float %2037, 1.000000e+00
  %2039 = fmul fast float %2038, 0x3FAE8EC8A0000000
  %2040 = fmul fast float %2039, %1534
  %2041 = fmul fast float %2039, %1535
  %2042 = fmul fast float %2039, %1536
  %2043 = fmul fast float %1548, %1532
  %2044 = fsub fast float 1.000000e+00, %2043
  %2045 = fmul fast float %1532, %1532
  %2046 = fsub fast float 1.000000e+00, %2045
  %2047 = fmul fast float %2046, 0x3FB45F3060000000
  %2048 = fmul fast float %2044, %2044
  %2049 = fdiv fast float 1.000000e+00, %2048
  %2050 = fmul fast float %2047, %2049
  %2051 = fmul fast float %2050, %1529
  %2052 = fmul fast float %2050, %1530
  %2053 = fmul fast float %2050, %1531
  %2054 = fadd fast float %2051, %2040
  %2055 = fadd fast float %2052, %2041
  %2056 = fadd fast float %2053, %2042
  %2057 = fsub fast float 1.000000e+00, %2034
  %2058 = fsub fast float 1.000000e+00, %2035
  %2059 = fsub fast float 1.000000e+00, %2036
  %2060 = fmul fast float %2054, %2057
  %2061 = fmul fast float %2055, %2058
  %2062 = fmul fast float %2056, %2059
  br label %2063

; <label>:2063                                    ; preds = %2024, %1975
  %2064 = phi float [ %2001, %1975 ], [ %2060, %2024 ]
  %2065 = phi float [ %2002, %1975 ], [ %2061, %2024 ]
  %2066 = phi float [ %2003, %1975 ], [ %2062, %2024 ]
  %2067 = phi float [ %1990, %1975 ], [ %2034, %2024 ]
  %2068 = phi float [ %1990, %1975 ], [ %2035, %2024 ]
  %2069 = phi float [ %1990, %1975 ], [ %2036, %2024 ]
  br i1 %1556, label %2070, label %2268, !dx.controlflow.hints !105

; <label>:2070                                    ; preds = %2063
  %2071 = extractvalue %dx.types.CBufRet.f32 %1969, 0
  %2072 = fmul fast float %2071, %1971
  %2073 = fsub fast float %1966, %2064
  %2074 = fsub fast float %1967, %2065
  %2075 = fsub fast float %1968, %2066
  %2076 = fmul fast float %2072, %2073
  %2077 = fmul fast float %2072, %2074
  %2078 = fmul fast float %2072, %2075
  %2079 = fadd fast float %2076, %2064
  %2080 = fadd fast float %2077, %2065
  %2081 = fadd fast float %2078, %2066
  %2082 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2067)  ; FMax(a,b)
  %2083 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2068)  ; FMax(a,b)
  %2084 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2069)  ; FMax(a,b)
  %2085 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1965)  ; FMax(a,b)
  %2086 = call float @dx.op.binary.f32(i32 35, float %1964, float %1974)  ; FMax(a,b)
  %2087 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2086)  ; FMax(a,b)
  %2088 = fdiv fast float %1964, %2087
  %2089 = call float @dx.op.unary.f32(i32 7, float %2088)  ; Saturate(value)
  %2090 = fdiv fast float %1974, %2087
  %2091 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  %2092 = fcmp fast une float %2085, 1.000000e+00
  br i1 %2092, label %2093, label %2106, !dx.controlflow.hints !106

; <label>:2093                                    ; preds = %2070
  %2094 = call float @dx.op.unary.f32(i32 23, float %2085)  ; Log(value)
  %2095 = fmul fast float %2094, 0x3FE62E4300000000
  %2096 = fmul fast float %1966, %2095
  %2097 = fsub fast float -0.000000e+00, %2096
  %2098 = fmul fast float %1967, %2095
  %2099 = fsub fast float -0.000000e+00, %2098
  %2100 = fmul fast float %1968, %2095
  %2101 = fsub fast float -0.000000e+00, %2100
  %2102 = fsub fast float 1.000000e+00, %2085
  %2103 = fdiv fast float %2097, %2102
  %2104 = fdiv fast float %2099, %2102
  %2105 = fdiv fast float %2101, %2102
  br label %2106

; <label>:2106                                    ; preds = %2093, %2070
  %2107 = phi float [ %2103, %2093 ], [ %1966, %2070 ]
  %2108 = phi float [ %2104, %2093 ], [ %1967, %2070 ]
  %2109 = phi float [ %2105, %2093 ], [ %1968, %2070 ]
  %2110 = phi float [ %2095, %2093 ], [ 0.000000e+00, %2070 ]
  %2111 = fcmp fast une float %2082, 1.000000e+00
  br i1 %2111, label %2112, label %2119, !dx.controlflow.hints !107

; <label>:2112                                    ; preds = %2106
  %2113 = call float @dx.op.unary.f32(i32 23, float %2082)  ; Log(value)
  %2114 = fmul fast float %2113, 0x3FE62E4300000000
  %2115 = fmul fast float %2079, %2114
  %2116 = fsub fast float -0.000000e+00, %2115
  %2117 = fsub fast float 1.000000e+00, %2082
  %2118 = fdiv fast float %2116, %2117
  br label %2119

; <label>:2119                                    ; preds = %2112, %2106
  %2120 = phi float [ %2118, %2112 ], [ %2079, %2106 ]
  %2121 = phi float [ %2114, %2112 ], [ 0.000000e+00, %2106 ]
  %2122 = fcmp fast une float %2083, 1.000000e+00
  br i1 %2122, label %2123, label %2130, !dx.controlflow.hints !107

; <label>:2123                                    ; preds = %2119
  %2124 = call float @dx.op.unary.f32(i32 23, float %2083)  ; Log(value)
  %2125 = fmul fast float %2124, 0x3FE62E4300000000
  %2126 = fmul fast float %2080, %2125
  %2127 = fsub fast float -0.000000e+00, %2126
  %2128 = fsub fast float 1.000000e+00, %2083
  %2129 = fdiv fast float %2127, %2128
  br label %2130

; <label>:2130                                    ; preds = %2123, %2119
  %2131 = phi float [ %2129, %2123 ], [ %2080, %2119 ]
  %2132 = phi float [ %2125, %2123 ], [ 0.000000e+00, %2119 ]
  %2133 = fcmp fast une float %2084, 1.000000e+00
  br i1 %2133, label %2134, label %2141, !dx.controlflow.hints !107

; <label>:2134                                    ; preds = %2130
  %2135 = call float @dx.op.unary.f32(i32 23, float %2084)  ; Log(value)
  %2136 = fmul fast float %2135, 0x3FE62E4300000000
  %2137 = fmul fast float %2081, %2136
  %2138 = fsub fast float -0.000000e+00, %2137
  %2139 = fsub fast float 1.000000e+00, %2084
  %2140 = fdiv fast float %2138, %2139
  br label %2141

; <label>:2141                                    ; preds = %2134, %2130
  %2142 = phi float [ %2140, %2134 ], [ %2081, %2130 ]
  %2143 = phi float [ %2136, %2134 ], [ 0.000000e+00, %2130 ]
  %2144 = fmul fast float %2107, %2091
  %2145 = fmul fast float %2108, %2091
  %2146 = fmul fast float %2109, %2091
  %2147 = fmul fast float %2110, %2091
  %2148 = fmul fast float %2120, %2089
  %2149 = fmul fast float %2131, %2089
  %2150 = fmul fast float %2142, %2089
  %2151 = fmul fast float %2121, %2089
  %2152 = fmul fast float %2132, %2089
  %2153 = fmul fast float %2143, %2089
  %2154 = fadd fast float %2148, %2144
  %2155 = fadd fast float %2149, %2145
  %2156 = fadd fast float %2150, %2146
  %2157 = fadd fast float %2151, %2147
  %2158 = fadd fast float %2152, %2147
  %2159 = fadd fast float %2153, %2147
  %2160 = fcmp fast une float %2157, 0.000000e+00
  br i1 %2160, label %2161, label %2168, !dx.controlflow.hints !108

; <label>:2161                                    ; preds = %2141
  %2162 = fmul fast float %2157, 0x3FF7154760000000
  %2163 = call float @dx.op.unary.f32(i32 21, float %2162)  ; Exp(value)
  %2164 = fsub fast float 1.000000e+00, %2163
  %2165 = fmul fast float %2154, %2164
  %2166 = fsub fast float -0.000000e+00, %2165
  %2167 = fdiv fast float %2166, %2157
  br label %2168

; <label>:2168                                    ; preds = %2161, %2141
  %2169 = phi float [ %2163, %2161 ], [ 1.000000e+00, %2141 ]
  %2170 = phi float [ %2167, %2161 ], [ %2154, %2141 ]
  %2171 = fcmp fast une float %2158, 0.000000e+00
  br i1 %2171, label %2172, label %2179, !dx.controlflow.hints !108

; <label>:2172                                    ; preds = %2168
  %2173 = fmul fast float %2158, 0x3FF7154760000000
  %2174 = call float @dx.op.unary.f32(i32 21, float %2173)  ; Exp(value)
  %2175 = fsub fast float 1.000000e+00, %2174
  %2176 = fmul fast float %2155, %2175
  %2177 = fsub fast float -0.000000e+00, %2176
  %2178 = fdiv fast float %2177, %2158
  br label %2179

; <label>:2179                                    ; preds = %2172, %2168
  %2180 = phi float [ %2174, %2172 ], [ 1.000000e+00, %2168 ]
  %2181 = phi float [ %2178, %2172 ], [ %2155, %2168 ]
  %2182 = fcmp fast une float %2159, 0.000000e+00
  br i1 %2182, label %2183, label %2190, !dx.controlflow.hints !108

; <label>:2183                                    ; preds = %2179
  %2184 = fmul fast float %2159, 0x3FF7154760000000
  %2185 = call float @dx.op.unary.f32(i32 21, float %2184)  ; Exp(value)
  %2186 = fsub fast float 1.000000e+00, %2185
  %2187 = fmul fast float %2156, %2186
  %2188 = fsub fast float -0.000000e+00, %2187
  %2189 = fdiv fast float %2188, %2159
  br label %2190

; <label>:2190                                    ; preds = %2183, %2179
  %2191 = phi float [ %2185, %2183 ], [ 1.000000e+00, %2179 ]
  %2192 = phi float [ %2189, %2183 ], [ %2156, %2179 ]
  %2193 = fcmp fast ogt float %2089, %2091
  br i1 %2193, label %2194, label %2214, !dx.controlflow.hints !109

; <label>:2194                                    ; preds = %2190
  %2195 = fsub fast float 1.000000e+00, %2091
  %2196 = fmul fast float %2107, %2195
  %2197 = fmul fast float %2108, %2195
  %2198 = fmul fast float %2109, %2195
  %2199 = fmul fast float %2110, %2195
  %2200 = fcmp fast une float %2199, 0.000000e+00
  br i1 %2200, label %2201, label %2252, !dx.controlflow.hints !110

; <label>:2201                                    ; preds = %2194
  %2202 = fmul fast float %2199, 0x3FF7154760000000
  %2203 = call float @dx.op.unary.f32(i32 21, float %2202)  ; Exp(value)
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = fmul fast float %2196, %2204
  %2206 = fsub fast float -0.000000e+00, %2205
  %2207 = fmul fast float %2197, %2204
  %2208 = fsub fast float -0.000000e+00, %2207
  %2209 = fmul fast float %2198, %2204
  %2210 = fsub fast float -0.000000e+00, %2209
  %2211 = fdiv fast float %2206, %2199
  %2212 = fdiv fast float %2208, %2199
  %2213 = fdiv fast float %2210, %2199
  br label %2252

; <label>:2214                                    ; preds = %2190
  %2215 = fsub fast float 1.000000e+00, %2089
  %2216 = fmul fast float %2120, %2215
  %2217 = fmul fast float %2131, %2215
  %2218 = fmul fast float %2142, %2215
  %2219 = fmul fast float %2121, %2215
  %2220 = fmul fast float %2132, %2215
  %2221 = fmul fast float %2143, %2215
  %2222 = fcmp fast une float %2219, 0.000000e+00
  br i1 %2222, label %2223, label %2230, !dx.controlflow.hints !108

; <label>:2223                                    ; preds = %2214
  %2224 = fmul fast float %2219, 0x3FF7154760000000
  %2225 = call float @dx.op.unary.f32(i32 21, float %2224)  ; Exp(value)
  %2226 = fsub fast float 1.000000e+00, %2225
  %2227 = fmul fast float %2216, %2226
  %2228 = fsub fast float -0.000000e+00, %2227
  %2229 = fdiv fast float %2228, %2219
  br label %2230

; <label>:2230                                    ; preds = %2223, %2214
  %2231 = phi float [ %2229, %2223 ], [ %2216, %2214 ]
  %2232 = phi float [ %2225, %2223 ], [ 1.000000e+00, %2214 ]
  %2233 = fcmp fast une float %2220, 0.000000e+00
  br i1 %2233, label %2234, label %2241, !dx.controlflow.hints !108

; <label>:2234                                    ; preds = %2230
  %2235 = fmul fast float %2220, 0x3FF7154760000000
  %2236 = call float @dx.op.unary.f32(i32 21, float %2235)  ; Exp(value)
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = fmul fast float %2217, %2237
  %2239 = fsub fast float -0.000000e+00, %2238
  %2240 = fdiv fast float %2239, %2220
  br label %2241

; <label>:2241                                    ; preds = %2234, %2230
  %2242 = phi float [ %2240, %2234 ], [ %2217, %2230 ]
  %2243 = phi float [ %2236, %2234 ], [ 1.000000e+00, %2230 ]
  %2244 = fcmp fast une float %2221, 0.000000e+00
  br i1 %2244, label %2245, label %2252, !dx.controlflow.hints !108

; <label>:2245                                    ; preds = %2241
  %2246 = fmul fast float %2221, 0x3FF7154760000000
  %2247 = call float @dx.op.unary.f32(i32 21, float %2246)  ; Exp(value)
  %2248 = fsub fast float 1.000000e+00, %2247
  %2249 = fmul fast float %2218, %2248
  %2250 = fsub fast float -0.000000e+00, %2249
  %2251 = fdiv fast float %2250, %2221
  br label %2252

; <label>:2252                                    ; preds = %2245, %2241, %2201, %2194
  %2253 = phi float [ %2251, %2245 ], [ %2213, %2201 ], [ %2198, %2194 ], [ %2218, %2241 ]
  %2254 = phi float [ %2242, %2245 ], [ %2212, %2201 ], [ %2197, %2194 ], [ %2242, %2241 ]
  %2255 = phi float [ %2231, %2245 ], [ %2211, %2201 ], [ %2196, %2194 ], [ %2231, %2241 ]
  %2256 = phi float [ %2247, %2245 ], [ %2203, %2201 ], [ 1.000000e+00, %2194 ], [ 1.000000e+00, %2241 ]
  %2257 = phi float [ %2243, %2245 ], [ %2203, %2201 ], [ 1.000000e+00, %2194 ], [ %2243, %2241 ]
  %2258 = phi float [ %2232, %2245 ], [ %2203, %2201 ], [ 1.000000e+00, %2194 ], [ %2232, %2241 ]
  %2259 = fmul fast float %2258, %2170
  %2260 = fmul fast float %2257, %2181
  %2261 = fmul fast float %2256, %2192
  %2262 = fadd fast float %2259, %2255
  %2263 = fadd fast float %2260, %2254
  %2264 = fadd fast float %2261, %2253
  %2265 = fmul fast float %2258, %2169
  %2266 = fmul fast float %2257, %2180
  %2267 = fmul fast float %2256, %2191
  br label %2268

; <label>:2268                                    ; preds = %2252, %2063
  %2269 = phi float [ %2267, %2252 ], [ %2069, %2063 ]
  %2270 = phi float [ %2266, %2252 ], [ %2068, %2063 ]
  %2271 = phi float [ %2265, %2252 ], [ %2067, %2063 ]
  %2272 = phi float [ %2264, %2252 ], [ %2066, %2063 ]
  %2273 = phi float [ %2263, %2252 ], [ %2065, %2063 ]
  %2274 = phi float [ %2262, %2252 ], [ %2064, %2063 ]
  %2275 = fmul fast float %2271, %1514
  %2276 = fmul fast float %2270, %1515
  %2277 = fmul fast float %2269, %1516
  %2278 = fmul fast float %320, 0xBFF7154760000000
  %2279 = call float @dx.op.unary.f32(i32 21, float %2278)  ; Exp(value)
  %2280 = call float @dx.op.unary.f32(i32 7, float %2279)  ; Saturate(value)
  %2281 = fsub fast float 1.000000e+00, %2280
  %2282 = fmul fast float %2281, %2274
  %2283 = fmul fast float %2281, %2273
  %2284 = fmul fast float %2281, %2272
  %2285 = fadd fast float %2282, %2275
  %2286 = fadd fast float %2283, %2276
  %2287 = fadd fast float %2284, %2277
  br label %2288

; <label>:2288                                    ; preds = %2268, %1504
  %2289 = phi float [ %2285, %2268 ], [ %1514, %1504 ]
  %2290 = phi float [ %2286, %2268 ], [ %1515, %1504 ]
  %2291 = phi float [ %2287, %2268 ], [ %1516, %1504 ]
  %2292 = xor i1 %222, true
  %2293 = and i1 %62, %2292
  %2294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.f32 %2294, 0
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = select i1 %186, float %2295, float %2297
  %2299 = fmul fast float %2298, %2289
  %2300 = fmul fast float %2298, %2290
  %2301 = fmul fast float %2298, %2291
  %2302 = fmul fast float %2300, 5.000000e-01
  %2303 = fadd fast float %2291, %2289
  %2304 = fmul fast float %2298, %2303
  %2305 = fmul fast float %2304, 2.500000e-01
  %2306 = fadd fast float %2305, %2302
  %2307 = call float @dx.op.unary.f32(i32 23, float %2306)  ; Log(value)
  %2308 = fmul fast float %2307, 0x3FE62E4300000000
  %2309 = fmul fast float %2308, %2308
  %2310 = select i1 %2293, float 1.000000e+00, float 0.000000e+00
  store float %2310, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  %2311 = fmul fast float %2308, %2310
  store float %2311, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  %2312 = fmul fast float %2309, %2310
  store float %2312, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2313 = load float, float addrspace(3)* %233, align 4, !tbaa !35, !noalias !39
  %2314 = fadd fast float %2313, %2310
  %2315 = load float, float addrspace(3)* %236, align 4, !tbaa !35, !noalias !39
  %2316 = fadd fast float %2315, %2308
  %2317 = load float, float addrspace(3)* %239, align 4, !tbaa !35, !noalias !39
  %2318 = fadd fast float %2317, %2309
  store float %2314, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  store float %2316, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  store float %2318, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2319 = load float, float addrspace(3)* %243, align 4, !tbaa !35, !noalias !39
  %2320 = fadd fast float %2319, %2314
  %2321 = load float, float addrspace(3)* %246, align 4, !tbaa !35, !noalias !39
  %2322 = fadd fast float %2321, %2316
  %2323 = load float, float addrspace(3)* %249, align 4, !tbaa !35, !noalias !39
  %2324 = fadd fast float %2323, %2318
  store float %2320, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  store float %2322, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  store float %2324, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2325 = load float, float addrspace(3)* %253, align 4, !tbaa !35, !noalias !39
  %2326 = fadd fast float %2325, %2320
  %2327 = load float, float addrspace(3)* %256, align 4, !tbaa !35, !noalias !39
  %2328 = fadd fast float %2327, %2322
  %2329 = fdiv fast float %2328, %2326
  %2330 = and i1 %2293, %263
  br i1 %2330, label %2331, label %2339, !dx.controlflow.hints !43

; <label>:2331                                    ; preds = %2288
  %2332 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %252
  %2333 = load float, float addrspace(3)* %2332, align 4, !tbaa !35, !noalias !39
  %2334 = fadd fast float %2333, %2324
  %2335 = fdiv fast float %2334, %2326
  %2336 = lshr i32 %50, 1
  %2337 = lshr i32 %51, 1
  %2338 = lshr i32 %221, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2336, i32 %2337, i32 %2338, float %2329, float %2335, float %2329, float %2329, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2339

; <label>:2339                                    ; preds = %2331, %2288
  br i1 %2293, label %2340, label %2374, !dx.controlflow.hints !44

; <label>:2340                                    ; preds = %2339
  %2341 = fadd fast float %100, 0x3FE3C6EF40000000
  %2342 = call float @dx.op.unary.f32(i32 22, float %2341)  ; Frc(value)
  %2343 = call float @dx.op.unary.f32(i32 23, float %2299)  ; Log(value)
  %2344 = fadd fast float %2343, -7.000000e+00
  %2345 = call float @dx.op.unary.f32(i32 21, float %2344)  ; Exp(value)
  %2346 = fmul fast float %2342, 2.000000e+00
  %2347 = fadd fast float %2346, -1.000000e+00
  %2348 = fmul fast float %2345, %2347
  %2349 = fcmp fast ogt float %2299, 0.000000e+00
  %2350 = select i1 %2349, float %2348, float 0.000000e+00
  %2351 = fadd fast float %2350, %2299
  %2352 = fadd fast float %100, 0x3FF3C6EF40000000
  %2353 = call float @dx.op.unary.f32(i32 22, float %2352)  ; Frc(value)
  %2354 = call float @dx.op.unary.f32(i32 23, float %2300)  ; Log(value)
  %2355 = fadd fast float %2354, -7.000000e+00
  %2356 = call float @dx.op.unary.f32(i32 21, float %2355)  ; Exp(value)
  %2357 = fmul fast float %2353, 2.000000e+00
  %2358 = fadd fast float %2357, -1.000000e+00
  %2359 = fmul fast float %2356, %2358
  %2360 = fcmp fast ogt float %2300, 0.000000e+00
  %2361 = select i1 %2360, float %2359, float 0.000000e+00
  %2362 = fadd fast float %2361, %2300
  %2363 = fadd fast float %100, 0x3FFDAA66E0000000
  %2364 = call float @dx.op.unary.f32(i32 22, float %2363)  ; Frc(value)
  %2365 = call float @dx.op.unary.f32(i32 23, float %2301)  ; Log(value)
  %2366 = fadd fast float %2365, -6.000000e+00
  %2367 = call float @dx.op.unary.f32(i32 21, float %2366)  ; Exp(value)
  %2368 = fmul fast float %2364, 2.000000e+00
  %2369 = fadd fast float %2368, -1.000000e+00
  %2370 = fmul fast float %2367, %2369
  %2371 = fcmp fast ogt float %2301, 0.000000e+00
  %2372 = select i1 %2371, float %2370, float 0.000000e+00
  %2373 = fadd fast float %2372, %2301
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %50, i32 %51, i32 %221, float %2351, float %2362, float %2373, float %2351, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2374

; <label>:2374                                    ; preds = %2340, %2339
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2377, 0
  %2379 = select i1 %186, float %2376, float %2378
  %2380 = fmul fast float %2379, %320
  %2381 = fmul fast float %2380, 5.000000e-01
  %2382 = fadd fast float %320, %320
  %2383 = fmul fast float %2379, %2382
  %2384 = fmul fast float %2383, 2.500000e-01
  %2385 = fadd fast float %2384, %2381
  %2386 = fmul fast float %2385, %2385
  store float %2310, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  %2387 = fmul fast float %2385, %2310
  store float %2387, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  %2388 = fmul fast float %2386, %2310
  store float %2388, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2389 = load float, float addrspace(3)* %233, align 4, !tbaa !35, !noalias !39
  %2390 = fadd fast float %2389, %2310
  %2391 = load float, float addrspace(3)* %236, align 4, !tbaa !35, !noalias !39
  %2392 = fadd fast float %2385, %2391
  %2393 = load float, float addrspace(3)* %239, align 4, !tbaa !35, !noalias !39
  %2394 = fadd fast float %2386, %2393
  store float %2390, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  store float %2392, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  store float %2394, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2395 = load float, float addrspace(3)* %243, align 4, !tbaa !35, !noalias !39
  %2396 = fadd fast float %2395, %2390
  %2397 = load float, float addrspace(3)* %246, align 4, !tbaa !35, !noalias !39
  %2398 = fadd fast float %2392, %2397
  %2399 = load float, float addrspace(3)* %249, align 4, !tbaa !35, !noalias !39
  %2400 = fadd fast float %2394, %2399
  store float %2396, float addrspace(3)* %227, align 4, !tbaa !35, !noalias !39
  store float %2398, float addrspace(3)* %229, align 4, !tbaa !35, !noalias !39
  store float %2400, float addrspace(3)* %231, align 4, !tbaa !35, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2401 = load float, float addrspace(3)* %253, align 4, !tbaa !35, !noalias !39
  %2402 = fadd fast float %2401, %2396
  %2403 = load float, float addrspace(3)* %256, align 4, !tbaa !35, !noalias !39
  %2404 = fadd fast float %2403, %2398
  %2405 = fdiv fast float %2404, %2402
  br i1 %2330, label %2406, label %2414, !dx.controlflow.hints !45

; <label>:2406                                    ; preds = %2374
  %2407 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %252
  %2408 = load float, float addrspace(3)* %2407, align 4, !tbaa !35, !noalias !39
  %2409 = fadd fast float %2408, %2400
  %2410 = fdiv fast float %2409, %2402
  %2411 = lshr i32 %50, 1
  %2412 = lshr i32 %51, 1
  %2413 = lshr i32 %221, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2411, i32 %2412, i32 %2413, float %2405, float %2410, float %2405, float %2405, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2414

; <label>:2414                                    ; preds = %2406, %2374
  br i1 %2293, label %2415, label %2443, !dx.controlflow.hints !46

; <label>:2415                                    ; preds = %2414
  %2416 = fadd fast float %100, 0x3FE3C6EF40000000
  %2417 = call float @dx.op.unary.f32(i32 22, float %2416)  ; Frc(value)
  %2418 = call float @dx.op.unary.f32(i32 23, float %2380)  ; Log(value)
  %2419 = fadd fast float %2418, -7.000000e+00
  %2420 = call float @dx.op.unary.f32(i32 21, float %2419)  ; Exp(value)
  %2421 = fmul fast float %2417, 2.000000e+00
  %2422 = fadd fast float %2421, -1.000000e+00
  %2423 = fmul fast float %2420, %2422
  %2424 = fcmp fast ogt float %2380, 0.000000e+00
  %2425 = select i1 %2424, float %2423, float 0.000000e+00
  %2426 = fadd fast float %2425, %2380
  %2427 = fadd fast float %100, 0x3FF3C6EF40000000
  %2428 = call float @dx.op.unary.f32(i32 22, float %2427)  ; Frc(value)
  %2429 = fmul fast float %2428, 2.000000e+00
  %2430 = fadd fast float %2429, -1.000000e+00
  %2431 = fmul fast float %2420, %2430
  %2432 = select i1 %2424, float %2431, float 0.000000e+00
  %2433 = fadd fast float %2432, %2380
  %2434 = fadd fast float %100, 0x3FFDAA66E0000000
  %2435 = call float @dx.op.unary.f32(i32 22, float %2434)  ; Frc(value)
  %2436 = fadd fast float %2418, -6.000000e+00
  %2437 = call float @dx.op.unary.f32(i32 21, float %2436)  ; Exp(value)
  %2438 = fmul fast float %2435, 2.000000e+00
  %2439 = fadd fast float %2438, -1.000000e+00
  %2440 = fmul fast float %2437, %2439
  %2441 = select i1 %2424, float %2440, float 0.000000e+00
  %2442 = fadd fast float %2441, %2380
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %50, i32 %51, i32 %221, float %2426, float %2433, float %2442, float %2426, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2443

; <label>:2443                                    ; preds = %2415, %2414
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

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
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !20, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
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
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!19 = !{i32 12, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!20 = !{!21, !22, !23, !24}
!21 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!22 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!23 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!24 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!28 = !{!29, !30, !31}
!29 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{void ()* @cs_volumetric_forwardplus_scatter_global_water_afog, !"cs_volumetric_forwardplus_scatter_global_water_afog", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 4, i32 4, i32 4}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!41 = distinct !{!41, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!42 = distinct !{!42, !41, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
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
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = !{!75, !77, !79, !40, !42}
!75 = distinct !{!75, !76, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!76 = distinct !{!76, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!77 = distinct !{!77, !78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!78 = distinct !{!78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!79 = distinct !{!79, !78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = !{!82}
!82 = distinct !{!82, !83, !"\01?sort@@YAXAIAM00@Z: %c"}
!83 = distinct !{!83, !"\01?sort@@YAXAIAM00@Z"}
!84 = !{!85, !86, !75, !77, !79, !40, !42}
!85 = distinct !{!85, !83, !"\01?sort@@YAXAIAM00@Z: %a"}
!86 = distinct !{!86, !83, !"\01?sort@@YAXAIAM00@Z: %b"}
!87 = !{!86}
!88 = !{!85, !82, !75, !77, !79, !40, !42}
!89 = !{!85}
!90 = !{!86, !82, !75, !77, !79, !40, !42}
!91 = !{!92}
!92 = distinct !{!92, !93, !"\01?sort@@YAXAIAM00@Z: %c"}
!93 = distinct !{!93, !"\01?sort@@YAXAIAM00@Z"}
!94 = !{!95, !96, !75, !77, !79, !40, !42}
!95 = distinct !{!95, !93, !"\01?sort@@YAXAIAM00@Z: %a"}
!96 = distinct !{!96, !93, !"\01?sort@@YAXAIAM00@Z: %b"}
!97 = !{!96}
!98 = !{!95, !92, !75, !77, !79, !40, !42}
!99 = !{!95}
!100 = !{!96, !92, !75, !77, !79, !40, !42}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}

