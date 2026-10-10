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
; shader hash: 20ae2d26b330c607d12011363d155994
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
;                                   texture     f32          2d      T2            t21     1
;                                   texture     f32          2d      T3            t26     1
;                                   texture     f32          2d      T4            t27     1
;                                   texture    byte         r/o      T5            t44     1
;                                   texture     f32          2d      T6            t33     1
;                                   texture     f32          3d      T7            t38     1
;                                   texture     f32          2d      T8            t35     1
;                                   texture     f32          2d      T9            t41     1
;                                   texture     f32          3d     T10            t16     1
;                                   texture     f32          2d     T11            t24     1
;                                   texture     f32          2d     T12            t25     1
;                                   texture     f32          2d     T13            t36     1
;                                   texture     f32          2d     T14            t37     1
;                                   texture  struct         r/o     T15            t39     1
;                                   texture    byte         r/o     T16            t42     1
;                                   texture     f32          1d     T17            t54     1
;                                   texture     f32          3d     T18             t5     1
;                                   texture    byte         r/o     T19            t13     1
;                                   texture  struct         r/o     T20            t14     1
;                                   texture    byte         r/o     T21            t15     1
;                                   texture  struct         r/o     T22            t29     1
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
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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

define void @cs_volumetric_forwardplus_scatter_local_water_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %35 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %36 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %37 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %38 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %39 = alloca [3 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 3
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 1
  %45 = mul i32 %44, %42
  %46 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.i32 %46, 1
  %48 = mul i32 %45, %47
  %49 = add i32 %48, %37
  %50 = shl i32 %49, 2
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = and i32 %52, 255
  %54 = lshr i32 %52, 8
  %55 = and i32 %54, 255
  %56 = lshr i32 %52, 16
  %57 = and i32 %56, 255
  %58 = shl nuw nsw i32 %53, 2
  %59 = shl nuw nsw i32 %55, 2
  %60 = shl nuw nsw i32 %57, 2
  %61 = add i32 %58, %34
  %62 = add i32 %59, %35
  %63 = add i32 %60, %36
  %64 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.i32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.i32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.i32 %64, 2
  %68 = icmp uge i32 %61, %65
  %69 = icmp uge i32 %62, %66
  %70 = icmp uge i32 %63, %67
  %71 = or i1 %68, %69
  %72 = or i1 %70, %71
  %73 = xor i1 %72, true
  %74 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.i32 %74, 3
  %76 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %62, i32 %75)  ; UMad(a,b,c)
  %77 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %61, i32 %76)  ; UMad(a,b,c)
  %78 = mul i32 %77, -63
  %79 = lshr i32 %78, 17
  %80 = xor i32 %79, %78
  %81 = mul i32 %80, -511
  %82 = mul i32 %80, -8176
  %83 = xor i32 %81, %82
  %84 = mul i32 %83, -7
  %85 = mul i32 %83, -7168
  %86 = xor i32 %84, %85
  %87 = lshr i32 %86, 15
  %88 = xor i32 %87, %84
  %89 = and i32 %88, 127
  %90 = mul i32 %89, 3
  %91 = add i32 0, %90
  %92 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %91
  %93 = load float, float* %92, align 4
  %94 = mul i32 %89, 3
  %95 = add i32 1, %94
  %96 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %95
  %97 = load float, float* %96, align 4
  %98 = mul i32 %89, 3
  %99 = add i32 2, %98
  %100 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %99
  %101 = load float, float* %100, align 4
  %102 = uitofp i32 %75 to float
  %103 = fmul fast float %102, 0x3FEA36A940000000
  %104 = fmul fast float %102, 0x3FE5793080000000
  %105 = fmul fast float %102, 0x3FE1972580000000
  %106 = fadd fast float %93, %103
  %107 = fadd fast float %97, %104
  %108 = fadd fast float %101, %105
  %109 = call float @dx.op.unary.f32(i32 22, float %106)  ; Frc(value)
  %110 = call float @dx.op.unary.f32(i32 22, float %107)  ; Frc(value)
  %111 = call float @dx.op.unary.f32(i32 22, float %108)  ; Frc(value)
  %112 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %61, i32 %62, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fcmp fast ogt float %113, -1.000000e+00
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %117 = select i1 %114, float %116, float 1.000000e+00
  %118 = fadd fast float %113, 1.000000e+00
  %119 = fmul fast float %117, %118
  %120 = uitofp i32 %61 to float
  %121 = uitofp i32 %62 to float
  %122 = uitofp i32 %63 to float
  %123 = fadd fast float %122, -5.000000e-01
  %124 = fadd fast float %123, %111
  %125 = fadd fast float %120, %109
  %126 = fadd fast float %121, %110
  %127 = fadd fast float %124, 5.000000e-01
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %129, %125
  %133 = fmul fast float %130, %126
  %134 = fmul fast float %131, %127
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 0
  %137 = uitofp i32 %136 to float
  %138 = fmul fast float %137, %134
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = fmul fast float %138, %141
  %143 = call float @dx.op.unary.f32(i32 21, float %142)  ; Exp(value)
  %144 = fmul fast float %143, %140
  %145 = fsub fast float 4.000000e+00, %140
  %146 = fadd fast float %145, %144
  %147 = call float @dx.op.binary.f32(i32 36, float %146, float %119)  ; FMin(a,b)
  %148 = fmul fast float %132, 2.000000e+00
  %149 = fmul fast float %133, 2.000000e+00
  %150 = fsub fast float 1.000000e+00, %148
  %151 = fsub fast float 1.000000e+00, %149
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = fmul fast float %153, %150
  %157 = fmul fast float %154, %150
  %158 = fmul fast float %155, %150
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = fmul fast float %160, %151
  %164 = fmul fast float %161, %151
  %165 = fmul fast float %162, %151
  %166 = fadd fast float %163, %156
  %167 = fadd fast float %164, %157
  %168 = fadd fast float %165, %158
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %173 = fadd fast float %166, %170
  %174 = fadd fast float %167, %171
  %175 = fadd fast float %168, %172
  %176 = fmul fast float %173, %147
  %177 = fmul fast float %174, %147
  %178 = fmul fast float %175, %147
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = fadd fast float %176, %180
  %184 = fadd fast float %177, %181
  %185 = fadd fast float %178, %182
  %186 = add i32 %63, 1
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %141, %187
  %189 = call float @dx.op.unary.f32(i32 21, float %188)  ; Exp(value)
  %190 = fmul fast float %141, %122
  %191 = call float @dx.op.unary.f32(i32 21, float %190)  ; Exp(value)
  %192 = fsub fast float %189, %191
  %193 = fmul fast float %140, %192
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = fcmp fast ogt float %195, 0.000000e+00
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = extractvalue %dx.types.CBufRet.f32 %197, 1
  %200 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %201 = fsub fast float %183, %198
  %202 = fadd fast float %201, %200
  %203 = fsub fast float %184, %199
  %204 = fadd fast float %203, %200
  %205 = extractvalue %dx.types.CBufRet.f32 %197, 3
  %206 = fmul fast float %202, %205
  %207 = fmul fast float %204, %205
  %208 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %209 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %210 = fsub fast float 1.000000e+00, %208
  %211 = fsub fast float 1.000000e+00, %209
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %31, float %210, float %211, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = fmul fast float %215, %213
  %217 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %218 = fadd fast float %217, %216
  %219 = fcmp fast ogt float %213, 0.000000e+00
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 32768
  %223 = icmp ne i32 %222, 0
  %224 = and i1 %219, %223
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %227 = fadd fast float %218, %226
  %228 = fcmp fast ole float %185, %227
  %229 = and i1 %224, %228
  %230 = select i1 %196, i32 %136, i32 0
  %231 = add i32 %230, %63
  %232 = xor i1 %196, %229
  %233 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %234 = fmul fast float %233, 0x3FE62E4300000000
  %235 = fmul fast float %234, %234
  %236 = select i1 %72, float 0.000000e+00, float 1.000000e+00
  %237 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %38
  store float %236, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  %238 = fmul fast float %234, %236
  %239 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %38
  store float %238, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  %240 = fmul fast float %235, %236
  %241 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %38
  store float %240, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %242 = xor i32 %38, 4
  %243 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %242
  %244 = load float, float addrspace(3)* %243, align 4, !tbaa !49, !noalias !53
  %245 = fadd fast float %244, %236
  %246 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %242
  %247 = load float, float addrspace(3)* %246, align 4, !tbaa !49, !noalias !53
  %248 = fadd fast float %247, %234
  %249 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %242
  %250 = load float, float addrspace(3)* %249, align 4, !tbaa !49, !noalias !53
  %251 = fadd fast float %250, %235
  store float %245, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  store float %248, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  store float %251, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %252 = xor i32 %38, 16
  %253 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %252
  %254 = load float, float addrspace(3)* %253, align 4, !tbaa !49, !noalias !53
  %255 = fadd fast float %254, %245
  %256 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %252
  %257 = load float, float addrspace(3)* %256, align 4, !tbaa !49, !noalias !53
  %258 = fadd fast float %257, %248
  %259 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %252
  %260 = load float, float addrspace(3)* %259, align 4, !tbaa !49, !noalias !53
  %261 = fadd fast float %260, %251
  store float %255, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  store float %258, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  store float %261, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %262 = xor i32 %38, 1
  %263 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %262
  %264 = load float, float addrspace(3)* %263, align 4, !tbaa !49, !noalias !53
  %265 = fadd fast float %264, %255
  %266 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %262
  %267 = load float, float addrspace(3)* %266, align 4, !tbaa !49, !noalias !53
  %268 = fadd fast float %267, %258
  %269 = fdiv fast float %268, %265
  %270 = and i32 %61, 1
  %271 = and i32 %270, %62
  %272 = and i32 %271, %231
  %273 = icmp ne i32 %272, 0
  %274 = and i1 %273, %73
  br i1 %274, label %275, label %283, !dx.controlflow.hints !57

; <label>:275                                     ; preds = %0
  %276 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %262
  %277 = load float, float addrspace(3)* %276, align 4, !tbaa !49, !noalias !53
  %278 = fadd fast float %277, %261
  %279 = fdiv fast float %278, %265
  %280 = lshr i32 %61, 1
  %281 = lshr i32 %62, 1
  %282 = lshr i32 %231, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %280, i32 %281, i32 %282, float %269, float %279, float %269, float %269, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %283

; <label>:283                                     ; preds = %275, %0
  br i1 %72, label %285, label %284, !dx.controlflow.hints !58

; <label>:284                                     ; preds = %283
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %61, i32 %62, i32 %231, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %285

; <label>:285                                     ; preds = %284, %283
  store float %236, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  store float 0.000000e+00, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  store float 0.000000e+00, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %286 = load float, float addrspace(3)* %243, align 4, !tbaa !49, !noalias !53
  %287 = fadd fast float %286, %236
  %288 = load float, float addrspace(3)* %246, align 4, !tbaa !49, !noalias !53
  %289 = load float, float addrspace(3)* %249, align 4, !tbaa !49, !noalias !53
  store float %287, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  store float %288, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  store float %289, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %290 = load float, float addrspace(3)* %253, align 4, !tbaa !49, !noalias !53
  %291 = fadd fast float %290, %287
  %292 = load float, float addrspace(3)* %256, align 4, !tbaa !49, !noalias !53
  %293 = fadd fast float %292, %288
  %294 = load float, float addrspace(3)* %259, align 4, !tbaa !49, !noalias !53
  %295 = fadd fast float %294, %289
  store float %291, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  store float %293, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  store float %295, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %296 = load float, float addrspace(3)* %263, align 4, !tbaa !49, !noalias !53
  %297 = fadd fast float %296, %291
  %298 = load float, float addrspace(3)* %266, align 4, !tbaa !49, !noalias !53
  %299 = fadd fast float %298, %293
  %300 = fdiv fast float %299, %297
  br i1 %274, label %301, label %309, !dx.controlflow.hints !59

; <label>:301                                     ; preds = %285
  %302 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %262
  %303 = load float, float addrspace(3)* %302, align 4, !tbaa !49, !noalias !53
  %304 = fadd fast float %303, %295
  %305 = fdiv fast float %304, %297
  %306 = lshr i32 %61, 1
  %307 = lshr i32 %62, 1
  %308 = lshr i32 %231, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %306, i32 %307, i32 %308, float %300, float %305, float %300, float %300, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %309

; <label>:309                                     ; preds = %301, %285
  br i1 %72, label %311, label %310, !dx.controlflow.hints !60

; <label>:310                                     ; preds = %309
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %61, i32 %62, i32 %231, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %311

; <label>:311                                     ; preds = %310, %309
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %314 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %315 = fsub fast float %185, %313
  %316 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %315)  ; FMax(a,b)
  %317 = fmul fast float %316, 0x3FF7154760000000
  %318 = fmul fast float %317, %314
  %319 = call float @dx.op.unary.f32(i32 21, float %318)  ; Exp(value)
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %326 = fmul fast float %325, %319
  %327 = fmul fast float %326, %321
  %328 = fmul fast float %326, %322
  %329 = fmul fast float %326, %323
  %330 = select i1 %229, float 0.000000e+00, float %326
  %331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.i32 %331, 2
  %333 = extractvalue %dx.types.CBufRet.i32 %331, 3
  %334 = call i32 @dx.op.tertiary.i32(i32 49, i32 %55, i32 %332, i32 %53)  ; UMad(a,b,c)
  %335 = call i32 @dx.op.tertiary.i32(i32 49, i32 %57, i32 %333, i32 %334)  ; UMad(a,b,c)
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %335, i32 0)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = fadd fast float %120, 1.000000e+00
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = fmul fast float %344, %124
  %346 = call float @dx.op.unary.f32(i32 21, float %345)  ; Exp(value)
  %347 = fmul fast float %346, %343
  %348 = fsub fast float 4.000000e+00, %343
  %349 = fadd fast float %348, %347
  %350 = fmul fast float %338, 2.000000e+00
  %351 = fmul fast float %350, %340
  %352 = fmul fast float %121, 2.000000e+00
  %353 = fmul fast float %352, %341
  %354 = fsub fast float 1.000000e+00, %351
  %355 = fsub fast float 1.000000e+00, %353
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fmul fast float %357, %354
  %361 = fmul fast float %358, %354
  %362 = fmul fast float %359, %354
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = fmul fast float %364, %355
  %368 = fmul fast float %365, %355
  %369 = fmul fast float %366, %355
  %370 = fadd fast float %367, %360
  %371 = fadd fast float %368, %361
  %372 = fadd fast float %369, %362
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %377 = fadd fast float %370, %374
  %378 = fadd fast float %371, %375
  %379 = fadd fast float %372, %376
  %380 = fadd fast float %121, 1.000000e+00
  %381 = fmul fast float %120, 2.000000e+00
  %382 = fmul fast float %381, %340
  %383 = fmul fast float %380, 2.000000e+00
  %384 = fmul fast float %383, %341
  %385 = fsub fast float 1.000000e+00, %382
  %386 = fsub fast float 1.000000e+00, %384
  %387 = fmul fast float %357, %385
  %388 = fmul fast float %358, %385
  %389 = fmul fast float %359, %385
  %390 = fmul fast float %364, %386
  %391 = fmul fast float %365, %386
  %392 = fmul fast float %366, %386
  %393 = fadd fast float %390, %387
  %394 = fadd fast float %391, %388
  %395 = fadd fast float %392, %389
  %396 = fadd fast float %393, %374
  %397 = fadd fast float %394, %375
  %398 = fadd fast float %395, %376
  %399 = fmul fast float %396, %349
  %400 = fmul fast float %397, %349
  %401 = fmul fast float %398, %349
  %402 = fadd fast float %396, %377
  %403 = fmul fast float %349, %402
  %404 = fadd fast float %397, %378
  %405 = fmul fast float %349, %404
  %406 = fadd fast float %398, %379
  %407 = fmul fast float %349, %406
  %408 = fmul fast float %403, 5.000000e-01
  %409 = fmul fast float %405, 5.000000e-01
  %410 = fmul fast float %407, 5.000000e-01
  %411 = fsub fast float %408, %399
  %412 = fsub fast float %409, %400
  %413 = fsub fast float %410, %401
  %414 = call float @dx.op.dot3.f32(i32 55, float %411, float %412, float %413, float %411, float %412, float %413)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = call float @dx.op.unary.f32(i32 25, float %414)  ; Rsqrt(value)
  %416 = fmul fast float %414, 2.000000e+00
  %417 = fmul fast float %416, %415
  %418 = call float @dx.op.binary.f32(i32 35, float %193, float %417)  ; FMax(a,b)
  %419 = xor i1 %229, true
  %420 = and i32 %337, 8
  %421 = icmp ne i32 %420, 0
  %422 = and i1 %421, %419
  br i1 %422, label %423, label %634, !dx.controlflow.hints !61

; <label>:423                                     ; preds = %311
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %427 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %432 = fsub fast float %183, %429
  %433 = fsub fast float %184, %430
  %434 = fsub fast float %185, %431
  %435 = fmul fast float %432, %425
  %436 = fmul fast float %433, %426
  %437 = fmul fast float %434, %427
  %438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.i32 %438, 3
  %440 = icmp eq i32 %439, 0
  %441 = fcmp fast oge float %437, 0.000000e+00
  %442 = fcmp fast ole float %437, 1.000000e+00
  br i1 %440, label %445, label %443, !dx.controlflow.hints !62

; <label>:443                                     ; preds = %423
  %444 = and i1 %441, %442
  br label %455

; <label>:445                                     ; preds = %423
  %446 = fcmp fast oge float %435, 0.000000e+00
  %447 = fcmp fast oge float %436, 0.000000e+00
  %448 = and i1 %446, %447
  %449 = and i1 %441, %448
  %450 = fcmp fast ole float %435, 1.000000e+00
  %451 = fcmp fast ole float %436, 1.000000e+00
  %452 = and i1 %450, %451
  %453 = and i1 %442, %452
  %454 = and i1 %449, %453
  br label %455

; <label>:455                                     ; preds = %445, %443
  %456 = phi i1 [ %444, %443 ], [ %454, %445 ]
  br i1 %456, label %457, label %628, !dx.controlflow.hints !63

; <label>:457                                     ; preds = %455
  %458 = fcmp fast oeq float %418, 0.000000e+00
  br i1 %458, label %473, label %459, !dx.controlflow.hints !64

; <label>:459                                     ; preds = %457
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 3
  %462 = fmul fast float %461, %418
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %465 = extractvalue %dx.types.CBufRet.f32 %463, 1
  %466 = extractvalue %dx.types.CBufRet.f32 %463, 2
  %467 = fmul fast float %464, %462
  %468 = fmul fast float %465, %462
  %469 = fmul fast float %466, %462
  %470 = call float @dx.op.unary.f32(i32 23, float %467)  ; Log(value)
  %471 = call float @dx.op.unary.f32(i32 23, float %468)  ; Log(value)
  %472 = call float @dx.op.unary.f32(i32 23, float %469)  ; Log(value)
  br label %473

; <label>:473                                     ; preds = %459, %457
  %474 = phi float [ %470, %459 ], [ 0.000000e+00, %457 ]
  %475 = phi float [ %471, %459 ], [ 0.000000e+00, %457 ]
  %476 = phi float [ %472, %459 ], [ 0.000000e+00, %457 ]
  %477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.i32 %477, 0
  %479 = extractvalue %dx.types.CBufRet.i32 %477, 1
  %480 = uitofp i32 %478 to float
  %481 = uitofp i32 %479 to float
  %482 = fmul fast float %435, %480
  %483 = fmul fast float %436, %481
  %484 = fadd fast float %482, 5.000000e-01
  %485 = fadd fast float %483, 5.000000e-01
  %486 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %487 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %488 = call float @dx.op.unary.f32(i32 27, float %484)  ; Round_ni(value)
  %489 = call float @dx.op.unary.f32(i32 27, float %485)  ; Round_ni(value)
  %490 = fadd fast float %488, 1.000000e+00
  %491 = fadd fast float %489, 1.000000e+00
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 0
  %494 = extractvalue %dx.types.CBufRet.f32 %492, 1
  %495 = fmul fast float %493, %490
  %496 = fmul fast float %494, %491
  %497 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %30, float %495, float %496, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = extractvalue %dx.types.ResRet.f32 %497, 2
  %501 = extractvalue %dx.types.ResRet.f32 %497, 3
  %502 = extractvalue %dx.types.CBufRet.i32 %477, 2
  %503 = extractvalue %dx.types.CBufRet.f32 %492, 2
  %504 = uitofp i32 %502 to float
  %505 = fadd fast float %504, -1.000000e+00
  %506 = fmul fast float %505, %498
  %507 = fmul fast float %505, %499
  %508 = fmul fast float %505, %500
  %509 = fmul fast float %505, %501
  %510 = fadd fast float %506, 5.000000e-01
  %511 = fadd fast float %507, 5.000000e-01
  %512 = fadd fast float %508, 5.000000e-01
  %513 = fadd fast float %509, 5.000000e-01
  %514 = fptoui float %510 to i32
  %515 = fptoui float %511 to i32
  %516 = fptoui float %512 to i32
  %517 = fptoui float %513 to i32
  %518 = uitofp i32 %514 to float
  %519 = uitofp i32 %515 to float
  %520 = uitofp i32 %516 to float
  %521 = uitofp i32 %517 to float
  %522 = fadd fast float %518, 5.000000e-01
  %523 = fadd fast float %519, 5.000000e-01
  %524 = fadd fast float %520, 5.000000e-01
  %525 = fadd fast float %521, 5.000000e-01
  %526 = fmul fast float %522, %503
  %527 = fmul fast float %523, %503
  %528 = fmul fast float %524, %503
  %529 = fmul fast float %525, %503
  %530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %31, float %526, float %437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %31, float %527, float %437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %31, float %528, float %437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %31, float %529, float %437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = fsub fast float %535, %537
  %539 = fmul fast float %538, %486
  %540 = fadd fast float %539, %537
  %541 = fsub fast float %533, %531
  %542 = fmul fast float %541, %486
  %543 = fadd fast float %542, %531
  %544 = fsub fast float %543, %540
  %545 = fmul fast float %544, %487
  %546 = fadd fast float %545, %540
  %547 = fcmp fast ogt float %546, 0.000000e+00
  br i1 %547, label %548, label %616, !dx.controlflow.hints !65

