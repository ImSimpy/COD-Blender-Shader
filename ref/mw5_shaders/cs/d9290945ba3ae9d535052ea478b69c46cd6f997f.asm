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
; shader hash: 18553364d885438277b0e345512b9e2e
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %23 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %24 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %25 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %26 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 3
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = mul i32 %30, %28
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %34 = mul i32 %31, %33
  %35 = add i32 %34, %25
  %36 = shl i32 %35, 2
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = and i32 %38, 255
  %40 = lshr i32 %38, 8
  %41 = and i32 %40, 255
  %42 = lshr i32 %38, 16
  %43 = and i32 %42, 255
  %44 = shl nuw nsw i32 %39, 2
  %45 = shl nuw nsw i32 %41, 2
  %46 = shl nuw nsw i32 %43, 2
  %47 = add i32 %44, %22
  %48 = add i32 %45, %23
  %49 = add i32 %46, %24
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.i32 %50, 1
  %53 = extractvalue %dx.types.CBufRet.i32 %50, 2
  %54 = icmp uge i32 %47, %51
  %55 = icmp uge i32 %48, %52
  %56 = icmp uge i32 %49, %53
  %57 = or i1 %54, %55
  %58 = or i1 %56, %57
  %59 = xor i1 %58, true
  %60 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.i32 %60, 3
  %62 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %48, i32 %61)  ; UMad(a,b,c)
  %63 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %47, i32 %62)  ; UMad(a,b,c)
  %64 = mul i32 %63, -63
  %65 = lshr i32 %64, 17
  %66 = xor i32 %65, %64
  %67 = mul i32 %66, -511
  %68 = mul i32 %66, -8176
  %69 = xor i32 %67, %68
  %70 = mul i32 %69, -7
  %71 = mul i32 %69, -7168
  %72 = xor i32 %70, %71
  %73 = lshr i32 %72, 15
  %74 = xor i32 %73, %70
  %75 = and i32 %74, 127
  %76 = mul i32 %75, 3
  %77 = add i32 0, %76
  %78 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %77
  %79 = load float, float* %78, align 4
  %80 = mul i32 %75, 3
  %81 = add i32 1, %80
  %82 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %81
  %83 = load float, float* %82, align 4
  %84 = mul i32 %75, 3
  %85 = add i32 2, %84
  %86 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %85
  %87 = load float, float* %86, align 4
  %88 = uitofp i32 %61 to float
  %89 = fmul fast float %88, 0x3FEA36A940000000
  %90 = fmul fast float %88, 0x3FE5793080000000
  %91 = fmul fast float %88, 0x3FE1972580000000
  %92 = fadd fast float %79, %89
  %93 = fadd fast float %83, %90
  %94 = fadd fast float %87, %91
  %95 = call float @dx.op.unary.f32(i32 22, float %92)  ; Frc(value)
  %96 = call float @dx.op.unary.f32(i32 22, float %93)  ; Frc(value)
  %97 = call float @dx.op.unary.f32(i32 22, float %94)  ; Frc(value)
  %98 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %47, i32 %48, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fcmp fast ogt float %99, -1.000000e+00
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %103 = select i1 %100, float %102, float 1.000000e+00
  %104 = fadd fast float %99, 1.000000e+00
  %105 = fmul fast float %103, %104
  %106 = uitofp i32 %47 to float
  %107 = uitofp i32 %48 to float
  %108 = uitofp i32 %49 to float
  %109 = fadd fast float %106, -5.000000e-01
  %110 = fadd fast float %109, %95
  %111 = fadd fast float %107, -5.000000e-01
  %112 = fadd fast float %111, %96
  %113 = fadd fast float %108, -5.000000e-01
  %114 = fadd fast float %113, %97
  %115 = fadd fast float %110, 5.000000e-01
  %116 = fadd fast float %112, 5.000000e-01
  %117 = fadd fast float %114, 5.000000e-01
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %119, %115
  %123 = fmul fast float %120, %116
  %124 = fmul fast float %121, %117
  %125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.i32 %125, 0
  %127 = uitofp i32 %126 to float
  %128 = fmul fast float %127, %124
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = fmul fast float %128, %131
  %133 = call float @dx.op.unary.f32(i32 21, float %132)  ; Exp(value)
  %134 = fmul fast float %133, %130
  %135 = fsub fast float 4.000000e+00, %130
  %136 = fadd fast float %135, %134
  %137 = call float @dx.op.binary.f32(i32 36, float %136, float %105)  ; FMin(a,b)
  %138 = fmul fast float %122, 2.000000e+00
  %139 = fmul fast float %123, 2.000000e+00
  %140 = fsub fast float 1.000000e+00, %138
  %141 = fsub fast float 1.000000e+00, %139
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = fmul fast float %143, %140
  %147 = fmul fast float %144, %140
  %148 = fmul fast float %145, %140
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = fmul fast float %150, %141
  %154 = fmul fast float %151, %141
  %155 = fmul fast float %152, %141
  %156 = fadd fast float %153, %146
  %157 = fadd fast float %154, %147
  %158 = fadd fast float %155, %148
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = fadd fast float %156, %160
  %164 = fadd fast float %157, %161
  %165 = fadd fast float %158, %162
  %166 = fmul fast float %163, %137
  %167 = fmul fast float %164, %137
  %168 = fmul fast float %165, %137
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %173 = fadd fast float %166, %170
  %174 = fadd fast float %167, %171
  %175 = fadd fast float %168, %172
  %176 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = call float @dx.op.unary.f32(i32 25, float %176)  ; Rsqrt(value)
  %178 = fmul fast float %166, %177
  %179 = fmul fast float %167, %177
  %180 = fmul fast float %168, %177
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = fcmp fast ogt float %182, 0.000000e+00
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = fsub fast float %173, %185
  %189 = fadd fast float %188, %187
  %190 = fsub fast float %174, %186
  %191 = fadd fast float %190, %187
  %192 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %193 = fmul fast float %189, %192
  %194 = fmul fast float %191, %192
  %195 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %196 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %197 = fsub fast float 1.000000e+00, %195
  %198 = fsub fast float 1.000000e+00, %196
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %197, float %198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = fmul fast float %202, %200
  %204 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %205 = fadd fast float %204, %203
  %206 = fcmp fast ogt float %200, 0.000000e+00
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = and i32 %208, 32768
  %210 = icmp ne i32 %209, 0
  %211 = and i1 %206, %210
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %214 = fadd fast float %213, %205
  %215 = fcmp fast ole float %175, %214
  %216 = and i1 %211, %215
  %217 = select i1 %183, i32 %126, i32 0
  %218 = add i32 %217, %49
  %219 = xor i1 %183, %216
  %220 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %221 = fmul fast float %220, 0x3FE62E4300000000
  %222 = fmul fast float %221, %221
  %223 = select i1 %58, float 0.000000e+00, float 1.000000e+00
  %224 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %26
  store float %223, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  %225 = fmul fast float %221, %223
  %226 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %26
  store float %225, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  %227 = fmul fast float %222, %223
  %228 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %26
  store float %227, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %229 = xor i32 %26, 4
  %230 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %229
  %231 = load float, float addrspace(3)* %230, align 4, !tbaa !34, !noalias !38
  %232 = fadd fast float %231, %223
  %233 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %229
  %234 = load float, float addrspace(3)* %233, align 4, !tbaa !34, !noalias !38
  %235 = fadd fast float %234, %221
  %236 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %229
  %237 = load float, float addrspace(3)* %236, align 4, !tbaa !34, !noalias !38
  %238 = fadd fast float %237, %222
  store float %232, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  store float %235, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  store float %238, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %239 = xor i32 %26, 16
  %240 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %239
  %241 = load float, float addrspace(3)* %240, align 4, !tbaa !34, !noalias !38
  %242 = fadd fast float %241, %232
  %243 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %239
  %244 = load float, float addrspace(3)* %243, align 4, !tbaa !34, !noalias !38
  %245 = fadd fast float %244, %235
  %246 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %239
  %247 = load float, float addrspace(3)* %246, align 4, !tbaa !34, !noalias !38
  %248 = fadd fast float %247, %238
  store float %242, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  store float %245, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  store float %248, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = xor i32 %26, 1
  %250 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %249
  %251 = load float, float addrspace(3)* %250, align 4, !tbaa !34, !noalias !38
  %252 = fadd fast float %251, %242
  %253 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %249
  %254 = load float, float addrspace(3)* %253, align 4, !tbaa !34, !noalias !38
  %255 = fadd fast float %254, %245
  %256 = fdiv fast float %255, %252
  %257 = and i32 %47, 1
  %258 = and i32 %257, %48
  %259 = and i32 %258, %218
  %260 = icmp ne i32 %259, 0
  %261 = and i1 %260, %59
  br i1 %261, label %262, label %270, !dx.controlflow.hints !42

; <label>:262                                     ; preds = %0
  %263 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %249
  %264 = load float, float addrspace(3)* %263, align 4, !tbaa !34, !noalias !38
  %265 = fadd fast float %264, %248
  %266 = fdiv fast float %265, %252
  %267 = lshr i32 %47, 1
  %268 = lshr i32 %48, 1
  %269 = lshr i32 %218, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %267, i32 %268, i32 %269, float %256, float %266, float %256, float %256, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %270

; <label>:270                                     ; preds = %262, %0
  br i1 %58, label %272, label %271, !dx.controlflow.hints !43

; <label>:271                                     ; preds = %270
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %47, i32 %48, i32 %218, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %272

; <label>:272                                     ; preds = %271, %270
  store float %223, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  store float 0.000000e+00, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  store float 0.000000e+00, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %273 = load float, float addrspace(3)* %230, align 4, !tbaa !34, !noalias !38
  %274 = fadd fast float %273, %223
  %275 = load float, float addrspace(3)* %233, align 4, !tbaa !34, !noalias !38
  %276 = load float, float addrspace(3)* %236, align 4, !tbaa !34, !noalias !38
  store float %274, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  store float %275, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  store float %276, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = load float, float addrspace(3)* %240, align 4, !tbaa !34, !noalias !38
  %278 = fadd fast float %277, %274
  %279 = load float, float addrspace(3)* %243, align 4, !tbaa !34, !noalias !38
  %280 = fadd fast float %279, %275
  %281 = load float, float addrspace(3)* %246, align 4, !tbaa !34, !noalias !38
  %282 = fadd fast float %281, %276
  store float %278, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  store float %280, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  store float %282, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %283 = load float, float addrspace(3)* %250, align 4, !tbaa !34, !noalias !38
  %284 = fadd fast float %283, %278
  %285 = load float, float addrspace(3)* %253, align 4, !tbaa !34, !noalias !38
  %286 = fadd fast float %285, %280
  %287 = fdiv fast float %286, %284
  br i1 %261, label %288, label %296, !dx.controlflow.hints !44

