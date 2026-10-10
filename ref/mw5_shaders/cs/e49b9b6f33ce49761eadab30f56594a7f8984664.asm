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
; shader hash: f15d125aa81e53a332bc4e278ca380e6
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
;                                   texture     f32          1d     T15            t54     1
;                                   texture     f32          3d     T16             t5     1
;                                   texture    byte         r/o     T17            t13     1
;                                   texture  struct         r/o     T18            t14     1
;                                   texture    byte         r/o     T19            t15     1
;                                   texture  struct         r/o     T20            t29     1
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

define void @cs_volumetric_forwardplus_scatter_local_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %33 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %34 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %35 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %36 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 3
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %43 = mul i32 %42, %40
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 1
  %46 = mul i32 %43, %45
  %47 = add i32 %46, %35
  %48 = shl i32 %47, 2
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %62 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.i32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.i32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.i32 %62, 2
  %66 = icmp uge i32 %59, %63
  %67 = icmp uge i32 %60, %64
  %68 = icmp uge i32 %61, %65
  %69 = or i1 %66, %67
  %70 = or i1 %68, %69
  %71 = xor i1 %70, true
  %72 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
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
  %110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %59, i32 %60, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fcmp fast ogt float %111, -1.000000e+00
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %115 = select i1 %112, float %114, float 1.000000e+00
  %116 = fadd fast float %111, 1.000000e+00
  %117 = fmul fast float %115, %116
  %118 = uitofp i32 %59 to float
  %119 = uitofp i32 %60 to float
  %120 = uitofp i32 %61 to float
  %121 = fadd fast float %120, -5.000000e-01
  %122 = fadd fast float %121, %109
  %123 = fadd fast float %118, %107
  %124 = fadd fast float %119, %108
  %125 = fadd fast float %122, 5.000000e-01
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %127, %123
  %131 = fmul fast float %128, %124
  %132 = fmul fast float %129, %125
  %133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.i32 %133, 0
  %135 = uitofp i32 %134 to float
  %136 = fmul fast float %135, %132
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = fmul fast float %136, %139
  %141 = call float @dx.op.unary.f32(i32 21, float %140)  ; Exp(value)
  %142 = fmul fast float %141, %138
  %143 = fsub fast float 4.000000e+00, %138
  %144 = fadd fast float %143, %142
  %145 = call float @dx.op.binary.f32(i32 36, float %144, float %117)  ; FMin(a,b)
  %146 = fmul fast float %130, 2.000000e+00
  %147 = fmul fast float %131, 2.000000e+00
  %148 = fsub fast float 1.000000e+00, %146
  %149 = fsub fast float 1.000000e+00, %147
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = fmul fast float %151, %148
  %155 = fmul fast float %152, %148
  %156 = fmul fast float %153, %148
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = fmul fast float %158, %149
  %162 = fmul fast float %159, %149
  %163 = fmul fast float %160, %149
  %164 = fadd fast float %161, %154
  %165 = fadd fast float %162, %155
  %166 = fadd fast float %163, %156
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = fadd fast float %164, %168
  %172 = fadd fast float %165, %169
  %173 = fadd fast float %166, %170
  %174 = fmul fast float %171, %145
  %175 = fmul fast float %172, %145
  %176 = fmul fast float %173, %145
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = fadd fast float %174, %178
  %182 = fadd fast float %175, %179
  %183 = fadd fast float %176, %180
  %184 = add i32 %61, 1
  %185 = uitofp i32 %184 to float
  %186 = fmul fast float %139, %185
  %187 = call float @dx.op.unary.f32(i32 21, float %186)  ; Exp(value)
  %188 = fmul fast float %139, %120
  %189 = call float @dx.op.unary.f32(i32 21, float %188)  ; Exp(value)
  %190 = fsub fast float %187, %189
  %191 = fmul fast float %138, %190
  %192 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %193 = fmul fast float %192, 0x3FE62E4300000000
  %194 = fmul fast float %193, %193
  %195 = select i1 %70, float 0.000000e+00, float 1.000000e+00
  %196 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %36
  store float %195, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  %197 = fmul fast float %193, %195
  %198 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %36
  store float %197, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  %199 = fmul fast float %194, %195
  %200 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %36
  store float %199, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %201 = xor i32 %36, 4
  %202 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %201
  %203 = load float, float addrspace(3)* %202, align 4, !tbaa !47, !noalias !51
  %204 = fadd fast float %203, %195
  %205 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %201
  %206 = load float, float addrspace(3)* %205, align 4, !tbaa !47, !noalias !51
  %207 = fadd fast float %206, %193
  %208 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %201
  %209 = load float, float addrspace(3)* %208, align 4, !tbaa !47, !noalias !51
  %210 = fadd fast float %209, %194
  store float %204, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  store float %207, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  store float %210, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %211 = xor i32 %36, 16
  %212 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %211
  %213 = load float, float addrspace(3)* %212, align 4, !tbaa !47, !noalias !51
  %214 = fadd fast float %213, %204
  %215 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %211
  %216 = load float, float addrspace(3)* %215, align 4, !tbaa !47, !noalias !51
  %217 = fadd fast float %216, %207
  %218 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %211
  %219 = load float, float addrspace(3)* %218, align 4, !tbaa !47, !noalias !51
  %220 = fadd fast float %219, %210
  store float %214, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  store float %217, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  store float %220, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %221 = xor i32 %36, 1
  %222 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %221
  %223 = load float, float addrspace(3)* %222, align 4, !tbaa !47, !noalias !51
  %224 = fadd fast float %223, %214
  %225 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %221
  %226 = load float, float addrspace(3)* %225, align 4, !tbaa !47, !noalias !51
  %227 = fadd fast float %226, %217
  %228 = fdiv fast float %227, %224
  %229 = and i32 %59, 1
  %230 = and i32 %229, %60
  %231 = and i32 %230, %61
  %232 = icmp ne i32 %231, 0
  %233 = and i1 %232, %71
  br i1 %233, label %234, label %242, !dx.controlflow.hints !55

; <label>:234                                     ; preds = %0
  %235 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %221
  %236 = load float, float addrspace(3)* %235, align 4, !tbaa !47, !noalias !51
  %237 = fadd fast float %236, %220
  %238 = fdiv fast float %237, %224
  %239 = lshr i32 %59, 1
  %240 = lshr i32 %60, 1
  %241 = lshr i32 %61, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %239, i32 %240, i32 %241, float %228, float %238, float %228, float %228, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %242

; <label>:242                                     ; preds = %234, %0
  br i1 %70, label %244, label %243, !dx.controlflow.hints !56

; <label>:243                                     ; preds = %242
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %59, i32 %60, i32 %61, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %244

; <label>:244                                     ; preds = %243, %242
  store float %195, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  store float 0.000000e+00, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  store float 0.000000e+00, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %245 = load float, float addrspace(3)* %202, align 4, !tbaa !47, !noalias !51
  %246 = fadd fast float %245, %195
  %247 = load float, float addrspace(3)* %205, align 4, !tbaa !47, !noalias !51
  %248 = load float, float addrspace(3)* %208, align 4, !tbaa !47, !noalias !51
  store float %246, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  store float %247, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  store float %248, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = load float, float addrspace(3)* %212, align 4, !tbaa !47, !noalias !51
  %250 = fadd fast float %249, %246
  %251 = load float, float addrspace(3)* %215, align 4, !tbaa !47, !noalias !51
  %252 = fadd fast float %251, %247
  %253 = load float, float addrspace(3)* %218, align 4, !tbaa !47, !noalias !51
  %254 = fadd fast float %253, %248
  store float %250, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  store float %252, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  store float %254, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %255 = load float, float addrspace(3)* %222, align 4, !tbaa !47, !noalias !51
  %256 = fadd fast float %255, %250
  %257 = load float, float addrspace(3)* %225, align 4, !tbaa !47, !noalias !51
  %258 = fadd fast float %257, %252
  %259 = fdiv fast float %258, %256
  br i1 %233, label %260, label %268, !dx.controlflow.hints !57

; <label>:260                                     ; preds = %244
  %261 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %221
  %262 = load float, float addrspace(3)* %261, align 4, !tbaa !47, !noalias !51
  %263 = fadd fast float %262, %254
  %264 = fdiv fast float %263, %256
  %265 = lshr i32 %59, 1
  %266 = lshr i32 %60, 1
  %267 = lshr i32 %61, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %265, i32 %266, i32 %267, float %259, float %264, float %259, float %259, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %268

; <label>:268                                     ; preds = %260, %244
  br i1 %70, label %270, label %269, !dx.controlflow.hints !58

; <label>:269                                     ; preds = %268
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %59, i32 %60, i32 %61, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %270

; <label>:270                                     ; preds = %269, %268
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %273 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %274 = fsub fast float %183, %272
  %275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %274)  ; FMax(a,b)
  %276 = fmul fast float %275, 0x3FF7154760000000
  %277 = fmul fast float %276, %273
  %278 = call float @dx.op.unary.f32(i32 21, float %277)  ; Exp(value)
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 0
  %281 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %282 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %285 = fmul fast float %284, %278
  %286 = fmul fast float %285, %280
  %287 = fmul fast float %285, %281
  %288 = fmul fast float %285, %282
  %289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.i32 %289, 2
  %291 = extractvalue %dx.types.CBufRet.i32 %289, 3
  %292 = call i32 @dx.op.tertiary.i32(i32 49, i32 %53, i32 %290, i32 %51)  ; UMad(a,b,c)
  %293 = call i32 @dx.op.tertiary.i32(i32 49, i32 %55, i32 %291, i32 %292)  ; UMad(a,b,c)
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %293, i32 0)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = fadd fast float %118, 1.000000e+00
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = fmul fast float %302, %122
  %304 = call float @dx.op.unary.f32(i32 21, float %303)  ; Exp(value)
  %305 = fmul fast float %304, %301
  %306 = fsub fast float 4.000000e+00, %301
  %307 = fadd fast float %306, %305
  %308 = fmul fast float %296, 2.000000e+00
  %309 = fmul fast float %308, %298
  %310 = fmul fast float %119, 2.000000e+00
  %311 = fmul fast float %310, %299
  %312 = fsub fast float 1.000000e+00, %309
  %313 = fsub fast float 1.000000e+00, %311
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %318 = fmul fast float %315, %312
  %319 = fmul fast float %316, %312
  %320 = fmul fast float %317, %312
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %324 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %325 = fmul fast float %322, %313
  %326 = fmul fast float %323, %313
  %327 = fmul fast float %324, %313
  %328 = fadd fast float %325, %318
  %329 = fadd fast float %326, %319
  %330 = fadd fast float %327, %320
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = fadd fast float %328, %332
  %336 = fadd fast float %329, %333
  %337 = fadd fast float %330, %334
  %338 = fadd fast float %119, 1.000000e+00
  %339 = fmul fast float %118, 2.000000e+00
  %340 = fmul fast float %339, %298
  %341 = fmul fast float %338, 2.000000e+00
  %342 = fmul fast float %341, %299
  %343 = fsub fast float 1.000000e+00, %340
  %344 = fsub fast float 1.000000e+00, %342
  %345 = fmul fast float %315, %343
  %346 = fmul fast float %316, %343
  %347 = fmul fast float %317, %343
  %348 = fmul fast float %322, %344
  %349 = fmul fast float %323, %344
  %350 = fmul fast float %324, %344
  %351 = fadd fast float %348, %345
  %352 = fadd fast float %349, %346
  %353 = fadd fast float %350, %347
  %354 = fadd fast float %351, %332
  %355 = fadd fast float %352, %333
  %356 = fadd fast float %353, %334
  %357 = fmul fast float %354, %307
  %358 = fmul fast float %355, %307
  %359 = fmul fast float %356, %307
  %360 = fadd fast float %354, %335
  %361 = fmul fast float %307, %360
  %362 = fadd fast float %355, %336
  %363 = fmul fast float %307, %362
  %364 = fadd fast float %356, %337
  %365 = fmul fast float %307, %364
  %366 = fmul fast float %361, 5.000000e-01
  %367 = fmul fast float %363, 5.000000e-01
  %368 = fmul fast float %365, 5.000000e-01
  %369 = fsub fast float %366, %357
  %370 = fsub fast float %367, %358
  %371 = fsub fast float %368, %359
  %372 = call float @dx.op.dot3.f32(i32 55, float %369, float %370, float %371, float %369, float %370, float %371)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = call float @dx.op.unary.f32(i32 25, float %372)  ; Rsqrt(value)
  %374 = fmul fast float %372, 2.000000e+00
  %375 = fmul fast float %374, %373
  %376 = call float @dx.op.binary.f32(i32 35, float %191, float %375)  ; FMax(a,b)
  %377 = and i32 %295, 8
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %590, label %379, !dx.controlflow.hints !59

; <label>:379                                     ; preds = %270
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %387 = extractvalue %dx.types.CBufRet.f32 %384, 2
  %388 = fsub fast float %181, %385
  %389 = fsub fast float %182, %386
  %390 = fsub fast float %183, %387
  %391 = fmul fast float %388, %381
  %392 = fmul fast float %389, %382
  %393 = fmul fast float %390, %383
  %394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.i32 %394, 3
  %396 = icmp eq i32 %395, 0
  %397 = fcmp fast oge float %393, 0.000000e+00
  %398 = fcmp fast ole float %393, 1.000000e+00
  br i1 %396, label %401, label %399, !dx.controlflow.hints !60

; <label>:399                                     ; preds = %379
  %400 = and i1 %397, %398
  br label %411

; <label>:401                                     ; preds = %379
  %402 = fcmp fast oge float %391, 0.000000e+00
  %403 = fcmp fast oge float %392, 0.000000e+00
  %404 = and i1 %402, %403
  %405 = and i1 %397, %404
  %406 = fcmp fast ole float %391, 1.000000e+00
  %407 = fcmp fast ole float %392, 1.000000e+00
  %408 = and i1 %406, %407
  %409 = and i1 %398, %408
  %410 = and i1 %405, %409
  br label %411

; <label>:411                                     ; preds = %401, %399
  %412 = phi i1 [ %400, %399 ], [ %410, %401 ]
  br i1 %412, label %413, label %584, !dx.controlflow.hints !61

; <label>:413                                     ; preds = %411
  %414 = fcmp fast oeq float %376, 0.000000e+00
  br i1 %414, label %429, label %415, !dx.controlflow.hints !62

; <label>:415                                     ; preds = %413
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 3
  %418 = fmul fast float %417, %376
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %422 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %423 = fmul fast float %420, %418
  %424 = fmul fast float %421, %418
  %425 = fmul fast float %422, %418
  %426 = call float @dx.op.unary.f32(i32 23, float %423)  ; Log(value)
  %427 = call float @dx.op.unary.f32(i32 23, float %424)  ; Log(value)
  %428 = call float @dx.op.unary.f32(i32 23, float %425)  ; Log(value)
  br label %429

; <label>:429                                     ; preds = %415, %413
  %430 = phi float [ %426, %415 ], [ 0.000000e+00, %413 ]
  %431 = phi float [ %427, %415 ], [ 0.000000e+00, %413 ]
  %432 = phi float [ %428, %415 ], [ 0.000000e+00, %413 ]
  %433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.i32 %433, 0
  %435 = extractvalue %dx.types.CBufRet.i32 %433, 1
  %436 = uitofp i32 %434 to float
  %437 = uitofp i32 %435 to float
  %438 = fmul fast float %391, %436
  %439 = fmul fast float %392, %437
  %440 = fadd fast float %438, 5.000000e-01
  %441 = fadd fast float %439, 5.000000e-01
  %442 = call float @dx.op.unary.f32(i32 22, float %440)  ; Frc(value)
  %443 = call float @dx.op.unary.f32(i32 22, float %441)  ; Frc(value)
  %444 = call float @dx.op.unary.f32(i32 27, float %440)  ; Round_ni(value)
  %445 = call float @dx.op.unary.f32(i32 27, float %441)  ; Round_ni(value)
  %446 = fadd fast float %444, 1.000000e+00
  %447 = fadd fast float %445, 1.000000e+00
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %451 = fmul fast float %449, %446
  %452 = fmul fast float %450, %447
  %453 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %28, float %451, float %452, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = extractvalue %dx.types.ResRet.f32 %453, 3
  %458 = extractvalue %dx.types.CBufRet.i32 %433, 2
  %459 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %460 = uitofp i32 %458 to float
  %461 = fadd fast float %460, -1.000000e+00
  %462 = fmul fast float %461, %454
  %463 = fmul fast float %461, %455
  %464 = fmul fast float %461, %456
  %465 = fmul fast float %461, %457
  %466 = fadd fast float %462, 5.000000e-01
  %467 = fadd fast float %463, 5.000000e-01
  %468 = fadd fast float %464, 5.000000e-01
  %469 = fadd fast float %465, 5.000000e-01
  %470 = fptoui float %466 to i32
  %471 = fptoui float %467 to i32
  %472 = fptoui float %468 to i32
  %473 = fptoui float %469 to i32
  %474 = uitofp i32 %470 to float
  %475 = uitofp i32 %471 to float
  %476 = uitofp i32 %472 to float
  %477 = uitofp i32 %473 to float
  %478 = fadd fast float %474, 5.000000e-01
  %479 = fadd fast float %475, 5.000000e-01
  %480 = fadd fast float %476, 5.000000e-01
  %481 = fadd fast float %477, 5.000000e-01
  %482 = fmul fast float %478, %459
  %483 = fmul fast float %479, %459
  %484 = fmul fast float %480, %459
  %485 = fmul fast float %481, %459
  %486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %482, float %393, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %483, float %393, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %484, float %393, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %485, float %393, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = fsub fast float %491, %493
  %495 = fmul fast float %494, %442
  %496 = fadd fast float %495, %493
  %497 = fsub fast float %489, %487
  %498 = fmul fast float %497, %442
  %499 = fadd fast float %498, %487
  %500 = fsub fast float %499, %496
  %501 = fmul fast float %500, %443
  %502 = fadd fast float %501, %496
  %503 = fcmp fast ogt float %502, 0.000000e+00
  br i1 %503, label %504, label %572, !dx.controlflow.hints !63

; <label>:504                                     ; preds = %429
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 0
  %507 = extractvalue %dx.types.CBufRet.f32 %505, 1
  %508 = extractvalue %dx.types.CBufRet.f32 %505, 2
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 0
  %511 = extractvalue %dx.types.CBufRet.f32 %509, 1
  %512 = extractvalue %dx.types.CBufRet.f32 %509, 2
  %513 = fmul fast float %389, %381
  %514 = fmul fast float %390, %381
  %515 = fadd fast float %391, %510
  %516 = fadd fast float %513, %511
  %517 = fadd fast float %514, %512
  %518 = fmul fast float %515, %506
  %519 = fmul fast float %516, %506
  %520 = fmul fast float %517, %506
  %521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %518, float %519, float %520, float undef, i32 0, i32 0, i32 0, float %430)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = fmul fast float %515, %507
  %524 = fmul fast float %516, %507
  %525 = fmul fast float %517, %507
  %526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %523, float %524, float %525, float undef, i32 0, i32 0, i32 0, float %431)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 1
  %528 = fmul fast float %515, %508
  %529 = fmul fast float %516, %508
  %530 = fmul fast float %517, %508
  %531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %528, float %529, float %530, float undef, i32 0, i32 0, i32 0, float %432)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 2
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 1
  %535 = fmul fast float %527, %522
  %536 = fmul fast float %535, %532
  %537 = call float @dx.op.unary.f32(i32 23, float %536)  ; Log(value)
  %538 = fmul fast float %537, %534
  %539 = call float @dx.op.unary.f32(i32 21, float %538)  ; Exp(value)
  %540 = extractvalue %dx.types.CBufRet.f32 %533, 2
  %541 = fmul fast float %502, %502
  %542 = fmul fast float %541, %539
  %543 = fmul fast float %542, %540
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 3
  %546 = fmul fast float %545, %543
  %547 = bitcast float %546 to i32
  %548 = sitofp i32 %547 to float
  %549 = fptosi float %548 to i32
  %550 = bitcast i32 %549 to float
  %551 = fsub fast float 1.000000e+00, %543
  %552 = bitcast float %551 to i32
  %553 = sitofp i32 %552 to float
  %554 = fptosi float %553 to i32
  %555 = bitcast i32 %554 to float
  %556 = fadd fast float %550, %555
  %557 = bitcast float %556 to i32
  %558 = sub nsw i32 2129859010, %557
  %559 = bitcast i32 %558 to float
  %560 = fmul fast float %559, %550
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = fmul fast float %560, %564
  %566 = fadd fast float %565, 1.000000e+00
  %567 = bitcast float %566 to i32
  %568 = sub nsw i32 2129859010, %567
  %569 = bitcast i32 %568 to float
  %570 = fmul fast float %560, %562
  %571 = fmul fast float %570, %569
  br label %572