; <label>:548                                     ; preds = %473
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %552 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %557 = fmul fast float %433, %425
  %558 = fmul fast float %434, %425
  %559 = fadd fast float %435, %554
  %560 = fadd fast float %557, %555
  %561 = fadd fast float %558, %556
  %562 = fmul fast float %559, %550
  %563 = fmul fast float %560, %550
  %564 = fmul fast float %561, %550
  %565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %28, float %562, float %563, float %564, float undef, i32 0, i32 0, i32 0, float %474)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = fmul fast float %559, %551
  %568 = fmul fast float %560, %551
  %569 = fmul fast float %561, %551
  %570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %28, float %567, float %568, float %569, float undef, i32 0, i32 0, i32 0, float %475)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 1
  %572 = fmul fast float %559, %552
  %573 = fmul fast float %560, %552
  %574 = fmul fast float %561, %552
  %575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %28, float %572, float %573, float %574, float undef, i32 0, i32 0, i32 0, float %476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 2
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %579 = fmul fast float %571, %566
  %580 = fmul fast float %579, %576
  %581 = call float @dx.op.unary.f32(i32 23, float %580)  ; Log(value)
  %582 = fmul fast float %581, %578
  %583 = call float @dx.op.unary.f32(i32 21, float %582)  ; Exp(value)
  %584 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %585 = fmul fast float %546, %546
  %586 = fmul fast float %585, %583
  %587 = fmul fast float %586, %584
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %590 = fmul fast float %589, %587
  %591 = bitcast float %590 to i32
  %592 = sitofp i32 %591 to float
  %593 = fptosi float %592 to i32
  %594 = bitcast i32 %593 to float
  %595 = fsub fast float 1.000000e+00, %587
  %596 = bitcast float %595 to i32
  %597 = sitofp i32 %596 to float
  %598 = fptosi float %597 to i32
  %599 = bitcast i32 %598 to float
  %600 = fadd fast float %594, %599
  %601 = bitcast float %600 to i32
  %602 = sub nsw i32 2129859010, %601
  %603 = bitcast i32 %602 to float
  %604 = fmul fast float %603, %594
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = fmul fast float %604, %608
  %610 = fadd fast float %609, 1.000000e+00
  %611 = bitcast float %610 to i32
  %612 = sub nsw i32 2129859010, %611
  %613 = bitcast i32 %612 to float
  %614 = fmul fast float %604, %606
  %615 = fmul fast float %614, %613
  br label %616

; <label>:616                                     ; preds = %548, %473
  %617 = phi float [ %615, %548 ], [ %546, %473 ]
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %621 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %622 = fmul fast float %619, %617
  %623 = fmul fast float %620, %617
  %624 = fmul fast float %621, %617
  %625 = fadd fast float %622, %327
  %626 = fadd fast float %623, %328
  %627 = fadd fast float %624, %329
  br label %628

; <label>:628                                     ; preds = %616, %455
  %629 = phi float [ %625, %616 ], [ %327, %455 ]
  %630 = phi float [ %626, %616 ], [ %328, %455 ]
  %631 = phi float [ %627, %616 ], [ %329, %455 ]
  %632 = phi float [ %617, %616 ], [ 0.000000e+00, %455 ]
  %633 = fadd fast float %632, %330
  br label %634

; <label>:634                                     ; preds = %628, %311
  %635 = phi float [ %629, %628 ], [ %327, %311 ]
  %636 = phi float [ %630, %628 ], [ %328, %311 ]
  %637 = phi float [ %631, %628 ], [ %329, %311 ]
  %638 = phi float [ %633, %628 ], [ %330, %311 ]
  br i1 %229, label %1129, label %639, !dx.controlflow.hints !66

; <label>:639                                     ; preds = %634
  %640 = and i32 %337, 2
  %641 = icmp ne i32 %640, 0
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %646 = fadd fast float %645, %643
  %647 = fcmp fast ole float %185, %646
  %648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.i32 %648, 3
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %670, !dx.controlflow.hints !67

; <label>:651                                     ; preds = %639
  %652 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %653 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %654 = fsub fast float %183, %652
  %655 = fsub fast float %184, %653
  %656 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %657 = extractvalue %dx.types.CBufRet.f32 %644, 1
  %658 = fdiv fast float 1.000000e+00, %656
  %659 = fdiv fast float 1.000000e+00, %657
  %660 = fmul fast float %654, %658
  %661 = fmul fast float %659, %655
  %662 = fcmp fast oge float %660, 0.000000e+00
  %663 = fcmp fast oge float %661, 0.000000e+00
  %664 = and i1 %662, %663
  %665 = and i1 %647, %664
  %666 = fcmp fast ole float %660, 1.000000e+00
  %667 = fcmp fast ole float %661, 1.000000e+00
  %668 = and i1 %666, %667
  %669 = and i1 %668, %665
  br label %670

; <label>:670                                     ; preds = %651, %639
  %671 = phi i1 [ %669, %651 ], [ %647, %639 ]
  %672 = and i1 %641, %671
  br i1 %672, label %673, label %849, !dx.controlflow.hints !68

; <label>:673                                     ; preds = %670
  %674 = fcmp fast oeq float %418, 0.000000e+00
  br i1 %674, label %680, label %675, !dx.controlflow.hints !69

; <label>:675                                     ; preds = %673
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %678 = fmul fast float %677, %418
  %679 = call float @dx.op.unary.f32(i32 23, float %678)  ; Log(value)
  br label %680

; <label>:680                                     ; preds = %675, %673
  %681 = phi float [ %679, %675 ], [ 0.000000e+00, %673 ]
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 0
  %684 = extractvalue %dx.types.CBufRet.f32 %682, 1
  %685 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %686 = fsub fast float %183, %683
  %687 = fsub fast float %184, %684
  %688 = fsub fast float %185, %685
  %689 = fmul fast float %686, %686
  %690 = fmul fast float %687, %687
  %691 = fadd fast float %689, %690
  %692 = fmul fast float %688, %688
  %693 = fadd fast float %691, %692
  %694 = call float @dx.op.unary.f32(i32 24, float %693)  ; Sqrt(value)
  %695 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %696 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %697 = fsub fast float %183, %695
  %698 = fsub fast float %184, %696
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 0
  %701 = extractvalue %dx.types.CBufRet.f32 %699, 1
  %702 = fmul fast float %697, %700
  %703 = fmul fast float %698, %701
  %704 = fsub fast float 1.000000e+00, %703
  br i1 %650, label %711, label %705, !dx.controlflow.hints !70

; <label>:705                                     ; preds = %680
  %706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %30, float %702, float %704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = extractvalue %dx.types.ResRet.f32 %706, 1
  %709 = extractvalue %dx.types.ResRet.f32 %706, 2
  %710 = extractvalue %dx.types.ResRet.f32 %706, 3
  br label %717

; <label>:711                                     ; preds = %680
  %712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %702, float %704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = extractvalue %dx.types.ResRet.f32 %712, 1
  %715 = extractvalue %dx.types.ResRet.f32 %712, 2
  %716 = extractvalue %dx.types.ResRet.f32 %712, 3
  br label %717

; <label>:717                                     ; preds = %711, %705
  %718 = phi float [ %707, %705 ], [ %713, %711 ]
  %719 = phi float [ %708, %705 ], [ %714, %711 ]
  %720 = phi float [ %709, %705 ], [ %715, %711 ]
  %721 = phi float [ %710, %705 ], [ %716, %711 ]
  %722 = extractvalue %dx.types.CBufRet.f32 %699, 3
  %723 = fmul fast float %722, %719
  %724 = fmul fast float %723, %718
  %725 = fsub fast float %723, %724
  %726 = fcmp fast ole float %725, 0.000000e+00
  %727 = fmul fast float %722, %720
  %728 = fadd fast float %727, %643
  %729 = fdiv fast float 1.000000e+00, %725
  %730 = select i1 %726, float 1.000000e+06, float %729
  %731 = fsub fast float %185, %643
  %732 = fsub fast float %731, %724
  %733 = fmul fast float %730, %732
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %735 = extractvalue %dx.types.CBufRet.f32 %699, 2
  %736 = fmul fast float %735, %734
  %737 = fsub fast float %735, %736
  %738 = fcmp fast olt float %185, %728
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 3
  %741 = select i1 %738, float %740, float 1.000000e+00
  %742 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %743 = fcmp fast oeq float %742, 0.000000e+00
  br i1 %743, label %826, label %744, !dx.controlflow.hints !71

; <label>:744                                     ; preds = %717
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 3
  %747 = fcmp fast ogt float %746, 0.000000e+00
  %748 = extractvalue %dx.types.CBufRet.f32 %739, 2
  br i1 %747, label %749, label %779, !dx.controlflow.hints !72

; <label>:749                                     ; preds = %744
  %750 = fmul fast float %702, %746
  %751 = fmul fast float %703, %746
  %752 = fsub fast float 1.000000e+00, %751
  %753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %750, float %752, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.ResRet.f32 %753, 1
  %756 = fmul fast float %754, 2.000000e+00
  %757 = fmul fast float %755, 2.000000e+00
  %758 = fadd fast float %756, -1.000000e+00
  %759 = fadd fast float %757, -1.000000e+00
  %760 = fmul fast float %742, %183
  %761 = fmul fast float %742, %184
  %762 = fmul fast float %742, %185
  %763 = call float @dx.op.unary.f32(i32 22, float %748)  ; Frc(value)
  %764 = fmul fast float %758, %763
  %765 = fmul fast float %759, %763
  %766 = fsub fast float %760, %764
  %767 = fsub fast float %761, %765
  %768 = fadd fast float %748, 5.000000e-01
  %769 = call float @dx.op.unary.f32(i32 22, float %768)  ; Frc(value)
  %770 = fmul fast float %769, %758
  %771 = fmul fast float %769, %759
  %772 = fadd fast float %760, -5.000000e-01
  %773 = fsub fast float %772, %770
  %774 = fadd fast float %761, -5.000000e-01
  %775 = fsub fast float %774, %771
  %776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %28, float %773, float %775, float %762, float undef, i32 0, i32 0, i32 0, float %681)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  br label %792

; <label>:779                                     ; preds = %744
  %780 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %781 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %782 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %783 = fmul fast float %748, %780
  %784 = fmul fast float %748, %781
  %785 = fmul fast float %748, %782
  %786 = fsub fast float %183, %783
  %787 = fsub fast float %184, %784
  %788 = fsub fast float %185, %785
  %789 = fmul fast float %786, %742
  %790 = fmul fast float %787, %742
  %791 = fmul fast float %788, %742
  br label %792

; <label>:792                                     ; preds = %779, %749
  %793 = phi float [ %766, %749 ], [ %789, %779 ]
  %794 = phi float [ %767, %749 ], [ %790, %779 ]
  %795 = phi float [ %762, %749 ], [ %791, %779 ]
  %796 = phi float [ %777, %749 ], [ 0.000000e+00, %779 ]
  %797 = phi float [ %778, %749 ], [ 0.000000e+00, %779 ]
  %798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %28, float %793, float %794, float %795, float undef, i32 0, i32 0, i32 0, float %681)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  br i1 %747, label %801, label %813, !dx.controlflow.hints !73

; <label>:801                                     ; preds = %792
  %802 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %803 = call float @dx.op.unary.f32(i32 22, float %802)  ; Frc(value)
  %804 = fmul fast float %803, 2.000000e+00
  %805 = fadd fast float %804, -1.000000e+00
  %806 = call float @dx.op.unary.f32(i32 6, float %805)  ; FAbs(value)
  %807 = fsub fast float %796, %799
  %808 = fmul fast float %806, %807
  %809 = fadd fast float %808, %799
  %810 = fsub fast float %797, %800
  %811 = fmul fast float %806, %810
  %812 = fadd fast float %811, %800
  br label %813

; <label>:813                                     ; preds = %801, %792
  %814 = phi float [ %809, %801 ], [ %799, %792 ]
  %815 = phi float [ %812, %801 ], [ %800, %792 ]
  %816 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %817 = fadd fast float %816, %816
  %818 = fdiv fast float 2.000000e+00, %817
  %819 = fmul fast float %816, 2.000000e+00
  %820 = fadd fast float %814, -1.000000e+00
  %821 = fadd fast float %820, %815
  %822 = fadd fast float %821, %819
  %823 = fmul fast float %822, %818
  %824 = fadd fast float %823, -1.000000e+00
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  br label %826

; <label>:826                                     ; preds = %813, %717
  %827 = phi float [ %825, %813 ], [ 1.000000e+00, %717 ]
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %831 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %834 = fsub fast float %694, %833
  %835 = extractvalue %dx.types.CBufRet.f32 %832, 2
  %836 = fmul fast float %834, %835
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = fmul fast float %741, %721
  %839 = fmul fast float %838, %737
  %840 = fmul fast float %839, %827
  %841 = fmul fast float %840, %837
  %842 = fmul fast float %841, %829
  %843 = fmul fast float %841, %830
  %844 = fmul fast float %841, %831
  %845 = fadd fast float %842, %635
  %846 = fadd fast float %843, %636
  %847 = fadd fast float %844, %637
  %848 = fadd fast float %841, %638
  br label %849

; <label>:849                                     ; preds = %826, %670
  %850 = phi float [ %845, %826 ], [ %635, %670 ]
  %851 = phi float [ %846, %826 ], [ %636, %670 ]
  %852 = phi float [ %847, %826 ], [ %637, %670 ]
  %853 = phi float [ %848, %826 ], [ %638, %670 ]
  %854 = and i32 %337, 1
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %1129, label %856, !dx.controlflow.hints !74

; <label>:856                                     ; preds = %849
  %857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.i32 %857, 1
  %859 = and i32 %858, 1
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %936, label %861, !dx.controlflow.hints !75

; <label>:861                                     ; preds = %856
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 3
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %868 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %869 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %873 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 3
  %876 = and i32 %858, 2
  %877 = extractvalue %dx.types.CBufRet.i32 %857, 0
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %915, label %879

; <label>:879                                     ; preds = %861
  br label %880

; <label>:880                                     ; preds = %880, %879
  %881 = phi float [ %909, %880 ], [ 0.000000e+00, %879 ]
  %882 = phi float [ %908, %880 ], [ 1.000000e+06, %879 ]
  %883 = phi i32 [ %910, %880 ], [ 0, %879 ]
  %884 = add i32 %883, 171
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %884)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %890 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %891 = fsub fast float %183, %886
  %892 = fsub fast float %184, %887
  %893 = fmul fast float %891, %891
  %894 = fmul fast float %892, %892
  %895 = fadd fast float %893, %894
  %896 = call float @dx.op.unary.f32(i32 24, float %895)  ; Sqrt(value)
  %897 = fsub fast float %896, %890
  %898 = icmp ne i32 %876, 0
  %899 = fsub fast float -0.000000e+00, %866
  %900 = select i1 %898, float %899, float %866
  %901 = fmul fast float %897, %900
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = fmul fast float %902, %865
  %904 = fsub fast float %889, %185
  %905 = fmul fast float %904, %863
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = fmul fast float %903, %906
  %908 = call float @dx.op.binary.f32(i32 36, float %882, float %897)  ; FMin(a,b)
  %909 = call float @dx.op.binary.f32(i32 35, float %881, float %907)  ; FMax(a,b)
  %910 = add nuw nsw i32 %883, 1
  %911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.i32 %911, 0
  %913 = icmp ult i32 %910, %912
  br i1 %913, label %880, label %914

; <label>:914                                     ; preds = %880
  br label %915

; <label>:915                                     ; preds = %914, %861
  %916 = phi float [ 0.000000e+00, %861 ], [ %909, %914 ]
  %917 = phi float [ 1.000000e+06, %861 ], [ %908, %914 ]
  %918 = fadd fast float %916, %853
  %919 = fmul fast float %917, %875
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %921 = fsub fast float %871, %867
  %922 = fsub fast float %872, %868
  %923 = fsub fast float %873, %869
  %924 = fmul fast float %920, %921
  %925 = fmul fast float %920, %922
  %926 = fmul fast float %920, %923
  %927 = fadd fast float %924, %867
  %928 = fadd fast float %925, %868
  %929 = fadd fast float %926, %869
  %930 = fmul fast float %927, %916
  %931 = fmul fast float %928, %916
  %932 = fmul fast float %929, %916
  %933 = fadd fast float %930, %850
  %934 = fadd fast float %931, %851
  %935 = fadd fast float %932, %852
  br label %1129

; <label>:936                                     ; preds = %856
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 3
  %940 = fmul fast float %938, %183
  %941 = fmul fast float %939, %184
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %945 = fadd fast float %940, %943
  %946 = fadd fast float %941, %944
  %947 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  %948 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %31, float %947, float %948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = fmul fast float %952, %950
  %954 = fsub fast float %945, %947
  %955 = fsub fast float %946, %948
  %956 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %957 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %958 = fmul fast float %956, %954
  %959 = fmul fast float %957, %955
  %960 = fmul fast float %958, %958
  %961 = fmul fast float %959, %959
  %962 = fadd fast float %960, %961
  %963 = call float @dx.op.unary.f32(i32 24, float %962)  ; Sqrt(value)
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %966 = fmul fast float %965, %963
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  %968 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %969 = fsub fast float %968, %953
  %970 = fmul fast float %969, %967
  %971 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %972 = fsub fast float %185, %953
  %973 = fsub fast float %972, %971
  %974 = fsub fast float %973, %970
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %977 = fsub fast float %974, %976
  %978 = fcmp fast olt float %977, 0.000000e+00
  %979 = extractvalue %dx.types.CBufRet.i32 %857, 0
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1031, label %981

; <label>:981                                     ; preds = %936
  br label %982

; <label>:982                                     ; preds = %1020, %981
  %983 = phi i32 [ %1026, %1020 ], [ 1, %981 ]
  %984 = phi i32 [ %1027, %1020 ], [ 0, %981 ]
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.i32 %987, 1
  %989 = and i32 %988, 8
  %990 = icmp eq i32 %989, 0
  %991 = fcmp fast ogt float %986, %974
  %992 = or i1 %991, %990
  %993 = add i32 %984, 171
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %993)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %997 = extractvalue %dx.types.CBufRet.f32 %994, 2
  br i1 %992, label %998, label %1004, !dx.controlflow.hints !76

; <label>:998                                     ; preds = %982
  %999 = fsub fast float %995, %183
  %1000 = fsub fast float %996, %184
  %1001 = fmul fast float %999, %999
  %1002 = fmul fast float %1000, %1000
  %1003 = fadd fast float %1001, %1002
  br label %1020

; <label>:1004                                    ; preds = %982
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1007 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %1008 = fmul fast float %1007, %1006
  %1009 = fsub fast float %1008, %986
  %1010 = fdiv fast float %997, %1009
  %1011 = fsub fast float %183, %995
  %1012 = fsub fast float %184, %996
  %1013 = fsub fast float %974, %986
  %1014 = fmul fast float %1010, %1013
  %1015 = fmul fast float %1011, %1011
  %1016 = fmul fast float %1012, %1012
  %1017 = fadd fast float %1015, %1016
  %1018 = fmul fast float %1014, %1014
  %1019 = fadd fast float %1017, %1018
  br label %1020

; <label>:1020                                    ; preds = %1004, %998
  %1021 = phi float [ %1003, %998 ], [ %1019, %1004 ]
  %1022 = call float @dx.op.unary.f32(i32 24, float %1021)  ; Sqrt(value)
  %1023 = fsub float %997, %1022
  %1024 = fcmp fast olt float %1023, 0.000000e+00
  %1025 = zext i1 %1024 to i32
  %1026 = and i32 %1025, %983
  %1027 = add i32 %984, 1
  %1028 = extractvalue %dx.types.CBufRet.i32 %987, 0
  %1029 = icmp ult i32 %1027, %1028
  br i1 %1029, label %982, label %1030

; <label>:1030                                    ; preds = %1020
  br label %1031

; <label>:1031                                    ; preds = %1030, %936
  %1032 = phi i32 [ 1, %936 ], [ %1026, %1030 ]
  br label %1033