; <label>:288                                     ; preds = %272
  %289 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %249
  %290 = load float, float addrspace(3)* %289, align 4, !tbaa !34, !noalias !38
  %291 = fadd fast float %290, %282
  %292 = fdiv fast float %291, %284
  %293 = lshr i32 %47, 1
  %294 = lshr i32 %48, 1
  %295 = lshr i32 %218, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %293, i32 %294, i32 %295, float %287, float %292, float %287, float %287, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %296

; <label>:296                                     ; preds = %288, %272
  br i1 %58, label %298, label %297, !dx.controlflow.hints !45

; <label>:297                                     ; preds = %296
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %47, i32 %48, i32 %218, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %298

; <label>:298                                     ; preds = %297, %296
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %302 = fsub fast float %175, %300
  %303 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %302)  ; FMax(a,b)
  %304 = fmul fast float %303, 0x3FF7154760000000
  %305 = fmul fast float %304, %301
  %306 = call float @dx.op.unary.f32(i32 21, float %305)  ; Exp(value)
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %310 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %313 = fmul fast float %312, %306
  %314 = fmul fast float %313, %308
  %315 = fmul fast float %313, %309
  %316 = fmul fast float %313, %310
  %317 = select i1 %216, float 0.000000e+00, float %313
  %318 = fcmp fast ogt float %317, 0.000000e+00
  br i1 %318, label %319, label %1501, !dx.controlflow.hints !46

; <label>:319                                     ; preds = %298
  %320 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %321 = fmul fast float %320, %313
  %322 = fdiv fast float 1.000000e+00, %317
  %323 = fmul fast float %322, %314
  %324 = fmul fast float %322, %315
  %325 = fmul fast float %322, %316
  %326 = fmul fast float %321, %322
  %327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.i32 %327, 2
  %329 = extractvalue %dx.types.CBufRet.i32 %327, 3
  %330 = call i32 @dx.op.tertiary.i32(i32 49, i32 %41, i32 %328, i32 %39)  ; UMad(a,b,c)
  %331 = call i32 @dx.op.tertiary.i32(i32 49, i32 %43, i32 %329, i32 %330)  ; UMad(a,b,c)
  %332 = fadd fast float %106, 1.000000e+00
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = fmul fast float %338, %114
  %340 = call float @dx.op.unary.f32(i32 21, float %339)  ; Exp(value)
  %341 = fmul fast float %340, %337
  %342 = fsub fast float 4.000000e+00, %337
  %343 = fadd fast float %342, %341
  %344 = fmul fast float %332, 2.000000e+00
  %345 = fmul fast float %344, %334
  %346 = fmul fast float %107, 2.000000e+00
  %347 = fmul fast float %346, %335
  %348 = fsub fast float 1.000000e+00, %345
  %349 = fsub fast float 1.000000e+00, %347
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fmul fast float %351, %348
  %355 = fmul fast float %352, %348
  %356 = fmul fast float %353, %348
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = fmul fast float %358, %349
  %362 = fmul fast float %359, %349
  %363 = fmul fast float %360, %349
  %364 = fadd fast float %361, %354
  %365 = fadd fast float %362, %355
  %366 = fadd fast float %363, %356
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = fadd fast float %364, %368
  %372 = fadd fast float %365, %369
  %373 = fadd fast float %366, %370
  %374 = fadd fast float %107, 1.000000e+00
  %375 = fmul fast float %106, 2.000000e+00
  %376 = fmul fast float %375, %334
  %377 = fmul fast float %374, 2.000000e+00
  %378 = fmul fast float %377, %335
  %379 = fsub fast float 1.000000e+00, %376
  %380 = fsub fast float 1.000000e+00, %378
  %381 = fmul fast float %351, %379
  %382 = fmul fast float %352, %379
  %383 = fmul fast float %353, %379
  %384 = fmul fast float %358, %380
  %385 = fmul fast float %359, %380
  %386 = fmul fast float %360, %380
  %387 = fadd fast float %384, %381
  %388 = fadd fast float %385, %382
  %389 = fadd fast float %386, %383
  %390 = fadd fast float %387, %368
  %391 = fadd fast float %388, %369
  %392 = fadd fast float %389, %370
  %393 = fmul fast float %390, %343
  %394 = fmul fast float %391, %343
  %395 = fmul fast float %392, %343
  %396 = fadd fast float %390, %371
  %397 = fmul fast float %343, %396
  %398 = fadd fast float %391, %372
  %399 = fmul fast float %343, %398
  %400 = fadd fast float %392, %373
  %401 = fmul fast float %343, %400
  %402 = fmul fast float %397, 5.000000e-01
  %403 = fmul fast float %399, 5.000000e-01
  %404 = fmul fast float %401, 5.000000e-01
  %405 = fsub fast float %402, %393
  %406 = fsub fast float %403, %394
  %407 = fsub fast float %404, %395
  %408 = call float @dx.op.dot3.f32(i32 55, float %405, float %406, float %407, float %405, float %406, float %407)  ; Dot3(ax,ay,az,bx,by,bz)
  %409 = call float @dx.op.unary.f32(i32 25, float %408)  ; Rsqrt(value)
  %410 = fmul fast float %409, %408
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = fsub fast float %173, %412
  %416 = fsub fast float %174, %413
  %417 = fsub fast float %175, %414
  %418 = fmul fast float %338, %108
  %419 = call float @dx.op.unary.f32(i32 21, float %418)  ; Exp(value)
  %420 = fmul fast float %419, %337
  %421 = fadd fast float %342, %420
  %422 = fmul fast float %115, 2.000000e+00
  %423 = fmul fast float %422, %334
  %424 = fmul fast float %116, 2.000000e+00
  %425 = fmul fast float %424, %335
  %426 = fsub fast float 1.000000e+00, %423
  %427 = fsub fast float 1.000000e+00, %425
  %428 = fmul fast float %351, %426
  %429 = fmul fast float %352, %426
  %430 = fmul fast float %353, %426
  %431 = fmul fast float %358, %427
  %432 = fmul fast float %359, %427
  %433 = fmul fast float %360, %427
  %434 = fadd fast float %431, %428
  %435 = fadd fast float %432, %429
  %436 = fadd fast float %433, %430
  %437 = fadd fast float %434, %368
  %438 = fadd fast float %435, %369
  %439 = fadd fast float %436, %370
  %440 = fmul fast float %437, %421
  %441 = fmul fast float %438, %421
  %442 = fmul fast float %439, %421
  %443 = fadd fast float %108, 1.000000e+00
  %444 = fmul fast float %338, %443
  %445 = call float @dx.op.unary.f32(i32 21, float %444)  ; Exp(value)
  %446 = fsub fast float %445, %419
  %447 = fmul fast float %337, %446
  %448 = fmul fast float %437, %447
  %449 = fsub fast float %445, %419
  %450 = fmul fast float %337, %449
  %451 = fmul fast float %438, %450
  %452 = fsub fast float %445, %419
  %453 = fmul fast float %337, %452
  %454 = fmul fast float %439, %453
  %455 = call float @dx.op.dot3.f32(i32 55, float %448, float %451, float %454, float %448, float %451, float %454)  ; Dot3(ax,ay,az,bx,by,bz)
  %456 = call float @dx.op.unary.f32(i32 25, float %455)  ; Rsqrt(value)
  %457 = fmul fast float %456, %455
  %458 = fmul fast float %448, %456
  %459 = fmul fast float %451, %456
  %460 = fmul fast float %454, %456
  %461 = fsub fast float %205, %414
  %462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.i32 %462, 0
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %1472, label %465, !dx.controlflow.hints !47

; <label>:465                                     ; preds = %319
  %466 = add nsw i32 %463, -1
  %467 = call i32 @dx.op.binary.i32(i32 37, i32 %466, i32 0)  ; IMax(a,b)
  br label %468

; <label>:468                                     ; preds = %1465, %465
  %469 = phi i32 [ 0, %465 ], [ %1469, %1465 ]
  %470 = phi float [ 0.000000e+00, %465 ], [ %1466, %1465 ]
  %471 = phi float [ 0.000000e+00, %465 ], [ %1467, %1465 ]
  %472 = phi float [ 0.000000e+00, %465 ], [ %1468, %1465 ]
  %473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.i32 %473, 0
  %475 = call i32 @dx.op.tertiary.i32(i32 49, i32 %331, i32 %474, i32 %469)  ; UMad(a,b,c)
  %476 = shl i32 %475, 2
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %1465, label %480

; <label>:480                                     ; preds = %468
  br label %481

; <label>:481                                     ; preds = %920, %480
  %482 = phi i32 [ %491, %920 ], [ %478, %480 ]
  %483 = phi float [ %921, %920 ], [ %470, %480 ]
  %484 = phi float [ %922, %920 ], [ %471, %480 ]
  %485 = phi float [ %923, %920 ], [ %472, %480 ]
  %486 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %482)  ; FirstbitLo(value)
  %487 = shl i32 %469, 5
  %488 = add i32 %486, %487
  %489 = and i32 %486, 31
  %490 = shl i32 1, %489
  %491 = xor i32 %490, %482
  %492 = mul i32 %488, 112
  %493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = or i32 %492, 12
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = add i32 %492, 16
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = add i32 %492, 28
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = add i32 %492, 32
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = add i32 %492, 44
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = add i32 %492, 48
  %517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 2
  %521 = extractvalue %dx.types.ResRet.f32 %517, 3
  %522 = add i32 %492, 64
  %523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 0
  %525 = extractvalue %dx.types.ResRet.f32 %523, 1
  %526 = extractvalue %dx.types.ResRet.f32 %523, 2
  %527 = extractvalue %dx.types.ResRet.f32 %523, 3
  %528 = add i32 %492, 92
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = and i32 %530, 65535
  %532 = uitofp i32 %531 to float
  %533 = lshr i32 %530, 16
  %534 = uitofp i32 %533 to float
  %535 = and i32 %507, 65535
  %536 = and i32 %507, 50331648
  %537 = icmp eq i32 %536, 33554432
  %538 = fdiv fast float 1.000000e+00, %457
  br i1 %537, label %539, label %731, !dx.controlflow.hints !48

