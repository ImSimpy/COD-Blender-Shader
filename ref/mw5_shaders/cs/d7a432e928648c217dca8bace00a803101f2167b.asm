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
; shader hash: e38defa44208fd6673329988ad6fe753
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
; Resource bind info for 
; {
;
;   [164 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [80 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s3     1
;                                   sampler      NA          NA      S2             s4     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          2d      T0            t11     1
;                                   texture    byte         r/o      T1            t22     1
;                                   texture     f32          2d      T2            t27     1
;                                   texture    byte         r/o      T3            t44     1
;                                   texture     f32          2d      T4            t33     1
;                                   texture     f32          3d      T5            t38     1
;                                   texture     f32          2d      T6            t35     1
;                                   texture     f32          2d      T7            t41     1
;                                   texture     f32          3d      T8            t16     1
;                                   texture     f32          2d      T9            t24     1
;                                   texture     f32          2d     T10            t25     1
;                                   texture     f32          2d     T11            t36     1
;                                   texture     f32          2d     T12            t37     1
;                                   texture  struct         r/o     T13            t39     1
;                                   texture    byte         r/o     T14            t42     1
;                                   texture     f32          3d     T15             t5     1
;                                   texture    byte         r/o     T16            t13     1
;                                   texture  struct         r/o     T17            t14     1
;                                   texture    byte         r/o     T18            t15     1
;                                   texture  struct         r/o     T19            t29     1
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricVolume>" = type { %struct.VolumetricVolume }
%struct.VolumetricVolume = type { float, float, i32, i32, <3 x float>, float, <3 x float>, float, float, float, float, i32, <3 x float>, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
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
%struct.SamplerState = type { i32 }

@"\01?sharedMomentW@@3PAMA" = external addrspace(3) global [64 x float], align 4
@"\01?sharedMomentX@@3PAMA" = external addrspace(3) global [64 x float], align 4
@"\01?sharedMomentY@@3PAMA" = external addrspace(3) global [64 x float], align 4
@BLUE_NOISE_SAMPLES.v.1dim = internal constant [384 x float] [float 0x3FE18FE160000000, float 0x3FE2F89540000000, float 0x3FE6E2D4C0000000, float 0x3FC15736E0000000, float 0x3FBA5540C0000000, float 0x3FD3170EC0000000, float 0x3FED0D5120000000, float 0x3FE296A0E0000000, float 0x3FC4826EA0000000, float 0x3FE8282660000000, float 0x3FAFC328C0000000, float 0x3FEC521960000000, float 0x3FE37806C0000000, float 0x3FCA6D0000000000, float 0x3FD7082D00000000, float 0x3FC5E13120000000, float 0x3FD2E650A0000000, float 0x3FEBB39F60000000, float 0x3FDC57B600000000, float 0x3FE7C97180000000, float 0x3FCBD95EA0000000, float 0x3FC9988140000000, float 0x3FEAC46E60000000, float 0x3FEAD953E0000000, float 0x3FC843F4E0000000, float 0x3FE1FA7840000000, float 0x3FDEF62560000000, float 0x3FD8DD05A0000000, float 0x3FB5C98040000000, float 0x3FE40B4F00000000, float 0x3FEC4AEE80000000, float 0x3FEB172F40000000, float 0x3FE0065C00000000, float 0x3FEA254D00000000, float 0x3FD8E6DF40000000, float 0x3FE24C96C0000000, float 0x3FDE978BA0000000, float 0x3FBA8F1180000000, float 0x3FB121A6A0000000, float 0x3FE3626000000000, float 0x3FDE58B860000000, float 0x3FB2DED7A0000000, float 0x3FD4F97900000000, float 0x3FD7645460000000, float 0x3FCE571520000000, float 0x3FE7E85200000000, float 0x3FEAFC6460000000, float 0x3FCC666220000000, float 0x3FEC4FF540000000, float 0x3FE7C8B540000000, float 0x3FEBF4AC20000000, float 0x3FD0C66640000000, float 0x3FE2F95320000000, float 0x3F915FFF00000000, float 0x3FE352C600000000, float 0x3FEBC2D0A0000000, float 0x3FE3664520000000, float 0x3FE4504660000000, float 0x3FE1D81AA0000000, float 0x3FD7A97CA0000000, float 0x3F86A53280000000, float 0x3FC1343780000000, float 0x3FE473A1A0000000, float 0x3FEC7EAE80000000, float 0x3FCE83F160000000, float 0x3FC3B66640000000, float 0x3FABB6C6C0000000, float 0x3FEC127C60000000, float 0x3FC3E70E00000000, float 0x3FDC159A60000000, float 0x3FD7AB8720000000, float 0x3FE14710E0000000, float 0x3FDE623A40000000, float 0x3FEB8A45E0000000, float 0x3FEC3C0140000000, float 0x3FD1597DE0000000, float 0x3FEAF0F9A0000000, float 0x3FE1C52360000000, float 0x3FEA622660000000, float 0x3FD760A060000000, float 0x3FEC561B20000000, float 0x3FBAF00320000000, float 0x3FE4643220000000, float 0x3FE72199C0000000, float 0x3FE2E54080000000, float 0x3FD56206C0000000, float 0x3FE8890420000000, float 0x3FEFBE55E0000000, float 0x3FD25DC400000000, float 0x3FD8BF4640000000, float 0x3FE956BCC0000000, float 0x3FE3A5DFE0000000, float 0x3FE5928420000000, float 0x3FE6754AA0000000, float 0x3FBBCDB900000000, float 0x3FE4509C40000000, float 0x3FE14E9AE0000000, float 0x3FEEE61140000000, float 0x3FD3ADB960000000, float 0x3FD3C9D440000000, float 0x3FDF30AF40000000, float 0x3FE885B760000000, float 0x3FEFC30220000000, float 0x3FB1A902E0000000, float 0x3FED532A00000000, float 0x3FBA846540000000, float 0x3FDAC4BEC0000000, float 0x3FB347E280000000, float 0x3FC77620A0000000, float 0x3FBBEF41C0000000, float 0x3FB2C764E0000000, float 0x3FC199A160000000, float 0x3FE44F4480000000, float 0x3FD01FE1E0000000, float 0x3FEC5559A0000000, float 0x3FA2E2FA40000000, float 0x3FD5AAA3C0000000, float 0x3FEDC06380000000, float 0x3FE393B900000000, float 0x3FDA23D800000000, float 0x3FC0BD6E60000000, float 0x3FD6E3CF60000000, float 0x3FE39D7140000000, float 0x3FE07677C0000000, float 0x3FBE721700000000, float 0x3FEA99EBC0000000, float 0x3FC9C1C7E0000000, float 0x3FB4545D20000000, float 0x3FE927BDC0000000, float 0x3FD2AF0880000000, float 0x3FEDDAA620000000, float 0x3FD4C3A220000000, float 0x3FE764E8C0000000, float 0x3FB5474C60000000, float 0x3FBD28BE60000000, float 0x3FDCAE7120000000, float 0x3FE65C7EC0000000, float 0x3FDFAE6DC0000000, float 0x3FEFF2D3E0000000, float 0x3FED44B380000000, float 0x3FE6676480000000, float 0x3FE59F4A80000000, float 0x3FE61D1240000000, float 0x3F80FB0B40000000, float 0x3FD57E1500000000, float 0x3FEC5C93C0000000, float 0x3FA826DF20000000, float 0x3FE939D3A0000000, float 0x3FDB702260000000, float 0x3FD0309DC0000000, float 0x3FC05BD4E0000000, float 0x3F647F5360000000, float 0x3FDFF14000000000, float 0x3FD6B472E0000000, float 0x3FC67E8AE0000000, float 0x3FD7E52D80000000, float 0x3FD9A20420000000, float 0x3FD873C2E0000000, float 0x3FEED079E0000000, float 0x3FD9280DA0000000, float 0x3FE0E70960000000, float 0x3FD7AD5C60000000, float 0x3FADC1E8A0000000, float 0x3FE9BAFE00000000, float 0x3FD6EB3FA0000000, float 0x3FE8B0FE80000000, float 0x3FEC006EA0000000, float 0x3FE7886EC0000000, float 0x3FD4E113A0000000, float 0x3FE5EB06E0000000, float 0x3FE7AE8F00000000, float 0x3FE594A1A0000000, float 0x3FE8BE5C40000000, float 0x3FDBBB7820000000, float 0x3FDC00F660000000, float 0x3FE3BEAF60000000, float 0x3FECE40A40000000, float 0x3FE476BE80000000, float 0x3FCE715760000000, float 0x3F9A66CEA0000000, float 0x3FE1E87120000000, float 0x3FD6EFB1C0000000, float 0x3FCE53C0A0000000, float 0x3FEEC44720000000, float 0x3FDE4FCA40000000, float 0x3FE71C3E60000000, float 0x3FEF2C7C20000000, float 0x3FE166A120000000, float 0x3FEE257F40000000, float 0x3FE9B56F40000000, float 0x3FECD0D600000000, float 0x3FA0FC3EC0000000, float 0x3FEC4C3DC0000000, float 0x3FD150EC60000000, float 0x3FE71F4F60000000, float 0x3FB622B360000000, float 0x3FDC8CDE60000000, float 0x3FD23942A0000000, float 0x3FE1F1FAA0000000, float 0x3FED974C60000000, float 0x3FB46602A0000000, float 0x3FE6E2E620000000, float 0x3FEFD8B280000000, float 0x3FDD9BF5C0000000, float 0x3FA674A1C0000000, float 0x3FE9B56E40000000, float 0x3FEEE67800000000, float 0x3FCDA72D80000000, float 0x3FD469FA40000000, float 0x3FDBC871E0000000, float 0x3FDD20E3E0000000, float 0x3FEF2C1DE0000000, float 0x3FDF7B00E0000000, float 0x3FD6281F00000000, float 0x3FC66B3000000000, float 0x3FEDE19700000000, float 0x3FDB2072A0000000, float 0x3FE0D7DF20000000, float 0x3FC3B1B640000000, float 0x3FDA9DE220000000, float 0x3FD04AFB60000000, float 0x3FE78D6920000000, float 0x3FEF438F00000000, float 0x3FD0DACEC0000000, float 0x3FED6152E0000000, float 0x3FE9CF90A0000000, float 0x3FD0689260000000, float 0x3FDB295100000000, float 0x3FE43A8B20000000, float 0x3FDB335EA0000000, float 0x3FE0E1EA60000000, float 0x3FEBAB00E0000000, float 0x3FDA8B1D60000000, float 0x3FB10CBD20000000, float 0x3FE78F4620000000, float 0x3FE227D0E0000000, float 0x3FEC0E76A0000000, float 0x3FEEF3F8C0000000, float 0x3FE5ADCD40000000, float 0x3FE386C040000000, float 0x3FE2FA86E0000000, float 0x3FCE803BA0000000, float 0x3FE26AEBE0000000, float 0x3FE58556A0000000, float 0x3FEB878100000000, float 0x3FEC77D980000000, float 0x3FC0793440000000, float 0x3FD134B520000000, float 0x3FC9DB4080000000, float 0x3FE83B8480000000, float 0x3FE4ECC2E0000000, float 0x3FCEA8E9A0000000, float 0x3FD60CA840000000, float 0x3FECE35B20000000, float 0x3FE746B7A0000000, float 0x3FCE074860000000, float 0x3FE81DE580000000, float 0x3FC2584AA0000000, float 0x3FD5C82E00000000, float 0x3FE0CECA40000000, float 0x3FE26646C0000000, float 0x3FC0854540000000, float 0x3FE77AA920000000, float 0x3FE0120580000000, float 0x3FEF5EE280000000, float 0x3FB39D7D80000000, float 0x3FC50B8D20000000, float 0x3FDBFF8BC0000000, float 0x3FB7077B80000000, float 0x3FCF722760000000, float 0x3FD274BA20000000, float 0x3FE7EC88A0000000, float 0x3FD8207A00000000, float 0x3FDC2B1A00000000, float 0x3FEAE81F60000000, float 0x3FD84A9200000000, float 0x3FEB3D1480000000, float 0x3F74CDAB80000000, float 0x3FE2903380000000, float 0x3FE3D88D60000000, float 0x3FE5557C00000000, float 0x3FE1B02540000000, float 0x3FCAD53680000000, float 0x3FC97E4340000000, float 0x3FE4A0C720000000, float 0x3FDE649800000000, float 0x3FE8A886A0000000, float 0x3FE77F7260000000, float 0x3FEB51B700000000, float 0x3FC2E2DE00000000, float 0x3F5888D4C0000000, float 0x3FD41984E0000000, float 0x3FD20DB1A0000000, float 0x3FB551A020000000, float 0x3FDB131880000000, float 0x3FEDC9D0C0000000, float 0x3FC7DD4AA0000000, float 0x3FD5F5F120000000, float 0x3F7F518660000000, float 0x3FEBF19260000000, float 0x3F799ADA40000000, float 0x3FDC20E100000000, float 0x3FE0E7DB40000000, float 0x3FC0BB4EE0000000, float 0x3FDECDAEE0000000, float 0x3FEA638F20000000, float 0x3FE70F2040000000, float 0x3FCA53C540000000, float 0x3FCCF95320000000, float 0x3FB324F500000000, float 0x3FE354CC40000000, float 0x3FB2C45460000000, float 0x3FE072AB00000000, float 0x3FE6B81580000000, float 0x3FAD0D1160000000, float 0x3FECCB0BE0000000, float 0x3FEB935140000000, float 0x3FD2A50CE0000000, float 0x3FE5A24D40000000, float 0x3FCB409DA0000000, float 0x3FEAFD5600000000, float 0x3FE2CA5C00000000, float 0x3FEEB0C0A0000000, float 0x3FE8201F60000000, float 0x3FAA420B00000000, float 0x3FD2EB8020000000, float 0x3FE7E3DFA0000000, float 0x3FE7E2A760000000, float 0x3FE8746C80000000, float 0x3FE31217A0000000, float 0x3FEB946480000000, float 0x3FE7B3EDC0000000, float 0x3FB74FEFA0000000, float 0x3FEE07E160000000, float 0x3FC272BDC0000000, float 0x3FDE3B38A0000000, float 0x3FE687E8E0000000, float 0x3FDD8CC5E0000000, float 0x3FE5BD32A0000000, float 0x3FC63803C0000000, float 0x3FED12DE60000000, float 0x3F99B048C0000000, float 0x3FEC98B3E0000000, float 0x3FB9C91A60000000, float 0x3FE8D6E040000000, float 0x3FD39228C0000000, float 0x3FE404F040000000, float 0x3FD00082E0000000, float 0x3FE9099100000000, float 0x3FE1A444E0000000, float 0x3FDDFDC900000000, float 0x3FD649EA00000000, float 0x3FE7F988C0000000, float 0x3FEEB362C0000000, float 0x3FBE7B5FE0000000, float 0x3FC6A55F60000000, float 0x3FE07F6B40000000, float 0x3FE0AFB880000000, float 0x3FDE87A600000000, float 0x3FEBF9DCC0000000, float 0x3FD039B760000000, float 0x3F73CF67C0000000, float 0x3FE33EED40000000, float 0x3FD43683E0000000, float 0x3FD1531020000000, float 0x3FE1D32C60000000, float 0x3FE16249C0000000, float 0x3FBCE097A0000000, float 0x3FDE6FED80000000, float 0x3FE47A3A60000000, float 0x3FE6D84580000000, float 0x3FEA3764C0000000, float 0x3FE9B3C000000000, float 0x3FCD0FDF40000000, float 0x3FE2C6AC00000000, float 0x3FCBCACA20000000, float 0x3FE02FE880000000, float 0x3FC52C7860000000, float 0x3FD5258C40000000, float 0x3FA7811BC0000000, float 0x3FAAEB5B20000000, float 0x3FE369AEC0000000, float 0x3FB38C3220000000, float 0x3FEF14BEE0000000], align 4

define void @cs_volumetric_forwardplus_scatter_local() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %32 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %33 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %34 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %35 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 3
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 1
  %40 = mul i32 %39, %37
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %43 = mul i32 %40, %42
  %44 = add i32 %43, %34
  %45 = shl i32 %44, 2
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = and i32 %47, 255
  %49 = lshr i32 %47, 8
  %50 = and i32 %49, 255
  %51 = lshr i32 %47, 16
  %52 = and i32 %51, 255
  %53 = shl nuw nsw i32 %48, 2
  %54 = shl nuw nsw i32 %50, 2
  %55 = shl nuw nsw i32 %52, 2
  %56 = add i32 %53, %31
  %57 = add i32 %54, %32
  %58 = add i32 %55, %33
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.i32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.i32 %59, 2
  %63 = icmp uge i32 %56, %60
  %64 = icmp uge i32 %57, %61
  %65 = icmp uge i32 %58, %62
  %66 = or i1 %63, %64
  %67 = or i1 %65, %66
  %68 = xor i1 %67, true
  %69 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
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
  %107 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %56, i32 %57, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = fcmp fast ogt float %108, -1.000000e+00
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %112 = select i1 %109, float %111, float 1.000000e+00
  %113 = fadd fast float %108, 1.000000e+00
  %114 = fmul fast float %112, %113
  %115 = uitofp i32 %56 to float
  %116 = uitofp i32 %57 to float
  %117 = uitofp i32 %58 to float
  %118 = fadd fast float %117, -5.000000e-01
  %119 = fadd fast float %118, %106
  %120 = fadd fast float %115, %104
  %121 = fadd fast float %116, %105
  %122 = fadd fast float %119, 5.000000e-01
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %124, %120
  %128 = fmul fast float %125, %121
  %129 = fmul fast float %126, %122
  %130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.i32 %130, 0
  %132 = uitofp i32 %131 to float
  %133 = fmul fast float %132, %129
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = fmul fast float %133, %136
  %138 = call float @dx.op.unary.f32(i32 21, float %137)  ; Exp(value)
  %139 = fmul fast float %138, %135
  %140 = fsub fast float 4.000000e+00, %135
  %141 = fadd fast float %140, %139
  %142 = call float @dx.op.binary.f32(i32 36, float %141, float %114)  ; FMin(a,b)
  %143 = fmul fast float %127, 2.000000e+00
  %144 = fmul fast float %128, 2.000000e+00
  %145 = fsub fast float 1.000000e+00, %143
  %146 = fsub fast float 1.000000e+00, %144
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fmul fast float %148, %145
  %152 = fmul fast float %149, %145
  %153 = fmul fast float %150, %145
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = fmul fast float %155, %146
  %159 = fmul fast float %156, %146
  %160 = fmul fast float %157, %146
  %161 = fadd fast float %158, %151
  %162 = fadd fast float %159, %152
  %163 = fadd fast float %160, %153
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = fadd fast float %161, %165
  %169 = fadd fast float %162, %166
  %170 = fadd fast float %163, %167
  %171 = fmul fast float %168, %142
  %172 = fmul fast float %169, %142
  %173 = fmul fast float %170, %142
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = fadd fast float %171, %175
  %179 = fadd fast float %172, %176
  %180 = fadd fast float %173, %177
  %181 = add i32 %58, 1
  %182 = uitofp i32 %181 to float
  %183 = fmul fast float %136, %182
  %184 = call float @dx.op.unary.f32(i32 21, float %183)  ; Exp(value)
  %185 = fmul fast float %136, %117
  %186 = call float @dx.op.unary.f32(i32 21, float %185)  ; Exp(value)
  %187 = fsub fast float %184, %186
  %188 = fmul fast float %135, %187
  %189 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %190 = fmul fast float %189, 0x3FE62E4300000000
  %191 = fmul fast float %190, %190
  %192 = select i1 %67, float 0.000000e+00, float 1.000000e+00
  %193 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %35
  store float %192, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  %194 = fmul fast float %190, %192
  %195 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %35
  store float %194, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  %196 = fmul fast float %191, %192
  %197 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %35
  store float %196, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %198 = xor i32 %35, 4
  %199 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %198
  %200 = load float, float addrspace(3)* %199, align 4, !tbaa !46, !noalias !50
  %201 = fadd fast float %200, %192
  %202 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %198
  %203 = load float, float addrspace(3)* %202, align 4, !tbaa !46, !noalias !50
  %204 = fadd fast float %203, %190
  %205 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %198
  %206 = load float, float addrspace(3)* %205, align 4, !tbaa !46, !noalias !50
  %207 = fadd fast float %206, %191
  store float %201, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  store float %204, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  store float %207, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %208 = xor i32 %35, 16
  %209 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %208
  %210 = load float, float addrspace(3)* %209, align 4, !tbaa !46, !noalias !50
  %211 = fadd fast float %210, %201
  %212 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %208
  %213 = load float, float addrspace(3)* %212, align 4, !tbaa !46, !noalias !50
  %214 = fadd fast float %213, %204
  %215 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %208
  %216 = load float, float addrspace(3)* %215, align 4, !tbaa !46, !noalias !50
  %217 = fadd fast float %216, %207
  store float %211, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  store float %214, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  store float %217, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = xor i32 %35, 1
  %219 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %218
  %220 = load float, float addrspace(3)* %219, align 4, !tbaa !46, !noalias !50
  %221 = fadd fast float %220, %211
  %222 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %218
  %223 = load float, float addrspace(3)* %222, align 4, !tbaa !46, !noalias !50
  %224 = fadd fast float %223, %214
  %225 = fdiv fast float %224, %221
  %226 = and i32 %56, 1
  %227 = and i32 %226, %57
  %228 = and i32 %227, %58
  %229 = icmp ne i32 %228, 0
  %230 = and i1 %229, %68
  br i1 %230, label %231, label %239, !dx.controlflow.hints !54

; <label>:231                                     ; preds = %0
  %232 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %218
  %233 = load float, float addrspace(3)* %232, align 4, !tbaa !46, !noalias !50
  %234 = fadd fast float %233, %217
  %235 = fdiv fast float %234, %221
  %236 = lshr i32 %56, 1
  %237 = lshr i32 %57, 1
  %238 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %236, i32 %237, i32 %238, float %225, float %235, float %225, float %225, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %239

; <label>:239                                     ; preds = %231, %0
  br i1 %67, label %241, label %240, !dx.controlflow.hints !55

; <label>:240                                     ; preds = %239
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %56, i32 %57, i32 %58, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %241

; <label>:241                                     ; preds = %240, %239
  store float %192, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  store float 0.000000e+00, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  store float 0.000000e+00, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %242 = load float, float addrspace(3)* %199, align 4, !tbaa !46, !noalias !50
  %243 = fadd fast float %242, %192
  %244 = load float, float addrspace(3)* %202, align 4, !tbaa !46, !noalias !50
  %245 = load float, float addrspace(3)* %205, align 4, !tbaa !46, !noalias !50
  store float %243, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  store float %244, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  store float %245, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %246 = load float, float addrspace(3)* %209, align 4, !tbaa !46, !noalias !50
  %247 = fadd fast float %246, %243
  %248 = load float, float addrspace(3)* %212, align 4, !tbaa !46, !noalias !50
  %249 = fadd fast float %248, %244
  %250 = load float, float addrspace(3)* %215, align 4, !tbaa !46, !noalias !50
  %251 = fadd fast float %250, %245
  store float %247, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  store float %249, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  store float %251, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %252 = load float, float addrspace(3)* %219, align 4, !tbaa !46, !noalias !50
  %253 = fadd fast float %252, %247
  %254 = load float, float addrspace(3)* %222, align 4, !tbaa !46, !noalias !50
  %255 = fadd fast float %254, %249
  %256 = fdiv fast float %255, %253
  br i1 %230, label %257, label %265, !dx.controlflow.hints !56

; <label>:257                                     ; preds = %241
  %258 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %218
  %259 = load float, float addrspace(3)* %258, align 4, !tbaa !46, !noalias !50
  %260 = fadd fast float %259, %251
  %261 = fdiv fast float %260, %253
  %262 = lshr i32 %56, 1
  %263 = lshr i32 %57, 1
  %264 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %262, i32 %263, i32 %264, float %256, float %261, float %256, float %256, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %265

; <label>:265                                     ; preds = %257, %241
  br i1 %67, label %267, label %266, !dx.controlflow.hints !57

; <label>:266                                     ; preds = %265
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %56, i32 %57, i32 %58, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %267

; <label>:267                                     ; preds = %266, %265
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 0
  %270 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %271 = fsub fast float %180, %269
  %272 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %271)  ; FMax(a,b)
  %273 = fmul fast float %272, 0x3FF7154760000000
  %274 = fmul fast float %273, %270
  %275 = call float @dx.op.unary.f32(i32 21, float %274)  ; Exp(value)
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 0
  %278 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %279 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %282 = fmul fast float %281, %275
  %283 = fmul fast float %282, %277
  %284 = fmul fast float %282, %278
  %285 = fmul fast float %282, %279
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 2
  %288 = extractvalue %dx.types.CBufRet.i32 %286, 3
  %289 = call i32 @dx.op.tertiary.i32(i32 49, i32 %50, i32 %287, i32 %48)  ; UMad(a,b,c)
  %290 = call i32 @dx.op.tertiary.i32(i32 49, i32 %52, i32 %288, i32 %289)  ; UMad(a,b,c)
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %290, i32 0)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = fadd fast float %115, 1.000000e+00
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %296 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = fmul fast float %299, %119
  %301 = call float @dx.op.unary.f32(i32 21, float %300)  ; Exp(value)
  %302 = fmul fast float %301, %298
  %303 = fsub fast float 4.000000e+00, %298
  %304 = fadd fast float %303, %302
  %305 = fmul fast float %293, 2.000000e+00
  %306 = fmul fast float %305, %295
  %307 = fmul fast float %116, 2.000000e+00
  %308 = fmul fast float %307, %296
  %309 = fsub fast float 1.000000e+00, %306
  %310 = fsub fast float 1.000000e+00, %308
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %315 = fmul fast float %312, %309
  %316 = fmul fast float %313, %309
  %317 = fmul fast float %314, %309
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fmul fast float %319, %310
  %323 = fmul fast float %320, %310
  %324 = fmul fast float %321, %310
  %325 = fadd fast float %322, %315
  %326 = fadd fast float %323, %316
  %327 = fadd fast float %324, %317
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %332 = fadd fast float %325, %329
  %333 = fadd fast float %326, %330
  %334 = fadd fast float %327, %331
  %335 = fadd fast float %116, 1.000000e+00
  %336 = fmul fast float %115, 2.000000e+00
  %337 = fmul fast float %336, %295
  %338 = fmul fast float %335, 2.000000e+00
  %339 = fmul fast float %338, %296
  %340 = fsub fast float 1.000000e+00, %337
  %341 = fsub fast float 1.000000e+00, %339
  %342 = fmul fast float %312, %340
  %343 = fmul fast float %313, %340
  %344 = fmul fast float %314, %340
  %345 = fmul fast float %319, %341
  %346 = fmul fast float %320, %341
  %347 = fmul fast float %321, %341
  %348 = fadd fast float %345, %342
  %349 = fadd fast float %346, %343
  %350 = fadd fast float %347, %344
  %351 = fadd fast float %348, %329
  %352 = fadd fast float %349, %330
  %353 = fadd fast float %350, %331
  %354 = fmul fast float %351, %304
  %355 = fmul fast float %352, %304
  %356 = fmul fast float %353, %304
  %357 = fadd fast float %351, %332
  %358 = fmul fast float %304, %357
  %359 = fadd fast float %352, %333
  %360 = fmul fast float %304, %359
  %361 = fadd fast float %353, %334
  %362 = fmul fast float %304, %361
  %363 = fmul fast float %358, 5.000000e-01
  %364 = fmul fast float %360, 5.000000e-01
  %365 = fmul fast float %362, 5.000000e-01
  %366 = fsub fast float %363, %354
  %367 = fsub fast float %364, %355
  %368 = fsub fast float %365, %356
  %369 = call float @dx.op.dot3.f32(i32 55, float %366, float %367, float %368, float %366, float %367, float %368)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = call float @dx.op.unary.f32(i32 25, float %369)  ; Rsqrt(value)
  %371 = fmul fast float %369, 2.000000e+00
  %372 = fmul fast float %371, %370
  %373 = call float @dx.op.binary.f32(i32 35, float %188, float %372)  ; FMax(a,b)
  %374 = and i32 %292, 8
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %587, label %376, !dx.controlflow.hints !58

; <label>:376                                     ; preds = %267
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %380 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %385 = fsub fast float %178, %382
  %386 = fsub fast float %179, %383
  %387 = fsub fast float %180, %384
  %388 = fmul fast float %385, %378
  %389 = fmul fast float %386, %379
  %390 = fmul fast float %387, %380
  %391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.i32 %391, 3
  %393 = icmp eq i32 %392, 0
  %394 = fcmp fast oge float %390, 0.000000e+00
  %395 = fcmp fast ole float %390, 1.000000e+00
  br i1 %393, label %398, label %396, !dx.controlflow.hints !59

; <label>:396                                     ; preds = %376
  %397 = and i1 %394, %395
  br label %408

; <label>:398                                     ; preds = %376
  %399 = fcmp fast oge float %388, 0.000000e+00
  %400 = fcmp fast oge float %389, 0.000000e+00
  %401 = and i1 %399, %400
  %402 = and i1 %394, %401
  %403 = fcmp fast ole float %388, 1.000000e+00
  %404 = fcmp fast ole float %389, 1.000000e+00
  %405 = and i1 %403, %404
  %406 = and i1 %395, %405
  %407 = and i1 %402, %406
  br label %408

; <label>:408                                     ; preds = %398, %396
  %409 = phi i1 [ %397, %396 ], [ %407, %398 ]
  br i1 %409, label %410, label %581, !dx.controlflow.hints !60

; <label>:410                                     ; preds = %408
  %411 = fcmp fast oeq float %373, 0.000000e+00
  br i1 %411, label %426, label %412, !dx.controlflow.hints !61

; <label>:412                                     ; preds = %410
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 3
  %415 = fmul fast float %414, %373
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 0
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 1
  %419 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %420 = fmul fast float %417, %415
  %421 = fmul fast float %418, %415
  %422 = fmul fast float %419, %415
  %423 = call float @dx.op.unary.f32(i32 23, float %420)  ; Log(value)
  %424 = call float @dx.op.unary.f32(i32 23, float %421)  ; Log(value)
  %425 = call float @dx.op.unary.f32(i32 23, float %422)  ; Log(value)
  br label %426

; <label>:426                                     ; preds = %412, %410
  %427 = phi float [ %423, %412 ], [ 0.000000e+00, %410 ]
  %428 = phi float [ %424, %412 ], [ 0.000000e+00, %410 ]
  %429 = phi float [ %425, %412 ], [ 0.000000e+00, %410 ]
  %430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.i32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.i32 %430, 1
  %433 = uitofp i32 %431 to float
  %434 = uitofp i32 %432 to float
  %435 = fmul fast float %388, %433
  %436 = fmul fast float %389, %434
  %437 = fadd fast float %435, 5.000000e-01
  %438 = fadd fast float %436, 5.000000e-01
  %439 = call float @dx.op.unary.f32(i32 22, float %437)  ; Frc(value)
  %440 = call float @dx.op.unary.f32(i32 22, float %438)  ; Frc(value)
  %441 = call float @dx.op.unary.f32(i32 27, float %437)  ; Round_ni(value)
  %442 = call float @dx.op.unary.f32(i32 27, float %438)  ; Round_ni(value)
  %443 = fadd fast float %441, 1.000000e+00
  %444 = fadd fast float %442, 1.000000e+00
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = fmul fast float %446, %443
  %449 = fmul fast float %447, %444
  %450 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %27, float %448, float %449, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = extractvalue %dx.types.ResRet.f32 %450, 3
  %455 = extractvalue %dx.types.CBufRet.i32 %430, 2
  %456 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %457 = uitofp i32 %455 to float
  %458 = fadd fast float %457, -1.000000e+00
  %459 = fmul fast float %458, %451
  %460 = fmul fast float %458, %452
  %461 = fmul fast float %458, %453
  %462 = fmul fast float %458, %454
  %463 = fadd fast float %459, 5.000000e-01
  %464 = fadd fast float %460, 5.000000e-01
  %465 = fadd fast float %461, 5.000000e-01
  %466 = fadd fast float %462, 5.000000e-01
  %467 = fptoui float %463 to i32
  %468 = fptoui float %464 to i32
  %469 = fptoui float %465 to i32
  %470 = fptoui float %466 to i32
  %471 = uitofp i32 %467 to float
  %472 = uitofp i32 %468 to float
  %473 = uitofp i32 %469 to float
  %474 = uitofp i32 %470 to float
  %475 = fadd fast float %471, 5.000000e-01
  %476 = fadd fast float %472, 5.000000e-01
  %477 = fadd fast float %473, 5.000000e-01
  %478 = fadd fast float %474, 5.000000e-01
  %479 = fmul fast float %475, %456
  %480 = fmul fast float %476, %456
  %481 = fmul fast float %477, %456
  %482 = fmul fast float %478, %456
  %483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %479, float %390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %480, float %390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %481, float %390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %482, float %390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = fsub fast float %488, %490
  %492 = fmul fast float %491, %439
  %493 = fadd fast float %492, %490
  %494 = fsub fast float %486, %484
  %495 = fmul fast float %494, %439
  %496 = fadd fast float %495, %484
  %497 = fsub fast float %496, %493
  %498 = fmul fast float %497, %440
  %499 = fadd fast float %498, %493
  %500 = fcmp fast ogt float %499, 0.000000e+00
  br i1 %500, label %501, label %569, !dx.controlflow.hints !62

; <label>:501                                     ; preds = %426
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 1
  %505 = extractvalue %dx.types.CBufRet.f32 %502, 2
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %508 = extractvalue %dx.types.CBufRet.f32 %506, 1
  %509 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %510 = fmul fast float %386, %378
  %511 = fmul fast float %387, %378
  %512 = fadd fast float %388, %507
  %513 = fadd fast float %510, %508
  %514 = fadd fast float %511, %509
  %515 = fmul fast float %512, %503
  %516 = fmul fast float %513, %503
  %517 = fmul fast float %514, %503
  %518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %515, float %516, float %517, float undef, i32 0, i32 0, i32 0, float %427)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = fmul fast float %512, %504
  %521 = fmul fast float %513, %504
  %522 = fmul fast float %514, %504
  %523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %520, float %521, float %522, float undef, i32 0, i32 0, i32 0, float %428)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 1
  %525 = fmul fast float %512, %505
  %526 = fmul fast float %513, %505
  %527 = fmul fast float %514, %505
  %528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %525, float %526, float %527, float undef, i32 0, i32 0, i32 0, float %429)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 2
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %532 = fmul fast float %524, %519
  %533 = fmul fast float %532, %529
  %534 = call float @dx.op.unary.f32(i32 23, float %533)  ; Log(value)
  %535 = fmul fast float %534, %531
  %536 = call float @dx.op.unary.f32(i32 21, float %535)  ; Exp(value)
  %537 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %538 = fmul fast float %499, %499
  %539 = fmul fast float %538, %536
  %540 = fmul fast float %539, %537
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %543 = fmul fast float %542, %540
  %544 = bitcast float %543 to i32
  %545 = sitofp i32 %544 to float
  %546 = fptosi float %545 to i32
  %547 = bitcast i32 %546 to float
  %548 = fsub fast float 1.000000e+00, %540
  %549 = bitcast float %548 to i32
  %550 = sitofp i32 %549 to float
  %551 = fptosi float %550 to i32
  %552 = bitcast i32 %551 to float
  %553 = fadd fast float %547, %552
  %554 = bitcast float %553 to i32
  %555 = sub nsw i32 2129859010, %554
  %556 = bitcast i32 %555 to float
  %557 = fmul fast float %556, %547
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = fmul fast float %557, %561
  %563 = fadd fast float %562, 1.000000e+00
  %564 = bitcast float %563 to i32
  %565 = sub nsw i32 2129859010, %564
  %566 = bitcast i32 %565 to float
  %567 = fmul fast float %557, %559
  %568 = fmul fast float %567, %566
  br label %569