; <label>:1033                                    ; preds = %1033, %1031
  %1034 = phi i32 [ %1070, %1033 ], [ %1032, %1031 ]
  %1035 = phi i32 [ %1071, %1033 ], [ 0, %1031 ]
  %1036 = add nuw nsw i32 %1035, 191
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %1036)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1041 = add nuw nsw i32 %1035, 195
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %1041)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.CBufRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1046 = fsub fast float %183, %1038
  %1047 = fsub fast float %184, %1039
  %1048 = fsub fast float %974, %1040
  %1049 = call float @dx.op.unary.f32(i32 6, float %1046)  ; FAbs(value)
  %1050 = call float @dx.op.unary.f32(i32 6, float %1047)  ; FAbs(value)
  %1051 = call float @dx.op.unary.f32(i32 6, float %1048)  ; FAbs(value)
  %1052 = fsub fast float %1049, %1043
  %1053 = fsub fast float %1050, %1044
  %1054 = fsub fast float %1051, %1045
  %1055 = call float @dx.op.binary.f32(i32 35, float %1052, float 0.000000e+00)  ; FMax(a,b)
  %1056 = call float @dx.op.binary.f32(i32 35, float %1053, float 0.000000e+00)  ; FMax(a,b)
  %1057 = call float @dx.op.binary.f32(i32 35, float %1054, float 0.000000e+00)  ; FMax(a,b)
  %1058 = fmul fast float %1055, %1055
  %1059 = fmul fast float %1056, %1056
  %1060 = fadd fast float %1059, %1058
  %1061 = fmul fast float %1057, %1057
  %1062 = fadd fast float %1060, %1061
  %1063 = call float @dx.op.unary.f32(i32 24, float %1062)  ; Sqrt(value)
  %1064 = call float @dx.op.binary.f32(i32 35, float %1053, float %1054)  ; FMax(a,b)
  %1065 = call float @dx.op.binary.f32(i32 35, float %1052, float %1064)  ; FMax(a,b)
  %1066 = call float @dx.op.binary.f32(i32 36, float %1065, float 0.000000e+00)  ; FMin(a,b)
  %1067 = fadd fast float %1066, %1063
  %1068 = fcmp ogt float %1067, -0.000000e+00
  %1069 = zext i1 %1068 to i32
  %1070 = and i32 %1069, %1034
  %1071 = add nuw nsw i32 %1035, 1
  %1072 = icmp eq i32 %1071, 4
  br i1 %1072, label %1073, label %1033

; <label>:1073                                    ; preds = %1033
  %1074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.i32 %1074, 1
  %1076 = lshr i32 %1075, 1
  %1077 = xor i32 %1076, %1070
  %1078 = zext i1 %978 to i32
  %1079 = and i32 %1077, %1078
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1129, label %1081, !dx.controlflow.hints !77

; <label>:1081                                    ; preds = %1073
  %1082 = fmul fast float %176, %176
  %1083 = fmul fast float %177, %177
  %1084 = fadd fast float %1082, %1083
  %1085 = fmul fast float %178, %178
  %1086 = fadd fast float %1084, %1085
  %1087 = call float @dx.op.unary.f32(i32 24, float %1086)  ; Sqrt(value)
  %1088 = and i32 %858, 4
  %1089 = icmp ne i32 %1088, 0
  %1090 = select i1 %1089, float %1087, float 1.000000e+00
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1093 = fsub fast float %1090, %1092
  %1094 = extractvalue %dx.types.CBufRet.f32 %1091, 3
  %1095 = fmul fast float %1093, %1094
  %1096 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 3
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1101 = fsub fast float %1100, %974
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 3
  %1104 = fmul fast float %1101, %1103
  %1105 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1106 = fmul fast float %1105, %1098
  %1107 = extractvalue %dx.types.CBufRet.f32 %1102, 0
  %1108 = fsub fast float %1087, %1107
  %1109 = extractvalue %dx.types.CBufRet.f32 %1102, 1
  %1110 = fmul fast float %1108, %1109
  %1111 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1112 = fsub fast float 1.000000e+00, %1096
  %1113 = fmul fast float %1111, %1112
  %1114 = fadd fast float %1113, %1096
  %1115 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1116 = fsub fast float %1106, %1115
  %1117 = fmul fast float %1116, %1114
  %1118 = fadd fast float %1117, %1115
  %1119 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1120 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1121 = extractvalue %dx.types.CBufRet.f32 %1097, 2
  %1122 = fadd fast float %1118, %853
  %1123 = fmul fast float %1118, %1119
  %1124 = fmul fast float %1118, %1120
  %1125 = fmul fast float %1118, %1121
  %1126 = fadd fast float %1123, %850
  %1127 = fadd fast float %1124, %851
  %1128 = fadd fast float %1125, %852
  br label %1129

; <label>:1129                                    ; preds = %1081, %1073, %915, %849, %634
  %1130 = phi float [ %635, %634 ], [ %850, %849 ], [ %933, %915 ], [ %1126, %1081 ], [ %850, %1073 ]
  %1131 = phi float [ %636, %634 ], [ %851, %849 ], [ %934, %915 ], [ %1127, %1081 ], [ %851, %1073 ]
  %1132 = phi float [ %637, %634 ], [ %852, %849 ], [ %935, %915 ], [ %1128, %1081 ], [ %852, %1073 ]
  %1133 = phi float [ %638, %634 ], [ %853, %849 ], [ %918, %915 ], [ %1122, %1081 ], [ %853, %1073 ]
  %1134 = and i32 %337, 32
  %1135 = icmp ne i32 %1134, 0
  %1136 = and i1 %229, %1135
  br i1 %1136, label %1137, label %1175, !dx.controlflow.hints !78

; <label>:1137                                    ; preds = %1129
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1142 = fsub fast float %183, %1139
  %1143 = fadd fast float %1142, %1141
  %1144 = fsub fast float %184, %1140
  %1145 = fadd fast float %1144, %1141
  %1146 = extractvalue %dx.types.CBufRet.f32 %1138, 3
  %1147 = fmul fast float %1143, %1146
  %1148 = fmul fast float %1145, %1146
  %1149 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1150 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1151 = fsub fast float 1.000000e+00, %1149
  %1152 = fsub fast float 1.000000e+00, %1150
  %1153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %1151, float %1152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.ResRet.f32 %1153, 1
  %1156 = extractvalue %dx.types.ResRet.f32 %1153, 2
  %1157 = fmul fast float %1154, 0x3F847AE140000000
  %1158 = fmul fast float %1155, 0x3F847AE140000000
  %1159 = fmul fast float %1156, 0x3F847AE140000000
  %1160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1151, float %1152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1160, 2
  %1164 = call float @dx.op.dot3.f32(i32 55, float %1157, float %1158, float %1159, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1165 = fadd fast float %1161, %1154
  %1166 = fmul fast float %1165, 0x3F847AE140000000
  %1167 = fadd fast float %1162, %1155
  %1168 = fmul fast float %1167, 0x3F847AE140000000
  %1169 = fadd fast float %1163, %1156
  %1170 = fmul fast float %1169, 0x3F847AE140000000
  %1171 = fadd fast float %1164, %1133
  %1172 = fadd fast float %1157, %1130
  %1173 = fadd fast float %1158, %1131
  %1174 = fadd fast float %1159, %1132
  br label %1175

; <label>:1175                                    ; preds = %1137, %1129
  %1176 = phi float [ %1172, %1137 ], [ %1130, %1129 ]
  %1177 = phi float [ %1173, %1137 ], [ %1131, %1129 ]
  %1178 = phi float [ %1174, %1137 ], [ %1132, %1129 ]
  %1179 = phi float [ %1171, %1137 ], [ %1133, %1129 ]
  %1180 = phi float [ %1166, %1137 ], [ 0.000000e+00, %1129 ]
  %1181 = phi float [ %1168, %1137 ], [ 0.000000e+00, %1129 ]
  %1182 = phi float [ %1170, %1137 ], [ 0.000000e+00, %1129 ]
  %1183 = and i32 %337, 16
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1976, label %1185, !dx.controlflow.hints !79

; <label>:1185                                    ; preds = %1175
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.CBufRet.f32 %1186, 1
  %1189 = extractvalue %dx.types.CBufRet.f32 %1186, 2
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 3
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 3
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 3
  %1196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.i32 %1196, 0
  %1198 = icmp ne i32 %1197, 0
  %1199 = zext i1 %1198 to i32
  %1200 = extractvalue %dx.types.CBufRet.i32 %1196, 1
  %1201 = icmp ne i32 %1200, 0
  %1202 = zext i1 %1201 to i32
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 0
  %1205 = bitcast float %1204 to i32
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1256, label %1207

; <label>:1207                                    ; preds = %1185
  br label %1208

; <label>:1208                                    ; preds = %1251, %1207
  %1209 = phi i32 [ %1252, %1251 ], [ 0, %1207 ]
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = bitcast float %1211 to i32
  %1213 = call i32 @dx.op.tertiary.i32(i32 49, i32 %335, i32 %1212, i32 %1209)  ; UMad(a,b,c)
  %1214 = shl i32 %1213, 2
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  br label %1217

; <label>:1217                                    ; preds = %1220, %1208
  %1218 = phi i32 [ %1216, %1208 ], [ %1225, %1220 ]
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1251, label %1220

; <label>:1220                                    ; preds = %1217
  %1221 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1218)  ; FirstbitLo(value)
  %1222 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1209, i32 %1221)  ; UMad(a,b,c)
  %1223 = and i32 %1221, 31
  %1224 = shl i32 1, %1223
  %1225 = xor i32 %1224, %1218
  %1226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1222, i32 0)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.ResRet.f32 %1226, 1
  %1229 = extractvalue %dx.types.ResRet.f32 %1226, 2
  %1230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1222, i32 16)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.f32 %1230, 2
  %1234 = fsub fast float %1227, %1231
  %1235 = fsub fast float %1228, %1232
  %1236 = fsub fast float %1229, %1233
  %1237 = fadd fast float %1231, %1227
  %1238 = fadd fast float %1232, %1228
  %1239 = fadd fast float %1233, %1229
  %1240 = fcmp fast ogt float %183, %1234
  %1241 = fcmp fast ogt float %184, %1235
  %1242 = fcmp fast ogt float %185, %1236
  %1243 = and i1 %1240, %1241
  %1244 = and i1 %1242, %1243
  %1245 = fcmp fast olt float %183, %1237
  %1246 = fcmp fast olt float %184, %1238
  %1247 = fcmp fast olt float %185, %1239
  %1248 = and i1 %1245, %1246
  %1249 = and i1 %1247, %1248
  %1250 = and i1 %1244, %1249
  br i1 %1250, label %1254, label %1217, !dx.controlflow.hints !80

; <label>:1251                                    ; preds = %1217
  %1252 = add i32 %1209, 1
  %1253 = icmp ult i32 %1252, %1212
  br i1 %1253, label %1208, label %1255, !llvm.loop !81

; <label>:1254                                    ; preds = %1220
  br label %1256

; <label>:1255                                    ; preds = %1251
  br label %1256

; <label>:1256                                    ; preds = %1255, %1254, %1185
  %1257 = phi i32 [ 255, %1185 ], [ %1222, %1254 ], [ 255, %1255 ]
  %1258 = icmp eq i32 %1257, 255
  br i1 %1258, label %1278, label %1259, !dx.controlflow.hints !83

; <label>:1259                                    ; preds = %1256
  %1260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 32)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.ResRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.ResRet.f32 %1260, 2
  %1264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 132)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 136)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 152)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1257, i32 156)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1257, i32 160)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = icmp ne i32 %1271, 0
  %1275 = zext i1 %1274 to i32
  %1276 = icmp ne i32 %1273, 0
  %1277 = zext i1 %1276 to i32
  br label %1278

; <label>:1278                                    ; preds = %1259, %1256
  %1279 = phi float [ %1261, %1259 ], [ %1187, %1256 ]
  %1280 = phi float [ %1262, %1259 ], [ %1188, %1256 ]
  %1281 = phi float [ %1263, %1259 ], [ %1189, %1256 ]
  %1282 = phi float [ %1265, %1259 ], [ %1191, %1256 ]
  %1283 = phi float [ %1267, %1259 ], [ %1193, %1256 ]
  %1284 = phi float [ %1269, %1259 ], [ %1195, %1256 ]
  %1285 = phi i32 [ %1275, %1259 ], [ %1199, %1256 ]
  %1286 = phi i32 [ %1277, %1259 ], [ %1202, %1256 ]
  %1287 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1288 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1289 = fsub fast float %183, %1287
  %1290 = fsub fast float %184, %1288
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 2
  %1293 = extractvalue %dx.types.CBufRet.f32 %1291, 3
  %1294 = fmul fast float %1289, %1292
  %1295 = fmul fast float %1290, %1293
  %1296 = call float @dx.op.binary.f32(i32 36, float %1294, float %1295)  ; FMin(a,b)
  %1297 = fcmp fast olt float %1296, 0.000000e+00
  %1298 = call float @dx.op.binary.f32(i32 35, float %1294, float %1295)  ; FMax(a,b)
  %1299 = fcmp fast ogt float %1298, 1.000000e+00
  %1300 = or i1 %1297, %1299
  %1301 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1302 = fcmp fast olt float %185, %1301
  %1303 = or i1 %1300, %1302
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 3
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = fadd fast float %1307, %1305
  %1309 = fcmp fast ogt float %185, %1308
  %1310 = or i1 %1303, %1309
  br i1 %1310, label %1595, label %1311, !dx.controlflow.hints !84

; <label>:1311                                    ; preds = %1278
  %1312 = fsub fast float 1.000000e+00, %1295
  %1313 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1316 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1317 = extractvalue %dx.types.CBufRet.f32 %1314, 1
  %1318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.CBufRet.f32 %1318, 1
  %1321 = extractvalue %dx.types.CBufRet.f32 %1318, 2
  %1322 = extractvalue %dx.types.CBufRet.f32 %1314, 0
  br i1 %1258, label %1338, label %1323, !dx.controlflow.hints !85

; <label>:1323                                    ; preds = %1311
  %1324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 48)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.ResRet.f32 %1324, 1
  %1327 = extractvalue %dx.types.ResRet.f32 %1324, 2
  %1328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 104)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  %1330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 108)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 112)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 116)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.f32 %1334, 0
  %1336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 120)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  br label %1338

; <label>:1338                                    ; preds = %1323, %1311
  %1339 = phi float [ %1331, %1323 ], [ %1313, %1311 ]
  %1340 = phi float [ %1335, %1323 ], [ %1315, %1311 ]
  %1341 = phi float [ %1337, %1323 ], [ %1316, %1311 ]
  %1342 = phi float [ %1333, %1323 ], [ %1317, %1311 ]
  %1343 = phi float [ %1325, %1323 ], [ %1319, %1311 ]
  %1344 = phi float [ %1326, %1323 ], [ %1320, %1311 ]
  %1345 = phi float [ %1327, %1323 ], [ %1321, %1311 ]
  %1346 = phi float [ %1329, %1323 ], [ %1322, %1311 ]
  %1347 = fcmp fast oeq float %1339, 0.000000e+00
  br i1 %1347, label %1463, label %1348, !dx.controlflow.hints !86

; <label>:1348                                    ; preds = %1338
  %1349 = fcmp fast ogt float %1340, 0.000000e+00
  %1350 = fcmp fast oeq float %418, 0.000000e+00
  br i1 %1350, label %1355, label %1351, !dx.controlflow.hints !69

; <label>:1351                                    ; preds = %1348
  %1352 = extractvalue %dx.types.CBufRet.f32 %1190, 1
  %1353 = fmul fast float %1352, %418
  %1354 = call float @dx.op.unary.f32(i32 23, float %1353)  ; Log(value)
  br label %1355

; <label>:1355                                    ; preds = %1351, %1348
  %1356 = phi float [ %1354, %1351 ], [ 0.000000e+00, %1348 ]
  br i1 %1350, label %1361, label %1357, !dx.controlflow.hints !69

; <label>:1357                                    ; preds = %1355
  %1358 = extractvalue %dx.types.CBufRet.f32 %1190, 0
  %1359 = fmul fast float %1358, %418
  %1360 = call float @dx.op.unary.f32(i32 23, float %1359)  ; Log(value)
  br label %1361

; <label>:1361                                    ; preds = %1357, %1355
  %1362 = phi float [ %1360, %1357 ], [ 0.000000e+00, %1355 ]
  br i1 %1349, label %1363, label %1425, !dx.controlflow.hints !87

; <label>:1363                                    ; preds = %1361
  %1364 = fcmp fast ogt float %1341, 0.000000e+00
  br i1 %1364, label %1365, label %1375, !dx.controlflow.hints !88

; <label>:1365                                    ; preds = %1363
  %1366 = fmul fast float %1341, %1294
  %1367 = fmul fast float %1341, %1312
  %1368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float %1362)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = fmul fast float %1369, 2.000000e+00
  %1372 = fmul fast float %1370, 2.000000e+00
  %1373 = fadd fast float %1371, -1.000000e+00
  %1374 = fadd fast float %1372, -1.000000e+00
  br label %1396

; <label>:1375                                    ; preds = %1363
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 3
  %1378 = fmul fast float %1377, %1294
  %1379 = fmul fast float %1377, %1312
  %1380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %1378, float %1379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.ResRet.f32 %1380, 1
  %1383 = extractvalue %dx.types.ResRet.f32 %1380, 2
  %1384 = fmul fast float %1381, 2.000000e+00
  %1385 = fmul fast float %1382, 2.000000e+00
  %1386 = fmul fast float %1383, 2.000000e+00
  %1387 = fadd fast float %1384, -1.000000e+00
  %1388 = fadd fast float %1385, -1.000000e+00
  %1389 = fadd fast float %1386, -1.000000e+00
  %1390 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1391 = fmul fast float %1387, %1390
  %1392 = fmul fast float %1388, %1390
  %1393 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1394 = fmul fast float %1393, 5.000000e-01
  %1395 = fmul fast float %1394, %1389
  br label %1396

; <label>:1396                                    ; preds = %1375, %1365
  %1397 = phi float [ %1373, %1365 ], [ %1391, %1375 ]
  %1398 = phi float [ %1374, %1365 ], [ %1392, %1375 ]
  %1399 = phi float [ 0.000000e+00, %1365 ], [ %1395, %1375 ]
  %1400 = fmul fast float %1339, %183
  %1401 = fmul fast float %1339, %184
  %1402 = fmul fast float %1339, %185
  %1403 = call float @dx.op.unary.f32(i32 22, float %1340)  ; Frc(value)
  %1404 = fmul fast float %1403, %1397
  %1405 = fmul fast float %1403, %1398
  %1406 = fmul fast float %1403, %1399
  %1407 = fsub fast float %1400, %1404
  %1408 = fsub fast float %1401, %1405
  %1409 = fsub fast float %1402, %1406
  %1410 = fadd fast float %1340, 5.000000e-01
  %1411 = call float @dx.op.unary.f32(i32 22, float %1410)  ; Frc(value)
  %1412 = fmul fast float %1411, %1397
  %1413 = fmul fast float %1411, %1398
  %1414 = fmul fast float %1411, %1399
  %1415 = fadd fast float %1400, -5.000000e-01
  %1416 = fsub fast float %1415, %1412
  %1417 = fadd fast float %1401, -5.000000e-01
  %1418 = fsub fast float %1417, %1413
  %1419 = fadd fast float %1402, -5.000000e-01
  %1420 = fsub fast float %1419, %1414
  %1421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %28, float %1416, float %1418, float %1420, float undef, i32 0, i32 0, i32 0, float %1356)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.ResRet.f32 %1421, 1
  %1424 = fadd fast float %1422, %1342
  br label %1435

; <label>:1425                                    ; preds = %1361
  %1426 = fmul fast float %1346, %1343
  %1427 = fmul fast float %1346, %1344
  %1428 = fmul fast float %1346, %1345
  %1429 = fsub fast float %183, %1426
  %1430 = fsub fast float %184, %1427
  %1431 = fsub fast float %185, %1428
  %1432 = fmul fast float %1429, %1339
  %1433 = fmul fast float %1430, %1339
  %1434 = fmul fast float %1431, %1339
  br label %1435

; <label>:1435                                    ; preds = %1425, %1396
  %1436 = phi float [ %1407, %1396 ], [ %1432, %1425 ]
  %1437 = phi float [ %1408, %1396 ], [ %1433, %1425 ]
  %1438 = phi float [ %1409, %1396 ], [ %1434, %1425 ]
  %1439 = phi float [ %1424, %1396 ], [ 0.000000e+00, %1425 ]
  %1440 = phi float [ %1423, %1396 ], [ 0.000000e+00, %1425 ]
  %1441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %28, float %1436, float %1437, float %1438, float undef, i32 0, i32 0, i32 0, float %1356)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = fadd fast float %1442, %1342
  br i1 %1349, label %1445, label %1456, !dx.controlflow.hints !89

; <label>:1445                                    ; preds = %1435
  %1446 = call float @dx.op.unary.f32(i32 22, float %1340)  ; Frc(value)
  %1447 = fmul fast float %1446, 2.000000e+00
  %1448 = fadd fast float %1447, -1.000000e+00
  %1449 = call float @dx.op.unary.f32(i32 6, float %1448)  ; FAbs(value)
  %1450 = fsub fast float %1439, %1444
  %1451 = fmul fast float %1449, %1450
  %1452 = fadd fast float %1451, %1444
  %1453 = fsub fast float %1440, %1443
  %1454 = fmul fast float %1449, %1453
  %1455 = fadd fast float %1454, %1443
  br label %1456

; <label>:1456                                    ; preds = %1445, %1435
  %1457 = phi float [ %1452, %1445 ], [ %1444, %1435 ]
  %1458 = phi float [ %1455, %1445 ], [ %1443, %1435 ]
  %1459 = fsub fast float %1457, %1458
  %1460 = fsub fast float 1.000000e+00, %1458
  %1461 = fdiv fast float %1459, %1460
  %1462 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  br label %1463

; <label>:1463                                    ; preds = %1456, %1338
  %1464 = phi float [ %1462, %1456 ], [ 1.000000e+00, %1338 ]
  %1465 = fcmp fast oeq float %418, 0.000000e+00
  br i1 %1465, label %1470, label %1466, !dx.controlflow.hints !69

