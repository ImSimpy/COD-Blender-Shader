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
; shader hash: e62f083305f32b7da468698c2a9a1499
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
;                                   texture     f32          3d     T17             t5     1
;                                   texture    byte         r/o     T18            t13     1
;                                   texture  struct         r/o     T19            t14     1
;                                   texture    byte         r/o     T20            t15     1
;                                   texture  struct         r/o     T21            t29     1
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

define void @cs_volumetric_forwardplus_scatter_local_water() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %34 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %35 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %36 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %37 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 3
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 1
  %42 = mul i32 %41, %39
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 1
  %45 = mul i32 %42, %44
  %46 = add i32 %45, %36
  %47 = shl i32 %46, 2
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %47, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = and i32 %49, 255
  %51 = lshr i32 %49, 8
  %52 = and i32 %51, 255
  %53 = lshr i32 %49, 16
  %54 = and i32 %53, 255
  %55 = shl nuw nsw i32 %50, 2
  %56 = shl nuw nsw i32 %52, 2
  %57 = shl nuw nsw i32 %54, 2
  %58 = add i32 %55, %33
  %59 = add i32 %56, %34
  %60 = add i32 %57, %35
  %61 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.i32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.i32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.i32 %61, 2
  %65 = icmp uge i32 %58, %62
  %66 = icmp uge i32 %59, %63
  %67 = icmp uge i32 %60, %64
  %68 = or i1 %65, %66
  %69 = or i1 %67, %68
  %70 = xor i1 %69, true
  %71 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.i32 %71, 3
  %73 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %59, i32 %72)  ; UMad(a,b,c)
  %74 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %58, i32 %73)  ; UMad(a,b,c)
  %75 = mul i32 %74, -63
  %76 = lshr i32 %75, 17
  %77 = xor i32 %76, %75
  %78 = mul i32 %77, -511
  %79 = mul i32 %77, -8176
  %80 = xor i32 %78, %79
  %81 = mul i32 %80, -7
  %82 = mul i32 %80, -7168
  %83 = xor i32 %81, %82
  %84 = lshr i32 %83, 15
  %85 = xor i32 %84, %81
  %86 = and i32 %85, 127
  %87 = mul i32 %86, 3
  %88 = add i32 0, %87
  %89 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %88
  %90 = load float, float* %89, align 4
  %91 = mul i32 %86, 3
  %92 = add i32 1, %91
  %93 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %92
  %94 = load float, float* %93, align 4
  %95 = mul i32 %86, 3
  %96 = add i32 2, %95
  %97 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %96
  %98 = load float, float* %97, align 4
  %99 = uitofp i32 %72 to float
  %100 = fmul fast float %99, 0x3FEA36A940000000
  %101 = fmul fast float %99, 0x3FE5793080000000
  %102 = fmul fast float %99, 0x3FE1972580000000
  %103 = fadd fast float %90, %100
  %104 = fadd fast float %94, %101
  %105 = fadd fast float %98, %102
  %106 = call float @dx.op.unary.f32(i32 22, float %103)  ; Frc(value)
  %107 = call float @dx.op.unary.f32(i32 22, float %104)  ; Frc(value)
  %108 = call float @dx.op.unary.f32(i32 22, float %105)  ; Frc(value)
  %109 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %58, i32 %59, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = fcmp fast ogt float %110, -1.000000e+00
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %114 = select i1 %111, float %113, float 1.000000e+00
  %115 = fadd fast float %110, 1.000000e+00
  %116 = fmul fast float %114, %115
  %117 = uitofp i32 %58 to float
  %118 = uitofp i32 %59 to float
  %119 = uitofp i32 %60 to float
  %120 = fadd fast float %119, -5.000000e-01
  %121 = fadd fast float %120, %108
  %122 = fadd fast float %117, %106
  %123 = fadd fast float %118, %107
  %124 = fadd fast float %121, 5.000000e-01
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fmul fast float %126, %122
  %130 = fmul fast float %127, %123
  %131 = fmul fast float %128, %124
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 0
  %134 = uitofp i32 %133 to float
  %135 = fmul fast float %134, %131
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = fmul fast float %135, %138
  %140 = call float @dx.op.unary.f32(i32 21, float %139)  ; Exp(value)
  %141 = fmul fast float %140, %137
  %142 = fsub fast float 4.000000e+00, %137
  %143 = fadd fast float %142, %141
  %144 = call float @dx.op.binary.f32(i32 36, float %143, float %116)  ; FMin(a,b)
  %145 = fmul fast float %129, 2.000000e+00
  %146 = fmul fast float %130, 2.000000e+00
  %147 = fsub fast float 1.000000e+00, %145
  %148 = fsub fast float 1.000000e+00, %146
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = fmul fast float %150, %147
  %154 = fmul fast float %151, %147
  %155 = fmul fast float %152, %147
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = fmul fast float %157, %148
  %161 = fmul fast float %158, %148
  %162 = fmul fast float %159, %148
  %163 = fadd fast float %160, %153
  %164 = fadd fast float %161, %154
  %165 = fadd fast float %162, %155
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = fadd fast float %163, %167
  %171 = fadd fast float %164, %168
  %172 = fadd fast float %165, %169
  %173 = fmul fast float %170, %144
  %174 = fmul fast float %171, %144
  %175 = fmul fast float %172, %144
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = fadd fast float %173, %177
  %181 = fadd fast float %174, %178
  %182 = fadd fast float %175, %179
  %183 = add i32 %60, 1
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %138, %184
  %186 = call float @dx.op.unary.f32(i32 21, float %185)  ; Exp(value)
  %187 = fmul fast float %138, %119
  %188 = call float @dx.op.unary.f32(i32 21, float %187)  ; Exp(value)
  %189 = fsub fast float %186, %188
  %190 = fmul fast float %137, %189
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = fcmp fast ogt float %192, 0.000000e+00
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %198 = fsub fast float %180, %195
  %199 = fadd fast float %198, %197
  %200 = fsub fast float %181, %196
  %201 = fadd fast float %200, %197
  %202 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %203 = fmul fast float %199, %202
  %204 = fmul fast float %201, %202
  %205 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %206 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %207 = fsub fast float 1.000000e+00, %205
  %208 = fsub fast float 1.000000e+00, %206
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %30, float %207, float %208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = fmul fast float %212, %210
  %214 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %215 = fadd fast float %214, %213
  %216 = fcmp fast ogt float %210, 0.000000e+00
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 32768
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %216, %220
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %224 = fadd fast float %215, %223
  %225 = fcmp fast ole float %182, %224
  %226 = and i1 %221, %225
  %227 = select i1 %193, i32 %133, i32 0
  %228 = add i32 %227, %60
  %229 = xor i1 %193, %226
  %230 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %231 = fmul fast float %230, 0x3FE62E4300000000
  %232 = fmul fast float %231, %231
  %233 = select i1 %69, float 0.000000e+00, float 1.000000e+00
  %234 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %37
  store float %233, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  %235 = fmul fast float %231, %233
  %236 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %37
  store float %235, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  %237 = fmul fast float %232, %233
  %238 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %37
  store float %237, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %239 = xor i32 %37, 4
  %240 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %239
  %241 = load float, float addrspace(3)* %240, align 4, !tbaa !48, !noalias !52
  %242 = fadd fast float %241, %233
  %243 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %239
  %244 = load float, float addrspace(3)* %243, align 4, !tbaa !48, !noalias !52
  %245 = fadd fast float %244, %231
  %246 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %239
  %247 = load float, float addrspace(3)* %246, align 4, !tbaa !48, !noalias !52
  %248 = fadd fast float %247, %232
  store float %242, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  store float %245, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  store float %248, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %249 = xor i32 %37, 16
  %250 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %249
  %251 = load float, float addrspace(3)* %250, align 4, !tbaa !48, !noalias !52
  %252 = fadd fast float %251, %242
  %253 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %249
  %254 = load float, float addrspace(3)* %253, align 4, !tbaa !48, !noalias !52
  %255 = fadd fast float %254, %245
  %256 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %249
  %257 = load float, float addrspace(3)* %256, align 4, !tbaa !48, !noalias !52
  %258 = fadd fast float %257, %248
  store float %252, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  store float %255, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  store float %258, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %259 = xor i32 %37, 1
  %260 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %259
  %261 = load float, float addrspace(3)* %260, align 4, !tbaa !48, !noalias !52
  %262 = fadd fast float %261, %252
  %263 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %259
  %264 = load float, float addrspace(3)* %263, align 4, !tbaa !48, !noalias !52
  %265 = fadd fast float %264, %255
  %266 = fdiv fast float %265, %262
  %267 = and i32 %58, 1
  %268 = and i32 %267, %59
  %269 = and i32 %268, %228
  %270 = icmp ne i32 %269, 0
  %271 = and i1 %270, %70
  br i1 %271, label %272, label %280, !dx.controlflow.hints !56

; <label>:272                                     ; preds = %0
  %273 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %259
  %274 = load float, float addrspace(3)* %273, align 4, !tbaa !48, !noalias !52
  %275 = fadd fast float %274, %258
  %276 = fdiv fast float %275, %262
  %277 = lshr i32 %58, 1
  %278 = lshr i32 %59, 1
  %279 = lshr i32 %228, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %277, i32 %278, i32 %279, float %266, float %276, float %266, float %266, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %280

; <label>:280                                     ; preds = %272, %0
  br i1 %69, label %282, label %281, !dx.controlflow.hints !57

; <label>:281                                     ; preds = %280
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %58, i32 %59, i32 %228, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %282

; <label>:282                                     ; preds = %281, %280
  store float %233, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  store float 0.000000e+00, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  store float 0.000000e+00, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %283 = load float, float addrspace(3)* %240, align 4, !tbaa !48, !noalias !52
  %284 = fadd fast float %283, %233
  %285 = load float, float addrspace(3)* %243, align 4, !tbaa !48, !noalias !52
  %286 = load float, float addrspace(3)* %246, align 4, !tbaa !48, !noalias !52
  store float %284, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  store float %285, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  store float %286, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %287 = load float, float addrspace(3)* %250, align 4, !tbaa !48, !noalias !52
  %288 = fadd fast float %287, %284
  %289 = load float, float addrspace(3)* %253, align 4, !tbaa !48, !noalias !52
  %290 = fadd fast float %289, %285
  %291 = load float, float addrspace(3)* %256, align 4, !tbaa !48, !noalias !52
  %292 = fadd fast float %291, %286
  store float %288, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  store float %290, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  store float %292, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %293 = load float, float addrspace(3)* %260, align 4, !tbaa !48, !noalias !52
  %294 = fadd fast float %293, %288
  %295 = load float, float addrspace(3)* %263, align 4, !tbaa !48, !noalias !52
  %296 = fadd fast float %295, %290
  %297 = fdiv fast float %296, %294
  br i1 %271, label %298, label %306, !dx.controlflow.hints !58

; <label>:298                                     ; preds = %282
  %299 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %259
  %300 = load float, float addrspace(3)* %299, align 4, !tbaa !48, !noalias !52
  %301 = fadd fast float %300, %292
  %302 = fdiv fast float %301, %294
  %303 = lshr i32 %58, 1
  %304 = lshr i32 %59, 1
  %305 = lshr i32 %228, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %303, i32 %304, i32 %305, float %297, float %302, float %297, float %297, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %306

; <label>:306                                     ; preds = %298, %282
  br i1 %69, label %308, label %307, !dx.controlflow.hints !59

; <label>:307                                     ; preds = %306
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %58, i32 %59, i32 %228, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %308

; <label>:308                                     ; preds = %307, %306
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = fsub fast float %182, %310
  %313 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %312)  ; FMax(a,b)
  %314 = fmul fast float %313, 0x3FF7154760000000
  %315 = fmul fast float %314, %311
  %316 = call float @dx.op.unary.f32(i32 21, float %315)  ; Exp(value)
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %323 = fmul fast float %322, %316
  %324 = fmul fast float %323, %318
  %325 = fmul fast float %323, %319
  %326 = fmul fast float %323, %320
  %327 = select i1 %226, float 0.000000e+00, float %323
  %328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.i32 %328, 2
  %330 = extractvalue %dx.types.CBufRet.i32 %328, 3
  %331 = call i32 @dx.op.tertiary.i32(i32 49, i32 %52, i32 %329, i32 %50)  ; UMad(a,b,c)
  %332 = call i32 @dx.op.tertiary.i32(i32 49, i32 %54, i32 %330, i32 %331)  ; UMad(a,b,c)
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %332, i32 0)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = fadd fast float %117, 1.000000e+00
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = fmul fast float %341, %121
  %343 = call float @dx.op.unary.f32(i32 21, float %342)  ; Exp(value)
  %344 = fmul fast float %343, %340
  %345 = fsub fast float 4.000000e+00, %340
  %346 = fadd fast float %345, %344
  %347 = fmul fast float %335, 2.000000e+00
  %348 = fmul fast float %347, %337
  %349 = fmul fast float %118, 2.000000e+00
  %350 = fmul fast float %349, %338
  %351 = fsub fast float 1.000000e+00, %348
  %352 = fsub fast float 1.000000e+00, %350
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = fmul fast float %354, %351
  %358 = fmul fast float %355, %351
  %359 = fmul fast float %356, %351
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fmul fast float %361, %352
  %365 = fmul fast float %362, %352
  %366 = fmul fast float %363, %352
  %367 = fadd fast float %364, %357
  %368 = fadd fast float %365, %358
  %369 = fadd fast float %366, %359
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %374 = fadd fast float %367, %371
  %375 = fadd fast float %368, %372
  %376 = fadd fast float %369, %373
  %377 = fadd fast float %118, 1.000000e+00
  %378 = fmul fast float %117, 2.000000e+00
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
  %413 = fmul fast float %411, 2.000000e+00
  %414 = fmul fast float %413, %412
  %415 = call float @dx.op.binary.f32(i32 35, float %190, float %414)  ; FMax(a,b)
  %416 = xor i1 %226, true
  %417 = and i32 %334, 8
  %418 = icmp ne i32 %417, 0
  %419 = and i1 %418, %416
  br i1 %419, label %420, label %631, !dx.controlflow.hints !60

; <label>:420                                     ; preds = %308
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = fsub fast float %180, %426
  %430 = fsub fast float %181, %427
  %431 = fsub fast float %182, %428
  %432 = fmul fast float %429, %422
  %433 = fmul fast float %430, %423
  %434 = fmul fast float %431, %424
  %435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.i32 %435, 3
  %437 = icmp eq i32 %436, 0
  %438 = fcmp fast oge float %434, 0.000000e+00
  %439 = fcmp fast ole float %434, 1.000000e+00
  br i1 %437, label %442, label %440, !dx.controlflow.hints !61