; <label>:539                                     ; preds = %481
  %540 = fsub fast float %518, %510
  %541 = fsub fast float %519, %511
  %542 = fsub fast float %520, %512
  %543 = fmul fast float %458, %457
  %544 = fmul fast float %459, %457
  %545 = fmul fast float %460, %457
  %546 = fadd fast float %543, %440
  %547 = fadd fast float %544, %441
  %548 = fadd fast float %545, %442
  %549 = fmul fast float %510, 2.000000e+00
  %550 = fmul fast float %511, 2.000000e+00
  %551 = fmul fast float %512, 2.000000e+00
  %552 = call float @dx.op.dot3.f32(i32 55, float %549, float %550, float %551, float %549, float %550, float %551)  ; Dot3(ax,ay,az,bx,by,bz)
  %553 = fdiv fast float %549, %552
  %554 = fdiv fast float %550, %552
  %555 = fdiv fast float %551, %552
  %556 = fsub fast float %440, %540
  %557 = fsub fast float %441, %541
  %558 = fsub fast float %442, %542
  %559 = call float @dx.op.dot3.f32(i32 55, float %556, float %557, float %558, float %549, float %550, float %551)  ; Dot3(ax,ay,az,bx,by,bz)
  %560 = fmul fast float %559, %553
  %561 = fmul fast float %559, %554
  %562 = fmul fast float %559, %555
  %563 = fsub fast float %440, %560
  %564 = fsub fast float %441, %561
  %565 = fsub fast float %442, %562
  %566 = fsub fast float %546, %540
  %567 = fsub fast float %547, %541
  %568 = fsub fast float %548, %542
  %569 = call float @dx.op.dot3.f32(i32 55, float %566, float %567, float %568, float %549, float %550, float %551)  ; Dot3(ax,ay,az,bx,by,bz)
  %570 = fmul fast float %569, %553
  %571 = fmul fast float %569, %554
  %572 = fmul fast float %569, %555
  %573 = fsub fast float %546, %570
  %574 = fsub fast float %547, %571
  %575 = fsub fast float %548, %572
  %576 = fsub fast float %573, %563
  %577 = fsub fast float %574, %564
  %578 = fsub fast float %575, %565
  %579 = fsub fast float %540, %563
  %580 = fsub fast float %541, %564
  %581 = fsub fast float %542, %565
  %582 = call float @dx.op.dot3.f32(i32 55, float %579, float %580, float %581, float %576, float %577, float %578)  ; Dot3(ax,ay,az,bx,by,bz)
  %583 = call float @dx.op.dot3.f32(i32 55, float %576, float %577, float %578, float %576, float %577, float %578)  ; Dot3(ax,ay,az,bx,by,bz)
  %584 = fdiv fast float %582, %583
  %585 = fcmp fast une float %563, %573
  %586 = fcmp fast une float %564, %574
  %587 = fcmp fast une float %565, %575
  %588 = or i1 %585, %586
  %589 = or i1 %587, %588
  %590 = select i1 %589, float %584, float 0.000000e+00
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %592 = fmul fast float %591, %543
  %593 = fmul fast float %591, %544
  %594 = fmul fast float %591, %545
  %595 = fadd fast float %556, %592
  %596 = fadd fast float %557, %593
  %597 = fadd fast float %558, %594
  %598 = call float @dx.op.dot3.f32(i32 55, float %595, float %596, float %597, float %549, float %550, float %551)  ; Dot3(ax,ay,az,bx,by,bz)
  %599 = fdiv fast float %598, %552
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = fmul fast float %549, %600
  %602 = fmul fast float %550, %600
  %603 = fmul fast float %551, %600
  %604 = fadd fast float %601, %540
  %605 = fadd fast float %602, %541
  %606 = fadd fast float %603, %542
  %607 = fmul fast float %526, %502
  %608 = fmul fast float %526, %503
  %609 = fmul fast float %526, %504
  %610 = fadd fast float %604, %607
  %611 = fadd fast float %605, %608
  %612 = fadd fast float %606, %609
  %613 = fsub fast float -0.000000e+00, %525
  %614 = fdiv fast float %613, %524
  %615 = fmul fast float %614, %614
  %616 = call float @dx.op.dot3.f32(i32 55, float %458, float %459, float %460, float %502, float %503, float %504)  ; Dot3(ax,ay,az,bx,by,bz)
  %617 = fsub fast float %440, %610
  %618 = fsub fast float %441, %611
  %619 = fsub fast float %442, %612
  %620 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %502, float %503, float %504)  ; Dot3(ax,ay,az,bx,by,bz)
  %621 = fsub fast float %610, %440
  %622 = fsub fast float %611, %441
  %623 = fsub fast float %612, %442
  %624 = fmul fast float %616, %616
  %625 = fsub fast float %624, %615
  %626 = fmul fast float %620, %616
  %627 = call float @dx.op.dot3.f32(i32 55, float %621, float %622, float %623, float %458, float %459, float %460)  ; Dot3(ax,ay,az,bx,by,bz)
  %628 = fmul fast float %627, %615
  %629 = fadd fast float %628, %626
  %630 = fmul fast float %629, 2.000000e+00
  %631 = fmul fast float %620, %620
  %632 = call float @dx.op.dot3.f32(i32 55, float %621, float %622, float %623, float %621, float %622, float %623)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = fmul fast float %632, %615
  %634 = fsub fast float %631, %633
  %635 = fmul fast float %630, %630
  %636 = fmul fast float %625, 4.000000e+00
  %637 = fmul fast float %636, %634
  %638 = fsub fast float %635, %637
  %639 = fcmp fast ogt float %638, 0.000000e+00
  br i1 %639, label %640, label %731, !dx.controlflow.hints !49

; <label>:640                                     ; preds = %539
  %641 = call float @dx.op.unary.f32(i32 24, float %638)  ; Sqrt(value)
  %642 = fdiv fast float 5.000000e-01, %625
  %643 = fsub fast float -0.000000e+00, %630
  %644 = fsub fast float %643, %641
  %645 = fmul fast float %644, %642
  %646 = fsub fast float %641, %630
  %647 = fmul fast float %646, %642
  %648 = call float @dx.op.binary.f32(i32 35, float %645, float %647)  ; FMax(a,b)
  %649 = call float @dx.op.binary.f32(i32 36, float %645, float %647)  ; FMin(a,b)
  %650 = fsub fast float %604, %440
  %651 = fsub fast float %605, %441
  %652 = fsub fast float %606, %442
  %653 = call float @dx.op.dot3.f32(i32 55, float %650, float %651, float %652, float %502, float %503, float %504)  ; Dot3(ax,ay,az,bx,by,bz)
  %654 = fdiv fast float %653, %616
  %655 = fcmp fast ogt float %616, 0.000000e+00
  br i1 %655, label %656, label %659, !dx.controlflow.hints !50

; <label>:656                                     ; preds = %640
  %657 = call float @dx.op.binary.f32(i32 36, float %649, float %654)  ; FMin(a,b)
  %658 = call float @dx.op.binary.f32(i32 36, float %648, float %654)  ; FMin(a,b)
  br label %662

; <label>:659                                     ; preds = %640
  %660 = call float @dx.op.binary.f32(i32 35, float %649, float %654)  ; FMax(a,b)
  %661 = call float @dx.op.binary.f32(i32 35, float %648, float %654)  ; FMax(a,b)
  br label %662

; <label>:662                                     ; preds = %659, %656
  %663 = phi float [ %657, %656 ], [ %660, %659 ]
  %664 = phi float [ %658, %656 ], [ %661, %659 ]
  %665 = fcmp fast oge float %663, 0.000000e+00
  %666 = fcmp fast olt float %663, %457
  %667 = and i1 %665, %666
  %668 = fcmp fast ogt float %664, 0.000000e+00
  %669 = fcmp fast ole float %664, %457
  %670 = and i1 %668, %669
  %671 = or i1 %667, %670
  br i1 %671, label %672, label %731, !dx.controlflow.hints !51

; <label>:672                                     ; preds = %662
  %673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %663)  ; FMax(a,b)
  %674 = call float @dx.op.binary.f32(i32 36, float %457, float %664)  ; FMin(a,b)
  br i1 %655, label %675, label %697, !dx.controlflow.hints !52

; <label>:675                                     ; preds = %672
  %676 = fmul fast float %674, %458
  %677 = fmul fast float %674, %459
  %678 = fmul fast float %674, %460
  %679 = fsub fast float %621, %676
  %680 = fsub fast float %622, %677
  %681 = fsub fast float %623, %678
  %682 = call float @dx.op.dot3.f32(i32 55, float %679, float %680, float %681, float %679, float %680, float %681)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = call float @dx.op.unary.f32(i32 25, float %682)  ; Rsqrt(value)
  %684 = fmul fast float %683, %679
  %685 = fmul fast float %683, %680
  %686 = fmul fast float %683, %681
  %687 = call float @dx.op.dot3.f32(i32 55, float %684, float %685, float %686, float %502, float %503, float %504)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = fmul fast float %687, %524
  %689 = fadd fast float %688, %525
  %690 = fcmp fast olt float %689, 0xBF1A36E2E0000000
  %691 = select i1 %690, float 0.000000e+00, float %673
  %692 = select i1 %690, float %673, float %674
  %693 = fsub fast float %691, %692
  %694 = call float @dx.op.unary.f32(i32 6, float %693)  ; FAbs(value)
  %695 = fcmp fast olt float %694, 0x3F1A36E2E0000000
  br i1 %695, label %696, label %719, !dx.controlflow.hints !53

; <label>:696                                     ; preds = %675
  br label %719

; <label>:697                                     ; preds = %672
  %698 = fmul fast float %673, %458
  %699 = fmul fast float %673, %459
  %700 = fmul fast float %673, %460
  %701 = fsub fast float %621, %698
  %702 = fsub fast float %622, %699
  %703 = fsub fast float %623, %700
  %704 = call float @dx.op.dot3.f32(i32 55, float %701, float %702, float %703, float %701, float %702, float %703)  ; Dot3(ax,ay,az,bx,by,bz)
  %705 = call float @dx.op.unary.f32(i32 25, float %704)  ; Rsqrt(value)
  %706 = fmul fast float %705, %701
  %707 = fmul fast float %705, %702
  %708 = fmul fast float %705, %703
  %709 = call float @dx.op.dot3.f32(i32 55, float %706, float %707, float %708, float %502, float %503, float %504)  ; Dot3(ax,ay,az,bx,by,bz)
  %710 = fmul fast float %709, %524
  %711 = fadd fast float %710, %525
  %712 = fcmp fast olt float %711, 0xBF1A36E2E0000000
  %713 = select i1 %712, float %674, float %673
  %714 = select i1 %712, float %457, float %674
  %715 = fsub fast float %713, %714
  %716 = call float @dx.op.unary.f32(i32 6, float %715)  ; FAbs(value)
  %717 = fcmp fast olt float %716, 0x3F1A36E2E0000000
  br i1 %717, label %718, label %719, !dx.controlflow.hints !54

; <label>:718                                     ; preds = %697
  br label %719

; <label>:719                                     ; preds = %718, %697, %696, %675
  %720 = phi float [ 0.000000e+00, %696 ], [ %691, %675 ], [ %713, %718 ], [ %713, %697 ]
  %721 = phi float [ %692, %696 ], [ %692, %675 ], [ %457, %718 ], [ %714, %697 ]
  %722 = fmul fast float %720, %458
  %723 = fmul fast float %720, %459
  %724 = fmul fast float %720, %460
  %725 = fadd fast float %722, %440
  %726 = fadd fast float %723, %441
  %727 = fadd fast float %724, %442
  %728 = fsub fast float %721, %720
  %729 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %728)  ; FMax(a,b)
  %730 = fmul fast float %729, %538
  br label %731