; <label>:572                                     ; preds = %504, %429
  %573 = phi float [ %571, %504 ], [ %502, %429 ]
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %578 = fmul fast float %575, %573
  %579 = fmul fast float %576, %573
  %580 = fmul fast float %577, %573
  %581 = fadd fast float %578, %286
  %582 = fadd fast float %579, %287
  %583 = fadd fast float %580, %288
  br label %584

; <label>:584                                     ; preds = %572, %411
  %585 = phi float [ %581, %572 ], [ %286, %411 ]
  %586 = phi float [ %582, %572 ], [ %287, %411 ]
  %587 = phi float [ %583, %572 ], [ %288, %411 ]
  %588 = phi float [ %573, %572 ], [ 0.000000e+00, %411 ]
  %589 = fadd fast float %588, %285
  br label %590

; <label>:590                                     ; preds = %584, %270
  %591 = phi float [ %585, %584 ], [ %286, %270 ]
  %592 = phi float [ %586, %584 ], [ %287, %270 ]
  %593 = phi float [ %587, %584 ], [ %288, %270 ]
  %594 = phi float [ %589, %584 ], [ %285, %270 ]
  %595 = and i32 %295, 2
  %596 = icmp ne i32 %595, 0
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %601 = fadd fast float %600, %598
  %602 = fcmp fast ole float %183, %601
  %603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.i32 %603, 3
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %625, !dx.controlflow.hints !64

; <label>:606                                     ; preds = %590
  %607 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %609 = fsub fast float %181, %607
  %610 = fsub fast float %182, %608
  %611 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %613 = fdiv fast float 1.000000e+00, %611
  %614 = fdiv fast float 1.000000e+00, %612
  %615 = fmul fast float %609, %613
  %616 = fmul fast float %614, %610
  %617 = fcmp fast oge float %615, 0.000000e+00
  %618 = fcmp fast oge float %616, 0.000000e+00
  %619 = and i1 %617, %618
  %620 = and i1 %602, %619
  %621 = fcmp fast ole float %615, 1.000000e+00
  %622 = fcmp fast ole float %616, 1.000000e+00
  %623 = and i1 %621, %622
  %624 = and i1 %623, %620
  br label %625

; <label>:625                                     ; preds = %606, %590
  %626 = phi i1 [ %624, %606 ], [ %602, %590 ]
  %627 = and i1 %596, %626
  br i1 %627, label %628, label %804, !dx.controlflow.hints !65

; <label>:628                                     ; preds = %625
  %629 = fcmp fast oeq float %376, 0.000000e+00
  br i1 %629, label %635, label %630, !dx.controlflow.hints !66

; <label>:630                                     ; preds = %628
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 3
  %633 = fmul fast float %632, %376
  %634 = call float @dx.op.unary.f32(i32 23, float %633)  ; Log(value)
  br label %635

; <label>:635                                     ; preds = %630, %628
  %636 = phi float [ %634, %630 ], [ 0.000000e+00, %628 ]
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %640 = extractvalue %dx.types.CBufRet.f32 %637, 2
  %641 = fsub fast float %181, %638
  %642 = fsub fast float %182, %639
  %643 = fsub fast float %183, %640
  %644 = fmul fast float %641, %641
  %645 = fmul fast float %642, %642
  %646 = fadd fast float %644, %645
  %647 = fmul fast float %643, %643
  %648 = fadd fast float %646, %647
  %649 = call float @dx.op.unary.f32(i32 24, float %648)  ; Sqrt(value)
  %650 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %651 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %652 = fsub fast float %181, %650
  %653 = fsub fast float %182, %651
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %656 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %657 = fmul fast float %652, %655
  %658 = fmul fast float %653, %656
  %659 = fsub fast float 1.000000e+00, %658
  br i1 %605, label %666, label %660, !dx.controlflow.hints !67

; <label>:660                                     ; preds = %635
  %661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %657, float %659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = extractvalue %dx.types.ResRet.f32 %661, 3
  br label %672

; <label>:666                                     ; preds = %635
  %667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %657, float %659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = extractvalue %dx.types.ResRet.f32 %667, 1
  %670 = extractvalue %dx.types.ResRet.f32 %667, 2
  %671 = extractvalue %dx.types.ResRet.f32 %667, 3
  br label %672

; <label>:672                                     ; preds = %666, %660
  %673 = phi float [ %662, %660 ], [ %668, %666 ]
  %674 = phi float [ %663, %660 ], [ %669, %666 ]
  %675 = phi float [ %664, %660 ], [ %670, %666 ]
  %676 = phi float [ %665, %660 ], [ %671, %666 ]
  %677 = extractvalue %dx.types.CBufRet.f32 %654, 3
  %678 = fmul fast float %677, %674
  %679 = fmul fast float %678, %673
  %680 = fsub fast float %678, %679
  %681 = fcmp fast ole float %680, 0.000000e+00
  %682 = fmul fast float %677, %675
  %683 = fadd fast float %682, %598
  %684 = fdiv fast float 1.000000e+00, %680
  %685 = select i1 %681, float 1.000000e+06, float %684
  %686 = fsub fast float %183, %598
  %687 = fsub fast float %686, %679
  %688 = fmul fast float %685, %687
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %691 = fmul fast float %690, %689
  %692 = fsub fast float %690, %691
  %693 = fcmp fast olt float %183, %683
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 3
  %696 = select i1 %693, float %695, float 1.000000e+00
  %697 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %698 = fcmp fast oeq float %697, 0.000000e+00
  br i1 %698, label %781, label %699, !dx.controlflow.hints !68

; <label>:699                                     ; preds = %672
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 3
  %702 = fcmp fast ogt float %701, 0.000000e+00
  %703 = extractvalue %dx.types.CBufRet.f32 %694, 2
  br i1 %702, label %704, label %734, !dx.controlflow.hints !69

; <label>:704                                     ; preds = %699
  %705 = fmul fast float %657, %701
  %706 = fmul fast float %658, %701
  %707 = fsub fast float 1.000000e+00, %706
  %708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %705, float %707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = extractvalue %dx.types.ResRet.f32 %708, 1
  %711 = fmul fast float %709, 2.000000e+00
  %712 = fmul fast float %710, 2.000000e+00
  %713 = fadd fast float %711, -1.000000e+00
  %714 = fadd fast float %712, -1.000000e+00
  %715 = fmul fast float %697, %181
  %716 = fmul fast float %697, %182
  %717 = fmul fast float %697, %183
  %718 = call float @dx.op.unary.f32(i32 22, float %703)  ; Frc(value)
  %719 = fmul fast float %713, %718
  %720 = fmul fast float %714, %718
  %721 = fsub fast float %715, %719
  %722 = fsub fast float %716, %720
  %723 = fadd fast float %703, 5.000000e-01
  %724 = call float @dx.op.unary.f32(i32 22, float %723)  ; Frc(value)
  %725 = fmul fast float %724, %713
  %726 = fmul fast float %724, %714
  %727 = fadd fast float %715, -5.000000e-01
  %728 = fsub fast float %727, %725
  %729 = fadd fast float %716, -5.000000e-01
  %730 = fsub fast float %729, %726
  %731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %728, float %730, float %717, float undef, i32 0, i32 0, i32 0, float %636)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  br label %747

; <label>:734                                     ; preds = %699
  %735 = extractvalue %dx.types.CBufRet.f32 %700, 0
  %736 = extractvalue %dx.types.CBufRet.f32 %700, 1
  %737 = extractvalue %dx.types.CBufRet.f32 %700, 2
  %738 = fmul fast float %703, %735
  %739 = fmul fast float %703, %736
  %740 = fmul fast float %703, %737
  %741 = fsub fast float %181, %738
  %742 = fsub fast float %182, %739
  %743 = fsub fast float %183, %740
  %744 = fmul fast float %741, %697
  %745 = fmul fast float %742, %697
  %746 = fmul fast float %743, %697
  br label %747

; <label>:747                                     ; preds = %734, %704
  %748 = phi float [ %721, %704 ], [ %744, %734 ]
  %749 = phi float [ %722, %704 ], [ %745, %734 ]
  %750 = phi float [ %717, %704 ], [ %746, %734 ]
  %751 = phi float [ %732, %704 ], [ 0.000000e+00, %734 ]
  %752 = phi float [ %733, %704 ], [ 0.000000e+00, %734 ]
  %753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %748, float %749, float %750, float undef, i32 0, i32 0, i32 0, float %636)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.ResRet.f32 %753, 1
  br i1 %702, label %756, label %768, !dx.controlflow.hints !70

; <label>:756                                     ; preds = %747
  %757 = extractvalue %dx.types.CBufRet.f32 %694, 2
  %758 = call float @dx.op.unary.f32(i32 22, float %757)  ; Frc(value)
  %759 = fmul fast float %758, 2.000000e+00
  %760 = fadd fast float %759, -1.000000e+00
  %761 = call float @dx.op.unary.f32(i32 6, float %760)  ; FAbs(value)
  %762 = fsub fast float %751, %754
  %763 = fmul fast float %761, %762
  %764 = fadd fast float %763, %754
  %765 = fsub fast float %752, %755
  %766 = fmul fast float %761, %765
  %767 = fadd fast float %766, %755
  br label %768

; <label>:768                                     ; preds = %756, %747
  %769 = phi float [ %764, %756 ], [ %754, %747 ]
  %770 = phi float [ %767, %756 ], [ %755, %747 ]
  %771 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %772 = fadd fast float %771, %771
  %773 = fdiv fast float 2.000000e+00, %772
  %774 = fmul fast float %771, 2.000000e+00
  %775 = fadd fast float %769, -1.000000e+00
  %776 = fadd fast float %775, %770
  %777 = fadd fast float %776, %774
  %778 = fmul fast float %777, %773
  %779 = fadd fast float %778, -1.000000e+00
  %780 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  br label %781

; <label>:781                                     ; preds = %768, %672
  %782 = phi float [ %780, %768 ], [ 1.000000e+00, %672 ]
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 0
  %785 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %786 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 1
  %789 = fsub fast float %649, %788
  %790 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %791 = fmul fast float %789, %790
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %793 = fmul fast float %696, %676
  %794 = fmul fast float %793, %692
  %795 = fmul fast float %794, %782
  %796 = fmul fast float %795, %792
  %797 = fmul fast float %796, %784
  %798 = fmul fast float %796, %785
  %799 = fmul fast float %796, %786
  %800 = fadd fast float %797, %591
  %801 = fadd fast float %798, %592
  %802 = fadd fast float %799, %593
  %803 = fadd fast float %796, %594
  br label %804

; <label>:804                                     ; preds = %781, %625
  %805 = phi float [ %800, %781 ], [ %591, %625 ]
  %806 = phi float [ %801, %781 ], [ %592, %625 ]
  %807 = phi float [ %802, %781 ], [ %593, %625 ]
  %808 = phi float [ %803, %781 ], [ %594, %625 ]
  %809 = and i32 %295, 1
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %1084, label %811, !dx.controlflow.hints !71

; <label>:811                                     ; preds = %804
  %812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.i32 %812, 1
  %814 = and i32 %813, 1
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %891, label %816, !dx.controlflow.hints !72

; <label>:816                                     ; preds = %811
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 0
  %821 = extractvalue %dx.types.CBufRet.f32 %819, 1
  %822 = extractvalue %dx.types.CBufRet.f32 %817, 0
  %823 = extractvalue %dx.types.CBufRet.f32 %817, 1
  %824 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  %827 = extractvalue %dx.types.CBufRet.f32 %825, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %825, 2
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 3
  %831 = and i32 %813, 2
  %832 = extractvalue %dx.types.CBufRet.i32 %812, 0
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %870, label %834

; <label>:834                                     ; preds = %816
  br label %835

; <label>:835                                     ; preds = %835, %834
  %836 = phi float [ %864, %835 ], [ 0.000000e+00, %834 ]
  %837 = phi float [ %863, %835 ], [ 1.000000e+06, %834 ]
  %838 = phi i32 [ %865, %835 ], [ 0, %834 ]
  %839 = add i32 %838, 171
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %839)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 2
  %845 = extractvalue %dx.types.CBufRet.f32 %840, 2
  %846 = fsub fast float %181, %841
  %847 = fsub fast float %182, %842
  %848 = fmul fast float %846, %846
  %849 = fmul fast float %847, %847
  %850 = fadd fast float %848, %849
  %851 = call float @dx.op.unary.f32(i32 24, float %850)  ; Sqrt(value)
  %852 = fsub fast float %851, %845
  %853 = icmp ne i32 %831, 0
  %854 = fsub fast float -0.000000e+00, %821
  %855 = select i1 %853, float %854, float %821
  %856 = fmul fast float %852, %855
  %857 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %858 = fmul fast float %857, %820
  %859 = fsub fast float %844, %183
  %860 = fmul fast float %859, %818
  %861 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %862 = fmul fast float %858, %861
  %863 = call float @dx.op.binary.f32(i32 36, float %837, float %852)  ; FMin(a,b)
  %864 = call float @dx.op.binary.f32(i32 35, float %836, float %862)  ; FMax(a,b)
  %865 = add nuw nsw i32 %838, 1
  %866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.i32 %866, 0
  %868 = icmp ult i32 %865, %867
  br i1 %868, label %835, label %869

; <label>:869                                     ; preds = %835
  br label %870

; <label>:870                                     ; preds = %869, %816
  %871 = phi float [ 0.000000e+00, %816 ], [ %864, %869 ]
  %872 = phi float [ 1.000000e+06, %816 ], [ %863, %869 ]
  %873 = fadd fast float %871, %808
  %874 = fmul fast float %872, %830
  %875 = call float @dx.op.unary.f32(i32 7, float %874)  ; Saturate(value)
  %876 = fsub fast float %826, %822
  %877 = fsub fast float %827, %823
  %878 = fsub fast float %828, %824
  %879 = fmul fast float %875, %876
  %880 = fmul fast float %875, %877
  %881 = fmul fast float %875, %878
  %882 = fadd fast float %879, %822
  %883 = fadd fast float %880, %823
  %884 = fadd fast float %881, %824
  %885 = fmul fast float %882, %871
  %886 = fmul fast float %883, %871
  %887 = fmul fast float %884, %871
  %888 = fadd fast float %885, %805
  %889 = fadd fast float %886, %806
  %890 = fadd fast float %887, %807
  br label %1084

; <label>:891                                     ; preds = %811
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 3
  %895 = fmul fast float %893, %181
  %896 = fmul fast float %894, %182
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %899 = extractvalue %dx.types.CBufRet.f32 %897, 1
  %900 = fadd fast float %895, %898
  %901 = fadd fast float %896, %899
  %902 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %903 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %29, float %902, float %903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 0
  %908 = fmul fast float %907, %905
  %909 = fsub fast float %900, %902
  %910 = fsub fast float %901, %903
  %911 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %912 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %913 = fmul fast float %911, %909
  %914 = fmul fast float %912, %910
  %915 = fmul fast float %913, %913
  %916 = fmul fast float %914, %914
  %917 = fadd fast float %915, %916
  %918 = call float @dx.op.unary.f32(i32 24, float %917)  ; Sqrt(value)
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %921 = fmul fast float %920, %918
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  %923 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %924 = fsub fast float %923, %908
  %925 = fmul fast float %924, %922
  %926 = extractvalue %dx.types.CBufRet.f32 %906, 1
  %927 = fsub fast float %183, %908
  %928 = fsub fast float %927, %926
  %929 = fsub fast float %928, %925
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %932 = fsub fast float %929, %931
  %933 = fcmp fast olt float %932, 0.000000e+00
  %934 = extractvalue %dx.types.CBufRet.i32 %812, 0
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %986, label %936

; <label>:936                                     ; preds = %891
  br label %937

; <label>:937                                     ; preds = %975, %936
  %938 = phi i32 [ %981, %975 ], [ 1, %936 ]
  %939 = phi i32 [ %982, %975 ], [ 0, %936 ]
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 1
  %942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.i32 %942, 1
  %944 = and i32 %943, 8
  %945 = icmp eq i32 %944, 0
  %946 = fcmp fast ogt float %941, %929
  %947 = or i1 %946, %945
  %948 = add i32 %939, 171
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %948)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 2
  br i1 %947, label %953, label %959, !dx.controlflow.hints !73

; <label>:953                                     ; preds = %937
  %954 = fsub fast float %950, %181
  %955 = fsub fast float %951, %182
  %956 = fmul fast float %954, %954
  %957 = fmul fast float %955, %955
  %958 = fadd fast float %956, %957
  br label %975

; <label>:959                                     ; preds = %937
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %962 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %963 = fmul fast float %962, %961
  %964 = fsub fast float %963, %941
  %965 = fdiv fast float %952, %964
  %966 = fsub fast float %181, %950
  %967 = fsub fast float %182, %951
  %968 = fsub fast float %929, %941
  %969 = fmul fast float %965, %968
  %970 = fmul fast float %966, %966
  %971 = fmul fast float %967, %967
  %972 = fadd fast float %970, %971
  %973 = fmul fast float %969, %969
  %974 = fadd fast float %972, %973
  br label %975

; <label>:975                                     ; preds = %959, %953
  %976 = phi float [ %958, %953 ], [ %974, %959 ]
  %977 = call float @dx.op.unary.f32(i32 24, float %976)  ; Sqrt(value)
  %978 = fsub float %952, %977
  %979 = fcmp fast olt float %978, 0.000000e+00
  %980 = zext i1 %979 to i32
  %981 = and i32 %980, %938
  %982 = add i32 %939, 1
  %983 = extractvalue %dx.types.CBufRet.i32 %942, 0
  %984 = icmp ult i32 %982, %983
  br i1 %984, label %937, label %985

; <label>:985                                     ; preds = %975
  br label %986

; <label>:986                                     ; preds = %985, %891
  %987 = phi i32 [ 1, %891 ], [ %981, %985 ]
  br label %988

; <label>:988                                     ; preds = %988, %986
  %989 = phi i32 [ %1025, %988 ], [ %987, %986 ]
  %990 = phi i32 [ %1026, %988 ], [ 0, %986 ]
  %991 = add nuw nsw i32 %990, 191
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %991)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %996 = add nuw nsw i32 %990, 195
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %996)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1001 = fsub fast float %181, %993
  %1002 = fsub fast float %182, %994
  %1003 = fsub fast float %929, %995
  %1004 = call float @dx.op.unary.f32(i32 6, float %1001)  ; FAbs(value)
  %1005 = call float @dx.op.unary.f32(i32 6, float %1002)  ; FAbs(value)
  %1006 = call float @dx.op.unary.f32(i32 6, float %1003)  ; FAbs(value)
  %1007 = fsub fast float %1004, %998
  %1008 = fsub fast float %1005, %999
  %1009 = fsub fast float %1006, %1000
  %1010 = call float @dx.op.binary.f32(i32 35, float %1007, float 0.000000e+00)  ; FMax(a,b)
  %1011 = call float @dx.op.binary.f32(i32 35, float %1008, float 0.000000e+00)  ; FMax(a,b)
  %1012 = call float @dx.op.binary.f32(i32 35, float %1009, float 0.000000e+00)  ; FMax(a,b)
  %1013 = fmul fast float %1010, %1010
  %1014 = fmul fast float %1011, %1011
  %1015 = fadd fast float %1014, %1013
  %1016 = fmul fast float %1012, %1012
  %1017 = fadd fast float %1015, %1016
  %1018 = call float @dx.op.unary.f32(i32 24, float %1017)  ; Sqrt(value)
  %1019 = call float @dx.op.binary.f32(i32 35, float %1008, float %1009)  ; FMax(a,b)
  %1020 = call float @dx.op.binary.f32(i32 35, float %1007, float %1019)  ; FMax(a,b)
  %1021 = call float @dx.op.binary.f32(i32 36, float %1020, float 0.000000e+00)  ; FMin(a,b)
  %1022 = fadd fast float %1021, %1018
  %1023 = fcmp ogt float %1022, -0.000000e+00
  %1024 = zext i1 %1023 to i32
  %1025 = and i32 %1024, %989
  %1026 = add nuw nsw i32 %990, 1
  %1027 = icmp eq i32 %1026, 4
  br i1 %1027, label %1028, label %988