; <label>:569                                     ; preds = %501, %426
  %570 = phi float [ %568, %501 ], [ %499, %426 ]
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %575 = fmul fast float %572, %570
  %576 = fmul fast float %573, %570
  %577 = fmul fast float %574, %570
  %578 = fadd fast float %575, %283
  %579 = fadd fast float %576, %284
  %580 = fadd fast float %577, %285
  br label %581

; <label>:581                                     ; preds = %569, %408
  %582 = phi float [ %578, %569 ], [ %283, %408 ]
  %583 = phi float [ %579, %569 ], [ %284, %408 ]
  %584 = phi float [ %580, %569 ], [ %285, %408 ]
  %585 = phi float [ %570, %569 ], [ 0.000000e+00, %408 ]
  %586 = fadd fast float %585, %282
  br label %587

; <label>:587                                     ; preds = %581, %267
  %588 = phi float [ %582, %581 ], [ %283, %267 ]
  %589 = phi float [ %583, %581 ], [ %284, %267 ]
  %590 = phi float [ %584, %581 ], [ %285, %267 ]
  %591 = phi float [ %586, %581 ], [ %282, %267 ]
  %592 = and i32 %292, 2
  %593 = icmp ne i32 %592, 0
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 2
  %598 = fadd fast float %597, %595
  %599 = fcmp fast ole float %180, %598
  %600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.i32 %600, 3
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %622, !dx.controlflow.hints !63