; <label>:731                                     ; preds = %719, %662, %539, %481
  %732 = phi float [ %610, %719 ], [ %610, %662 ], [ %610, %539 ], [ %518, %481 ]
  %733 = phi float [ %611, %719 ], [ %611, %662 ], [ %611, %539 ], [ %519, %481 ]
  %734 = phi float [ %612, %719 ], [ %612, %662 ], [ %612, %539 ], [ %520, %481 ]
  %735 = phi float [ %725, %719 ], [ %440, %662 ], [ %440, %539 ], [ %440, %481 ]
  %736 = phi float [ %726, %719 ], [ %441, %662 ], [ %441, %539 ], [ %441, %481 ]
  %737 = phi float [ %727, %719 ], [ %442, %662 ], [ %442, %539 ], [ %442, %481 ]
  %738 = phi float [ %729, %719 ], [ %457, %662 ], [ %457, %539 ], [ %457, %481 ]
  %739 = phi float [ %730, %719 ], [ 1.000000e+00, %662 ], [ 1.000000e+00, %539 ], [ 1.000000e+00, %481 ]
  %740 = fsub fast float %732, %735
  %741 = fsub fast float %733, %736
  %742 = fsub fast float %734, %737
  %743 = call float @dx.op.dot3.f32(i32 55, float %740, float %741, float %742, float %458, float %459, float %460)  ; Dot3(ax,ay,az,bx,by,bz)
  %744 = call float @dx.op.binary.f32(i32 35, float %743, float 0.000000e+00)  ; FMax(a,b)
  %745 = call float @dx.op.binary.f32(i32 36, float %744, float %738)  ; FMin(a,b)
  %746 = fmul fast float %745, %458
  %747 = fmul fast float %745, %459
  %748 = fmul fast float %745, %460
  %749 = fsub fast float %735, %732
  %750 = fadd fast float %749, %746
  %751 = fsub fast float %736, %733
  %752 = fadd fast float %751, %747
  %753 = fsub fast float %737, %734
  %754 = fadd fast float %753, %748
  %755 = fmul fast float %750, %750
  %756 = fmul fast float %752, %752
  %757 = fadd fast float %755, %756
  %758 = fmul fast float %754, %754
  %759 = fadd fast float %757, %758
  %760 = call float @dx.op.unary.f32(i32 24, float %759)  ; Sqrt(value)
  %761 = fsub fast float -0.000000e+00, %745
  %762 = call float @dx.op.unary.f32(i32 6, float %761)  ; FAbs(value)
  %763 = fadd fast float %762, 0x3DDB7CDFE0000000
  %764 = fcmp fast oge float %760, 0.000000e+00
  %765 = fsub fast float -0.000000e+00, %763
  %766 = select i1 %764, float %765, float %763
  %767 = fadd fast float %766, %760
  %768 = fsub fast float -0.000000e+00, %760
  %769 = select i1 %764, float %760, float %768
  %770 = fadd fast float %763, %769
  %771 = fdiv fast float %767, %770
  %772 = select i1 %764, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %773 = fmul fast float %771, %771
  %774 = fmul fast float %773, 0x3FC9205BC0000000
  %775 = fadd fast float %774, 0xBFEF6A1620000000
  %776 = fmul fast float %775, %771
  %777 = fadd fast float %776, %772
  %778 = fcmp ole float %745, -0.000000e+00
  %779 = fsub fast float -0.000000e+00, %777
  %780 = select i1 %778, float %777, float %779
  %781 = fsub fast float %738, %745
  %782 = call float @dx.op.unary.f32(i32 6, float %781)  ; FAbs(value)
  %783 = fadd fast float %782, 0x3DDB7CDFE0000000
  %784 = fsub fast float -0.000000e+00, %783
  %785 = select i1 %764, float %784, float %783
  %786 = fadd fast float %785, %760
  %787 = fadd fast float %783, %769
  %788 = fdiv fast float %786, %787
  %789 = fmul fast float %788, %788
  %790 = fmul fast float %789, 0x3FC9205BC0000000
  %791 = fadd fast float %790, 0xBFEF6A1620000000
  %792 = fmul fast float %791, %788
  %793 = fadd fast float %792, %772
  %794 = fcmp fast oge float %781, 0.000000e+00
  %795 = fsub fast float -0.000000e+00, %793
  %796 = select i1 %794, float %793, float %795
  %797 = fsub fast float %796, %780
  %798 = fmul fast float %797, %97
  %799 = fadd fast float %798, %780
  %800 = call float @dx.op.unary.f32(i32 14, float %799)  ; Tan(value)
  %801 = fmul fast float %800, %760
  %802 = fadd fast float %801, %745
  %803 = fmul fast float %760, %760
  %804 = fmul fast float %801, %801
  %805 = fadd fast float %804, %803
  %806 = fmul fast float %797, %805
  %807 = fdiv fast float %760, %806
  %808 = fdiv fast float 1.000000e+00, %807
  %809 = fmul fast float %739, %538
  %810 = fmul fast float %809, %808
  %811 = fmul fast float %802, %458
  %812 = fmul fast float %802, %459
  %813 = fmul fast float %802, %460
  %814 = fadd fast float %811, %735
  %815 = fadd fast float %812, %736
  %816 = fadd fast float %813, %737
  %817 = call float @dx.op.dot3.f32(i32 55, float %510, float %511, float %512, float %510, float %511, float %512)  ; Dot3(ax,ay,az,bx,by,bz)
  %818 = fsub fast float %814, %518
  %819 = fsub fast float %815, %519
  %820 = fsub fast float %816, %520
  %821 = call float @dx.op.dot3.f32(i32 55, float %818, float %819, float %820, float %510, float %511, float %512)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = fdiv fast float %821, %817
  %823 = call float @dx.op.binary.f32(i32 35, float %822, float -1.000000e+00)  ; FMax(a,b)
  %824 = call float @dx.op.binary.f32(i32 36, float %823, float 1.000000e+00)  ; FMin(a,b)
  %825 = fmul fast float %824, %510
  %826 = fmul fast float %824, %511
  %827 = fmul fast float %824, %512
  %828 = fadd fast float %825, %518
  %829 = fadd fast float %826, %519
  %830 = fadd fast float %827, %520
  %831 = fsub fast float %828, %814
  %832 = fsub fast float %829, %815
  %833 = fsub fast float %830, %816
  %834 = call float @dx.op.dot3.f32(i32 55, float %831, float %832, float %833, float %831, float %832, float %833)  ; Dot3(ax,ay,az,bx,by,bz)
  %835 = call float @dx.op.unary.f32(i32 24, float %834)  ; Sqrt(value)
  %836 = fdiv fast float 1.000000e+00, %835
  %837 = fmul fast float %831, %836
  %838 = fmul fast float %832, %836
  %839 = fmul fast float %833, %836
  %840 = fadd fast float %835, %499
  %841 = fdiv fast float 1.000000e+00, %840
  %842 = fmul float %515, %841
  %843 = fmul float %842, %842
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  br i1 %537, label %845, label %869, !dx.controlflow.hints !55

; <label>:845                                     ; preds = %731
  %846 = fmul fast float %526, %502
  %847 = fmul fast float %526, %503
  %848 = fmul fast float %526, %504
  %849 = fsub fast float %846, %814
  %850 = fadd fast float %849, %828
  %851 = fsub fast float %847, %815
  %852 = fadd fast float %851, %829
  %853 = fsub fast float %848, %816
  %854 = fadd fast float %853, %830
  %855 = call float @dx.op.dot3.f32(i32 55, float %850, float %852, float %854, float %850, float %852, float %854)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = call float @dx.op.unary.f32(i32 25, float %855)  ; Rsqrt(value)
  %857 = fmul fast float %856, %850
  %858 = fmul fast float %856, %852
  %859 = fmul fast float %856, %854
  %860 = fsub fast float %814, %828
  %861 = fsub fast float %815, %829
  %862 = fsub fast float %816, %830
  %863 = fsub fast float -0.000000e+00, %860
  %864 = fsub fast float -0.000000e+00, %861
  %865 = fsub fast float -0.000000e+00, %862
  %866 = call float @dx.op.dot3.f32(i32 55, float %863, float %864, float %865, float %502, float %503, float %504)  ; Dot3(ax,ay,az,bx,by,bz)
  %867 = fcmp fast ogt float %866, 0.000000e+00
  %868 = uitofp i1 %867 to float
  br label %869

; <label>:869                                     ; preds = %845, %731
  %870 = phi float [ %868, %845 ], [ 1.000000e+00, %731 ]
  %871 = phi float [ %857, %845 ], [ %837, %731 ]
  %872 = phi float [ %858, %845 ], [ %838, %731 ]
  %873 = phi float [ %859, %845 ], [ %839, %731 ]
  %874 = call float @dx.op.dot3.f32(i32 55, float %502, float %503, float %504, float %871, float %872, float %873)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = fmul fast float %874, %874
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fsub fast float 1.000000e+00, %876
  %878 = fmul fast float %877, 5.000000e-01
  %879 = fcmp fast ogt float %874, 0.000000e+00
  %880 = fsub fast float 1.000000e+00, %878
  %881 = select i1 %879, float %878, float %880
  %882 = fmul fast float %881, %534
  %883 = fadd fast float %882, %532
  %884 = fmul fast float %883, 0x3EF0001000000000
  %885 = fsub fast float %828, %402
  %886 = fsub fast float %829, %403
  %887 = fsub fast float %830, %404
  %888 = call float @dx.op.dot3.f32(i32 55, float %885, float %886, float %887, float %885, float %886, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = fmul fast float %410, %410
  %890 = fsub fast float %888, %889
  %891 = fdiv fast float %890, %888
  %892 = call float @dx.op.unary.f32(i32 24, float %891)  ; Sqrt(value)
  %893 = fsub fast float 1.000000e+00, %892
  %894 = fcmp fast olt float %888, %889
  %895 = fmul fast float %893, 2.560000e+02
  %896 = select i1 %894, float 2.560000e+02, float %895
  %897 = call float @dx.op.unary.f32(i32 23, float %896)  ; Log(value)
  %898 = call float @dx.op.binary.f32(i32 36, float %897, float 7.000000e+00)  ; FMin(a,b)
  %899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %884, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %898)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = fmul fast float %874, %524
  %902 = fadd fast float %901, %525
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %904 = select i1 %537, float 1.000000e+00, float %903
  %905 = select i1 %537, float %903, float 1.000000e+00
  %906 = fmul fast float %835, %521
  %907 = fsub fast float 1.000000e+00, %906
  %908 = fmul fast float %907, %527
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %910 = fmul fast float %909, %905
  %911 = fmul fast float %910, 2.000000e+00
  %912 = fsub fast float 3.000000e+00, %911
  %913 = fmul fast float %900, %870
  %914 = fmul fast float %910, %910
  %915 = fmul fast float %914, %913
  %916 = fmul fast float %915, %912
  %917 = call float @dx.op.binary.f32(i32 36, float %916, float %916)  ; FMin(a,b)
  %918 = call float @dx.op.binary.f32(i32 36, float %916, float %917)  ; FMin(a,b)
  %919 = fcmp fast ogt float %918, 0.000000e+00
  br i1 %919, label %925, label %920, !dx.controlflow.hints !56