; <label>:1466                                    ; preds = %1463
  %1467 = extractvalue %dx.types.CBufRet.f32 %1190, 2
  %1468 = fmul fast float %1467, %418
  %1469 = call float @dx.op.unary.f32(i32 23, float %1468)  ; Log(value)
  br label %1470

; <label>:1470                                    ; preds = %1466, %1463
  %1471 = phi float [ %1469, %1466 ], [ 0.000000e+00, %1463 ]
  %1472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %1294, float %1312, float undef, float undef, i32 0, i32 0, i32 undef, float %1471)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %31, float %1294, float %1312, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = extractvalue %dx.types.ResRet.f32 %1474, 1
  %1477 = extractvalue %dx.types.ResRet.f32 %1474, 2
  %1478 = extractvalue %dx.types.ResRet.f32 %1474, 3
  %1479 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %31, float %1294, float %1312, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.ResRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.ResRet.f32 %1479, 2
  %1483 = extractvalue %dx.types.ResRet.f32 %1479, 3
  %1484 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %31, float %1294, float %1312, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.ResRet.f32 %1484, 1
  %1487 = extractvalue %dx.types.ResRet.f32 %1484, 2
  %1488 = extractvalue %dx.types.ResRet.f32 %1484, 3
  %1489 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %31, float %1294, float %1312, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = extractvalue %dx.types.ResRet.f32 %1489, 1
  %1492 = extractvalue %dx.types.ResRet.f32 %1489, 2
  %1493 = extractvalue %dx.types.ResRet.f32 %1489, 3
  %1494 = fadd fast float %1475, %1476
  %1495 = fadd fast float %1494, %1477
  %1496 = fadd fast float %1495, %1478
  %1497 = fmul fast float %1480, %1475
  %1498 = fmul fast float %1481, %1476
  %1499 = fadd fast float %1497, %1498
  %1500 = fmul fast float %1482, %1477
  %1501 = fadd fast float %1499, %1500
  %1502 = fmul fast float %1483, %1478
  %1503 = fadd fast float %1501, %1502
  %1504 = fmul fast float %1485, %1475
  %1505 = fmul fast float %1486, %1476
  %1506 = fadd fast float %1504, %1505
  %1507 = fmul fast float %1487, %1477
  %1508 = fadd fast float %1506, %1507
  %1509 = fmul fast float %1488, %1478
  %1510 = fadd fast float %1508, %1509
  %1511 = fmul fast float %1490, %1475
  %1512 = fmul fast float %1491, %1476
  %1513 = fadd fast float %1511, %1512
  %1514 = fmul fast float %1492, %1477
  %1515 = fadd fast float %1513, %1514
  %1516 = fmul fast float %1493, %1478
  %1517 = fadd fast float %1515, %1516
  %1518 = fcmp fast ogt float %1496, 0.000000e+00
  %1519 = fdiv fast float %1503, %1496
  %1520 = select i1 %1518, float %1519, float 0.000000e+00
  %1521 = fdiv fast float %1510, %1496
  %1522 = select i1 %1518, float %1521, float 0.000000e+00
  %1523 = fdiv fast float %1517, %1496
  %1524 = select i1 %1518, float %1523, float 0.000000e+00
  %1525 = fcmp fast ogt float %185, %1522
  %1526 = fcmp fast olt float %185, %1520
  %1527 = and i1 %1526, %1525
  br i1 %1527, label %1528, label %1595, !dx.controlflow.hints !90

; <label>:1528                                    ; preds = %1470
  %1529 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1531 = extractvalue %dx.types.CBufRet.f32 %1530, 2
  %1532 = extractvalue %dx.types.CBufRet.f32 %1530, 3
  br i1 %1258, label %1543, label %1533, !dx.controlflow.hints !91

; <label>:1533                                    ; preds = %1528
  %1534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 60)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 64)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.ResRet.f32 %1536, 1
  %1539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 72)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 96)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  br label %1543

; <label>:1543                                    ; preds = %1533, %1528
  %1544 = phi float [ %1535, %1533 ], [ %1307, %1528 ]
  %1545 = phi float [ %1540, %1533 ], [ %1305, %1528 ]
  %1546 = phi float [ %1542, %1533 ], [ %1529, %1528 ]
  %1547 = phi float [ %1537, %1533 ], [ %1531, %1528 ]
  %1548 = phi float [ %1538, %1533 ], [ %1532, %1528 ]
  %1549 = call float @dx.op.binary.f32(i32 35, float %1473, float 0.000000e+00)  ; FMax(a,b)
  %1550 = call float @dx.op.binary.f32(i32 36, float %1549, float 1.000000e+00)  ; FMin(a,b)
  %1551 = call float @dx.op.unary.f32(i32 24, float %1550)  ; Sqrt(value)
  %1552 = call float @dx.op.binary.f32(i32 35, float %1524, float 0x3F847AE140000000)  ; FMax(a,b)
  %1553 = fsub fast float %1520, %185
  %1554 = fsub fast float %185, %1522
  %1555 = call float @dx.op.binary.f32(i32 36, float %1554, float %1553)  ; FMin(a,b)
  %1556 = fdiv fast float %1555, %1552
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1558 = fsub fast float %185, %1545
  %1559 = fdiv fast float %1558, %1544
  %1560 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1561 = fsub fast float 1.000000e+00, %1560
  %1562 = fmul float %1557, %1561
  %1563 = fmul float %1562, %1562
  %1564 = fmul fast float %1551, %1464
  %1565 = fmul fast float %1564, %1563
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 2
  %1568 = extractvalue %dx.types.CBufRet.f32 %1566, 1
  %1569 = fsub fast float %1565, %1568
  %1570 = fsub fast float %1567, %1568
  %1571 = fdiv fast float %1569, %1570
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1573 = fmul fast float %1572, %1546
  %1574 = fcmp fast ogt float %1548, 0.000000e+00
  br i1 %1574, label %1575, label %1595, !dx.controlflow.hints !92

; <label>:1575                                    ; preds = %1543
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 0
  %1578 = extractvalue %dx.types.CBufRet.f32 %1576, 1
  %1579 = extractvalue %dx.types.CBufRet.f32 %1576, 2
  %1580 = fsub fast float %183, %1577
  %1581 = fsub fast float %184, %1578
  %1582 = fsub fast float %185, %1579
  %1583 = fmul fast float %1580, %1580
  %1584 = fmul fast float %1581, %1581
  %1585 = fadd fast float %1583, %1584
  %1586 = fmul fast float %1582, %1582
  %1587 = fadd fast float %1585, %1586
  %1588 = call float @dx.op.unary.f32(i32 24, float %1587)  ; Sqrt(value)
  %1589 = fsub fast float %1588, %1547
  %1590 = fsub fast float %1548, %1547
  %1591 = fdiv fast float %1589, %1590
  %1592 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1593 = fmul fast float %1592, %1592
  %1594 = fmul fast float %1593, %1573
  br label %1595

; <label>:1595                                    ; preds = %1575, %1543, %1470, %1278
  %1596 = phi float [ 0.000000e+00, %1278 ], [ 0.000000e+00, %1470 ], [ %1594, %1575 ], [ %1573, %1543 ]
  %1597 = fcmp fast oeq float %1596, 0.000000e+00
  br i1 %1597, label %1976, label %1598, !dx.controlflow.hints !93

; <label>:1598                                    ; preds = %1595
  %1599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1600 = extractvalue %dx.types.CBufRet.f32 %1599, 0
  %1601 = extractvalue %dx.types.CBufRet.f32 %1599, 1
  %1602 = extractvalue %dx.types.CBufRet.f32 %1599, 2
  %1603 = fsub fast float %183, %1600
  %1604 = fadd fast float %1603, %1602
  %1605 = fsub fast float %184, %1601
  %1606 = fadd fast float %1605, %1602
  %1607 = extractvalue %dx.types.CBufRet.f32 %1599, 3
  %1608 = fmul fast float %1604, %1607
  %1609 = fmul fast float %1606, %1607
  %1610 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1611 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1612 = fsub fast float 1.000000e+00, %1610
  %1613 = fsub fast float 1.000000e+00, %1611
  %1614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %31, float %1612, float %1613, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 2
  %1618 = fmul fast float %1617, %1615
  %1619 = extractvalue %dx.types.CBufRet.f32 %1616, 3
  %1620 = fadd fast float %1619, %1618
  %1621 = fcmp fast ogt float %1615, 0.000000e+00
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 32768
  %1625 = icmp ne i32 %1624, 0
  %1626 = and i1 %1621, %1625
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 3
  %1629 = fadd fast float %1628, %1620
  %1630 = fcmp fast ole float %185, %1629
  %1631 = and i1 %1626, %1630
  %1632 = xor i1 %1631, true
  %1633 = icmp ne i32 %1285, 0
  %1634 = and i1 %1633, %1632
  %1635 = icmp ne i32 %1286, 0
  %1636 = and i1 %1635, %1631
  %1637 = or i1 %1634, %1636
  br i1 %1637, label %1976, label %1638, !dx.controlflow.hints !94

; <label>:1638                                    ; preds = %1598
  %1639 = fsub fast float %185, %1620
  %1640 = call float @dx.op.unary.f32(i32 6, float %1639)  ; FAbs(value)
  %1641 = fdiv fast float %1640, %1284
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1643 = fmul fast float %1642, %1596
  %1644 = fcmp fast une float %1282, 0.000000e+00
  br i1 %1644, label %1645, label %1964, !dx.controlflow.hints !95

; <label>:1645                                    ; preds = %1638
  %1646 = fmul fast float %1282, %111
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.CBufRet.f32 %1647, 1
  %1650 = extractvalue %dx.types.CBufRet.f32 %1647, 2
  %1651 = fmul fast float %1648, %1646
  %1652 = fmul fast float %1649, %1646
  %1653 = fmul fast float %1650, %1646
  %1654 = fadd fast float %1651, %183
  %1655 = fadd fast float %1652, %184
  %1656 = fadd fast float %1653, %185
  %1657 = fmul fast float %1282, 2.000000e+00
  %1658 = call float @dx.op.binary.f32(i32 35, float %418, float %1657)  ; FMax(a,b)
  %1659 = fsub fast float %1654, %1287
  %1660 = fsub fast float %1655, %1288
  %1661 = fmul fast float %1659, %1292
  %1662 = fmul fast float %1660, %1293
  %1663 = call float @dx.op.binary.f32(i32 36, float %1661, float %1662)  ; FMin(a,b)
  %1664 = fcmp fast olt float %1663, 0.000000e+00
  %1665 = call float @dx.op.binary.f32(i32 35, float %1661, float %1662)  ; FMax(a,b)
  %1666 = fcmp fast ogt float %1665, 1.000000e+00
  %1667 = or i1 %1664, %1666
  %1668 = fcmp fast olt float %1656, %1301
  %1669 = or i1 %1667, %1668
  %1670 = fcmp fast ogt float %1656, %1308
  %1671 = or i1 %1669, %1670
  br i1 %1671, label %1956, label %1672, !dx.controlflow.hints !84

; <label>:1672                                    ; preds = %1645
  %1673 = fsub fast float 1.000000e+00, %1662
  %1674 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 3
  %1677 = extractvalue %dx.types.CBufRet.f32 %1675, 2
  %1678 = extractvalue %dx.types.CBufRet.f32 %1675, 1
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1683 = extractvalue %dx.types.CBufRet.f32 %1675, 0
  br i1 %1258, label %1699, label %1684, !dx.controlflow.hints !85

; <label>:1684                                    ; preds = %1672
  %1685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 48)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.ResRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.ResRet.f32 %1685, 2
  %1689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 104)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.f32 %1689, 0
  %1691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 108)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.f32 %1691, 0
  %1693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 112)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 116)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 120)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  br label %1699

; <label>:1699                                    ; preds = %1684, %1672
  %1700 = phi float [ %1692, %1684 ], [ %1674, %1672 ]
  %1701 = phi float [ %1696, %1684 ], [ %1676, %1672 ]
  %1702 = phi float [ %1698, %1684 ], [ %1677, %1672 ]
  %1703 = phi float [ %1694, %1684 ], [ %1678, %1672 ]
  %1704 = phi float [ %1686, %1684 ], [ %1680, %1672 ]
  %1705 = phi float [ %1687, %1684 ], [ %1681, %1672 ]
  %1706 = phi float [ %1688, %1684 ], [ %1682, %1672 ]
  %1707 = phi float [ %1690, %1684 ], [ %1683, %1672 ]
  %1708 = fcmp fast oeq float %1700, 0.000000e+00
  br i1 %1708, label %1824, label %1709, !dx.controlflow.hints !86

; <label>:1709                                    ; preds = %1699
  %1710 = fcmp fast ogt float %1701, 0.000000e+00
  %1711 = fcmp fast oeq float %1658, 0.000000e+00
  br i1 %1711, label %1716, label %1712, !dx.controlflow.hints !69

; <label>:1712                                    ; preds = %1709
  %1713 = extractvalue %dx.types.CBufRet.f32 %1190, 1
  %1714 = fmul fast float %1713, %1658
  %1715 = call float @dx.op.unary.f32(i32 23, float %1714)  ; Log(value)
  br label %1716

; <label>:1716                                    ; preds = %1712, %1709
  %1717 = phi float [ %1715, %1712 ], [ 0.000000e+00, %1709 ]
  br i1 %1711, label %1722, label %1718, !dx.controlflow.hints !69

; <label>:1718                                    ; preds = %1716
  %1719 = extractvalue %dx.types.CBufRet.f32 %1190, 0
  %1720 = fmul fast float %1719, %1658
  %1721 = call float @dx.op.unary.f32(i32 23, float %1720)  ; Log(value)
  br label %1722

; <label>:1722                                    ; preds = %1718, %1716
  %1723 = phi float [ %1721, %1718 ], [ 0.000000e+00, %1716 ]
  br i1 %1710, label %1724, label %1786, !dx.controlflow.hints !87

; <label>:1724                                    ; preds = %1722
  %1725 = fcmp fast ogt float %1702, 0.000000e+00
  br i1 %1725, label %1726, label %1736, !dx.controlflow.hints !88

; <label>:1726                                    ; preds = %1724
  %1727 = fmul fast float %1702, %1661
  %1728 = fmul fast float %1702, %1673
  %1729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %1727, float %1728, float undef, float undef, i32 0, i32 0, i32 undef, float %1723)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.ResRet.f32 %1729, 1
  %1732 = fmul fast float %1730, 2.000000e+00
  %1733 = fmul fast float %1731, 2.000000e+00
  %1734 = fadd fast float %1732, -1.000000e+00
  %1735 = fadd fast float %1733, -1.000000e+00
  br label %1757

; <label>:1736                                    ; preds = %1724
  %1737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1738 = extractvalue %dx.types.CBufRet.f32 %1737, 3
  %1739 = fmul fast float %1738, %1661
  %1740 = fmul fast float %1738, %1673
  %1741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %1739, float %1740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.ResRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.ResRet.f32 %1741, 2
  %1745 = fmul fast float %1742, 2.000000e+00
  %1746 = fmul fast float %1743, 2.000000e+00
  %1747 = fmul fast float %1744, 2.000000e+00
  %1748 = fadd fast float %1745, -1.000000e+00
  %1749 = fadd fast float %1746, -1.000000e+00
  %1750 = fadd fast float %1747, -1.000000e+00
  %1751 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1752 = fmul fast float %1748, %1751
  %1753 = fmul fast float %1749, %1751
  %1754 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1755 = fmul fast float %1754, 5.000000e-01
  %1756 = fmul fast float %1755, %1750
  br label %1757

; <label>:1757                                    ; preds = %1736, %1726
  %1758 = phi float [ %1734, %1726 ], [ %1752, %1736 ]
  %1759 = phi float [ %1735, %1726 ], [ %1753, %1736 ]
  %1760 = phi float [ 0.000000e+00, %1726 ], [ %1756, %1736 ]
  %1761 = fmul fast float %1700, %1654
  %1762 = fmul fast float %1700, %1655
  %1763 = fmul fast float %1700, %1656
  %1764 = call float @dx.op.unary.f32(i32 22, float %1701)  ; Frc(value)
  %1765 = fmul fast float %1764, %1758
  %1766 = fmul fast float %1764, %1759
  %1767 = fmul fast float %1764, %1760
  %1768 = fsub fast float %1761, %1765
  %1769 = fsub fast float %1762, %1766
  %1770 = fsub fast float %1763, %1767
  %1771 = fadd fast float %1701, 5.000000e-01
  %1772 = call float @dx.op.unary.f32(i32 22, float %1771)  ; Frc(value)
  %1773 = fmul fast float %1772, %1758
  %1774 = fmul fast float %1772, %1759
  %1775 = fmul fast float %1772, %1760
  %1776 = fadd fast float %1761, -5.000000e-01
  %1777 = fsub fast float %1776, %1773
  %1778 = fadd fast float %1762, -5.000000e-01
  %1779 = fsub fast float %1778, %1774
  %1780 = fadd fast float %1763, -5.000000e-01
  %1781 = fsub fast float %1780, %1775
  %1782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %28, float %1777, float %1779, float %1781, float undef, i32 0, i32 0, i32 0, float %1717)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1785 = fadd fast float %1783, %1703
  br label %1796

; <label>:1786                                    ; preds = %1722
  %1787 = fmul fast float %1707, %1704
  %1788 = fmul fast float %1707, %1705
  %1789 = fmul fast float %1707, %1706
  %1790 = fsub fast float %1654, %1787
  %1791 = fsub fast float %1655, %1788
  %1792 = fsub fast float %1656, %1789
  %1793 = fmul fast float %1790, %1700
  %1794 = fmul fast float %1791, %1700
  %1795 = fmul fast float %1792, %1700
  br label %1796

; <label>:1796                                    ; preds = %1786, %1757
  %1797 = phi float [ %1768, %1757 ], [ %1793, %1786 ]
  %1798 = phi float [ %1769, %1757 ], [ %1794, %1786 ]
  %1799 = phi float [ %1770, %1757 ], [ %1795, %1786 ]
  %1800 = phi float [ %1785, %1757 ], [ 0.000000e+00, %1786 ]
  %1801 = phi float [ %1784, %1757 ], [ 0.000000e+00, %1786 ]
  %1802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %28, float %1797, float %1798, float %1799, float undef, i32 0, i32 0, i32 0, float %1717)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1803 = extractvalue %dx.types.ResRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.ResRet.f32 %1802, 1
  %1805 = fadd fast float %1803, %1703
  br i1 %1710, label %1806, label %1817, !dx.controlflow.hints !89

; <label>:1806                                    ; preds = %1796
  %1807 = call float @dx.op.unary.f32(i32 22, float %1701)  ; Frc(value)
  %1808 = fmul fast float %1807, 2.000000e+00
  %1809 = fadd fast float %1808, -1.000000e+00
  %1810 = call float @dx.op.unary.f32(i32 6, float %1809)  ; FAbs(value)
  %1811 = fsub fast float %1800, %1805
  %1812 = fmul fast float %1810, %1811
  %1813 = fadd fast float %1812, %1805
  %1814 = fsub fast float %1801, %1804
  %1815 = fmul fast float %1810, %1814
  %1816 = fadd fast float %1815, %1804
  br label %1817

; <label>:1817                                    ; preds = %1806, %1796
  %1818 = phi float [ %1813, %1806 ], [ %1805, %1796 ]
  %1819 = phi float [ %1816, %1806 ], [ %1804, %1796 ]
  %1820 = fsub fast float %1818, %1819
  %1821 = fsub fast float 1.000000e+00, %1819
  %1822 = fdiv fast float %1820, %1821
  %1823 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  br label %1824

; <label>:1824                                    ; preds = %1817, %1699
  %1825 = phi float [ %1823, %1817 ], [ 1.000000e+00, %1699 ]
  %1826 = fcmp fast oeq float %1658, 0.000000e+00
  br i1 %1826, label %1831, label %1827, !dx.controlflow.hints !69

; <label>:1827                                    ; preds = %1824
  %1828 = extractvalue %dx.types.CBufRet.f32 %1190, 2
  %1829 = fmul fast float %1828, %1658
  %1830 = call float @dx.op.unary.f32(i32 23, float %1829)  ; Log(value)
  br label %1831