; <label>:440                                     ; preds = %420
  %441 = and i1 %438, %439
  br label %452

; <label>:442                                     ; preds = %420
  %443 = fcmp fast oge float %432, 0.000000e+00
  %444 = fcmp fast oge float %433, 0.000000e+00
  %445 = and i1 %443, %444
  %446 = and i1 %438, %445
  %447 = fcmp fast ole float %432, 1.000000e+00
  %448 = fcmp fast ole float %433, 1.000000e+00
  %449 = and i1 %447, %448
  %450 = and i1 %439, %449
  %451 = and i1 %446, %450
  br label %452

; <label>:452                                     ; preds = %442, %440
  %453 = phi i1 [ %441, %440 ], [ %451, %442 ]
  br i1 %453, label %454, label %625, !dx.controlflow.hints !62

; <label>:454                                     ; preds = %452
  %455 = fcmp fast oeq float %415, 0.000000e+00
  br i1 %455, label %470, label %456, !dx.controlflow.hints !63

; <label>:456                                     ; preds = %454
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 3
  %459 = fmul fast float %458, %415
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %464 = fmul fast float %461, %459
  %465 = fmul fast float %462, %459
  %466 = fmul fast float %463, %459
  %467 = call float @dx.op.unary.f32(i32 23, float %464)  ; Log(value)
  %468 = call float @dx.op.unary.f32(i32 23, float %465)  ; Log(value)
  %469 = call float @dx.op.unary.f32(i32 23, float %466)  ; Log(value)
  br label %470

; <label>:470                                     ; preds = %456, %454
  %471 = phi float [ %467, %456 ], [ 0.000000e+00, %454 ]
  %472 = phi float [ %468, %456 ], [ 0.000000e+00, %454 ]
  %473 = phi float [ %469, %456 ], [ 0.000000e+00, %454 ]
  %474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.i32 %474, 0
  %476 = extractvalue %dx.types.CBufRet.i32 %474, 1
  %477 = uitofp i32 %475 to float
  %478 = uitofp i32 %476 to float
  %479 = fmul fast float %432, %477
  %480 = fmul fast float %433, %478
  %481 = fadd fast float %479, 5.000000e-01
  %482 = fadd fast float %480, 5.000000e-01
  %483 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %484 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %485 = call float @dx.op.unary.f32(i32 27, float %481)  ; Round_ni(value)
  %486 = call float @dx.op.unary.f32(i32 27, float %482)  ; Round_ni(value)
  %487 = fadd fast float %485, 1.000000e+00
  %488 = fadd fast float %486, 1.000000e+00
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 0
  %491 = extractvalue %dx.types.CBufRet.f32 %489, 1
  %492 = fmul fast float %490, %487
  %493 = fmul fast float %491, %488
  %494 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %29, float %492, float %493, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = extractvalue %dx.types.ResRet.f32 %494, 1
  %497 = extractvalue %dx.types.ResRet.f32 %494, 2
  %498 = extractvalue %dx.types.ResRet.f32 %494, 3
  %499 = extractvalue %dx.types.CBufRet.i32 %474, 2
  %500 = extractvalue %dx.types.CBufRet.f32 %489, 2
  %501 = uitofp i32 %499 to float
  %502 = fadd fast float %501, -1.000000e+00
  %503 = fmul fast float %502, %495
  %504 = fmul fast float %502, %496
  %505 = fmul fast float %502, %497
  %506 = fmul fast float %502, %498
  %507 = fadd fast float %503, 5.000000e-01
  %508 = fadd fast float %504, 5.000000e-01
  %509 = fadd fast float %505, 5.000000e-01
  %510 = fadd fast float %506, 5.000000e-01
  %511 = fptoui float %507 to i32
  %512 = fptoui float %508 to i32
  %513 = fptoui float %509 to i32
  %514 = fptoui float %510 to i32
  %515 = uitofp i32 %511 to float
  %516 = uitofp i32 %512 to float
  %517 = uitofp i32 %513 to float
  %518 = uitofp i32 %514 to float
  %519 = fadd fast float %515, 5.000000e-01
  %520 = fadd fast float %516, 5.000000e-01
  %521 = fadd fast float %517, 5.000000e-01
  %522 = fadd fast float %518, 5.000000e-01
  %523 = fmul fast float %519, %500
  %524 = fmul fast float %520, %500
  %525 = fmul fast float %521, %500
  %526 = fmul fast float %522, %500
  %527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %30, float %523, float %434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %30, float %524, float %434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %30, float %525, float %434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %30, float %526, float %434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = fsub fast float %532, %534
  %536 = fmul fast float %535, %483
  %537 = fadd fast float %536, %534
  %538 = fsub fast float %530, %528
  %539 = fmul fast float %538, %483
  %540 = fadd fast float %539, %528
  %541 = fsub fast float %540, %537
  %542 = fmul fast float %541, %484
  %543 = fadd fast float %542, %537
  %544 = fcmp fast ogt float %543, 0.000000e+00
  br i1 %544, label %545, label %613, !dx.controlflow.hints !64

; <label>:545                                     ; preds = %470
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %549 = extractvalue %dx.types.CBufRet.f32 %546, 2
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %552 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %553 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %554 = fmul fast float %430, %422
  %555 = fmul fast float %431, %422
  %556 = fadd fast float %432, %551
  %557 = fadd fast float %554, %552
  %558 = fadd fast float %555, %553
  %559 = fmul fast float %556, %547
  %560 = fmul fast float %557, %547
  %561 = fmul fast float %558, %547
  %562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %559, float %560, float %561, float undef, i32 0, i32 0, i32 0, float %471)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = fmul fast float %556, %548
  %565 = fmul fast float %557, %548
  %566 = fmul fast float %558, %548
  %567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %564, float %565, float %566, float undef, i32 0, i32 0, i32 0, float %472)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 1
  %569 = fmul fast float %556, %549
  %570 = fmul fast float %557, %549
  %571 = fmul fast float %558, %549
  %572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %569, float %570, float %571, float undef, i32 0, i32 0, i32 0, float %473)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 2
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %576 = fmul fast float %568, %563
  %577 = fmul fast float %576, %573
  %578 = call float @dx.op.unary.f32(i32 23, float %577)  ; Log(value)
  %579 = fmul fast float %578, %575
  %580 = call float @dx.op.unary.f32(i32 21, float %579)  ; Exp(value)
  %581 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %582 = fmul fast float %543, %543
  %583 = fmul fast float %582, %580
  %584 = fmul fast float %583, %581
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 3
  %587 = fmul fast float %586, %584
  %588 = bitcast float %587 to i32
  %589 = sitofp i32 %588 to float
  %590 = fptosi float %589 to i32
  %591 = bitcast i32 %590 to float
  %592 = fsub fast float 1.000000e+00, %584
  %593 = bitcast float %592 to i32
  %594 = sitofp i32 %593 to float
  %595 = fptosi float %594 to i32
  %596 = bitcast i32 %595 to float
  %597 = fadd fast float %591, %596
  %598 = bitcast float %597 to i32
  %599 = sub nsw i32 2129859010, %598
  %600 = bitcast i32 %599 to float
  %601 = fmul fast float %600, %591
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 0
  %606 = fmul fast float %601, %605
  %607 = fadd fast float %606, 1.000000e+00
  %608 = bitcast float %607 to i32
  %609 = sub nsw i32 2129859010, %608
  %610 = bitcast i32 %609 to float
  %611 = fmul fast float %601, %603
  %612 = fmul fast float %611, %610
  br label %613

; <label>:613                                     ; preds = %545, %470
  %614 = phi float [ %612, %545 ], [ %543, %470 ]
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %618 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %619 = fmul fast float %616, %614
  %620 = fmul fast float %617, %614
  %621 = fmul fast float %618, %614
  %622 = fadd fast float %619, %324
  %623 = fadd fast float %620, %325
  %624 = fadd fast float %621, %326
  br label %625

; <label>:625                                     ; preds = %613, %452
  %626 = phi float [ %622, %613 ], [ %324, %452 ]
  %627 = phi float [ %623, %613 ], [ %325, %452 ]
  %628 = phi float [ %624, %613 ], [ %326, %452 ]
  %629 = phi float [ %614, %613 ], [ 0.000000e+00, %452 ]
  %630 = fadd fast float %629, %327
  br label %631

; <label>:631                                     ; preds = %625, %308
  %632 = phi float [ %626, %625 ], [ %324, %308 ]
  %633 = phi float [ %627, %625 ], [ %325, %308 ]
  %634 = phi float [ %628, %625 ], [ %326, %308 ]
  %635 = phi float [ %630, %625 ], [ %327, %308 ]
  br i1 %226, label %1126, label %636, !dx.controlflow.hints !65

; <label>:636                                     ; preds = %631
  %637 = and i32 %334, 2
  %638 = icmp ne i32 %637, 0
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 2
  %643 = fadd fast float %642, %640
  %644 = fcmp fast ole float %182, %643
  %645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.i32 %645, 3
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %667, !dx.controlflow.hints !66

; <label>:648                                     ; preds = %636
  %649 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %650 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %651 = fsub fast float %180, %649
  %652 = fsub fast float %181, %650
  %653 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %654 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %655 = fdiv fast float 1.000000e+00, %653
  %656 = fdiv fast float 1.000000e+00, %654
  %657 = fmul fast float %651, %655
  %658 = fmul fast float %656, %652
  %659 = fcmp fast oge float %657, 0.000000e+00
  %660 = fcmp fast oge float %658, 0.000000e+00
  %661 = and i1 %659, %660
  %662 = and i1 %644, %661
  %663 = fcmp fast ole float %657, 1.000000e+00
  %664 = fcmp fast ole float %658, 1.000000e+00
  %665 = and i1 %663, %664
  %666 = and i1 %665, %662
  br label %667

; <label>:667                                     ; preds = %648, %636
  %668 = phi i1 [ %666, %648 ], [ %644, %636 ]
  %669 = and i1 %638, %668
  br i1 %669, label %670, label %846, !dx.controlflow.hints !67

; <label>:670                                     ; preds = %667
  %671 = fcmp fast oeq float %415, 0.000000e+00
  br i1 %671, label %677, label %672, !dx.controlflow.hints !68

; <label>:672                                     ; preds = %670
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 3
  %675 = fmul fast float %674, %415
  %676 = call float @dx.op.unary.f32(i32 23, float %675)  ; Log(value)
  br label %677

; <label>:677                                     ; preds = %672, %670
  %678 = phi float [ %676, %672 ], [ 0.000000e+00, %670 ]
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %681 = extractvalue %dx.types.CBufRet.f32 %679, 1
  %682 = extractvalue %dx.types.CBufRet.f32 %679, 2
  %683 = fsub fast float %180, %680
  %684 = fsub fast float %181, %681
  %685 = fsub fast float %182, %682
  %686 = fmul fast float %683, %683
  %687 = fmul fast float %684, %684
  %688 = fadd fast float %686, %687
  %689 = fmul fast float %685, %685
  %690 = fadd fast float %688, %689
  %691 = call float @dx.op.unary.f32(i32 24, float %690)  ; Sqrt(value)
  %692 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %694 = fsub fast float %180, %692
  %695 = fsub fast float %181, %693
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %699 = fmul fast float %694, %697
  %700 = fmul fast float %695, %698
  %701 = fsub fast float 1.000000e+00, %700
  br i1 %647, label %708, label %702, !dx.controlflow.hints !69

; <label>:702                                     ; preds = %677
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %29, float %699, float %701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = extractvalue %dx.types.ResRet.f32 %703, 3
  br label %714

; <label>:708                                     ; preds = %677
  %709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %30, float %699, float %701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = extractvalue %dx.types.ResRet.f32 %709, 1
  %712 = extractvalue %dx.types.ResRet.f32 %709, 2
  %713 = extractvalue %dx.types.ResRet.f32 %709, 3
  br label %714

; <label>:714                                     ; preds = %708, %702
  %715 = phi float [ %704, %702 ], [ %710, %708 ]
  %716 = phi float [ %705, %702 ], [ %711, %708 ]
  %717 = phi float [ %706, %702 ], [ %712, %708 ]
  %718 = phi float [ %707, %702 ], [ %713, %708 ]
  %719 = extractvalue %dx.types.CBufRet.f32 %696, 3
  %720 = fmul fast float %719, %716
  %721 = fmul fast float %720, %715
  %722 = fsub fast float %720, %721
  %723 = fcmp fast ole float %722, 0.000000e+00
  %724 = fmul fast float %719, %717
  %725 = fadd fast float %724, %640
  %726 = fdiv fast float 1.000000e+00, %722
  %727 = select i1 %723, float 1.000000e+06, float %726
  %728 = fsub fast float %182, %640
  %729 = fsub fast float %728, %721
  %730 = fmul fast float %727, %729
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %732 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %733 = fmul fast float %732, %731
  %734 = fsub fast float %732, %733
  %735 = fcmp fast olt float %182, %725
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %738 = select i1 %735, float %737, float 1.000000e+00
  %739 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %740 = fcmp fast oeq float %739, 0.000000e+00
  br i1 %740, label %823, label %741, !dx.controlflow.hints !70

; <label>:741                                     ; preds = %714
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %744 = fcmp fast ogt float %743, 0.000000e+00
  %745 = extractvalue %dx.types.CBufRet.f32 %736, 2
  br i1 %744, label %746, label %776, !dx.controlflow.hints !71

; <label>:746                                     ; preds = %741
  %747 = fmul fast float %699, %743
  %748 = fmul fast float %700, %743
  %749 = fsub fast float 1.000000e+00, %748
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %747, float %749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = extractvalue %dx.types.ResRet.f32 %750, 1
  %753 = fmul fast float %751, 2.000000e+00
  %754 = fmul fast float %752, 2.000000e+00
  %755 = fadd fast float %753, -1.000000e+00
  %756 = fadd fast float %754, -1.000000e+00
  %757 = fmul fast float %739, %180
  %758 = fmul fast float %739, %181
  %759 = fmul fast float %739, %182
  %760 = call float @dx.op.unary.f32(i32 22, float %745)  ; Frc(value)
  %761 = fmul fast float %755, %760
  %762 = fmul fast float %756, %760
  %763 = fsub fast float %757, %761
  %764 = fsub fast float %758, %762
  %765 = fadd fast float %745, 5.000000e-01
  %766 = call float @dx.op.unary.f32(i32 22, float %765)  ; Frc(value)
  %767 = fmul fast float %766, %755
  %768 = fmul fast float %766, %756
  %769 = fadd fast float %757, -5.000000e-01
  %770 = fsub fast float %769, %767
  %771 = fadd fast float %758, -5.000000e-01
  %772 = fsub fast float %771, %768
  %773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %27, float %770, float %772, float %759, float undef, i32 0, i32 0, i32 0, float %678)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  br label %789