; <label>:920                                     ; preds = %1428, %1013, %869
  %921 = phi float [ %1461, %1428 ], [ %483, %1013 ], [ %483, %869 ]
  %922 = phi float [ %1462, %1428 ], [ %484, %1013 ], [ %484, %869 ]
  %923 = phi float [ %1463, %1428 ], [ %485, %1013 ], [ %485, %869 ]
  %924 = icmp eq i32 %482, %490
  br i1 %924, label %1464, label %481

; <label>:925                                     ; preds = %869
  %926 = icmp eq i32 %535, 255
  br i1 %926, label %1013, label %927, !dx.controlflow.hints !57

; <label>:927                                     ; preds = %925
  %928 = mul nuw nsw i32 %535, 176
  %929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  %931 = extractvalue %dx.types.ResRet.f32 %929, 1
  %932 = extractvalue %dx.types.ResRet.f32 %929, 2
  %933 = extractvalue %dx.types.ResRet.f32 %929, 3
  %934 = add nuw nsw i32 %928, 16
  %935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = add nuw nsw i32 %928, 32
  %939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = extractvalue %dx.types.ResRet.f32 %939, 2
  %942 = add nuw nsw i32 %928, 48
  %943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = extractvalue %dx.types.ResRet.f32 %943, 1
  %946 = extractvalue %dx.types.ResRet.f32 %943, 2
  %947 = extractvalue %dx.types.ResRet.f32 %943, 3
  %948 = add nuw nsw i32 %928, 64
  %949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  %953 = extractvalue %dx.types.ResRet.f32 %949, 3
  %954 = add nuw nsw i32 %928, 80
  %955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = extractvalue %dx.types.ResRet.f32 %955, 1
  %958 = extractvalue %dx.types.ResRet.f32 %955, 2
  %959 = extractvalue %dx.types.ResRet.f32 %955, 3
  %960 = add nuw nsw i32 %928, 96
  %961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.f32 %961, 0
  %963 = extractvalue %dx.types.ResRet.f32 %961, 1
  %964 = extractvalue %dx.types.ResRet.f32 %961, 2
  %965 = extractvalue %dx.types.ResRet.f32 %961, 3
  %966 = bitcast float %937 to i32
  %967 = fmul fast float %941, %837
  %968 = fmul fast float %941, %838
  %969 = fmul fast float %941, %839
  %970 = fsub fast float %814, %967
  %971 = fsub fast float %815, %968
  %972 = fsub fast float %816, %969
  %973 = fmul fast float %970, %944
  %974 = call float @dx.op.tertiary.f32(i32 46, float %971, float %950, float %973)  ; FMad(a,b,c)
  %975 = call float @dx.op.tertiary.f32(i32 46, float %972, float %956, float %974)  ; FMad(a,b,c)
  %976 = fadd fast float %975, %962
  %977 = fmul fast float %970, %945
  %978 = call float @dx.op.tertiary.f32(i32 46, float %971, float %951, float %977)  ; FMad(a,b,c)
  %979 = call float @dx.op.tertiary.f32(i32 46, float %972, float %957, float %978)  ; FMad(a,b,c)
  %980 = fadd fast float %979, %963
  %981 = fmul fast float %970, %946
  %982 = call float @dx.op.tertiary.f32(i32 46, float %971, float %952, float %981)  ; FMad(a,b,c)
  %983 = call float @dx.op.tertiary.f32(i32 46, float %972, float %958, float %982)  ; FMad(a,b,c)
  %984 = fadd fast float %983, %964
  %985 = fmul fast float %970, %947
  %986 = call float @dx.op.tertiary.f32(i32 46, float %971, float %953, float %985)  ; FMad(a,b,c)
  %987 = call float @dx.op.tertiary.f32(i32 46, float %972, float %959, float %986)  ; FMad(a,b,c)
  %988 = fadd fast float %987, %965
  %989 = fdiv fast float %976, %988
  %990 = fdiv fast float %980, %988
  %991 = fdiv fast float %984, %988
  %992 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %991)  ; FMax(a,b)
  %993 = fmul fast float %932, 5.000000e-01
  %994 = call float @dx.op.tertiary.f32(i32 46, float %993, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %995 = fadd fast float %994, %989
  %996 = fadd fast float %990, %993
  %997 = fmul fast float %995, %936
  %998 = fmul fast float %996, %936
  %999 = call float @dx.op.binary.f32(i32 35, float %997, float %932)  ; FMax(a,b)
  %1000 = call float @dx.op.binary.f32(i32 35, float %998, float %932)  ; FMax(a,b)
  %1001 = call float @dx.op.binary.f32(i32 36, float %999, float %933)  ; FMin(a,b)
  %1002 = call float @dx.op.binary.f32(i32 36, float %1000, float %933)  ; FMin(a,b)
  %1003 = fadd fast float %1001, %930
  %1004 = fadd fast float %1002, %931
  %1005 = uitofp i32 %966 to float
  %1006 = fadd fast float %992, %940
  %1007 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %19, float %1003, float %1004, float %1005, float undef, i32 0, i32 0, i32 undef, float %1006)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = fadd fast float %1008, -1.000000e+00
  %1010 = fmul fast float %1009, %904
  %1011 = fadd fast float %1010, 1.000000e+00
  %1012 = fmul fast float %1011, %916
  br label %1013

; <label>:1013                                    ; preds = %927, %925
  %1014 = phi float [ %1012, %927 ], [ %916, %925 ]
  %1015 = call float @dx.op.binary.f32(i32 36, float %1014, float %1014)  ; FMin(a,b)
  %1016 = call float @dx.op.binary.f32(i32 36, float %1014, float %1015)  ; FMin(a,b)
  %1017 = fcmp fast ogt float %1016, 0.000000e+00
  br i1 %1017, label %1018, label %920, !dx.controlflow.hints !58

; <label>:1018                                    ; preds = %1013
  br i1 %216, label %1019, label %1428, !dx.controlflow.hints !59