; <label>:1831                                    ; preds = %1827, %1824
  %1832 = phi float [ %1830, %1827 ], [ 0.000000e+00, %1824 ]
  %1833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %1661, float %1673, float undef, float undef, i32 0, i32 0, i32 undef, float %1832)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %31, float %1661, float %1673, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = extractvalue %dx.types.ResRet.f32 %1835, 1
  %1838 = extractvalue %dx.types.ResRet.f32 %1835, 2
  %1839 = extractvalue %dx.types.ResRet.f32 %1835, 3
  %1840 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %31, float %1661, float %1673, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1841 = extractvalue %dx.types.ResRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.ResRet.f32 %1840, 1
  %1843 = extractvalue %dx.types.ResRet.f32 %1840, 2
  %1844 = extractvalue %dx.types.ResRet.f32 %1840, 3
  %1845 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %31, float %1661, float %1673, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = extractvalue %dx.types.ResRet.f32 %1845, 1
  %1848 = extractvalue %dx.types.ResRet.f32 %1845, 2
  %1849 = extractvalue %dx.types.ResRet.f32 %1845, 3
  %1850 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %31, float %1661, float %1673, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.ResRet.f32 %1850, 1
  %1853 = extractvalue %dx.types.ResRet.f32 %1850, 2
  %1854 = extractvalue %dx.types.ResRet.f32 %1850, 3
  %1855 = fadd fast float %1836, %1837
  %1856 = fadd fast float %1855, %1838
  %1857 = fadd fast float %1856, %1839
  %1858 = fmul fast float %1841, %1836
  %1859 = fmul fast float %1842, %1837
  %1860 = fadd fast float %1858, %1859
  %1861 = fmul fast float %1843, %1838
  %1862 = fadd fast float %1860, %1861
  %1863 = fmul fast float %1844, %1839
  %1864 = fadd fast float %1862, %1863
  %1865 = fmul fast float %1846, %1836
  %1866 = fmul fast float %1847, %1837
  %1867 = fadd fast float %1865, %1866
  %1868 = fmul fast float %1848, %1838
  %1869 = fadd fast float %1867, %1868
  %1870 = fmul fast float %1849, %1839
  %1871 = fadd fast float %1869, %1870
  %1872 = fmul fast float %1851, %1836
  %1873 = fmul fast float %1852, %1837
  %1874 = fadd fast float %1872, %1873
  %1875 = fmul fast float %1853, %1838
  %1876 = fadd fast float %1874, %1875
  %1877 = fmul fast float %1854, %1839
  %1878 = fadd fast float %1876, %1877
  %1879 = fcmp fast ogt float %1857, 0.000000e+00
  %1880 = fdiv fast float %1864, %1857
  %1881 = select i1 %1879, float %1880, float 0.000000e+00
  %1882 = fdiv fast float %1871, %1857
  %1883 = select i1 %1879, float %1882, float 0.000000e+00
  %1884 = fdiv fast float %1878, %1857
  %1885 = select i1 %1879, float %1884, float 0.000000e+00
  %1886 = fcmp fast ogt float %1656, %1883
  %1887 = fcmp fast olt float %1656, %1881
  %1888 = and i1 %1887, %1886
  br i1 %1888, label %1889, label %1956, !dx.controlflow.hints !90

; <label>:1889                                    ; preds = %1831
  %1890 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1893 = extractvalue %dx.types.CBufRet.f32 %1891, 3
  br i1 %1258, label %1904, label %1894, !dx.controlflow.hints !91

; <label>:1894                                    ; preds = %1889
  %1895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 60)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 64)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.ResRet.f32 %1897, 1
  %1900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 72)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1257, i32 96)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  br label %1904

; <label>:1904                                    ; preds = %1894, %1889
  %1905 = phi float [ %1896, %1894 ], [ %1307, %1889 ]
  %1906 = phi float [ %1901, %1894 ], [ %1305, %1889 ]
  %1907 = phi float [ %1903, %1894 ], [ %1890, %1889 ]
  %1908 = phi float [ %1898, %1894 ], [ %1892, %1889 ]
  %1909 = phi float [ %1899, %1894 ], [ %1893, %1889 ]
  %1910 = call float @dx.op.binary.f32(i32 35, float %1834, float 0.000000e+00)  ; FMax(a,b)
  %1911 = call float @dx.op.binary.f32(i32 36, float %1910, float 1.000000e+00)  ; FMin(a,b)
  %1912 = call float @dx.op.unary.f32(i32 24, float %1911)  ; Sqrt(value)
  %1913 = call float @dx.op.binary.f32(i32 35, float %1885, float 0x3F847AE140000000)  ; FMax(a,b)
  %1914 = fsub fast float %1881, %1656
  %1915 = fsub fast float %1656, %1883
  %1916 = call float @dx.op.binary.f32(i32 36, float %1915, float %1914)  ; FMin(a,b)
  %1917 = fdiv fast float %1916, %1913
  %1918 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  %1919 = fsub fast float %1656, %1906
  %1920 = fdiv fast float %1919, %1905
  %1921 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1922 = fsub fast float 1.000000e+00, %1921
  %1923 = fmul float %1918, %1922
  %1924 = fmul float %1923, %1923
  %1925 = fmul fast float %1912, %1825
  %1926 = fmul fast float %1925, %1924
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 2
  %1929 = extractvalue %dx.types.CBufRet.f32 %1927, 1
  %1930 = fsub fast float %1926, %1929
  %1931 = fsub fast float %1928, %1929
  %1932 = fdiv fast float %1930, %1931
  %1933 = call float @dx.op.unary.f32(i32 7, float %1932)  ; Saturate(value)
  %1934 = fmul fast float %1933, %1907
  %1935 = fcmp fast ogt float %1909, 0.000000e+00
  br i1 %1935, label %1936, label %1956, !dx.controlflow.hints !92

; <label>:1936                                    ; preds = %1904
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.CBufRet.f32 %1937, 1
  %1940 = extractvalue %dx.types.CBufRet.f32 %1937, 2
  %1941 = fsub fast float %1654, %1938
  %1942 = fsub fast float %1655, %1939
  %1943 = fsub fast float %1656, %1940
  %1944 = fmul fast float %1941, %1941
  %1945 = fmul fast float %1942, %1942
  %1946 = fadd fast float %1944, %1945
  %1947 = fmul fast float %1943, %1943
  %1948 = fadd fast float %1946, %1947
  %1949 = call float @dx.op.unary.f32(i32 24, float %1948)  ; Sqrt(value)
  %1950 = fsub fast float %1949, %1908
  %1951 = fsub fast float %1909, %1908
  %1952 = fdiv fast float %1950, %1951
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1954 = fmul fast float %1953, %1953
  %1955 = fmul fast float %1954, %1934
  br label %1956

; <label>:1956                                    ; preds = %1936, %1904, %1831, %1645
  %1957 = phi float [ 0.000000e+00, %1645 ], [ 0.000000e+00, %1831 ], [ %1955, %1936 ], [ %1934, %1904 ]
  %1958 = fsub fast float %1643, %1957
  %1959 = fdiv fast float %1958, %1643
  %1960 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1961 = fsub fast float 1.000000e+00, %1283
  %1962 = fmul fast float %1960, %1961
  %1963 = fadd fast float %1962, %1283
  br label %1964

; <label>:1964                                    ; preds = %1956, %1638
  %1965 = phi float [ %1963, %1956 ], [ 1.000000e+00, %1638 ]
  %1966 = fadd fast float %1643, %1179
  %1967 = fmul fast float %1643, %1279
  %1968 = fmul fast float %1967, %1965
  %1969 = fmul fast float %1643, %1280
  %1970 = fmul fast float %1969, %1965
  %1971 = fmul fast float %1643, %1281
  %1972 = fmul fast float %1971, %1965
  %1973 = fadd fast float %1968, %1176
  %1974 = fadd fast float %1970, %1177
  %1975 = fadd fast float %1972, %1178
  br label %1976

; <label>:1976                                    ; preds = %1964, %1598, %1595, %1175
  %1977 = phi float [ %1176, %1175 ], [ %1176, %1595 ], [ %1176, %1598 ], [ %1973, %1964 ]
  %1978 = phi float [ %1177, %1175 ], [ %1177, %1595 ], [ %1177, %1598 ], [ %1974, %1964 ]
  %1979 = phi float [ %1178, %1175 ], [ %1178, %1595 ], [ %1178, %1598 ], [ %1975, %1964 ]
  %1980 = phi float [ %1179, %1175 ], [ %1179, %1595 ], [ %1179, %1598 ], [ %1966, %1964 ]
  %1981 = and i32 %337, 4
  %1982 = icmp eq i32 %1981, 0
  br i1 %1982, label %2146, label %1983, !dx.controlflow.hints !96

; <label>:1983                                    ; preds = %1976
  %1984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.i32 %1984, 1
  %1986 = icmp eq i32 %1985, 0
  br i1 %1986, label %2146, label %1987

; <label>:1987                                    ; preds = %1983
  br label %1988

; <label>:1988                                    ; preds = %2138, %1987
  %1989 = phi i32 [ %2143, %2138 ], [ 0, %1987 ]
  %1990 = phi float [ %2139, %2138 ], [ %1977, %1987 ]
  %1991 = phi float [ %2140, %2138 ], [ %1978, %1987 ]
  %1992 = phi float [ %2141, %2138 ], [ %1979, %1987 ]
  %1993 = phi float [ %2142, %2138 ], [ %1980, %1987 ]
  %1994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.i32 %1994, 1
  %1996 = call i32 @dx.op.tertiary.i32(i32 49, i32 %335, i32 %1995, i32 %1989)  ; UMad(a,b,c)
  %1997 = shl i32 %1996, 2
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = icmp eq i32 %1999, 0
  br i1 %2000, label %2138, label %2001

; <label>:2001                                    ; preds = %1988
  br label %2002

; <label>:2002                                    ; preds = %2126, %2001
  %2003 = phi i32 [ %2012, %2126 ], [ %1999, %2001 ]
  %2004 = phi float [ %2132, %2126 ], [ %1990, %2001 ]
  %2005 = phi float [ %2133, %2126 ], [ %1991, %2001 ]
  %2006 = phi float [ %2134, %2126 ], [ %1992, %2001 ]
  %2007 = phi float [ %2135, %2126 ], [ %1993, %2001 ]
  %2008 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2003)  ; FirstbitLo(value)
  %2009 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1989, i32 %2008)  ; UMad(a,b,c)
  %2010 = and i32 %2008, 31
  %2011 = shl i32 1, %2010
  %2012 = xor i32 %2011, %2003
  %2013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2009, i32 0)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  %2015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2009, i32 4)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.f32 %2015, 0
  %2017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2009, i32 16)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.ResRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.ResRet.f32 %2017, 2
  %2021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2009, i32 32)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = extractvalue %dx.types.ResRet.f32 %2021, 1
  %2024 = extractvalue %dx.types.ResRet.f32 %2021, 2
  %2025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2009, i32 44)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2009, i32 48)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 0
  %2029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2009, i32 52)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.f32 %2029, 0
  %2031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2009, i32 56)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  %2033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2009, i32 64)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.ResRet.f32 %2033, 1
  %2036 = extractvalue %dx.types.ResRet.f32 %2033, 2
  %2037 = mul i32 %2009, 60
  %2038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  %2040 = extractvalue %dx.types.ResRet.f32 %2038, 1
  %2041 = extractvalue %dx.types.ResRet.f32 %2038, 2
  %2042 = add i32 %2037, 12
  %2043 = add i32 %2037, 48
  %2044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 2
  %2046 = fsub fast float %183, %2039
  %2047 = fsub fast float %184, %2040
  %2048 = fsub fast float %185, %2041
  %2049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.ResRet.f32 %2049, 1
  %2052 = extractvalue %dx.types.ResRet.f32 %2049, 2
  %2053 = call float @dx.op.dot3.f32(i32 55, float %2046, float %2047, float %2048, float %2050, float %2051, float %2052)  ; Dot3(ax,ay,az,bx,by,bz)
  %2054 = add i32 %2037, 24
  %2055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.ResRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.ResRet.f32 %2055, 2
  %2059 = call float @dx.op.dot3.f32(i32 55, float %2046, float %2047, float %2048, float %2056, float %2057, float %2058)  ; Dot3(ax,ay,az,bx,by,bz)
  %2060 = add i32 %2037, 36
  %2061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.f32 %2061, 0
  %2063 = extractvalue %dx.types.ResRet.f32 %2061, 1
  %2064 = extractvalue %dx.types.ResRet.f32 %2061, 2
  %2065 = call float @dx.op.dot3.f32(i32 55, float %2046, float %2047, float %2048, float %2062, float %2063, float %2064)  ; Dot3(ax,ay,az,bx,by,bz)
  %2066 = call float @dx.op.unary.f32(i32 6, float %2053)  ; FAbs(value)
  %2067 = call float @dx.op.unary.f32(i32 6, float %2059)  ; FAbs(value)
  %2068 = call float @dx.op.unary.f32(i32 6, float %2065)  ; FAbs(value)
  %2069 = fmul fast float %2066, %2026
  %2070 = fmul fast float %2067, %2026
  %2071 = fmul fast float %2068, %2026
  %2072 = fadd fast float %2069, %2022
  %2073 = fadd fast float %2070, %2023
  %2074 = fadd fast float %2071, %2024
  %2075 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2076 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2077 = call float @dx.op.unary.f32(i32 7, float %2074)  ; Saturate(value)
  %2078 = fmul fast float %2075, %2075
  %2079 = fmul fast float %2076, %2076
  %2080 = fadd fast float %2079, %2078
  %2081 = fmul fast float %2077, %2077
  %2082 = fadd fast float %2080, %2081
  %2083 = call float @dx.op.unary.f32(i32 24, float %2082)  ; Sqrt(value)
  %2084 = fsub fast float 1.000000e+00, %2083
  %2085 = call float @dx.op.unary.f32(i32 7, float %2084)  ; Saturate(value)
  %2086 = fmul fast float %2085, %2014
  %2087 = fmul fast float %2045, 2.000000e+00
  %2088 = fadd fast float %2065, %2045
  %2089 = call float @dx.op.binary.f32(i32 35, float %2088, float 0.000000e+00)  ; FMax(a,b)
  %2090 = call float @dx.op.binary.f32(i32 36, float %2089, float %2087)  ; FMin(a,b)
  %2091 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2090)  ; FMax(a,b)
  %2092 = fmul fast float %2016, 0x3FF7154760000000
  %2093 = fmul fast float %2092, %2091
  %2094 = call float @dx.op.unary.f32(i32 21, float %2093)  ; Exp(value)
  %2095 = fmul fast float %2086, %2094
  %2096 = fcmp fast oeq float %418, 0.000000e+00
  br i1 %2096, label %2102, label %2097, !dx.controlflow.hints !69

; <label>:2097                                    ; preds = %2002
  %2098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2098, 3
  %2100 = fmul fast float %2099, %418
  %2101 = call float @dx.op.unary.f32(i32 23, float %2100)  ; Log(value)
  br label %2102

; <label>:2102                                    ; preds = %2097, %2002
  %2103 = phi float [ %2101, %2097 ], [ 0.000000e+00, %2002 ]
  %2104 = fcmp fast oeq float %2028, 0.000000e+00
  br i1 %2104, label %2126, label %2105, !dx.controlflow.hints !97

; <label>:2105                                    ; preds = %2102
  %2106 = fmul fast float %2034, %2032
  %2107 = fmul fast float %2035, %2032
  %2108 = fmul fast float %2036, %2032
  %2109 = fsub fast float %183, %2106
  %2110 = fsub fast float %184, %2107
  %2111 = fsub fast float %185, %2108
  %2112 = fmul fast float %2109, %2028
  %2113 = fmul fast float %2110, %2028
  %2114 = fmul fast float %2111, %2028
  %2115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %28, float %2112, float %2113, float %2114, float undef, i32 0, i32 0, i32 0, float %2103)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2116 = extractvalue %dx.types.ResRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.ResRet.f32 %2115, 1
  %2118 = fdiv fast float 1.000000e+00, %2030
  %2119 = fmul fast float %2030, 2.000000e+00
  %2120 = fadd fast float %2119, -1.000000e+00
  %2121 = fadd fast float %2120, %2117
  %2122 = fadd fast float %2121, %2116
  %2123 = fmul fast float %2122, %2118
  %2124 = fadd fast float %2123, -1.000000e+00
  %2125 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  br label %2126

; <label>:2126                                    ; preds = %2105, %2102
  %2127 = phi float [ %2125, %2105 ], [ 1.000000e+00, %2102 ]
  %2128 = fmul fast float %2095, %2127
  %2129 = fmul fast float %2128, %2018
  %2130 = fmul fast float %2128, %2019
  %2131 = fmul fast float %2128, %2020
  %2132 = fadd fast float %2129, %2004
  %2133 = fadd fast float %2130, %2005
  %2134 = fadd fast float %2131, %2006
  %2135 = fadd fast float %2128, %2007
  %2136 = icmp eq i32 %2003, %2011
  br i1 %2136, label %2137, label %2002, !llvm.loop !98

; <label>:2137                                    ; preds = %2126
  br label %2138

; <label>:2138                                    ; preds = %2137, %1988
  %2139 = phi float [ %1990, %1988 ], [ %2132, %2137 ]
  %2140 = phi float [ %1991, %1988 ], [ %2133, %2137 ]
  %2141 = phi float [ %1992, %1988 ], [ %2134, %2137 ]
  %2142 = phi float [ %1993, %1988 ], [ %2135, %2137 ]
  %2143 = add i32 %1989, 1
  %2144 = icmp ult i32 %2143, %1995
  br i1 %2144, label %1988, label %2145, !llvm.loop !99

; <label>:2145                                    ; preds = %2138
  br label %2146

; <label>:2146                                    ; preds = %2145, %1983, %1976
  %2147 = phi float [ %1977, %1976 ], [ %1977, %1983 ], [ %2139, %2145 ]
  %2148 = phi float [ %1978, %1976 ], [ %1978, %1983 ], [ %2140, %2145 ]
  %2149 = phi float [ %1979, %1976 ], [ %1979, %1983 ], [ %2141, %2145 ]
  %2150 = phi float [ %1980, %1976 ], [ %1980, %1983 ], [ %2142, %2145 ]
  %2151 = fcmp fast ogt float %2150, 0.000000e+00
  br i1 %2151, label %2152, label %2179, !dx.controlflow.hints !100

; <label>:2152                                    ; preds = %2146
  %2153 = fdiv fast float 1.000000e+00, %2150
  %2154 = fmul fast float %2153, %2147
  %2155 = fmul fast float %2153, %2148
  %2156 = fmul fast float %2153, %2149
  %2157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %29, float %132, float %133, float %134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.ResRet.f32 %2157, 1
  %2160 = extractvalue %dx.types.ResRet.f32 %2157, 2
  %2161 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2158)  ; IsNaN(value)
  %2162 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2159)  ; IsNaN(value)
  %2163 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2160)  ; IsNaN(value)
  %2164 = or i1 %2161, %2162
  %2165 = or i1 %2164, %2163
  %2166 = select i1 %2165, float 0.000000e+00, float %2158
  %2167 = select i1 %2165, float 0.000000e+00, float %2159
  %2168 = select i1 %2165, float 0.000000e+00, float %2160
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 1
  %2171 = fmul fast float %2166, %2170
  %2172 = fmul fast float %2167, %2170
  %2173 = fmul fast float %2168, %2170
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 3
  %2176 = fmul fast float %2171, %2175
  %2177 = fmul fast float %2172, %2175
  %2178 = fmul fast float %2173, %2175
  br label %2179

; <label>:2179                                    ; preds = %2152, %2146
  %2180 = phi float [ %2154, %2152 ], [ %2147, %2146 ]
  %2181 = phi float [ %2155, %2152 ], [ %2148, %2146 ]
  %2182 = phi float [ %2156, %2152 ], [ %2149, %2146 ]
  %2183 = phi float [ %2176, %2152 ], [ 0.000000e+00, %2146 ]
  %2184 = phi float [ %2177, %2152 ], [ 0.000000e+00, %2146 ]
  %2185 = phi float [ %2178, %2152 ], [ 0.000000e+00, %2146 ]
  %2186 = fmul fast float %2180, %2150
  %2187 = fmul fast float %2181, %2150
  %2188 = fmul fast float %2182, %2150
  %2189 = select i1 %229, float %1180, float %2150
  %2190 = select i1 %229, float %1181, float %2150
  %2191 = select i1 %229, float %1182, float %2150
  %2192 = fmul fast float %2186, %2183
  %2193 = fmul fast float %2187, %2184
  %2194 = fmul fast float %2188, %2185
  br i1 %196, label %2979, label %2195, !dx.controlflow.hints !101