; <label>:776                                     ; preds = %741
  %777 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %778 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %779 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %780 = fmul fast float %745, %777
  %781 = fmul fast float %745, %778
  %782 = fmul fast float %745, %779
  %783 = fsub fast float %180, %780
  %784 = fsub fast float %181, %781
  %785 = fsub fast float %182, %782
  %786 = fmul fast float %783, %739
  %787 = fmul fast float %784, %739
  %788 = fmul fast float %785, %739
  br label %789

; <label>:789                                     ; preds = %776, %746
  %790 = phi float [ %763, %746 ], [ %786, %776 ]
  %791 = phi float [ %764, %746 ], [ %787, %776 ]
  %792 = phi float [ %759, %746 ], [ %788, %776 ]
  %793 = phi float [ %774, %746 ], [ 0.000000e+00, %776 ]
  %794 = phi float [ %775, %746 ], [ 0.000000e+00, %776 ]
  %795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %27, float %790, float %791, float %792, float undef, i32 0, i32 0, i32 0, float %678)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  br i1 %744, label %798, label %810, !dx.controlflow.hints !72

; <label>:798                                     ; preds = %789
  %799 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %800 = call float @dx.op.unary.f32(i32 22, float %799)  ; Frc(value)
  %801 = fmul fast float %800, 2.000000e+00
  %802 = fadd fast float %801, -1.000000e+00
  %803 = call float @dx.op.unary.f32(i32 6, float %802)  ; FAbs(value)
  %804 = fsub fast float %793, %796
  %805 = fmul fast float %803, %804
  %806 = fadd fast float %805, %796
  %807 = fsub fast float %794, %797
  %808 = fmul fast float %803, %807
  %809 = fadd fast float %808, %797
  br label %810

; <label>:810                                     ; preds = %798, %789
  %811 = phi float [ %806, %798 ], [ %796, %789 ]
  %812 = phi float [ %809, %798 ], [ %797, %789 ]
  %813 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %814 = fadd fast float %813, %813
  %815 = fdiv fast float 2.000000e+00, %814
  %816 = fmul fast float %813, 2.000000e+00
  %817 = fadd fast float %811, -1.000000e+00
  %818 = fadd fast float %817, %812
  %819 = fadd fast float %818, %816
  %820 = fmul fast float %819, %815
  %821 = fadd fast float %820, -1.000000e+00
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  br label %823

; <label>:823                                     ; preds = %810, %714
  %824 = phi float [ %822, %810 ], [ 1.000000e+00, %714 ]
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  %827 = extractvalue %dx.types.CBufRet.f32 %825, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %825, 2
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 1
  %831 = fsub fast float %691, %830
  %832 = extractvalue %dx.types.CBufRet.f32 %829, 2
  %833 = fmul fast float %831, %832
  %834 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %835 = fmul fast float %738, %718
  %836 = fmul fast float %835, %734
  %837 = fmul fast float %836, %824
  %838 = fmul fast float %837, %834
  %839 = fmul fast float %838, %826
  %840 = fmul fast float %838, %827
  %841 = fmul fast float %838, %828
  %842 = fadd fast float %839, %632
  %843 = fadd fast float %840, %633
  %844 = fadd fast float %841, %634
  %845 = fadd fast float %838, %635
  br label %846

; <label>:846                                     ; preds = %823, %667
  %847 = phi float [ %842, %823 ], [ %632, %667 ]
  %848 = phi float [ %843, %823 ], [ %633, %667 ]
  %849 = phi float [ %844, %823 ], [ %634, %667 ]
  %850 = phi float [ %845, %823 ], [ %635, %667 ]
  %851 = and i32 %334, 1
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %1126, label %853, !dx.controlflow.hints !73

; <label>:853                                     ; preds = %846
  %854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.i32 %854, 1
  %856 = and i32 %855, 1
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %933, label %858, !dx.controlflow.hints !74

; <label>:858                                     ; preds = %853
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 3
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %864 = extractvalue %dx.types.CBufRet.f32 %859, 0
  %865 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %866 = extractvalue %dx.types.CBufRet.f32 %859, 2
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %869 = extractvalue %dx.types.CBufRet.f32 %867, 1
  %870 = extractvalue %dx.types.CBufRet.f32 %867, 2
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 3
  %873 = and i32 %855, 2
  %874 = extractvalue %dx.types.CBufRet.i32 %854, 0
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %912, label %876

; <label>:876                                     ; preds = %858
  br label %877

; <label>:877                                     ; preds = %877, %876
  %878 = phi float [ %906, %877 ], [ 0.000000e+00, %876 ]
  %879 = phi float [ %905, %877 ], [ 1.000000e+06, %876 ]
  %880 = phi i32 [ %907, %877 ], [ 0, %876 ]
  %881 = add i32 %880, 171
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %881)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %887 = extractvalue %dx.types.CBufRet.f32 %882, 2
  %888 = fsub fast float %180, %883
  %889 = fsub fast float %181, %884
  %890 = fmul fast float %888, %888
  %891 = fmul fast float %889, %889
  %892 = fadd fast float %890, %891
  %893 = call float @dx.op.unary.f32(i32 24, float %892)  ; Sqrt(value)
  %894 = fsub fast float %893, %887
  %895 = icmp ne i32 %873, 0
  %896 = fsub fast float -0.000000e+00, %863
  %897 = select i1 %895, float %896, float %863
  %898 = fmul fast float %894, %897
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %900 = fmul fast float %899, %862
  %901 = fsub fast float %886, %182
  %902 = fmul fast float %901, %860
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %904 = fmul fast float %900, %903
  %905 = call float @dx.op.binary.f32(i32 36, float %879, float %894)  ; FMin(a,b)
  %906 = call float @dx.op.binary.f32(i32 35, float %878, float %904)  ; FMax(a,b)
  %907 = add nuw nsw i32 %880, 1
  %908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.i32 %908, 0
  %910 = icmp ult i32 %907, %909
  br i1 %910, label %877, label %911

; <label>:911                                     ; preds = %877
  br label %912

; <label>:912                                     ; preds = %911, %858
  %913 = phi float [ 0.000000e+00, %858 ], [ %906, %911 ]
  %914 = phi float [ 1.000000e+06, %858 ], [ %905, %911 ]
  %915 = fadd fast float %913, %850
  %916 = fmul fast float %914, %872
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %918 = fsub fast float %868, %864
  %919 = fsub fast float %869, %865
  %920 = fsub fast float %870, %866
  %921 = fmul fast float %917, %918
  %922 = fmul fast float %917, %919
  %923 = fmul fast float %917, %920
  %924 = fadd fast float %921, %864
  %925 = fadd fast float %922, %865
  %926 = fadd fast float %923, %866
  %927 = fmul fast float %924, %913
  %928 = fmul fast float %925, %913
  %929 = fmul fast float %926, %913
  %930 = fadd fast float %927, %847
  %931 = fadd fast float %928, %848
  %932 = fadd fast float %929, %849
  br label %1126

; <label>:933                                     ; preds = %853
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 2
  %936 = extractvalue %dx.types.CBufRet.f32 %934, 3
  %937 = fmul fast float %935, %180
  %938 = fmul fast float %936, %181
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %941 = extractvalue %dx.types.CBufRet.f32 %939, 1
  %942 = fadd fast float %937, %940
  %943 = fadd fast float %938, %941
  %944 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %945 = call float @dx.op.unary.f32(i32 7, float %943)  ; Saturate(value)
  %946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %30, float %944, float %945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = fmul fast float %949, %947
  %951 = fsub fast float %942, %944
  %952 = fsub fast float %943, %945
  %953 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %954 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %955 = fmul fast float %953, %951
  %956 = fmul fast float %954, %952
  %957 = fmul fast float %955, %955
  %958 = fmul fast float %956, %956
  %959 = fadd fast float %957, %958
  %960 = call float @dx.op.unary.f32(i32 24, float %959)  ; Sqrt(value)
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %963 = fmul fast float %962, %960
  %964 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  %965 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %966 = fsub fast float %965, %950
  %967 = fmul fast float %966, %964
  %968 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %969 = fsub fast float %182, %950
  %970 = fsub fast float %969, %968
  %971 = fsub fast float %970, %967
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %974 = fsub fast float %971, %973
  %975 = fcmp fast olt float %974, 0.000000e+00
  %976 = extractvalue %dx.types.CBufRet.i32 %854, 0
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %1028, label %978

; <label>:978                                     ; preds = %933
  br label %979

; <label>:979                                     ; preds = %1017, %978
  %980 = phi i32 [ %1023, %1017 ], [ 1, %978 ]
  %981 = phi i32 [ %1024, %1017 ], [ 0, %978 ]
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.i32 %984, 1
  %986 = and i32 %985, 8
  %987 = icmp eq i32 %986, 0
  %988 = fcmp fast ogt float %983, %971
  %989 = or i1 %988, %987
  %990 = add i32 %981, 171
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %990)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %994 = extractvalue %dx.types.CBufRet.f32 %991, 2
  br i1 %989, label %995, label %1001, !dx.controlflow.hints !75

; <label>:995                                     ; preds = %979
  %996 = fsub fast float %992, %180
  %997 = fsub fast float %993, %181
  %998 = fmul fast float %996, %996
  %999 = fmul fast float %997, %997
  %1000 = fadd fast float %998, %999
  br label %1017

; <label>:1001                                    ; preds = %979
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1004 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %1005 = fmul fast float %1004, %1003
  %1006 = fsub fast float %1005, %983
  %1007 = fdiv fast float %994, %1006
  %1008 = fsub fast float %180, %992
  %1009 = fsub fast float %181, %993
  %1010 = fsub fast float %971, %983
  %1011 = fmul fast float %1007, %1010
  %1012 = fmul fast float %1008, %1008
  %1013 = fmul fast float %1009, %1009
  %1014 = fadd fast float %1012, %1013
  %1015 = fmul fast float %1011, %1011
  %1016 = fadd fast float %1014, %1015
  br label %1017

; <label>:1017                                    ; preds = %1001, %995
  %1018 = phi float [ %1000, %995 ], [ %1016, %1001 ]
  %1019 = call float @dx.op.unary.f32(i32 24, float %1018)  ; Sqrt(value)
  %1020 = fsub float %994, %1019
  %1021 = fcmp fast olt float %1020, 0.000000e+00
  %1022 = zext i1 %1021 to i32
  %1023 = and i32 %1022, %980
  %1024 = add i32 %981, 1
  %1025 = extractvalue %dx.types.CBufRet.i32 %984, 0
  %1026 = icmp ult i32 %1024, %1025
  br i1 %1026, label %979, label %1027

; <label>:1027                                    ; preds = %1017
  br label %1028

; <label>:1028                                    ; preds = %1027, %933
  %1029 = phi i32 [ 1, %933 ], [ %1023, %1027 ]
  br label %1030

; <label>:1030                                    ; preds = %1030, %1028
  %1031 = phi i32 [ %1067, %1030 ], [ %1029, %1028 ]
  %1032 = phi i32 [ %1068, %1030 ], [ 0, %1028 ]
  %1033 = add nuw nsw i32 %1032, 191
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %1033)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1038 = add nuw nsw i32 %1032, 195
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %1038)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1043 = fsub fast float %180, %1035
  %1044 = fsub fast float %181, %1036
  %1045 = fsub fast float %971, %1037
  %1046 = call float @dx.op.unary.f32(i32 6, float %1043)  ; FAbs(value)
  %1047 = call float @dx.op.unary.f32(i32 6, float %1044)  ; FAbs(value)
  %1048 = call float @dx.op.unary.f32(i32 6, float %1045)  ; FAbs(value)
  %1049 = fsub fast float %1046, %1040
  %1050 = fsub fast float %1047, %1041
  %1051 = fsub fast float %1048, %1042
  %1052 = call float @dx.op.binary.f32(i32 35, float %1049, float 0.000000e+00)  ; FMax(a,b)
  %1053 = call float @dx.op.binary.f32(i32 35, float %1050, float 0.000000e+00)  ; FMax(a,b)
  %1054 = call float @dx.op.binary.f32(i32 35, float %1051, float 0.000000e+00)  ; FMax(a,b)
  %1055 = fmul fast float %1052, %1052
  %1056 = fmul fast float %1053, %1053
  %1057 = fadd fast float %1056, %1055
  %1058 = fmul fast float %1054, %1054
  %1059 = fadd fast float %1057, %1058
  %1060 = call float @dx.op.unary.f32(i32 24, float %1059)  ; Sqrt(value)
  %1061 = call float @dx.op.binary.f32(i32 35, float %1050, float %1051)  ; FMax(a,b)
  %1062 = call float @dx.op.binary.f32(i32 35, float %1049, float %1061)  ; FMax(a,b)
  %1063 = call float @dx.op.binary.f32(i32 36, float %1062, float 0.000000e+00)  ; FMin(a,b)
  %1064 = fadd fast float %1063, %1060
  %1065 = fcmp ogt float %1064, -0.000000e+00
  %1066 = zext i1 %1065 to i32
  %1067 = and i32 %1066, %1031
  %1068 = add nuw nsw i32 %1032, 1
  %1069 = icmp eq i32 %1068, 4
  br i1 %1069, label %1070, label %1030

; <label>:1070                                    ; preds = %1030
  %1071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.i32 %1071, 1
  %1073 = lshr i32 %1072, 1
  %1074 = xor i32 %1073, %1067
  %1075 = zext i1 %975 to i32
  %1076 = and i32 %1074, %1075
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1126, label %1078, !dx.controlflow.hints !76