; <label>:1019                                    ; preds = %1018
  %1020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.i32 %1020, 0
  %1022 = and i32 %1021, 64
  %1023 = icmp ne i32 %1022, 0
  %1024 = fsub fast float %520, %461
  %1025 = fcmp fast ogt float %1024, 0.000000e+00
  %1026 = fsub fast float %175, %205
  %1027 = fcmp fast ogt float %1026, 0.000000e+00
  %1028 = xor i1 %1027, %1025
  %1029 = fsub fast float %461, %520
  %1030 = fmul fast float %1029, 2.000000e+00
  %1031 = fadd fast float %1030, %520
  %1032 = select i1 %1028, float %520, float %1031
  %1033 = fsub fast float %518, %415
  %1034 = fsub fast float %519, %416
  %1035 = fsub fast float %1032, %417
  %1036 = call float @dx.op.dot3.f32(i32 55, float %1033, float %1034, float %1035, float %1033, float %1034, float %1035)  ; Dot3(ax,ay,az,bx,by,bz)
  %1037 = call float @dx.op.unary.f32(i32 25, float %1036)  ; Rsqrt(value)
  %1038 = fmul fast float %1037, %1033
  %1039 = fmul fast float %1037, %1034
  %1040 = fmul fast float %1037, %1035
  %1041 = fsub fast float %205, %175
  %1042 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1041)  ; Dot3(ax,ay,az,bx,by,bz)
  %1043 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1038, float %1039, float %1040)  ; Dot3(ax,ay,az,bx,by,bz)
  %1044 = fdiv fast float 1.000000e+00, %1043
  %1045 = fmul fast float %1044, %1042
  %1046 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %1026, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1047 = fcmp fast ogt float %1046, 0.000000e+00
  %1048 = fcmp fast olt float %1046, 0.000000e+00
  %1049 = zext i1 %1047 to i32
  %1050 = zext i1 %1048 to i32
  %1051 = sub nsw i32 %1049, %1050
  %1052 = sitofp i32 %1051 to float
  %1053 = fsub fast float %1032, %461
  %1054 = call float @dx.op.dot3.f32(i32 55, float %1033, float %1034, float %1053, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1055 = fcmp fast ogt float %1054, 0.000000e+00
  %1056 = fcmp fast olt float %1054, 0.000000e+00
  %1057 = zext i1 %1055 to i32
  %1058 = zext i1 %1056 to i32
  %1059 = sub nsw i32 %1057, %1058
  %1060 = sitofp i32 %1059 to float
  %1061 = fcmp fast une float %1052, %1060
  br i1 %1061, label %1062, label %1072, !dx.controlflow.hints !60

; <label>:1062                                    ; preds = %1019
  %1063 = fmul fast float %1045, %1040
  %1064 = fmul fast float %1045, %1039
  %1065 = fmul fast float %1045, %1038
  %1066 = fmul fast float %1065, %1065
  %1067 = fmul fast float %1064, %1064
  %1068 = fadd fast float %1066, %1067
  %1069 = fmul fast float %1063, %1063
  %1070 = fadd fast float %1068, %1069
  %1071 = call float @dx.op.unary.f32(i32 24, float %1070)  ; Sqrt(value)
  br label %1084

; <label>:1072                                    ; preds = %1019
  %1073 = icmp slt i32 %1051, 0
  br i1 %1073, label %1074, label %1084, !dx.controlflow.hints !61

; <label>:1074                                    ; preds = %1072
  %1075 = fsub fast float %415, %518
  %1076 = fsub fast float %416, %519
  %1077 = fsub fast float %417, %1032
  %1078 = fmul fast float %1075, %1075
  %1079 = fmul fast float %1076, %1076
  %1080 = fadd fast float %1078, %1079
  %1081 = fmul fast float %1077, %1077
  %1082 = fadd fast float %1080, %1081
  %1083 = call float @dx.op.unary.f32(i32 24, float %1082)  ; Sqrt(value)
  br label %1084

; <label>:1084                                    ; preds = %1074, %1072, %1062
  %1085 = phi float [ %1071, %1062 ], [ %1083, %1074 ], [ 0.000000e+00, %1072 ]
  %1086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.i32 %1086, 1
  %1088 = icmp ne i32 %1087, 0
  %1089 = and i1 %1028, %1088
  %1090 = call float @dx.op.dot3.f32(i32 55, float %1038, float %1039, float %1040, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1091 = fmul fast float %1090, %1090
  %1092 = fsub fast float 1.000000e+00, %1091
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1104 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1105 = extractvalue %dx.types.CBufRet.f32 %1101, 1
  %1106 = extractvalue %dx.types.CBufRet.f32 %1097, 3
  %1107 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1108 = extractvalue %dx.types.CBufRet.f32 %1101, 3
  %1109 = fadd fast float %1094, %415
  %1110 = fadd fast float %1095, %416
  %1111 = fadd fast float %1096, %417
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.CBufRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1116 = extractvalue %dx.types.CBufRet.f32 %1112, 3
  br i1 %1089, label %1117, label %1310, !dx.controlflow.hints !62

; <label>:1117                                    ; preds = %1084
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = fmul fast float %1119, %1119
  %1121 = fmul fast float %1120, %1092
  %1122 = fsub fast float 1.000000e+00, %1121
  %1123 = fcmp fast oge float %1122, 0.000000e+00
  %1124 = fmul fast float %1119, %1038
  %1125 = fmul fast float %1119, %1039
  %1126 = fmul fast float %1119, %1040
  %1127 = call float @dx.op.unary.f32(i32 24, float %1122)  ; Sqrt(value)
  %1128 = fmul fast float %1119, %1090
  %1129 = fsub fast float -0.000000e+00, %1127
  %1130 = fsub fast float %1129, %1128
  %1131 = fadd fast float %1130, %1126
  %1132 = select i1 %1123, float %1124, float 0.000000e+00
  %1133 = select i1 %1123, float %1125, float 0.000000e+00
  %1134 = select i1 %1123, float %1131, float 0.000000e+00
  %1135 = fmul fast float %1132, %1085
  %1136 = fmul fast float %1133, %1085
  %1137 = fmul fast float %1134, %1085
  %1138 = fadd fast float %1109, %1135
  %1139 = fadd fast float %1138, %1106
  %1140 = fadd fast float %1110, %1136
  %1141 = fadd fast float %1140, %1107
  %1142 = fadd fast float %1111, %1137
  %1143 = fadd fast float %1142, %1108
  %1144 = fmul fast float %1139, %1098
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1141, float %1100, float %1144)  ; FMad(a,b,c)
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %1102, float %1145)  ; FMad(a,b,c)
  %1147 = fmul fast float %1139, %1103
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1141, float %1104, float %1147)  ; FMad(a,b,c)
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %1105, float %1148)  ; FMad(a,b,c)
  %1150 = fsub fast float %1146, %1106
  %1151 = fsub fast float %1150, %1113
  %1152 = fadd fast float %1151, %1115
  %1153 = fsub fast float %1149, %1107
  %1154 = fsub fast float %1153, %1114
  %1155 = fadd fast float %1154, %1115
  %1156 = fmul fast float %1152, %1116
  %1157 = fmul fast float %1155, %1116
  %1158 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1159 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1160 = fsub fast float 1.000000e+00, %1158
  %1161 = fsub fast float 1.000000e+00, %1159
  %1162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1160, float %1161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = fmul fast float %1163, 0x3FBC5ABC00000000
  %1165 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1166 = fmul fast float %1165, %1165
  %1167 = fmul fast float %1166, %1092
  %1168 = fsub fast float 1.000000e+00, %1167
  %1169 = fcmp fast oge float %1168, 0.000000e+00
  %1170 = fmul fast float %1165, %1038
  %1171 = fmul fast float %1165, %1039
  %1172 = fmul fast float %1165, %1040
  %1173 = call float @dx.op.unary.f32(i32 24, float %1168)  ; Sqrt(value)
  %1174 = fmul fast float %1165, %1090
  %1175 = fsub fast float -0.000000e+00, %1173
  %1176 = fsub fast float %1175, %1174
  %1177 = fadd fast float %1176, %1172
  %1178 = select i1 %1169, float %1170, float 0.000000e+00
  %1179 = select i1 %1169, float %1171, float 0.000000e+00
  %1180 = select i1 %1169, float %1177, float 0.000000e+00
  %1181 = fmul fast float %1178, %1085
  %1182 = fmul fast float %1179, %1085
  %1183 = fmul fast float %1180, %1085
  %1184 = fadd fast float %1109, %1181
  %1185 = fadd fast float %1184, %1106
  %1186 = fadd fast float %1110, %1182
  %1187 = fadd fast float %1186, %1107
  %1188 = fadd fast float %1111, %1183
  %1189 = fadd fast float %1188, %1108
  %1190 = fmul fast float %1185, %1098
  %1191 = call float @dx.op.tertiary.f32(i32 46, float %1187, float %1100, float %1190)  ; FMad(a,b,c)
  %1192 = call float @dx.op.tertiary.f32(i32 46, float %1189, float %1102, float %1191)  ; FMad(a,b,c)
  %1193 = fmul fast float %1185, %1103
  %1194 = call float @dx.op.tertiary.f32(i32 46, float %1187, float %1104, float %1193)  ; FMad(a,b,c)
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %1189, float %1105, float %1194)  ; FMad(a,b,c)
  %1196 = fsub fast float %1192, %1106
  %1197 = fsub fast float %1196, %1113
  %1198 = fadd fast float %1197, %1115
  %1199 = fsub fast float %1195, %1107
  %1200 = fsub fast float %1199, %1114
  %1201 = fadd fast float %1200, %1115
  %1202 = fmul fast float %1198, %1116
  %1203 = fmul fast float %1201, %1116
  %1204 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1205 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1206 = fsub fast float 1.000000e+00, %1204
  %1207 = fsub fast float 1.000000e+00, %1205
  %1208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1206, float %1207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = fmul fast float %1209, 0x3F9E4BBD60000000
  %1211 = extractvalue %dx.types.CBufRet.f32 %1118, 2
  %1212 = fmul fast float %1211, %1211
  %1213 = fmul fast float %1212, %1092
  %1214 = fsub fast float 1.000000e+00, %1213
  %1215 = fcmp fast oge float %1214, 0.000000e+00
  %1216 = fmul fast float %1211, %1038
  %1217 = fmul fast float %1211, %1039
  %1218 = fmul fast float %1211, %1040
  %1219 = call float @dx.op.unary.f32(i32 24, float %1214)  ; Sqrt(value)
  %1220 = fmul fast float %1211, %1090
  %1221 = fsub fast float -0.000000e+00, %1219
  %1222 = fsub fast float %1221, %1220
  %1223 = fadd fast float %1222, %1218
  %1224 = select i1 %1215, float %1216, float 0.000000e+00
  %1225 = select i1 %1215, float %1217, float 0.000000e+00
  %1226 = select i1 %1215, float %1223, float 0.000000e+00
  %1227 = fmul fast float %1224, %1085
  %1228 = fmul fast float %1225, %1085
  %1229 = fmul fast float %1226, %1085
  %1230 = fadd fast float %1109, %1227
  %1231 = fadd fast float %1230, %1106
  %1232 = fadd fast float %1110, %1228
  %1233 = fadd fast float %1232, %1107
  %1234 = fadd fast float %1111, %1229
  %1235 = fadd fast float %1234, %1108
  %1236 = fmul fast float %1231, %1098
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %1233, float %1100, float %1236)  ; FMad(a,b,c)
  %1238 = call float @dx.op.tertiary.f32(i32 46, float %1235, float %1102, float %1237)  ; FMad(a,b,c)
  %1239 = fmul fast float %1231, %1103
  %1240 = call float @dx.op.tertiary.f32(i32 46, float %1233, float %1104, float %1239)  ; FMad(a,b,c)
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1235, float %1105, float %1240)  ; FMad(a,b,c)
  %1242 = fsub fast float %1238, %1106
  %1243 = fsub fast float %1242, %1113
  %1244 = fadd fast float %1243, %1115
  %1245 = fsub fast float %1241, %1107
  %1246 = fsub fast float %1245, %1114
  %1247 = fadd fast float %1246, %1115
  %1248 = fmul fast float %1244, %1116
  %1249 = fmul fast float %1247, %1116
  %1250 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1251 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1252 = fsub fast float 1.000000e+00, %1250
  %1253 = fsub fast float 1.000000e+00, %1251
  %1254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1252, float %1253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = fmul fast float %1255, 0x3FDDEACB00000000
  %1257 = fadd fast float %1256, %1210
  %1258 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1259 = fmul fast float %1258, %1258
  %1260 = fmul fast float %1259, %1092
  %1261 = fsub fast float 1.000000e+00, %1260
  %1262 = fcmp fast oge float %1261, 0.000000e+00
  %1263 = fmul fast float %1258, %1038
  %1264 = fmul fast float %1258, %1039
  %1265 = fmul fast float %1258, %1040
  %1266 = call float @dx.op.unary.f32(i32 24, float %1261)  ; Sqrt(value)
  %1267 = fmul fast float %1258, %1090
  %1268 = fsub fast float -0.000000e+00, %1266
  %1269 = fsub fast float %1268, %1267
  %1270 = fadd fast float %1269, %1265
  %1271 = select i1 %1262, float %1263, float 0.000000e+00
  %1272 = select i1 %1262, float %1264, float 0.000000e+00
  %1273 = select i1 %1262, float %1270, float 0.000000e+00
  %1274 = fmul fast float %1271, %1085
  %1275 = fmul fast float %1272, %1085
  %1276 = fmul fast float %1273, %1085
  %1277 = fadd fast float %1109, %1274
  %1278 = fadd fast float %1277, %1106
  %1279 = fadd fast float %1110, %1275
  %1280 = fadd fast float %1279, %1107
  %1281 = fadd fast float %1111, %1276
  %1282 = fadd fast float %1281, %1108
  %1283 = fmul fast float %1278, %1098
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1100, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1102, float %1284)  ; FMad(a,b,c)
  %1286 = fmul fast float %1278, %1103
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1104, float %1286)  ; FMad(a,b,c)
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1105, float %1287)  ; FMad(a,b,c)
  %1289 = fsub fast float %1285, %1106
  %1290 = fsub fast float %1289, %1113
  %1291 = fadd fast float %1290, %1115
  %1292 = fsub fast float %1288, %1107
  %1293 = fsub fast float %1292, %1114
  %1294 = fadd fast float %1293, %1115
  %1295 = fmul fast float %1291, %1116
  %1296 = fmul fast float %1294, %1116
  %1297 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1298 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1299 = fsub fast float 1.000000e+00, %1297
  %1300 = fsub fast float 1.000000e+00, %1298
  %1301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1299, float %1300, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = fmul fast float %1302, 0x3FE0183CA0000000
  %1304 = fmul fast float %1302, 0x3FB51033E0000000
  %1305 = fadd fast float %1257, %1303
  %1306 = fadd fast float %1255, %1209
  %1307 = fmul fast float %1306, 0x3FD9D2A200000000
  %1308 = fadd fast float %1304, %1164
  %1309 = fadd fast float %1308, %1307
  br label %1356