; <label>:2195                                    ; preds = %2179
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 0
  %2198 = extractvalue %dx.types.CBufRet.f32 %2196, 1
  %2199 = extractvalue %dx.types.CBufRet.f32 %2196, 2
  %2200 = extractvalue %dx.types.CBufRet.f32 %2196, 3
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.CBufRet.f32 %2201, 1
  %2204 = extractvalue %dx.types.CBufRet.f32 %2201, 2
  %2205 = extractvalue %dx.types.CBufRet.f32 %2201, 3
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.CBufRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.CBufRet.f32 %2206, 2
  %2210 = extractvalue %dx.types.CBufRet.f32 %2206, 3
  %2211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2212 = extractvalue %dx.types.CBufRet.f32 %2211, 0
  %2213 = extractvalue %dx.types.CBufRet.f32 %2211, 1
  %2214 = extractvalue %dx.types.CBufRet.f32 %2211, 2
  %2215 = extractvalue %dx.types.CBufRet.f32 %2211, 3
  %2216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.f32 %2216, 3
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 3
  %2220 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2221 = extractvalue %dx.types.CBufRet.f32 %2218, 1
  %2222 = extractvalue %dx.types.CBufRet.f32 %2218, 2
  %2223 = fcmp fast olt float %2222, -5.000000e-01
  %2224 = call float @dx.op.dot3.f32(i32 55, float %176, float %177, float %178, float %176, float %177, float %178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2225 = call float @dx.op.unary.f32(i32 25, float %2224)  ; Rsqrt(value)
  %2226 = fmul fast float %2225, %2224
  %2227 = fmul fast float %2225, %176
  %2228 = fmul fast float %2225, %177
  %2229 = fmul fast float %2225, %178
  %2230 = fadd fast float %2226, %2200
  %2231 = call float @dx.op.dot3.f32(i32 55, float %2227, float %2228, float %2229, float %2197, float %2198, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %2232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.i32 %2232, 1
  %2234 = and i32 %2233, 1
  %2235 = icmp ne i32 %2234, 0
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 2
  %2238 = fcmp fast ogt float %2237, 0.000000e+00
  %2239 = and i1 %2235, %2238
  br i1 %2239, label %2240, label %2646, !dx.controlflow.hints !102

; <label>:2240                                    ; preds = %2195
  %2241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2241, 3
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 2
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 2
  %2247 = fsub fast float %2244, %2246
  %2248 = and i32 %2233, 2
  %2249 = extractvalue %dx.types.CBufRet.i32 %2232, 0
  %2250 = call i32 @dx.op.binary.i32(i32 40, i32 %2249, i32 3)  ; UMin(a,b)
  %2251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2251, 0
  %2253 = extractvalue %dx.types.CBufRet.f32 %2251, 1
  %2254 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2255 = extractvalue %dx.types.CBufRet.f32 %2245, 1
  %2256 = fsub fast float %2252, %2254
  %2257 = fsub fast float %2253, %2255
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 0
  %2260 = fcmp fast ogt float %2259, 0.000000e+00
  %2261 = fsub fast float -0.000000e+00, %2256
  %2262 = fsub fast float -0.000000e+00, %2257
  %2263 = call float @dx.op.dot2.f32(i32 54, float %2227, float %2228, float %2227, float %2228)  ; Dot2(ax,ay,bx,by)
  %2264 = call float @dx.op.dot2.f32(i32 54, float %2227, float %2228, float %2261, float %2262)  ; Dot2(ax,ay,bx,by)
  %2265 = fmul fast float %2264, 2.000000e+00
  %2266 = call float @dx.op.dot2.f32(i32 54, float %2261, float %2262, float %2261, float %2262)  ; Dot2(ax,ay,bx,by)
  %2267 = fmul fast float %2259, %2259
  %2268 = fsub fast float %2266, %2267
  %2269 = fmul fast float %2265, %2265
  %2270 = fmul fast float %2263, 4.000000e+00
  %2271 = fmul fast float %2270, %2268
  %2272 = fsub fast float %2269, %2271
  %2273 = fcmp fast ogt float %2272, 0.000000e+00
  br i1 %2273, label %2274, label %2289, !dx.controlflow.hints !103

; <label>:2274                                    ; preds = %2240
  %2275 = fcmp fast ogt float %2265, 0.000000e+00
  %2276 = call float @dx.op.unary.f32(i32 24, float %2272)  ; Sqrt(value)
  %2277 = fsub fast float -0.000000e+00, %2276
  %2278 = select i1 %2275, float %2276, float %2277
  %2279 = fadd fast float %2278, %2265
  %2280 = fmul float %2279, -5.000000e-01
  %2281 = fdiv fast float %2280, %2263
  %2282 = call float @dx.op.binary.f32(i32 35, float %2281, float 0.000000e+00)  ; FMax(a,b)
  %2283 = call float @dx.op.binary.f32(i32 36, float %2226, float %2282)  ; FMin(a,b)
  %2284 = fdiv fast float %2268, %2280
  %2285 = call float @dx.op.binary.f32(i32 35, float %2284, float 0.000000e+00)  ; FMax(a,b)
  %2286 = call float @dx.op.binary.f32(i32 36, float %2226, float %2285)  ; FMin(a,b)
  %2287 = call float @dx.op.binary.f32(i32 36, float %2283, float %2286)  ; FMin(a,b)
  %2288 = call float @dx.op.binary.f32(i32 35, float %2283, float %2286)  ; FMax(a,b)
  br label %2289

; <label>:2289                                    ; preds = %2274, %2240
  %2290 = phi float [ %2288, %2274 ], [ -1.000000e+00, %2240 ]
  %2291 = phi float [ %2287, %2274 ], [ -1.000000e+00, %2240 ]
  %2292 = phi i1 [ true, %2274 ], [ false, %2240 ]
  %2293 = and i1 %2260, %2292
  br i1 %2293, label %2294, label %2296, !dx.controlflow.hints !104

; <label>:2294                                    ; preds = %2289
  %2295 = fcmp fast oeq float %2291, %2290
  br i1 %2295, label %2599, label %2297, !dx.controlflow.hints !105

; <label>:2296                                    ; preds = %2289
  br i1 %2260, label %2599, label %2297, !dx.controlflow.hints !106

; <label>:2297                                    ; preds = %2296, %2294
  %2298 = phi float [ %2226, %2296 ], [ %2290, %2294 ]
  %2299 = phi float [ 0.000000e+00, %2296 ], [ %2291, %2294 ]
  %2300 = icmp ne i32 %2248, 0
  %2301 = fmul fast float %2298, %2229
  %2302 = fadd fast float %2301, %2242
  %2303 = fmul fast float %2302, %2298
  %2304 = select i1 %2300, float 0.000000e+00, float %2303
  %2305 = fcmp fast oeq float %2229, 0.000000e+00
  %2306 = fdiv fast float %2247, %2229
  %2307 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2306)  ; FMax(a,b)
  %2308 = select i1 %2305, float %2298, float %2307
  %2309 = call float @dx.op.binary.f32(i32 36, float %2298, float %2308)  ; FMin(a,b)
  %2310 = fcmp fast ogt float %2229, 0.000000e+00
  %2311 = fcmp fast olt float %2247, 0.000000e+00
  br i1 %2310, label %2312, label %2369, !dx.controlflow.hints !107

; <label>:2312                                    ; preds = %2297
  %2313 = icmp eq i32 %2248, 0
  br i1 %2311, label %2314, label %2358, !dx.controlflow.hints !108

; <label>:2314                                    ; preds = %2312
  %2315 = select i1 %2313, float %2298, float 0.000000e+00
  %2316 = fsub fast float -0.000000e+00, %2315
  %2317 = call float @dx.op.unary.f32(i32 6, float %2316)  ; FAbs(value)
  %2318 = fmul fast float %2315, %2229
  %2319 = fadd fast float %2318, %2242
  %2320 = fmul fast float %2317, %2319
  %2321 = fsub fast float %2304, %2320
  %2322 = fsub fast float %2298, %2317
  %2323 = select i1 %2313, float %2322, float 0.000000e+00
  %2324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2325 = extractvalue %dx.types.CBufRet.f32 %2324, 0
  %2326 = extractvalue %dx.types.CBufRet.f32 %2324, 1
  %2327 = extractvalue %dx.types.CBufRet.f32 %2324, 2
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 0
  %2330 = extractvalue %dx.types.CBufRet.f32 %2328, 1
  %2331 = extractvalue %dx.types.CBufRet.f32 %2328, 2
  %2332 = extractvalue %dx.types.CBufRet.f32 %2328, 3
  %2333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2334 = extractvalue %dx.types.CBufRet.f32 %2333, 3
  %2335 = call float @dx.op.binary.f32(i32 36, float %2321, float %2334)  ; FMin(a,b)
  %2336 = fmul fast float %2332, %2323
  %2337 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2338 = fsub fast float %2329, %2325
  %2339 = fsub fast float %2330, %2326
  %2340 = fsub fast float %2331, %2327
  %2341 = fmul fast float %2337, %2338
  %2342 = fmul fast float %2337, %2339
  %2343 = fmul fast float %2337, %2340
  %2344 = fadd fast float %2341, %2325
  %2345 = fadd fast float %2342, %2326
  %2346 = fadd fast float %2343, %2327
  %2347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.CBufRet.f32 %2347, 1
  %2350 = fadd fast float %2349, %2348
  %2351 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2347, 2
  %2353 = extractvalue %dx.types.CBufRet.f32 %2347, 3
  %2354 = fadd fast float %2353, %2352
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2356 = fmul fast float %2351, %2335
  %2357 = fmul fast float %2356, %2355
  br label %2599

; <label>:2358                                    ; preds = %2312
  br i1 %2313, label %2359, label %2380, !dx.controlflow.hints !109

; <label>:2359                                    ; preds = %2358
  %2360 = call float @dx.op.binary.f32(i32 36, float %2309, float %2299)  ; FMin(a,b)
  %2361 = fsub fast float %2309, %2360
  %2362 = fsub fast float %2361, %2298
  %2363 = call float @dx.op.unary.f32(i32 6, float %2362)  ; FAbs(value)
  %2364 = fadd fast float %2361, %2298
  %2365 = fmul fast float %2364, %2229
  %2366 = fadd fast float %2365, %2242
  %2367 = fmul fast float %2366, %2363
  %2368 = fsub fast float %2304, %2367
  br label %2380

; <label>:2369                                    ; preds = %2297
  br i1 %2311, label %2370, label %2380, !dx.controlflow.hints !110

; <label>:2370                                    ; preds = %2369
  %2371 = call float @dx.op.binary.f32(i32 35, float %2299, float %2309)  ; FMax(a,b)
  %2372 = icmp eq i32 %2248, 0
  %2373 = select i1 %2372, float %2309, float 0.000000e+00
  %2374 = fsub fast float -0.000000e+00, %2373
  %2375 = call float @dx.op.unary.f32(i32 6, float %2374)  ; FAbs(value)
  %2376 = fmul fast float %2373, %2229
  %2377 = fadd fast float %2376, %2242
  %2378 = fmul fast float %2375, %2377
  %2379 = fsub fast float %2304, %2378
  br label %2380

; <label>:2380                                    ; preds = %2370, %2369, %2359, %2358
  %2381 = phi float [ %2299, %2358 ], [ %2299, %2359 ], [ %2371, %2370 ], [ %2299, %2369 ]
  %2382 = phi float [ 0.000000e+00, %2358 ], [ %2363, %2359 ], [ %2375, %2370 ], [ 0.000000e+00, %2369 ]
  %2383 = phi float [ %2304, %2358 ], [ %2368, %2359 ], [ %2379, %2370 ], [ %2304, %2369 ]
  %2384 = phi float [ %2309, %2358 ], [ %2309, %2359 ], [ %2298, %2370 ], [ %2298, %2369 ]
  %2385 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %2385, align 4, !tbaa !49, !noalias !111
  %2386 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %2386, align 4, !tbaa !49, !noalias !111
  %2387 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %2387, align 4, !tbaa !49, !noalias !111
  %2388 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 0
  store float -1.000000e+00, float* %2388, align 4, !tbaa !49, !noalias !111
  %2389 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 1
  store float -1.000000e+00, float* %2389, align 4, !tbaa !49, !noalias !111
  %2390 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 2
  store float -1.000000e+00, float* %2390, align 4, !tbaa !49, !noalias !111
  %2391 = icmp sgt i32 %2250, 0
  br i1 %2391, label %2392, label %2453

; <label>:2392                                    ; preds = %2380
  br label %2393

; <label>:2393                                    ; preds = %2442, %2392
  %2394 = phi i32 [ %2443, %2442 ], [ 0, %2392 ]
  %2395 = phi i32 [ %2444, %2442 ], [ 0, %2392 ]
  %2396 = add nuw i32 %2395, 171
  %2397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %2396)  ; CBufferLoadLegacy(handle,regIndex)
  %2398 = extractvalue %dx.types.CBufRet.f32 %2397, 0
  %2399 = extractvalue %dx.types.CBufRet.f32 %2397, 1
  %2400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2401 = extractvalue %dx.types.CBufRet.f32 %2400, 0
  %2402 = extractvalue %dx.types.CBufRet.f32 %2400, 1
  %2403 = fsub fast float %2398, %2401
  %2404 = fsub fast float %2399, %2402
  %2405 = extractvalue %dx.types.CBufRet.f32 %2397, 2
  %2406 = fsub fast float -0.000000e+00, %2403
  %2407 = fsub fast float -0.000000e+00, %2404
  %2408 = call float @dx.op.dot2.f32(i32 54, float %2227, float %2228, float %2406, float %2407)  ; Dot2(ax,ay,bx,by)
  %2409 = fmul fast float %2408, 2.000000e+00
  %2410 = call float @dx.op.dot2.f32(i32 54, float %2406, float %2407, float %2406, float %2407)  ; Dot2(ax,ay,bx,by)
  %2411 = fmul fast float %2405, %2405
  %2412 = fsub fast float %2410, %2411
  %2413 = fmul fast float %2409, %2409
  %2414 = fmul fast float %2270, %2412
  %2415 = fsub fast float %2413, %2414
  %2416 = fcmp fast ogt float %2415, 0.000000e+00
  br i1 %2416, label %2417, label %2432, !dx.controlflow.hints !103

; <label>:2417                                    ; preds = %2393
  %2418 = fcmp fast ogt float %2409, 0.000000e+00
  %2419 = call float @dx.op.unary.f32(i32 24, float %2415)  ; Sqrt(value)
  %2420 = fsub fast float -0.000000e+00, %2419
  %2421 = select i1 %2418, float %2419, float %2420
  %2422 = fadd fast float %2421, %2409
  %2423 = fmul float %2422, -5.000000e-01
  %2424 = fdiv fast float %2423, %2263
  %2425 = call float @dx.op.binary.f32(i32 35, float %2424, float 0.000000e+00)  ; FMax(a,b)
  %2426 = call float @dx.op.binary.f32(i32 36, float %2298, float %2425)  ; FMin(a,b)
  %2427 = fdiv fast float %2412, %2423
  %2428 = call float @dx.op.binary.f32(i32 35, float %2427, float 0.000000e+00)  ; FMax(a,b)
  %2429 = call float @dx.op.binary.f32(i32 36, float %2298, float %2428)  ; FMin(a,b)
  %2430 = call float @dx.op.binary.f32(i32 36, float %2426, float %2429)  ; FMin(a,b)
  %2431 = call float @dx.op.binary.f32(i32 35, float %2426, float %2429)  ; FMax(a,b)
  br label %2432

; <label>:2432                                    ; preds = %2417, %2393
  %2433 = phi float [ %2431, %2417 ], [ -1.000000e+00, %2393 ]
  %2434 = phi float [ %2430, %2417 ], [ -1.000000e+00, %2393 ]
  %2435 = phi i1 [ true, %2417 ], [ false, %2393 ]
  br i1 %2435, label %2436, label %2442, !dx.controlflow.hints !117

; <label>:2436                                    ; preds = %2432
  %2437 = call float @dx.op.binary.f32(i32 35, float %2381, float %2434)  ; FMax(a,b)
  %2438 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %2395
  store float %2437, float* %2438, align 4, !tbaa !49, !noalias !111
  %2439 = call float @dx.op.binary.f32(i32 35, float %2381, float %2433)  ; FMax(a,b)
  %2440 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %2395
  store float %2439, float* %2440, align 4, !tbaa !49, !noalias !111
  %2441 = add nsw i32 %2394, 1
  br label %2442

; <label>:2442                                    ; preds = %2436, %2432
  %2443 = phi i32 [ %2441, %2436 ], [ %2394, %2432 ]
  %2444 = add nuw nsw i32 %2395, 1
  %2445 = icmp eq i32 %2444, %2250
  br i1 %2445, label %2446, label %2393

; <label>:2446                                    ; preds = %2442
  %2447 = load float, float* %2387, align 4, !tbaa !49, !alias.scope !118, !noalias !121
  %2448 = load float, float* %2386, align 4, !tbaa !49, !alias.scope !124, !noalias !125
  %2449 = load float, float* %2385, align 4, !tbaa !49, !alias.scope !126, !noalias !127
  %2450 = load float, float* %2390, align 4, !tbaa !49, !alias.scope !128, !noalias !131
  %2451 = load float, float* %2389, align 4, !tbaa !49, !alias.scope !134, !noalias !135
  %2452 = load float, float* %2388, align 4, !tbaa !49, !alias.scope !136, !noalias !137
  br label %2453

; <label>:2453                                    ; preds = %2446, %2380
  %2454 = phi float [ -1.000000e+00, %2380 ], [ %2452, %2446 ]
  %2455 = phi float [ -1.000000e+00, %2380 ], [ %2451, %2446 ]
  %2456 = phi float [ -1.000000e+00, %2380 ], [ %2450, %2446 ]
  %2457 = phi float [ -1.000000e+00, %2380 ], [ %2449, %2446 ]
  %2458 = phi float [ -1.000000e+00, %2380 ], [ %2448, %2446 ]
  %2459 = phi float [ -1.000000e+00, %2380 ], [ %2447, %2446 ]
  %2460 = phi i32 [ 0, %2380 ], [ %2443, %2446 ]
  %2461 = call float @dx.op.binary.f32(i32 36, float %2458, float %2459)  ; FMin(a,b)
  %2462 = call float @dx.op.binary.f32(i32 36, float %2457, float %2461)  ; FMin(a,b)
  %2463 = call float @dx.op.binary.f32(i32 35, float %2457, float %2458)  ; FMax(a,b)
  %2464 = call float @dx.op.binary.f32(i32 36, float %2463, float %2459)  ; FMin(a,b)
  %2465 = call float @dx.op.binary.f32(i32 36, float %2457, float %2458)  ; FMin(a,b)
  %2466 = call float @dx.op.binary.f32(i32 35, float %2465, float %2464)  ; FMax(a,b)
  %2467 = call float @dx.op.binary.f32(i32 35, float %2458, float %2459)  ; FMax(a,b)
  %2468 = call float @dx.op.binary.f32(i32 35, float %2457, float %2467)  ; FMax(a,b)
  store float %2462, float* %2385, align 4, !tbaa !49, !alias.scope !126, !noalias !127
  store float %2466, float* %2386, align 4, !tbaa !49, !alias.scope !124, !noalias !125
  store float %2468, float* %2387, align 4, !tbaa !49, !alias.scope !118, !noalias !121
  %2469 = call float @dx.op.binary.f32(i32 36, float %2455, float %2456)  ; FMin(a,b)
  %2470 = call float @dx.op.binary.f32(i32 36, float %2454, float %2469)  ; FMin(a,b)
  %2471 = call float @dx.op.binary.f32(i32 35, float %2454, float %2455)  ; FMax(a,b)
  %2472 = call float @dx.op.binary.f32(i32 36, float %2471, float %2456)  ; FMin(a,b)
  %2473 = call float @dx.op.binary.f32(i32 36, float %2454, float %2455)  ; FMin(a,b)
  %2474 = call float @dx.op.binary.f32(i32 35, float %2473, float %2472)  ; FMax(a,b)
  %2475 = call float @dx.op.binary.f32(i32 35, float %2455, float %2456)  ; FMax(a,b)
  %2476 = call float @dx.op.binary.f32(i32 35, float %2454, float %2475)  ; FMax(a,b)
  store float %2470, float* %2388, align 4, !tbaa !49, !alias.scope !136, !noalias !137
  store float %2474, float* %2389, align 4, !tbaa !49, !alias.scope !134, !noalias !135
  store float %2476, float* %2390, align 4, !tbaa !49, !alias.scope !128, !noalias !131
  %2477 = sub nsw i32 3, %2460
  %2478 = icmp sgt i32 %2477, 2
  br i1 %2478, label %2479, label %2517, !dx.controlflow.hints !138

; <label>:2479                                    ; preds = %2453
  %2480 = icmp eq i32 %2248, 0
  %2481 = fsub fast float %2298, %2382
  %2482 = select i1 %2480, float %2481, float %2382
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.CBufRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.CBufRet.f32 %2483, 2
  %2487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.f32 %2487, 0
  %2489 = extractvalue %dx.types.CBufRet.f32 %2487, 1
  %2490 = extractvalue %dx.types.CBufRet.f32 %2487, 2
  %2491 = extractvalue %dx.types.CBufRet.f32 %2487, 3
  %2492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2492, 3
  %2494 = call float @dx.op.binary.f32(i32 36, float %2383, float %2493)  ; FMin(a,b)
  %2495 = fmul fast float %2491, %2482
  %2496 = call float @dx.op.unary.f32(i32 7, float %2495)  ; Saturate(value)
  %2497 = fsub fast float %2488, %2484
  %2498 = fsub fast float %2489, %2485
  %2499 = fsub fast float %2490, %2486
  %2500 = fmul fast float %2496, %2497
  %2501 = fmul fast float %2496, %2498
  %2502 = fmul fast float %2496, %2499
  %2503 = fadd fast float %2500, %2484
  %2504 = fadd fast float %2501, %2485
  %2505 = fadd fast float %2502, %2486
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2508 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %2509 = fadd fast float %2508, %2507
  %2510 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2506, 2
  %2512 = extractvalue %dx.types.CBufRet.f32 %2506, 3
  %2513 = fadd fast float %2512, %2511
  %2514 = call float @dx.op.unary.f32(i32 7, float %2513)  ; Saturate(value)
  %2515 = fmul fast float %2510, %2494
  %2516 = fmul fast float %2515, %2514
  br label %2599

; <label>:2517                                    ; preds = %2453
  %2518 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %2477
  %2519 = load float, float* %2518, align 4, !tbaa !49, !noalias !111
  %2520 = fcmp fast olt float %2519, %2384
  %2521 = icmp sgt i32 %2460, 0
  %2522 = and i1 %2521, %2520
  br i1 %2522, label %2523, label %2560

; <label>:2523                                    ; preds = %2517
  br label %2524

; <label>:2524                                    ; preds = %2553, %2523
  %2525 = phi float [ %2554, %2553 ], [ %2382, %2523 ]
  %2526 = phi float [ %2555, %2553 ], [ %2383, %2523 ]
  %2527 = phi float [ %2535, %2553 ], [ %2519, %2523 ]
  %2528 = phi i32 [ %2532, %2553 ], [ %2477, %2523 ]
  %2529 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %2528
  %2530 = load float, float* %2529, align 4, !tbaa !49, !noalias !111
  %2531 = icmp slt i32 %2528, 2
  %2532 = add nsw i32 %2528, 1
  %2533 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %2532
  %2534 = load float, float* %2533, align 4, !tbaa !49, !noalias !111
  %2535 = select i1 %2531, float %2534, float %2298
  %2536 = call float @dx.op.binary.f32(i32 36, float %2535, float %2530)  ; FMin(a,b)
  %2537 = call float @dx.op.binary.f32(i32 36, float %2384, float %2536)  ; FMin(a,b)
  %2538 = icmp eq i32 %2248, 0
  %2539 = fadd fast float %2537, %2527
  %2540 = fmul fast float %2539, %2229
  %2541 = fadd fast float %2540, %2242
  br i1 %2538, label %2547, label %2542, !dx.controlflow.hints !139