; <label>:603                                     ; preds = %587
  %604 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %606 = fsub fast float %178, %604
  %607 = fsub fast float %179, %605
  %608 = extractvalue %dx.types.CBufRet.f32 %596, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %610 = fdiv fast float 1.000000e+00, %608
  %611 = fdiv fast float 1.000000e+00, %609
  %612 = fmul fast float %606, %610
  %613 = fmul fast float %611, %607
  %614 = fcmp fast oge float %612, 0.000000e+00
  %615 = fcmp fast oge float %613, 0.000000e+00
  %616 = and i1 %614, %615
  %617 = and i1 %599, %616
  %618 = fcmp fast ole float %612, 1.000000e+00
  %619 = fcmp fast ole float %613, 1.000000e+00
  %620 = and i1 %618, %619
  %621 = and i1 %620, %617
  br label %622

; <label>:622                                     ; preds = %603, %587
  %623 = phi i1 [ %621, %603 ], [ %599, %587 ]
  %624 = and i1 %593, %623
  br i1 %624, label %625, label %801, !dx.controlflow.hints !64

; <label>:625                                     ; preds = %622
  %626 = fcmp fast oeq float %373, 0.000000e+00
  br i1 %626, label %632, label %627, !dx.controlflow.hints !65

; <label>:627                                     ; preds = %625
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %630 = fmul fast float %629, %373
  %631 = call float @dx.op.unary.f32(i32 23, float %630)  ; Log(value)
  br label %632

; <label>:632                                     ; preds = %627, %625
  %633 = phi float [ %631, %627 ], [ 0.000000e+00, %625 ]
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %638 = fsub fast float %178, %635
  %639 = fsub fast float %179, %636
  %640 = fsub fast float %180, %637
  %641 = fmul fast float %638, %638
  %642 = fmul fast float %639, %639
  %643 = fadd fast float %641, %642
  %644 = fmul fast float %640, %640
  %645 = fadd fast float %643, %644
  %646 = call float @dx.op.unary.f32(i32 24, float %645)  ; Sqrt(value)
  %647 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %648 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %649 = fsub fast float %178, %647
  %650 = fsub fast float %179, %648
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 0
  %653 = extractvalue %dx.types.CBufRet.f32 %651, 1
  %654 = fmul fast float %649, %652
  %655 = fmul fast float %650, %653
  %656 = fsub fast float 1.000000e+00, %655
  br i1 %602, label %663, label %657, !dx.controlflow.hints !66

; <label>:657                                     ; preds = %632
  %658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %27, float %654, float %656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = extractvalue %dx.types.ResRet.f32 %658, 3
  br label %669

; <label>:663                                     ; preds = %632
  %664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %28, float %654, float %656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = extractvalue %dx.types.ResRet.f32 %664, 3
  br label %669

; <label>:669                                     ; preds = %663, %657
  %670 = phi float [ %659, %657 ], [ %665, %663 ]
  %671 = phi float [ %660, %657 ], [ %666, %663 ]
  %672 = phi float [ %661, %657 ], [ %667, %663 ]
  %673 = phi float [ %662, %657 ], [ %668, %663 ]
  %674 = extractvalue %dx.types.CBufRet.f32 %651, 3
  %675 = fmul fast float %674, %671
  %676 = fmul fast float %675, %670
  %677 = fsub fast float %675, %676
  %678 = fcmp fast ole float %677, 0.000000e+00
  %679 = fmul fast float %674, %672
  %680 = fadd fast float %679, %595
  %681 = fdiv fast float 1.000000e+00, %677
  %682 = select i1 %678, float 1.000000e+06, float %681
  %683 = fsub fast float %180, %595
  %684 = fsub fast float %683, %676
  %685 = fmul fast float %682, %684
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %687 = extractvalue %dx.types.CBufRet.f32 %651, 2
  %688 = fmul fast float %687, %686
  %689 = fsub fast float %687, %688
  %690 = fcmp fast olt float %180, %680
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 3
  %693 = select i1 %690, float %692, float 1.000000e+00
  %694 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %695 = fcmp fast oeq float %694, 0.000000e+00
  br i1 %695, label %778, label %696, !dx.controlflow.hints !67

; <label>:696                                     ; preds = %669
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 3
  %699 = fcmp fast ogt float %698, 0.000000e+00
  %700 = extractvalue %dx.types.CBufRet.f32 %691, 2
  br i1 %699, label %701, label %731, !dx.controlflow.hints !68

; <label>:701                                     ; preds = %696
  %702 = fmul fast float %654, %698
  %703 = fmul fast float %655, %698
  %704 = fsub fast float 1.000000e+00, %703
  %705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %25, float %702, float %704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = extractvalue %dx.types.ResRet.f32 %705, 1
  %708 = fmul fast float %706, 2.000000e+00
  %709 = fmul fast float %707, 2.000000e+00
  %710 = fadd fast float %708, -1.000000e+00
  %711 = fadd fast float %709, -1.000000e+00
  %712 = fmul fast float %694, %178
  %713 = fmul fast float %694, %179
  %714 = fmul fast float %694, %180
  %715 = call float @dx.op.unary.f32(i32 22, float %700)  ; Frc(value)
  %716 = fmul fast float %710, %715
  %717 = fmul fast float %711, %715
  %718 = fsub fast float %712, %716
  %719 = fsub fast float %713, %717
  %720 = fadd fast float %700, 5.000000e-01
  %721 = call float @dx.op.unary.f32(i32 22, float %720)  ; Frc(value)
  %722 = fmul fast float %721, %710
  %723 = fmul fast float %721, %711
  %724 = fadd fast float %712, -5.000000e-01
  %725 = fsub fast float %724, %722
  %726 = fadd fast float %713, -5.000000e-01
  %727 = fsub fast float %726, %723
  %728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %725, float %727, float %714, float undef, i32 0, i32 0, i32 0, float %633)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  br label %744

; <label>:731                                     ; preds = %696
  %732 = extractvalue %dx.types.CBufRet.f32 %697, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %697, 1
  %734 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %735 = fmul fast float %700, %732
  %736 = fmul fast float %700, %733
  %737 = fmul fast float %700, %734
  %738 = fsub fast float %178, %735
  %739 = fsub fast float %179, %736
  %740 = fsub fast float %180, %737
  %741 = fmul fast float %738, %694
  %742 = fmul fast float %739, %694
  %743 = fmul fast float %740, %694
  br label %744

; <label>:744                                     ; preds = %731, %701
  %745 = phi float [ %718, %701 ], [ %741, %731 ]
  %746 = phi float [ %719, %701 ], [ %742, %731 ]
  %747 = phi float [ %714, %701 ], [ %743, %731 ]
  %748 = phi float [ %729, %701 ], [ 0.000000e+00, %731 ]
  %749 = phi float [ %730, %701 ], [ 0.000000e+00, %731 ]
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %745, float %746, float %747, float undef, i32 0, i32 0, i32 0, float %633)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = extractvalue %dx.types.ResRet.f32 %750, 1
  br i1 %699, label %753, label %765, !dx.controlflow.hints !69

; <label>:753                                     ; preds = %744
  %754 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %755 = call float @dx.op.unary.f32(i32 22, float %754)  ; Frc(value)
  %756 = fmul fast float %755, 2.000000e+00
  %757 = fadd fast float %756, -1.000000e+00
  %758 = call float @dx.op.unary.f32(i32 6, float %757)  ; FAbs(value)
  %759 = fsub fast float %748, %751
  %760 = fmul fast float %758, %759
  %761 = fadd fast float %760, %751
  %762 = fsub fast float %749, %752
  %763 = fmul fast float %758, %762
  %764 = fadd fast float %763, %752
  br label %765

; <label>:765                                     ; preds = %753, %744
  %766 = phi float [ %761, %753 ], [ %751, %744 ]
  %767 = phi float [ %764, %753 ], [ %752, %744 ]
  %768 = extractvalue %dx.types.CBufRet.f32 %594, 3
  %769 = fadd fast float %768, %768
  %770 = fdiv fast float 2.000000e+00, %769
  %771 = fmul fast float %768, 2.000000e+00
  %772 = fadd fast float %766, -1.000000e+00
  %773 = fadd fast float %772, %767
  %774 = fadd fast float %773, %771
  %775 = fmul fast float %774, %770
  %776 = fadd fast float %775, -1.000000e+00
  %777 = call float @dx.op.unary.f32(i32 7, float %776)  ; Saturate(value)
  br label %778