; <label>:1078                                    ; preds = %1070
  %1079 = fmul fast float %173, %173
  %1080 = fmul fast float %174, %174
  %1081 = fadd fast float %1079, %1080
  %1082 = fmul fast float %175, %175
  %1083 = fadd fast float %1081, %1082
  %1084 = call float @dx.op.unary.f32(i32 24, float %1083)  ; Sqrt(value)
  %1085 = and i32 %855, 4
  %1086 = icmp ne i32 %1085, 0
  %1087 = select i1 %1086, float %1084, float 1.000000e+00
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 1
  %1090 = fsub fast float %1087, %1089
  %1091 = extractvalue %dx.types.CBufRet.f32 %1088, 3
  %1092 = fmul fast float %1090, %1091
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 3
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1098 = fsub fast float %1097, %971
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1101 = fmul fast float %1098, %1100
  %1102 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  %1103 = fmul fast float %1102, %1095
  %1104 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1105 = fsub fast float %1084, %1104
  %1106 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1107 = fmul fast float %1105, %1106
  %1108 = call float @dx.op.unary.f32(i32 7, float %1107)  ; Saturate(value)
  %1109 = fsub fast float 1.000000e+00, %1093
  %1110 = fmul fast float %1108, %1109
  %1111 = fadd fast float %1110, %1093
  %1112 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1113 = fsub fast float %1103, %1112
  %1114 = fmul fast float %1113, %1111
  %1115 = fadd fast float %1114, %1112
  %1116 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1094, 1
  %1118 = extractvalue %dx.types.CBufRet.f32 %1094, 2
  %1119 = fadd fast float %1115, %850
  %1120 = fmul fast float %1115, %1116
  %1121 = fmul fast float %1115, %1117
  %1122 = fmul fast float %1115, %1118
  %1123 = fadd fast float %1120, %847
  %1124 = fadd fast float %1121, %848
  %1125 = fadd fast float %1122, %849
  br label %1126

; <label>:1126                                    ; preds = %1078, %1070, %912, %846, %631
  %1127 = phi float [ %632, %631 ], [ %847, %846 ], [ %930, %912 ], [ %1123, %1078 ], [ %847, %1070 ]
  %1128 = phi float [ %633, %631 ], [ %848, %846 ], [ %931, %912 ], [ %1124, %1078 ], [ %848, %1070 ]
  %1129 = phi float [ %634, %631 ], [ %849, %846 ], [ %932, %912 ], [ %1125, %1078 ], [ %849, %1070 ]
  %1130 = phi float [ %635, %631 ], [ %850, %846 ], [ %915, %912 ], [ %1119, %1078 ], [ %850, %1070 ]
  %1131 = and i32 %334, 32
  %1132 = icmp ne i32 %1131, 0
  %1133 = and i1 %226, %1132
  br i1 %1133, label %1134, label %1172, !dx.controlflow.hints !77

; <label>:1134                                    ; preds = %1126
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1139 = fsub fast float %180, %1136
  %1140 = fadd fast float %1139, %1138
  %1141 = fsub fast float %181, %1137
  %1142 = fadd fast float %1141, %1138
  %1143 = extractvalue %dx.types.CBufRet.f32 %1135, 3
  %1144 = fmul fast float %1140, %1143
  %1145 = fmul fast float %1142, %1143
  %1146 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1147 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1148 = fsub fast float 1.000000e+00, %1146
  %1149 = fsub fast float 1.000000e+00, %1147
  %1150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %30, float %1148, float %1149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.ResRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.ResRet.f32 %1150, 2
  %1154 = fmul fast float %1151, 0x3F847AE140000000
  %1155 = fmul fast float %1152, 0x3F847AE140000000
  %1156 = fmul fast float %1153, 0x3F847AE140000000
  %1157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %30, float %1148, float %1149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.ResRet.f32 %1157, 1
  %1160 = extractvalue %dx.types.ResRet.f32 %1157, 2
  %1161 = call float @dx.op.dot3.f32(i32 55, float %1154, float %1155, float %1156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1162 = fadd fast float %1158, %1151
  %1163 = fmul fast float %1162, 0x3F847AE140000000
  %1164 = fadd fast float %1159, %1152
  %1165 = fmul fast float %1164, 0x3F847AE140000000
  %1166 = fadd fast float %1160, %1153
  %1167 = fmul fast float %1166, 0x3F847AE140000000
  %1168 = fadd fast float %1161, %1130
  %1169 = fadd fast float %1154, %1127
  %1170 = fadd fast float %1155, %1128
  %1171 = fadd fast float %1156, %1129
  br label %1172

; <label>:1172                                    ; preds = %1134, %1126
  %1173 = phi float [ %1169, %1134 ], [ %1127, %1126 ]
  %1174 = phi float [ %1170, %1134 ], [ %1128, %1126 ]
  %1175 = phi float [ %1171, %1134 ], [ %1129, %1126 ]
  %1176 = phi float [ %1168, %1134 ], [ %1130, %1126 ]
  %1177 = phi float [ %1163, %1134 ], [ 0.000000e+00, %1126 ]
  %1178 = phi float [ %1165, %1134 ], [ 0.000000e+00, %1126 ]
  %1179 = phi float [ %1167, %1134 ], [ 0.000000e+00, %1126 ]
  %1180 = and i32 %334, 16
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1973, label %1182, !dx.controlflow.hints !78

; <label>:1182                                    ; preds = %1172
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 3
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 3
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 3
  %1193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.i32 %1193, 0
  %1195 = icmp ne i32 %1194, 0
  %1196 = zext i1 %1195 to i32
  %1197 = extractvalue %dx.types.CBufRet.i32 %1193, 1
  %1198 = icmp ne i32 %1197, 0
  %1199 = zext i1 %1198 to i32
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 0
  %1202 = bitcast float %1201 to i32
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1253, label %1204

; <label>:1204                                    ; preds = %1182
  br label %1205

; <label>:1205                                    ; preds = %1248, %1204
  %1206 = phi i32 [ %1249, %1248 ], [ 0, %1204 ]
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1209 = bitcast float %1208 to i32
  %1210 = call i32 @dx.op.tertiary.i32(i32 49, i32 %332, i32 %1209, i32 %1206)  ; UMad(a,b,c)
  %1211 = shl i32 %1210, 2
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  br label %1214

; <label>:1214                                    ; preds = %1217, %1205
  %1215 = phi i32 [ %1213, %1205 ], [ %1222, %1217 ]
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1248, label %1217

; <label>:1217                                    ; preds = %1214
  %1218 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1215)  ; FirstbitLo(value)
  %1219 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1206, i32 %1218)  ; UMad(a,b,c)
  %1220 = and i32 %1218, 31
  %1221 = shl i32 1, %1220
  %1222 = xor i32 %1221, %1215
  %1223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1219, i32 0)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.ResRet.f32 %1223, 2
  %1227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1219, i32 16)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = fsub fast float %1224, %1228
  %1232 = fsub fast float %1225, %1229
  %1233 = fsub fast float %1226, %1230
  %1234 = fadd fast float %1228, %1224
  %1235 = fadd fast float %1229, %1225
  %1236 = fadd fast float %1230, %1226
  %1237 = fcmp fast ogt float %180, %1231
  %1238 = fcmp fast ogt float %181, %1232
  %1239 = fcmp fast ogt float %182, %1233
  %1240 = and i1 %1237, %1238
  %1241 = and i1 %1239, %1240
  %1242 = fcmp fast olt float %180, %1234
  %1243 = fcmp fast olt float %181, %1235
  %1244 = fcmp fast olt float %182, %1236
  %1245 = and i1 %1242, %1243
  %1246 = and i1 %1244, %1245
  %1247 = and i1 %1241, %1246
  br i1 %1247, label %1251, label %1214, !dx.controlflow.hints !79

; <label>:1248                                    ; preds = %1214
  %1249 = add i32 %1206, 1
  %1250 = icmp ult i32 %1249, %1209
  br i1 %1250, label %1205, label %1252, !llvm.loop !80

; <label>:1251                                    ; preds = %1217
  br label %1253

; <label>:1252                                    ; preds = %1248
  br label %1253

; <label>:1253                                    ; preds = %1252, %1251, %1182
  %1254 = phi i32 [ 255, %1182 ], [ %1219, %1251 ], [ 255, %1252 ]
  %1255 = icmp eq i32 %1254, 255
  br i1 %1255, label %1275, label %1256, !dx.controlflow.hints !82

; <label>:1256                                    ; preds = %1253
  %1257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 32)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.ResRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.ResRet.f32 %1257, 2
  %1261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 132)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 136)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 152)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1254, i32 156)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1254, i32 160)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = icmp ne i32 %1268, 0
  %1272 = zext i1 %1271 to i32
  %1273 = icmp ne i32 %1270, 0
  %1274 = zext i1 %1273 to i32
  br label %1275

; <label>:1275                                    ; preds = %1256, %1253
  %1276 = phi float [ %1258, %1256 ], [ %1184, %1253 ]
  %1277 = phi float [ %1259, %1256 ], [ %1185, %1253 ]
  %1278 = phi float [ %1260, %1256 ], [ %1186, %1253 ]
  %1279 = phi float [ %1262, %1256 ], [ %1188, %1253 ]
  %1280 = phi float [ %1264, %1256 ], [ %1190, %1253 ]
  %1281 = phi float [ %1266, %1256 ], [ %1192, %1253 ]
  %1282 = phi i32 [ %1272, %1256 ], [ %1196, %1253 ]
  %1283 = phi i32 [ %1274, %1256 ], [ %1199, %1253 ]
  %1284 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1285 = extractvalue %dx.types.CBufRet.f32 %1189, 1
  %1286 = fsub fast float %180, %1284
  %1287 = fsub fast float %181, %1285
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 3
  %1291 = fmul fast float %1286, %1289
  %1292 = fmul fast float %1287, %1290
  %1293 = call float @dx.op.binary.f32(i32 36, float %1291, float %1292)  ; FMin(a,b)
  %1294 = fcmp fast olt float %1293, 0.000000e+00
  %1295 = call float @dx.op.binary.f32(i32 35, float %1291, float %1292)  ; FMax(a,b)
  %1296 = fcmp fast ogt float %1295, 1.000000e+00
  %1297 = or i1 %1294, %1296
  %1298 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1299 = fcmp fast olt float %182, %1298
  %1300 = or i1 %1297, %1299
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1305 = fadd fast float %1304, %1302
  %1306 = fcmp fast ogt float %182, %1305
  %1307 = or i1 %1300, %1306
  br i1 %1307, label %1592, label %1308, !dx.controlflow.hints !83

; <label>:1308                                    ; preds = %1275
  %1309 = fsub fast float 1.000000e+00, %1292
  %1310 = extractvalue %dx.types.CBufRet.f32 %1303, 3
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 3
  %1313 = extractvalue %dx.types.CBufRet.f32 %1311, 2
  %1314 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1318 = extractvalue %dx.types.CBufRet.f32 %1315, 2
  %1319 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  br i1 %1255, label %1335, label %1320, !dx.controlflow.hints !84

; <label>:1320                                    ; preds = %1308
  %1321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 48)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = extractvalue %dx.types.ResRet.f32 %1321, 1
  %1324 = extractvalue %dx.types.ResRet.f32 %1321, 2
  %1325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 104)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 108)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 112)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.f32 %1329, 0
  %1331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 116)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 120)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.f32 %1333, 0
  br label %1335

; <label>:1335                                    ; preds = %1320, %1308
  %1336 = phi float [ %1328, %1320 ], [ %1310, %1308 ]
  %1337 = phi float [ %1332, %1320 ], [ %1312, %1308 ]
  %1338 = phi float [ %1334, %1320 ], [ %1313, %1308 ]
  %1339 = phi float [ %1330, %1320 ], [ %1314, %1308 ]
  %1340 = phi float [ %1322, %1320 ], [ %1316, %1308 ]
  %1341 = phi float [ %1323, %1320 ], [ %1317, %1308 ]
  %1342 = phi float [ %1324, %1320 ], [ %1318, %1308 ]
  %1343 = phi float [ %1326, %1320 ], [ %1319, %1308 ]
  %1344 = fcmp fast oeq float %1336, 0.000000e+00
  br i1 %1344, label %1460, label %1345, !dx.controlflow.hints !85

; <label>:1345                                    ; preds = %1335
  %1346 = fcmp fast ogt float %1337, 0.000000e+00
  %1347 = fcmp fast oeq float %415, 0.000000e+00
  br i1 %1347, label %1352, label %1348, !dx.controlflow.hints !68

; <label>:1348                                    ; preds = %1345
  %1349 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1350 = fmul fast float %1349, %415
  %1351 = call float @dx.op.unary.f32(i32 23, float %1350)  ; Log(value)
  br label %1352

; <label>:1352                                    ; preds = %1348, %1345
  %1353 = phi float [ %1351, %1348 ], [ 0.000000e+00, %1345 ]
  br i1 %1347, label %1358, label %1354, !dx.controlflow.hints !68

; <label>:1354                                    ; preds = %1352
  %1355 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1356 = fmul fast float %1355, %415
  %1357 = call float @dx.op.unary.f32(i32 23, float %1356)  ; Log(value)
  br label %1358

; <label>:1358                                    ; preds = %1354, %1352
  %1359 = phi float [ %1357, %1354 ], [ 0.000000e+00, %1352 ]
  br i1 %1346, label %1360, label %1422, !dx.controlflow.hints !86

; <label>:1360                                    ; preds = %1358
  %1361 = fcmp fast ogt float %1338, 0.000000e+00
  br i1 %1361, label %1362, label %1372, !dx.controlflow.hints !87

; <label>:1362                                    ; preds = %1360
  %1363 = fmul fast float %1338, %1291
  %1364 = fmul fast float %1338, %1309
  %1365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %1363, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float %1359)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.ResRet.f32 %1365, 1
  %1368 = fmul fast float %1366, 2.000000e+00
  %1369 = fmul fast float %1367, 2.000000e+00
  %1370 = fadd fast float %1368, -1.000000e+00
  %1371 = fadd fast float %1369, -1.000000e+00
  br label %1393

; <label>:1372                                    ; preds = %1360
  %1373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1374 = extractvalue %dx.types.CBufRet.f32 %1373, 3
  %1375 = fmul fast float %1374, %1291
  %1376 = fmul fast float %1374, %1309
  %1377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %29, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.ResRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.ResRet.f32 %1377, 2
  %1381 = fmul fast float %1378, 2.000000e+00
  %1382 = fmul fast float %1379, 2.000000e+00
  %1383 = fmul fast float %1380, 2.000000e+00
  %1384 = fadd fast float %1381, -1.000000e+00
  %1385 = fadd fast float %1382, -1.000000e+00
  %1386 = fadd fast float %1383, -1.000000e+00
  %1387 = extractvalue %dx.types.CBufRet.f32 %1303, 1
  %1388 = fmul fast float %1384, %1387
  %1389 = fmul fast float %1385, %1387
  %1390 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1391 = fmul fast float %1390, 5.000000e-01
  %1392 = fmul fast float %1391, %1386
  br label %1393