; <label>:1028                                    ; preds = %988
  %1029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.i32 %1029, 1
  %1031 = lshr i32 %1030, 1
  %1032 = xor i32 %1031, %1025
  %1033 = zext i1 %933 to i32
  %1034 = and i32 %1032, %1033
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1084, label %1036, !dx.controlflow.hints !74

; <label>:1036                                    ; preds = %1028
  %1037 = fmul fast float %174, %174
  %1038 = fmul fast float %175, %175
  %1039 = fadd fast float %1037, %1038
  %1040 = fmul fast float %176, %176
  %1041 = fadd fast float %1039, %1040
  %1042 = call float @dx.op.unary.f32(i32 24, float %1041)  ; Sqrt(value)
  %1043 = and i32 %813, 4
  %1044 = icmp ne i32 %1043, 0
  %1045 = select i1 %1044, float %1042, float 1.000000e+00
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1048 = fsub fast float %1045, %1047
  %1049 = extractvalue %dx.types.CBufRet.f32 %1046, 3
  %1050 = fmul fast float %1048, %1049
  %1051 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 3
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1056 = fsub fast float %1055, %929
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 3
  %1059 = fmul fast float %1056, %1058
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1061 = fmul fast float %1060, %1053
  %1062 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1063 = fsub fast float %1042, %1062
  %1064 = extractvalue %dx.types.CBufRet.f32 %1057, 1
  %1065 = fmul fast float %1063, %1064
  %1066 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  %1067 = fsub fast float 1.000000e+00, %1051
  %1068 = fmul fast float %1066, %1067
  %1069 = fadd fast float %1068, %1051
  %1070 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1071 = fsub fast float %1061, %1070
  %1072 = fmul fast float %1071, %1069
  %1073 = fadd fast float %1072, %1070
  %1074 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1075 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1076 = extractvalue %dx.types.CBufRet.f32 %1052, 2
  %1077 = fadd fast float %1073, %808
  %1078 = fmul fast float %1073, %1074
  %1079 = fmul fast float %1073, %1075
  %1080 = fmul fast float %1073, %1076
  %1081 = fadd fast float %1078, %805
  %1082 = fadd fast float %1079, %806
  %1083 = fadd fast float %1080, %807
  br label %1084

; <label>:1084                                    ; preds = %1036, %1028, %870, %804
  %1085 = phi float [ %805, %804 ], [ %888, %870 ], [ %1081, %1036 ], [ %805, %1028 ]
  %1086 = phi float [ %806, %804 ], [ %889, %870 ], [ %1082, %1036 ], [ %806, %1028 ]
  %1087 = phi float [ %807, %804 ], [ %890, %870 ], [ %1083, %1036 ], [ %807, %1028 ]
  %1088 = phi float [ %808, %804 ], [ %873, %870 ], [ %1077, %1036 ], [ %808, %1028 ]
  %1089 = and i32 %295, 16
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1882, label %1091, !dx.controlflow.hints !75

; <label>:1091                                    ; preds = %1084
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.CBufRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.CBufRet.f32 %1092, 2
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 3
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 3
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 3
  %1102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.i32 %1102, 0
  %1104 = icmp ne i32 %1103, 0
  %1105 = zext i1 %1104 to i32
  %1106 = extractvalue %dx.types.CBufRet.i32 %1102, 1
  %1107 = icmp ne i32 %1106, 0
  %1108 = zext i1 %1107 to i32
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = bitcast float %1110 to i32
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1162, label %1113

; <label>:1113                                    ; preds = %1091
  br label %1114

; <label>:1114                                    ; preds = %1157, %1113
  %1115 = phi i32 [ %1158, %1157 ], [ 0, %1113 ]
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = bitcast float %1117 to i32
  %1119 = call i32 @dx.op.tertiary.i32(i32 49, i32 %293, i32 %1118, i32 %1115)  ; UMad(a,b,c)
  %1120 = shl i32 %1119, 2
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  br label %1123

; <label>:1123                                    ; preds = %1126, %1114
  %1124 = phi i32 [ %1122, %1114 ], [ %1131, %1126 ]
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1157, label %1126

; <label>:1126                                    ; preds = %1123
  %1127 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1124)  ; FirstbitLo(value)
  %1128 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1115, i32 %1127)  ; UMad(a,b,c)
  %1129 = and i32 %1127, 31
  %1130 = shl i32 1, %1129
  %1131 = xor i32 %1130, %1124
  %1132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1128, i32 0)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1128, i32 16)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = fsub fast float %1133, %1137
  %1141 = fsub fast float %1134, %1138
  %1142 = fsub fast float %1135, %1139
  %1143 = fadd fast float %1137, %1133
  %1144 = fadd fast float %1138, %1134
  %1145 = fadd fast float %1139, %1135
  %1146 = fcmp fast ogt float %181, %1140
  %1147 = fcmp fast ogt float %182, %1141
  %1148 = fcmp fast ogt float %183, %1142
  %1149 = and i1 %1146, %1147
  %1150 = and i1 %1148, %1149
  %1151 = fcmp fast olt float %181, %1143
  %1152 = fcmp fast olt float %182, %1144
  %1153 = fcmp fast olt float %183, %1145
  %1154 = and i1 %1151, %1152
  %1155 = and i1 %1153, %1154
  %1156 = and i1 %1150, %1155
  br i1 %1156, label %1160, label %1123, !dx.controlflow.hints !76

; <label>:1157                                    ; preds = %1123
  %1158 = add i32 %1115, 1
  %1159 = icmp ult i32 %1158, %1118
  br i1 %1159, label %1114, label %1161, !llvm.loop !77

; <label>:1160                                    ; preds = %1126
  br label %1162

; <label>:1161                                    ; preds = %1157
  br label %1162

; <label>:1162                                    ; preds = %1161, %1160, %1091
  %1163 = phi i32 [ 255, %1091 ], [ %1128, %1160 ], [ 255, %1161 ]
  %1164 = icmp eq i32 %1163, 255
  br i1 %1164, label %1184, label %1165, !dx.controlflow.hints !79

; <label>:1165                                    ; preds = %1162
  %1166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 32)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 132)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 136)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 152)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1163, i32 156)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1163, i32 160)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = icmp ne i32 %1177, 0
  %1181 = zext i1 %1180 to i32
  %1182 = icmp ne i32 %1179, 0
  %1183 = zext i1 %1182 to i32
  br label %1184

; <label>:1184                                    ; preds = %1165, %1162
  %1185 = phi float [ %1167, %1165 ], [ %1093, %1162 ]
  %1186 = phi float [ %1168, %1165 ], [ %1094, %1162 ]
  %1187 = phi float [ %1169, %1165 ], [ %1095, %1162 ]
  %1188 = phi float [ %1171, %1165 ], [ %1097, %1162 ]
  %1189 = phi float [ %1173, %1165 ], [ %1099, %1162 ]
  %1190 = phi float [ %1175, %1165 ], [ %1101, %1162 ]
  %1191 = phi i32 [ %1181, %1165 ], [ %1105, %1162 ]
  %1192 = phi i32 [ %1183, %1165 ], [ %1108, %1162 ]
  %1193 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1195 = fsub fast float %181, %1193
  %1196 = fsub fast float %182, %1194
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 2
  %1199 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1200 = fmul fast float %1195, %1198
  %1201 = fmul fast float %1196, %1199
  %1202 = call float @dx.op.binary.f32(i32 36, float %1200, float %1201)  ; FMin(a,b)
  %1203 = fcmp fast olt float %1202, 0.000000e+00
  %1204 = call float @dx.op.binary.f32(i32 35, float %1200, float %1201)  ; FMax(a,b)
  %1205 = fcmp fast ogt float %1204, 1.000000e+00
  %1206 = or i1 %1203, %1205
  %1207 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1208 = fcmp fast olt float %183, %1207
  %1209 = or i1 %1206, %1208
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 3
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 0
  %1214 = fadd fast float %1213, %1211
  %1215 = fcmp fast ogt float %183, %1214
  %1216 = or i1 %1209, %1215
  br i1 %1216, label %1501, label %1217, !dx.controlflow.hints !80

; <label>:1217                                    ; preds = %1184
  %1218 = fsub fast float 1.000000e+00, %1201
  %1219 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 3
  %1222 = extractvalue %dx.types.CBufRet.f32 %1220, 2
  %1223 = extractvalue %dx.types.CBufRet.f32 %1220, 1
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.CBufRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1228 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  br i1 %1164, label %1244, label %1229, !dx.controlflow.hints !81

; <label>:1229                                    ; preds = %1217
  %1230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 48)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.f32 %1230, 2
  %1234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 104)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 108)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 112)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 116)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 120)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  br label %1244

; <label>:1244                                    ; preds = %1229, %1217
  %1245 = phi float [ %1237, %1229 ], [ %1219, %1217 ]
  %1246 = phi float [ %1241, %1229 ], [ %1221, %1217 ]
  %1247 = phi float [ %1243, %1229 ], [ %1222, %1217 ]
  %1248 = phi float [ %1239, %1229 ], [ %1223, %1217 ]
  %1249 = phi float [ %1231, %1229 ], [ %1225, %1217 ]
  %1250 = phi float [ %1232, %1229 ], [ %1226, %1217 ]
  %1251 = phi float [ %1233, %1229 ], [ %1227, %1217 ]
  %1252 = phi float [ %1235, %1229 ], [ %1228, %1217 ]
  %1253 = fcmp fast oeq float %1245, 0.000000e+00
  br i1 %1253, label %1369, label %1254, !dx.controlflow.hints !82

; <label>:1254                                    ; preds = %1244
  %1255 = fcmp fast ogt float %1246, 0.000000e+00
  %1256 = fcmp fast oeq float %376, 0.000000e+00
  br i1 %1256, label %1261, label %1257, !dx.controlflow.hints !66

; <label>:1257                                    ; preds = %1254
  %1258 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1259 = fmul fast float %1258, %376
  %1260 = call float @dx.op.unary.f32(i32 23, float %1259)  ; Log(value)
  br label %1261

; <label>:1261                                    ; preds = %1257, %1254
  %1262 = phi float [ %1260, %1257 ], [ 0.000000e+00, %1254 ]
  br i1 %1256, label %1267, label %1263, !dx.controlflow.hints !66

; <label>:1263                                    ; preds = %1261
  %1264 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1265 = fmul fast float %1264, %376
  %1266 = call float @dx.op.unary.f32(i32 23, float %1265)  ; Log(value)
  br label %1267

; <label>:1267                                    ; preds = %1263, %1261
  %1268 = phi float [ %1266, %1263 ], [ 0.000000e+00, %1261 ]
  br i1 %1255, label %1269, label %1331, !dx.controlflow.hints !83

; <label>:1269                                    ; preds = %1267
  %1270 = fcmp fast ogt float %1247, 0.000000e+00
  br i1 %1270, label %1271, label %1281, !dx.controlflow.hints !84

; <label>:1271                                    ; preds = %1269
  %1272 = fmul fast float %1247, %1200
  %1273 = fmul fast float %1247, %1218
  %1274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1272, float %1273, float undef, float undef, i32 0, i32 0, i32 undef, float %1268)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = fmul fast float %1275, 2.000000e+00
  %1278 = fmul fast float %1276, 2.000000e+00
  %1279 = fadd fast float %1277, -1.000000e+00
  %1280 = fadd fast float %1278, -1.000000e+00
  br label %1302

; <label>:1281                                    ; preds = %1269
  %1282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1283 = extractvalue %dx.types.CBufRet.f32 %1282, 3
  %1284 = fmul fast float %1283, %1200
  %1285 = fmul fast float %1283, %1218
  %1286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.ResRet.f32 %1286, 1
  %1289 = extractvalue %dx.types.ResRet.f32 %1286, 2
  %1290 = fmul fast float %1287, 2.000000e+00
  %1291 = fmul fast float %1288, 2.000000e+00
  %1292 = fmul fast float %1289, 2.000000e+00
  %1293 = fadd fast float %1290, -1.000000e+00
  %1294 = fadd fast float %1291, -1.000000e+00
  %1295 = fadd fast float %1292, -1.000000e+00
  %1296 = extractvalue %dx.types.CBufRet.f32 %1212, 1
  %1297 = fmul fast float %1293, %1296
  %1298 = fmul fast float %1294, %1296
  %1299 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1300 = fmul fast float %1299, 5.000000e-01
  %1301 = fmul fast float %1300, %1295
  br label %1302

; <label>:1302                                    ; preds = %1281, %1271
  %1303 = phi float [ %1279, %1271 ], [ %1297, %1281 ]
  %1304 = phi float [ %1280, %1271 ], [ %1298, %1281 ]
  %1305 = phi float [ 0.000000e+00, %1271 ], [ %1301, %1281 ]
  %1306 = fmul fast float %1245, %181
  %1307 = fmul fast float %1245, %182
  %1308 = fmul fast float %1245, %183
  %1309 = call float @dx.op.unary.f32(i32 22, float %1246)  ; Frc(value)
  %1310 = fmul fast float %1309, %1303
  %1311 = fmul fast float %1309, %1304
  %1312 = fmul fast float %1309, %1305
  %1313 = fsub fast float %1306, %1310
  %1314 = fsub fast float %1307, %1311
  %1315 = fsub fast float %1308, %1312
  %1316 = fadd fast float %1246, 5.000000e-01
  %1317 = call float @dx.op.unary.f32(i32 22, float %1316)  ; Frc(value)
  %1318 = fmul fast float %1317, %1303
  %1319 = fmul fast float %1317, %1304
  %1320 = fmul fast float %1317, %1305
  %1321 = fadd fast float %1306, -5.000000e-01
  %1322 = fsub fast float %1321, %1318
  %1323 = fadd fast float %1307, -5.000000e-01
  %1324 = fsub fast float %1323, %1319
  %1325 = fadd fast float %1308, -5.000000e-01
  %1326 = fsub fast float %1325, %1320
  %1327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %1322, float %1324, float %1326, float undef, i32 0, i32 0, i32 0, float %1262)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = extractvalue %dx.types.ResRet.f32 %1327, 1
  %1330 = fadd fast float %1328, %1248
  br label %1341

; <label>:1331                                    ; preds = %1267
  %1332 = fmul fast float %1252, %1249
  %1333 = fmul fast float %1252, %1250
  %1334 = fmul fast float %1252, %1251
  %1335 = fsub fast float %181, %1332
  %1336 = fsub fast float %182, %1333
  %1337 = fsub fast float %183, %1334
  %1338 = fmul fast float %1335, %1245
  %1339 = fmul fast float %1336, %1245
  %1340 = fmul fast float %1337, %1245
  br label %1341

; <label>:1341                                    ; preds = %1331, %1302
  %1342 = phi float [ %1313, %1302 ], [ %1338, %1331 ]
  %1343 = phi float [ %1314, %1302 ], [ %1339, %1331 ]
  %1344 = phi float [ %1315, %1302 ], [ %1340, %1331 ]
  %1345 = phi float [ %1330, %1302 ], [ 0.000000e+00, %1331 ]
  %1346 = phi float [ %1329, %1302 ], [ 0.000000e+00, %1331 ]
  %1347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %1342, float %1343, float %1344, float undef, i32 0, i32 0, i32 0, float %1262)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.ResRet.f32 %1347, 1
  %1350 = fadd fast float %1348, %1248
  br i1 %1255, label %1351, label %1362, !dx.controlflow.hints !85

; <label>:1351                                    ; preds = %1341
  %1352 = call float @dx.op.unary.f32(i32 22, float %1246)  ; Frc(value)
  %1353 = fmul fast float %1352, 2.000000e+00
  %1354 = fadd fast float %1353, -1.000000e+00
  %1355 = call float @dx.op.unary.f32(i32 6, float %1354)  ; FAbs(value)
  %1356 = fsub fast float %1345, %1350
  %1357 = fmul fast float %1355, %1356
  %1358 = fadd fast float %1357, %1350
  %1359 = fsub fast float %1346, %1349
  %1360 = fmul fast float %1355, %1359
  %1361 = fadd fast float %1360, %1349
  br label %1362

; <label>:1362                                    ; preds = %1351, %1341
  %1363 = phi float [ %1358, %1351 ], [ %1350, %1341 ]
  %1364 = phi float [ %1361, %1351 ], [ %1349, %1341 ]
  %1365 = fsub fast float %1363, %1364
  %1366 = fsub fast float 1.000000e+00, %1364
  %1367 = fdiv fast float %1365, %1366
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  br label %1369

; <label>:1369                                    ; preds = %1362, %1244
  %1370 = phi float [ %1368, %1362 ], [ 1.000000e+00, %1244 ]
  %1371 = fcmp fast oeq float %376, 0.000000e+00
  br i1 %1371, label %1376, label %1372, !dx.controlflow.hints !66

; <label>:1372                                    ; preds = %1369
  %1373 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1374 = fmul fast float %1373, %376
  %1375 = call float @dx.op.unary.f32(i32 23, float %1374)  ; Log(value)
  br label %1376

; <label>:1376                                    ; preds = %1372, %1369
  %1377 = phi float [ %1375, %1372 ], [ 0.000000e+00, %1369 ]
  %1378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1200, float %1218, float undef, float undef, i32 0, i32 0, i32 undef, float %1377)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %29, float %1200, float %1218, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.ResRet.f32 %1380, 1
  %1383 = extractvalue %dx.types.ResRet.f32 %1380, 2
  %1384 = extractvalue %dx.types.ResRet.f32 %1380, 3
  %1385 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %29, float %1200, float %1218, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = extractvalue %dx.types.ResRet.f32 %1385, 1
  %1388 = extractvalue %dx.types.ResRet.f32 %1385, 2
  %1389 = extractvalue %dx.types.ResRet.f32 %1385, 3
  %1390 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %29, float %1200, float %1218, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.ResRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.ResRet.f32 %1390, 2
  %1394 = extractvalue %dx.types.ResRet.f32 %1390, 3
  %1395 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %29, float %1200, float %1218, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.ResRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.ResRet.f32 %1395, 2
  %1399 = extractvalue %dx.types.ResRet.f32 %1395, 3
  %1400 = fadd fast float %1381, %1382
  %1401 = fadd fast float %1400, %1383
  %1402 = fadd fast float %1401, %1384
  %1403 = fmul fast float %1386, %1381
  %1404 = fmul fast float %1387, %1382
  %1405 = fadd fast float %1403, %1404
  %1406 = fmul fast float %1388, %1383
  %1407 = fadd fast float %1405, %1406
  %1408 = fmul fast float %1389, %1384
  %1409 = fadd fast float %1407, %1408
  %1410 = fmul fast float %1391, %1381
  %1411 = fmul fast float %1392, %1382
  %1412 = fadd fast float %1410, %1411
  %1413 = fmul fast float %1393, %1383
  %1414 = fadd fast float %1412, %1413
  %1415 = fmul fast float %1394, %1384
  %1416 = fadd fast float %1414, %1415
  %1417 = fmul fast float %1396, %1381
  %1418 = fmul fast float %1397, %1382
  %1419 = fadd fast float %1417, %1418
  %1420 = fmul fast float %1398, %1383
  %1421 = fadd fast float %1419, %1420
  %1422 = fmul fast float %1399, %1384
  %1423 = fadd fast float %1421, %1422
  %1424 = fcmp fast ogt float %1402, 0.000000e+00
  %1425 = fdiv fast float %1409, %1402
  %1426 = select i1 %1424, float %1425, float 0.000000e+00
  %1427 = fdiv fast float %1416, %1402
  %1428 = select i1 %1424, float %1427, float 0.000000e+00
  %1429 = fdiv fast float %1423, %1402
  %1430 = select i1 %1424, float %1429, float 0.000000e+00
  %1431 = fcmp fast ogt float %183, %1428
  %1432 = fcmp fast olt float %183, %1426
  %1433 = and i1 %1432, %1431
  br i1 %1433, label %1434, label %1501, !dx.controlflow.hints !86