; <label>:2542                                    ; preds = %2524
  %2543 = fsub fast float %2537, %2527
  %2544 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2543)  ; FMax(a,b)
  %2545 = fmul fast float %2544, %2541
  %2546 = fadd fast float %2545, %2526
  br label %2553

; <label>:2547                                    ; preds = %2524
  %2548 = fsub fast float %2527, %2537
  %2549 = call float @dx.op.unary.f32(i32 6, float %2548)  ; FAbs(value)
  %2550 = fadd fast float %2549, %2525
  %2551 = fmul fast float %2549, %2541
  %2552 = fsub fast float %2526, %2551
  br label %2553

; <label>:2553                                    ; preds = %2547, %2542
  %2554 = phi float [ %2544, %2542 ], [ %2550, %2547 ]
  %2555 = phi float [ %2546, %2542 ], [ %2552, %2547 ]
  %2556 = fcmp fast olt float %2535, %2384
  %2557 = icmp slt i32 %2532, 3
  %2558 = and i1 %2557, %2556
  br i1 %2558, label %2524, label %2559

; <label>:2559                                    ; preds = %2553
  br label %2560

; <label>:2560                                    ; preds = %2559, %2517
  %2561 = phi float [ %2382, %2517 ], [ %2554, %2559 ]
  %2562 = phi float [ %2383, %2517 ], [ %2555, %2559 ]
  %2563 = fsub fast float %2298, %2561
  %2564 = select i1 %2300, float %2561, float %2563
  %2565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.f32 %2565, 0
  %2567 = extractvalue %dx.types.CBufRet.f32 %2565, 1
  %2568 = extractvalue %dx.types.CBufRet.f32 %2565, 2
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.CBufRet.f32 %2569, 1
  %2572 = extractvalue %dx.types.CBufRet.f32 %2569, 2
  %2573 = extractvalue %dx.types.CBufRet.f32 %2569, 3
  %2574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2575 = extractvalue %dx.types.CBufRet.f32 %2574, 3
  %2576 = call float @dx.op.binary.f32(i32 36, float %2562, float %2575)  ; FMin(a,b)
  %2577 = fmul fast float %2573, %2564
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = fsub fast float %2570, %2566
  %2580 = fsub fast float %2571, %2567
  %2581 = fsub fast float %2572, %2568
  %2582 = fmul fast float %2578, %2579
  %2583 = fmul fast float %2578, %2580
  %2584 = fmul fast float %2578, %2581
  %2585 = fadd fast float %2582, %2566
  %2586 = fadd fast float %2583, %2567
  %2587 = fadd fast float %2584, %2568
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 0
  %2590 = extractvalue %dx.types.CBufRet.f32 %2588, 1
  %2591 = fadd fast float %2590, %2589
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2588, 2
  %2594 = extractvalue %dx.types.CBufRet.f32 %2588, 3
  %2595 = fadd fast float %2594, %2593
  %2596 = call float @dx.op.unary.f32(i32 7, float %2595)  ; Saturate(value)
  %2597 = fmul fast float %2592, %2576
  %2598 = fmul fast float %2597, %2596
  br label %2599

; <label>:2599                                    ; preds = %2560, %2479, %2314, %2296, %2294
  %2600 = phi float [ %2323, %2314 ], [ %2482, %2479 ], [ %2564, %2560 ], [ 0.000000e+00, %2294 ], [ 0.000000e+00, %2296 ]
  %2601 = phi float [ %2357, %2314 ], [ %2516, %2479 ], [ %2598, %2560 ], [ 0.000000e+00, %2294 ], [ 0.000000e+00, %2296 ]
  %2602 = phi float [ %2344, %2314 ], [ %2503, %2479 ], [ %2585, %2560 ], [ 0.000000e+00, %2294 ], [ 0.000000e+00, %2296 ]
  %2603 = phi float [ %2345, %2314 ], [ %2504, %2479 ], [ %2586, %2560 ], [ 0.000000e+00, %2294 ], [ 0.000000e+00, %2296 ]
  %2604 = phi float [ %2346, %2314 ], [ %2505, %2479 ], [ %2587, %2560 ], [ 0.000000e+00, %2294 ], [ 0.000000e+00, %2296 ]
  %2605 = fmul fast float %2237, %2601
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 2
  %2608 = fsub fast float %2244, %2607
  %2609 = fcmp fast olt float %2605, -2.000000e+01
  %2610 = call float @dx.op.unary.f32(i32 21, float %2605)  ; Exp(value)
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 2
  %2613 = extractvalue %dx.types.CBufRet.f32 %2611, 3
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 2
  %2616 = fmul fast float %2613, %2608
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2618 = fsub fast float 1.000000e+00, %2617
  %2619 = fmul fast float %2229, 5.000000e-01
  %2620 = fadd fast float %2619, 5.000000e-01
  %2621 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  %2622 = fsub fast float 1.000000e+00, %2621
  %2623 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2618)  ; FMax(a,b)
  %2624 = fdiv fast float %2622, %2623
  %2625 = fsub fast float %2608, %178
  %2626 = call float @dx.op.unary.f32(i32 6, float %2625)  ; FAbs(value)
  %2627 = fmul fast float %2626, %2612
  %2628 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  %2629 = fsub fast float 1.000000e+00, %2627
  %2630 = fmul fast float %2629, %2628
  %2631 = fadd fast float %2630, %2627
  %2632 = fmul fast float %2615, %2608
  %2633 = call float @dx.op.unary.f32(i32 7, float %2632)  ; Saturate(value)
  %2634 = fsub fast float 1.000000e+00, %2631
  %2635 = fmul fast float %2634, %2633
  %2636 = fadd fast float %2635, %2631
  %2637 = call float @dx.op.unary.f32(i32 7, float %2636)  ; Saturate(value)
  %2638 = fadd fast float %2610, -1.000000e+00
  %2639 = select i1 %2609, float -1.000000e+00, float %2638
  %2640 = fmul fast float %2637, %2639
  %2641 = fadd fast float %2640, 1.000000e+00
  %2642 = fsub fast float -0.000000e+00, %2640
  %2643 = fmul fast float %2602, %2642
  %2644 = fmul fast float %2603, %2642
  %2645 = fmul fast float %2604, %2642
  br label %2646

; <label>:2646                                    ; preds = %2599, %2195
  %2647 = phi float [ %2600, %2599 ], [ 0.000000e+00, %2195 ]
  %2648 = phi float [ %2641, %2599 ], [ 1.000000e+00, %2195 ]
  %2649 = phi float [ %2643, %2599 ], [ 0.000000e+00, %2195 ]
  %2650 = phi float [ %2644, %2599 ], [ 0.000000e+00, %2195 ]
  %2651 = phi float [ %2645, %2599 ], [ 0.000000e+00, %2195 ]
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 1
  %2654 = fsub fast float 1.000000e+00, %2648
  %2655 = fmul fast float %2654, %2230
  %2656 = fmul fast float %2655, %2653
  %2657 = fsub fast float %2230, %2656
  br i1 %2223, label %2658, label %2687, !dx.controlflow.hints !140

; <label>:2658                                    ; preds = %2646
  %2659 = fmul fast float %2231, %2220
  %2660 = fadd fast float %2659, %2221
  %2661 = call float @dx.op.unary.f32(i32 7, float %2660)  ; Saturate(value)
  %2662 = fmul fast float %2202, %2657
  %2663 = fsub fast float -0.000000e+00, %2662
  %2664 = fmul fast float %2203, %2657
  %2665 = fsub fast float -0.000000e+00, %2664
  %2666 = call float @dx.op.unary.f32(i32 21, float %2663)  ; Exp(value)
  %2667 = call float @dx.op.unary.f32(i32 21, float %2665)  ; Exp(value)
  %2668 = call float @dx.op.binary.f32(i32 35, float %2210, float %2666)  ; FMax(a,b)
  %2669 = call float @dx.op.binary.f32(i32 35, float %2210, float %2667)  ; FMax(a,b)
  %2670 = fsub fast float %2669, %2668
  %2671 = fmul fast float %2670, %2661
  %2672 = fadd fast float %2671, %2668
  %2673 = call float @dx.op.unary.f32(i32 7, float %2672)  ; Saturate(value)
  %2674 = fsub fast float %2207, %2212
  %2675 = fsub fast float %2208, %2213
  %2676 = fsub fast float %2209, %2214
  %2677 = fmul fast float %2661, %2674
  %2678 = fmul fast float %2661, %2675
  %2679 = fmul fast float %2661, %2676
  %2680 = fadd fast float %2677, %2212
  %2681 = fadd fast float %2678, %2213
  %2682 = fadd fast float %2679, %2214
  %2683 = fsub fast float 1.000000e+00, %2673
  %2684 = fmul fast float %2683, %2680
  %2685 = fmul fast float %2683, %2681
  %2686 = fmul fast float %2683, %2682
  br label %2746

; <label>:2687                                    ; preds = %2646
  %2688 = fmul fast float %2657, %2219
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2690 = fsub fast float 2.000000e+00, %2689
  %2691 = fmul fast float %2689, 9.921875e-01
  %2692 = fmul fast float %2691, %2690
  %2693 = fadd fast float %2692, 3.906250e-03
  %2694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %31, float %2693, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2695 = extractvalue %dx.types.ResRet.f32 %2694, 0
  %2696 = fsub fast float %2689, %2695
  %2697 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2696)  ; FMax(a,b)
  %2698 = fmul fast float %2205, %178
  %2699 = call float @dx.op.unary.f32(i32 6, float %2698)  ; FAbs(value)
  %2700 = fcmp fast ogt float %2699, 0x3EB0C6F7A0000000
  br i1 %2700, label %2701, label %2707, !dx.controlflow.hints !141

; <label>:2701                                    ; preds = %2687
  %2702 = fmul fast float %2698, 0xBFF7154760000000
  %2703 = call float @dx.op.unary.f32(i32 21, float %2702)  ; Exp(value)
  %2704 = fsub fast float 1.000000e+00, %2703
  %2705 = fdiv fast float %2704, %2698
  %2706 = fmul fast float %2705, %2215
  br label %2707

; <label>:2707                                    ; preds = %2701, %2687
  %2708 = phi float [ %2706, %2701 ], [ %2215, %2687 ]
  %2709 = fadd fast float %2708, %2217
  %2710 = fmul fast float %2709, %2697
  %2711 = fmul fast float %2202, %2710
  %2712 = fsub fast float -0.000000e+00, %2711
  %2713 = fmul fast float %2203, %2710
  %2714 = fsub fast float -0.000000e+00, %2713
  %2715 = fmul fast float %2204, %2710
  %2716 = fsub fast float -0.000000e+00, %2715
  %2717 = call float @dx.op.unary.f32(i32 21, float %2712)  ; Exp(value)
  %2718 = call float @dx.op.unary.f32(i32 21, float %2714)  ; Exp(value)
  %2719 = call float @dx.op.unary.f32(i32 21, float %2716)  ; Exp(value)
  %2720 = fmul fast float %2231, %2231
  %2721 = fadd fast float %2720, 1.000000e+00
  %2722 = fmul fast float %2721, 0x3FAE8EC8A0000000
  %2723 = fmul fast float %2722, %2212
  %2724 = fmul fast float %2722, %2213
  %2725 = fmul fast float %2722, %2214
  %2726 = fmul fast float %2231, %2210
  %2727 = fsub fast float 1.000000e+00, %2726
  %2728 = fmul fast float %2210, %2210
  %2729 = fsub fast float 1.000000e+00, %2728
  %2730 = fmul fast float %2729, 0x3FB45F3060000000
  %2731 = fmul fast float %2727, %2727
  %2732 = fdiv fast float 1.000000e+00, %2731
  %2733 = fmul fast float %2730, %2732
  %2734 = fmul fast float %2733, %2207
  %2735 = fmul fast float %2733, %2208
  %2736 = fmul fast float %2733, %2209
  %2737 = fadd fast float %2734, %2723
  %2738 = fadd fast float %2735, %2724
  %2739 = fadd fast float %2736, %2725
  %2740 = fsub fast float 1.000000e+00, %2717
  %2741 = fsub fast float 1.000000e+00, %2718
  %2742 = fsub fast float 1.000000e+00, %2719
  %2743 = fmul fast float %2737, %2740
  %2744 = fmul fast float %2738, %2741
  %2745 = fmul fast float %2739, %2742
  br label %2746

; <label>:2746                                    ; preds = %2707, %2658
  %2747 = phi float [ %2684, %2658 ], [ %2743, %2707 ]
  %2748 = phi float [ %2685, %2658 ], [ %2744, %2707 ]
  %2749 = phi float [ %2686, %2658 ], [ %2745, %2707 ]
  %2750 = phi float [ %2673, %2658 ], [ %2717, %2707 ]
  %2751 = phi float [ %2673, %2658 ], [ %2718, %2707 ]
  %2752 = phi float [ %2673, %2658 ], [ %2719, %2707 ]
  br i1 %2239, label %2753, label %2951, !dx.controlflow.hints !142

; <label>:2753                                    ; preds = %2746
  %2754 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2755 = fmul fast float %2754, %2654
  %2756 = fsub fast float %2649, %2747
  %2757 = fsub fast float %2650, %2748
  %2758 = fsub fast float %2651, %2749
  %2759 = fmul fast float %2755, %2756
  %2760 = fmul fast float %2755, %2757
  %2761 = fmul fast float %2755, %2758
  %2762 = fadd fast float %2759, %2747
  %2763 = fadd fast float %2760, %2748
  %2764 = fadd fast float %2761, %2749
  %2765 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2750)  ; FMax(a,b)
  %2766 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2751)  ; FMax(a,b)
  %2767 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2752)  ; FMax(a,b)
  %2768 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2648)  ; FMax(a,b)
  %2769 = call float @dx.op.binary.f32(i32 35, float %2647, float %2657)  ; FMax(a,b)
  %2770 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2769)  ; FMax(a,b)
  %2771 = fdiv fast float %2647, %2770
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2773 = fdiv fast float %2657, %2770
  %2774 = call float @dx.op.unary.f32(i32 7, float %2773)  ; Saturate(value)
  %2775 = fcmp fast une float %2768, 1.000000e+00
  br i1 %2775, label %2776, label %2789, !dx.controlflow.hints !143

; <label>:2776                                    ; preds = %2753
  %2777 = call float @dx.op.unary.f32(i32 23, float %2768)  ; Log(value)
  %2778 = fmul fast float %2777, 0x3FE62E4300000000
  %2779 = fmul fast float %2649, %2778
  %2780 = fsub fast float -0.000000e+00, %2779
  %2781 = fmul fast float %2650, %2778
  %2782 = fsub fast float -0.000000e+00, %2781
  %2783 = fmul fast float %2651, %2778
  %2784 = fsub fast float -0.000000e+00, %2783
  %2785 = fsub fast float 1.000000e+00, %2768
  %2786 = fdiv fast float %2780, %2785
  %2787 = fdiv fast float %2782, %2785
  %2788 = fdiv fast float %2784, %2785
  br label %2789

; <label>:2789                                    ; preds = %2776, %2753
  %2790 = phi float [ %2786, %2776 ], [ %2649, %2753 ]
  %2791 = phi float [ %2787, %2776 ], [ %2650, %2753 ]
  %2792 = phi float [ %2788, %2776 ], [ %2651, %2753 ]
  %2793 = phi float [ %2778, %2776 ], [ 0.000000e+00, %2753 ]
  %2794 = fcmp fast une float %2765, 1.000000e+00
  br i1 %2794, label %2795, label %2802, !dx.controlflow.hints !144

; <label>:2795                                    ; preds = %2789
  %2796 = call float @dx.op.unary.f32(i32 23, float %2765)  ; Log(value)
  %2797 = fmul fast float %2796, 0x3FE62E4300000000
  %2798 = fmul fast float %2762, %2797
  %2799 = fsub fast float -0.000000e+00, %2798
  %2800 = fsub fast float 1.000000e+00, %2765
  %2801 = fdiv fast float %2799, %2800
  br label %2802

; <label>:2802                                    ; preds = %2795, %2789
  %2803 = phi float [ %2801, %2795 ], [ %2762, %2789 ]
  %2804 = phi float [ %2797, %2795 ], [ 0.000000e+00, %2789 ]
  %2805 = fcmp fast une float %2766, 1.000000e+00
  br i1 %2805, label %2806, label %2813, !dx.controlflow.hints !144

; <label>:2806                                    ; preds = %2802
  %2807 = call float @dx.op.unary.f32(i32 23, float %2766)  ; Log(value)
  %2808 = fmul fast float %2807, 0x3FE62E4300000000
  %2809 = fmul fast float %2763, %2808
  %2810 = fsub fast float -0.000000e+00, %2809
  %2811 = fsub fast float 1.000000e+00, %2766
  %2812 = fdiv fast float %2810, %2811
  br label %2813

; <label>:2813                                    ; preds = %2806, %2802
  %2814 = phi float [ %2812, %2806 ], [ %2763, %2802 ]
  %2815 = phi float [ %2808, %2806 ], [ 0.000000e+00, %2802 ]
  %2816 = fcmp fast une float %2767, 1.000000e+00
  br i1 %2816, label %2817, label %2824, !dx.controlflow.hints !144

; <label>:2817                                    ; preds = %2813
  %2818 = call float @dx.op.unary.f32(i32 23, float %2767)  ; Log(value)
  %2819 = fmul fast float %2818, 0x3FE62E4300000000
  %2820 = fmul fast float %2764, %2819
  %2821 = fsub fast float -0.000000e+00, %2820
  %2822 = fsub fast float 1.000000e+00, %2767
  %2823 = fdiv fast float %2821, %2822
  br label %2824

; <label>:2824                                    ; preds = %2817, %2813
  %2825 = phi float [ %2823, %2817 ], [ %2764, %2813 ]
  %2826 = phi float [ %2819, %2817 ], [ 0.000000e+00, %2813 ]
  %2827 = fmul fast float %2790, %2774
  %2828 = fmul fast float %2791, %2774
  %2829 = fmul fast float %2792, %2774
  %2830 = fmul fast float %2793, %2774
  %2831 = fmul fast float %2803, %2772
  %2832 = fmul fast float %2814, %2772
  %2833 = fmul fast float %2825, %2772
  %2834 = fmul fast float %2804, %2772
  %2835 = fmul fast float %2815, %2772
  %2836 = fmul fast float %2826, %2772
  %2837 = fadd fast float %2831, %2827
  %2838 = fadd fast float %2832, %2828
  %2839 = fadd fast float %2833, %2829
  %2840 = fadd fast float %2834, %2830
  %2841 = fadd fast float %2835, %2830
  %2842 = fadd fast float %2836, %2830
  %2843 = fcmp fast une float %2840, 0.000000e+00
  br i1 %2843, label %2844, label %2851, !dx.controlflow.hints !145

; <label>:2844                                    ; preds = %2824
  %2845 = fmul fast float %2840, 0x3FF7154760000000
  %2846 = call float @dx.op.unary.f32(i32 21, float %2845)  ; Exp(value)
  %2847 = fsub fast float 1.000000e+00, %2846
  %2848 = fmul fast float %2837, %2847
  %2849 = fsub fast float -0.000000e+00, %2848
  %2850 = fdiv fast float %2849, %2840
  br label %2851

; <label>:2851                                    ; preds = %2844, %2824
  %2852 = phi float [ %2846, %2844 ], [ 1.000000e+00, %2824 ]
  %2853 = phi float [ %2850, %2844 ], [ %2837, %2824 ]
  %2854 = fcmp fast une float %2841, 0.000000e+00
  br i1 %2854, label %2855, label %2862, !dx.controlflow.hints !145

; <label>:2855                                    ; preds = %2851
  %2856 = fmul fast float %2841, 0x3FF7154760000000
  %2857 = call float @dx.op.unary.f32(i32 21, float %2856)  ; Exp(value)
  %2858 = fsub fast float 1.000000e+00, %2857
  %2859 = fmul fast float %2838, %2858
  %2860 = fsub fast float -0.000000e+00, %2859
  %2861 = fdiv fast float %2860, %2841
  br label %2862

; <label>:2862                                    ; preds = %2855, %2851
  %2863 = phi float [ %2857, %2855 ], [ 1.000000e+00, %2851 ]
  %2864 = phi float [ %2861, %2855 ], [ %2838, %2851 ]
  %2865 = fcmp fast une float %2842, 0.000000e+00
  br i1 %2865, label %2866, label %2873, !dx.controlflow.hints !145

; <label>:2866                                    ; preds = %2862
  %2867 = fmul fast float %2842, 0x3FF7154760000000
  %2868 = call float @dx.op.unary.f32(i32 21, float %2867)  ; Exp(value)
  %2869 = fsub fast float 1.000000e+00, %2868
  %2870 = fmul fast float %2839, %2869
  %2871 = fsub fast float -0.000000e+00, %2870
  %2872 = fdiv fast float %2871, %2842
  br label %2873

; <label>:2873                                    ; preds = %2866, %2862
  %2874 = phi float [ %2868, %2866 ], [ 1.000000e+00, %2862 ]
  %2875 = phi float [ %2872, %2866 ], [ %2839, %2862 ]
  %2876 = fcmp fast ogt float %2772, %2774
  br i1 %2876, label %2877, label %2897, !dx.controlflow.hints !146