; <label>:1393                                    ; preds = %1372, %1362
  %1394 = phi float [ %1370, %1362 ], [ %1388, %1372 ]
  %1395 = phi float [ %1371, %1362 ], [ %1389, %1372 ]
  %1396 = phi float [ 0.000000e+00, %1362 ], [ %1392, %1372 ]
  %1397 = fmul fast float %1336, %180
  %1398 = fmul fast float %1336, %181
  %1399 = fmul fast float %1336, %182
  %1400 = call float @dx.op.unary.f32(i32 22, float %1337)  ; Frc(value)
  %1401 = fmul fast float %1400, %1394
  %1402 = fmul fast float %1400, %1395
  %1403 = fmul fast float %1400, %1396
  %1404 = fsub fast float %1397, %1401
  %1405 = fsub fast float %1398, %1402
  %1406 = fsub fast float %1399, %1403
  %1407 = fadd fast float %1337, 5.000000e-01
  %1408 = call float @dx.op.unary.f32(i32 22, float %1407)  ; Frc(value)
  %1409 = fmul fast float %1408, %1394
  %1410 = fmul fast float %1408, %1395
  %1411 = fmul fast float %1408, %1396
  %1412 = fadd fast float %1397, -5.000000e-01
  %1413 = fsub fast float %1412, %1409
  %1414 = fadd fast float %1398, -5.000000e-01
  %1415 = fsub fast float %1414, %1410
  %1416 = fadd fast float %1399, -5.000000e-01
  %1417 = fsub fast float %1416, %1411
  %1418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %27, float %1413, float %1415, float %1417, float undef, i32 0, i32 0, i32 0, float %1353)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = fadd fast float %1419, %1339
  br label %1432

; <label>:1422                                    ; preds = %1358
  %1423 = fmul fast float %1343, %1340
  %1424 = fmul fast float %1343, %1341
  %1425 = fmul fast float %1343, %1342
  %1426 = fsub fast float %180, %1423
  %1427 = fsub fast float %181, %1424
  %1428 = fsub fast float %182, %1425
  %1429 = fmul fast float %1426, %1336
  %1430 = fmul fast float %1427, %1336
  %1431 = fmul fast float %1428, %1336
  br label %1432

; <label>:1432                                    ; preds = %1422, %1393
  %1433 = phi float [ %1404, %1393 ], [ %1429, %1422 ]
  %1434 = phi float [ %1405, %1393 ], [ %1430, %1422 ]
  %1435 = phi float [ %1406, %1393 ], [ %1431, %1422 ]
  %1436 = phi float [ %1421, %1393 ], [ 0.000000e+00, %1422 ]
  %1437 = phi float [ %1420, %1393 ], [ 0.000000e+00, %1422 ]
  %1438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %27, float %1433, float %1434, float %1435, float undef, i32 0, i32 0, i32 0, float %1353)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = fadd fast float %1439, %1339
  br i1 %1346, label %1442, label %1453, !dx.controlflow.hints !88

; <label>:1442                                    ; preds = %1432
  %1443 = call float @dx.op.unary.f32(i32 22, float %1337)  ; Frc(value)
  %1444 = fmul fast float %1443, 2.000000e+00
  %1445 = fadd fast float %1444, -1.000000e+00
  %1446 = call float @dx.op.unary.f32(i32 6, float %1445)  ; FAbs(value)
  %1447 = fsub fast float %1436, %1441
  %1448 = fmul fast float %1446, %1447
  %1449 = fadd fast float %1448, %1441
  %1450 = fsub fast float %1437, %1440
  %1451 = fmul fast float %1446, %1450
  %1452 = fadd fast float %1451, %1440
  br label %1453

; <label>:1453                                    ; preds = %1442, %1432
  %1454 = phi float [ %1449, %1442 ], [ %1441, %1432 ]
  %1455 = phi float [ %1452, %1442 ], [ %1440, %1432 ]
  %1456 = fsub fast float %1454, %1455
  %1457 = fsub fast float 1.000000e+00, %1455
  %1458 = fdiv fast float %1456, %1457
  %1459 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  br label %1460

; <label>:1460                                    ; preds = %1453, %1335
  %1461 = phi float [ %1459, %1453 ], [ 1.000000e+00, %1335 ]
  %1462 = fcmp fast oeq float %415, 0.000000e+00
  br i1 %1462, label %1467, label %1463, !dx.controlflow.hints !68

; <label>:1463                                    ; preds = %1460
  %1464 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1465 = fmul fast float %1464, %415
  %1466 = call float @dx.op.unary.f32(i32 23, float %1465)  ; Log(value)
  br label %1467

; <label>:1467                                    ; preds = %1463, %1460
  %1468 = phi float [ %1466, %1463 ], [ 0.000000e+00, %1460 ]
  %1469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %1291, float %1309, float undef, float undef, i32 0, i32 0, i32 undef, float %1468)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %30, float %1291, float %1309, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.ResRet.f32 %1471, 2
  %1475 = extractvalue %dx.types.ResRet.f32 %1471, 3
  %1476 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %30, float %1291, float %1309, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.f32 %1476, 2
  %1480 = extractvalue %dx.types.ResRet.f32 %1476, 3
  %1481 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %30, float %1291, float %1309, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = extractvalue %dx.types.ResRet.f32 %1481, 1
  %1484 = extractvalue %dx.types.ResRet.f32 %1481, 2
  %1485 = extractvalue %dx.types.ResRet.f32 %1481, 3
  %1486 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %30, float %1291, float %1309, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  %1488 = extractvalue %dx.types.ResRet.f32 %1486, 1
  %1489 = extractvalue %dx.types.ResRet.f32 %1486, 2
  %1490 = extractvalue %dx.types.ResRet.f32 %1486, 3
  %1491 = fadd fast float %1472, %1473
  %1492 = fadd fast float %1491, %1474
  %1493 = fadd fast float %1492, %1475
  %1494 = fmul fast float %1477, %1472
  %1495 = fmul fast float %1478, %1473
  %1496 = fadd fast float %1494, %1495
  %1497 = fmul fast float %1479, %1474
  %1498 = fadd fast float %1496, %1497
  %1499 = fmul fast float %1480, %1475
  %1500 = fadd fast float %1498, %1499
  %1501 = fmul fast float %1482, %1472
  %1502 = fmul fast float %1483, %1473
  %1503 = fadd fast float %1501, %1502
  %1504 = fmul fast float %1484, %1474
  %1505 = fadd fast float %1503, %1504
  %1506 = fmul fast float %1485, %1475
  %1507 = fadd fast float %1505, %1506
  %1508 = fmul fast float %1487, %1472
  %1509 = fmul fast float %1488, %1473
  %1510 = fadd fast float %1508, %1509
  %1511 = fmul fast float %1489, %1474
  %1512 = fadd fast float %1510, %1511
  %1513 = fmul fast float %1490, %1475
  %1514 = fadd fast float %1512, %1513
  %1515 = fcmp fast ogt float %1493, 0.000000e+00
  %1516 = fdiv fast float %1500, %1493
  %1517 = select i1 %1515, float %1516, float 0.000000e+00
  %1518 = fdiv fast float %1507, %1493
  %1519 = select i1 %1515, float %1518, float 0.000000e+00
  %1520 = fdiv fast float %1514, %1493
  %1521 = select i1 %1515, float %1520, float 0.000000e+00
  %1522 = fcmp fast ogt float %182, %1519
  %1523 = fcmp fast olt float %182, %1517
  %1524 = and i1 %1523, %1522
  br i1 %1524, label %1525, label %1592, !dx.controlflow.hints !89

; <label>:1525                                    ; preds = %1467
  %1526 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1527, 2
  %1529 = extractvalue %dx.types.CBufRet.f32 %1527, 3
  br i1 %1255, label %1540, label %1530, !dx.controlflow.hints !90

; <label>:1530                                    ; preds = %1525
  %1531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 60)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  %1533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 64)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.ResRet.f32 %1533, 1
  %1536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 72)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 96)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.f32 %1538, 0
  br label %1540

; <label>:1540                                    ; preds = %1530, %1525
  %1541 = phi float [ %1532, %1530 ], [ %1304, %1525 ]
  %1542 = phi float [ %1537, %1530 ], [ %1302, %1525 ]
  %1543 = phi float [ %1539, %1530 ], [ %1526, %1525 ]
  %1544 = phi float [ %1534, %1530 ], [ %1528, %1525 ]
  %1545 = phi float [ %1535, %1530 ], [ %1529, %1525 ]
  %1546 = call float @dx.op.binary.f32(i32 35, float %1470, float 0.000000e+00)  ; FMax(a,b)
  %1547 = call float @dx.op.binary.f32(i32 36, float %1546, float 1.000000e+00)  ; FMin(a,b)
  %1548 = call float @dx.op.unary.f32(i32 24, float %1547)  ; Sqrt(value)
  %1549 = call float @dx.op.binary.f32(i32 35, float %1521, float 0x3F847AE140000000)  ; FMax(a,b)
  %1550 = fsub fast float %1517, %182
  %1551 = fsub fast float %182, %1519
  %1552 = call float @dx.op.binary.f32(i32 36, float %1551, float %1550)  ; FMin(a,b)
  %1553 = fdiv fast float %1552, %1549
  %1554 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1555 = fsub fast float %182, %1542
  %1556 = fdiv fast float %1555, %1541
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1558 = fsub fast float 1.000000e+00, %1557
  %1559 = fmul float %1554, %1558
  %1560 = fmul float %1559, %1559
  %1561 = fmul fast float %1548, %1461
  %1562 = fmul fast float %1561, %1560
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 2
  %1565 = extractvalue %dx.types.CBufRet.f32 %1563, 1
  %1566 = fsub fast float %1562, %1565
  %1567 = fsub fast float %1564, %1565
  %1568 = fdiv fast float %1566, %1567
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1570 = fmul fast float %1569, %1543
  %1571 = fcmp fast ogt float %1545, 0.000000e+00
  br i1 %1571, label %1572, label %1592, !dx.controlflow.hints !91

; <label>:1572                                    ; preds = %1540
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.CBufRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.CBufRet.f32 %1573, 2
  %1577 = fsub fast float %180, %1574
  %1578 = fsub fast float %181, %1575
  %1579 = fsub fast float %182, %1576
  %1580 = fmul fast float %1577, %1577
  %1581 = fmul fast float %1578, %1578
  %1582 = fadd fast float %1580, %1581
  %1583 = fmul fast float %1579, %1579
  %1584 = fadd fast float %1582, %1583
  %1585 = call float @dx.op.unary.f32(i32 24, float %1584)  ; Sqrt(value)
  %1586 = fsub fast float %1585, %1544
  %1587 = fsub fast float %1545, %1544
  %1588 = fdiv fast float %1586, %1587
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1590 = fmul fast float %1589, %1589
  %1591 = fmul fast float %1590, %1570
  br label %1592

; <label>:1592                                    ; preds = %1572, %1540, %1467, %1275
  %1593 = phi float [ 0.000000e+00, %1275 ], [ 0.000000e+00, %1467 ], [ %1591, %1572 ], [ %1570, %1540 ]
  %1594 = fcmp fast oeq float %1593, 0.000000e+00
  br i1 %1594, label %1973, label %1595, !dx.controlflow.hints !92

; <label>:1595                                    ; preds = %1592
  %1596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1597 = extractvalue %dx.types.CBufRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.CBufRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.CBufRet.f32 %1596, 2
  %1600 = fsub fast float %180, %1597
  %1601 = fadd fast float %1600, %1599
  %1602 = fsub fast float %181, %1598
  %1603 = fadd fast float %1602, %1599
  %1604 = extractvalue %dx.types.CBufRet.f32 %1596, 3
  %1605 = fmul fast float %1601, %1604
  %1606 = fmul fast float %1603, %1604
  %1607 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  %1608 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1609 = fsub fast float 1.000000e+00, %1607
  %1610 = fsub fast float 1.000000e+00, %1608
  %1611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %30, float %1609, float %1610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1612 = extractvalue %dx.types.ResRet.f32 %1611, 0
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1615 = fmul fast float %1614, %1612
  %1616 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1617 = fadd fast float %1616, %1615
  %1618 = fcmp fast ogt float %1612, 0.000000e+00
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 32768
  %1622 = icmp ne i32 %1621, 0
  %1623 = and i1 %1618, %1622
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 3
  %1626 = fadd fast float %1625, %1617
  %1627 = fcmp fast ole float %182, %1626
  %1628 = and i1 %1623, %1627
  %1629 = xor i1 %1628, true
  %1630 = icmp ne i32 %1282, 0
  %1631 = and i1 %1630, %1629
  %1632 = icmp ne i32 %1283, 0
  %1633 = and i1 %1632, %1628
  %1634 = or i1 %1631, %1633
  br i1 %1634, label %1973, label %1635, !dx.controlflow.hints !93

; <label>:1635                                    ; preds = %1595
  %1636 = fsub fast float %182, %1617
  %1637 = call float @dx.op.unary.f32(i32 6, float %1636)  ; FAbs(value)
  %1638 = fdiv fast float %1637, %1281
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = fmul fast float %1639, %1593
  %1641 = fcmp fast une float %1279, 0.000000e+00
  br i1 %1641, label %1642, label %1961, !dx.controlflow.hints !94

; <label>:1642                                    ; preds = %1635
  %1643 = fmul fast float %1279, %108
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1647 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1648 = fmul fast float %1645, %1643
  %1649 = fmul fast float %1646, %1643
  %1650 = fmul fast float %1647, %1643
  %1651 = fadd fast float %1648, %180
  %1652 = fadd fast float %1649, %181
  %1653 = fadd fast float %1650, %182
  %1654 = fmul fast float %1279, 2.000000e+00
  %1655 = call float @dx.op.binary.f32(i32 35, float %415, float %1654)  ; FMax(a,b)
  %1656 = fsub fast float %1651, %1284
  %1657 = fsub fast float %1652, %1285
  %1658 = fmul fast float %1656, %1289
  %1659 = fmul fast float %1657, %1290
  %1660 = call float @dx.op.binary.f32(i32 36, float %1658, float %1659)  ; FMin(a,b)
  %1661 = fcmp fast olt float %1660, 0.000000e+00
  %1662 = call float @dx.op.binary.f32(i32 35, float %1658, float %1659)  ; FMax(a,b)
  %1663 = fcmp fast ogt float %1662, 1.000000e+00
  %1664 = or i1 %1661, %1663
  %1665 = fcmp fast olt float %1653, %1298
  %1666 = or i1 %1664, %1665
  %1667 = fcmp fast ogt float %1653, %1305
  %1668 = or i1 %1666, %1667
  br i1 %1668, label %1953, label %1669, !dx.controlflow.hints !83