; <label>:778                                     ; preds = %765, %669
  %779 = phi float [ %777, %765 ], [ 1.000000e+00, %669 ]
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %782 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %783 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 1
  %786 = fsub fast float %646, %785
  %787 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %788 = fmul fast float %786, %787
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %790 = fmul fast float %693, %673
  %791 = fmul fast float %790, %689
  %792 = fmul fast float %791, %779
  %793 = fmul fast float %792, %789
  %794 = fmul fast float %793, %781
  %795 = fmul fast float %793, %782
  %796 = fmul fast float %793, %783
  %797 = fadd fast float %794, %588
  %798 = fadd fast float %795, %589
  %799 = fadd fast float %796, %590
  %800 = fadd fast float %793, %591
  br label %801

; <label>:801                                     ; preds = %778, %622
  %802 = phi float [ %797, %778 ], [ %588, %622 ]
  %803 = phi float [ %798, %778 ], [ %589, %622 ]
  %804 = phi float [ %799, %778 ], [ %590, %622 ]
  %805 = phi float [ %800, %778 ], [ %591, %622 ]
  %806 = and i32 %292, 1
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %1081, label %808, !dx.controlflow.hints !70

; <label>:808                                     ; preds = %801
  %809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.i32 %809, 1
  %811 = and i32 %810, 1
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %888, label %813, !dx.controlflow.hints !71

; <label>:813                                     ; preds = %808
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 3
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %819 = extractvalue %dx.types.CBufRet.f32 %814, 0
  %820 = extractvalue %dx.types.CBufRet.f32 %814, 1
  %821 = extractvalue %dx.types.CBufRet.f32 %814, 2
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %824 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %825 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %828 = and i32 %810, 2
  %829 = extractvalue %dx.types.CBufRet.i32 %809, 0
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %867, label %831

; <label>:831                                     ; preds = %813
  br label %832

; <label>:832                                     ; preds = %832, %831
  %833 = phi float [ %861, %832 ], [ 0.000000e+00, %831 ]
  %834 = phi float [ %860, %832 ], [ 1.000000e+06, %831 ]
  %835 = phi i32 [ %862, %832 ], [ 0, %831 ]
  %836 = add i32 %835, 171
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %836)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 0
  %839 = extractvalue %dx.types.CBufRet.f32 %837, 1
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %842 = extractvalue %dx.types.CBufRet.f32 %837, 2
  %843 = fsub fast float %178, %838
  %844 = fsub fast float %179, %839
  %845 = fmul fast float %843, %843
  %846 = fmul fast float %844, %844
  %847 = fadd fast float %845, %846
  %848 = call float @dx.op.unary.f32(i32 24, float %847)  ; Sqrt(value)
  %849 = fsub fast float %848, %842
  %850 = icmp ne i32 %828, 0
  %851 = fsub fast float -0.000000e+00, %818
  %852 = select i1 %850, float %851, float %818
  %853 = fmul fast float %849, %852
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %855 = fmul fast float %854, %817
  %856 = fsub fast float %841, %180
  %857 = fmul fast float %856, %815
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %859 = fmul fast float %855, %858
  %860 = call float @dx.op.binary.f32(i32 36, float %834, float %849)  ; FMin(a,b)
  %861 = call float @dx.op.binary.f32(i32 35, float %833, float %859)  ; FMax(a,b)
  %862 = add nuw nsw i32 %835, 1
  %863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.i32 %863, 0
  %865 = icmp ult i32 %862, %864
  br i1 %865, label %832, label %866

; <label>:866                                     ; preds = %832
  br label %867

; <label>:867                                     ; preds = %866, %813
  %868 = phi float [ 0.000000e+00, %813 ], [ %861, %866 ]
  %869 = phi float [ 1.000000e+06, %813 ], [ %860, %866 ]
  %870 = fadd fast float %868, %805
  %871 = fmul fast float %869, %827
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = fsub fast float %823, %819
  %874 = fsub fast float %824, %820
  %875 = fsub fast float %825, %821
  %876 = fmul fast float %872, %873
  %877 = fmul fast float %872, %874
  %878 = fmul fast float %872, %875
  %879 = fadd fast float %876, %819
  %880 = fadd fast float %877, %820
  %881 = fadd fast float %878, %821
  %882 = fmul fast float %879, %868
  %883 = fmul fast float %880, %868
  %884 = fmul fast float %881, %868
  %885 = fadd fast float %882, %802
  %886 = fadd fast float %883, %803
  %887 = fadd fast float %884, %804
  br label %1081

; <label>:888                                     ; preds = %808
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 2
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 3
  %892 = fmul fast float %890, %178
  %893 = fmul fast float %891, %179
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = fadd fast float %892, %895
  %898 = fadd fast float %893, %896
  %899 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %900 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %28, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = fmul fast float %904, %902
  %906 = fsub fast float %897, %899
  %907 = fsub fast float %898, %900
  %908 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %910 = fmul fast float %908, %906
  %911 = fmul fast float %909, %907
  %912 = fmul fast float %910, %910
  %913 = fmul fast float %911, %911
  %914 = fadd fast float %912, %913
  %915 = call float @dx.op.unary.f32(i32 24, float %914)  ; Sqrt(value)
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 3
  %918 = fmul fast float %917, %915
  %919 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %920 = extractvalue %dx.types.CBufRet.f32 %916, 2
  %921 = fsub fast float %920, %905
  %922 = fmul fast float %921, %919
  %923 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %924 = fsub fast float %180, %905
  %925 = fsub fast float %924, %923
  %926 = fsub fast float %925, %922
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 2
  %929 = fsub fast float %926, %928
  %930 = fcmp fast olt float %929, 0.000000e+00
  %931 = extractvalue %dx.types.CBufRet.i32 %809, 0
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %983, label %933

; <label>:933                                     ; preds = %888
  br label %934

; <label>:934                                     ; preds = %972, %933
  %935 = phi i32 [ %978, %972 ], [ 1, %933 ]
  %936 = phi i32 [ %979, %972 ], [ 0, %933 ]
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.i32 %939, 1
  %941 = and i32 %940, 8
  %942 = icmp eq i32 %941, 0
  %943 = fcmp fast ogt float %938, %926
  %944 = or i1 %943, %942
  %945 = add i32 %936, 171
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %945)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 2
  br i1 %944, label %950, label %956, !dx.controlflow.hints !72

; <label>:950                                     ; preds = %934
  %951 = fsub fast float %947, %178
  %952 = fsub fast float %948, %179
  %953 = fmul fast float %951, %951
  %954 = fmul fast float %952, %952
  %955 = fadd fast float %953, %954
  br label %972

; <label>:956                                     ; preds = %934
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %959 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %960 = fmul fast float %959, %958
  %961 = fsub fast float %960, %938
  %962 = fdiv fast float %949, %961
  %963 = fsub fast float %178, %947
  %964 = fsub fast float %179, %948
  %965 = fsub fast float %926, %938
  %966 = fmul fast float %962, %965
  %967 = fmul fast float %963, %963
  %968 = fmul fast float %964, %964
  %969 = fadd fast float %967, %968
  %970 = fmul fast float %966, %966
  %971 = fadd fast float %969, %970
  br label %972

; <label>:972                                     ; preds = %956, %950
  %973 = phi float [ %955, %950 ], [ %971, %956 ]
  %974 = call float @dx.op.unary.f32(i32 24, float %973)  ; Sqrt(value)
  %975 = fsub float %949, %974
  %976 = fcmp fast olt float %975, 0.000000e+00
  %977 = zext i1 %976 to i32
  %978 = and i32 %977, %935
  %979 = add i32 %936, 1
  %980 = extractvalue %dx.types.CBufRet.i32 %939, 0
  %981 = icmp ult i32 %979, %980
  br i1 %981, label %934, label %982

; <label>:982                                     ; preds = %972
  br label %983

; <label>:983                                     ; preds = %982, %888
  %984 = phi i32 [ 1, %888 ], [ %978, %982 ]
  br label %985

; <label>:985                                     ; preds = %985, %983
  %986 = phi i32 [ %1022, %985 ], [ %984, %983 ]
  %987 = phi i32 [ %1023, %985 ], [ 0, %983 ]
  %988 = add nuw nsw i32 %987, 191
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %988)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %991 = extractvalue %dx.types.CBufRet.f32 %989, 1
  %992 = extractvalue %dx.types.CBufRet.f32 %989, 2
  %993 = add nuw nsw i32 %987, 195
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %993)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %997 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %998 = fsub fast float %178, %990
  %999 = fsub fast float %179, %991
  %1000 = fsub fast float %926, %992
  %1001 = call float @dx.op.unary.f32(i32 6, float %998)  ; FAbs(value)
  %1002 = call float @dx.op.unary.f32(i32 6, float %999)  ; FAbs(value)
  %1003 = call float @dx.op.unary.f32(i32 6, float %1000)  ; FAbs(value)
  %1004 = fsub fast float %1001, %995
  %1005 = fsub fast float %1002, %996
  %1006 = fsub fast float %1003, %997
  %1007 = call float @dx.op.binary.f32(i32 35, float %1004, float 0.000000e+00)  ; FMax(a,b)
  %1008 = call float @dx.op.binary.f32(i32 35, float %1005, float 0.000000e+00)  ; FMax(a,b)
  %1009 = call float @dx.op.binary.f32(i32 35, float %1006, float 0.000000e+00)  ; FMax(a,b)
  %1010 = fmul fast float %1007, %1007
  %1011 = fmul fast float %1008, %1008
  %1012 = fadd fast float %1011, %1010
  %1013 = fmul fast float %1009, %1009
  %1014 = fadd fast float %1012, %1013
  %1015 = call float @dx.op.unary.f32(i32 24, float %1014)  ; Sqrt(value)
  %1016 = call float @dx.op.binary.f32(i32 35, float %1005, float %1006)  ; FMax(a,b)
  %1017 = call float @dx.op.binary.f32(i32 35, float %1004, float %1016)  ; FMax(a,b)
  %1018 = call float @dx.op.binary.f32(i32 36, float %1017, float 0.000000e+00)  ; FMin(a,b)
  %1019 = fadd fast float %1018, %1015
  %1020 = fcmp ogt float %1019, -0.000000e+00
  %1021 = zext i1 %1020 to i32
  %1022 = and i32 %1021, %986
  %1023 = add nuw nsw i32 %987, 1
  %1024 = icmp eq i32 %1023, 4
  br i1 %1024, label %1025, label %985

; <label>:1025                                    ; preds = %985
  %1026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.i32 %1026, 1
  %1028 = lshr i32 %1027, 1
  %1029 = xor i32 %1028, %1022
  %1030 = zext i1 %930 to i32
  %1031 = and i32 %1029, %1030
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1081, label %1033, !dx.controlflow.hints !73

; <label>:1033                                    ; preds = %1025
  %1034 = fmul fast float %171, %171
  %1035 = fmul fast float %172, %172
  %1036 = fadd fast float %1034, %1035
  %1037 = fmul fast float %173, %173
  %1038 = fadd fast float %1036, %1037
  %1039 = call float @dx.op.unary.f32(i32 24, float %1038)  ; Sqrt(value)
  %1040 = and i32 %810, 4
  %1041 = icmp ne i32 %1040, 0
  %1042 = select i1 %1041, float %1039, float 1.000000e+00
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 1
  %1045 = fsub fast float %1042, %1044
  %1046 = extractvalue %dx.types.CBufRet.f32 %1043, 3
  %1047 = fmul fast float %1045, %1046
  %1048 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 3
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1053 = fsub fast float %1052, %926
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 3
  %1056 = fmul fast float %1053, %1055
  %1057 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1058 = fmul fast float %1057, %1050
  %1059 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1060 = fsub fast float %1039, %1059
  %1061 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1062 = fmul fast float %1060, %1061
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1064 = fsub fast float 1.000000e+00, %1048
  %1065 = fmul fast float %1063, %1064
  %1066 = fadd fast float %1065, %1048
  %1067 = extractvalue %dx.types.CBufRet.f32 %1043, 0
  %1068 = fsub fast float %1058, %1067
  %1069 = fmul fast float %1068, %1066
  %1070 = fadd fast float %1069, %1067
  %1071 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1072 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1073 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1074 = fadd fast float %1070, %805
  %1075 = fmul fast float %1070, %1071
  %1076 = fmul fast float %1070, %1072
  %1077 = fmul fast float %1070, %1073
  %1078 = fadd fast float %1075, %802
  %1079 = fadd fast float %1076, %803
  %1080 = fadd fast float %1077, %804
  br label %1081

; <label>:1081                                    ; preds = %1033, %1025, %867, %801
  %1082 = phi float [ %802, %801 ], [ %885, %867 ], [ %1078, %1033 ], [ %802, %1025 ]
  %1083 = phi float [ %803, %801 ], [ %886, %867 ], [ %1079, %1033 ], [ %803, %1025 ]
  %1084 = phi float [ %804, %801 ], [ %887, %867 ], [ %1080, %1033 ], [ %804, %1025 ]
  %1085 = phi float [ %805, %801 ], [ %870, %867 ], [ %1074, %1033 ], [ %805, %1025 ]
  %1086 = and i32 %292, 16
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1879, label %1088, !dx.controlflow.hints !74

; <label>:1088                                    ; preds = %1081
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.CBufRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 3
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 3
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 3
  %1099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.i32 %1099, 0
  %1101 = icmp ne i32 %1100, 0
  %1102 = zext i1 %1101 to i32
  %1103 = extractvalue %dx.types.CBufRet.i32 %1099, 1
  %1104 = icmp ne i32 %1103, 0
  %1105 = zext i1 %1104 to i32
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = bitcast float %1107 to i32
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1159, label %1110

; <label>:1110                                    ; preds = %1088
  br label %1111

; <label>:1111                                    ; preds = %1154, %1110
  %1112 = phi i32 [ %1155, %1154 ], [ 0, %1110 ]
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = bitcast float %1114 to i32
  %1116 = call i32 @dx.op.tertiary.i32(i32 49, i32 %290, i32 %1115, i32 %1112)  ; UMad(a,b,c)
  %1117 = shl i32 %1116, 2
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  br label %1120

; <label>:1120                                    ; preds = %1123, %1111
  %1121 = phi i32 [ %1119, %1111 ], [ %1128, %1123 ]
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1154, label %1123

; <label>:1123                                    ; preds = %1120
  %1124 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1121)  ; FirstbitLo(value)
  %1125 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1112, i32 %1124)  ; UMad(a,b,c)
  %1126 = and i32 %1124, 31
  %1127 = shl i32 1, %1126
  %1128 = xor i32 %1127, %1121
  %1129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1125, i32 0)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1132 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1125, i32 16)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = fsub fast float %1130, %1134
  %1138 = fsub fast float %1131, %1135
  %1139 = fsub fast float %1132, %1136
  %1140 = fadd fast float %1134, %1130
  %1141 = fadd fast float %1135, %1131
  %1142 = fadd fast float %1136, %1132
  %1143 = fcmp fast ogt float %178, %1137
  %1144 = fcmp fast ogt float %179, %1138
  %1145 = fcmp fast ogt float %180, %1139
  %1146 = and i1 %1143, %1144
  %1147 = and i1 %1145, %1146
  %1148 = fcmp fast olt float %178, %1140
  %1149 = fcmp fast olt float %179, %1141
  %1150 = fcmp fast olt float %180, %1142
  %1151 = and i1 %1148, %1149
  %1152 = and i1 %1150, %1151
  %1153 = and i1 %1147, %1152
  br i1 %1153, label %1157, label %1120, !dx.controlflow.hints !75

; <label>:1154                                    ; preds = %1120
  %1155 = add i32 %1112, 1
  %1156 = icmp ult i32 %1155, %1115
  br i1 %1156, label %1111, label %1158, !llvm.loop !76