; <label>:1434                                    ; preds = %1376
  %1435 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.f32 %1436, 2
  %1438 = extractvalue %dx.types.CBufRet.f32 %1436, 3
  br i1 %1164, label %1449, label %1439, !dx.controlflow.hints !87

; <label>:1439                                    ; preds = %1434
  %1440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 60)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 0
  %1442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 64)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.ResRet.f32 %1442, 1
  %1445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 72)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 96)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  br label %1449

; <label>:1449                                    ; preds = %1439, %1434
  %1450 = phi float [ %1441, %1439 ], [ %1213, %1434 ]
  %1451 = phi float [ %1446, %1439 ], [ %1211, %1434 ]
  %1452 = phi float [ %1448, %1439 ], [ %1435, %1434 ]
  %1453 = phi float [ %1443, %1439 ], [ %1437, %1434 ]
  %1454 = phi float [ %1444, %1439 ], [ %1438, %1434 ]
  %1455 = call float @dx.op.binary.f32(i32 35, float %1379, float 0.000000e+00)  ; FMax(a,b)
  %1456 = call float @dx.op.binary.f32(i32 36, float %1455, float 1.000000e+00)  ; FMin(a,b)
  %1457 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1458 = call float @dx.op.binary.f32(i32 35, float %1430, float 0x3F847AE140000000)  ; FMax(a,b)
  %1459 = fsub fast float %1426, %183
  %1460 = fsub fast float %183, %1428
  %1461 = call float @dx.op.binary.f32(i32 36, float %1460, float %1459)  ; FMin(a,b)
  %1462 = fdiv fast float %1461, %1458
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1464 = fsub fast float %183, %1451
  %1465 = fdiv fast float %1464, %1450
  %1466 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1467 = fsub fast float 1.000000e+00, %1466
  %1468 = fmul float %1463, %1467
  %1469 = fmul float %1468, %1468
  %1470 = fmul fast float %1457, %1370
  %1471 = fmul fast float %1470, %1469
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 2
  %1474 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1475 = fsub fast float %1471, %1474
  %1476 = fsub fast float %1473, %1474
  %1477 = fdiv fast float %1475, %1476
  %1478 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1479 = fmul fast float %1478, %1452
  %1480 = fcmp fast ogt float %1454, 0.000000e+00
  br i1 %1480, label %1481, label %1501, !dx.controlflow.hints !88

; <label>:1481                                    ; preds = %1449
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 0
  %1484 = extractvalue %dx.types.CBufRet.f32 %1482, 1
  %1485 = extractvalue %dx.types.CBufRet.f32 %1482, 2
  %1486 = fsub fast float %181, %1483
  %1487 = fsub fast float %182, %1484
  %1488 = fsub fast float %183, %1485
  %1489 = fmul fast float %1486, %1486
  %1490 = fmul fast float %1487, %1487
  %1491 = fadd fast float %1489, %1490
  %1492 = fmul fast float %1488, %1488
  %1493 = fadd fast float %1491, %1492
  %1494 = call float @dx.op.unary.f32(i32 24, float %1493)  ; Sqrt(value)
  %1495 = fsub fast float %1494, %1453
  %1496 = fsub fast float %1454, %1453
  %1497 = fdiv fast float %1495, %1496
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1499 = fmul fast float %1498, %1498
  %1500 = fmul fast float %1499, %1479
  br label %1501

; <label>:1501                                    ; preds = %1481, %1449, %1376, %1184
  %1502 = phi float [ 0.000000e+00, %1184 ], [ 0.000000e+00, %1376 ], [ %1500, %1481 ], [ %1479, %1449 ]
  %1503 = fcmp fast oeq float %1502, 0.000000e+00
  br i1 %1503, label %1882, label %1504, !dx.controlflow.hints !89

; <label>:1504                                    ; preds = %1501
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.CBufRet.f32 %1505, 2
  %1509 = fsub fast float %181, %1506
  %1510 = fadd fast float %1509, %1508
  %1511 = fsub fast float %182, %1507
  %1512 = fadd fast float %1511, %1508
  %1513 = extractvalue %dx.types.CBufRet.f32 %1505, 3
  %1514 = fmul fast float %1510, %1513
  %1515 = fmul fast float %1512, %1513
  %1516 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1517 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1518 = fsub fast float 1.000000e+00, %1516
  %1519 = fsub fast float 1.000000e+00, %1517
  %1520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %29, float %1518, float %1519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1524 = fmul fast float %1523, %1521
  %1525 = extractvalue %dx.types.CBufRet.f32 %1522, 3
  %1526 = fadd fast float %1525, %1524
  %1527 = fcmp fast ogt float %1521, 0.000000e+00
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 32768
  %1531 = icmp ne i32 %1530, 0
  %1532 = and i1 %1527, %1531
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 3
  %1535 = fadd fast float %1534, %1526
  %1536 = fcmp fast ole float %183, %1535
  %1537 = and i1 %1532, %1536
  %1538 = xor i1 %1537, true
  %1539 = icmp ne i32 %1191, 0
  %1540 = and i1 %1539, %1538
  %1541 = icmp ne i32 %1192, 0
  %1542 = and i1 %1541, %1537
  %1543 = or i1 %1540, %1542
  br i1 %1543, label %1882, label %1544, !dx.controlflow.hints !90

; <label>:1544                                    ; preds = %1504
  %1545 = fsub fast float %183, %1526
  %1546 = call float @dx.op.unary.f32(i32 6, float %1545)  ; FAbs(value)
  %1547 = fdiv fast float %1546, %1190
  %1548 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1549 = fmul fast float %1548, %1502
  %1550 = fcmp fast une float %1188, 0.000000e+00
  br i1 %1550, label %1551, label %1870, !dx.controlflow.hints !91

; <label>:1551                                    ; preds = %1544
  %1552 = fmul fast float %1188, %109
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 0
  %1555 = extractvalue %dx.types.CBufRet.f32 %1553, 1
  %1556 = extractvalue %dx.types.CBufRet.f32 %1553, 2
  %1557 = fmul fast float %1554, %1552
  %1558 = fmul fast float %1555, %1552
  %1559 = fmul fast float %1556, %1552
  %1560 = fadd fast float %1557, %181
  %1561 = fadd fast float %1558, %182
  %1562 = fadd fast float %1559, %183
  %1563 = fmul fast float %1188, 2.000000e+00
  %1564 = call float @dx.op.binary.f32(i32 35, float %376, float %1563)  ; FMax(a,b)
  %1565 = fsub fast float %1560, %1193
  %1566 = fsub fast float %1561, %1194
  %1567 = fmul fast float %1565, %1198
  %1568 = fmul fast float %1566, %1199
  %1569 = call float @dx.op.binary.f32(i32 36, float %1567, float %1568)  ; FMin(a,b)
  %1570 = fcmp fast olt float %1569, 0.000000e+00
  %1571 = call float @dx.op.binary.f32(i32 35, float %1567, float %1568)  ; FMax(a,b)
  %1572 = fcmp fast ogt float %1571, 1.000000e+00
  %1573 = or i1 %1570, %1572
  %1574 = fcmp fast olt float %1562, %1207
  %1575 = or i1 %1573, %1574
  %1576 = fcmp fast ogt float %1562, %1214
  %1577 = or i1 %1575, %1576
  br i1 %1577, label %1862, label %1578, !dx.controlflow.hints !80

; <label>:1578                                    ; preds = %1551
  %1579 = fsub fast float 1.000000e+00, %1568
  %1580 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 3
  %1583 = extractvalue %dx.types.CBufRet.f32 %1581, 2
  %1584 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.CBufRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.CBufRet.f32 %1585, 2
  %1589 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  br i1 %1164, label %1605, label %1590, !dx.controlflow.hints !81

; <label>:1590                                    ; preds = %1578
  %1591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 48)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.ResRet.f32 %1591, 1
  %1594 = extractvalue %dx.types.ResRet.f32 %1591, 2
  %1595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 104)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.f32 %1595, 0
  %1597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 108)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.f32 %1597, 0
  %1599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 112)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.f32 %1599, 0
  %1601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 116)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 120)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.f32 %1603, 0
  br label %1605

; <label>:1605                                    ; preds = %1590, %1578
  %1606 = phi float [ %1598, %1590 ], [ %1580, %1578 ]
  %1607 = phi float [ %1602, %1590 ], [ %1582, %1578 ]
  %1608 = phi float [ %1604, %1590 ], [ %1583, %1578 ]
  %1609 = phi float [ %1600, %1590 ], [ %1584, %1578 ]
  %1610 = phi float [ %1592, %1590 ], [ %1586, %1578 ]
  %1611 = phi float [ %1593, %1590 ], [ %1587, %1578 ]
  %1612 = phi float [ %1594, %1590 ], [ %1588, %1578 ]
  %1613 = phi float [ %1596, %1590 ], [ %1589, %1578 ]
  %1614 = fcmp fast oeq float %1606, 0.000000e+00
  br i1 %1614, label %1730, label %1615, !dx.controlflow.hints !82

; <label>:1615                                    ; preds = %1605
  %1616 = fcmp fast ogt float %1607, 0.000000e+00
  %1617 = fcmp fast oeq float %1564, 0.000000e+00
  br i1 %1617, label %1622, label %1618, !dx.controlflow.hints !66

; <label>:1618                                    ; preds = %1615
  %1619 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1620 = fmul fast float %1619, %1564
  %1621 = call float @dx.op.unary.f32(i32 23, float %1620)  ; Log(value)
  br label %1622

; <label>:1622                                    ; preds = %1618, %1615
  %1623 = phi float [ %1621, %1618 ], [ 0.000000e+00, %1615 ]
  br i1 %1617, label %1628, label %1624, !dx.controlflow.hints !66

; <label>:1624                                    ; preds = %1622
  %1625 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1626 = fmul fast float %1625, %1564
  %1627 = call float @dx.op.unary.f32(i32 23, float %1626)  ; Log(value)
  br label %1628

; <label>:1628                                    ; preds = %1624, %1622
  %1629 = phi float [ %1627, %1624 ], [ 0.000000e+00, %1622 ]
  br i1 %1616, label %1630, label %1692, !dx.controlflow.hints !83

; <label>:1630                                    ; preds = %1628
  %1631 = fcmp fast ogt float %1608, 0.000000e+00
  br i1 %1631, label %1632, label %1642, !dx.controlflow.hints !84

; <label>:1632                                    ; preds = %1630
  %1633 = fmul fast float %1608, %1567
  %1634 = fmul fast float %1608, %1579
  %1635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1633, float %1634, float undef, float undef, i32 0, i32 0, i32 undef, float %1629)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.ResRet.f32 %1635, 1
  %1638 = fmul fast float %1636, 2.000000e+00
  %1639 = fmul fast float %1637, 2.000000e+00
  %1640 = fadd fast float %1638, -1.000000e+00
  %1641 = fadd fast float %1639, -1.000000e+00
  br label %1663

; <label>:1642                                    ; preds = %1630
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 3
  %1645 = fmul fast float %1644, %1567
  %1646 = fmul fast float %1644, %1579
  %1647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %1645, float %1646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1648 = extractvalue %dx.types.ResRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.ResRet.f32 %1647, 1
  %1650 = extractvalue %dx.types.ResRet.f32 %1647, 2
  %1651 = fmul fast float %1648, 2.000000e+00
  %1652 = fmul fast float %1649, 2.000000e+00
  %1653 = fmul fast float %1650, 2.000000e+00
  %1654 = fadd fast float %1651, -1.000000e+00
  %1655 = fadd fast float %1652, -1.000000e+00
  %1656 = fadd fast float %1653, -1.000000e+00
  %1657 = extractvalue %dx.types.CBufRet.f32 %1212, 1
  %1658 = fmul fast float %1654, %1657
  %1659 = fmul fast float %1655, %1657
  %1660 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1661 = fmul fast float %1660, 5.000000e-01
  %1662 = fmul fast float %1661, %1656
  br label %1663

; <label>:1663                                    ; preds = %1642, %1632
  %1664 = phi float [ %1640, %1632 ], [ %1658, %1642 ]
  %1665 = phi float [ %1641, %1632 ], [ %1659, %1642 ]
  %1666 = phi float [ 0.000000e+00, %1632 ], [ %1662, %1642 ]
  %1667 = fmul fast float %1606, %1560
  %1668 = fmul fast float %1606, %1561
  %1669 = fmul fast float %1606, %1562
  %1670 = call float @dx.op.unary.f32(i32 22, float %1607)  ; Frc(value)
  %1671 = fmul fast float %1670, %1664
  %1672 = fmul fast float %1670, %1665
  %1673 = fmul fast float %1670, %1666
  %1674 = fsub fast float %1667, %1671
  %1675 = fsub fast float %1668, %1672
  %1676 = fsub fast float %1669, %1673
  %1677 = fadd fast float %1607, 5.000000e-01
  %1678 = call float @dx.op.unary.f32(i32 22, float %1677)  ; Frc(value)
  %1679 = fmul fast float %1678, %1664
  %1680 = fmul fast float %1678, %1665
  %1681 = fmul fast float %1678, %1666
  %1682 = fadd fast float %1667, -5.000000e-01
  %1683 = fsub fast float %1682, %1679
  %1684 = fadd fast float %1668, -5.000000e-01
  %1685 = fsub fast float %1684, %1680
  %1686 = fadd fast float %1669, -5.000000e-01
  %1687 = fsub fast float %1686, %1681
  %1688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %1683, float %1685, float %1687, float undef, i32 0, i32 0, i32 0, float %1623)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1689 = extractvalue %dx.types.ResRet.f32 %1688, 0
  %1690 = extractvalue %dx.types.ResRet.f32 %1688, 1
  %1691 = fadd fast float %1689, %1609
  br label %1702

; <label>:1692                                    ; preds = %1628
  %1693 = fmul fast float %1613, %1610
  %1694 = fmul fast float %1613, %1611
  %1695 = fmul fast float %1613, %1612
  %1696 = fsub fast float %1560, %1693
  %1697 = fsub fast float %1561, %1694
  %1698 = fsub fast float %1562, %1695
  %1699 = fmul fast float %1696, %1606
  %1700 = fmul fast float %1697, %1606
  %1701 = fmul fast float %1698, %1606
  br label %1702

; <label>:1702                                    ; preds = %1692, %1663
  %1703 = phi float [ %1674, %1663 ], [ %1699, %1692 ]
  %1704 = phi float [ %1675, %1663 ], [ %1700, %1692 ]
  %1705 = phi float [ %1676, %1663 ], [ %1701, %1692 ]
  %1706 = phi float [ %1691, %1663 ], [ 0.000000e+00, %1692 ]
  %1707 = phi float [ %1690, %1663 ], [ 0.000000e+00, %1692 ]
  %1708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %1703, float %1704, float %1705, float undef, i32 0, i32 0, i32 0, float %1623)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = fadd fast float %1709, %1609
  br i1 %1616, label %1712, label %1723, !dx.controlflow.hints !85

; <label>:1712                                    ; preds = %1702
  %1713 = call float @dx.op.unary.f32(i32 22, float %1607)  ; Frc(value)
  %1714 = fmul fast float %1713, 2.000000e+00
  %1715 = fadd fast float %1714, -1.000000e+00
  %1716 = call float @dx.op.unary.f32(i32 6, float %1715)  ; FAbs(value)
  %1717 = fsub fast float %1706, %1711
  %1718 = fmul fast float %1716, %1717
  %1719 = fadd fast float %1718, %1711
  %1720 = fsub fast float %1707, %1710
  %1721 = fmul fast float %1716, %1720
  %1722 = fadd fast float %1721, %1710
  br label %1723

; <label>:1723                                    ; preds = %1712, %1702
  %1724 = phi float [ %1719, %1712 ], [ %1711, %1702 ]
  %1725 = phi float [ %1722, %1712 ], [ %1710, %1702 ]
  %1726 = fsub fast float %1724, %1725
  %1727 = fsub fast float 1.000000e+00, %1725
  %1728 = fdiv fast float %1726, %1727
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  br label %1730

; <label>:1730                                    ; preds = %1723, %1605
  %1731 = phi float [ %1729, %1723 ], [ 1.000000e+00, %1605 ]
  %1732 = fcmp fast oeq float %1564, 0.000000e+00
  br i1 %1732, label %1737, label %1733, !dx.controlflow.hints !66

; <label>:1733                                    ; preds = %1730
  %1734 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1735 = fmul fast float %1734, %1564
  %1736 = call float @dx.op.unary.f32(i32 23, float %1735)  ; Log(value)
  br label %1737

; <label>:1737                                    ; preds = %1733, %1730
  %1738 = phi float [ %1736, %1733 ], [ 0.000000e+00, %1730 ]
  %1739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %27, float %1567, float %1579, float undef, float undef, i32 0, i32 0, i32 undef, float %1738)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %29, float %1567, float %1579, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.ResRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.ResRet.f32 %1741, 2
  %1745 = extractvalue %dx.types.ResRet.f32 %1741, 3
  %1746 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %29, float %1567, float %1579, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.ResRet.f32 %1746, 2
  %1750 = extractvalue %dx.types.ResRet.f32 %1746, 3
  %1751 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %29, float %1567, float %1579, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.ResRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.ResRet.f32 %1751, 2
  %1755 = extractvalue %dx.types.ResRet.f32 %1751, 3
  %1756 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %29, float %1567, float %1579, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  %1758 = extractvalue %dx.types.ResRet.f32 %1756, 1
  %1759 = extractvalue %dx.types.ResRet.f32 %1756, 2
  %1760 = extractvalue %dx.types.ResRet.f32 %1756, 3
  %1761 = fadd fast float %1742, %1743
  %1762 = fadd fast float %1761, %1744
  %1763 = fadd fast float %1762, %1745
  %1764 = fmul fast float %1747, %1742
  %1765 = fmul fast float %1748, %1743
  %1766 = fadd fast float %1764, %1765
  %1767 = fmul fast float %1749, %1744
  %1768 = fadd fast float %1766, %1767
  %1769 = fmul fast float %1750, %1745
  %1770 = fadd fast float %1768, %1769
  %1771 = fmul fast float %1752, %1742
  %1772 = fmul fast float %1753, %1743
  %1773 = fadd fast float %1771, %1772
  %1774 = fmul fast float %1754, %1744
  %1775 = fadd fast float %1773, %1774
  %1776 = fmul fast float %1755, %1745
  %1777 = fadd fast float %1775, %1776
  %1778 = fmul fast float %1757, %1742
  %1779 = fmul fast float %1758, %1743
  %1780 = fadd fast float %1778, %1779
  %1781 = fmul fast float %1759, %1744
  %1782 = fadd fast float %1780, %1781
  %1783 = fmul fast float %1760, %1745
  %1784 = fadd fast float %1782, %1783
  %1785 = fcmp fast ogt float %1763, 0.000000e+00
  %1786 = fdiv fast float %1770, %1763
  %1787 = select i1 %1785, float %1786, float 0.000000e+00
  %1788 = fdiv fast float %1777, %1763
  %1789 = select i1 %1785, float %1788, float 0.000000e+00
  %1790 = fdiv fast float %1784, %1763
  %1791 = select i1 %1785, float %1790, float 0.000000e+00
  %1792 = fcmp fast ogt float %1562, %1789
  %1793 = fcmp fast olt float %1562, %1787
  %1794 = and i1 %1793, %1792
  br i1 %1794, label %1795, label %1862, !dx.controlflow.hints !86

; <label>:1795                                    ; preds = %1737
  %1796 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 2
  %1799 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  br i1 %1164, label %1810, label %1800, !dx.controlflow.hints !87

; <label>:1800                                    ; preds = %1795
  %1801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 60)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.f32 %1801, 0
  %1803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 64)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = extractvalue %dx.types.ResRet.f32 %1803, 1
  %1806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 72)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.f32 %1806, 0
  %1808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1163, i32 96)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.f32 %1808, 0
  br label %1810