; <label>:2877                                    ; preds = %2873
  %2878 = fsub fast float 1.000000e+00, %2774
  %2879 = fmul fast float %2790, %2878
  %2880 = fmul fast float %2791, %2878
  %2881 = fmul fast float %2792, %2878
  %2882 = fmul fast float %2793, %2878
  %2883 = fcmp fast une float %2882, 0.000000e+00
  br i1 %2883, label %2884, label %2935, !dx.controlflow.hints !147

; <label>:2884                                    ; preds = %2877
  %2885 = fmul fast float %2882, 0x3FF7154760000000
  %2886 = call float @dx.op.unary.f32(i32 21, float %2885)  ; Exp(value)
  %2887 = fsub fast float 1.000000e+00, %2886
  %2888 = fmul fast float %2879, %2887
  %2889 = fsub fast float -0.000000e+00, %2888
  %2890 = fmul fast float %2880, %2887
  %2891 = fsub fast float -0.000000e+00, %2890
  %2892 = fmul fast float %2881, %2887
  %2893 = fsub fast float -0.000000e+00, %2892
  %2894 = fdiv fast float %2889, %2882
  %2895 = fdiv fast float %2891, %2882
  %2896 = fdiv fast float %2893, %2882
  br label %2935

; <label>:2897                                    ; preds = %2873
  %2898 = fsub fast float 1.000000e+00, %2772
  %2899 = fmul fast float %2803, %2898
  %2900 = fmul fast float %2814, %2898
  %2901 = fmul fast float %2825, %2898
  %2902 = fmul fast float %2804, %2898
  %2903 = fmul fast float %2815, %2898
  %2904 = fmul fast float %2826, %2898
  %2905 = fcmp fast une float %2902, 0.000000e+00
  br i1 %2905, label %2906, label %2913, !dx.controlflow.hints !145

; <label>:2906                                    ; preds = %2897
  %2907 = fmul fast float %2902, 0x3FF7154760000000
  %2908 = call float @dx.op.unary.f32(i32 21, float %2907)  ; Exp(value)
  %2909 = fsub fast float 1.000000e+00, %2908
  %2910 = fmul fast float %2899, %2909
  %2911 = fsub fast float -0.000000e+00, %2910
  %2912 = fdiv fast float %2911, %2902
  br label %2913

; <label>:2913                                    ; preds = %2906, %2897
  %2914 = phi float [ %2912, %2906 ], [ %2899, %2897 ]
  %2915 = phi float [ %2908, %2906 ], [ 1.000000e+00, %2897 ]
  %2916 = fcmp fast une float %2903, 0.000000e+00
  br i1 %2916, label %2917, label %2924, !dx.controlflow.hints !145

; <label>:2917                                    ; preds = %2913
  %2918 = fmul fast float %2903, 0x3FF7154760000000
  %2919 = call float @dx.op.unary.f32(i32 21, float %2918)  ; Exp(value)
  %2920 = fsub fast float 1.000000e+00, %2919
  %2921 = fmul fast float %2900, %2920
  %2922 = fsub fast float -0.000000e+00, %2921
  %2923 = fdiv fast float %2922, %2903
  br label %2924

; <label>:2924                                    ; preds = %2917, %2913
  %2925 = phi float [ %2923, %2917 ], [ %2900, %2913 ]
  %2926 = phi float [ %2919, %2917 ], [ 1.000000e+00, %2913 ]
  %2927 = fcmp fast une float %2904, 0.000000e+00
  br i1 %2927, label %2928, label %2935, !dx.controlflow.hints !145

; <label>:2928                                    ; preds = %2924
  %2929 = fmul fast float %2904, 0x3FF7154760000000
  %2930 = call float @dx.op.unary.f32(i32 21, float %2929)  ; Exp(value)
  %2931 = fsub fast float 1.000000e+00, %2930
  %2932 = fmul fast float %2901, %2931
  %2933 = fsub fast float -0.000000e+00, %2932
  %2934 = fdiv fast float %2933, %2904
  br label %2935

; <label>:2935                                    ; preds = %2928, %2924, %2884, %2877
  %2936 = phi float [ %2934, %2928 ], [ %2896, %2884 ], [ %2881, %2877 ], [ %2901, %2924 ]
  %2937 = phi float [ %2925, %2928 ], [ %2895, %2884 ], [ %2880, %2877 ], [ %2925, %2924 ]
  %2938 = phi float [ %2914, %2928 ], [ %2894, %2884 ], [ %2879, %2877 ], [ %2914, %2924 ]
  %2939 = phi float [ %2930, %2928 ], [ %2886, %2884 ], [ 1.000000e+00, %2877 ], [ 1.000000e+00, %2924 ]
  %2940 = phi float [ %2926, %2928 ], [ %2886, %2884 ], [ 1.000000e+00, %2877 ], [ %2926, %2924 ]
  %2941 = phi float [ %2915, %2928 ], [ %2886, %2884 ], [ 1.000000e+00, %2877 ], [ %2915, %2924 ]
  %2942 = fmul fast float %2941, %2853
  %2943 = fmul fast float %2940, %2864
  %2944 = fmul fast float %2939, %2875
  %2945 = fadd fast float %2942, %2938
  %2946 = fadd fast float %2943, %2937
  %2947 = fadd fast float %2944, %2936
  %2948 = fmul fast float %2941, %2852
  %2949 = fmul fast float %2940, %2863
  %2950 = fmul fast float %2939, %2874
  br label %2951

; <label>:2951                                    ; preds = %2935, %2746
  %2952 = phi float [ %2950, %2935 ], [ %2752, %2746 ]
  %2953 = phi float [ %2949, %2935 ], [ %2751, %2746 ]
  %2954 = phi float [ %2948, %2935 ], [ %2750, %2746 ]
  %2955 = phi float [ %2947, %2935 ], [ %2749, %2746 ]
  %2956 = phi float [ %2946, %2935 ], [ %2748, %2746 ]
  %2957 = phi float [ %2945, %2935 ], [ %2747, %2746 ]
  %2958 = fmul fast float %2954, %2192
  %2959 = fmul fast float %2953, %2193
  %2960 = fmul fast float %2952, %2194
  %2961 = fmul fast float %2189, 0xBFF7154760000000
  %2962 = fmul fast float %2190, 0xBFF7154760000000
  %2963 = fmul fast float %2191, 0xBFF7154760000000
  %2964 = call float @dx.op.unary.f32(i32 21, float %2961)  ; Exp(value)
  %2965 = call float @dx.op.unary.f32(i32 21, float %2962)  ; Exp(value)
  %2966 = call float @dx.op.unary.f32(i32 21, float %2963)  ; Exp(value)
  %2967 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2968 = call float @dx.op.unary.f32(i32 7, float %2965)  ; Saturate(value)
  %2969 = call float @dx.op.unary.f32(i32 7, float %2966)  ; Saturate(value)
  %2970 = fsub fast float 1.000000e+00, %2967
  %2971 = fsub fast float 1.000000e+00, %2968
  %2972 = fsub fast float 1.000000e+00, %2969
  %2973 = fmul fast float %2970, %2957
  %2974 = fmul fast float %2971, %2956
  %2975 = fmul fast float %2972, %2955
  %2976 = fadd fast float %2973, %2958
  %2977 = fadd fast float %2974, %2959
  %2978 = fadd fast float %2975, %2960
  br label %2979

; <label>:2979                                    ; preds = %2951, %2179
  %2980 = phi float [ %2976, %2951 ], [ %2192, %2179 ]
  %2981 = phi float [ %2977, %2951 ], [ %2193, %2179 ]
  %2982 = phi float [ %2978, %2951 ], [ %2194, %2179 ]
  %2983 = xor i1 %232, true
  %2984 = and i1 %73, %2983
  %2985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %2986 = extractvalue %dx.types.CBufRet.f32 %2985, 0
  %2987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2988 = extractvalue %dx.types.CBufRet.f32 %2987, 0
  %2989 = select i1 %196, float %2986, float %2988
  %2990 = fmul fast float %2989, %2980
  %2991 = fmul fast float %2989, %2981
  %2992 = fmul fast float %2989, %2982
  %2993 = fmul fast float %2991, 5.000000e-01
  %2994 = fadd fast float %2982, %2980
  %2995 = fmul fast float %2989, %2994
  %2996 = fmul fast float %2995, 2.500000e-01
  %2997 = fadd fast float %2996, %2993
  %2998 = call float @dx.op.unary.f32(i32 23, float %2997)  ; Log(value)
  %2999 = fmul fast float %2998, 0x3FE62E4300000000
  %3000 = fmul fast float %2999, %2999
  %3001 = select i1 %2984, float 1.000000e+00, float 0.000000e+00
  store float %3001, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  %3002 = fmul fast float %2999, %3001
  store float %3002, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  %3003 = fmul fast float %3000, %3001
  store float %3003, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3004 = load float, float addrspace(3)* %243, align 4, !tbaa !49, !noalias !53
  %3005 = fadd fast float %3004, %3001
  %3006 = load float, float addrspace(3)* %246, align 4, !tbaa !49, !noalias !53
  %3007 = fadd fast float %3006, %2999
  %3008 = load float, float addrspace(3)* %249, align 4, !tbaa !49, !noalias !53
  %3009 = fadd fast float %3008, %3000
  store float %3005, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  store float %3007, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  store float %3009, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3010 = load float, float addrspace(3)* %253, align 4, !tbaa !49, !noalias !53
  %3011 = fadd fast float %3010, %3005
  %3012 = load float, float addrspace(3)* %256, align 4, !tbaa !49, !noalias !53
  %3013 = fadd fast float %3012, %3007
  %3014 = load float, float addrspace(3)* %259, align 4, !tbaa !49, !noalias !53
  %3015 = fadd fast float %3014, %3009
  store float %3011, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  store float %3013, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  store float %3015, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3016 = load float, float addrspace(3)* %263, align 4, !tbaa !49, !noalias !53
  %3017 = fadd fast float %3016, %3011
  %3018 = load float, float addrspace(3)* %266, align 4, !tbaa !49, !noalias !53
  %3019 = fadd fast float %3018, %3013
  %3020 = fdiv fast float %3019, %3017
  %3021 = and i1 %2984, %273
  br i1 %3021, label %3022, label %3030, !dx.controlflow.hints !57

; <label>:3022                                    ; preds = %2979
  %3023 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %262
  %3024 = load float, float addrspace(3)* %3023, align 4, !tbaa !49, !noalias !53
  %3025 = fadd fast float %3024, %3015
  %3026 = fdiv fast float %3025, %3017
  %3027 = lshr i32 %61, 1
  %3028 = lshr i32 %62, 1
  %3029 = lshr i32 %231, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3027, i32 %3028, i32 %3029, float %3020, float %3026, float %3020, float %3020, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3030

; <label>:3030                                    ; preds = %3022, %2979
  br i1 %2984, label %3031, label %3065, !dx.controlflow.hints !58

; <label>:3031                                    ; preds = %3030
  %3032 = fadd fast float %111, 0x3FE3C6EF40000000
  %3033 = call float @dx.op.unary.f32(i32 22, float %3032)  ; Frc(value)
  %3034 = call float @dx.op.unary.f32(i32 23, float %2990)  ; Log(value)
  %3035 = fadd fast float %3034, -7.000000e+00
  %3036 = call float @dx.op.unary.f32(i32 21, float %3035)  ; Exp(value)
  %3037 = fmul fast float %3033, 2.000000e+00
  %3038 = fadd fast float %3037, -1.000000e+00
  %3039 = fmul fast float %3036, %3038
  %3040 = fcmp fast ogt float %2990, 0.000000e+00
  %3041 = select i1 %3040, float %3039, float 0.000000e+00
  %3042 = fadd fast float %3041, %2990
  %3043 = fadd fast float %111, 0x3FF3C6EF40000000
  %3044 = call float @dx.op.unary.f32(i32 22, float %3043)  ; Frc(value)
  %3045 = call float @dx.op.unary.f32(i32 23, float %2991)  ; Log(value)
  %3046 = fadd fast float %3045, -7.000000e+00
  %3047 = call float @dx.op.unary.f32(i32 21, float %3046)  ; Exp(value)
  %3048 = fmul fast float %3044, 2.000000e+00
  %3049 = fadd fast float %3048, -1.000000e+00
  %3050 = fmul fast float %3047, %3049
  %3051 = fcmp fast ogt float %2991, 0.000000e+00
  %3052 = select i1 %3051, float %3050, float 0.000000e+00
  %3053 = fadd fast float %3052, %2991
  %3054 = fadd fast float %111, 0x3FFDAA66E0000000
  %3055 = call float @dx.op.unary.f32(i32 22, float %3054)  ; Frc(value)
  %3056 = call float @dx.op.unary.f32(i32 23, float %2992)  ; Log(value)
  %3057 = fadd fast float %3056, -6.000000e+00
  %3058 = call float @dx.op.unary.f32(i32 21, float %3057)  ; Exp(value)
  %3059 = fmul fast float %3055, 2.000000e+00
  %3060 = fadd fast float %3059, -1.000000e+00
  %3061 = fmul fast float %3058, %3060
  %3062 = fcmp fast ogt float %2992, 0.000000e+00
  %3063 = select i1 %3062, float %3061, float 0.000000e+00
  %3064 = fadd fast float %3063, %2992
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %61, i32 %62, i32 %231, float %3042, float %3053, float %3064, float %3042, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3065

; <label>:3065                                    ; preds = %3031, %3030
  %3066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %3067 = extractvalue %dx.types.CBufRet.f32 %3066, 0
  %3068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %3069 = extractvalue %dx.types.CBufRet.f32 %3068, 0
  %3070 = select i1 %196, float %3067, float %3069
  %3071 = fmul fast float %3070, %2189
  %3072 = fmul fast float %3070, %2190
  %3073 = fmul fast float %3070, %2191
  %3074 = fmul fast float %3072, 5.000000e-01
  %3075 = fadd fast float %2191, %2189
  %3076 = fmul fast float %3070, %3075
  %3077 = fmul fast float %3076, 2.500000e-01
  %3078 = fadd fast float %3077, %3074
  %3079 = fmul fast float %3078, %3078
  store float %3001, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  %3080 = fmul fast float %3078, %3001
  store float %3080, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  %3081 = fmul fast float %3079, %3001
  store float %3081, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3082 = load float, float addrspace(3)* %243, align 4, !tbaa !49, !noalias !53
  %3083 = fadd fast float %3082, %3001
  %3084 = load float, float addrspace(3)* %246, align 4, !tbaa !49, !noalias !53
  %3085 = fadd fast float %3078, %3084
  %3086 = load float, float addrspace(3)* %249, align 4, !tbaa !49, !noalias !53
  %3087 = fadd fast float %3079, %3086
  store float %3083, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  store float %3085, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  store float %3087, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3088 = load float, float addrspace(3)* %253, align 4, !tbaa !49, !noalias !53
  %3089 = fadd fast float %3088, %3083
  %3090 = load float, float addrspace(3)* %256, align 4, !tbaa !49, !noalias !53
  %3091 = fadd fast float %3085, %3090
  %3092 = load float, float addrspace(3)* %259, align 4, !tbaa !49, !noalias !53
  %3093 = fadd fast float %3087, %3092
  store float %3089, float addrspace(3)* %237, align 4, !tbaa !49, !noalias !53
  store float %3091, float addrspace(3)* %239, align 4, !tbaa !49, !noalias !53
  store float %3093, float addrspace(3)* %241, align 4, !tbaa !49, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3094 = load float, float addrspace(3)* %263, align 4, !tbaa !49, !noalias !53
  %3095 = fadd fast float %3094, %3089
  %3096 = load float, float addrspace(3)* %266, align 4, !tbaa !49, !noalias !53
  %3097 = fadd fast float %3096, %3091
  %3098 = fdiv fast float %3097, %3095
  br i1 %3021, label %3099, label %3107, !dx.controlflow.hints !59

; <label>:3099                                    ; preds = %3065
  %3100 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %262
  %3101 = load float, float addrspace(3)* %3100, align 4, !tbaa !49, !noalias !53
  %3102 = fadd fast float %3101, %3093
  %3103 = fdiv fast float %3102, %3095
  %3104 = lshr i32 %61, 1
  %3105 = lshr i32 %62, 1
  %3106 = lshr i32 %231, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3104, i32 %3105, i32 %3106, float %3098, float %3103, float %3098, float %3098, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3107

; <label>:3107                                    ; preds = %3099, %3065
  br i1 %2984, label %3108, label %3142, !dx.controlflow.hints !60

; <label>:3108                                    ; preds = %3107
  %3109 = fadd fast float %111, 0x3FE3C6EF40000000
  %3110 = call float @dx.op.unary.f32(i32 22, float %3109)  ; Frc(value)
  %3111 = call float @dx.op.unary.f32(i32 23, float %3071)  ; Log(value)
  %3112 = fadd fast float %3111, -7.000000e+00
  %3113 = call float @dx.op.unary.f32(i32 21, float %3112)  ; Exp(value)
  %3114 = fmul fast float %3110, 2.000000e+00
  %3115 = fadd fast float %3114, -1.000000e+00
  %3116 = fmul fast float %3113, %3115
  %3117 = fcmp fast ogt float %3071, 0.000000e+00
  %3118 = select i1 %3117, float %3116, float 0.000000e+00
  %3119 = fadd fast float %3118, %3071
  %3120 = fadd fast float %111, 0x3FF3C6EF40000000
  %3121 = call float @dx.op.unary.f32(i32 22, float %3120)  ; Frc(value)
  %3122 = call float @dx.op.unary.f32(i32 23, float %3072)  ; Log(value)
  %3123 = fadd fast float %3122, -7.000000e+00
  %3124 = call float @dx.op.unary.f32(i32 21, float %3123)  ; Exp(value)
  %3125 = fmul fast float %3121, 2.000000e+00
  %3126 = fadd fast float %3125, -1.000000e+00
  %3127 = fmul fast float %3124, %3126
  %3128 = fcmp fast ogt float %3072, 0.000000e+00
  %3129 = select i1 %3128, float %3127, float 0.000000e+00
  %3130 = fadd fast float %3129, %3072
  %3131 = fadd fast float %111, 0x3FFDAA66E0000000
  %3132 = call float @dx.op.unary.f32(i32 22, float %3131)  ; Frc(value)
  %3133 = call float @dx.op.unary.f32(i32 23, float %3073)  ; Log(value)
  %3134 = fadd fast float %3133, -6.000000e+00
  %3135 = call float @dx.op.unary.f32(i32 21, float %3134)  ; Exp(value)
  %3136 = fmul fast float %3132, 2.000000e+00
  %3137 = fadd fast float %3136, -1.000000e+00
  %3138 = fmul fast float %3135, %3137
  %3139 = fcmp fast ogt float %3073, 0.000000e+00
  %3140 = select i1 %3139, float %3138, float 0.000000e+00
  %3141 = fadd fast float %3140, %3073
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %61, i32 %62, i32 %231, float %3119, float %3130, float %3141, float %3119, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3142

; <label>:3142                                    ; preds = %3108, %3107
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!dx.entryPoints = !{!46}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !33, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 4, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 24, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 25, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 37, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 39, i32 1, i32 12, i32 0, !23}
!23 = !{i32 1, i32 164}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 42, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!26 = !{i32 18, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !29}
!29 = !{i32 1, i32 80}
!30 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!31 = !{i32 22, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !32}
!32 = !{i32 1, i32 4}
!33 = !{!34, !35, !36, !37}
!34 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!35 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!36 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!37 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!41 = !{!42, !43, !44, !45}
!42 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!46 = !{void ()* @cs_volumetric_forwardplus_scatter_local_water_afog, !"cs_volumetric_forwardplus_scatter_local_water_afog", null, !4, !47}
!47 = !{i32 0, i64 272, i32 4, !48}
!48 = !{i32 4, i32 4, i32 4}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!54, !56}
!54 = distinct !{!54, !55, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!55 = distinct !{!55, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!56 = distinct !{!56, !55, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !82}
!99 = distinct !{!99, !82}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = !{!112, !114, !116, !54, !56}
!112 = distinct !{!112, !113, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!113 = distinct !{!113, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!114 = distinct !{!114, !115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!115 = distinct !{!115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!116 = distinct !{!116, !115, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = !{!119}
!119 = distinct !{!119, !120, !"\01?sort@@YAXAIAM00@Z: %c"}
!120 = distinct !{!120, !"\01?sort@@YAXAIAM00@Z"}
!121 = !{!122, !123, !112, !114, !116, !54, !56}
!122 = distinct !{!122, !120, !"\01?sort@@YAXAIAM00@Z: %a"}
!123 = distinct !{!123, !120, !"\01?sort@@YAXAIAM00@Z: %b"}
!124 = !{!123}
!125 = !{!122, !119, !112, !114, !116, !54, !56}
!126 = !{!122}
!127 = !{!123, !119, !112, !114, !116, !54, !56}
!128 = !{!129}
!129 = distinct !{!129, !130, !"\01?sort@@YAXAIAM00@Z: %c"}
!130 = distinct !{!130, !"\01?sort@@YAXAIAM00@Z"}
!131 = !{!132, !133, !112, !114, !116, !54, !56}
!132 = distinct !{!132, !130, !"\01?sort@@YAXAIAM00@Z: %a"}
!133 = distinct !{!133, !130, !"\01?sort@@YAXAIAM00@Z: %b"}
!134 = !{!133}
!135 = !{!132, !129, !112, !114, !116, !54, !56}
!136 = !{!132}
!137 = !{!133, !129, !112, !114, !116, !54, !56}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 2}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 2}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}