; <label>:1157                                    ; preds = %1123
  br label %1159

; <label>:1158                                    ; preds = %1154
  br label %1159

; <label>:1159                                    ; preds = %1158, %1157, %1088
  %1160 = phi i32 [ 255, %1088 ], [ %1125, %1157 ], [ 255, %1158 ]
  %1161 = icmp eq i32 %1160, 255
  br i1 %1161, label %1181, label %1162, !dx.controlflow.hints !78

; <label>:1162                                    ; preds = %1159
  %1163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 32)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.ResRet.f32 %1163, 2
  %1167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 132)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 136)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 152)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1160, i32 156)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1160, i32 160)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = icmp ne i32 %1174, 0
  %1178 = zext i1 %1177 to i32
  %1179 = icmp ne i32 %1176, 0
  %1180 = zext i1 %1179 to i32
  br label %1181

; <label>:1181                                    ; preds = %1162, %1159
  %1182 = phi float [ %1164, %1162 ], [ %1090, %1159 ]
  %1183 = phi float [ %1165, %1162 ], [ %1091, %1159 ]
  %1184 = phi float [ %1166, %1162 ], [ %1092, %1159 ]
  %1185 = phi float [ %1168, %1162 ], [ %1094, %1159 ]
  %1186 = phi float [ %1170, %1162 ], [ %1096, %1159 ]
  %1187 = phi float [ %1172, %1162 ], [ %1098, %1159 ]
  %1188 = phi i32 [ %1178, %1162 ], [ %1102, %1159 ]
  %1189 = phi i32 [ %1180, %1162 ], [ %1105, %1159 ]
  %1190 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1191 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1192 = fsub fast float %178, %1190
  %1193 = fsub fast float %179, %1191
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 3
  %1197 = fmul fast float %1192, %1195
  %1198 = fmul fast float %1193, %1196
  %1199 = call float @dx.op.binary.f32(i32 36, float %1197, float %1198)  ; FMin(a,b)
  %1200 = fcmp fast olt float %1199, 0.000000e+00
  %1201 = call float @dx.op.binary.f32(i32 35, float %1197, float %1198)  ; FMax(a,b)
  %1202 = fcmp fast ogt float %1201, 1.000000e+00
  %1203 = or i1 %1200, %1202
  %1204 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1205 = fcmp fast olt float %180, %1204
  %1206 = or i1 %1203, %1205
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 3
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = fadd fast float %1210, %1208
  %1212 = fcmp fast ogt float %180, %1211
  %1213 = or i1 %1206, %1212
  br i1 %1213, label %1498, label %1214, !dx.controlflow.hints !79

; <label>:1214                                    ; preds = %1181
  %1215 = fsub fast float 1.000000e+00, %1198
  %1216 = extractvalue %dx.types.CBufRet.f32 %1209, 3
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1220 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1225 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  br i1 %1161, label %1241, label %1226, !dx.controlflow.hints !80

; <label>:1226                                    ; preds = %1214
  %1227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 48)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 104)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 108)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 112)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 116)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 120)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  br label %1241

; <label>:1241                                    ; preds = %1226, %1214
  %1242 = phi float [ %1234, %1226 ], [ %1216, %1214 ]
  %1243 = phi float [ %1238, %1226 ], [ %1218, %1214 ]
  %1244 = phi float [ %1240, %1226 ], [ %1219, %1214 ]
  %1245 = phi float [ %1236, %1226 ], [ %1220, %1214 ]
  %1246 = phi float [ %1228, %1226 ], [ %1222, %1214 ]
  %1247 = phi float [ %1229, %1226 ], [ %1223, %1214 ]
  %1248 = phi float [ %1230, %1226 ], [ %1224, %1214 ]
  %1249 = phi float [ %1232, %1226 ], [ %1225, %1214 ]
  %1250 = fcmp fast oeq float %1242, 0.000000e+00
  br i1 %1250, label %1366, label %1251, !dx.controlflow.hints !81

; <label>:1251                                    ; preds = %1241
  %1252 = fcmp fast ogt float %1243, 0.000000e+00
  %1253 = fcmp fast oeq float %373, 0.000000e+00
  br i1 %1253, label %1258, label %1254, !dx.controlflow.hints !65

; <label>:1254                                    ; preds = %1251
  %1255 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1256 = fmul fast float %1255, %373
  %1257 = call float @dx.op.unary.f32(i32 23, float %1256)  ; Log(value)
  br label %1258

; <label>:1258                                    ; preds = %1254, %1251
  %1259 = phi float [ %1257, %1254 ], [ 0.000000e+00, %1251 ]
  br i1 %1253, label %1264, label %1260, !dx.controlflow.hints !65

; <label>:1260                                    ; preds = %1258
  %1261 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1262 = fmul fast float %1261, %373
  %1263 = call float @dx.op.unary.f32(i32 23, float %1262)  ; Log(value)
  br label %1264

; <label>:1264                                    ; preds = %1260, %1258
  %1265 = phi float [ %1263, %1260 ], [ 0.000000e+00, %1258 ]
  br i1 %1252, label %1266, label %1328, !dx.controlflow.hints !82

; <label>:1266                                    ; preds = %1264
  %1267 = fcmp fast ogt float %1244, 0.000000e+00
  br i1 %1267, label %1268, label %1278, !dx.controlflow.hints !83

; <label>:1268                                    ; preds = %1266
  %1269 = fmul fast float %1244, %1197
  %1270 = fmul fast float %1244, %1215
  %1271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %25, float %1269, float %1270, float undef, float undef, i32 0, i32 0, i32 undef, float %1265)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.ResRet.f32 %1271, 1
  %1274 = fmul fast float %1272, 2.000000e+00
  %1275 = fmul fast float %1273, 2.000000e+00
  %1276 = fadd fast float %1274, -1.000000e+00
  %1277 = fadd fast float %1275, -1.000000e+00
  br label %1299

; <label>:1278                                    ; preds = %1266
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1281 = fmul fast float %1280, %1197
  %1282 = fmul fast float %1280, %1215
  %1283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %27, float %1281, float %1282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.ResRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.ResRet.f32 %1283, 2
  %1287 = fmul fast float %1284, 2.000000e+00
  %1288 = fmul fast float %1285, 2.000000e+00
  %1289 = fmul fast float %1286, 2.000000e+00
  %1290 = fadd fast float %1287, -1.000000e+00
  %1291 = fadd fast float %1288, -1.000000e+00
  %1292 = fadd fast float %1289, -1.000000e+00
  %1293 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1294 = fmul fast float %1290, %1293
  %1295 = fmul fast float %1291, %1293
  %1296 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1297 = fmul fast float %1296, 5.000000e-01
  %1298 = fmul fast float %1297, %1292
  br label %1299

; <label>:1299                                    ; preds = %1278, %1268
  %1300 = phi float [ %1276, %1268 ], [ %1294, %1278 ]
  %1301 = phi float [ %1277, %1268 ], [ %1295, %1278 ]
  %1302 = phi float [ 0.000000e+00, %1268 ], [ %1298, %1278 ]
  %1303 = fmul fast float %1242, %178
  %1304 = fmul fast float %1242, %179
  %1305 = fmul fast float %1242, %180
  %1306 = call float @dx.op.unary.f32(i32 22, float %1243)  ; Frc(value)
  %1307 = fmul fast float %1306, %1300
  %1308 = fmul fast float %1306, %1301
  %1309 = fmul fast float %1306, %1302
  %1310 = fsub fast float %1303, %1307
  %1311 = fsub fast float %1304, %1308
  %1312 = fsub fast float %1305, %1309
  %1313 = fadd fast float %1243, 5.000000e-01
  %1314 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1315 = fmul fast float %1314, %1300
  %1316 = fmul fast float %1314, %1301
  %1317 = fmul fast float %1314, %1302
  %1318 = fadd fast float %1303, -5.000000e-01
  %1319 = fsub fast float %1318, %1315
  %1320 = fadd fast float %1304, -5.000000e-01
  %1321 = fsub fast float %1320, %1316
  %1322 = fadd fast float %1305, -5.000000e-01
  %1323 = fsub fast float %1322, %1317
  %1324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %1319, float %1321, float %1323, float undef, i32 0, i32 0, i32 0, float %1259)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.ResRet.f32 %1324, 1
  %1327 = fadd fast float %1325, %1245
  br label %1338

; <label>:1328                                    ; preds = %1264
  %1329 = fmul fast float %1249, %1246
  %1330 = fmul fast float %1249, %1247
  %1331 = fmul fast float %1249, %1248
  %1332 = fsub fast float %178, %1329
  %1333 = fsub fast float %179, %1330
  %1334 = fsub fast float %180, %1331
  %1335 = fmul fast float %1332, %1242
  %1336 = fmul fast float %1333, %1242
  %1337 = fmul fast float %1334, %1242
  br label %1338

; <label>:1338                                    ; preds = %1328, %1299
  %1339 = phi float [ %1310, %1299 ], [ %1335, %1328 ]
  %1340 = phi float [ %1311, %1299 ], [ %1336, %1328 ]
  %1341 = phi float [ %1312, %1299 ], [ %1337, %1328 ]
  %1342 = phi float [ %1327, %1299 ], [ 0.000000e+00, %1328 ]
  %1343 = phi float [ %1326, %1299 ], [ 0.000000e+00, %1328 ]
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %1339, float %1340, float %1341, float undef, i32 0, i32 0, i32 0, float %1259)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = fadd fast float %1345, %1245
  br i1 %1252, label %1348, label %1359, !dx.controlflow.hints !84

; <label>:1348                                    ; preds = %1338
  %1349 = call float @dx.op.unary.f32(i32 22, float %1243)  ; Frc(value)
  %1350 = fmul fast float %1349, 2.000000e+00
  %1351 = fadd fast float %1350, -1.000000e+00
  %1352 = call float @dx.op.unary.f32(i32 6, float %1351)  ; FAbs(value)
  %1353 = fsub fast float %1342, %1347
  %1354 = fmul fast float %1352, %1353
  %1355 = fadd fast float %1354, %1347
  %1356 = fsub fast float %1343, %1346
  %1357 = fmul fast float %1352, %1356
  %1358 = fadd fast float %1357, %1346
  br label %1359

; <label>:1359                                    ; preds = %1348, %1338
  %1360 = phi float [ %1355, %1348 ], [ %1347, %1338 ]
  %1361 = phi float [ %1358, %1348 ], [ %1346, %1338 ]
  %1362 = fsub fast float %1360, %1361
  %1363 = fsub fast float 1.000000e+00, %1361
  %1364 = fdiv fast float %1362, %1363
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  br label %1366

; <label>:1366                                    ; preds = %1359, %1241
  %1367 = phi float [ %1365, %1359 ], [ 1.000000e+00, %1241 ]
  %1368 = fcmp fast oeq float %373, 0.000000e+00
  br i1 %1368, label %1373, label %1369, !dx.controlflow.hints !65

; <label>:1369                                    ; preds = %1366
  %1370 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1371 = fmul fast float %1370, %373
  %1372 = call float @dx.op.unary.f32(i32 23, float %1371)  ; Log(value)
  br label %1373

; <label>:1373                                    ; preds = %1369, %1366
  %1374 = phi float [ %1372, %1369 ], [ 0.000000e+00, %1366 ]
  %1375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %1197, float %1215, float undef, float undef, i32 0, i32 0, i32 undef, float %1374)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1197, float %1215, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.ResRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.ResRet.f32 %1377, 2
  %1381 = extractvalue %dx.types.ResRet.f32 %1377, 3
  %1382 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1197, float %1215, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = extractvalue %dx.types.ResRet.f32 %1382, 3
  %1387 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1197, float %1215, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1387, 2
  %1391 = extractvalue %dx.types.ResRet.f32 %1387, 3
  %1392 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1197, float %1215, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = extractvalue %dx.types.ResRet.f32 %1392, 3
  %1397 = fadd fast float %1378, %1379
  %1398 = fadd fast float %1397, %1380
  %1399 = fadd fast float %1398, %1381
  %1400 = fmul fast float %1383, %1378
  %1401 = fmul fast float %1384, %1379
  %1402 = fadd fast float %1400, %1401
  %1403 = fmul fast float %1385, %1380
  %1404 = fadd fast float %1402, %1403
  %1405 = fmul fast float %1386, %1381
  %1406 = fadd fast float %1404, %1405
  %1407 = fmul fast float %1388, %1378
  %1408 = fmul fast float %1389, %1379
  %1409 = fadd fast float %1407, %1408
  %1410 = fmul fast float %1390, %1380
  %1411 = fadd fast float %1409, %1410
  %1412 = fmul fast float %1391, %1381
  %1413 = fadd fast float %1411, %1412
  %1414 = fmul fast float %1393, %1378
  %1415 = fmul fast float %1394, %1379
  %1416 = fadd fast float %1414, %1415
  %1417 = fmul fast float %1395, %1380
  %1418 = fadd fast float %1416, %1417
  %1419 = fmul fast float %1396, %1381
  %1420 = fadd fast float %1418, %1419
  %1421 = fcmp fast ogt float %1399, 0.000000e+00
  %1422 = fdiv fast float %1406, %1399
  %1423 = select i1 %1421, float %1422, float 0.000000e+00
  %1424 = fdiv fast float %1413, %1399
  %1425 = select i1 %1421, float %1424, float 0.000000e+00
  %1426 = fdiv fast float %1420, %1399
  %1427 = select i1 %1421, float %1426, float 0.000000e+00
  %1428 = fcmp fast ogt float %180, %1425
  %1429 = fcmp fast olt float %180, %1423
  %1430 = and i1 %1429, %1428
  br i1 %1430, label %1431, label %1498, !dx.controlflow.hints !85

; <label>:1431                                    ; preds = %1373
  %1432 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1435 = extractvalue %dx.types.CBufRet.f32 %1433, 3
  br i1 %1161, label %1446, label %1436, !dx.controlflow.hints !86

; <label>:1436                                    ; preds = %1431
  %1437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 60)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 64)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.ResRet.f32 %1439, 1
  %1442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 72)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 96)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  br label %1446

; <label>:1446                                    ; preds = %1436, %1431
  %1447 = phi float [ %1438, %1436 ], [ %1210, %1431 ]
  %1448 = phi float [ %1443, %1436 ], [ %1208, %1431 ]
  %1449 = phi float [ %1445, %1436 ], [ %1432, %1431 ]
  %1450 = phi float [ %1440, %1436 ], [ %1434, %1431 ]
  %1451 = phi float [ %1441, %1436 ], [ %1435, %1431 ]
  %1452 = call float @dx.op.binary.f32(i32 35, float %1376, float 0.000000e+00)  ; FMax(a,b)
  %1453 = call float @dx.op.binary.f32(i32 36, float %1452, float 1.000000e+00)  ; FMin(a,b)
  %1454 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1455 = call float @dx.op.binary.f32(i32 35, float %1427, float 0x3F847AE140000000)  ; FMax(a,b)
  %1456 = fsub fast float %1423, %180
  %1457 = fsub fast float %180, %1425
  %1458 = call float @dx.op.binary.f32(i32 36, float %1457, float %1456)  ; FMin(a,b)
  %1459 = fdiv fast float %1458, %1455
  %1460 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1461 = fsub fast float %180, %1448
  %1462 = fdiv fast float %1461, %1447
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1464 = fsub fast float 1.000000e+00, %1463
  %1465 = fmul float %1460, %1464
  %1466 = fmul float %1465, %1465
  %1467 = fmul fast float %1454, %1367
  %1468 = fmul fast float %1467, %1466
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 2
  %1471 = extractvalue %dx.types.CBufRet.f32 %1469, 1
  %1472 = fsub fast float %1468, %1471
  %1473 = fsub fast float %1470, %1471
  %1474 = fdiv fast float %1472, %1473
  %1475 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1476 = fmul fast float %1475, %1449
  %1477 = fcmp fast ogt float %1451, 0.000000e+00
  br i1 %1477, label %1478, label %1498, !dx.controlflow.hints !87