; <label>:1669                                    ; preds = %1642
  %1670 = fsub fast float 1.000000e+00, %1659
  %1671 = extractvalue %dx.types.CBufRet.f32 %1303, 3
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 3
  %1674 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1675 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1680 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  br i1 %1255, label %1696, label %1681, !dx.controlflow.hints !84

; <label>:1681                                    ; preds = %1669
  %1682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 48)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.f32 %1682, 0
  %1684 = extractvalue %dx.types.ResRet.f32 %1682, 1
  %1685 = extractvalue %dx.types.ResRet.f32 %1682, 2
  %1686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 104)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.f32 %1686, 0
  %1688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 108)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.f32 %1688, 0
  %1690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 112)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 116)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.f32 %1692, 0
  %1694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 120)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.f32 %1694, 0
  br label %1696

; <label>:1696                                    ; preds = %1681, %1669
  %1697 = phi float [ %1689, %1681 ], [ %1671, %1669 ]
  %1698 = phi float [ %1693, %1681 ], [ %1673, %1669 ]
  %1699 = phi float [ %1695, %1681 ], [ %1674, %1669 ]
  %1700 = phi float [ %1691, %1681 ], [ %1675, %1669 ]
  %1701 = phi float [ %1683, %1681 ], [ %1677, %1669 ]
  %1702 = phi float [ %1684, %1681 ], [ %1678, %1669 ]
  %1703 = phi float [ %1685, %1681 ], [ %1679, %1669 ]
  %1704 = phi float [ %1687, %1681 ], [ %1680, %1669 ]
  %1705 = fcmp fast oeq float %1697, 0.000000e+00
  br i1 %1705, label %1821, label %1706, !dx.controlflow.hints !85

; <label>:1706                                    ; preds = %1696
  %1707 = fcmp fast ogt float %1698, 0.000000e+00
  %1708 = fcmp fast oeq float %1655, 0.000000e+00
  br i1 %1708, label %1713, label %1709, !dx.controlflow.hints !68

; <label>:1709                                    ; preds = %1706
  %1710 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1711 = fmul fast float %1710, %1655
  %1712 = call float @dx.op.unary.f32(i32 23, float %1711)  ; Log(value)
  br label %1713

; <label>:1713                                    ; preds = %1709, %1706
  %1714 = phi float [ %1712, %1709 ], [ 0.000000e+00, %1706 ]
  br i1 %1708, label %1719, label %1715, !dx.controlflow.hints !68

; <label>:1715                                    ; preds = %1713
  %1716 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1717 = fmul fast float %1716, %1655
  %1718 = call float @dx.op.unary.f32(i32 23, float %1717)  ; Log(value)
  br label %1719

; <label>:1719                                    ; preds = %1715, %1713
  %1720 = phi float [ %1718, %1715 ], [ 0.000000e+00, %1713 ]
  br i1 %1707, label %1721, label %1783, !dx.controlflow.hints !86

; <label>:1721                                    ; preds = %1719
  %1722 = fcmp fast ogt float %1699, 0.000000e+00
  br i1 %1722, label %1723, label %1733, !dx.controlflow.hints !87

; <label>:1723                                    ; preds = %1721
  %1724 = fmul fast float %1699, %1658
  %1725 = fmul fast float %1699, %1670
  %1726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %1724, float %1725, float undef, float undef, i32 0, i32 0, i32 undef, float %1720)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1727 = extractvalue %dx.types.ResRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.ResRet.f32 %1726, 1
  %1729 = fmul fast float %1727, 2.000000e+00
  %1730 = fmul fast float %1728, 2.000000e+00
  %1731 = fadd fast float %1729, -1.000000e+00
  %1732 = fadd fast float %1730, -1.000000e+00
  br label %1754

; <label>:1733                                    ; preds = %1721
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 3
  %1736 = fmul fast float %1735, %1658
  %1737 = fmul fast float %1735, %1670
  %1738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %29, float %1736, float %1737, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  %1740 = extractvalue %dx.types.ResRet.f32 %1738, 1
  %1741 = extractvalue %dx.types.ResRet.f32 %1738, 2
  %1742 = fmul fast float %1739, 2.000000e+00
  %1743 = fmul fast float %1740, 2.000000e+00
  %1744 = fmul fast float %1741, 2.000000e+00
  %1745 = fadd fast float %1742, -1.000000e+00
  %1746 = fadd fast float %1743, -1.000000e+00
  %1747 = fadd fast float %1744, -1.000000e+00
  %1748 = extractvalue %dx.types.CBufRet.f32 %1303, 1
  %1749 = fmul fast float %1745, %1748
  %1750 = fmul fast float %1746, %1748
  %1751 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1752 = fmul fast float %1751, 5.000000e-01
  %1753 = fmul fast float %1752, %1747
  br label %1754

; <label>:1754                                    ; preds = %1733, %1723
  %1755 = phi float [ %1731, %1723 ], [ %1749, %1733 ]
  %1756 = phi float [ %1732, %1723 ], [ %1750, %1733 ]
  %1757 = phi float [ 0.000000e+00, %1723 ], [ %1753, %1733 ]
  %1758 = fmul fast float %1697, %1651
  %1759 = fmul fast float %1697, %1652
  %1760 = fmul fast float %1697, %1653
  %1761 = call float @dx.op.unary.f32(i32 22, float %1698)  ; Frc(value)
  %1762 = fmul fast float %1761, %1755
  %1763 = fmul fast float %1761, %1756
  %1764 = fmul fast float %1761, %1757
  %1765 = fsub fast float %1758, %1762
  %1766 = fsub fast float %1759, %1763
  %1767 = fsub fast float %1760, %1764
  %1768 = fadd fast float %1698, 5.000000e-01
  %1769 = call float @dx.op.unary.f32(i32 22, float %1768)  ; Frc(value)
  %1770 = fmul fast float %1769, %1755
  %1771 = fmul fast float %1769, %1756
  %1772 = fmul fast float %1769, %1757
  %1773 = fadd fast float %1758, -5.000000e-01
  %1774 = fsub fast float %1773, %1770
  %1775 = fadd fast float %1759, -5.000000e-01
  %1776 = fsub fast float %1775, %1771
  %1777 = fadd fast float %1760, -5.000000e-01
  %1778 = fsub fast float %1777, %1772
  %1779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %27, float %1774, float %1776, float %1778, float undef, i32 0, i32 0, i32 0, float %1714)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.ResRet.f32 %1779, 1
  %1782 = fadd fast float %1780, %1700
  br label %1793

; <label>:1783                                    ; preds = %1719
  %1784 = fmul fast float %1704, %1701
  %1785 = fmul fast float %1704, %1702
  %1786 = fmul fast float %1704, %1703
  %1787 = fsub fast float %1651, %1784
  %1788 = fsub fast float %1652, %1785
  %1789 = fsub fast float %1653, %1786
  %1790 = fmul fast float %1787, %1697
  %1791 = fmul fast float %1788, %1697
  %1792 = fmul fast float %1789, %1697
  br label %1793

; <label>:1793                                    ; preds = %1783, %1754
  %1794 = phi float [ %1765, %1754 ], [ %1790, %1783 ]
  %1795 = phi float [ %1766, %1754 ], [ %1791, %1783 ]
  %1796 = phi float [ %1767, %1754 ], [ %1792, %1783 ]
  %1797 = phi float [ %1782, %1754 ], [ 0.000000e+00, %1783 ]
  %1798 = phi float [ %1781, %1754 ], [ 0.000000e+00, %1783 ]
  %1799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %27, float %1794, float %1795, float %1796, float undef, i32 0, i32 0, i32 0, float %1714)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1800 = extractvalue %dx.types.ResRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.ResRet.f32 %1799, 1
  %1802 = fadd fast float %1800, %1700
  br i1 %1707, label %1803, label %1814, !dx.controlflow.hints !88

; <label>:1803                                    ; preds = %1793
  %1804 = call float @dx.op.unary.f32(i32 22, float %1698)  ; Frc(value)
  %1805 = fmul fast float %1804, 2.000000e+00
  %1806 = fadd fast float %1805, -1.000000e+00
  %1807 = call float @dx.op.unary.f32(i32 6, float %1806)  ; FAbs(value)
  %1808 = fsub fast float %1797, %1802
  %1809 = fmul fast float %1807, %1808
  %1810 = fadd fast float %1809, %1802
  %1811 = fsub fast float %1798, %1801
  %1812 = fmul fast float %1807, %1811
  %1813 = fadd fast float %1812, %1801
  br label %1814

; <label>:1814                                    ; preds = %1803, %1793
  %1815 = phi float [ %1810, %1803 ], [ %1802, %1793 ]
  %1816 = phi float [ %1813, %1803 ], [ %1801, %1793 ]
  %1817 = fsub fast float %1815, %1816
  %1818 = fsub fast float 1.000000e+00, %1816
  %1819 = fdiv fast float %1817, %1818
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  br label %1821

; <label>:1821                                    ; preds = %1814, %1696
  %1822 = phi float [ %1820, %1814 ], [ 1.000000e+00, %1696 ]
  %1823 = fcmp fast oeq float %1655, 0.000000e+00
  br i1 %1823, label %1828, label %1824, !dx.controlflow.hints !68

; <label>:1824                                    ; preds = %1821
  %1825 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1826 = fmul fast float %1825, %1655
  %1827 = call float @dx.op.unary.f32(i32 23, float %1826)  ; Log(value)
  br label %1828

; <label>:1828                                    ; preds = %1824, %1821
  %1829 = phi float [ %1827, %1824 ], [ 0.000000e+00, %1821 ]
  %1830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %1658, float %1670, float undef, float undef, i32 0, i32 0, i32 undef, float %1829)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1831 = extractvalue %dx.types.ResRet.f32 %1830, 0
  %1832 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %30, float %1658, float %1670, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.ResRet.f32 %1832, 1
  %1835 = extractvalue %dx.types.ResRet.f32 %1832, 2
  %1836 = extractvalue %dx.types.ResRet.f32 %1832, 3
  %1837 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %30, float %1658, float %1670, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.ResRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.ResRet.f32 %1837, 2
  %1841 = extractvalue %dx.types.ResRet.f32 %1837, 3
  %1842 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %30, float %1658, float %1670, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1843 = extractvalue %dx.types.ResRet.f32 %1842, 0
  %1844 = extractvalue %dx.types.ResRet.f32 %1842, 1
  %1845 = extractvalue %dx.types.ResRet.f32 %1842, 2
  %1846 = extractvalue %dx.types.ResRet.f32 %1842, 3
  %1847 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %30, float %1658, float %1670, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.ResRet.f32 %1847, 1
  %1850 = extractvalue %dx.types.ResRet.f32 %1847, 2
  %1851 = extractvalue %dx.types.ResRet.f32 %1847, 3
  %1852 = fadd fast float %1833, %1834
  %1853 = fadd fast float %1852, %1835
  %1854 = fadd fast float %1853, %1836
  %1855 = fmul fast float %1838, %1833
  %1856 = fmul fast float %1839, %1834
  %1857 = fadd fast float %1855, %1856
  %1858 = fmul fast float %1840, %1835
  %1859 = fadd fast float %1857, %1858
  %1860 = fmul fast float %1841, %1836
  %1861 = fadd fast float %1859, %1860
  %1862 = fmul fast float %1843, %1833
  %1863 = fmul fast float %1844, %1834
  %1864 = fadd fast float %1862, %1863
  %1865 = fmul fast float %1845, %1835
  %1866 = fadd fast float %1864, %1865
  %1867 = fmul fast float %1846, %1836
  %1868 = fadd fast float %1866, %1867
  %1869 = fmul fast float %1848, %1833
  %1870 = fmul fast float %1849, %1834
  %1871 = fadd fast float %1869, %1870
  %1872 = fmul fast float %1850, %1835
  %1873 = fadd fast float %1871, %1872
  %1874 = fmul fast float %1851, %1836
  %1875 = fadd fast float %1873, %1874
  %1876 = fcmp fast ogt float %1854, 0.000000e+00
  %1877 = fdiv fast float %1861, %1854
  %1878 = select i1 %1876, float %1877, float 0.000000e+00
  %1879 = fdiv fast float %1868, %1854
  %1880 = select i1 %1876, float %1879, float 0.000000e+00
  %1881 = fdiv fast float %1875, %1854
  %1882 = select i1 %1876, float %1881, float 0.000000e+00
  %1883 = fcmp fast ogt float %1653, %1880
  %1884 = fcmp fast olt float %1653, %1878
  %1885 = and i1 %1884, %1883
  br i1 %1885, label %1886, label %1953, !dx.controlflow.hints !89

; <label>:1886                                    ; preds = %1828
  %1887 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 2
  %1890 = extractvalue %dx.types.CBufRet.f32 %1888, 3
  br i1 %1255, label %1901, label %1891, !dx.controlflow.hints !90

; <label>:1891                                    ; preds = %1886
  %1892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 60)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.f32 %1892, 0
  %1894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 64)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.ResRet.f32 %1894, 1
  %1897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 72)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.f32 %1897, 0
  %1899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1254, i32 96)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  br label %1901