; <label>:1810                                    ; preds = %1800, %1795
  %1811 = phi float [ %1802, %1800 ], [ %1213, %1795 ]
  %1812 = phi float [ %1807, %1800 ], [ %1211, %1795 ]
  %1813 = phi float [ %1809, %1800 ], [ %1796, %1795 ]
  %1814 = phi float [ %1804, %1800 ], [ %1798, %1795 ]
  %1815 = phi float [ %1805, %1800 ], [ %1799, %1795 ]
  %1816 = call float @dx.op.binary.f32(i32 35, float %1740, float 0.000000e+00)  ; FMax(a,b)
  %1817 = call float @dx.op.binary.f32(i32 36, float %1816, float 1.000000e+00)  ; FMin(a,b)
  %1818 = call float @dx.op.unary.f32(i32 24, float %1817)  ; Sqrt(value)
  %1819 = call float @dx.op.binary.f32(i32 35, float %1791, float 0x3F847AE140000000)  ; FMax(a,b)
  %1820 = fsub fast float %1787, %1562
  %1821 = fsub fast float %1562, %1789
  %1822 = call float @dx.op.binary.f32(i32 36, float %1821, float %1820)  ; FMin(a,b)
  %1823 = fdiv fast float %1822, %1819
  %1824 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1825 = fsub fast float %1562, %1812
  %1826 = fdiv fast float %1825, %1811
  %1827 = call float @dx.op.unary.f32(i32 7, float %1826)  ; Saturate(value)
  %1828 = fsub fast float 1.000000e+00, %1827
  %1829 = fmul float %1824, %1828
  %1830 = fmul float %1829, %1829
  %1831 = fmul fast float %1818, %1731
  %1832 = fmul fast float %1831, %1830
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1836 = fsub fast float %1832, %1835
  %1837 = fsub fast float %1834, %1835
  %1838 = fdiv fast float %1836, %1837
  %1839 = call float @dx.op.unary.f32(i32 7, float %1838)  ; Saturate(value)
  %1840 = fmul fast float %1839, %1813
  %1841 = fcmp fast ogt float %1815, 0.000000e+00
  br i1 %1841, label %1842, label %1862, !dx.controlflow.hints !88

; <label>:1842                                    ; preds = %1810
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.CBufRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1847 = fsub fast float %1560, %1844
  %1848 = fsub fast float %1561, %1845
  %1849 = fsub fast float %1562, %1846
  %1850 = fmul fast float %1847, %1847
  %1851 = fmul fast float %1848, %1848
  %1852 = fadd fast float %1850, %1851
  %1853 = fmul fast float %1849, %1849
  %1854 = fadd fast float %1852, %1853
  %1855 = call float @dx.op.unary.f32(i32 24, float %1854)  ; Sqrt(value)
  %1856 = fsub fast float %1855, %1814
  %1857 = fsub fast float %1815, %1814
  %1858 = fdiv fast float %1856, %1857
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = fmul fast float %1859, %1859
  %1861 = fmul fast float %1860, %1840
  br label %1862

; <label>:1862                                    ; preds = %1842, %1810, %1737, %1551
  %1863 = phi float [ 0.000000e+00, %1551 ], [ 0.000000e+00, %1737 ], [ %1861, %1842 ], [ %1840, %1810 ]
  %1864 = fsub fast float %1549, %1863
  %1865 = fdiv fast float %1864, %1549
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = fsub fast float 1.000000e+00, %1189
  %1868 = fmul fast float %1866, %1867
  %1869 = fadd fast float %1868, %1189
  br label %1870

; <label>:1870                                    ; preds = %1862, %1544
  %1871 = phi float [ %1869, %1862 ], [ 1.000000e+00, %1544 ]
  %1872 = fadd fast float %1549, %1088
  %1873 = fmul fast float %1549, %1185
  %1874 = fmul fast float %1873, %1871
  %1875 = fmul fast float %1549, %1186
  %1876 = fmul fast float %1875, %1871
  %1877 = fmul fast float %1549, %1187
  %1878 = fmul fast float %1877, %1871
  %1879 = fadd fast float %1874, %1085
  %1880 = fadd fast float %1876, %1086
  %1881 = fadd fast float %1878, %1087
  br label %1882

; <label>:1882                                    ; preds = %1870, %1504, %1501, %1084
  %1883 = phi float [ %1085, %1084 ], [ %1085, %1501 ], [ %1085, %1504 ], [ %1879, %1870 ]
  %1884 = phi float [ %1086, %1084 ], [ %1086, %1501 ], [ %1086, %1504 ], [ %1880, %1870 ]
  %1885 = phi float [ %1087, %1084 ], [ %1087, %1501 ], [ %1087, %1504 ], [ %1881, %1870 ]
  %1886 = phi float [ %1088, %1084 ], [ %1088, %1501 ], [ %1088, %1504 ], [ %1872, %1870 ]
  %1887 = and i32 %295, 4
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %2052, label %1889, !dx.controlflow.hints !92

; <label>:1889                                    ; preds = %1882
  %1890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.i32 %1890, 1
  %1892 = icmp eq i32 %1891, 0
  br i1 %1892, label %2052, label %1893

; <label>:1893                                    ; preds = %1889
  br label %1894

; <label>:1894                                    ; preds = %2044, %1893
  %1895 = phi i32 [ %2049, %2044 ], [ 0, %1893 ]
  %1896 = phi float [ %2045, %2044 ], [ %1883, %1893 ]
  %1897 = phi float [ %2046, %2044 ], [ %1884, %1893 ]
  %1898 = phi float [ %2047, %2044 ], [ %1885, %1893 ]
  %1899 = phi float [ %2048, %2044 ], [ %1886, %1893 ]
  %1900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.i32 %1900, 1
  %1902 = call i32 @dx.op.tertiary.i32(i32 49, i32 %293, i32 %1901, i32 %1895)  ; UMad(a,b,c)
  %1903 = shl i32 %1902, 2
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %2044, label %1907

; <label>:1907                                    ; preds = %1894
  br label %1908

; <label>:1908                                    ; preds = %2032, %1907
  %1909 = phi i32 [ %1918, %2032 ], [ %1905, %1907 ]
  %1910 = phi float [ %2038, %2032 ], [ %1896, %1907 ]
  %1911 = phi float [ %2039, %2032 ], [ %1897, %1907 ]
  %1912 = phi float [ %2040, %2032 ], [ %1898, %1907 ]
  %1913 = phi float [ %2041, %2032 ], [ %1899, %1907 ]
  %1914 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1909)  ; FirstbitLo(value)
  %1915 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1895, i32 %1914)  ; UMad(a,b,c)
  %1916 = and i32 %1914, 31
  %1917 = shl i32 1, %1916
  %1918 = xor i32 %1917, %1909
  %1919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1915, i32 0)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1915, i32 4)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1915, i32 16)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = extractvalue %dx.types.ResRet.f32 %1923, 1
  %1926 = extractvalue %dx.types.ResRet.f32 %1923, 2
  %1927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1915, i32 32)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = extractvalue %dx.types.ResRet.f32 %1927, 1
  %1930 = extractvalue %dx.types.ResRet.f32 %1927, 2
  %1931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1915, i32 44)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.f32 %1931, 0
  %1933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1915, i32 48)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.f32 %1933, 0
  %1935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1915, i32 52)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1915, i32 56)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1915, i32 64)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.ResRet.f32 %1939, 1
  %1942 = extractvalue %dx.types.ResRet.f32 %1939, 2
  %1943 = mul i32 %1915, 60
  %1944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.ResRet.f32 %1944, 1
  %1947 = extractvalue %dx.types.ResRet.f32 %1944, 2
  %1948 = add i32 %1943, 12
  %1949 = add i32 %1943, 48
  %1950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1949, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.f32 %1950, 2
  %1952 = fsub fast float %181, %1945
  %1953 = fsub fast float %182, %1946
  %1954 = fsub fast float %183, %1947
  %1955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.f32 %1955, 0
  %1957 = extractvalue %dx.types.ResRet.f32 %1955, 1
  %1958 = extractvalue %dx.types.ResRet.f32 %1955, 2
  %1959 = call float @dx.op.dot3.f32(i32 55, float %1952, float %1953, float %1954, float %1956, float %1957, float %1958)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = add i32 %1943, 24
  %1961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1963 = extractvalue %dx.types.ResRet.f32 %1961, 1
  %1964 = extractvalue %dx.types.ResRet.f32 %1961, 2
  %1965 = call float @dx.op.dot3.f32(i32 55, float %1952, float %1953, float %1954, float %1962, float %1963, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1966 = add i32 %1943, 36
  %1967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.f32 %1967, 0
  %1969 = extractvalue %dx.types.ResRet.f32 %1967, 1
  %1970 = extractvalue %dx.types.ResRet.f32 %1967, 2
  %1971 = call float @dx.op.dot3.f32(i32 55, float %1952, float %1953, float %1954, float %1968, float %1969, float %1970)  ; Dot3(ax,ay,az,bx,by,bz)
  %1972 = call float @dx.op.unary.f32(i32 6, float %1959)  ; FAbs(value)
  %1973 = call float @dx.op.unary.f32(i32 6, float %1965)  ; FAbs(value)
  %1974 = call float @dx.op.unary.f32(i32 6, float %1971)  ; FAbs(value)
  %1975 = fmul fast float %1972, %1932
  %1976 = fmul fast float %1973, %1932
  %1977 = fmul fast float %1974, %1932
  %1978 = fadd fast float %1975, %1928
  %1979 = fadd fast float %1976, %1929
  %1980 = fadd fast float %1977, %1930
  %1981 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1982 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1983 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1984 = fmul fast float %1981, %1981
  %1985 = fmul fast float %1982, %1982
  %1986 = fadd fast float %1985, %1984
  %1987 = fmul fast float %1983, %1983
  %1988 = fadd fast float %1986, %1987
  %1989 = call float @dx.op.unary.f32(i32 24, float %1988)  ; Sqrt(value)
  %1990 = fsub fast float 1.000000e+00, %1989
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fmul fast float %1991, %1920
  %1993 = fmul fast float %1951, 2.000000e+00
  %1994 = fadd fast float %1971, %1951
  %1995 = call float @dx.op.binary.f32(i32 35, float %1994, float 0.000000e+00)  ; FMax(a,b)
  %1996 = call float @dx.op.binary.f32(i32 36, float %1995, float %1993)  ; FMin(a,b)
  %1997 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1996)  ; FMax(a,b)
  %1998 = fmul fast float %1922, 0x3FF7154760000000
  %1999 = fmul fast float %1998, %1997
  %2000 = call float @dx.op.unary.f32(i32 21, float %1999)  ; Exp(value)
  %2001 = fmul fast float %1992, %2000
  %2002 = fcmp fast oeq float %376, 0.000000e+00
  br i1 %2002, label %2008, label %2003, !dx.controlflow.hints !66

; <label>:2003                                    ; preds = %1908
  %2004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.f32 %2004, 3
  %2006 = fmul fast float %2005, %376
  %2007 = call float @dx.op.unary.f32(i32 23, float %2006)  ; Log(value)
  br label %2008

; <label>:2008                                    ; preds = %2003, %1908
  %2009 = phi float [ %2007, %2003 ], [ 0.000000e+00, %1908 ]
  %2010 = fcmp fast oeq float %1934, 0.000000e+00
  br i1 %2010, label %2032, label %2011, !dx.controlflow.hints !93

; <label>:2011                                    ; preds = %2008
  %2012 = fmul fast float %1940, %1938
  %2013 = fmul fast float %1941, %1938
  %2014 = fmul fast float %1942, %1938
  %2015 = fsub fast float %181, %2012
  %2016 = fsub fast float %182, %2013
  %2017 = fsub fast float %183, %2014
  %2018 = fmul fast float %2015, %1934
  %2019 = fmul fast float %2016, %1934
  %2020 = fmul fast float %2017, %1934
  %2021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %2018, float %2019, float %2020, float undef, i32 0, i32 0, i32 0, float %2009)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = extractvalue %dx.types.ResRet.f32 %2021, 1
  %2024 = fdiv fast float 1.000000e+00, %1936
  %2025 = fmul fast float %1936, 2.000000e+00
  %2026 = fadd fast float %2025, -1.000000e+00
  %2027 = fadd fast float %2026, %2023
  %2028 = fadd fast float %2027, %2022
  %2029 = fmul fast float %2028, %2024
  %2030 = fadd fast float %2029, -1.000000e+00
  %2031 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  br label %2032

; <label>:2032                                    ; preds = %2011, %2008
  %2033 = phi float [ %2031, %2011 ], [ 1.000000e+00, %2008 ]
  %2034 = fmul fast float %2001, %2033
  %2035 = fmul fast float %2034, %1924
  %2036 = fmul fast float %2034, %1925
  %2037 = fmul fast float %2034, %1926
  %2038 = fadd fast float %2035, %1910
  %2039 = fadd fast float %2036, %1911
  %2040 = fadd fast float %2037, %1912
  %2041 = fadd fast float %2034, %1913
  %2042 = icmp eq i32 %1909, %1917
  br i1 %2042, label %2043, label %1908, !llvm.loop !94

; <label>:2043                                    ; preds = %2032
  br label %2044

; <label>:2044                                    ; preds = %2043, %1894
  %2045 = phi float [ %1896, %1894 ], [ %2038, %2043 ]
  %2046 = phi float [ %1897, %1894 ], [ %2039, %2043 ]
  %2047 = phi float [ %1898, %1894 ], [ %2040, %2043 ]
  %2048 = phi float [ %1899, %1894 ], [ %2041, %2043 ]
  %2049 = add i32 %1895, 1
  %2050 = icmp ult i32 %2049, %1901
  br i1 %2050, label %1894, label %2051, !llvm.loop !95

; <label>:2051                                    ; preds = %2044
  br label %2052

; <label>:2052                                    ; preds = %2051, %1889, %1882
  %2053 = phi float [ %1883, %1882 ], [ %1883, %1889 ], [ %2045, %2051 ]
  %2054 = phi float [ %1884, %1882 ], [ %1884, %1889 ], [ %2046, %2051 ]
  %2055 = phi float [ %1885, %1882 ], [ %1885, %1889 ], [ %2047, %2051 ]
  %2056 = phi float [ %1886, %1882 ], [ %1886, %1889 ], [ %2048, %2051 ]
  %2057 = fcmp fast ogt float %2056, 0.000000e+00
  br i1 %2057, label %2058, label %2085, !dx.controlflow.hints !96

; <label>:2058                                    ; preds = %2052
  %2059 = fdiv fast float 1.000000e+00, %2056
  %2060 = fmul fast float %2059, %2053
  %2061 = fmul fast float %2059, %2054
  %2062 = fmul fast float %2059, %2055
  %2063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %27, float %130, float %131, float %132, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  %2065 = extractvalue %dx.types.ResRet.f32 %2063, 1
  %2066 = extractvalue %dx.types.ResRet.f32 %2063, 2
  %2067 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2064)  ; IsNaN(value)
  %2068 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2065)  ; IsNaN(value)
  %2069 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2066)  ; IsNaN(value)
  %2070 = or i1 %2067, %2068
  %2071 = or i1 %2070, %2069
  %2072 = select i1 %2071, float 0.000000e+00, float %2064
  %2073 = select i1 %2071, float 0.000000e+00, float %2065
  %2074 = select i1 %2071, float 0.000000e+00, float %2066
  %2075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2076 = extractvalue %dx.types.CBufRet.f32 %2075, 1
  %2077 = fmul fast float %2072, %2076
  %2078 = fmul fast float %2073, %2076
  %2079 = fmul fast float %2074, %2076
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 3
  %2082 = fmul fast float %2077, %2081
  %2083 = fmul fast float %2078, %2081
  %2084 = fmul fast float %2079, %2081
  br label %2085

; <label>:2085                                    ; preds = %2058, %2052
  %2086 = phi float [ %2060, %2058 ], [ %2053, %2052 ]
  %2087 = phi float [ %2061, %2058 ], [ %2054, %2052 ]
  %2088 = phi float [ %2062, %2058 ], [ %2055, %2052 ]
  %2089 = phi float [ %2082, %2058 ], [ 0.000000e+00, %2052 ]
  %2090 = phi float [ %2083, %2058 ], [ 0.000000e+00, %2052 ]
  %2091 = phi float [ %2084, %2058 ], [ 0.000000e+00, %2052 ]
  %2092 = fmul fast float %2086, %2056
  %2093 = fmul fast float %2087, %2056
  %2094 = fmul fast float %2088, %2056
  %2095 = fmul fast float %2092, %2089
  %2096 = fmul fast float %2093, %2090
  %2097 = fmul fast float %2094, %2091
  %2098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.CBufRet.f32 %2098, 1
  %2101 = extractvalue %dx.types.CBufRet.f32 %2098, 2
  %2102 = extractvalue %dx.types.CBufRet.f32 %2098, 3
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.CBufRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.CBufRet.f32 %2103, 2
  %2107 = extractvalue %dx.types.CBufRet.f32 %2103, 3
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2111 = extractvalue %dx.types.CBufRet.f32 %2108, 2
  %2112 = extractvalue %dx.types.CBufRet.f32 %2108, 3
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = extractvalue %dx.types.CBufRet.f32 %2113, 1
  %2116 = extractvalue %dx.types.CBufRet.f32 %2113, 2
  %2117 = extractvalue %dx.types.CBufRet.f32 %2113, 3
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 3
  %2120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2120, 3
  %2122 = extractvalue %dx.types.CBufRet.f32 %2120, 0
  %2123 = extractvalue %dx.types.CBufRet.f32 %2120, 1
  %2124 = extractvalue %dx.types.CBufRet.f32 %2120, 2
  %2125 = fcmp fast olt float %2124, -5.000000e-01
  %2126 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float %174, float %175, float %176)  ; Dot3(ax,ay,az,bx,by,bz)
  %2127 = call float @dx.op.unary.f32(i32 25, float %2126)  ; Rsqrt(value)
  %2128 = fmul fast float %2127, %2126
  %2129 = fmul fast float %2127, %174
  %2130 = fmul fast float %2127, %175
  %2131 = fmul fast float %2127, %176
  %2132 = fadd fast float %2128, %2102
  %2133 = call float @dx.op.dot3.f32(i32 55, float %2129, float %2130, float %2131, float %2099, float %2100, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %2134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.i32 %2134, 1
  %2136 = and i32 %2135, 1
  %2137 = icmp ne i32 %2136, 0
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 2
  %2140 = fcmp fast ogt float %2139, 0.000000e+00
  %2141 = and i1 %2137, %2140
  br i1 %2141, label %2142, label %2548, !dx.controlflow.hints !97

; <label>:2142                                    ; preds = %2085
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 3
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2148 = extractvalue %dx.types.CBufRet.f32 %2147, 2
  %2149 = fsub fast float %2146, %2148
  %2150 = and i32 %2135, 2
  %2151 = extractvalue %dx.types.CBufRet.i32 %2134, 0
  %2152 = call i32 @dx.op.binary.i32(i32 40, i32 %2151, i32 3)  ; UMin(a,b)
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 0
  %2155 = extractvalue %dx.types.CBufRet.f32 %2153, 1
  %2156 = extractvalue %dx.types.CBufRet.f32 %2147, 0
  %2157 = extractvalue %dx.types.CBufRet.f32 %2147, 1
  %2158 = fsub fast float %2154, %2156
  %2159 = fsub fast float %2155, %2157
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2162 = fcmp fast ogt float %2161, 0.000000e+00
  %2163 = fsub fast float -0.000000e+00, %2158
  %2164 = fsub fast float -0.000000e+00, %2159
  %2165 = call float @dx.op.dot2.f32(i32 54, float %2129, float %2130, float %2129, float %2130)  ; Dot2(ax,ay,bx,by)
  %2166 = call float @dx.op.dot2.f32(i32 54, float %2129, float %2130, float %2163, float %2164)  ; Dot2(ax,ay,bx,by)
  %2167 = fmul fast float %2166, 2.000000e+00
  %2168 = call float @dx.op.dot2.f32(i32 54, float %2163, float %2164, float %2163, float %2164)  ; Dot2(ax,ay,bx,by)
  %2169 = fmul fast float %2161, %2161
  %2170 = fsub fast float %2168, %2169
  %2171 = fmul fast float %2167, %2167
  %2172 = fmul fast float %2165, 4.000000e+00
  %2173 = fmul fast float %2172, %2170
  %2174 = fsub fast float %2171, %2173
  %2175 = fcmp fast ogt float %2174, 0.000000e+00
  br i1 %2175, label %2176, label %2191, !dx.controlflow.hints !98

; <label>:2176                                    ; preds = %2142
  %2177 = fcmp fast ogt float %2167, 0.000000e+00
  %2178 = call float @dx.op.unary.f32(i32 24, float %2174)  ; Sqrt(value)
  %2179 = fsub fast float -0.000000e+00, %2178
  %2180 = select i1 %2177, float %2178, float %2179
  %2181 = fadd fast float %2180, %2167
  %2182 = fmul float %2181, -5.000000e-01
  %2183 = fdiv fast float %2182, %2165
  %2184 = call float @dx.op.binary.f32(i32 35, float %2183, float 0.000000e+00)  ; FMax(a,b)
  %2185 = call float @dx.op.binary.f32(i32 36, float %2128, float %2184)  ; FMin(a,b)
  %2186 = fdiv fast float %2170, %2182
  %2187 = call float @dx.op.binary.f32(i32 35, float %2186, float 0.000000e+00)  ; FMax(a,b)
  %2188 = call float @dx.op.binary.f32(i32 36, float %2128, float %2187)  ; FMin(a,b)
  %2189 = call float @dx.op.binary.f32(i32 36, float %2185, float %2188)  ; FMin(a,b)
  %2190 = call float @dx.op.binary.f32(i32 35, float %2185, float %2188)  ; FMax(a,b)
  br label %2191

; <label>:2191                                    ; preds = %2176, %2142
  %2192 = phi float [ %2190, %2176 ], [ -1.000000e+00, %2142 ]
  %2193 = phi float [ %2189, %2176 ], [ -1.000000e+00, %2142 ]
  %2194 = phi i1 [ true, %2176 ], [ false, %2142 ]
  %2195 = and i1 %2162, %2194
  br i1 %2195, label %2196, label %2198, !dx.controlflow.hints !99

; <label>:2196                                    ; preds = %2191
  %2197 = fcmp fast oeq float %2193, %2192
  br i1 %2197, label %2501, label %2199, !dx.controlflow.hints !100

; <label>:2198                                    ; preds = %2191
  br i1 %2162, label %2501, label %2199, !dx.controlflow.hints !101

; <label>:2199                                    ; preds = %2198, %2196
  %2200 = phi float [ %2128, %2198 ], [ %2192, %2196 ]
  %2201 = phi float [ 0.000000e+00, %2198 ], [ %2193, %2196 ]
  %2202 = icmp ne i32 %2150, 0
  %2203 = fmul fast float %2200, %2131
  %2204 = fadd fast float %2203, %2144
  %2205 = fmul fast float %2204, %2200
  %2206 = select i1 %2202, float 0.000000e+00, float %2205
  %2207 = fcmp fast oeq float %2131, 0.000000e+00
  %2208 = fdiv fast float %2149, %2131
  %2209 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2208)  ; FMax(a,b)
  %2210 = select i1 %2207, float %2200, float %2209
  %2211 = call float @dx.op.binary.f32(i32 36, float %2200, float %2210)  ; FMin(a,b)
  %2212 = fcmp fast ogt float %2131, 0.000000e+00
  %2213 = fcmp fast olt float %2149, 0.000000e+00
  br i1 %2212, label %2214, label %2271, !dx.controlflow.hints !102