; <label>:1478                                    ; preds = %1446
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.CBufRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.CBufRet.f32 %1479, 2
  %1483 = fsub fast float %178, %1480
  %1484 = fsub fast float %179, %1481
  %1485 = fsub fast float %180, %1482
  %1486 = fmul fast float %1483, %1483
  %1487 = fmul fast float %1484, %1484
  %1488 = fadd fast float %1486, %1487
  %1489 = fmul fast float %1485, %1485
  %1490 = fadd fast float %1488, %1489
  %1491 = call float @dx.op.unary.f32(i32 24, float %1490)  ; Sqrt(value)
  %1492 = fsub fast float %1491, %1450
  %1493 = fsub fast float %1451, %1450
  %1494 = fdiv fast float %1492, %1493
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = fmul fast float %1495, %1495
  %1497 = fmul fast float %1496, %1476
  br label %1498

; <label>:1498                                    ; preds = %1478, %1446, %1373, %1181
  %1499 = phi float [ 0.000000e+00, %1181 ], [ 0.000000e+00, %1373 ], [ %1497, %1478 ], [ %1476, %1446 ]
  %1500 = fcmp fast oeq float %1499, 0.000000e+00
  br i1 %1500, label %1879, label %1501, !dx.controlflow.hints !88

; <label>:1501                                    ; preds = %1498
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 0
  %1504 = extractvalue %dx.types.CBufRet.f32 %1502, 1
  %1505 = extractvalue %dx.types.CBufRet.f32 %1502, 2
  %1506 = fsub fast float %178, %1503
  %1507 = fadd fast float %1506, %1505
  %1508 = fsub fast float %179, %1504
  %1509 = fadd fast float %1508, %1505
  %1510 = extractvalue %dx.types.CBufRet.f32 %1502, 3
  %1511 = fmul fast float %1507, %1510
  %1512 = fmul fast float %1509, %1510
  %1513 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1514 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1515 = fsub fast float 1.000000e+00, %1513
  %1516 = fsub fast float 1.000000e+00, %1514
  %1517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %28, float %1515, float %1516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1518 = extractvalue %dx.types.ResRet.f32 %1517, 0
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 2
  %1521 = fmul fast float %1520, %1518
  %1522 = extractvalue %dx.types.CBufRet.f32 %1519, 3
  %1523 = fadd fast float %1522, %1521
  %1524 = fcmp fast ogt float %1518, 0.000000e+00
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 32768
  %1528 = icmp ne i32 %1527, 0
  %1529 = and i1 %1524, %1528
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 3
  %1532 = fadd fast float %1531, %1523
  %1533 = fcmp fast ole float %180, %1532
  %1534 = and i1 %1529, %1533
  %1535 = xor i1 %1534, true
  %1536 = icmp ne i32 %1188, 0
  %1537 = and i1 %1536, %1535
  %1538 = icmp ne i32 %1189, 0
  %1539 = and i1 %1538, %1534
  %1540 = or i1 %1537, %1539
  br i1 %1540, label %1879, label %1541, !dx.controlflow.hints !89

; <label>:1541                                    ; preds = %1501
  %1542 = fsub fast float %180, %1523
  %1543 = call float @dx.op.unary.f32(i32 6, float %1542)  ; FAbs(value)
  %1544 = fdiv fast float %1543, %1187
  %1545 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1546 = fmul fast float %1545, %1499
  %1547 = fcmp fast une float %1185, 0.000000e+00
  br i1 %1547, label %1548, label %1867, !dx.controlflow.hints !90

; <label>:1548                                    ; preds = %1541
  %1549 = fmul fast float %1185, %106
  %1550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1551 = extractvalue %dx.types.CBufRet.f32 %1550, 0
  %1552 = extractvalue %dx.types.CBufRet.f32 %1550, 1
  %1553 = extractvalue %dx.types.CBufRet.f32 %1550, 2
  %1554 = fmul fast float %1551, %1549
  %1555 = fmul fast float %1552, %1549
  %1556 = fmul fast float %1553, %1549
  %1557 = fadd fast float %1554, %178
  %1558 = fadd fast float %1555, %179
  %1559 = fadd fast float %1556, %180
  %1560 = fmul fast float %1185, 2.000000e+00
  %1561 = call float @dx.op.binary.f32(i32 35, float %373, float %1560)  ; FMax(a,b)
  %1562 = fsub fast float %1557, %1190
  %1563 = fsub fast float %1558, %1191
  %1564 = fmul fast float %1562, %1195
  %1565 = fmul fast float %1563, %1196
  %1566 = call float @dx.op.binary.f32(i32 36, float %1564, float %1565)  ; FMin(a,b)
  %1567 = fcmp fast olt float %1566, 0.000000e+00
  %1568 = call float @dx.op.binary.f32(i32 35, float %1564, float %1565)  ; FMax(a,b)
  %1569 = fcmp fast ogt float %1568, 1.000000e+00
  %1570 = or i1 %1567, %1569
  %1571 = fcmp fast olt float %1559, %1204
  %1572 = or i1 %1570, %1571
  %1573 = fcmp fast ogt float %1559, %1211
  %1574 = or i1 %1572, %1573
  br i1 %1574, label %1859, label %1575, !dx.controlflow.hints !79

; <label>:1575                                    ; preds = %1548
  %1576 = fsub fast float 1.000000e+00, %1565
  %1577 = extractvalue %dx.types.CBufRet.f32 %1209, 3
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 3
  %1580 = extractvalue %dx.types.CBufRet.f32 %1578, 2
  %1581 = extractvalue %dx.types.CBufRet.f32 %1578, 1
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.CBufRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.CBufRet.f32 %1582, 2
  %1586 = extractvalue %dx.types.CBufRet.f32 %1578, 0
  br i1 %1161, label %1602, label %1587, !dx.controlflow.hints !80

; <label>:1587                                    ; preds = %1575
  %1588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 48)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.f32 %1588, 0
  %1590 = extractvalue %dx.types.ResRet.f32 %1588, 1
  %1591 = extractvalue %dx.types.ResRet.f32 %1588, 2
  %1592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 104)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.f32 %1592, 0
  %1594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 108)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 112)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 116)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 0
  %1600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 120)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.f32 %1600, 0
  br label %1602

; <label>:1602                                    ; preds = %1587, %1575
  %1603 = phi float [ %1595, %1587 ], [ %1577, %1575 ]
  %1604 = phi float [ %1599, %1587 ], [ %1579, %1575 ]
  %1605 = phi float [ %1601, %1587 ], [ %1580, %1575 ]
  %1606 = phi float [ %1597, %1587 ], [ %1581, %1575 ]
  %1607 = phi float [ %1589, %1587 ], [ %1583, %1575 ]
  %1608 = phi float [ %1590, %1587 ], [ %1584, %1575 ]
  %1609 = phi float [ %1591, %1587 ], [ %1585, %1575 ]
  %1610 = phi float [ %1593, %1587 ], [ %1586, %1575 ]
  %1611 = fcmp fast oeq float %1603, 0.000000e+00
  br i1 %1611, label %1727, label %1612, !dx.controlflow.hints !81

; <label>:1612                                    ; preds = %1602
  %1613 = fcmp fast ogt float %1604, 0.000000e+00
  %1614 = fcmp fast oeq float %1561, 0.000000e+00
  br i1 %1614, label %1619, label %1615, !dx.controlflow.hints !65

; <label>:1615                                    ; preds = %1612
  %1616 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1617 = fmul fast float %1616, %1561
  %1618 = call float @dx.op.unary.f32(i32 23, float %1617)  ; Log(value)
  br label %1619

; <label>:1619                                    ; preds = %1615, %1612
  %1620 = phi float [ %1618, %1615 ], [ 0.000000e+00, %1612 ]
  br i1 %1614, label %1625, label %1621, !dx.controlflow.hints !65

; <label>:1621                                    ; preds = %1619
  %1622 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1623 = fmul fast float %1622, %1561
  %1624 = call float @dx.op.unary.f32(i32 23, float %1623)  ; Log(value)
  br label %1625

; <label>:1625                                    ; preds = %1621, %1619
  %1626 = phi float [ %1624, %1621 ], [ 0.000000e+00, %1619 ]
  br i1 %1613, label %1627, label %1689, !dx.controlflow.hints !82

; <label>:1627                                    ; preds = %1625
  %1628 = fcmp fast ogt float %1605, 0.000000e+00
  br i1 %1628, label %1629, label %1639, !dx.controlflow.hints !83

; <label>:1629                                    ; preds = %1627
  %1630 = fmul fast float %1605, %1564
  %1631 = fmul fast float %1605, %1576
  %1632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %25, float %1630, float %1631, float undef, float undef, i32 0, i32 0, i32 undef, float %1626)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1633 = extractvalue %dx.types.ResRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.ResRet.f32 %1632, 1
  %1635 = fmul fast float %1633, 2.000000e+00
  %1636 = fmul fast float %1634, 2.000000e+00
  %1637 = fadd fast float %1635, -1.000000e+00
  %1638 = fadd fast float %1636, -1.000000e+00
  br label %1660

; <label>:1639                                    ; preds = %1627
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 3
  %1642 = fmul fast float %1641, %1564
  %1643 = fmul fast float %1641, %1576
  %1644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %27, float %1642, float %1643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.ResRet.f32 %1644, 1
  %1647 = extractvalue %dx.types.ResRet.f32 %1644, 2
  %1648 = fmul fast float %1645, 2.000000e+00
  %1649 = fmul fast float %1646, 2.000000e+00
  %1650 = fmul fast float %1647, 2.000000e+00
  %1651 = fadd fast float %1648, -1.000000e+00
  %1652 = fadd fast float %1649, -1.000000e+00
  %1653 = fadd fast float %1650, -1.000000e+00
  %1654 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1655 = fmul fast float %1651, %1654
  %1656 = fmul fast float %1652, %1654
  %1657 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1658 = fmul fast float %1657, 5.000000e-01
  %1659 = fmul fast float %1658, %1653
  br label %1660

; <label>:1660                                    ; preds = %1639, %1629
  %1661 = phi float [ %1637, %1629 ], [ %1655, %1639 ]
  %1662 = phi float [ %1638, %1629 ], [ %1656, %1639 ]
  %1663 = phi float [ 0.000000e+00, %1629 ], [ %1659, %1639 ]
  %1664 = fmul fast float %1603, %1557
  %1665 = fmul fast float %1603, %1558
  %1666 = fmul fast float %1603, %1559
  %1667 = call float @dx.op.unary.f32(i32 22, float %1604)  ; Frc(value)
  %1668 = fmul fast float %1667, %1661
  %1669 = fmul fast float %1667, %1662
  %1670 = fmul fast float %1667, %1663
  %1671 = fsub fast float %1664, %1668
  %1672 = fsub fast float %1665, %1669
  %1673 = fsub fast float %1666, %1670
  %1674 = fadd fast float %1604, 5.000000e-01
  %1675 = call float @dx.op.unary.f32(i32 22, float %1674)  ; Frc(value)
  %1676 = fmul fast float %1675, %1661
  %1677 = fmul fast float %1675, %1662
  %1678 = fmul fast float %1675, %1663
  %1679 = fadd fast float %1664, -5.000000e-01
  %1680 = fsub fast float %1679, %1676
  %1681 = fadd fast float %1665, -5.000000e-01
  %1682 = fsub fast float %1681, %1677
  %1683 = fadd fast float %1666, -5.000000e-01
  %1684 = fsub fast float %1683, %1678
  %1685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %1680, float %1682, float %1684, float undef, i32 0, i32 0, i32 0, float %1620)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.ResRet.f32 %1685, 1
  %1688 = fadd fast float %1686, %1606
  br label %1699

; <label>:1689                                    ; preds = %1625
  %1690 = fmul fast float %1610, %1607
  %1691 = fmul fast float %1610, %1608
  %1692 = fmul fast float %1610, %1609
  %1693 = fsub fast float %1557, %1690
  %1694 = fsub fast float %1558, %1691
  %1695 = fsub fast float %1559, %1692
  %1696 = fmul fast float %1693, %1603
  %1697 = fmul fast float %1694, %1603
  %1698 = fmul fast float %1695, %1603
  br label %1699

; <label>:1699                                    ; preds = %1689, %1660
  %1700 = phi float [ %1671, %1660 ], [ %1696, %1689 ]
  %1701 = phi float [ %1672, %1660 ], [ %1697, %1689 ]
  %1702 = phi float [ %1673, %1660 ], [ %1698, %1689 ]
  %1703 = phi float [ %1688, %1660 ], [ 0.000000e+00, %1689 ]
  %1704 = phi float [ %1687, %1660 ], [ 0.000000e+00, %1689 ]
  %1705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %1700, float %1701, float %1702, float undef, i32 0, i32 0, i32 0, float %1620)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.ResRet.f32 %1705, 1
  %1708 = fadd fast float %1706, %1606
  br i1 %1613, label %1709, label %1720, !dx.controlflow.hints !84

; <label>:1709                                    ; preds = %1699
  %1710 = call float @dx.op.unary.f32(i32 22, float %1604)  ; Frc(value)
  %1711 = fmul fast float %1710, 2.000000e+00
  %1712 = fadd fast float %1711, -1.000000e+00
  %1713 = call float @dx.op.unary.f32(i32 6, float %1712)  ; FAbs(value)
  %1714 = fsub fast float %1703, %1708
  %1715 = fmul fast float %1713, %1714
  %1716 = fadd fast float %1715, %1708
  %1717 = fsub fast float %1704, %1707
  %1718 = fmul fast float %1713, %1717
  %1719 = fadd fast float %1718, %1707
  br label %1720

; <label>:1720                                    ; preds = %1709, %1699
  %1721 = phi float [ %1716, %1709 ], [ %1708, %1699 ]
  %1722 = phi float [ %1719, %1709 ], [ %1707, %1699 ]
  %1723 = fsub fast float %1721, %1722
  %1724 = fsub fast float 1.000000e+00, %1722
  %1725 = fdiv fast float %1723, %1724
  %1726 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  br label %1727

; <label>:1727                                    ; preds = %1720, %1602
  %1728 = phi float [ %1726, %1720 ], [ 1.000000e+00, %1602 ]
  %1729 = fcmp fast oeq float %1561, 0.000000e+00
  br i1 %1729, label %1734, label %1730, !dx.controlflow.hints !65

; <label>:1730                                    ; preds = %1727
  %1731 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1732 = fmul fast float %1731, %1561
  %1733 = call float @dx.op.unary.f32(i32 23, float %1732)  ; Log(value)
  br label %1734