; <label>:1901                                    ; preds = %1891, %1886
  %1902 = phi float [ %1893, %1891 ], [ %1304, %1886 ]
  %1903 = phi float [ %1898, %1891 ], [ %1302, %1886 ]
  %1904 = phi float [ %1900, %1891 ], [ %1887, %1886 ]
  %1905 = phi float [ %1895, %1891 ], [ %1889, %1886 ]
  %1906 = phi float [ %1896, %1891 ], [ %1890, %1886 ]
  %1907 = call float @dx.op.binary.f32(i32 35, float %1831, float 0.000000e+00)  ; FMax(a,b)
  %1908 = call float @dx.op.binary.f32(i32 36, float %1907, float 1.000000e+00)  ; FMin(a,b)
  %1909 = call float @dx.op.unary.f32(i32 24, float %1908)  ; Sqrt(value)
  %1910 = call float @dx.op.binary.f32(i32 35, float %1882, float 0x3F847AE140000000)  ; FMax(a,b)
  %1911 = fsub fast float %1878, %1653
  %1912 = fsub fast float %1653, %1880
  %1913 = call float @dx.op.binary.f32(i32 36, float %1912, float %1911)  ; FMin(a,b)
  %1914 = fdiv fast float %1913, %1910
  %1915 = call float @dx.op.unary.f32(i32 7, float %1914)  ; Saturate(value)
  %1916 = fsub fast float %1653, %1903
  %1917 = fdiv fast float %1916, %1902
  %1918 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  %1919 = fsub fast float 1.000000e+00, %1918
  %1920 = fmul float %1915, %1919
  %1921 = fmul float %1920, %1920
  %1922 = fmul fast float %1909, %1822
  %1923 = fmul fast float %1922, %1921
  %1924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1925 = extractvalue %dx.types.CBufRet.f32 %1924, 2
  %1926 = extractvalue %dx.types.CBufRet.f32 %1924, 1
  %1927 = fsub fast float %1923, %1926
  %1928 = fsub fast float %1925, %1926
  %1929 = fdiv fast float %1927, %1928
  %1930 = call float @dx.op.unary.f32(i32 7, float %1929)  ; Saturate(value)
  %1931 = fmul fast float %1930, %1904
  %1932 = fcmp fast ogt float %1906, 0.000000e+00
  br i1 %1932, label %1933, label %1953, !dx.controlflow.hints !91

; <label>:1933                                    ; preds = %1901
  %1934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1935 = extractvalue %dx.types.CBufRet.f32 %1934, 0
  %1936 = extractvalue %dx.types.CBufRet.f32 %1934, 1
  %1937 = extractvalue %dx.types.CBufRet.f32 %1934, 2
  %1938 = fsub fast float %1651, %1935
  %1939 = fsub fast float %1652, %1936
  %1940 = fsub fast float %1653, %1937
  %1941 = fmul fast float %1938, %1938
  %1942 = fmul fast float %1939, %1939
  %1943 = fadd fast float %1941, %1942
  %1944 = fmul fast float %1940, %1940
  %1945 = fadd fast float %1943, %1944
  %1946 = call float @dx.op.unary.f32(i32 24, float %1945)  ; Sqrt(value)
  %1947 = fsub fast float %1946, %1905
  %1948 = fsub fast float %1906, %1905
  %1949 = fdiv fast float %1947, %1948
  %1950 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1951 = fmul fast float %1950, %1950
  %1952 = fmul fast float %1951, %1931
  br label %1953

; <label>:1953                                    ; preds = %1933, %1901, %1828, %1642
  %1954 = phi float [ 0.000000e+00, %1642 ], [ 0.000000e+00, %1828 ], [ %1952, %1933 ], [ %1931, %1901 ]
  %1955 = fsub fast float %1640, %1954
  %1956 = fdiv fast float %1955, %1640
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = fsub fast float 1.000000e+00, %1280
  %1959 = fmul fast float %1957, %1958
  %1960 = fadd fast float %1959, %1280
  br label %1961

; <label>:1961                                    ; preds = %1953, %1635
  %1962 = phi float [ %1960, %1953 ], [ 1.000000e+00, %1635 ]
  %1963 = fadd fast float %1640, %1176
  %1964 = fmul fast float %1640, %1276
  %1965 = fmul fast float %1964, %1962
  %1966 = fmul fast float %1640, %1277
  %1967 = fmul fast float %1966, %1962
  %1968 = fmul fast float %1640, %1278
  %1969 = fmul fast float %1968, %1962
  %1970 = fadd fast float %1965, %1173
  %1971 = fadd fast float %1967, %1174
  %1972 = fadd fast float %1969, %1175
  br label %1973

; <label>:1973                                    ; preds = %1961, %1595, %1592, %1172
  %1974 = phi float [ %1173, %1172 ], [ %1173, %1592 ], [ %1173, %1595 ], [ %1970, %1961 ]
  %1975 = phi float [ %1174, %1172 ], [ %1174, %1592 ], [ %1174, %1595 ], [ %1971, %1961 ]
  %1976 = phi float [ %1175, %1172 ], [ %1175, %1592 ], [ %1175, %1595 ], [ %1972, %1961 ]
  %1977 = phi float [ %1176, %1172 ], [ %1176, %1592 ], [ %1176, %1595 ], [ %1963, %1961 ]
  %1978 = and i32 %334, 4
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %2143, label %1980, !dx.controlflow.hints !95

; <label>:1980                                    ; preds = %1973
  %1981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.i32 %1981, 1
  %1983 = icmp eq i32 %1982, 0
  br i1 %1983, label %2143, label %1984

; <label>:1984                                    ; preds = %1980
  br label %1985

; <label>:1985                                    ; preds = %2135, %1984
  %1986 = phi i32 [ %2140, %2135 ], [ 0, %1984 ]
  %1987 = phi float [ %2136, %2135 ], [ %1974, %1984 ]
  %1988 = phi float [ %2137, %2135 ], [ %1975, %1984 ]
  %1989 = phi float [ %2138, %2135 ], [ %1976, %1984 ]
  %1990 = phi float [ %2139, %2135 ], [ %1977, %1984 ]
  %1991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1992 = extractvalue %dx.types.CBufRet.i32 %1991, 1
  %1993 = call i32 @dx.op.tertiary.i32(i32 49, i32 %332, i32 %1992, i32 %1986)  ; UMad(a,b,c)
  %1994 = shl i32 %1993, 2
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2135, label %1998

; <label>:1998                                    ; preds = %1985
  br label %1999

; <label>:1999                                    ; preds = %2123, %1998
  %2000 = phi i32 [ %2009, %2123 ], [ %1996, %1998 ]
  %2001 = phi float [ %2129, %2123 ], [ %1987, %1998 ]
  %2002 = phi float [ %2130, %2123 ], [ %1988, %1998 ]
  %2003 = phi float [ %2131, %2123 ], [ %1989, %1998 ]
  %2004 = phi float [ %2132, %2123 ], [ %1990, %1998 ]
  %2005 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2000)  ; FirstbitLo(value)
  %2006 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1986, i32 %2005)  ; UMad(a,b,c)
  %2007 = and i32 %2005, 31
  %2008 = shl i32 1, %2007
  %2009 = xor i32 %2008, %2000
  %2010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2006, i32 0)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2006, i32 4)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2006, i32 16)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.f32 %2014, 0
  %2016 = extractvalue %dx.types.ResRet.f32 %2014, 1
  %2017 = extractvalue %dx.types.ResRet.f32 %2014, 2
  %2018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2006, i32 32)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.ResRet.f32 %2018, 1
  %2021 = extractvalue %dx.types.ResRet.f32 %2018, 2
  %2022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2006, i32 44)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.f32 %2022, 0
  %2024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2006, i32 48)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2006, i32 52)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2006, i32 56)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.f32 %2028, 0
  %2030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2006, i32 64)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.ResRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.ResRet.f32 %2030, 2
  %2034 = mul i32 %2006, 60
  %2035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.ResRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.ResRet.f32 %2035, 2
  %2039 = add i32 %2034, 12
  %2040 = add i32 %2034, 48
  %2041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 2
  %2043 = fsub fast float %180, %2036
  %2044 = fsub fast float %181, %2037
  %2045 = fsub fast float %182, %2038
  %2046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.ResRet.f32 %2046, 1
  %2049 = extractvalue %dx.types.ResRet.f32 %2046, 2
  %2050 = call float @dx.op.dot3.f32(i32 55, float %2043, float %2044, float %2045, float %2047, float %2048, float %2049)  ; Dot3(ax,ay,az,bx,by,bz)
  %2051 = add i32 %2034, 24
  %2052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.ResRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.ResRet.f32 %2052, 2
  %2056 = call float @dx.op.dot3.f32(i32 55, float %2043, float %2044, float %2045, float %2053, float %2054, float %2055)  ; Dot3(ax,ay,az,bx,by,bz)
  %2057 = add i32 %2034, 36
  %2058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.ResRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.ResRet.f32 %2058, 2
  %2062 = call float @dx.op.dot3.f32(i32 55, float %2043, float %2044, float %2045, float %2059, float %2060, float %2061)  ; Dot3(ax,ay,az,bx,by,bz)
  %2063 = call float @dx.op.unary.f32(i32 6, float %2050)  ; FAbs(value)
  %2064 = call float @dx.op.unary.f32(i32 6, float %2056)  ; FAbs(value)
  %2065 = call float @dx.op.unary.f32(i32 6, float %2062)  ; FAbs(value)
  %2066 = fmul fast float %2063, %2023
  %2067 = fmul fast float %2064, %2023
  %2068 = fmul fast float %2065, %2023
  %2069 = fadd fast float %2066, %2019
  %2070 = fadd fast float %2067, %2020
  %2071 = fadd fast float %2068, %2021
  %2072 = call float @dx.op.unary.f32(i32 7, float %2069)  ; Saturate(value)
  %2073 = call float @dx.op.unary.f32(i32 7, float %2070)  ; Saturate(value)
  %2074 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2075 = fmul fast float %2072, %2072
  %2076 = fmul fast float %2073, %2073
  %2077 = fadd fast float %2076, %2075
  %2078 = fmul fast float %2074, %2074
  %2079 = fadd fast float %2077, %2078
  %2080 = call float @dx.op.unary.f32(i32 24, float %2079)  ; Sqrt(value)
  %2081 = fsub fast float 1.000000e+00, %2080
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = fmul fast float %2082, %2011
  %2084 = fmul fast float %2042, 2.000000e+00
  %2085 = fadd fast float %2062, %2042
  %2086 = call float @dx.op.binary.f32(i32 35, float %2085, float 0.000000e+00)  ; FMax(a,b)
  %2087 = call float @dx.op.binary.f32(i32 36, float %2086, float %2084)  ; FMin(a,b)
  %2088 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2087)  ; FMax(a,b)
  %2089 = fmul fast float %2013, 0x3FF7154760000000
  %2090 = fmul fast float %2089, %2088
  %2091 = call float @dx.op.unary.f32(i32 21, float %2090)  ; Exp(value)
  %2092 = fmul fast float %2083, %2091
  %2093 = fcmp fast oeq float %415, 0.000000e+00
  br i1 %2093, label %2099, label %2094, !dx.controlflow.hints !68

; <label>:2094                                    ; preds = %1999
  %2095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2096 = extractvalue %dx.types.CBufRet.f32 %2095, 3
  %2097 = fmul fast float %2096, %415
  %2098 = call float @dx.op.unary.f32(i32 23, float %2097)  ; Log(value)
  br label %2099

; <label>:2099                                    ; preds = %2094, %1999
  %2100 = phi float [ %2098, %2094 ], [ 0.000000e+00, %1999 ]
  %2101 = fcmp fast oeq float %2025, 0.000000e+00
  br i1 %2101, label %2123, label %2102, !dx.controlflow.hints !96

; <label>:2102                                    ; preds = %2099
  %2103 = fmul fast float %2031, %2029
  %2104 = fmul fast float %2032, %2029
  %2105 = fmul fast float %2033, %2029
  %2106 = fsub fast float %180, %2103
  %2107 = fsub fast float %181, %2104
  %2108 = fsub fast float %182, %2105
  %2109 = fmul fast float %2106, %2025
  %2110 = fmul fast float %2107, %2025
  %2111 = fmul fast float %2108, %2025
  %2112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %27, float %2109, float %2110, float %2111, float undef, i32 0, i32 0, i32 0, float %2100)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2113 = extractvalue %dx.types.ResRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.ResRet.f32 %2112, 1
  %2115 = fdiv fast float 1.000000e+00, %2027
  %2116 = fmul fast float %2027, 2.000000e+00
  %2117 = fadd fast float %2116, -1.000000e+00
  %2118 = fadd fast float %2117, %2114
  %2119 = fadd fast float %2118, %2113
  %2120 = fmul fast float %2119, %2115
  %2121 = fadd fast float %2120, -1.000000e+00
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  br label %2123

; <label>:2123                                    ; preds = %2102, %2099
  %2124 = phi float [ %2122, %2102 ], [ 1.000000e+00, %2099 ]
  %2125 = fmul fast float %2092, %2124
  %2126 = fmul fast float %2125, %2015
  %2127 = fmul fast float %2125, %2016
  %2128 = fmul fast float %2125, %2017
  %2129 = fadd fast float %2126, %2001
  %2130 = fadd fast float %2127, %2002
  %2131 = fadd fast float %2128, %2003
  %2132 = fadd fast float %2125, %2004
  %2133 = icmp eq i32 %2000, %2008
  br i1 %2133, label %2134, label %1999, !llvm.loop !97

; <label>:2134                                    ; preds = %2123
  br label %2135

; <label>:2135                                    ; preds = %2134, %1985
  %2136 = phi float [ %1987, %1985 ], [ %2129, %2134 ]
  %2137 = phi float [ %1988, %1985 ], [ %2130, %2134 ]
  %2138 = phi float [ %1989, %1985 ], [ %2131, %2134 ]
  %2139 = phi float [ %1990, %1985 ], [ %2132, %2134 ]
  %2140 = add i32 %1986, 1
  %2141 = icmp ult i32 %2140, %1992
  br i1 %2141, label %1985, label %2142, !llvm.loop !98

; <label>:2142                                    ; preds = %2135
  br label %2143

; <label>:2143                                    ; preds = %2142, %1980, %1973
  %2144 = phi float [ %1974, %1973 ], [ %1974, %1980 ], [ %2136, %2142 ]
  %2145 = phi float [ %1975, %1973 ], [ %1975, %1980 ], [ %2137, %2142 ]
  %2146 = phi float [ %1976, %1973 ], [ %1976, %1980 ], [ %2138, %2142 ]
  %2147 = phi float [ %1977, %1973 ], [ %1977, %1980 ], [ %2139, %2142 ]
  %2148 = fcmp fast ogt float %2147, 0.000000e+00
  br i1 %2148, label %2149, label %2176, !dx.controlflow.hints !99