; <label>:2214                                    ; preds = %2199
  %2215 = icmp eq i32 %2150, 0
  br i1 %2213, label %2216, label %2260, !dx.controlflow.hints !103

; <label>:2216                                    ; preds = %2214
  %2217 = select i1 %2215, float %2200, float 0.000000e+00
  %2218 = fsub fast float -0.000000e+00, %2217
  %2219 = call float @dx.op.unary.f32(i32 6, float %2218)  ; FAbs(value)
  %2220 = fmul fast float %2217, %2131
  %2221 = fadd fast float %2220, %2144
  %2222 = fmul fast float %2219, %2221
  %2223 = fsub fast float %2206, %2222
  %2224 = fsub fast float %2200, %2219
  %2225 = select i1 %2215, float %2224, float 0.000000e+00
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 0
  %2228 = extractvalue %dx.types.CBufRet.f32 %2226, 1
  %2229 = extractvalue %dx.types.CBufRet.f32 %2226, 2
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 0
  %2232 = extractvalue %dx.types.CBufRet.f32 %2230, 1
  %2233 = extractvalue %dx.types.CBufRet.f32 %2230, 2
  %2234 = extractvalue %dx.types.CBufRet.f32 %2230, 3
  %2235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.f32 %2235, 3
  %2237 = call float @dx.op.binary.f32(i32 36, float %2223, float %2236)  ; FMin(a,b)
  %2238 = fmul fast float %2234, %2225
  %2239 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2240 = fsub fast float %2231, %2227
  %2241 = fsub fast float %2232, %2228
  %2242 = fsub fast float %2233, %2229
  %2243 = fmul fast float %2239, %2240
  %2244 = fmul fast float %2239, %2241
  %2245 = fmul fast float %2239, %2242
  %2246 = fadd fast float %2243, %2227
  %2247 = fadd fast float %2244, %2228
  %2248 = fadd fast float %2245, %2229
  %2249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2250 = extractvalue %dx.types.CBufRet.f32 %2249, 0
  %2251 = extractvalue %dx.types.CBufRet.f32 %2249, 1
  %2252 = fadd fast float %2251, %2250
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2249, 2
  %2255 = extractvalue %dx.types.CBufRet.f32 %2249, 3
  %2256 = fadd fast float %2255, %2254
  %2257 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2258 = fmul fast float %2253, %2237
  %2259 = fmul fast float %2258, %2257
  br label %2501

; <label>:2260                                    ; preds = %2214
  br i1 %2215, label %2261, label %2282, !dx.controlflow.hints !104

; <label>:2261                                    ; preds = %2260
  %2262 = call float @dx.op.binary.f32(i32 36, float %2211, float %2201)  ; FMin(a,b)
  %2263 = fsub fast float %2211, %2262
  %2264 = fsub fast float %2263, %2200
  %2265 = call float @dx.op.unary.f32(i32 6, float %2264)  ; FAbs(value)
  %2266 = fadd fast float %2263, %2200
  %2267 = fmul fast float %2266, %2131
  %2268 = fadd fast float %2267, %2144
  %2269 = fmul fast float %2268, %2265
  %2270 = fsub fast float %2206, %2269
  br label %2282

; <label>:2271                                    ; preds = %2199
  br i1 %2213, label %2272, label %2282, !dx.controlflow.hints !105

; <label>:2272                                    ; preds = %2271
  %2273 = call float @dx.op.binary.f32(i32 35, float %2201, float %2211)  ; FMax(a,b)
  %2274 = icmp eq i32 %2150, 0
  %2275 = select i1 %2274, float %2211, float 0.000000e+00
  %2276 = fsub fast float -0.000000e+00, %2275
  %2277 = call float @dx.op.unary.f32(i32 6, float %2276)  ; FAbs(value)
  %2278 = fmul fast float %2275, %2131
  %2279 = fadd fast float %2278, %2144
  %2280 = fmul fast float %2277, %2279
  %2281 = fsub fast float %2206, %2280
  br label %2282

; <label>:2282                                    ; preds = %2272, %2271, %2261, %2260
  %2283 = phi float [ %2201, %2260 ], [ %2201, %2261 ], [ %2273, %2272 ], [ %2201, %2271 ]
  %2284 = phi float [ 0.000000e+00, %2260 ], [ %2265, %2261 ], [ %2277, %2272 ], [ 0.000000e+00, %2271 ]
  %2285 = phi float [ %2206, %2260 ], [ %2270, %2261 ], [ %2281, %2272 ], [ %2206, %2271 ]
  %2286 = phi float [ %2211, %2260 ], [ %2211, %2261 ], [ %2200, %2272 ], [ %2200, %2271 ]
  %2287 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 0
  store float -1.000000e+00, float* %2287, align 4, !tbaa !47, !noalias !106
  %2288 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 1
  store float -1.000000e+00, float* %2288, align 4, !tbaa !47, !noalias !106
  %2289 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 2
  store float -1.000000e+00, float* %2289, align 4, !tbaa !47, !noalias !106
  %2290 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 0
  store float -1.000000e+00, float* %2290, align 4, !tbaa !47, !noalias !106
  %2291 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 1
  store float -1.000000e+00, float* %2291, align 4, !tbaa !47, !noalias !106
  %2292 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 2
  store float -1.000000e+00, float* %2292, align 4, !tbaa !47, !noalias !106
  %2293 = icmp sgt i32 %2152, 0
  br i1 %2293, label %2294, label %2355

; <label>:2294                                    ; preds = %2282
  br label %2295

; <label>:2295                                    ; preds = %2344, %2294
  %2296 = phi i32 [ %2345, %2344 ], [ 0, %2294 ]
  %2297 = phi i32 [ %2346, %2344 ], [ 0, %2294 ]
  %2298 = add nuw i32 %2297, 171
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %2298)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.CBufRet.f32 %2302, 1
  %2305 = fsub fast float %2300, %2303
  %2306 = fsub fast float %2301, %2304
  %2307 = extractvalue %dx.types.CBufRet.f32 %2299, 2
  %2308 = fsub fast float -0.000000e+00, %2305
  %2309 = fsub fast float -0.000000e+00, %2306
  %2310 = call float @dx.op.dot2.f32(i32 54, float %2129, float %2130, float %2308, float %2309)  ; Dot2(ax,ay,bx,by)
  %2311 = fmul fast float %2310, 2.000000e+00
  %2312 = call float @dx.op.dot2.f32(i32 54, float %2308, float %2309, float %2308, float %2309)  ; Dot2(ax,ay,bx,by)
  %2313 = fmul fast float %2307, %2307
  %2314 = fsub fast float %2312, %2313
  %2315 = fmul fast float %2311, %2311
  %2316 = fmul fast float %2172, %2314
  %2317 = fsub fast float %2315, %2316
  %2318 = fcmp fast ogt float %2317, 0.000000e+00
  br i1 %2318, label %2319, label %2334, !dx.controlflow.hints !98

; <label>:2319                                    ; preds = %2295
  %2320 = fcmp fast ogt float %2311, 0.000000e+00
  %2321 = call float @dx.op.unary.f32(i32 24, float %2317)  ; Sqrt(value)
  %2322 = fsub fast float -0.000000e+00, %2321
  %2323 = select i1 %2320, float %2321, float %2322
  %2324 = fadd fast float %2323, %2311
  %2325 = fmul float %2324, -5.000000e-01
  %2326 = fdiv fast float %2325, %2165
  %2327 = call float @dx.op.binary.f32(i32 35, float %2326, float 0.000000e+00)  ; FMax(a,b)
  %2328 = call float @dx.op.binary.f32(i32 36, float %2200, float %2327)  ; FMin(a,b)
  %2329 = fdiv fast float %2314, %2325
  %2330 = call float @dx.op.binary.f32(i32 35, float %2329, float 0.000000e+00)  ; FMax(a,b)
  %2331 = call float @dx.op.binary.f32(i32 36, float %2200, float %2330)  ; FMin(a,b)
  %2332 = call float @dx.op.binary.f32(i32 36, float %2328, float %2331)  ; FMin(a,b)
  %2333 = call float @dx.op.binary.f32(i32 35, float %2328, float %2331)  ; FMax(a,b)
  br label %2334

; <label>:2334                                    ; preds = %2319, %2295
  %2335 = phi float [ %2333, %2319 ], [ -1.000000e+00, %2295 ]
  %2336 = phi float [ %2332, %2319 ], [ -1.000000e+00, %2295 ]
  %2337 = phi i1 [ true, %2319 ], [ false, %2295 ]
  br i1 %2337, label %2338, label %2344, !dx.controlflow.hints !112

; <label>:2338                                    ; preds = %2334
  %2339 = call float @dx.op.binary.f32(i32 35, float %2283, float %2336)  ; FMax(a,b)
  %2340 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %2297
  store float %2339, float* %2340, align 4, !tbaa !47, !noalias !106
  %2341 = call float @dx.op.binary.f32(i32 35, float %2283, float %2335)  ; FMax(a,b)
  %2342 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %2297
  store float %2341, float* %2342, align 4, !tbaa !47, !noalias !106
  %2343 = add nsw i32 %2296, 1
  br label %2344

; <label>:2344                                    ; preds = %2338, %2334
  %2345 = phi i32 [ %2343, %2338 ], [ %2296, %2334 ]
  %2346 = add nuw nsw i32 %2297, 1
  %2347 = icmp eq i32 %2346, %2152
  br i1 %2347, label %2348, label %2295

; <label>:2348                                    ; preds = %2344
  %2349 = load float, float* %2289, align 4, !tbaa !47, !alias.scope !113, !noalias !116
  %2350 = load float, float* %2288, align 4, !tbaa !47, !alias.scope !119, !noalias !120
  %2351 = load float, float* %2287, align 4, !tbaa !47, !alias.scope !121, !noalias !122
  %2352 = load float, float* %2292, align 4, !tbaa !47, !alias.scope !123, !noalias !126
  %2353 = load float, float* %2291, align 4, !tbaa !47, !alias.scope !129, !noalias !130
  %2354 = load float, float* %2290, align 4, !tbaa !47, !alias.scope !131, !noalias !132
  br label %2355

; <label>:2355                                    ; preds = %2348, %2282
  %2356 = phi float [ -1.000000e+00, %2282 ], [ %2354, %2348 ]
  %2357 = phi float [ -1.000000e+00, %2282 ], [ %2353, %2348 ]
  %2358 = phi float [ -1.000000e+00, %2282 ], [ %2352, %2348 ]
  %2359 = phi float [ -1.000000e+00, %2282 ], [ %2351, %2348 ]
  %2360 = phi float [ -1.000000e+00, %2282 ], [ %2350, %2348 ]
  %2361 = phi float [ -1.000000e+00, %2282 ], [ %2349, %2348 ]
  %2362 = phi i32 [ 0, %2282 ], [ %2345, %2348 ]
  %2363 = call float @dx.op.binary.f32(i32 36, float %2360, float %2361)  ; FMin(a,b)
  %2364 = call float @dx.op.binary.f32(i32 36, float %2359, float %2363)  ; FMin(a,b)
  %2365 = call float @dx.op.binary.f32(i32 35, float %2359, float %2360)  ; FMax(a,b)
  %2366 = call float @dx.op.binary.f32(i32 36, float %2365, float %2361)  ; FMin(a,b)
  %2367 = call float @dx.op.binary.f32(i32 36, float %2359, float %2360)  ; FMin(a,b)
  %2368 = call float @dx.op.binary.f32(i32 35, float %2367, float %2366)  ; FMax(a,b)
  %2369 = call float @dx.op.binary.f32(i32 35, float %2360, float %2361)  ; FMax(a,b)
  %2370 = call float @dx.op.binary.f32(i32 35, float %2359, float %2369)  ; FMax(a,b)
  store float %2364, float* %2287, align 4, !tbaa !47, !alias.scope !121, !noalias !122
  store float %2368, float* %2288, align 4, !tbaa !47, !alias.scope !119, !noalias !120
  store float %2370, float* %2289, align 4, !tbaa !47, !alias.scope !113, !noalias !116
  %2371 = call float @dx.op.binary.f32(i32 36, float %2357, float %2358)  ; FMin(a,b)
  %2372 = call float @dx.op.binary.f32(i32 36, float %2356, float %2371)  ; FMin(a,b)
  %2373 = call float @dx.op.binary.f32(i32 35, float %2356, float %2357)  ; FMax(a,b)
  %2374 = call float @dx.op.binary.f32(i32 36, float %2373, float %2358)  ; FMin(a,b)
  %2375 = call float @dx.op.binary.f32(i32 36, float %2356, float %2357)  ; FMin(a,b)
  %2376 = call float @dx.op.binary.f32(i32 35, float %2375, float %2374)  ; FMax(a,b)
  %2377 = call float @dx.op.binary.f32(i32 35, float %2357, float %2358)  ; FMax(a,b)
  %2378 = call float @dx.op.binary.f32(i32 35, float %2356, float %2377)  ; FMax(a,b)
  store float %2372, float* %2290, align 4, !tbaa !47, !alias.scope !131, !noalias !132
  store float %2376, float* %2291, align 4, !tbaa !47, !alias.scope !129, !noalias !130
  store float %2378, float* %2292, align 4, !tbaa !47, !alias.scope !123, !noalias !126
  %2379 = sub nsw i32 3, %2362
  %2380 = icmp sgt i32 %2379, 2
  br i1 %2380, label %2381, label %2419, !dx.controlflow.hints !133

; <label>:2381                                    ; preds = %2355
  %2382 = icmp eq i32 %2150, 0
  %2383 = fsub fast float %2200, %2284
  %2384 = select i1 %2382, float %2383, float %2284
  %2385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.f32 %2385, 0
  %2387 = extractvalue %dx.types.CBufRet.f32 %2385, 1
  %2388 = extractvalue %dx.types.CBufRet.f32 %2385, 2
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.CBufRet.f32 %2389, 1
  %2392 = extractvalue %dx.types.CBufRet.f32 %2389, 2
  %2393 = extractvalue %dx.types.CBufRet.f32 %2389, 3
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2396 = call float @dx.op.binary.f32(i32 36, float %2285, float %2395)  ; FMin(a,b)
  %2397 = fmul fast float %2393, %2384
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2399 = fsub fast float %2390, %2386
  %2400 = fsub fast float %2391, %2387
  %2401 = fsub fast float %2392, %2388
  %2402 = fmul fast float %2398, %2399
  %2403 = fmul fast float %2398, %2400
  %2404 = fmul fast float %2398, %2401
  %2405 = fadd fast float %2402, %2386
  %2406 = fadd fast float %2403, %2387
  %2407 = fadd fast float %2404, %2388
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.CBufRet.f32 %2408, 1
  %2411 = fadd fast float %2410, %2409
  %2412 = call float @dx.op.unary.f32(i32 7, float %2411)  ; Saturate(value)
  %2413 = extractvalue %dx.types.CBufRet.f32 %2408, 2
  %2414 = extractvalue %dx.types.CBufRet.f32 %2408, 3
  %2415 = fadd fast float %2414, %2413
  %2416 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2417 = fmul fast float %2412, %2396
  %2418 = fmul fast float %2417, %2416
  br label %2501

; <label>:2419                                    ; preds = %2355
  %2420 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %2379
  %2421 = load float, float* %2420, align 4, !tbaa !47, !noalias !106
  %2422 = fcmp fast olt float %2421, %2286
  %2423 = icmp sgt i32 %2362, 0
  %2424 = and i1 %2423, %2422
  br i1 %2424, label %2425, label %2462

; <label>:2425                                    ; preds = %2419
  br label %2426

; <label>:2426                                    ; preds = %2455, %2425
  %2427 = phi float [ %2456, %2455 ], [ %2284, %2425 ]
  %2428 = phi float [ %2457, %2455 ], [ %2285, %2425 ]
  %2429 = phi float [ %2437, %2455 ], [ %2421, %2425 ]
  %2430 = phi i32 [ %2434, %2455 ], [ %2379, %2425 ]
  %2431 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %2430
  %2432 = load float, float* %2431, align 4, !tbaa !47, !noalias !106
  %2433 = icmp slt i32 %2430, 2
  %2434 = add nsw i32 %2430, 1
  %2435 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %2434
  %2436 = load float, float* %2435, align 4, !tbaa !47, !noalias !106
  %2437 = select i1 %2433, float %2436, float %2200
  %2438 = call float @dx.op.binary.f32(i32 36, float %2437, float %2432)  ; FMin(a,b)
  %2439 = call float @dx.op.binary.f32(i32 36, float %2286, float %2438)  ; FMin(a,b)
  %2440 = icmp eq i32 %2150, 0
  %2441 = fadd fast float %2439, %2429
  %2442 = fmul fast float %2441, %2131
  %2443 = fadd fast float %2442, %2144
  br i1 %2440, label %2449, label %2444, !dx.controlflow.hints !134

; <label>:2444                                    ; preds = %2426
  %2445 = fsub fast float %2439, %2429
  %2446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2445)  ; FMax(a,b)
  %2447 = fmul fast float %2446, %2443
  %2448 = fadd fast float %2447, %2428
  br label %2455