; <label>:1734                                    ; preds = %1730, %1727
  %1735 = phi float [ %1733, %1730 ], [ 0.000000e+00, %1727 ]
  %1736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %1564, float %1576, float undef, float undef, i32 0, i32 0, i32 undef, float %1735)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1564, float %1576, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  %1740 = extractvalue %dx.types.ResRet.f32 %1738, 1
  %1741 = extractvalue %dx.types.ResRet.f32 %1738, 2
  %1742 = extractvalue %dx.types.ResRet.f32 %1738, 3
  %1743 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1564, float %1576, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 0
  %1745 = extractvalue %dx.types.ResRet.f32 %1743, 1
  %1746 = extractvalue %dx.types.ResRet.f32 %1743, 2
  %1747 = extractvalue %dx.types.ResRet.f32 %1743, 3
  %1748 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1564, float %1576, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.ResRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.ResRet.f32 %1748, 2
  %1752 = extractvalue %dx.types.ResRet.f32 %1748, 3
  %1753 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %28, float %1564, float %1576, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.ResRet.f32 %1753, 2
  %1757 = extractvalue %dx.types.ResRet.f32 %1753, 3
  %1758 = fadd fast float %1739, %1740
  %1759 = fadd fast float %1758, %1741
  %1760 = fadd fast float %1759, %1742
  %1761 = fmul fast float %1744, %1739
  %1762 = fmul fast float %1745, %1740
  %1763 = fadd fast float %1761, %1762
  %1764 = fmul fast float %1746, %1741
  %1765 = fadd fast float %1763, %1764
  %1766 = fmul fast float %1747, %1742
  %1767 = fadd fast float %1765, %1766
  %1768 = fmul fast float %1749, %1739
  %1769 = fmul fast float %1750, %1740
  %1770 = fadd fast float %1768, %1769
  %1771 = fmul fast float %1751, %1741
  %1772 = fadd fast float %1770, %1771
  %1773 = fmul fast float %1752, %1742
  %1774 = fadd fast float %1772, %1773
  %1775 = fmul fast float %1754, %1739
  %1776 = fmul fast float %1755, %1740
  %1777 = fadd fast float %1775, %1776
  %1778 = fmul fast float %1756, %1741
  %1779 = fadd fast float %1777, %1778
  %1780 = fmul fast float %1757, %1742
  %1781 = fadd fast float %1779, %1780
  %1782 = fcmp fast ogt float %1760, 0.000000e+00
  %1783 = fdiv fast float %1767, %1760
  %1784 = select i1 %1782, float %1783, float 0.000000e+00
  %1785 = fdiv fast float %1774, %1760
  %1786 = select i1 %1782, float %1785, float 0.000000e+00
  %1787 = fdiv fast float %1781, %1760
  %1788 = select i1 %1782, float %1787, float 0.000000e+00
  %1789 = fcmp fast ogt float %1559, %1786
  %1790 = fcmp fast olt float %1559, %1784
  %1791 = and i1 %1790, %1789
  br i1 %1791, label %1792, label %1859, !dx.controlflow.hints !85

; <label>:1792                                    ; preds = %1734
  %1793 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 2
  %1796 = extractvalue %dx.types.CBufRet.f32 %1794, 3
  br i1 %1161, label %1807, label %1797, !dx.controlflow.hints !86

; <label>:1797                                    ; preds = %1792
  %1798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 60)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.f32 %1798, 0
  %1800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 64)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.ResRet.f32 %1800, 1
  %1803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 72)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1160, i32 96)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  br label %1807

; <label>:1807                                    ; preds = %1797, %1792
  %1808 = phi float [ %1799, %1797 ], [ %1210, %1792 ]
  %1809 = phi float [ %1804, %1797 ], [ %1208, %1792 ]
  %1810 = phi float [ %1806, %1797 ], [ %1793, %1792 ]
  %1811 = phi float [ %1801, %1797 ], [ %1795, %1792 ]
  %1812 = phi float [ %1802, %1797 ], [ %1796, %1792 ]
  %1813 = call float @dx.op.binary.f32(i32 35, float %1737, float 0.000000e+00)  ; FMax(a,b)
  %1814 = call float @dx.op.binary.f32(i32 36, float %1813, float 1.000000e+00)  ; FMin(a,b)
  %1815 = call float @dx.op.unary.f32(i32 24, float %1814)  ; Sqrt(value)
  %1816 = call float @dx.op.binary.f32(i32 35, float %1788, float 0x3F847AE140000000)  ; FMax(a,b)
  %1817 = fsub fast float %1784, %1559
  %1818 = fsub fast float %1559, %1786
  %1819 = call float @dx.op.binary.f32(i32 36, float %1818, float %1817)  ; FMin(a,b)
  %1820 = fdiv fast float %1819, %1816
  %1821 = call float @dx.op.unary.f32(i32 7, float %1820)  ; Saturate(value)
  %1822 = fsub fast float %1559, %1809
  %1823 = fdiv fast float %1822, %1808
  %1824 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1825 = fsub fast float 1.000000e+00, %1824
  %1826 = fmul float %1821, %1825
  %1827 = fmul float %1826, %1826
  %1828 = fmul fast float %1815, %1728
  %1829 = fmul fast float %1828, %1827
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 2
  %1832 = extractvalue %dx.types.CBufRet.f32 %1830, 1
  %1833 = fsub fast float %1829, %1832
  %1834 = fsub fast float %1831, %1832
  %1835 = fdiv fast float %1833, %1834
  %1836 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1837 = fmul fast float %1836, %1810
  %1838 = fcmp fast ogt float %1812, 0.000000e+00
  br i1 %1838, label %1839, label %1859, !dx.controlflow.hints !87

; <label>:1839                                    ; preds = %1807
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1843 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1844 = fsub fast float %1557, %1841
  %1845 = fsub fast float %1558, %1842
  %1846 = fsub fast float %1559, %1843
  %1847 = fmul fast float %1844, %1844
  %1848 = fmul fast float %1845, %1845
  %1849 = fadd fast float %1847, %1848
  %1850 = fmul fast float %1846, %1846
  %1851 = fadd fast float %1849, %1850
  %1852 = call float @dx.op.unary.f32(i32 24, float %1851)  ; Sqrt(value)
  %1853 = fsub fast float %1852, %1811
  %1854 = fsub fast float %1812, %1811
  %1855 = fdiv fast float %1853, %1854
  %1856 = call float @dx.op.unary.f32(i32 7, float %1855)  ; Saturate(value)
  %1857 = fmul fast float %1856, %1856
  %1858 = fmul fast float %1857, %1837
  br label %1859

; <label>:1859                                    ; preds = %1839, %1807, %1734, %1548
  %1860 = phi float [ 0.000000e+00, %1548 ], [ 0.000000e+00, %1734 ], [ %1858, %1839 ], [ %1837, %1807 ]
  %1861 = fsub fast float %1546, %1860
  %1862 = fdiv fast float %1861, %1546
  %1863 = call float @dx.op.unary.f32(i32 7, float %1862)  ; Saturate(value)
  %1864 = fsub fast float 1.000000e+00, %1186
  %1865 = fmul fast float %1863, %1864
  %1866 = fadd fast float %1865, %1186
  br label %1867

; <label>:1867                                    ; preds = %1859, %1541
  %1868 = phi float [ %1866, %1859 ], [ 1.000000e+00, %1541 ]
  %1869 = fadd fast float %1546, %1085
  %1870 = fmul fast float %1546, %1182
  %1871 = fmul fast float %1870, %1868
  %1872 = fmul fast float %1546, %1183
  %1873 = fmul fast float %1872, %1868
  %1874 = fmul fast float %1546, %1184
  %1875 = fmul fast float %1874, %1868
  %1876 = fadd fast float %1871, %1082
  %1877 = fadd fast float %1873, %1083
  %1878 = fadd fast float %1875, %1084
  br label %1879

; <label>:1879                                    ; preds = %1867, %1501, %1498, %1081
  %1880 = phi float [ %1082, %1081 ], [ %1082, %1498 ], [ %1082, %1501 ], [ %1876, %1867 ]
  %1881 = phi float [ %1083, %1081 ], [ %1083, %1498 ], [ %1083, %1501 ], [ %1877, %1867 ]
  %1882 = phi float [ %1084, %1081 ], [ %1084, %1498 ], [ %1084, %1501 ], [ %1878, %1867 ]
  %1883 = phi float [ %1085, %1081 ], [ %1085, %1498 ], [ %1085, %1501 ], [ %1869, %1867 ]
  %1884 = and i32 %292, 4
  %1885 = icmp eq i32 %1884, 0
  br i1 %1885, label %2049, label %1886, !dx.controlflow.hints !91

; <label>:1886                                    ; preds = %1879
  %1887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.i32 %1887, 1
  %1889 = icmp eq i32 %1888, 0
  br i1 %1889, label %2049, label %1890

; <label>:1890                                    ; preds = %1886
  br label %1891

; <label>:1891                                    ; preds = %2041, %1890
  %1892 = phi i32 [ %2046, %2041 ], [ 0, %1890 ]
  %1893 = phi float [ %2042, %2041 ], [ %1880, %1890 ]
  %1894 = phi float [ %2043, %2041 ], [ %1881, %1890 ]
  %1895 = phi float [ %2044, %2041 ], [ %1882, %1890 ]
  %1896 = phi float [ %2045, %2041 ], [ %1883, %1890 ]
  %1897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.i32 %1897, 1
  %1899 = call i32 @dx.op.tertiary.i32(i32 49, i32 %290, i32 %1898, i32 %1892)  ; UMad(a,b,c)
  %1900 = shl i32 %1899, 2
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %2041, label %1904

; <label>:1904                                    ; preds = %1891
  br label %1905

; <label>:1905                                    ; preds = %2029, %1904
  %1906 = phi i32 [ %1915, %2029 ], [ %1902, %1904 ]
  %1907 = phi float [ %2035, %2029 ], [ %1893, %1904 ]
  %1908 = phi float [ %2036, %2029 ], [ %1894, %1904 ]
  %1909 = phi float [ %2037, %2029 ], [ %1895, %1904 ]
  %1910 = phi float [ %2038, %2029 ], [ %1896, %1904 ]
  %1911 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1906)  ; FirstbitLo(value)
  %1912 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1892, i32 %1911)  ; UMad(a,b,c)
  %1913 = and i32 %1911, 31
  %1914 = shl i32 1, %1913
  %1915 = xor i32 %1914, %1906
  %1916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1912, i32 0)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1912, i32 4)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1912, i32 16)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.ResRet.f32 %1920, 1
  %1923 = extractvalue %dx.types.ResRet.f32 %1920, 2
  %1924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1912, i32 32)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = extractvalue %dx.types.ResRet.f32 %1924, 1
  %1927 = extractvalue %dx.types.ResRet.f32 %1924, 2
  %1928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1912, i32 44)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1912, i32 48)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1912, i32 52)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1912, i32 56)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1912, i32 64)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.ResRet.f32 %1936, 1
  %1939 = extractvalue %dx.types.ResRet.f32 %1936, 2
  %1940 = mul i32 %1912, 60
  %1941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.f32 %1941, 0
  %1943 = extractvalue %dx.types.ResRet.f32 %1941, 1
  %1944 = extractvalue %dx.types.ResRet.f32 %1941, 2
  %1945 = add i32 %1940, 12
  %1946 = add i32 %1940, 48
  %1947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 2
  %1949 = fsub fast float %178, %1942
  %1950 = fsub fast float %179, %1943
  %1951 = fsub fast float %180, %1944
  %1952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.ResRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.ResRet.f32 %1952, 2
  %1956 = call float @dx.op.dot3.f32(i32 55, float %1949, float %1950, float %1951, float %1953, float %1954, float %1955)  ; Dot3(ax,ay,az,bx,by,bz)
  %1957 = add i32 %1940, 24
  %1958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 0
  %1960 = extractvalue %dx.types.ResRet.f32 %1958, 1
  %1961 = extractvalue %dx.types.ResRet.f32 %1958, 2
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1949, float %1950, float %1951, float %1959, float %1960, float %1961)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = add i32 %1940, 36
  %1964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1966 = extractvalue %dx.types.ResRet.f32 %1964, 1
  %1967 = extractvalue %dx.types.ResRet.f32 %1964, 2
  %1968 = call float @dx.op.dot3.f32(i32 55, float %1949, float %1950, float %1951, float %1965, float %1966, float %1967)  ; Dot3(ax,ay,az,bx,by,bz)
  %1969 = call float @dx.op.unary.f32(i32 6, float %1956)  ; FAbs(value)
  %1970 = call float @dx.op.unary.f32(i32 6, float %1962)  ; FAbs(value)
  %1971 = call float @dx.op.unary.f32(i32 6, float %1968)  ; FAbs(value)
  %1972 = fmul fast float %1969, %1929
  %1973 = fmul fast float %1970, %1929
  %1974 = fmul fast float %1971, %1929
  %1975 = fadd fast float %1972, %1925
  %1976 = fadd fast float %1973, %1926
  %1977 = fadd fast float %1974, %1927
  %1978 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1979 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1980 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1981 = fmul fast float %1978, %1978
  %1982 = fmul fast float %1979, %1979
  %1983 = fadd fast float %1982, %1981
  %1984 = fmul fast float %1980, %1980
  %1985 = fadd fast float %1983, %1984
  %1986 = call float @dx.op.unary.f32(i32 24, float %1985)  ; Sqrt(value)
  %1987 = fsub fast float 1.000000e+00, %1986
  %1988 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1989 = fmul fast float %1988, %1917
  %1990 = fmul fast float %1948, 2.000000e+00
  %1991 = fadd fast float %1968, %1948
  %1992 = call float @dx.op.binary.f32(i32 35, float %1991, float 0.000000e+00)  ; FMax(a,b)
  %1993 = call float @dx.op.binary.f32(i32 36, float %1992, float %1990)  ; FMin(a,b)
  %1994 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1993)  ; FMax(a,b)
  %1995 = fmul fast float %1919, 0x3FF7154760000000
  %1996 = fmul fast float %1995, %1994
  %1997 = call float @dx.op.unary.f32(i32 21, float %1996)  ; Exp(value)
  %1998 = fmul fast float %1989, %1997
  %1999 = fcmp fast oeq float %373, 0.000000e+00
  br i1 %1999, label %2005, label %2000, !dx.controlflow.hints !65

; <label>:2000                                    ; preds = %1905
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 3
  %2003 = fmul fast float %2002, %373
  %2004 = call float @dx.op.unary.f32(i32 23, float %2003)  ; Log(value)
  br label %2005

; <label>:2005                                    ; preds = %2000, %1905
  %2006 = phi float [ %2004, %2000 ], [ 0.000000e+00, %1905 ]
  %2007 = fcmp fast oeq float %1931, 0.000000e+00
  br i1 %2007, label %2029, label %2008, !dx.controlflow.hints !92

; <label>:2008                                    ; preds = %2005
  %2009 = fmul fast float %1937, %1935
  %2010 = fmul fast float %1938, %1935
  %2011 = fmul fast float %1939, %1935
  %2012 = fsub fast float %178, %2009
  %2013 = fsub fast float %179, %2010
  %2014 = fsub fast float %180, %2011
  %2015 = fmul fast float %2012, %1931
  %2016 = fmul fast float %2013, %1931
  %2017 = fmul fast float %2014, %1931
  %2018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %2015, float %2016, float %2017, float undef, i32 0, i32 0, i32 0, float %2006)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.ResRet.f32 %2018, 1
  %2021 = fdiv fast float 1.000000e+00, %1933
  %2022 = fmul fast float %1933, 2.000000e+00
  %2023 = fadd fast float %2022, -1.000000e+00
  %2024 = fadd fast float %2023, %2020
  %2025 = fadd fast float %2024, %2019
  %2026 = fmul fast float %2025, %2021
  %2027 = fadd fast float %2026, -1.000000e+00
  %2028 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  br label %2029