; <label>:1310                                    ; preds = %1084
  %1311 = fmul fast float %1092, 0x3FE2024E20000000
  %1312 = fsub fast float 1.000000e+00, %1311
  %1313 = fcmp fast oge float %1312, 0.000000e+00
  %1314 = fmul fast float %1038, 0x3FE8018960000000
  %1315 = fmul fast float %1039, 0x3FE8018960000000
  %1316 = fmul fast float %1040, 0x3FE8018960000000
  %1317 = call float @dx.op.unary.f32(i32 24, float %1312)  ; Sqrt(value)
  %1318 = fmul fast float %1090, 0x3FE8018960000000
  %1319 = fsub fast float %1316, %1317
  %1320 = fsub fast float %1319, %1318
  %1321 = select i1 %1313, float %1314, float 0.000000e+00
  %1322 = select i1 %1313, float %1315, float 0.000000e+00
  %1323 = select i1 %1313, float %1320, float 0.000000e+00
  %1324 = select i1 %1028, float %1321, float %1038
  %1325 = select i1 %1028, float %1322, float %1039
  %1326 = select i1 %1028, float %1323, float %1040
  %1327 = fmul fast float %1324, %1085
  %1328 = fmul fast float %1325, %1085
  %1329 = fmul fast float %1326, %1085
  %1330 = fadd fast float %1109, %1327
  %1331 = fadd fast float %1330, %1106
  %1332 = fadd fast float %1110, %1328
  %1333 = fadd fast float %1332, %1107
  %1334 = fadd fast float %1111, %1329
  %1335 = fadd fast float %1334, %1108
  %1336 = fmul fast float %1331, %1098
  %1337 = call float @dx.op.tertiary.f32(i32 46, float %1333, float %1100, float %1336)  ; FMad(a,b,c)
  %1338 = call float @dx.op.tertiary.f32(i32 46, float %1335, float %1102, float %1337)  ; FMad(a,b,c)
  %1339 = fmul fast float %1331, %1103
  %1340 = call float @dx.op.tertiary.f32(i32 46, float %1333, float %1104, float %1339)  ; FMad(a,b,c)
  %1341 = call float @dx.op.tertiary.f32(i32 46, float %1335, float %1105, float %1340)  ; FMad(a,b,c)
  %1342 = fsub fast float %1338, %1106
  %1343 = fsub fast float %1342, %1113
  %1344 = fadd fast float %1343, %1115
  %1345 = fsub fast float %1341, %1107
  %1346 = fsub fast float %1345, %1114
  %1347 = fadd fast float %1346, %1115
  %1348 = fmul fast float %1344, %1116
  %1349 = fmul fast float %1347, %1116
  %1350 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1351 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1352 = fsub fast float 1.000000e+00, %1350
  %1353 = fsub fast float 1.000000e+00, %1351
  %1354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %1352, float %1353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1355 = extractvalue %dx.types.ResRet.f32 %1354, 0
  br label %1356

; <label>:1356                                    ; preds = %1310, %1117
  %1357 = phi float [ %1355, %1310 ], [ %1305, %1117 ]
  %1358 = phi float [ %1355, %1310 ], [ %1309, %1117 ]
  %1359 = phi float [ %1355, %1310 ], [ %1163, %1117 ]
  %1360 = fmul fast float %1033, %1033
  %1361 = fmul fast float %1034, %1034
  %1362 = fadd fast float %1360, %1361
  %1363 = fmul fast float %1035, %1035
  %1364 = fadd fast float %1362, %1363
  %1365 = call float @dx.op.unary.f32(i32 24, float %1364)  ; Sqrt(value)
  %1366 = fsub fast float %415, %518
  %1367 = fsub fast float %416, %519
  %1368 = fsub fast float %417, %520
  %1369 = fmul fast float %1366, %1366
  %1370 = fmul fast float %1367, %1367
  %1371 = fadd fast float %1369, %1370
  %1372 = fmul fast float %1368, %1368
  %1373 = fadd fast float %1371, %1372
  %1374 = call float @dx.op.unary.f32(i32 24, float %1373)  ; Sqrt(value)
  %1375 = fsub fast float %1365, %1374
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1378 = call float @dx.op.unary.f32(i32 6, float %1377)  ; FAbs(value)
  %1379 = fmul fast float %1374, %1374
  %1380 = fmul fast float %1379, %1378
  %1381 = fmul fast float %1375, %1375
  %1382 = fadd fast float %1381, %1379
  %1383 = fdiv fast float %1380, %1382
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1385 = call float @dx.op.unary.f32(i32 6, float %1090)  ; FAbs(value)
  %1386 = fsub fast float 1.000000e+00, %1385
  %1387 = bitcast float %1386 to i32
  %1388 = sitofp i32 %1387 to float
  %1389 = fptosi float %1388 to i32
  %1390 = bitcast i32 %1389 to float
  %1391 = fmul fast float %1390, 0x3FEF333340000000
  %1392 = fadd fast float %1391, 0x3F999999A0000000
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = fsub fast float 1.000000e+00, %1393
  %1395 = fadd fast float %1357, 1.000000e+00
  %1396 = fadd fast float %1358, 1.000000e+00
  %1397 = fadd fast float %1359, 1.000000e+00
  %1398 = fmul fast float %1394, %1395
  %1399 = fmul fast float %1394, %1396
  %1400 = fmul fast float %1394, %1397
  %1401 = fmul fast float %1384, %1395
  %1402 = fmul fast float %1401, %1393
  %1403 = fmul fast float %1384, %1396
  %1404 = fmul fast float %1403, %1393
  %1405 = fmul fast float %1384, %1397
  %1406 = fmul fast float %1405, %1393
  %1407 = fadd fast float %1402, 1.000000e+00
  %1408 = fadd fast float %1404, 1.000000e+00
  %1409 = fadd fast float %1406, 1.000000e+00
  %1410 = call float @dx.op.unary.f32(i32 6, float %1026)  ; FAbs(value)
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1412 = select i1 %1028, float %1398, float %1407
  %1413 = select i1 %1028, float %1399, float %1408
  %1414 = select i1 %1028, float %1400, float %1409
  %1415 = select i1 %1023, float %1411, float 0.000000e+00
  %1416 = fadd fast float %1412, -1.000000e+00
  %1417 = fadd fast float %1413, -1.000000e+00
  %1418 = fadd fast float %1414, -1.000000e+00
  %1419 = fmul fast float %1416, %1415
  %1420 = fmul fast float %1417, %1415
  %1421 = fmul fast float %1418, %1415
  %1422 = fadd fast float %1419, 1.000000e+00
  %1423 = fadd fast float %1420, 1.000000e+00
  %1424 = fadd fast float %1421, 1.000000e+00
  %1425 = fmul fast float %1422, %494
  %1426 = fmul fast float %1423, %495
  %1427 = fmul fast float %1424, %496
  br label %1428

; <label>:1428                                    ; preds = %1356, %1018
  %1429 = phi float [ %1425, %1356 ], [ %494, %1018 ]
  %1430 = phi float [ %1426, %1356 ], [ %495, %1018 ]
  %1431 = phi float [ %1427, %1356 ], [ %496, %1018 ]
  %1432 = call float @dx.op.dot3.f32(i32 55, float %837, float %838, float %839, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = fcmp fast ogt float %326, 0.000000e+00
  %1434 = select i1 %1433, float 1.000000e+00, float -1.000000e+00
  %1435 = fmul fast float %97, 7.812500e-03
  %1436 = fmul fast float %97, 3.125000e-02
  %1437 = fadd fast float %1436, -3.125000e-02
  %1438 = fmul fast float %1434, 5.000000e-01
  %1439 = fmul fast float %1438, %1432
  %1440 = fmul fast float %1434, %326
  %1441 = fadd fast float %1435, 4.921875e-01
  %1442 = fadd fast float %1441, %1439
  %1443 = fadd fast float %1435, 0x3FB25F3060000000
  %1444 = fadd fast float %1437, %1440
  %1445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %1442, float %1443, float %1444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1449 = extractvalue %dx.types.CBufRet.f32 %1447, 2
  %1450 = select i1 %537, float %1448, float %1449
  %1451 = fmul fast float %844, 0x400921FB60000000
  %1452 = fmul fast float %1451, %1014
  %1453 = fmul fast float %1452, %1446
  %1454 = fmul fast float %1453, %1450
  %1455 = fmul fast float %1429, %810
  %1456 = fmul fast float %1455, %1454
  %1457 = fmul fast float %1430, %810
  %1458 = fmul fast float %1457, %1454
  %1459 = fmul fast float %1431, %810
  %1460 = fmul fast float %1459, %1454
  %1461 = fadd fast float %1456, %483
  %1462 = fadd fast float %1458, %484
  %1463 = fadd fast float %1460, %485
  br label %920

; <label>:1464                                    ; preds = %920
  br label %1465

; <label>:1465                                    ; preds = %1464, %468
  %1466 = phi float [ %470, %468 ], [ %921, %1464 ]
  %1467 = phi float [ %471, %468 ], [ %922, %1464 ]
  %1468 = phi float [ %472, %468 ], [ %923, %1464 ]
  %1469 = add i32 %469, 1
  %1470 = icmp ugt i32 %1469, %467
  br i1 %1470, label %1471, label %468

; <label>:1471                                    ; preds = %1465
  br label %1472

; <label>:1472                                    ; preds = %1471, %319
  %1473 = phi float [ 0.000000e+00, %319 ], [ %1466, %1471 ]
  %1474 = phi float [ 0.000000e+00, %319 ], [ %1467, %1471 ]
  %1475 = phi float [ 0.000000e+00, %319 ], [ %1468, %1471 ]
  %1476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %122, float %123, float %124, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.f32 %1476, 2
  %1480 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1477)  ; IsNaN(value)
  %1481 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1478)  ; IsNaN(value)
  %1482 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %1479)  ; IsNaN(value)
  %1483 = or i1 %1480, %1481
  %1484 = or i1 %1483, %1482
  %1485 = select i1 %1484, float 0.000000e+00, float %1477
  %1486 = select i1 %1484, float 0.000000e+00, float %1478
  %1487 = select i1 %1484, float 0.000000e+00, float %1479
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 1
  %1490 = fmul fast float %1485, %1489
  %1491 = fmul fast float %1486, %1489
  %1492 = fmul fast float %1487, %1489
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 3
  %1495 = fmul fast float %1490, %1494
  %1496 = fmul fast float %1491, %1494
  %1497 = fmul fast float %1492, %1494
  %1498 = fadd fast float %1495, %1473
  %1499 = fadd fast float %1496, %1474
  %1500 = fadd fast float %1497, %1475
  br label %1501