; <label>:2449                                    ; preds = %2426
  %2450 = fsub fast float %2429, %2439
  %2451 = call float @dx.op.unary.f32(i32 6, float %2450)  ; FAbs(value)
  %2452 = fadd fast float %2451, %2427
  %2453 = fmul fast float %2451, %2443
  %2454 = fsub fast float %2428, %2453
  br label %2455

; <label>:2455                                    ; preds = %2449, %2444
  %2456 = phi float [ %2446, %2444 ], [ %2452, %2449 ]
  %2457 = phi float [ %2448, %2444 ], [ %2454, %2449 ]
  %2458 = fcmp fast olt float %2437, %2286
  %2459 = icmp slt i32 %2434, 3
  %2460 = and i1 %2459, %2458
  br i1 %2460, label %2426, label %2461

; <label>:2461                                    ; preds = %2455
  br label %2462

; <label>:2462                                    ; preds = %2461, %2419
  %2463 = phi float [ %2284, %2419 ], [ %2456, %2461 ]
  %2464 = phi float [ %2285, %2419 ], [ %2457, %2461 ]
  %2465 = fsub fast float %2200, %2463
  %2466 = select i1 %2202, float %2463, float %2465
  %2467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.f32 %2467, 0
  %2469 = extractvalue %dx.types.CBufRet.f32 %2467, 1
  %2470 = extractvalue %dx.types.CBufRet.f32 %2467, 2
  %2471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2472 = extractvalue %dx.types.CBufRet.f32 %2471, 0
  %2473 = extractvalue %dx.types.CBufRet.f32 %2471, 1
  %2474 = extractvalue %dx.types.CBufRet.f32 %2471, 2
  %2475 = extractvalue %dx.types.CBufRet.f32 %2471, 3
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 3
  %2478 = call float @dx.op.binary.f32(i32 36, float %2464, float %2477)  ; FMin(a,b)
  %2479 = fmul fast float %2475, %2466
  %2480 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  %2481 = fsub fast float %2472, %2468
  %2482 = fsub fast float %2473, %2469
  %2483 = fsub fast float %2474, %2470
  %2484 = fmul fast float %2480, %2481
  %2485 = fmul fast float %2480, %2482
  %2486 = fmul fast float %2480, %2483
  %2487 = fadd fast float %2484, %2468
  %2488 = fadd fast float %2485, %2469
  %2489 = fadd fast float %2486, %2470
  %2490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2491 = extractvalue %dx.types.CBufRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.CBufRet.f32 %2490, 1
  %2493 = fadd fast float %2492, %2491
  %2494 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  %2495 = extractvalue %dx.types.CBufRet.f32 %2490, 2
  %2496 = extractvalue %dx.types.CBufRet.f32 %2490, 3
  %2497 = fadd fast float %2496, %2495
  %2498 = call float @dx.op.unary.f32(i32 7, float %2497)  ; Saturate(value)
  %2499 = fmul fast float %2494, %2478
  %2500 = fmul fast float %2499, %2498
  br label %2501

; <label>:2501                                    ; preds = %2462, %2381, %2216, %2198, %2196
  %2502 = phi float [ %2225, %2216 ], [ %2384, %2381 ], [ %2466, %2462 ], [ 0.000000e+00, %2196 ], [ 0.000000e+00, %2198 ]
  %2503 = phi float [ %2259, %2216 ], [ %2418, %2381 ], [ %2500, %2462 ], [ 0.000000e+00, %2196 ], [ 0.000000e+00, %2198 ]
  %2504 = phi float [ %2246, %2216 ], [ %2405, %2381 ], [ %2487, %2462 ], [ 0.000000e+00, %2196 ], [ 0.000000e+00, %2198 ]
  %2505 = phi float [ %2247, %2216 ], [ %2406, %2381 ], [ %2488, %2462 ], [ 0.000000e+00, %2196 ], [ 0.000000e+00, %2198 ]
  %2506 = phi float [ %2248, %2216 ], [ %2407, %2381 ], [ %2489, %2462 ], [ 0.000000e+00, %2196 ], [ 0.000000e+00, %2198 ]
  %2507 = fmul fast float %2139, %2503
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 2
  %2510 = fsub fast float %2146, %2509
  %2511 = fcmp fast olt float %2507, -2.000000e+01
  %2512 = call float @dx.op.unary.f32(i32 21, float %2507)  ; Exp(value)
  %2513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2514 = extractvalue %dx.types.CBufRet.f32 %2513, 2
  %2515 = extractvalue %dx.types.CBufRet.f32 %2513, 3
  %2516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2516, 2
  %2518 = fmul fast float %2515, %2510
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2520 = fsub fast float 1.000000e+00, %2519
  %2521 = fmul fast float %2131, 5.000000e-01
  %2522 = fadd fast float %2521, 5.000000e-01
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  %2524 = fsub fast float 1.000000e+00, %2523
  %2525 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2520)  ; FMax(a,b)
  %2526 = fdiv fast float %2524, %2525
  %2527 = fsub fast float %2510, %176
  %2528 = call float @dx.op.unary.f32(i32 6, float %2527)  ; FAbs(value)
  %2529 = fmul fast float %2528, %2514
  %2530 = call float @dx.op.unary.f32(i32 7, float %2526)  ; Saturate(value)
  %2531 = fsub fast float 1.000000e+00, %2529
  %2532 = fmul fast float %2531, %2530
  %2533 = fadd fast float %2532, %2529
  %2534 = fmul fast float %2517, %2510
  %2535 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2536 = fsub fast float 1.000000e+00, %2533
  %2537 = fmul fast float %2536, %2535
  %2538 = fadd fast float %2537, %2533
  %2539 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  %2540 = fadd fast float %2512, -1.000000e+00
  %2541 = select i1 %2511, float -1.000000e+00, float %2540
  %2542 = fmul fast float %2539, %2541
  %2543 = fadd fast float %2542, 1.000000e+00
  %2544 = fsub fast float -0.000000e+00, %2542
  %2545 = fmul fast float %2504, %2544
  %2546 = fmul fast float %2505, %2544
  %2547 = fmul fast float %2506, %2544
  br label %2548

; <label>:2548                                    ; preds = %2501, %2085
  %2549 = phi float [ %2502, %2501 ], [ 0.000000e+00, %2085 ]
  %2550 = phi float [ %2543, %2501 ], [ 1.000000e+00, %2085 ]
  %2551 = phi float [ %2545, %2501 ], [ 0.000000e+00, %2085 ]
  %2552 = phi float [ %2546, %2501 ], [ 0.000000e+00, %2085 ]
  %2553 = phi float [ %2547, %2501 ], [ 0.000000e+00, %2085 ]
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 1
  %2556 = fsub fast float 1.000000e+00, %2550
  %2557 = fmul fast float %2556, %2132
  %2558 = fmul fast float %2557, %2555
  %2559 = fsub fast float %2132, %2558
  br i1 %2125, label %2560, label %2589, !dx.controlflow.hints !135

; <label>:2560                                    ; preds = %2548
  %2561 = fmul fast float %2133, %2122
  %2562 = fadd fast float %2561, %2123
  %2563 = call float @dx.op.unary.f32(i32 7, float %2562)  ; Saturate(value)
  %2564 = fmul fast float %2104, %2559
  %2565 = fsub fast float -0.000000e+00, %2564
  %2566 = fmul fast float %2105, %2559
  %2567 = fsub fast float -0.000000e+00, %2566
  %2568 = call float @dx.op.unary.f32(i32 21, float %2565)  ; Exp(value)
  %2569 = call float @dx.op.unary.f32(i32 21, float %2567)  ; Exp(value)
  %2570 = call float @dx.op.binary.f32(i32 35, float %2112, float %2568)  ; FMax(a,b)
  %2571 = call float @dx.op.binary.f32(i32 35, float %2112, float %2569)  ; FMax(a,b)
  %2572 = fsub fast float %2571, %2570
  %2573 = fmul fast float %2572, %2563
  %2574 = fadd fast float %2573, %2570
  %2575 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2576 = fsub fast float %2109, %2114
  %2577 = fsub fast float %2110, %2115
  %2578 = fsub fast float %2111, %2116
  %2579 = fmul fast float %2563, %2576
  %2580 = fmul fast float %2563, %2577
  %2581 = fmul fast float %2563, %2578
  %2582 = fadd fast float %2579, %2114
  %2583 = fadd fast float %2580, %2115
  %2584 = fadd fast float %2581, %2116
  %2585 = fsub fast float 1.000000e+00, %2575
  %2586 = fmul fast float %2585, %2582
  %2587 = fmul fast float %2585, %2583
  %2588 = fmul fast float %2585, %2584
  br label %2648

; <label>:2589                                    ; preds = %2548
  %2590 = fmul fast float %2559, %2121
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2592 = fsub fast float 2.000000e+00, %2591
  %2593 = fmul fast float %2591, 9.921875e-01
  %2594 = fmul fast float %2593, %2592
  %2595 = fadd fast float %2594, 3.906250e-03
  %2596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %2595, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2597 = extractvalue %dx.types.ResRet.f32 %2596, 0
  %2598 = fsub fast float %2591, %2597
  %2599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2598)  ; FMax(a,b)
  %2600 = fmul fast float %2107, %176
  %2601 = call float @dx.op.unary.f32(i32 6, float %2600)  ; FAbs(value)
  %2602 = fcmp fast ogt float %2601, 0x3EB0C6F7A0000000
  br i1 %2602, label %2603, label %2609, !dx.controlflow.hints !136

; <label>:2603                                    ; preds = %2589
  %2604 = fmul fast float %2600, 0xBFF7154760000000
  %2605 = call float @dx.op.unary.f32(i32 21, float %2604)  ; Exp(value)
  %2606 = fsub fast float 1.000000e+00, %2605
  %2607 = fdiv fast float %2606, %2600
  %2608 = fmul fast float %2607, %2117
  br label %2609

; <label>:2609                                    ; preds = %2603, %2589
  %2610 = phi float [ %2608, %2603 ], [ %2117, %2589 ]
  %2611 = fadd fast float %2610, %2119
  %2612 = fmul fast float %2611, %2599
  %2613 = fmul fast float %2104, %2612
  %2614 = fsub fast float -0.000000e+00, %2613
  %2615 = fmul fast float %2105, %2612
  %2616 = fsub fast float -0.000000e+00, %2615
  %2617 = fmul fast float %2106, %2612
  %2618 = fsub fast float -0.000000e+00, %2617
  %2619 = call float @dx.op.unary.f32(i32 21, float %2614)  ; Exp(value)
  %2620 = call float @dx.op.unary.f32(i32 21, float %2616)  ; Exp(value)
  %2621 = call float @dx.op.unary.f32(i32 21, float %2618)  ; Exp(value)
  %2622 = fmul fast float %2133, %2133
  %2623 = fadd fast float %2622, 1.000000e+00
  %2624 = fmul fast float %2623, 0x3FAE8EC8A0000000
  %2625 = fmul fast float %2624, %2114
  %2626 = fmul fast float %2624, %2115
  %2627 = fmul fast float %2624, %2116
  %2628 = fmul fast float %2133, %2112
  %2629 = fsub fast float 1.000000e+00, %2628
  %2630 = fmul fast float %2112, %2112
  %2631 = fsub fast float 1.000000e+00, %2630
  %2632 = fmul fast float %2631, 0x3FB45F3060000000
  %2633 = fmul fast float %2629, %2629
  %2634 = fdiv fast float 1.000000e+00, %2633
  %2635 = fmul fast float %2632, %2634
  %2636 = fmul fast float %2635, %2109
  %2637 = fmul fast float %2635, %2110
  %2638 = fmul fast float %2635, %2111
  %2639 = fadd fast float %2636, %2625
  %2640 = fadd fast float %2637, %2626
  %2641 = fadd fast float %2638, %2627
  %2642 = fsub fast float 1.000000e+00, %2619
  %2643 = fsub fast float 1.000000e+00, %2620
  %2644 = fsub fast float 1.000000e+00, %2621
  %2645 = fmul fast float %2639, %2642
  %2646 = fmul fast float %2640, %2643
  %2647 = fmul fast float %2641, %2644
  br label %2648

; <label>:2648                                    ; preds = %2609, %2560
  %2649 = phi float [ %2586, %2560 ], [ %2645, %2609 ]
  %2650 = phi float [ %2587, %2560 ], [ %2646, %2609 ]
  %2651 = phi float [ %2588, %2560 ], [ %2647, %2609 ]
  %2652 = phi float [ %2575, %2560 ], [ %2619, %2609 ]
  %2653 = phi float [ %2575, %2560 ], [ %2620, %2609 ]
  %2654 = phi float [ %2575, %2560 ], [ %2621, %2609 ]
  br i1 %2141, label %2655, label %2853, !dx.controlflow.hints !137

; <label>:2655                                    ; preds = %2648
  %2656 = extractvalue %dx.types.CBufRet.f32 %2554, 0
  %2657 = fmul fast float %2656, %2556
  %2658 = fsub fast float %2551, %2649
  %2659 = fsub fast float %2552, %2650
  %2660 = fsub fast float %2553, %2651
  %2661 = fmul fast float %2657, %2658
  %2662 = fmul fast float %2657, %2659
  %2663 = fmul fast float %2657, %2660
  %2664 = fadd fast float %2661, %2649
  %2665 = fadd fast float %2662, %2650
  %2666 = fadd fast float %2663, %2651
  %2667 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2652)  ; FMax(a,b)
  %2668 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2653)  ; FMax(a,b)
  %2669 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2654)  ; FMax(a,b)
  %2670 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2550)  ; FMax(a,b)
  %2671 = call float @dx.op.binary.f32(i32 35, float %2549, float %2559)  ; FMax(a,b)
  %2672 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2671)  ; FMax(a,b)
  %2673 = fdiv fast float %2549, %2672
  %2674 = call float @dx.op.unary.f32(i32 7, float %2673)  ; Saturate(value)
  %2675 = fdiv fast float %2559, %2672
  %2676 = call float @dx.op.unary.f32(i32 7, float %2675)  ; Saturate(value)
  %2677 = fcmp fast une float %2670, 1.000000e+00
  br i1 %2677, label %2678, label %2691, !dx.controlflow.hints !138

; <label>:2678                                    ; preds = %2655
  %2679 = call float @dx.op.unary.f32(i32 23, float %2670)  ; Log(value)
  %2680 = fmul fast float %2679, 0x3FE62E4300000000
  %2681 = fmul fast float %2551, %2680
  %2682 = fsub fast float -0.000000e+00, %2681
  %2683 = fmul fast float %2552, %2680
  %2684 = fsub fast float -0.000000e+00, %2683
  %2685 = fmul fast float %2553, %2680
  %2686 = fsub fast float -0.000000e+00, %2685
  %2687 = fsub fast float 1.000000e+00, %2670
  %2688 = fdiv fast float %2682, %2687
  %2689 = fdiv fast float %2684, %2687
  %2690 = fdiv fast float %2686, %2687
  br label %2691

; <label>:2691                                    ; preds = %2678, %2655
  %2692 = phi float [ %2688, %2678 ], [ %2551, %2655 ]
  %2693 = phi float [ %2689, %2678 ], [ %2552, %2655 ]
  %2694 = phi float [ %2690, %2678 ], [ %2553, %2655 ]
  %2695 = phi float [ %2680, %2678 ], [ 0.000000e+00, %2655 ]
  %2696 = fcmp fast une float %2667, 1.000000e+00
  br i1 %2696, label %2697, label %2704, !dx.controlflow.hints !139

; <label>:2697                                    ; preds = %2691
  %2698 = call float @dx.op.unary.f32(i32 23, float %2667)  ; Log(value)
  %2699 = fmul fast float %2698, 0x3FE62E4300000000
  %2700 = fmul fast float %2664, %2699
  %2701 = fsub fast float -0.000000e+00, %2700
  %2702 = fsub fast float 1.000000e+00, %2667
  %2703 = fdiv fast float %2701, %2702
  br label %2704

; <label>:2704                                    ; preds = %2697, %2691
  %2705 = phi float [ %2703, %2697 ], [ %2664, %2691 ]
  %2706 = phi float [ %2699, %2697 ], [ 0.000000e+00, %2691 ]
  %2707 = fcmp fast une float %2668, 1.000000e+00
  br i1 %2707, label %2708, label %2715, !dx.controlflow.hints !139

; <label>:2708                                    ; preds = %2704
  %2709 = call float @dx.op.unary.f32(i32 23, float %2668)  ; Log(value)
  %2710 = fmul fast float %2709, 0x3FE62E4300000000
  %2711 = fmul fast float %2665, %2710
  %2712 = fsub fast float -0.000000e+00, %2711
  %2713 = fsub fast float 1.000000e+00, %2668
  %2714 = fdiv fast float %2712, %2713
  br label %2715

; <label>:2715                                    ; preds = %2708, %2704
  %2716 = phi float [ %2714, %2708 ], [ %2665, %2704 ]
  %2717 = phi float [ %2710, %2708 ], [ 0.000000e+00, %2704 ]
  %2718 = fcmp fast une float %2669, 1.000000e+00
  br i1 %2718, label %2719, label %2726, !dx.controlflow.hints !139

; <label>:2719                                    ; preds = %2715
  %2720 = call float @dx.op.unary.f32(i32 23, float %2669)  ; Log(value)
  %2721 = fmul fast float %2720, 0x3FE62E4300000000
  %2722 = fmul fast float %2666, %2721
  %2723 = fsub fast float -0.000000e+00, %2722
  %2724 = fsub fast float 1.000000e+00, %2669
  %2725 = fdiv fast float %2723, %2724
  br label %2726

; <label>:2726                                    ; preds = %2719, %2715
  %2727 = phi float [ %2725, %2719 ], [ %2666, %2715 ]
  %2728 = phi float [ %2721, %2719 ], [ 0.000000e+00, %2715 ]
  %2729 = fmul fast float %2692, %2676
  %2730 = fmul fast float %2693, %2676
  %2731 = fmul fast float %2694, %2676
  %2732 = fmul fast float %2695, %2676
  %2733 = fmul fast float %2705, %2674
  %2734 = fmul fast float %2716, %2674
  %2735 = fmul fast float %2727, %2674
  %2736 = fmul fast float %2706, %2674
  %2737 = fmul fast float %2717, %2674
  %2738 = fmul fast float %2728, %2674
  %2739 = fadd fast float %2733, %2729
  %2740 = fadd fast float %2734, %2730
  %2741 = fadd fast float %2735, %2731
  %2742 = fadd fast float %2736, %2732
  %2743 = fadd fast float %2737, %2732
  %2744 = fadd fast float %2738, %2732
  %2745 = fcmp fast une float %2742, 0.000000e+00
  br i1 %2745, label %2746, label %2753, !dx.controlflow.hints !140

; <label>:2746                                    ; preds = %2726
  %2747 = fmul fast float %2742, 0x3FF7154760000000
  %2748 = call float @dx.op.unary.f32(i32 21, float %2747)  ; Exp(value)
  %2749 = fsub fast float 1.000000e+00, %2748
  %2750 = fmul fast float %2739, %2749
  %2751 = fsub fast float -0.000000e+00, %2750
  %2752 = fdiv fast float %2751, %2742
  br label %2753

; <label>:2753                                    ; preds = %2746, %2726
  %2754 = phi float [ %2748, %2746 ], [ 1.000000e+00, %2726 ]
  %2755 = phi float [ %2752, %2746 ], [ %2739, %2726 ]
  %2756 = fcmp fast une float %2743, 0.000000e+00
  br i1 %2756, label %2757, label %2764, !dx.controlflow.hints !140

; <label>:2757                                    ; preds = %2753
  %2758 = fmul fast float %2743, 0x3FF7154760000000
  %2759 = call float @dx.op.unary.f32(i32 21, float %2758)  ; Exp(value)
  %2760 = fsub fast float 1.000000e+00, %2759
  %2761 = fmul fast float %2740, %2760
  %2762 = fsub fast float -0.000000e+00, %2761
  %2763 = fdiv fast float %2762, %2743
  br label %2764

; <label>:2764                                    ; preds = %2757, %2753
  %2765 = phi float [ %2759, %2757 ], [ 1.000000e+00, %2753 ]
  %2766 = phi float [ %2763, %2757 ], [ %2740, %2753 ]
  %2767 = fcmp fast une float %2744, 0.000000e+00
  br i1 %2767, label %2768, label %2775, !dx.controlflow.hints !140