; <label>:2029                                    ; preds = %2008, %2005
  %2030 = phi float [ %2028, %2008 ], [ 1.000000e+00, %2005 ]
  %2031 = fmul fast float %1998, %2030
  %2032 = fmul fast float %2031, %1921
  %2033 = fmul fast float %2031, %1922
  %2034 = fmul fast float %2031, %1923
  %2035 = fadd fast float %2032, %1907
  %2036 = fadd fast float %2033, %1908
  %2037 = fadd fast float %2034, %1909
  %2038 = fadd fast float %2031, %1910
  %2039 = icmp eq i32 %1906, %1914
  br i1 %2039, label %2040, label %1905, !llvm.loop !93

; <label>:2040                                    ; preds = %2029
  br label %2041

; <label>:2041                                    ; preds = %2040, %1891
  %2042 = phi float [ %1893, %1891 ], [ %2035, %2040 ]
  %2043 = phi float [ %1894, %1891 ], [ %2036, %2040 ]
  %2044 = phi float [ %1895, %1891 ], [ %2037, %2040 ]
  %2045 = phi float [ %1896, %1891 ], [ %2038, %2040 ]
  %2046 = add i32 %1892, 1
  %2047 = icmp ult i32 %2046, %1898
  br i1 %2047, label %1891, label %2048, !llvm.loop !94

; <label>:2048                                    ; preds = %2041
  br label %2049

; <label>:2049                                    ; preds = %2048, %1886, %1879
  %2050 = phi float [ %1880, %1879 ], [ %1880, %1886 ], [ %2042, %2048 ]
  %2051 = phi float [ %1881, %1879 ], [ %1881, %1886 ], [ %2043, %2048 ]
  %2052 = phi float [ %1882, %1879 ], [ %1882, %1886 ], [ %2044, %2048 ]
  %2053 = phi float [ %1883, %1879 ], [ %1883, %1886 ], [ %2045, %2048 ]
  %2054 = fcmp fast ogt float %2053, 0.000000e+00
  br i1 %2054, label %2055, label %2082, !dx.controlflow.hints !95

; <label>:2055                                    ; preds = %2049
  %2056 = fdiv fast float 1.000000e+00, %2053
  %2057 = fmul fast float %2056, %2050
  %2058 = fmul fast float %2056, %2051
  %2059 = fmul fast float %2056, %2052
  %2060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %127, float %128, float %129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2061 = extractvalue %dx.types.ResRet.f32 %2060, 0
  %2062 = extractvalue %dx.types.ResRet.f32 %2060, 1
  %2063 = extractvalue %dx.types.ResRet.f32 %2060, 2
  %2064 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2061)  ; IsNaN(value)
  %2065 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2062)  ; IsNaN(value)
  %2066 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2063)  ; IsNaN(value)
  %2067 = or i1 %2064, %2065
  %2068 = or i1 %2067, %2066
  %2069 = select i1 %2068, float 0.000000e+00, float %2061
  %2070 = select i1 %2068, float 0.000000e+00, float %2062
  %2071 = select i1 %2068, float 0.000000e+00, float %2063
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2074 = fmul fast float %2069, %2073
  %2075 = fmul fast float %2070, %2073
  %2076 = fmul fast float %2071, %2073
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 3
  %2079 = fmul fast float %2074, %2078
  %2080 = fmul fast float %2075, %2078
  %2081 = fmul fast float %2076, %2078
  br label %2082

; <label>:2082                                    ; preds = %2055, %2049
  %2083 = phi float [ %2057, %2055 ], [ %2050, %2049 ]
  %2084 = phi float [ %2058, %2055 ], [ %2051, %2049 ]
  %2085 = phi float [ %2059, %2055 ], [ %2052, %2049 ]
  %2086 = phi float [ %2079, %2055 ], [ 0.000000e+00, %2049 ]
  %2087 = phi float [ %2080, %2055 ], [ 0.000000e+00, %2049 ]
  %2088 = phi float [ %2081, %2055 ], [ 0.000000e+00, %2049 ]
  %2089 = fmul fast float %2083, %2053
  %2090 = fmul fast float %2084, %2053
  %2091 = fmul fast float %2085, %2053
  %2092 = fmul fast float %2089, %2086
  %2093 = fmul fast float %2090, %2087
  %2094 = fmul fast float %2091, %2088
  %2095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2096 = extractvalue %dx.types.CBufRet.f32 %2095, 0
  %2097 = fmul fast float %2092, %2096
  %2098 = fmul fast float %2093, %2096
  %2099 = fmul fast float %2094, %2096
  %2100 = fmul fast float %2098, 5.000000e-01
  %2101 = fadd fast float %2094, %2092
  %2102 = fmul fast float %2096, %2101
  %2103 = fmul fast float %2102, 2.500000e-01
  %2104 = fadd fast float %2103, %2100
  %2105 = call float @dx.op.unary.f32(i32 23, float %2104)  ; Log(value)
  %2106 = fmul fast float %2105, 0x3FE62E4300000000
  %2107 = fmul fast float %2106, %2106
  store float %192, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  %2108 = fmul fast float %2106, %192
  store float %2108, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  %2109 = fmul fast float %2107, %192
  store float %2109, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2110 = load float, float addrspace(3)* %199, align 4, !tbaa !46, !noalias !50
  %2111 = fadd fast float %2110, %192
  %2112 = load float, float addrspace(3)* %202, align 4, !tbaa !46, !noalias !50
  %2113 = fadd fast float %2112, %2106
  %2114 = load float, float addrspace(3)* %205, align 4, !tbaa !46, !noalias !50
  %2115 = fadd fast float %2114, %2107
  store float %2111, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  store float %2113, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  store float %2115, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2116 = load float, float addrspace(3)* %209, align 4, !tbaa !46, !noalias !50
  %2117 = fadd fast float %2116, %2111
  %2118 = load float, float addrspace(3)* %212, align 4, !tbaa !46, !noalias !50
  %2119 = fadd fast float %2118, %2113
  %2120 = load float, float addrspace(3)* %215, align 4, !tbaa !46, !noalias !50
  %2121 = fadd fast float %2120, %2115
  store float %2117, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  store float %2119, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  store float %2121, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2122 = load float, float addrspace(3)* %219, align 4, !tbaa !46, !noalias !50
  %2123 = fadd fast float %2122, %2117
  %2124 = load float, float addrspace(3)* %222, align 4, !tbaa !46, !noalias !50
  %2125 = fadd fast float %2124, %2119
  %2126 = fdiv fast float %2125, %2123
  br i1 %230, label %2127, label %2135, !dx.controlflow.hints !54

; <label>:2127                                    ; preds = %2082
  %2128 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %218
  %2129 = load float, float addrspace(3)* %2128, align 4, !tbaa !46, !noalias !50
  %2130 = fadd fast float %2129, %2121
  %2131 = fdiv fast float %2130, %2123
  %2132 = lshr i32 %56, 1
  %2133 = lshr i32 %57, 1
  %2134 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2132, i32 %2133, i32 %2134, float %2126, float %2131, float %2126, float %2126, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2135

; <label>:2135                                    ; preds = %2127, %2082
  br i1 %67, label %2170, label %2136, !dx.controlflow.hints !55

; <label>:2136                                    ; preds = %2135
  %2137 = fadd fast float %106, 0x3FE3C6EF40000000
  %2138 = call float @dx.op.unary.f32(i32 22, float %2137)  ; Frc(value)
  %2139 = call float @dx.op.unary.f32(i32 23, float %2097)  ; Log(value)
  %2140 = fadd fast float %2139, -7.000000e+00
  %2141 = call float @dx.op.unary.f32(i32 21, float %2140)  ; Exp(value)
  %2142 = fmul fast float %2138, 2.000000e+00
  %2143 = fadd fast float %2142, -1.000000e+00
  %2144 = fmul fast float %2141, %2143
  %2145 = fcmp fast ogt float %2097, 0.000000e+00
  %2146 = select i1 %2145, float %2144, float 0.000000e+00
  %2147 = fadd fast float %2146, %2097
  %2148 = fadd fast float %106, 0x3FF3C6EF40000000
  %2149 = call float @dx.op.unary.f32(i32 22, float %2148)  ; Frc(value)
  %2150 = call float @dx.op.unary.f32(i32 23, float %2098)  ; Log(value)
  %2151 = fadd fast float %2150, -7.000000e+00
  %2152 = call float @dx.op.unary.f32(i32 21, float %2151)  ; Exp(value)
  %2153 = fmul fast float %2149, 2.000000e+00
  %2154 = fadd fast float %2153, -1.000000e+00
  %2155 = fmul fast float %2152, %2154
  %2156 = fcmp fast ogt float %2098, 0.000000e+00
  %2157 = select i1 %2156, float %2155, float 0.000000e+00
  %2158 = fadd fast float %2157, %2098
  %2159 = fadd fast float %106, 0x3FFDAA66E0000000
  %2160 = call float @dx.op.unary.f32(i32 22, float %2159)  ; Frc(value)
  %2161 = call float @dx.op.unary.f32(i32 23, float %2099)  ; Log(value)
  %2162 = fadd fast float %2161, -6.000000e+00
  %2163 = call float @dx.op.unary.f32(i32 21, float %2162)  ; Exp(value)
  %2164 = fmul fast float %2160, 2.000000e+00
  %2165 = fadd fast float %2164, -1.000000e+00
  %2166 = fmul fast float %2163, %2165
  %2167 = fcmp fast ogt float %2099, 0.000000e+00
  %2168 = select i1 %2167, float %2166, float 0.000000e+00
  %2169 = fadd fast float %2168, %2099
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %56, i32 %57, i32 %58, float %2147, float %2158, float %2169, float %2147, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2170

; <label>:2170                                    ; preds = %2136, %2135
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 0
  %2173 = fmul fast float %2172, %2053
  %2174 = fmul fast float %2173, 5.000000e-01
  %2175 = fadd fast float %2053, %2053
  %2176 = fmul fast float %2172, %2175
  %2177 = fmul fast float %2176, 2.500000e-01
  %2178 = fadd fast float %2177, %2174
  %2179 = fmul fast float %2178, %2178
  store float %192, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  %2180 = fmul fast float %2178, %192
  store float %2180, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  %2181 = fmul fast float %2179, %192
  store float %2181, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2182 = load float, float addrspace(3)* %199, align 4, !tbaa !46, !noalias !50
  %2183 = fadd fast float %2182, %192
  %2184 = load float, float addrspace(3)* %202, align 4, !tbaa !46, !noalias !50
  %2185 = fadd fast float %2178, %2184
  %2186 = load float, float addrspace(3)* %205, align 4, !tbaa !46, !noalias !50
  %2187 = fadd fast float %2179, %2186
  store float %2183, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  store float %2185, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  store float %2187, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2188 = load float, float addrspace(3)* %209, align 4, !tbaa !46, !noalias !50
  %2189 = fadd fast float %2188, %2183
  %2190 = load float, float addrspace(3)* %212, align 4, !tbaa !46, !noalias !50
  %2191 = fadd fast float %2190, %2185
  %2192 = load float, float addrspace(3)* %215, align 4, !tbaa !46, !noalias !50
  %2193 = fadd fast float %2192, %2187
  store float %2189, float addrspace(3)* %193, align 4, !tbaa !46, !noalias !50
  store float %2191, float addrspace(3)* %195, align 4, !tbaa !46, !noalias !50
  store float %2193, float addrspace(3)* %197, align 4, !tbaa !46, !noalias !50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2194 = load float, float addrspace(3)* %219, align 4, !tbaa !46, !noalias !50
  %2195 = fadd fast float %2194, %2189
  %2196 = load float, float addrspace(3)* %222, align 4, !tbaa !46, !noalias !50
  %2197 = fadd fast float %2196, %2191
  %2198 = fdiv fast float %2197, %2195
  br i1 %230, label %2199, label %2207, !dx.controlflow.hints !56

; <label>:2199                                    ; preds = %2170
  %2200 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %218
  %2201 = load float, float addrspace(3)* %2200, align 4, !tbaa !46, !noalias !50
  %2202 = fadd fast float %2201, %2193
  %2203 = fdiv fast float %2202, %2195
  %2204 = lshr i32 %56, 1
  %2205 = lshr i32 %57, 1
  %2206 = lshr i32 %58, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2204, i32 %2205, i32 %2206, float %2198, float %2203, float %2198, float %2198, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2207

; <label>:2207                                    ; preds = %2199, %2170
  br i1 %67, label %2236, label %2208, !dx.controlflow.hints !57

; <label>:2208                                    ; preds = %2207
  %2209 = fadd fast float %106, 0x3FE3C6EF40000000
  %2210 = call float @dx.op.unary.f32(i32 22, float %2209)  ; Frc(value)
  %2211 = call float @dx.op.unary.f32(i32 23, float %2173)  ; Log(value)
  %2212 = fadd fast float %2211, -7.000000e+00
  %2213 = call float @dx.op.unary.f32(i32 21, float %2212)  ; Exp(value)
  %2214 = fmul fast float %2210, 2.000000e+00
  %2215 = fadd fast float %2214, -1.000000e+00
  %2216 = fmul fast float %2213, %2215
  %2217 = fcmp fast ogt float %2173, 0.000000e+00
  %2218 = select i1 %2217, float %2216, float 0.000000e+00
  %2219 = fadd fast float %2218, %2173
  %2220 = fadd fast float %106, 0x3FF3C6EF40000000
  %2221 = call float @dx.op.unary.f32(i32 22, float %2220)  ; Frc(value)
  %2222 = fmul fast float %2221, 2.000000e+00
  %2223 = fadd fast float %2222, -1.000000e+00
  %2224 = fmul fast float %2213, %2223
  %2225 = select i1 %2217, float %2224, float 0.000000e+00
  %2226 = fadd fast float %2225, %2173
  %2227 = fadd fast float %106, 0x3FFDAA66E0000000
  %2228 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2229 = fadd fast float %2211, -6.000000e+00
  %2230 = call float @dx.op.unary.f32(i32 21, float %2229)  ; Exp(value)
  %2231 = fmul fast float %2228, 2.000000e+00
  %2232 = fadd fast float %2231, -1.000000e+00
  %2233 = fmul fast float %2230, %2232
  %2234 = select i1 %2217, float %2233, float 0.000000e+00
  %2235 = fadd fast float %2234, %2173
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %56, i32 %57, i32 %58, float %2219, float %2226, float %2235, float %2219, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2236

; <label>:2236                                    ; preds = %2208, %2207
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!dx.entryPoints = !{!43}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !30, !35, !38}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 4, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 24, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 25, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 39, i32 1, i32 12, i32 0, !21}
!21 = !{i32 1, i32 164}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 42, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !26}
!26 = !{i32 1, i32 80}
!27 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!28 = !{i32 19, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !29}
!29 = !{i32 1, i32 4}
!30 = !{!31, !32, !33, !34}
!31 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!32 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!33 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!34 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!35 = !{!36, !37}
!36 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!38 = !{!39, !40, !41, !42}
!39 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!40 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!41 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!42 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!43 = !{void ()* @cs_volumetric_forwardplus_scatter_local, !"cs_volumetric_forwardplus_scatter_local", null, !4, !44}
!44 = !{i32 0, i64 272, i32 4, !45}
!45 = !{i32 4, i32 4, i32 4}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!52 = distinct !{!52, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!53 = distinct !{!53, !52, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !77}
!94 = distinct !{!94, !77}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}