; <label>:2149                                    ; preds = %2143
  %2150 = fdiv fast float 1.000000e+00, %2147
  %2151 = fmul fast float %2150, %2144
  %2152 = fmul fast float %2150, %2145
  %2153 = fmul fast float %2150, %2146
  %2154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %28, float %129, float %130, float %131, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.ResRet.f32 %2154, 1
  %2157 = extractvalue %dx.types.ResRet.f32 %2154, 2
  %2158 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2155)  ; IsNaN(value)
  %2159 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2156)  ; IsNaN(value)
  %2160 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2157)  ; IsNaN(value)
  %2161 = or i1 %2158, %2159
  %2162 = or i1 %2161, %2160
  %2163 = select i1 %2162, float 0.000000e+00, float %2155
  %2164 = select i1 %2162, float 0.000000e+00, float %2156
  %2165 = select i1 %2162, float 0.000000e+00, float %2157
  %2166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.f32 %2166, 1
  %2168 = fmul fast float %2163, %2167
  %2169 = fmul fast float %2164, %2167
  %2170 = fmul fast float %2165, %2167
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 3
  %2173 = fmul fast float %2168, %2172
  %2174 = fmul fast float %2169, %2172
  %2175 = fmul fast float %2170, %2172
  br label %2176

; <label>:2176                                    ; preds = %2149, %2143
  %2177 = phi float [ %2151, %2149 ], [ %2144, %2143 ]
  %2178 = phi float [ %2152, %2149 ], [ %2145, %2143 ]
  %2179 = phi float [ %2153, %2149 ], [ %2146, %2143 ]
  %2180 = phi float [ %2173, %2149 ], [ 0.000000e+00, %2143 ]
  %2181 = phi float [ %2174, %2149 ], [ 0.000000e+00, %2143 ]
  %2182 = phi float [ %2175, %2149 ], [ 0.000000e+00, %2143 ]
  %2183 = fmul fast float %2177, %2147
  %2184 = fmul fast float %2178, %2147
  %2185 = fmul fast float %2179, %2147
  %2186 = select i1 %226, float %1177, float %2147
  %2187 = select i1 %226, float %1178, float %2147
  %2188 = select i1 %226, float %1179, float %2147
  %2189 = fmul fast float %2183, %2180
  %2190 = fmul fast float %2184, %2181
  %2191 = fmul fast float %2185, %2182
  %2192 = xor i1 %229, true
  %2193 = and i1 %70, %2192
  %2194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %2195 = extractvalue %dx.types.CBufRet.f32 %2194, 0
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 0
  %2198 = select i1 %193, float %2195, float %2197
  %2199 = fmul fast float %2189, %2198
  %2200 = fmul fast float %2190, %2198
  %2201 = fmul fast float %2191, %2198
  %2202 = fmul fast float %2200, 5.000000e-01
  %2203 = fadd fast float %2191, %2189
  %2204 = fmul fast float %2198, %2203
  %2205 = fmul fast float %2204, 2.500000e-01
  %2206 = fadd fast float %2205, %2202
  %2207 = call float @dx.op.unary.f32(i32 23, float %2206)  ; Log(value)
  %2208 = fmul fast float %2207, 0x3FE62E4300000000
  %2209 = fmul fast float %2208, %2208
  %2210 = select i1 %2193, float 1.000000e+00, float 0.000000e+00
  store float %2210, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  %2211 = fmul fast float %2208, %2210
  store float %2211, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  %2212 = fmul fast float %2209, %2210
  store float %2212, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2213 = load float, float addrspace(3)* %240, align 4, !tbaa !48, !noalias !52
  %2214 = fadd fast float %2213, %2210
  %2215 = load float, float addrspace(3)* %243, align 4, !tbaa !48, !noalias !52
  %2216 = fadd fast float %2215, %2208
  %2217 = load float, float addrspace(3)* %246, align 4, !tbaa !48, !noalias !52
  %2218 = fadd fast float %2217, %2209
  store float %2214, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  store float %2216, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  store float %2218, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2219 = load float, float addrspace(3)* %250, align 4, !tbaa !48, !noalias !52
  %2220 = fadd fast float %2219, %2214
  %2221 = load float, float addrspace(3)* %253, align 4, !tbaa !48, !noalias !52
  %2222 = fadd fast float %2221, %2216
  %2223 = load float, float addrspace(3)* %256, align 4, !tbaa !48, !noalias !52
  %2224 = fadd fast float %2223, %2218
  store float %2220, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  store float %2222, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  store float %2224, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2225 = load float, float addrspace(3)* %260, align 4, !tbaa !48, !noalias !52
  %2226 = fadd fast float %2225, %2220
  %2227 = load float, float addrspace(3)* %263, align 4, !tbaa !48, !noalias !52
  %2228 = fadd fast float %2227, %2222
  %2229 = fdiv fast float %2228, %2226
  %2230 = and i1 %2193, %270
  br i1 %2230, label %2231, label %2239, !dx.controlflow.hints !56

; <label>:2231                                    ; preds = %2176
  %2232 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %259
  %2233 = load float, float addrspace(3)* %2232, align 4, !tbaa !48, !noalias !52
  %2234 = fadd fast float %2233, %2224
  %2235 = fdiv fast float %2234, %2226
  %2236 = lshr i32 %58, 1
  %2237 = lshr i32 %59, 1
  %2238 = lshr i32 %228, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2236, i32 %2237, i32 %2238, float %2229, float %2235, float %2229, float %2229, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2239

; <label>:2239                                    ; preds = %2231, %2176
  br i1 %2193, label %2240, label %2274, !dx.controlflow.hints !57

; <label>:2240                                    ; preds = %2239
  %2241 = fadd fast float %108, 0x3FE3C6EF40000000
  %2242 = call float @dx.op.unary.f32(i32 22, float %2241)  ; Frc(value)
  %2243 = call float @dx.op.unary.f32(i32 23, float %2199)  ; Log(value)
  %2244 = fadd fast float %2243, -7.000000e+00
  %2245 = call float @dx.op.unary.f32(i32 21, float %2244)  ; Exp(value)
  %2246 = fmul fast float %2242, 2.000000e+00
  %2247 = fadd fast float %2246, -1.000000e+00
  %2248 = fmul fast float %2245, %2247
  %2249 = fcmp fast ogt float %2199, 0.000000e+00
  %2250 = select i1 %2249, float %2248, float 0.000000e+00
  %2251 = fadd fast float %2250, %2199
  %2252 = fadd fast float %108, 0x3FF3C6EF40000000
  %2253 = call float @dx.op.unary.f32(i32 22, float %2252)  ; Frc(value)
  %2254 = call float @dx.op.unary.f32(i32 23, float %2200)  ; Log(value)
  %2255 = fadd fast float %2254, -7.000000e+00
  %2256 = call float @dx.op.unary.f32(i32 21, float %2255)  ; Exp(value)
  %2257 = fmul fast float %2253, 2.000000e+00
  %2258 = fadd fast float %2257, -1.000000e+00
  %2259 = fmul fast float %2256, %2258
  %2260 = fcmp fast ogt float %2200, 0.000000e+00
  %2261 = select i1 %2260, float %2259, float 0.000000e+00
  %2262 = fadd fast float %2261, %2200
  %2263 = fadd fast float %108, 0x3FFDAA66E0000000
  %2264 = call float @dx.op.unary.f32(i32 22, float %2263)  ; Frc(value)
  %2265 = call float @dx.op.unary.f32(i32 23, float %2201)  ; Log(value)
  %2266 = fadd fast float %2265, -6.000000e+00
  %2267 = call float @dx.op.unary.f32(i32 21, float %2266)  ; Exp(value)
  %2268 = fmul fast float %2264, 2.000000e+00
  %2269 = fadd fast float %2268, -1.000000e+00
  %2270 = fmul fast float %2267, %2269
  %2271 = fcmp fast ogt float %2201, 0.000000e+00
  %2272 = select i1 %2271, float %2270, float 0.000000e+00
  %2273 = fadd fast float %2272, %2201
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %58, i32 %59, i32 %228, float %2251, float %2262, float %2273, float %2251, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2274

; <label>:2274                                    ; preds = %2240, %2239
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 0
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 0
  %2279 = select i1 %193, float %2276, float %2278
  %2280 = fmul fast float %2279, %2186
  %2281 = fmul fast float %2279, %2187
  %2282 = fmul fast float %2279, %2188
  %2283 = fmul fast float %2281, 5.000000e-01
  %2284 = fadd fast float %2188, %2186
  %2285 = fmul fast float %2279, %2284
  %2286 = fmul fast float %2285, 2.500000e-01
  %2287 = fadd fast float %2286, %2283
  %2288 = fmul fast float %2287, %2287
  store float %2210, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  %2289 = fmul fast float %2287, %2210
  store float %2289, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  %2290 = fmul fast float %2288, %2210
  store float %2290, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2291 = load float, float addrspace(3)* %240, align 4, !tbaa !48, !noalias !52
  %2292 = fadd fast float %2291, %2210
  %2293 = load float, float addrspace(3)* %243, align 4, !tbaa !48, !noalias !52
  %2294 = fadd fast float %2287, %2293
  %2295 = load float, float addrspace(3)* %246, align 4, !tbaa !48, !noalias !52
  %2296 = fadd fast float %2288, %2295
  store float %2292, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  store float %2294, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  store float %2296, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2297 = load float, float addrspace(3)* %250, align 4, !tbaa !48, !noalias !52
  %2298 = fadd fast float %2297, %2292
  %2299 = load float, float addrspace(3)* %253, align 4, !tbaa !48, !noalias !52
  %2300 = fadd fast float %2294, %2299
  %2301 = load float, float addrspace(3)* %256, align 4, !tbaa !48, !noalias !52
  %2302 = fadd fast float %2296, %2301
  store float %2298, float addrspace(3)* %234, align 4, !tbaa !48, !noalias !52
  store float %2300, float addrspace(3)* %236, align 4, !tbaa !48, !noalias !52
  store float %2302, float addrspace(3)* %238, align 4, !tbaa !48, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2303 = load float, float addrspace(3)* %260, align 4, !tbaa !48, !noalias !52
  %2304 = fadd fast float %2303, %2298
  %2305 = load float, float addrspace(3)* %263, align 4, !tbaa !48, !noalias !52
  %2306 = fadd fast float %2305, %2300
  %2307 = fdiv fast float %2306, %2304
  br i1 %2230, label %2308, label %2316, !dx.controlflow.hints !58

; <label>:2308                                    ; preds = %2274
  %2309 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %259
  %2310 = load float, float addrspace(3)* %2309, align 4, !tbaa !48, !noalias !52
  %2311 = fadd fast float %2310, %2302
  %2312 = fdiv fast float %2311, %2304
  %2313 = lshr i32 %58, 1
  %2314 = lshr i32 %59, 1
  %2315 = lshr i32 %228, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2313, i32 %2314, i32 %2315, float %2307, float %2312, float %2307, float %2307, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2316

; <label>:2316                                    ; preds = %2308, %2274
  br i1 %2193, label %2317, label %2351, !dx.controlflow.hints !59

; <label>:2317                                    ; preds = %2316
  %2318 = fadd fast float %108, 0x3FE3C6EF40000000
  %2319 = call float @dx.op.unary.f32(i32 22, float %2318)  ; Frc(value)
  %2320 = call float @dx.op.unary.f32(i32 23, float %2280)  ; Log(value)
  %2321 = fadd fast float %2320, -7.000000e+00
  %2322 = call float @dx.op.unary.f32(i32 21, float %2321)  ; Exp(value)
  %2323 = fmul fast float %2319, 2.000000e+00
  %2324 = fadd fast float %2323, -1.000000e+00
  %2325 = fmul fast float %2322, %2324
  %2326 = fcmp fast ogt float %2280, 0.000000e+00
  %2327 = select i1 %2326, float %2325, float 0.000000e+00
  %2328 = fadd fast float %2327, %2280
  %2329 = fadd fast float %108, 0x3FF3C6EF40000000
  %2330 = call float @dx.op.unary.f32(i32 22, float %2329)  ; Frc(value)
  %2331 = call float @dx.op.unary.f32(i32 23, float %2281)  ; Log(value)
  %2332 = fadd fast float %2331, -7.000000e+00
  %2333 = call float @dx.op.unary.f32(i32 21, float %2332)  ; Exp(value)
  %2334 = fmul fast float %2330, 2.000000e+00
  %2335 = fadd fast float %2334, -1.000000e+00
  %2336 = fmul fast float %2333, %2335
  %2337 = fcmp fast ogt float %2281, 0.000000e+00
  %2338 = select i1 %2337, float %2336, float 0.000000e+00
  %2339 = fadd fast float %2338, %2281
  %2340 = fadd fast float %108, 0x3FFDAA66E0000000
  %2341 = call float @dx.op.unary.f32(i32 22, float %2340)  ; Frc(value)
  %2342 = call float @dx.op.unary.f32(i32 23, float %2282)  ; Log(value)
  %2343 = fadd fast float %2342, -6.000000e+00
  %2344 = call float @dx.op.unary.f32(i32 21, float %2343)  ; Exp(value)
  %2345 = fmul fast float %2341, 2.000000e+00
  %2346 = fadd fast float %2345, -1.000000e+00
  %2347 = fmul fast float %2344, %2346
  %2348 = fcmp fast ogt float %2282, 0.000000e+00
  %2349 = select i1 %2348, float %2347, float 0.000000e+00
  %2350 = fadd fast float %2349, %2282
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %58, i32 %59, i32 %228, float %2328, float %2339, float %2350, float %2328, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2351

; <label>:2351                                    ; preds = %2317, %2316
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
!dx.entryPoints = !{!45}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !32, !37, !40}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30}
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
!25 = !{i32 17, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !28}
!28 = !{i32 1, i32 80}
!29 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!30 = !{i32 21, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !31}
!31 = !{i32 1, i32 4}
!32 = !{!33, !34, !35, !36}
!33 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!34 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!35 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!36 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!37 = !{!38, !39}
!38 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!39 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!40 = !{!41, !42, !43, !44}
!41 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!42 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!43 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!44 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!45 = !{void ()* @cs_volumetric_forwardplus_scatter_local_water, !"cs_volumetric_forwardplus_scatter_local_water", null, !4, !46}
!46 = !{i32 0, i64 272, i32 4, !47}
!47 = !{i32 4, i32 4, i32 4}
!48 = !{!49, !49, i64 0}
!49 = !{!"float", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!54 = distinct !{!54, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!55 = distinct !{!55, !54, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
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
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !81}
!98 = distinct !{!98, !81}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}