; <label>:2768                                    ; preds = %2764
  %2769 = fmul fast float %2744, 0x3FF7154760000000
  %2770 = call float @dx.op.unary.f32(i32 21, float %2769)  ; Exp(value)
  %2771 = fsub fast float 1.000000e+00, %2770
  %2772 = fmul fast float %2741, %2771
  %2773 = fsub fast float -0.000000e+00, %2772
  %2774 = fdiv fast float %2773, %2744
  br label %2775

; <label>:2775                                    ; preds = %2768, %2764
  %2776 = phi float [ %2770, %2768 ], [ 1.000000e+00, %2764 ]
  %2777 = phi float [ %2774, %2768 ], [ %2741, %2764 ]
  %2778 = fcmp fast ogt float %2674, %2676
  br i1 %2778, label %2779, label %2799, !dx.controlflow.hints !141

; <label>:2779                                    ; preds = %2775
  %2780 = fsub fast float 1.000000e+00, %2676
  %2781 = fmul fast float %2692, %2780
  %2782 = fmul fast float %2693, %2780
  %2783 = fmul fast float %2694, %2780
  %2784 = fmul fast float %2695, %2780
  %2785 = fcmp fast une float %2784, 0.000000e+00
  br i1 %2785, label %2786, label %2837, !dx.controlflow.hints !142

; <label>:2786                                    ; preds = %2779
  %2787 = fmul fast float %2784, 0x3FF7154760000000
  %2788 = call float @dx.op.unary.f32(i32 21, float %2787)  ; Exp(value)
  %2789 = fsub fast float 1.000000e+00, %2788
  %2790 = fmul fast float %2781, %2789
  %2791 = fsub fast float -0.000000e+00, %2790
  %2792 = fmul fast float %2782, %2789
  %2793 = fsub fast float -0.000000e+00, %2792
  %2794 = fmul fast float %2783, %2789
  %2795 = fsub fast float -0.000000e+00, %2794
  %2796 = fdiv fast float %2791, %2784
  %2797 = fdiv fast float %2793, %2784
  %2798 = fdiv fast float %2795, %2784
  br label %2837

; <label>:2799                                    ; preds = %2775
  %2800 = fsub fast float 1.000000e+00, %2674
  %2801 = fmul fast float %2705, %2800
  %2802 = fmul fast float %2716, %2800
  %2803 = fmul fast float %2727, %2800
  %2804 = fmul fast float %2706, %2800
  %2805 = fmul fast float %2717, %2800
  %2806 = fmul fast float %2728, %2800
  %2807 = fcmp fast une float %2804, 0.000000e+00
  br i1 %2807, label %2808, label %2815, !dx.controlflow.hints !140

; <label>:2808                                    ; preds = %2799
  %2809 = fmul fast float %2804, 0x3FF7154760000000
  %2810 = call float @dx.op.unary.f32(i32 21, float %2809)  ; Exp(value)
  %2811 = fsub fast float 1.000000e+00, %2810
  %2812 = fmul fast float %2801, %2811
  %2813 = fsub fast float -0.000000e+00, %2812
  %2814 = fdiv fast float %2813, %2804
  br label %2815

; <label>:2815                                    ; preds = %2808, %2799
  %2816 = phi float [ %2814, %2808 ], [ %2801, %2799 ]
  %2817 = phi float [ %2810, %2808 ], [ 1.000000e+00, %2799 ]
  %2818 = fcmp fast une float %2805, 0.000000e+00
  br i1 %2818, label %2819, label %2826, !dx.controlflow.hints !140

; <label>:2819                                    ; preds = %2815
  %2820 = fmul fast float %2805, 0x3FF7154760000000
  %2821 = call float @dx.op.unary.f32(i32 21, float %2820)  ; Exp(value)
  %2822 = fsub fast float 1.000000e+00, %2821
  %2823 = fmul fast float %2802, %2822
  %2824 = fsub fast float -0.000000e+00, %2823
  %2825 = fdiv fast float %2824, %2805
  br label %2826

; <label>:2826                                    ; preds = %2819, %2815
  %2827 = phi float [ %2825, %2819 ], [ %2802, %2815 ]
  %2828 = phi float [ %2821, %2819 ], [ 1.000000e+00, %2815 ]
  %2829 = fcmp fast une float %2806, 0.000000e+00
  br i1 %2829, label %2830, label %2837, !dx.controlflow.hints !140

; <label>:2830                                    ; preds = %2826
  %2831 = fmul fast float %2806, 0x3FF7154760000000
  %2832 = call float @dx.op.unary.f32(i32 21, float %2831)  ; Exp(value)
  %2833 = fsub fast float 1.000000e+00, %2832
  %2834 = fmul fast float %2803, %2833
  %2835 = fsub fast float -0.000000e+00, %2834
  %2836 = fdiv fast float %2835, %2806
  br label %2837

; <label>:2837                                    ; preds = %2830, %2826, %2786, %2779
  %2838 = phi float [ %2836, %2830 ], [ %2798, %2786 ], [ %2783, %2779 ], [ %2803, %2826 ]
  %2839 = phi float [ %2827, %2830 ], [ %2797, %2786 ], [ %2782, %2779 ], [ %2827, %2826 ]
  %2840 = phi float [ %2816, %2830 ], [ %2796, %2786 ], [ %2781, %2779 ], [ %2816, %2826 ]
  %2841 = phi float [ %2832, %2830 ], [ %2788, %2786 ], [ 1.000000e+00, %2779 ], [ 1.000000e+00, %2826 ]
  %2842 = phi float [ %2828, %2830 ], [ %2788, %2786 ], [ 1.000000e+00, %2779 ], [ %2828, %2826 ]
  %2843 = phi float [ %2817, %2830 ], [ %2788, %2786 ], [ 1.000000e+00, %2779 ], [ %2817, %2826 ]
  %2844 = fmul fast float %2843, %2755
  %2845 = fmul fast float %2842, %2766
  %2846 = fmul fast float %2841, %2777
  %2847 = fadd fast float %2844, %2840
  %2848 = fadd fast float %2845, %2839
  %2849 = fadd fast float %2846, %2838
  %2850 = fmul fast float %2843, %2754
  %2851 = fmul fast float %2842, %2765
  %2852 = fmul fast float %2841, %2776
  br label %2853

; <label>:2853                                    ; preds = %2837, %2648
  %2854 = phi float [ %2852, %2837 ], [ %2654, %2648 ]
  %2855 = phi float [ %2851, %2837 ], [ %2653, %2648 ]
  %2856 = phi float [ %2850, %2837 ], [ %2652, %2648 ]
  %2857 = phi float [ %2849, %2837 ], [ %2651, %2648 ]
  %2858 = phi float [ %2848, %2837 ], [ %2650, %2648 ]
  %2859 = phi float [ %2847, %2837 ], [ %2649, %2648 ]
  %2860 = fmul fast float %2095, %2856
  %2861 = fmul fast float %2096, %2855
  %2862 = fmul fast float %2097, %2854
  %2863 = fmul fast float %2056, 0xBFF7154760000000
  %2864 = call float @dx.op.unary.f32(i32 21, float %2863)  ; Exp(value)
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2866 = fsub fast float 1.000000e+00, %2865
  %2867 = fmul fast float %2866, %2859
  %2868 = fmul fast float %2866, %2858
  %2869 = fmul fast float %2866, %2857
  %2870 = fadd fast float %2867, %2860
  %2871 = fadd fast float %2868, %2861
  %2872 = fadd fast float %2869, %2862
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 0
  %2875 = fmul fast float %2874, %2870
  %2876 = fmul fast float %2871, %2874
  %2877 = fmul fast float %2872, %2874
  %2878 = fmul fast float %2876, 5.000000e-01
  %2879 = fadd fast float %2872, %2870
  %2880 = fmul fast float %2874, %2879
  %2881 = fmul fast float %2880, 2.500000e-01
  %2882 = fadd fast float %2881, %2878
  %2883 = call float @dx.op.unary.f32(i32 23, float %2882)  ; Log(value)
  %2884 = fmul fast float %2883, 0x3FE62E4300000000
  %2885 = fmul fast float %2884, %2884
  store float %195, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  %2886 = fmul fast float %2884, %195
  store float %2886, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  %2887 = fmul fast float %2885, %195
  store float %2887, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2888 = load float, float addrspace(3)* %202, align 4, !tbaa !47, !noalias !51
  %2889 = fadd fast float %2888, %195
  %2890 = load float, float addrspace(3)* %205, align 4, !tbaa !47, !noalias !51
  %2891 = fadd fast float %2890, %2884
  %2892 = load float, float addrspace(3)* %208, align 4, !tbaa !47, !noalias !51
  %2893 = fadd fast float %2892, %2885
  store float %2889, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  store float %2891, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  store float %2893, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2894 = load float, float addrspace(3)* %212, align 4, !tbaa !47, !noalias !51
  %2895 = fadd fast float %2894, %2889
  %2896 = load float, float addrspace(3)* %215, align 4, !tbaa !47, !noalias !51
  %2897 = fadd fast float %2896, %2891
  %2898 = load float, float addrspace(3)* %218, align 4, !tbaa !47, !noalias !51
  %2899 = fadd fast float %2898, %2893
  store float %2895, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  store float %2897, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  store float %2899, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2900 = load float, float addrspace(3)* %222, align 4, !tbaa !47, !noalias !51
  %2901 = fadd fast float %2900, %2895
  %2902 = load float, float addrspace(3)* %225, align 4, !tbaa !47, !noalias !51
  %2903 = fadd fast float %2902, %2897
  %2904 = fdiv fast float %2903, %2901
  br i1 %233, label %2905, label %2913, !dx.controlflow.hints !55

; <label>:2905                                    ; preds = %2853
  %2906 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %221
  %2907 = load float, float addrspace(3)* %2906, align 4, !tbaa !47, !noalias !51
  %2908 = fadd fast float %2907, %2899
  %2909 = fdiv fast float %2908, %2901
  %2910 = lshr i32 %59, 1
  %2911 = lshr i32 %60, 1
  %2912 = lshr i32 %61, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2910, i32 %2911, i32 %2912, float %2904, float %2909, float %2904, float %2904, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2913

; <label>:2913                                    ; preds = %2905, %2853
  br i1 %70, label %2948, label %2914, !dx.controlflow.hints !56

; <label>:2914                                    ; preds = %2913
  %2915 = fadd fast float %109, 0x3FE3C6EF40000000
  %2916 = call float @dx.op.unary.f32(i32 22, float %2915)  ; Frc(value)
  %2917 = call float @dx.op.unary.f32(i32 23, float %2875)  ; Log(value)
  %2918 = fadd fast float %2917, -7.000000e+00
  %2919 = call float @dx.op.unary.f32(i32 21, float %2918)  ; Exp(value)
  %2920 = fmul fast float %2916, 2.000000e+00
  %2921 = fadd fast float %2920, -1.000000e+00
  %2922 = fmul fast float %2919, %2921
  %2923 = fcmp fast ogt float %2875, 0.000000e+00
  %2924 = select i1 %2923, float %2922, float 0.000000e+00
  %2925 = fadd fast float %2924, %2875
  %2926 = fadd fast float %109, 0x3FF3C6EF40000000
  %2927 = call float @dx.op.unary.f32(i32 22, float %2926)  ; Frc(value)
  %2928 = call float @dx.op.unary.f32(i32 23, float %2876)  ; Log(value)
  %2929 = fadd fast float %2928, -7.000000e+00
  %2930 = call float @dx.op.unary.f32(i32 21, float %2929)  ; Exp(value)
  %2931 = fmul fast float %2927, 2.000000e+00
  %2932 = fadd fast float %2931, -1.000000e+00
  %2933 = fmul fast float %2930, %2932
  %2934 = fcmp fast ogt float %2876, 0.000000e+00
  %2935 = select i1 %2934, float %2933, float 0.000000e+00
  %2936 = fadd fast float %2935, %2876
  %2937 = fadd fast float %109, 0x3FFDAA66E0000000
  %2938 = call float @dx.op.unary.f32(i32 22, float %2937)  ; Frc(value)
  %2939 = call float @dx.op.unary.f32(i32 23, float %2877)  ; Log(value)
  %2940 = fadd fast float %2939, -6.000000e+00
  %2941 = call float @dx.op.unary.f32(i32 21, float %2940)  ; Exp(value)
  %2942 = fmul fast float %2938, 2.000000e+00
  %2943 = fadd fast float %2942, -1.000000e+00
  %2944 = fmul fast float %2941, %2943
  %2945 = fcmp fast ogt float %2877, 0.000000e+00
  %2946 = select i1 %2945, float %2944, float 0.000000e+00
  %2947 = fadd fast float %2946, %2877
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %59, i32 %60, i32 %61, float %2925, float %2936, float %2947, float %2925, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2948

; <label>:2948                                    ; preds = %2914, %2913
  %2949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2950 = extractvalue %dx.types.CBufRet.f32 %2949, 0
  %2951 = fmul fast float %2950, %2056
  %2952 = fmul fast float %2951, 5.000000e-01
  %2953 = fadd fast float %2056, %2056
  %2954 = fmul fast float %2950, %2953
  %2955 = fmul fast float %2954, 2.500000e-01
  %2956 = fadd fast float %2955, %2952
  %2957 = fmul fast float %2956, %2956
  store float %195, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  %2958 = fmul fast float %2956, %195
  store float %2958, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  %2959 = fmul fast float %2957, %195
  store float %2959, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2960 = load float, float addrspace(3)* %202, align 4, !tbaa !47, !noalias !51
  %2961 = fadd fast float %2960, %195
  %2962 = load float, float addrspace(3)* %205, align 4, !tbaa !47, !noalias !51
  %2963 = fadd fast float %2956, %2962
  %2964 = load float, float addrspace(3)* %208, align 4, !tbaa !47, !noalias !51
  %2965 = fadd fast float %2957, %2964
  store float %2961, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  store float %2963, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  store float %2965, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2966 = load float, float addrspace(3)* %212, align 4, !tbaa !47, !noalias !51
  %2967 = fadd fast float %2966, %2961
  %2968 = load float, float addrspace(3)* %215, align 4, !tbaa !47, !noalias !51
  %2969 = fadd fast float %2968, %2963
  %2970 = load float, float addrspace(3)* %218, align 4, !tbaa !47, !noalias !51
  %2971 = fadd fast float %2970, %2965
  store float %2967, float addrspace(3)* %196, align 4, !tbaa !47, !noalias !51
  store float %2969, float addrspace(3)* %198, align 4, !tbaa !47, !noalias !51
  store float %2971, float addrspace(3)* %200, align 4, !tbaa !47, !noalias !51
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2972 = load float, float addrspace(3)* %222, align 4, !tbaa !47, !noalias !51
  %2973 = fadd fast float %2972, %2967
  %2974 = load float, float addrspace(3)* %225, align 4, !tbaa !47, !noalias !51
  %2975 = fadd fast float %2974, %2969
  %2976 = fdiv fast float %2975, %2973
  br i1 %233, label %2977, label %2985, !dx.controlflow.hints !57

; <label>:2977                                    ; preds = %2948
  %2978 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %221
  %2979 = load float, float addrspace(3)* %2978, align 4, !tbaa !47, !noalias !51
  %2980 = fadd fast float %2979, %2971
  %2981 = fdiv fast float %2980, %2973
  %2982 = lshr i32 %59, 1
  %2983 = lshr i32 %60, 1
  %2984 = lshr i32 %61, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2982, i32 %2983, i32 %2984, float %2976, float %2981, float %2976, float %2976, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2985

; <label>:2985                                    ; preds = %2977, %2948
  br i1 %70, label %3014, label %2986, !dx.controlflow.hints !58

; <label>:2986                                    ; preds = %2985
  %2987 = fadd fast float %109, 0x3FE3C6EF40000000
  %2988 = call float @dx.op.unary.f32(i32 22, float %2987)  ; Frc(value)
  %2989 = call float @dx.op.unary.f32(i32 23, float %2951)  ; Log(value)
  %2990 = fadd fast float %2989, -7.000000e+00
  %2991 = call float @dx.op.unary.f32(i32 21, float %2990)  ; Exp(value)
  %2992 = fmul fast float %2988, 2.000000e+00
  %2993 = fadd fast float %2992, -1.000000e+00
  %2994 = fmul fast float %2991, %2993
  %2995 = fcmp fast ogt float %2951, 0.000000e+00
  %2996 = select i1 %2995, float %2994, float 0.000000e+00
  %2997 = fadd fast float %2996, %2951
  %2998 = fadd fast float %109, 0x3FF3C6EF40000000
  %2999 = call float @dx.op.unary.f32(i32 22, float %2998)  ; Frc(value)
  %3000 = fmul fast float %2999, 2.000000e+00
  %3001 = fadd fast float %3000, -1.000000e+00
  %3002 = fmul fast float %2991, %3001
  %3003 = select i1 %2995, float %3002, float 0.000000e+00
  %3004 = fadd fast float %3003, %2951
  %3005 = fadd fast float %109, 0x3FFDAA66E0000000
  %3006 = call float @dx.op.unary.f32(i32 22, float %3005)  ; Frc(value)
  %3007 = fadd fast float %2989, -6.000000e+00
  %3008 = call float @dx.op.unary.f32(i32 21, float %3007)  ; Exp(value)
  %3009 = fmul fast float %3006, 2.000000e+00
  %3010 = fadd fast float %3009, -1.000000e+00
  %3011 = fmul fast float %3008, %3010
  %3012 = select i1 %2995, float %3011, float 0.000000e+00
  %3013 = fadd fast float %3012, %2951
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %59, i32 %60, i32 %61, float %2997, float %3004, float %3013, float %2997, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3014

; <label>:3014                                    ; preds = %2986, %2985
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
!dx.entryPoints = !{!44}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !31, !36, !39}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29}
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
!23 = !{i32 15, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!24 = !{i32 16, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !27}
!27 = !{i32 1, i32 80}
!28 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!29 = !{i32 20, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !30}
!30 = !{i32 1, i32 4}
!31 = !{!32, !33, !34, !35}
!32 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!33 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!34 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!35 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!36 = !{!37, !38}
!37 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!38 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!39 = !{!40, !41, !42, !43}
!40 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!42 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!43 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!44 = !{void ()* @cs_volumetric_forwardplus_scatter_local_afog, !"cs_volumetric_forwardplus_scatter_local_afog", null, !4, !45}
!45 = !{i32 0, i64 272, i32 4, !46}
!46 = !{i32 4, i32 4, i32 4}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !54}
!52 = distinct !{!52, !53, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!53 = distinct !{!53, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!54 = distinct !{!54, !53, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
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
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
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
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !78}
!95 = distinct !{!95, !78}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = !{!107, !109, !111, !52, !54}
!107 = distinct !{!107, !108, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!108 = distinct !{!108, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!109 = distinct !{!109, !110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!110 = distinct !{!110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!111 = distinct !{!111, !110, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = !{!114}
!114 = distinct !{!114, !115, !"\01?sort@@YAXAIAM00@Z: %c"}
!115 = distinct !{!115, !"\01?sort@@YAXAIAM00@Z"}
!116 = !{!117, !118, !107, !109, !111, !52, !54}
!117 = distinct !{!117, !115, !"\01?sort@@YAXAIAM00@Z: %a"}
!118 = distinct !{!118, !115, !"\01?sort@@YAXAIAM00@Z: %b"}
!119 = !{!118}
!120 = !{!117, !114, !107, !109, !111, !52, !54}
!121 = !{!117}
!122 = !{!118, !114, !107, !109, !111, !52, !54}
!123 = !{!124}
!124 = distinct !{!124, !125, !"\01?sort@@YAXAIAM00@Z: %c"}
!125 = distinct !{!125, !"\01?sort@@YAXAIAM00@Z"}
!126 = !{!127, !128, !107, !109, !111, !52, !54}
!127 = distinct !{!127, !125, !"\01?sort@@YAXAIAM00@Z: %a"}
!128 = distinct !{!128, !125, !"\01?sort@@YAXAIAM00@Z: %b"}
!129 = !{!128}
!130 = !{!127, !124, !107, !109, !111, !52, !54}
!131 = !{!127}
!132 = !{!128, !124, !107, !109, !111, !52, !54}
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