; <label>:1501                                    ; preds = %1472, %298
  %1502 = phi float [ %323, %1472 ], [ %314, %298 ]
  %1503 = phi float [ %324, %1472 ], [ %315, %298 ]
  %1504 = phi float [ %325, %1472 ], [ %316, %298 ]
  %1505 = phi float [ %1498, %1472 ], [ 0.000000e+00, %298 ]
  %1506 = phi float [ %1499, %1472 ], [ 0.000000e+00, %298 ]
  %1507 = phi float [ %1500, %1472 ], [ 0.000000e+00, %298 ]
  %1508 = fmul fast float %1502, %317
  %1509 = fmul fast float %1503, %317
  %1510 = fmul fast float %1504, %317
  %1511 = fmul fast float %1508, %1505
  %1512 = fmul fast float %1509, %1506
  %1513 = fmul fast float %1510, %1507
  %1514 = xor i1 %219, true
  %1515 = and i1 %59, %1514
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  %1520 = select i1 %183, float %1517, float %1519
  %1521 = fmul fast float %1511, %1520
  %1522 = fmul fast float %1512, %1520
  %1523 = fmul fast float %1513, %1520
  %1524 = fmul fast float %1522, 5.000000e-01
  %1525 = fadd fast float %1513, %1511
  %1526 = fmul fast float %1520, %1525
  %1527 = fmul fast float %1526, 2.500000e-01
  %1528 = fadd fast float %1527, %1524
  %1529 = call float @dx.op.unary.f32(i32 23, float %1528)  ; Log(value)
  %1530 = fmul fast float %1529, 0x3FE62E4300000000
  %1531 = fmul fast float %1530, %1530
  %1532 = select i1 %1515, float 1.000000e+00, float 0.000000e+00
  store float %1532, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  %1533 = fmul fast float %1530, %1532
  store float %1533, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  %1534 = fmul fast float %1531, %1532
  store float %1534, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1535 = load float, float addrspace(3)* %230, align 4, !tbaa !34, !noalias !38
  %1536 = fadd fast float %1535, %1532
  %1537 = load float, float addrspace(3)* %233, align 4, !tbaa !34, !noalias !38
  %1538 = fadd fast float %1537, %1530
  %1539 = load float, float addrspace(3)* %236, align 4, !tbaa !34, !noalias !38
  %1540 = fadd fast float %1539, %1531
  store float %1536, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  store float %1538, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  store float %1540, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1541 = load float, float addrspace(3)* %240, align 4, !tbaa !34, !noalias !38
  %1542 = fadd fast float %1541, %1536
  %1543 = load float, float addrspace(3)* %243, align 4, !tbaa !34, !noalias !38
  %1544 = fadd fast float %1543, %1538
  %1545 = load float, float addrspace(3)* %246, align 4, !tbaa !34, !noalias !38
  %1546 = fadd fast float %1545, %1540
  store float %1542, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  store float %1544, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  store float %1546, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1547 = load float, float addrspace(3)* %250, align 4, !tbaa !34, !noalias !38
  %1548 = fadd fast float %1547, %1542
  %1549 = load float, float addrspace(3)* %253, align 4, !tbaa !34, !noalias !38
  %1550 = fadd fast float %1549, %1544
  %1551 = fdiv fast float %1550, %1548
  %1552 = and i1 %1515, %260
  br i1 %1552, label %1553, label %1561, !dx.controlflow.hints !42

; <label>:1553                                    ; preds = %1501
  %1554 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %249
  %1555 = load float, float addrspace(3)* %1554, align 4, !tbaa !34, !noalias !38
  %1556 = fadd fast float %1555, %1546
  %1557 = fdiv fast float %1556, %1548
  %1558 = lshr i32 %47, 1
  %1559 = lshr i32 %48, 1
  %1560 = lshr i32 %218, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1558, i32 %1559, i32 %1560, float %1551, float %1557, float %1551, float %1551, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1561

; <label>:1561                                    ; preds = %1553, %1501
  br i1 %1515, label %1562, label %1596, !dx.controlflow.hints !43

; <label>:1562                                    ; preds = %1561
  %1563 = fadd fast float %97, 0x3FE3C6EF40000000
  %1564 = call float @dx.op.unary.f32(i32 22, float %1563)  ; Frc(value)
  %1565 = call float @dx.op.unary.f32(i32 23, float %1521)  ; Log(value)
  %1566 = fadd fast float %1565, -7.000000e+00
  %1567 = call float @dx.op.unary.f32(i32 21, float %1566)  ; Exp(value)
  %1568 = fmul fast float %1564, 2.000000e+00
  %1569 = fadd fast float %1568, -1.000000e+00
  %1570 = fmul fast float %1567, %1569
  %1571 = fcmp fast ogt float %1521, 0.000000e+00
  %1572 = select i1 %1571, float %1570, float 0.000000e+00
  %1573 = fadd fast float %1572, %1521
  %1574 = fadd fast float %97, 0x3FF3C6EF40000000
  %1575 = call float @dx.op.unary.f32(i32 22, float %1574)  ; Frc(value)
  %1576 = call float @dx.op.unary.f32(i32 23, float %1522)  ; Log(value)
  %1577 = fadd fast float %1576, -7.000000e+00
  %1578 = call float @dx.op.unary.f32(i32 21, float %1577)  ; Exp(value)
  %1579 = fmul fast float %1575, 2.000000e+00
  %1580 = fadd fast float %1579, -1.000000e+00
  %1581 = fmul fast float %1578, %1580
  %1582 = fcmp fast ogt float %1522, 0.000000e+00
  %1583 = select i1 %1582, float %1581, float 0.000000e+00
  %1584 = fadd fast float %1583, %1522
  %1585 = fadd fast float %97, 0x3FFDAA66E0000000
  %1586 = call float @dx.op.unary.f32(i32 22, float %1585)  ; Frc(value)
  %1587 = call float @dx.op.unary.f32(i32 23, float %1523)  ; Log(value)
  %1588 = fadd fast float %1587, -6.000000e+00
  %1589 = call float @dx.op.unary.f32(i32 21, float %1588)  ; Exp(value)
  %1590 = fmul fast float %1586, 2.000000e+00
  %1591 = fadd fast float %1590, -1.000000e+00
  %1592 = fmul fast float %1589, %1591
  %1593 = fcmp fast ogt float %1523, 0.000000e+00
  %1594 = select i1 %1593, float %1592, float 0.000000e+00
  %1595 = fadd fast float %1594, %1523
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %47, i32 %48, i32 %218, float %1573, float %1584, float %1595, float %1573, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1596

; <label>:1596                                    ; preds = %1562, %1561
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1600 = extractvalue %dx.types.CBufRet.f32 %1599, 0
  %1601 = select i1 %183, float %1598, float %1600
  %1602 = fmul fast float %1601, %317
  %1603 = fmul fast float %1602, 5.000000e-01
  %1604 = fadd fast float %317, %317
  %1605 = fmul fast float %1601, %1604
  %1606 = fmul fast float %1605, 2.500000e-01
  %1607 = fadd fast float %1606, %1603
  %1608 = fmul fast float %1607, %1607
  store float %1532, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  %1609 = fmul fast float %1607, %1532
  store float %1609, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  %1610 = fmul fast float %1608, %1532
  store float %1610, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1611 = load float, float addrspace(3)* %230, align 4, !tbaa !34, !noalias !38
  %1612 = fadd fast float %1611, %1532
  %1613 = load float, float addrspace(3)* %233, align 4, !tbaa !34, !noalias !38
  %1614 = fadd fast float %1607, %1613
  %1615 = load float, float addrspace(3)* %236, align 4, !tbaa !34, !noalias !38
  %1616 = fadd fast float %1608, %1615
  store float %1612, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  store float %1614, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  store float %1616, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1617 = load float, float addrspace(3)* %240, align 4, !tbaa !34, !noalias !38
  %1618 = fadd fast float %1617, %1612
  %1619 = load float, float addrspace(3)* %243, align 4, !tbaa !34, !noalias !38
  %1620 = fadd fast float %1614, %1619
  %1621 = load float, float addrspace(3)* %246, align 4, !tbaa !34, !noalias !38
  %1622 = fadd fast float %1616, %1621
  store float %1618, float addrspace(3)* %224, align 4, !tbaa !34, !noalias !38
  store float %1620, float addrspace(3)* %226, align 4, !tbaa !34, !noalias !38
  store float %1622, float addrspace(3)* %228, align 4, !tbaa !34, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1623 = load float, float addrspace(3)* %250, align 4, !tbaa !34, !noalias !38
  %1624 = fadd fast float %1623, %1618
  %1625 = load float, float addrspace(3)* %253, align 4, !tbaa !34, !noalias !38
  %1626 = fadd fast float %1625, %1620
  %1627 = fdiv fast float %1626, %1624
  br i1 %1552, label %1628, label %1636, !dx.controlflow.hints !44

; <label>:1628                                    ; preds = %1596
  %1629 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %249
  %1630 = load float, float addrspace(3)* %1629, align 4, !tbaa !34, !noalias !38
  %1631 = fadd fast float %1630, %1622
  %1632 = fdiv fast float %1631, %1624
  %1633 = lshr i32 %47, 1
  %1634 = lshr i32 %48, 1
  %1635 = lshr i32 %218, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %1633, i32 %1634, i32 %1635, float %1627, float %1632, float %1627, float %1627, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1636

; <label>:1636                                    ; preds = %1628, %1596
  br i1 %1515, label %1637, label %1665, !dx.controlflow.hints !45

; <label>:1637                                    ; preds = %1636
  %1638 = fadd fast float %97, 0x3FE3C6EF40000000
  %1639 = call float @dx.op.unary.f32(i32 22, float %1638)  ; Frc(value)
  %1640 = call float @dx.op.unary.f32(i32 23, float %1602)  ; Log(value)
  %1641 = fadd fast float %1640, -7.000000e+00
  %1642 = call float @dx.op.unary.f32(i32 21, float %1641)  ; Exp(value)
  %1643 = fmul fast float %1639, 2.000000e+00
  %1644 = fadd fast float %1643, -1.000000e+00
  %1645 = fmul fast float %1642, %1644
  %1646 = fcmp fast ogt float %1602, 0.000000e+00
  %1647 = select i1 %1646, float %1645, float 0.000000e+00
  %1648 = fadd fast float %1647, %1602
  %1649 = fadd fast float %97, 0x3FF3C6EF40000000
  %1650 = call float @dx.op.unary.f32(i32 22, float %1649)  ; Frc(value)
  %1651 = fmul fast float %1650, 2.000000e+00
  %1652 = fadd fast float %1651, -1.000000e+00
  %1653 = fmul fast float %1642, %1652
  %1654 = select i1 %1646, float %1653, float 0.000000e+00
  %1655 = fadd fast float %1654, %1602
  %1656 = fadd fast float %97, 0x3FFDAA66E0000000
  %1657 = call float @dx.op.unary.f32(i32 22, float %1656)  ; Frc(value)
  %1658 = fadd fast float %1640, -6.000000e+00
  %1659 = call float @dx.op.unary.f32(i32 21, float %1658)  ; Exp(value)
  %1660 = fmul fast float %1657, 2.000000e+00
  %1661 = fadd fast float %1660, -1.000000e+00
  %1662 = fmul fast float %1659, %1661
  %1663 = select i1 %1646, float %1662, float 0.000000e+00
  %1664 = fadd fast float %1663, %1602
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %47, i32 %48, i32 %218, float %1648, float %1655, float %1664, float %1648, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1665

; <label>:1665                                    ; preds = %1637, %1636
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
!dx.entryPoints = !{!31}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
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
!18 = !{i32 11, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!21 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!22 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!23 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!27 = !{!28, !29, !30}
!28 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!31 = !{void ()* @cs_volumetric_forwardplus_scatter_global_water, !"cs_volumetric_forwardplus_scatter_global_water", null, !4, !32}
!32 = !{i32 0, i64 272, i32 4, !33}
!33 = !{i32 4, i32 4, i32 4}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!40 = distinct !{!40, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!41 = distinct !{!41, !40, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
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
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}

