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
; shader hash: 70961d8945738b23a69c60feb32c1dea
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
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          2d      T0            t11     1
;                                   texture    byte         r/o      T1            t22     1
;                                   texture     f32          2d      T2            t27     1
;                                   texture    byte         r/o      T3            t44     1
;                                   texture     f32          3d      T4            t10     1
;                                   texture     f32          2d      T5            t33     1
;                                   texture     f32          3d      T6            t38     1
;                                   texture     f32          2d      T7            t35     1
;                                   texture     f32          2d      T8            t41     1
;                                   texture     f32          3d      T9            t16     1
;                                   texture     f32          2d     T10            t24     1
;                                   texture     f32          2d     T11            t25     1
;                                   texture     f32          2d     T12            t36     1
;                                   texture     f32          2d     T13            t37     1
;                                   texture  struct         r/o     T14            t39     1
;                                   texture    byte         r/o     T15            t42     1
;                                   texture    byte         r/o     T16            t19     1
;                                   texture    byte         r/o     T17            t20     1
;                                   texture     f32          1d     T18             t4     1
;                                   texture     f32     2darray     T19             t3     1
;                                   texture    byte         r/o     T20            t12     1
;                                   texture     f32          3d     T21             t5     1
;                                   texture    byte         r/o     T22            t13     1
;                                   texture  struct         r/o     T23            t14     1
;                                   texture    byte         r/o     T24            t15     1
;                                   texture  struct         r/o     T25            t29     1
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.StructuredBuffer<VolumetricBBoxGpu>" = type { %struct.VolumetricBBoxGpu }
%struct.VolumetricBBoxGpu = type { <3 x float>, i32, <3 x float>, float, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
%struct.SamplerComparisonState = type { i32 }
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %39 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %40 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %41 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %42 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 3
  %45 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.i32 %45, 1
  %47 = mul i32 %46, %44
  %48 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %36, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.i32 %48, 1
  %50 = mul i32 %47, %49
  %51 = add i32 %50, %41
  %52 = shl i32 %51, 2
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = and i32 %54, 255
  %56 = lshr i32 %54, 8
  %57 = and i32 %56, 255
  %58 = lshr i32 %54, 16
  %59 = and i32 %58, 255
  %60 = shl nuw nsw i32 %55, 2
  %61 = shl nuw nsw i32 %57, 2
  %62 = shl nuw nsw i32 %59, 2
  %63 = add i32 %60, %38
  %64 = add i32 %61, %39
  %65 = add i32 %62, %40
  %66 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.i32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.i32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.i32 %66, 2
  %70 = icmp uge i32 %63, %67
  %71 = icmp uge i32 %64, %68
  %72 = icmp uge i32 %65, %69
  %73 = or i1 %70, %71
  %74 = or i1 %72, %73
  %75 = xor i1 %74, true
  %76 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.i32 %76, 3
  %78 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %64, i32 %77)  ; UMad(a,b,c)
  %79 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %63, i32 %78)  ; UMad(a,b,c)
  %80 = mul i32 %79, -63
  %81 = lshr i32 %80, 17
  %82 = xor i32 %81, %80
  %83 = mul i32 %82, -511
  %84 = mul i32 %82, -8176
  %85 = xor i32 %83, %84
  %86 = mul i32 %85, -7
  %87 = mul i32 %85, -7168
  %88 = xor i32 %86, %87
  %89 = lshr i32 %88, 15
  %90 = xor i32 %89, %86
  %91 = and i32 %90, 127
  %92 = mul i32 %91, 3
  %93 = add i32 0, %92
  %94 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %93
  %95 = load float, float* %94, align 4
  %96 = mul i32 %91, 3
  %97 = add i32 1, %96
  %98 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %97
  %99 = load float, float* %98, align 4
  %100 = mul i32 %91, 3
  %101 = add i32 2, %100
  %102 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %101
  %103 = load float, float* %102, align 4
  %104 = uitofp i32 %77 to float
  %105 = fmul fast float %104, 0x3FEA36A940000000
  %106 = fmul fast float %104, 0x3FE5793080000000
  %107 = fmul fast float %104, 0x3FE1972580000000
  %108 = fadd fast float %95, %105
  %109 = fadd fast float %99, %106
  %110 = fadd fast float %103, %107
  %111 = call float @dx.op.unary.f32(i32 22, float %108)  ; Frc(value)
  %112 = call float @dx.op.unary.f32(i32 22, float %109)  ; Frc(value)
  %113 = call float @dx.op.unary.f32(i32 22, float %110)  ; Frc(value)
  %114 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %30, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fcmp fast ogt float %115, -1.000000e+00
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %119 = select i1 %116, float %118, float 1.000000e+00
  %120 = fadd fast float %115, 1.000000e+00
  %121 = fmul fast float %119, %120
  %122 = uitofp i32 %63 to float
  %123 = uitofp i32 %64 to float
  %124 = uitofp i32 %65 to float
  %125 = fadd fast float %122, -5.000000e-01
  %126 = fadd fast float %125, %111
  %127 = fadd fast float %123, -5.000000e-01
  %128 = fadd fast float %127, %112
  %129 = fadd fast float %124, -5.000000e-01
  %130 = fadd fast float %129, %113
  %131 = fadd fast float %126, 5.000000e-01
  %132 = fadd fast float %128, 5.000000e-01
  %133 = fadd fast float %130, 5.000000e-01
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fmul fast float %135, %131
  %139 = fmul fast float %136, %132
  %140 = fmul fast float %137, %133
  %141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.i32 %141, 0
  %143 = uitofp i32 %142 to float
  %144 = fmul fast float %143, %140
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = fmul fast float %144, %147
  %149 = call float @dx.op.unary.f32(i32 21, float %148)  ; Exp(value)
  %150 = fmul fast float %149, %146
  %151 = fsub fast float 4.000000e+00, %146
  %152 = fadd fast float %151, %150
  %153 = call float @dx.op.binary.f32(i32 36, float %152, float %121)  ; FMin(a,b)
  %154 = fmul fast float %138, 2.000000e+00
  %155 = fmul fast float %139, 2.000000e+00
  %156 = fsub fast float 1.000000e+00, %154
  %157 = fsub fast float 1.000000e+00, %155
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = fmul fast float %159, %156
  %163 = fmul fast float %160, %156
  %164 = fmul fast float %161, %156
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = fmul fast float %166, %157
  %170 = fmul fast float %167, %157
  %171 = fmul fast float %168, %157
  %172 = fadd fast float %169, %162
  %173 = fadd fast float %170, %163
  %174 = fadd fast float %171, %164
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = fadd fast float %172, %176
  %180 = fadd fast float %173, %177
  %181 = fadd fast float %174, %178
  %182 = fmul fast float %179, %153
  %183 = fmul fast float %180, %153
  %184 = fmul fast float %181, %153
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = fadd fast float %182, %186
  %190 = fadd fast float %183, %187
  %191 = fadd fast float %184, %188
  %192 = add i32 %65, 1
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %147, %193
  %195 = call float @dx.op.unary.f32(i32 21, float %194)  ; Exp(value)
  %196 = fmul fast float %147, %124
  %197 = call float @dx.op.unary.f32(i32 21, float %196)  ; Exp(value)
  %198 = fsub fast float %195, %197
  %199 = fmul fast float %146, %198
  %200 = call float @dx.op.dot3.f32(i32 55, float %182, float %183, float %184, float %182, float %183, float %184)  ; Dot3(ax,ay,az,bx,by,bz)
  %201 = call float @dx.op.unary.f32(i32 25, float %200)  ; Rsqrt(value)
  %202 = fmul fast float %201, %182
  %203 = fmul fast float %201, %183
  %204 = fmul fast float %201, %184
  %205 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %206 = fmul fast float %205, 0x3FE62E4300000000
  %207 = fmul fast float %206, %206
  %208 = select i1 %74, float 0.000000e+00, float 1.000000e+00
  %209 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %42
  store float %208, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  %210 = fmul fast float %206, %208
  %211 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %42
  store float %210, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  %212 = fmul fast float %207, %208
  %213 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %42
  store float %212, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = xor i32 %42, 4
  %215 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %214
  %216 = load float, float addrspace(3)* %215, align 4, !tbaa !53, !noalias !57
  %217 = fadd fast float %216, %208
  %218 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %214
  %219 = load float, float addrspace(3)* %218, align 4, !tbaa !53, !noalias !57
  %220 = fadd fast float %219, %206
  %221 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %214
  %222 = load float, float addrspace(3)* %221, align 4, !tbaa !53, !noalias !57
  %223 = fadd fast float %222, %207
  store float %217, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  store float %220, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  store float %223, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %224 = xor i32 %42, 16
  %225 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %224
  %226 = load float, float addrspace(3)* %225, align 4, !tbaa !53, !noalias !57
  %227 = fadd fast float %226, %217
  %228 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %224
  %229 = load float, float addrspace(3)* %228, align 4, !tbaa !53, !noalias !57
  %230 = fadd fast float %229, %220
  %231 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %224
  %232 = load float, float addrspace(3)* %231, align 4, !tbaa !53, !noalias !57
  %233 = fadd fast float %232, %223
  store float %227, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  store float %230, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  store float %233, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %234 = xor i32 %42, 1
  %235 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %234
  %236 = load float, float addrspace(3)* %235, align 4, !tbaa !53, !noalias !57
  %237 = fadd fast float %236, %227
  %238 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %234
  %239 = load float, float addrspace(3)* %238, align 4, !tbaa !53, !noalias !57
  %240 = fadd fast float %239, %230
  %241 = fdiv fast float %240, %237
  %242 = and i32 %63, 1
  %243 = and i32 %242, %64
  %244 = and i32 %243, %65
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %245, %75
  br i1 %246, label %247, label %255, !dx.controlflow.hints !61

; <label>:247                                     ; preds = %0
  %248 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %234
  %249 = load float, float addrspace(3)* %248, align 4, !tbaa !53, !noalias !57
  %250 = fadd fast float %249, %233
  %251 = fdiv fast float %250, %237
  %252 = lshr i32 %63, 1
  %253 = lshr i32 %64, 1
  %254 = lshr i32 %65, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %252, i32 %253, i32 %254, float %241, float %251, float %241, float %241, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %255

; <label>:255                                     ; preds = %247, %0
  br i1 %74, label %257, label %256, !dx.controlflow.hints !62

; <label>:256                                     ; preds = %255
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %63, i32 %64, i32 %65, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %257

; <label>:257                                     ; preds = %256, %255
  store float %208, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  store float 0.000000e+00, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  store float 0.000000e+00, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %258 = load float, float addrspace(3)* %215, align 4, !tbaa !53, !noalias !57
  %259 = fadd fast float %258, %208
  %260 = load float, float addrspace(3)* %218, align 4, !tbaa !53, !noalias !57
  %261 = load float, float addrspace(3)* %221, align 4, !tbaa !53, !noalias !57
  store float %259, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  store float %260, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  store float %261, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %262 = load float, float addrspace(3)* %225, align 4, !tbaa !53, !noalias !57
  %263 = fadd fast float %262, %259
  %264 = load float, float addrspace(3)* %228, align 4, !tbaa !53, !noalias !57
  %265 = fadd fast float %264, %260
  %266 = load float, float addrspace(3)* %231, align 4, !tbaa !53, !noalias !57
  %267 = fadd fast float %266, %261
  store float %263, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  store float %265, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  store float %267, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %268 = load float, float addrspace(3)* %235, align 4, !tbaa !53, !noalias !57
  %269 = fadd fast float %268, %263
  %270 = load float, float addrspace(3)* %238, align 4, !tbaa !53, !noalias !57
  %271 = fadd fast float %270, %265
  %272 = fdiv fast float %271, %269
  br i1 %246, label %273, label %281, !dx.controlflow.hints !63

; <label>:273                                     ; preds = %257
  %274 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %234
  %275 = load float, float addrspace(3)* %274, align 4, !tbaa !53, !noalias !57
  %276 = fadd fast float %275, %267
  %277 = fdiv fast float %276, %269
  %278 = lshr i32 %63, 1
  %279 = lshr i32 %64, 1
  %280 = lshr i32 %65, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %278, i32 %279, i32 %280, float %272, float %277, float %272, float %272, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %281

; <label>:281                                     ; preds = %273, %257
  br i1 %74, label %283, label %282, !dx.controlflow.hints !64

; <label>:282                                     ; preds = %281
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %63, i32 %64, i32 %65, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %283

; <label>:283                                     ; preds = %282, %281
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 0
  %286 = extractvalue %dx.types.CBufRet.f32 %284, 1
  %287 = fsub fast float %191, %285
  %288 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %287)  ; FMax(a,b)
  %289 = fmul fast float %288, 0x3FF7154760000000
  %290 = fmul fast float %289, %286
  %291 = call float @dx.op.unary.f32(i32 21, float %290)  ; Exp(value)
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %299 = fmul fast float %298, %291
  %300 = fmul fast float %299, %293
  %301 = fmul fast float %299, %294
  %302 = fmul fast float %299, %295
  %303 = fmul fast float %299, %297
  %304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.i32 %304, 2
  %306 = extractvalue %dx.types.CBufRet.i32 %304, 3
  %307 = call i32 @dx.op.tertiary.i32(i32 49, i32 %57, i32 %305, i32 %55)  ; UMad(a,b,c)
  %308 = call i32 @dx.op.tertiary.i32(i32 49, i32 %59, i32 %306, i32 %307)  ; UMad(a,b,c)
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %308, i32 0)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = fadd fast float %122, 1.000000e+00
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %314 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %317 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %318 = fmul fast float %317, %130
  %319 = call float @dx.op.unary.f32(i32 21, float %318)  ; Exp(value)
  %320 = fmul fast float %319, %316
  %321 = fsub fast float 4.000000e+00, %316
  %322 = fadd fast float %321, %320
  %323 = fmul fast float %311, 2.000000e+00
  %324 = fmul fast float %323, %313
  %325 = fmul fast float %123, 2.000000e+00
  %326 = fmul fast float %325, %314
  %327 = fsub fast float 1.000000e+00, %324
  %328 = fsub fast float 1.000000e+00, %326
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fmul fast float %330, %327
  %334 = fmul fast float %331, %327
  %335 = fmul fast float %332, %327
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fmul fast float %337, %328
  %341 = fmul fast float %338, %328
  %342 = fmul fast float %339, %328
  %343 = fadd fast float %340, %333
  %344 = fadd fast float %341, %334
  %345 = fadd fast float %342, %335
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %349 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %350 = fadd fast float %343, %347
  %351 = fadd fast float %344, %348
  %352 = fadd fast float %345, %349
  %353 = fadd fast float %123, 1.000000e+00
  %354 = fmul fast float %122, 2.000000e+00
  %355 = fmul fast float %354, %313
  %356 = fmul fast float %353, 2.000000e+00
  %357 = fmul fast float %356, %314
  %358 = fsub fast float 1.000000e+00, %355
  %359 = fsub fast float 1.000000e+00, %357
  %360 = fmul fast float %330, %358
  %361 = fmul fast float %331, %358
  %362 = fmul fast float %332, %358
  %363 = fmul fast float %337, %359
  %364 = fmul fast float %338, %359
  %365 = fmul fast float %339, %359
  %366 = fadd fast float %363, %360
  %367 = fadd fast float %364, %361
  %368 = fadd fast float %365, %362
  %369 = fadd fast float %366, %347
  %370 = fadd fast float %367, %348
  %371 = fadd fast float %368, %349
  %372 = fmul fast float %369, %322
  %373 = fmul fast float %370, %322
  %374 = fmul fast float %371, %322
  %375 = fadd fast float %369, %350
  %376 = fmul fast float %322, %375
  %377 = fadd fast float %370, %351
  %378 = fmul fast float %322, %377
  %379 = fadd fast float %371, %352
  %380 = fmul fast float %322, %379
  %381 = fmul fast float %376, 5.000000e-01
  %382 = fmul fast float %378, 5.000000e-01
  %383 = fmul fast float %380, 5.000000e-01
  %384 = fsub fast float %381, %372
  %385 = fsub fast float %382, %373
  %386 = fsub fast float %383, %374
  %387 = call float @dx.op.dot3.f32(i32 55, float %384, float %385, float %386, float %384, float %385, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %388 = call float @dx.op.unary.f32(i32 25, float %387)  ; Rsqrt(value)
  %389 = fmul fast float %387, 2.000000e+00
  %390 = fmul fast float %389, %388
  %391 = call float @dx.op.binary.f32(i32 35, float %199, float %390)  ; FMax(a,b)
  %392 = and i32 %310, 8
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %610, label %394, !dx.controlflow.hints !65

; <label>:394                                     ; preds = %283
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %402 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %403 = fsub fast float %189, %400
  %404 = fsub fast float %190, %401
  %405 = fsub fast float %191, %402
  %406 = fmul fast float %403, %396
  %407 = fmul fast float %404, %397
  %408 = fmul fast float %405, %398
  %409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.i32 %409, 3
  %411 = icmp eq i32 %410, 0
  %412 = fcmp fast oge float %408, 0.000000e+00
  %413 = fcmp fast ole float %408, 1.000000e+00
  br i1 %411, label %416, label %414, !dx.controlflow.hints !66

; <label>:414                                     ; preds = %394
  %415 = and i1 %412, %413
  br label %426

; <label>:416                                     ; preds = %394
  %417 = fcmp fast oge float %406, 0.000000e+00
  %418 = fcmp fast oge float %407, 0.000000e+00
  %419 = and i1 %417, %418
  %420 = and i1 %412, %419
  %421 = fcmp fast ole float %406, 1.000000e+00
  %422 = fcmp fast ole float %407, 1.000000e+00
  %423 = and i1 %421, %422
  %424 = and i1 %413, %423
  %425 = and i1 %420, %424
  br label %426

; <label>:426                                     ; preds = %416, %414
  %427 = phi i1 [ %415, %414 ], [ %425, %416 ]
  br i1 %427, label %428, label %603, !dx.controlflow.hints !67

; <label>:428                                     ; preds = %426
  %429 = fcmp fast oeq float %391, 0.000000e+00
  br i1 %429, label %444, label %430, !dx.controlflow.hints !68

; <label>:430                                     ; preds = %428
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %433 = fmul fast float %432, %391
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 0
  %436 = extractvalue %dx.types.CBufRet.f32 %434, 1
  %437 = extractvalue %dx.types.CBufRet.f32 %434, 2
  %438 = fmul fast float %435, %433
  %439 = fmul fast float %436, %433
  %440 = fmul fast float %437, %433
  %441 = call float @dx.op.unary.f32(i32 23, float %438)  ; Log(value)
  %442 = call float @dx.op.unary.f32(i32 23, float %439)  ; Log(value)
  %443 = call float @dx.op.unary.f32(i32 23, float %440)  ; Log(value)
  br label %444

; <label>:444                                     ; preds = %430, %428
  %445 = phi float [ %441, %430 ], [ 0.000000e+00, %428 ]
  %446 = phi float [ %442, %430 ], [ 0.000000e+00, %428 ]
  %447 = phi float [ %443, %430 ], [ 0.000000e+00, %428 ]
  %448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.i32 %448, 0
  %450 = extractvalue %dx.types.CBufRet.i32 %448, 1
  %451 = uitofp i32 %449 to float
  %452 = uitofp i32 %450 to float
  %453 = fmul fast float %406, %451
  %454 = fmul fast float %407, %452
  %455 = fadd fast float %453, 5.000000e-01
  %456 = fadd fast float %454, 5.000000e-01
  %457 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %458 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %459 = call float @dx.op.unary.f32(i32 27, float %455)  ; Round_ni(value)
  %460 = call float @dx.op.unary.f32(i32 27, float %456)  ; Round_ni(value)
  %461 = fadd fast float %459, 1.000000e+00
  %462 = fadd fast float %460, 1.000000e+00
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 0
  %465 = extractvalue %dx.types.CBufRet.f32 %463, 1
  %466 = fmul fast float %464, %461
  %467 = fmul fast float %465, %462
  %468 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %33, float %466, float %467, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = extractvalue %dx.types.CBufRet.i32 %448, 2
  %474 = extractvalue %dx.types.CBufRet.f32 %463, 2
  %475 = uitofp i32 %473 to float
  %476 = fadd fast float %475, -1.000000e+00
  %477 = fmul fast float %476, %469
  %478 = fmul fast float %476, %470
  %479 = fmul fast float %476, %471
  %480 = fmul fast float %476, %472
  %481 = fadd fast float %477, 5.000000e-01
  %482 = fadd fast float %478, 5.000000e-01
  %483 = fadd fast float %479, 5.000000e-01
  %484 = fadd fast float %480, 5.000000e-01
  %485 = fptoui float %481 to i32
  %486 = fptoui float %482 to i32
  %487 = fptoui float %483 to i32
  %488 = fptoui float %484 to i32
  %489 = uitofp i32 %485 to float
  %490 = uitofp i32 %486 to float
  %491 = uitofp i32 %487 to float
  %492 = uitofp i32 %488 to float
  %493 = fadd fast float %489, 5.000000e-01
  %494 = fadd fast float %490, 5.000000e-01
  %495 = fadd fast float %491, 5.000000e-01
  %496 = fadd fast float %492, 5.000000e-01
  %497 = fmul fast float %493, %474
  %498 = fmul fast float %494, %474
  %499 = fmul fast float %495, %474
  %500 = fmul fast float %496, %474
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %497, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %498, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %499, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %500, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = fsub fast float %506, %508
  %510 = fmul fast float %509, %457
  %511 = fadd fast float %510, %508
  %512 = fsub fast float %504, %502
  %513 = fmul fast float %512, %457
  %514 = fadd fast float %513, %502
  %515 = fsub fast float %514, %511
  %516 = fmul fast float %515, %458
  %517 = fadd fast float %516, %511
  %518 = fcmp fast ogt float %517, 0.000000e+00
  br i1 %518, label %519, label %587, !dx.controlflow.hints !69

; <label>:519                                     ; preds = %444
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = extractvalue %dx.types.CBufRet.f32 %524, 1
  %527 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %528 = fmul fast float %404, %396
  %529 = fmul fast float %405, %396
  %530 = fadd fast float %406, %525
  %531 = fadd fast float %528, %526
  %532 = fadd fast float %529, %527
  %533 = fmul fast float %530, %521
  %534 = fmul fast float %531, %521
  %535 = fmul fast float %532, %521
  %536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %533, float %534, float %535, float undef, i32 0, i32 0, i32 0, float %445)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = fmul fast float %530, %522
  %539 = fmul fast float %531, %522
  %540 = fmul fast float %532, %522
  %541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %538, float %539, float %540, float undef, i32 0, i32 0, i32 0, float %446)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 1
  %543 = fmul fast float %530, %523
  %544 = fmul fast float %531, %523
  %545 = fmul fast float %532, %523
  %546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %543, float %544, float %545, float undef, i32 0, i32 0, i32 0, float %447)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 2
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %550 = fmul fast float %542, %537
  %551 = fmul fast float %550, %547
  %552 = call float @dx.op.unary.f32(i32 23, float %551)  ; Log(value)
  %553 = fmul fast float %552, %549
  %554 = call float @dx.op.unary.f32(i32 21, float %553)  ; Exp(value)
  %555 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %556 = fmul fast float %517, %517
  %557 = fmul fast float %556, %554
  %558 = fmul fast float %557, %555
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %561 = fmul fast float %560, %558
  %562 = bitcast float %561 to i32
  %563 = sitofp i32 %562 to float
  %564 = fptosi float %563 to i32
  %565 = bitcast i32 %564 to float
  %566 = fsub fast float 1.000000e+00, %558
  %567 = bitcast float %566 to i32
  %568 = sitofp i32 %567 to float
  %569 = fptosi float %568 to i32
  %570 = bitcast i32 %569 to float
  %571 = fadd fast float %565, %570
  %572 = bitcast float %571 to i32
  %573 = sub nsw i32 2129859010, %572
  %574 = bitcast i32 %573 to float
  %575 = fmul fast float %574, %565
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = fmul fast float %575, %579
  %581 = fadd fast float %580, 1.000000e+00
  %582 = bitcast float %581 to i32
  %583 = sub nsw i32 2129859010, %582
  %584 = bitcast i32 %583 to float
  %585 = fmul fast float %575, %577
  %586 = fmul fast float %585, %584
  br label %587

; <label>:587                                     ; preds = %519, %444
  %588 = phi float [ %586, %519 ], [ %517, %444 ]
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %595 = fmul fast float %590, %588
  %596 = fmul fast float %591, %588
  %597 = fmul fast float %592, %588
  %598 = fadd fast float %595, %300
  %599 = fadd fast float %596, %301
  %600 = fadd fast float %597, %302
  %601 = fmul fast float %594, %588
  %602 = fadd fast float %601, %303
  br label %603

; <label>:603                                     ; preds = %587, %426
  %604 = phi float [ %598, %587 ], [ %300, %426 ]
  %605 = phi float [ %599, %587 ], [ %301, %426 ]
  %606 = phi float [ %600, %587 ], [ %302, %426 ]
  %607 = phi float [ %602, %587 ], [ %303, %426 ]
  %608 = phi float [ %588, %587 ], [ 0.000000e+00, %426 ]
  %609 = fadd fast float %608, %299
  br label %610

; <label>:610                                     ; preds = %603, %283
  %611 = phi float [ %604, %603 ], [ %300, %283 ]
  %612 = phi float [ %605, %603 ], [ %301, %283 ]
  %613 = phi float [ %606, %603 ], [ %302, %283 ]
  %614 = phi float [ %607, %603 ], [ %303, %283 ]
  %615 = phi float [ %609, %603 ], [ %299, %283 ]
  %616 = and i32 %310, 2
  %617 = icmp ne i32 %616, 0
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %622 = fadd fast float %621, %619
  %623 = fcmp fast ole float %191, %622
  %624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.i32 %624, 3
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %646, !dx.controlflow.hints !70

; <label>:627                                     ; preds = %610
  %628 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %629 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %630 = fsub fast float %189, %628
  %631 = fsub fast float %190, %629
  %632 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %633 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %634 = fdiv fast float 1.000000e+00, %632
  %635 = fdiv fast float 1.000000e+00, %633
  %636 = fmul fast float %630, %634
  %637 = fmul fast float %635, %631
  %638 = fcmp fast oge float %636, 0.000000e+00
  %639 = fcmp fast oge float %637, 0.000000e+00
  %640 = and i1 %638, %639
  %641 = and i1 %623, %640
  %642 = fcmp fast ole float %636, 1.000000e+00
  %643 = fcmp fast ole float %637, 1.000000e+00
  %644 = and i1 %642, %643
  %645 = and i1 %644, %641
  br label %646

; <label>:646                                     ; preds = %627, %610
  %647 = phi i1 [ %645, %627 ], [ %623, %610 ]
  %648 = and i1 %617, %647
  br i1 %648, label %649, label %828, !dx.controlflow.hints !71

; <label>:649                                     ; preds = %646
  %650 = fcmp fast oeq float %391, 0.000000e+00
  br i1 %650, label %656, label %651, !dx.controlflow.hints !72

; <label>:651                                     ; preds = %649
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %654 = fmul fast float %653, %391
  %655 = call float @dx.op.unary.f32(i32 23, float %654)  ; Log(value)
  br label %656

; <label>:656                                     ; preds = %651, %649
  %657 = phi float [ %655, %651 ], [ 0.000000e+00, %649 ]
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %660 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %661 = extractvalue %dx.types.CBufRet.f32 %658, 2
  %662 = fsub fast float %189, %659
  %663 = fsub fast float %190, %660
  %664 = fsub fast float %191, %661
  %665 = fmul fast float %662, %662
  %666 = fmul fast float %663, %663
  %667 = fadd fast float %665, %666
  %668 = fmul fast float %664, %664
  %669 = fadd fast float %667, %668
  %670 = call float @dx.op.unary.f32(i32 24, float %669)  ; Sqrt(value)
  %671 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %672 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %673 = fsub fast float %189, %671
  %674 = fsub fast float %190, %672
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %678 = fmul fast float %673, %676
  %679 = fmul fast float %674, %677
  %680 = fsub fast float 1.000000e+00, %679
  br i1 %626, label %687, label %681, !dx.controlflow.hints !73

; <label>:681                                     ; preds = %656
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %678, float %680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = extractvalue %dx.types.ResRet.f32 %682, 1
  %685 = extractvalue %dx.types.ResRet.f32 %682, 2
  %686 = extractvalue %dx.types.ResRet.f32 %682, 3
  br label %693

; <label>:687                                     ; preds = %656
  %688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %678, float %680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %689 = extractvalue %dx.types.ResRet.f32 %688, 0
  %690 = extractvalue %dx.types.ResRet.f32 %688, 1
  %691 = extractvalue %dx.types.ResRet.f32 %688, 2
  %692 = extractvalue %dx.types.ResRet.f32 %688, 3
  br label %693

; <label>:693                                     ; preds = %687, %681
  %694 = phi float [ %683, %681 ], [ %689, %687 ]
  %695 = phi float [ %684, %681 ], [ %690, %687 ]
  %696 = phi float [ %685, %681 ], [ %691, %687 ]
  %697 = phi float [ %686, %681 ], [ %692, %687 ]
  %698 = extractvalue %dx.types.CBufRet.f32 %675, 3
  %699 = fmul fast float %698, %695
  %700 = fmul fast float %699, %694
  %701 = fsub fast float %699, %700
  %702 = fcmp fast ole float %701, 0.000000e+00
  %703 = fmul fast float %698, %696
  %704 = fadd fast float %703, %619
  %705 = fdiv fast float 1.000000e+00, %701
  %706 = select i1 %702, float 1.000000e+06, float %705
  %707 = fsub fast float %191, %619
  %708 = fsub fast float %707, %700
  %709 = fmul fast float %706, %708
  %710 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %711 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %712 = fmul fast float %711, %710
  %713 = fsub fast float %711, %712
  %714 = fcmp fast olt float %191, %704
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 3
  %717 = select i1 %714, float %716, float 1.000000e+00
  %718 = extractvalue %dx.types.CBufRet.f32 %715, 1
  %719 = fcmp fast oeq float %718, 0.000000e+00
  br i1 %719, label %802, label %720, !dx.controlflow.hints !74

; <label>:720                                     ; preds = %693
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %723 = fcmp fast ogt float %722, 0.000000e+00
  %724 = extractvalue %dx.types.CBufRet.f32 %715, 2
  br i1 %723, label %725, label %755, !dx.controlflow.hints !75

; <label>:725                                     ; preds = %720
  %726 = fmul fast float %678, %722
  %727 = fmul fast float %679, %722
  %728 = fsub fast float 1.000000e+00, %727
  %729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %31, float %726, float %728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = extractvalue %dx.types.ResRet.f32 %729, 1
  %732 = fmul fast float %730, 2.000000e+00
  %733 = fmul fast float %731, 2.000000e+00
  %734 = fadd fast float %732, -1.000000e+00
  %735 = fadd fast float %733, -1.000000e+00
  %736 = fmul fast float %718, %189
  %737 = fmul fast float %718, %190
  %738 = fmul fast float %718, %191
  %739 = call float @dx.op.unary.f32(i32 22, float %724)  ; Frc(value)
  %740 = fmul fast float %734, %739
  %741 = fmul fast float %735, %739
  %742 = fsub fast float %736, %740
  %743 = fsub fast float %737, %741
  %744 = fadd fast float %724, 5.000000e-01
  %745 = call float @dx.op.unary.f32(i32 22, float %744)  ; Frc(value)
  %746 = fmul fast float %745, %734
  %747 = fmul fast float %745, %735
  %748 = fadd fast float %736, -5.000000e-01
  %749 = fsub fast float %748, %746
  %750 = fadd fast float %737, -5.000000e-01
  %751 = fsub fast float %750, %747
  %752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %749, float %751, float %738, float undef, i32 0, i32 0, i32 0, float %657)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = extractvalue %dx.types.ResRet.f32 %752, 1
  br label %768

; <label>:755                                     ; preds = %720
  %756 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %757 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %758 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %759 = fmul fast float %724, %756
  %760 = fmul fast float %724, %757
  %761 = fmul fast float %724, %758
  %762 = fsub fast float %189, %759
  %763 = fsub fast float %190, %760
  %764 = fsub fast float %191, %761
  %765 = fmul fast float %762, %718
  %766 = fmul fast float %763, %718
  %767 = fmul fast float %764, %718
  br label %768

; <label>:768                                     ; preds = %755, %725
  %769 = phi float [ %742, %725 ], [ %765, %755 ]
  %770 = phi float [ %743, %725 ], [ %766, %755 ]
  %771 = phi float [ %738, %725 ], [ %767, %755 ]
  %772 = phi float [ %753, %725 ], [ 0.000000e+00, %755 ]
  %773 = phi float [ %754, %725 ], [ 0.000000e+00, %755 ]
  %774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %769, float %770, float %771, float undef, i32 0, i32 0, i32 0, float %657)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  br i1 %723, label %777, label %789, !dx.controlflow.hints !76

; <label>:777                                     ; preds = %768
  %778 = extractvalue %dx.types.CBufRet.f32 %715, 2
  %779 = call float @dx.op.unary.f32(i32 22, float %778)  ; Frc(value)
  %780 = fmul fast float %779, 2.000000e+00
  %781 = fadd fast float %780, -1.000000e+00
  %782 = call float @dx.op.unary.f32(i32 6, float %781)  ; FAbs(value)
  %783 = fsub fast float %772, %775
  %784 = fmul fast float %782, %783
  %785 = fadd fast float %784, %775
  %786 = fsub fast float %773, %776
  %787 = fmul fast float %782, %786
  %788 = fadd fast float %787, %776
  br label %789

; <label>:789                                     ; preds = %777, %768
  %790 = phi float [ %785, %777 ], [ %775, %768 ]
  %791 = phi float [ %788, %777 ], [ %776, %768 ]
  %792 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %793 = fadd fast float %792, %792
  %794 = fdiv fast float 2.000000e+00, %793
  %795 = fmul fast float %792, 2.000000e+00
  %796 = fadd fast float %790, -1.000000e+00
  %797 = fadd fast float %796, %791
  %798 = fadd fast float %797, %795
  %799 = fmul fast float %798, %794
  %800 = fadd fast float %799, -1.000000e+00
  %801 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  br label %802

; <label>:802                                     ; preds = %789, %693
  %803 = phi float [ %801, %789 ], [ 1.000000e+00, %693 ]
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %808 = extractvalue %dx.types.CBufRet.f32 %715, 0
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %811 = fsub fast float %670, %810
  %812 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %813 = fmul fast float %811, %812
  %814 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %815 = fmul fast float %717, %697
  %816 = fmul fast float %815, %713
  %817 = fmul fast float %816, %803
  %818 = fmul fast float %817, %814
  %819 = fmul fast float %818, %805
  %820 = fmul fast float %818, %806
  %821 = fmul fast float %818, %807
  %822 = fadd fast float %819, %611
  %823 = fadd fast float %820, %612
  %824 = fadd fast float %821, %613
  %825 = fmul fast float %818, %808
  %826 = fadd fast float %825, %614
  %827 = fadd fast float %818, %615
  br label %828

; <label>:828                                     ; preds = %802, %646
  %829 = phi float [ %822, %802 ], [ %611, %646 ]
  %830 = phi float [ %823, %802 ], [ %612, %646 ]
  %831 = phi float [ %824, %802 ], [ %613, %646 ]
  %832 = phi float [ %826, %802 ], [ %614, %646 ]
  %833 = phi float [ %827, %802 ], [ %615, %646 ]
  %834 = and i32 %310, 1
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %1112, label %836, !dx.controlflow.hints !77

; <label>:836                                     ; preds = %828
  %837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.i32 %837, 1
  %839 = and i32 %838, 1
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %916, label %841, !dx.controlflow.hints !78

; <label>:841                                     ; preds = %836
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 3
  %844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.f32 %844, 0
  %846 = extractvalue %dx.types.CBufRet.f32 %844, 1
  %847 = extractvalue %dx.types.CBufRet.f32 %842, 0
  %848 = extractvalue %dx.types.CBufRet.f32 %842, 1
  %849 = extractvalue %dx.types.CBufRet.f32 %842, 2
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %853 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 3
  %856 = and i32 %838, 2
  %857 = extractvalue %dx.types.CBufRet.i32 %837, 0
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %895, label %859

; <label>:859                                     ; preds = %841
  br label %860

; <label>:860                                     ; preds = %860, %859
  %861 = phi float [ %889, %860 ], [ 0.000000e+00, %859 ]
  %862 = phi float [ %888, %860 ], [ 1.000000e+06, %859 ]
  %863 = phi i32 [ %890, %860 ], [ 0, %859 ]
  %864 = add i32 %863, 171
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 %864)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %870 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %871 = fsub fast float %189, %866
  %872 = fsub fast float %190, %867
  %873 = fmul fast float %871, %871
  %874 = fmul fast float %872, %872
  %875 = fadd fast float %873, %874
  %876 = call float @dx.op.unary.f32(i32 24, float %875)  ; Sqrt(value)
  %877 = fsub fast float %876, %870
  %878 = icmp ne i32 %856, 0
  %879 = fsub fast float -0.000000e+00, %846
  %880 = select i1 %878, float %879, float %846
  %881 = fmul fast float %877, %880
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = fmul fast float %882, %845
  %884 = fsub fast float %869, %191
  %885 = fmul fast float %884, %843
  %886 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %887 = fmul fast float %883, %886
  %888 = call float @dx.op.binary.f32(i32 36, float %862, float %877)  ; FMin(a,b)
  %889 = call float @dx.op.binary.f32(i32 35, float %861, float %887)  ; FMax(a,b)
  %890 = add nuw nsw i32 %863, 1
  %891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.i32 %891, 0
  %893 = icmp ult i32 %890, %892
  br i1 %893, label %860, label %894

; <label>:894                                     ; preds = %860
  br label %895

; <label>:895                                     ; preds = %894, %841
  %896 = phi float [ 0.000000e+00, %841 ], [ %889, %894 ]
  %897 = phi float [ 1.000000e+06, %841 ], [ %888, %894 ]
  %898 = fadd fast float %896, %833
  %899 = fmul fast float %897, %855
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = fsub fast float %851, %847
  %902 = fsub fast float %852, %848
  %903 = fsub fast float %853, %849
  %904 = fmul fast float %900, %901
  %905 = fmul fast float %900, %902
  %906 = fmul fast float %900, %903
  %907 = fadd fast float %904, %847
  %908 = fadd fast float %905, %848
  %909 = fadd fast float %906, %849
  %910 = fmul fast float %907, %896
  %911 = fmul fast float %908, %896
  %912 = fmul fast float %909, %896
  %913 = fadd fast float %910, %829
  %914 = fadd fast float %911, %830
  %915 = fadd fast float %912, %831
  br label %1112

; <label>:916                                     ; preds = %836
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %919 = extractvalue %dx.types.CBufRet.f32 %917, 3
  %920 = fmul fast float %918, %189
  %921 = fmul fast float %919, %190
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %924 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %925 = fadd fast float %920, %923
  %926 = fadd fast float %921, %924
  %927 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %928 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %927, float %928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = fmul fast float %932, %930
  %934 = fsub fast float %925, %927
  %935 = fsub fast float %926, %928
  %936 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %938 = fmul fast float %936, %934
  %939 = fmul fast float %937, %935
  %940 = fmul fast float %938, %938
  %941 = fmul fast float %939, %939
  %942 = fadd fast float %940, %941
  %943 = call float @dx.op.unary.f32(i32 24, float %942)  ; Sqrt(value)
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 3
  %946 = fmul fast float %945, %943
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %948 = extractvalue %dx.types.CBufRet.f32 %944, 2
  %949 = fsub fast float %948, %933
  %950 = fmul fast float %949, %947
  %951 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %952 = fsub fast float %191, %933
  %953 = fsub fast float %952, %951
  %954 = fsub fast float %953, %950
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %957 = fsub fast float %954, %956
  %958 = fcmp fast olt float %957, 0.000000e+00
  %959 = extractvalue %dx.types.CBufRet.i32 %837, 0
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %1011, label %961

; <label>:961                                     ; preds = %916
  br label %962

; <label>:962                                     ; preds = %1000, %961
  %963 = phi i32 [ %1006, %1000 ], [ 1, %961 ]
  %964 = phi i32 [ %1007, %1000 ], [ 0, %961 ]
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.i32 %967, 1
  %969 = and i32 %968, 8
  %970 = icmp eq i32 %969, 0
  %971 = fcmp fast ogt float %966, %954
  %972 = or i1 %971, %970
  %973 = add i32 %964, 171
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 %973)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 0
  %976 = extractvalue %dx.types.CBufRet.f32 %974, 1
  %977 = extractvalue %dx.types.CBufRet.f32 %974, 2
  br i1 %972, label %978, label %984, !dx.controlflow.hints !79

; <label>:978                                     ; preds = %962
  %979 = fsub fast float %975, %189
  %980 = fsub fast float %976, %190
  %981 = fmul fast float %979, %979
  %982 = fmul fast float %980, %980
  %983 = fadd fast float %981, %982
  br label %1000

; <label>:984                                     ; preds = %962
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %987 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %988 = fmul fast float %987, %986
  %989 = fsub fast float %988, %966
  %990 = fdiv fast float %977, %989
  %991 = fsub fast float %189, %975
  %992 = fsub fast float %190, %976
  %993 = fsub fast float %954, %966
  %994 = fmul fast float %990, %993
  %995 = fmul fast float %991, %991
  %996 = fmul fast float %992, %992
  %997 = fadd fast float %995, %996
  %998 = fmul fast float %994, %994
  %999 = fadd fast float %997, %998
  br label %1000

; <label>:1000                                    ; preds = %984, %978
  %1001 = phi float [ %983, %978 ], [ %999, %984 ]
  %1002 = call float @dx.op.unary.f32(i32 24, float %1001)  ; Sqrt(value)
  %1003 = fsub float %977, %1002
  %1004 = fcmp fast olt float %1003, 0.000000e+00
  %1005 = zext i1 %1004 to i32
  %1006 = and i32 %1005, %963
  %1007 = add i32 %964, 1
  %1008 = extractvalue %dx.types.CBufRet.i32 %967, 0
  %1009 = icmp ult i32 %1007, %1008
  br i1 %1009, label %962, label %1010

; <label>:1010                                    ; preds = %1000
  br label %1011

; <label>:1011                                    ; preds = %1010, %916
  %1012 = phi i32 [ 1, %916 ], [ %1006, %1010 ]
  br label %1013

; <label>:1013                                    ; preds = %1013, %1011
  %1014 = phi i32 [ %1050, %1013 ], [ %1012, %1011 ]
  %1015 = phi i32 [ %1051, %1013 ], [ 0, %1011 ]
  %1016 = add nuw nsw i32 %1015, 191
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 %1016)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.CBufRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.CBufRet.f32 %1017, 2
  %1021 = add nuw nsw i32 %1015, 195
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 %1021)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1026 = fsub fast float %189, %1018
  %1027 = fsub fast float %190, %1019
  %1028 = fsub fast float %954, %1020
  %1029 = call float @dx.op.unary.f32(i32 6, float %1026)  ; FAbs(value)
  %1030 = call float @dx.op.unary.f32(i32 6, float %1027)  ; FAbs(value)
  %1031 = call float @dx.op.unary.f32(i32 6, float %1028)  ; FAbs(value)
  %1032 = fsub fast float %1029, %1023
  %1033 = fsub fast float %1030, %1024
  %1034 = fsub fast float %1031, %1025
  %1035 = call float @dx.op.binary.f32(i32 35, float %1032, float 0.000000e+00)  ; FMax(a,b)
  %1036 = call float @dx.op.binary.f32(i32 35, float %1033, float 0.000000e+00)  ; FMax(a,b)
  %1037 = call float @dx.op.binary.f32(i32 35, float %1034, float 0.000000e+00)  ; FMax(a,b)
  %1038 = fmul fast float %1035, %1035
  %1039 = fmul fast float %1036, %1036
  %1040 = fadd fast float %1039, %1038
  %1041 = fmul fast float %1037, %1037
  %1042 = fadd fast float %1040, %1041
  %1043 = call float @dx.op.unary.f32(i32 24, float %1042)  ; Sqrt(value)
  %1044 = call float @dx.op.binary.f32(i32 35, float %1033, float %1034)  ; FMax(a,b)
  %1045 = call float @dx.op.binary.f32(i32 35, float %1032, float %1044)  ; FMax(a,b)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1045, float 0.000000e+00)  ; FMin(a,b)
  %1047 = fadd fast float %1046, %1043
  %1048 = fcmp ogt float %1047, -0.000000e+00
  %1049 = zext i1 %1048 to i32
  %1050 = and i32 %1049, %1014
  %1051 = add nuw nsw i32 %1015, 1
  %1052 = icmp eq i32 %1051, 4
  br i1 %1052, label %1053, label %1013

; <label>:1053                                    ; preds = %1013
  %1054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.i32 %1054, 1
  %1056 = lshr i32 %1055, 1
  %1057 = xor i32 %1056, %1050
  %1058 = zext i1 %958 to i32
  %1059 = and i32 %1057, %1058
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1112, label %1061, !dx.controlflow.hints !80

; <label>:1061                                    ; preds = %1053
  %1062 = fmul fast float %182, %182
  %1063 = fmul fast float %183, %183
  %1064 = fadd fast float %1062, %1063
  %1065 = fmul fast float %184, %184
  %1066 = fadd fast float %1064, %1065
  %1067 = call float @dx.op.unary.f32(i32 24, float %1066)  ; Sqrt(value)
  %1068 = and i32 %838, 4
  %1069 = icmp ne i32 %1068, 0
  %1070 = select i1 %1069, float %1067, float 1.000000e+00
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1073 = fsub fast float %1070, %1072
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 3
  %1075 = fmul fast float %1073, %1074
  %1076 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 3
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1081 = fsub fast float %1080, %954
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 3
  %1084 = fmul fast float %1081, %1083
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1086 = fmul fast float %1085, %1078
  %1087 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1088 = fsub fast float %1067, %1087
  %1089 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1090 = fmul fast float %1088, %1089
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1092 = fsub fast float 1.000000e+00, %1076
  %1093 = fmul fast float %1091, %1092
  %1094 = fadd fast float %1093, %1076
  %1095 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1096 = fsub fast float %1086, %1095
  %1097 = fmul fast float %1096, %1094
  %1098 = fadd fast float %1097, %1095
  %1099 = extractvalue %dx.types.CBufRet.f32 %1077, 0
  %1100 = extractvalue %dx.types.CBufRet.f32 %1077, 1
  %1101 = extractvalue %dx.types.CBufRet.f32 %1077, 2
  %1102 = extractvalue %dx.types.CBufRet.f32 %1082, 2
  %1103 = fadd fast float %1098, %833
  %1104 = fmul fast float %1098, %1099
  %1105 = fmul fast float %1098, %1100
  %1106 = fmul fast float %1098, %1101
  %1107 = fadd fast float %1104, %829
  %1108 = fadd fast float %1105, %830
  %1109 = fadd fast float %1106, %831
  %1110 = fmul fast float %1098, %1102
  %1111 = fadd fast float %1110, %832
  br label %1112

; <label>:1112                                    ; preds = %1061, %1053, %895, %828
  %1113 = phi float [ %829, %828 ], [ %913, %895 ], [ %1107, %1061 ], [ %829, %1053 ]
  %1114 = phi float [ %830, %828 ], [ %914, %895 ], [ %1108, %1061 ], [ %830, %1053 ]
  %1115 = phi float [ %831, %828 ], [ %915, %895 ], [ %1109, %1061 ], [ %831, %1053 ]
  %1116 = phi float [ %832, %828 ], [ %832, %895 ], [ %1111, %1061 ], [ %832, %1053 ]
  %1117 = phi float [ %833, %828 ], [ %898, %895 ], [ %1103, %1061 ], [ %833, %1053 ]
  %1118 = and i32 %310, 16
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1911, label %1120, !dx.controlflow.hints !81

; <label>:1120                                    ; preds = %1112
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.i32 %1131, 0
  %1133 = icmp ne i32 %1132, 0
  %1134 = zext i1 %1133 to i32
  %1135 = extractvalue %dx.types.CBufRet.i32 %1131, 1
  %1136 = icmp ne i32 %1135, 0
  %1137 = zext i1 %1136 to i32
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = bitcast float %1139 to i32
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1191, label %1142

; <label>:1142                                    ; preds = %1120
  br label %1143

; <label>:1143                                    ; preds = %1186, %1142
  %1144 = phi i32 [ %1187, %1186 ], [ 0, %1142 ]
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 0
  %1147 = bitcast float %1146 to i32
  %1148 = call i32 @dx.op.tertiary.i32(i32 49, i32 %308, i32 %1147, i32 %1144)  ; UMad(a,b,c)
  %1149 = shl i32 %1148, 2
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  br label %1152

; <label>:1152                                    ; preds = %1155, %1143
  %1153 = phi i32 [ %1151, %1143 ], [ %1160, %1155 ]
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1186, label %1155

; <label>:1155                                    ; preds = %1152
  %1156 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1153)  ; FirstbitLo(value)
  %1157 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1144, i32 %1156)  ; UMad(a,b,c)
  %1158 = and i32 %1156, 31
  %1159 = shl i32 1, %1158
  %1160 = xor i32 %1159, %1153
  %1161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1157, i32 0)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.ResRet.f32 %1161, 1
  %1164 = extractvalue %dx.types.ResRet.f32 %1161, 2
  %1165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1157, i32 16)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.ResRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.ResRet.f32 %1165, 2
  %1169 = fsub fast float %1162, %1166
  %1170 = fsub fast float %1163, %1167
  %1171 = fsub fast float %1164, %1168
  %1172 = fadd fast float %1166, %1162
  %1173 = fadd fast float %1167, %1163
  %1174 = fadd fast float %1168, %1164
  %1175 = fcmp fast ogt float %189, %1169
  %1176 = fcmp fast ogt float %190, %1170
  %1177 = fcmp fast ogt float %191, %1171
  %1178 = and i1 %1175, %1176
  %1179 = and i1 %1177, %1178
  %1180 = fcmp fast olt float %189, %1172
  %1181 = fcmp fast olt float %190, %1173
  %1182 = fcmp fast olt float %191, %1174
  %1183 = and i1 %1180, %1181
  %1184 = and i1 %1182, %1183
  %1185 = and i1 %1179, %1184
  br i1 %1185, label %1189, label %1152, !dx.controlflow.hints !82

; <label>:1186                                    ; preds = %1152
  %1187 = add i32 %1144, 1
  %1188 = icmp ult i32 %1187, %1147
  br i1 %1188, label %1143, label %1190, !llvm.loop !83

; <label>:1189                                    ; preds = %1155
  br label %1191

; <label>:1190                                    ; preds = %1186
  br label %1191

; <label>:1191                                    ; preds = %1190, %1189, %1120
  %1192 = phi i32 [ 255, %1120 ], [ %1157, %1189 ], [ 255, %1190 ]
  %1193 = icmp eq i32 %1192, 255
  br i1 %1193, label %1213, label %1194, !dx.controlflow.hints !85

; <label>:1194                                    ; preds = %1191
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 32)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 132)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 136)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 152)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1192, i32 156)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1192, i32 160)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = icmp ne i32 %1206, 0
  %1210 = zext i1 %1209 to i32
  %1211 = icmp ne i32 %1208, 0
  %1212 = zext i1 %1211 to i32
  br label %1213

; <label>:1213                                    ; preds = %1194, %1191
  %1214 = phi float [ %1196, %1194 ], [ %1122, %1191 ]
  %1215 = phi float [ %1197, %1194 ], [ %1123, %1191 ]
  %1216 = phi float [ %1198, %1194 ], [ %1124, %1191 ]
  %1217 = phi float [ %1200, %1194 ], [ %1126, %1191 ]
  %1218 = phi float [ %1202, %1194 ], [ %1128, %1191 ]
  %1219 = phi float [ %1204, %1194 ], [ %1130, %1191 ]
  %1220 = phi i32 [ %1210, %1194 ], [ %1134, %1191 ]
  %1221 = phi i32 [ %1212, %1194 ], [ %1137, %1191 ]
  %1222 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1223 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1224 = fsub fast float %189, %1222
  %1225 = fsub fast float %190, %1223
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1228 = extractvalue %dx.types.CBufRet.f32 %1226, 3
  %1229 = fmul fast float %1224, %1227
  %1230 = fmul fast float %1225, %1228
  %1231 = call float @dx.op.binary.f32(i32 36, float %1229, float %1230)  ; FMin(a,b)
  %1232 = fcmp fast olt float %1231, 0.000000e+00
  %1233 = call float @dx.op.binary.f32(i32 35, float %1229, float %1230)  ; FMax(a,b)
  %1234 = fcmp fast ogt float %1233, 1.000000e+00
  %1235 = or i1 %1232, %1234
  %1236 = extractvalue %dx.types.CBufRet.f32 %1127, 2
  %1237 = fcmp fast olt float %191, %1236
  %1238 = or i1 %1235, %1237
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 3
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = fadd fast float %1242, %1240
  %1244 = fcmp fast ogt float %191, %1243
  %1245 = or i1 %1238, %1244
  br i1 %1245, label %1530, label %1246, !dx.controlflow.hints !86

; <label>:1246                                    ; preds = %1213
  %1247 = fsub fast float 1.000000e+00, %1230
  %1248 = extractvalue %dx.types.CBufRet.f32 %1241, 3
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1251 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1252 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.CBufRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.CBufRet.f32 %1253, 2
  %1257 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  br i1 %1193, label %1273, label %1258, !dx.controlflow.hints !87

; <label>:1258                                    ; preds = %1246
  %1259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 48)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.ResRet.f32 %1259, 2
  %1263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 104)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 108)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 112)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 116)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 120)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  br label %1273

; <label>:1273                                    ; preds = %1258, %1246
  %1274 = phi float [ %1266, %1258 ], [ %1248, %1246 ]
  %1275 = phi float [ %1270, %1258 ], [ %1250, %1246 ]
  %1276 = phi float [ %1272, %1258 ], [ %1251, %1246 ]
  %1277 = phi float [ %1268, %1258 ], [ %1252, %1246 ]
  %1278 = phi float [ %1260, %1258 ], [ %1254, %1246 ]
  %1279 = phi float [ %1261, %1258 ], [ %1255, %1246 ]
  %1280 = phi float [ %1262, %1258 ], [ %1256, %1246 ]
  %1281 = phi float [ %1264, %1258 ], [ %1257, %1246 ]
  %1282 = fcmp fast oeq float %1274, 0.000000e+00
  br i1 %1282, label %1398, label %1283, !dx.controlflow.hints !88

; <label>:1283                                    ; preds = %1273
  %1284 = fcmp fast ogt float %1275, 0.000000e+00
  %1285 = fcmp fast oeq float %391, 0.000000e+00
  br i1 %1285, label %1290, label %1286, !dx.controlflow.hints !72

; <label>:1286                                    ; preds = %1283
  %1287 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1288 = fmul fast float %1287, %391
  %1289 = call float @dx.op.unary.f32(i32 23, float %1288)  ; Log(value)
  br label %1290

; <label>:1290                                    ; preds = %1286, %1283
  %1291 = phi float [ %1289, %1286 ], [ 0.000000e+00, %1283 ]
  br i1 %1285, label %1296, label %1292, !dx.controlflow.hints !72

; <label>:1292                                    ; preds = %1290
  %1293 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1294 = fmul fast float %1293, %391
  %1295 = call float @dx.op.unary.f32(i32 23, float %1294)  ; Log(value)
  br label %1296

; <label>:1296                                    ; preds = %1292, %1290
  %1297 = phi float [ %1295, %1292 ], [ 0.000000e+00, %1290 ]
  br i1 %1284, label %1298, label %1360, !dx.controlflow.hints !89

; <label>:1298                                    ; preds = %1296
  %1299 = fcmp fast ogt float %1276, 0.000000e+00
  br i1 %1299, label %1300, label %1310, !dx.controlflow.hints !90

; <label>:1300                                    ; preds = %1298
  %1301 = fmul fast float %1276, %1229
  %1302 = fmul fast float %1276, %1247
  %1303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %31, float %1301, float %1302, float undef, float undef, i32 0, i32 0, i32 undef, float %1297)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1304 = extractvalue %dx.types.ResRet.f32 %1303, 0
  %1305 = extractvalue %dx.types.ResRet.f32 %1303, 1
  %1306 = fmul fast float %1304, 2.000000e+00
  %1307 = fmul fast float %1305, 2.000000e+00
  %1308 = fadd fast float %1306, -1.000000e+00
  %1309 = fadd fast float %1307, -1.000000e+00
  br label %1331

; <label>:1310                                    ; preds = %1298
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 3
  %1313 = fmul fast float %1312, %1229
  %1314 = fmul fast float %1312, %1247
  %1315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %33, float %1313, float %1314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.ResRet.f32 %1315, 1
  %1318 = extractvalue %dx.types.ResRet.f32 %1315, 2
  %1319 = fmul fast float %1316, 2.000000e+00
  %1320 = fmul fast float %1317, 2.000000e+00
  %1321 = fmul fast float %1318, 2.000000e+00
  %1322 = fadd fast float %1319, -1.000000e+00
  %1323 = fadd fast float %1320, -1.000000e+00
  %1324 = fadd fast float %1321, -1.000000e+00
  %1325 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1326 = fmul fast float %1322, %1325
  %1327 = fmul fast float %1323, %1325
  %1328 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1329 = fmul fast float %1328, 5.000000e-01
  %1330 = fmul fast float %1329, %1324
  br label %1331

; <label>:1331                                    ; preds = %1310, %1300
  %1332 = phi float [ %1308, %1300 ], [ %1326, %1310 ]
  %1333 = phi float [ %1309, %1300 ], [ %1327, %1310 ]
  %1334 = phi float [ 0.000000e+00, %1300 ], [ %1330, %1310 ]
  %1335 = fmul fast float %1274, %189
  %1336 = fmul fast float %1274, %190
  %1337 = fmul fast float %1274, %191
  %1338 = call float @dx.op.unary.f32(i32 22, float %1275)  ; Frc(value)
  %1339 = fmul fast float %1338, %1332
  %1340 = fmul fast float %1338, %1333
  %1341 = fmul fast float %1338, %1334
  %1342 = fsub fast float %1335, %1339
  %1343 = fsub fast float %1336, %1340
  %1344 = fsub fast float %1337, %1341
  %1345 = fadd fast float %1275, 5.000000e-01
  %1346 = call float @dx.op.unary.f32(i32 22, float %1345)  ; Frc(value)
  %1347 = fmul fast float %1346, %1332
  %1348 = fmul fast float %1346, %1333
  %1349 = fmul fast float %1346, %1334
  %1350 = fadd fast float %1335, -5.000000e-01
  %1351 = fsub fast float %1350, %1347
  %1352 = fadd fast float %1336, -5.000000e-01
  %1353 = fsub fast float %1352, %1348
  %1354 = fadd fast float %1337, -5.000000e-01
  %1355 = fsub fast float %1354, %1349
  %1356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1351, float %1353, float %1355, float undef, i32 0, i32 0, i32 0, float %1291)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = fadd fast float %1357, %1277
  br label %1370

; <label>:1360                                    ; preds = %1296
  %1361 = fmul fast float %1281, %1278
  %1362 = fmul fast float %1281, %1279
  %1363 = fmul fast float %1281, %1280
  %1364 = fsub fast float %189, %1361
  %1365 = fsub fast float %190, %1362
  %1366 = fsub fast float %191, %1363
  %1367 = fmul fast float %1364, %1274
  %1368 = fmul fast float %1365, %1274
  %1369 = fmul fast float %1366, %1274
  br label %1370

; <label>:1370                                    ; preds = %1360, %1331
  %1371 = phi float [ %1342, %1331 ], [ %1367, %1360 ]
  %1372 = phi float [ %1343, %1331 ], [ %1368, %1360 ]
  %1373 = phi float [ %1344, %1331 ], [ %1369, %1360 ]
  %1374 = phi float [ %1359, %1331 ], [ 0.000000e+00, %1360 ]
  %1375 = phi float [ %1358, %1331 ], [ 0.000000e+00, %1360 ]
  %1376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1371, float %1372, float %1373, float undef, i32 0, i32 0, i32 0, float %1291)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = extractvalue %dx.types.ResRet.f32 %1376, 1
  %1379 = fadd fast float %1377, %1277
  br i1 %1284, label %1380, label %1391, !dx.controlflow.hints !91

; <label>:1380                                    ; preds = %1370
  %1381 = call float @dx.op.unary.f32(i32 22, float %1275)  ; Frc(value)
  %1382 = fmul fast float %1381, 2.000000e+00
  %1383 = fadd fast float %1382, -1.000000e+00
  %1384 = call float @dx.op.unary.f32(i32 6, float %1383)  ; FAbs(value)
  %1385 = fsub fast float %1374, %1379
  %1386 = fmul fast float %1384, %1385
  %1387 = fadd fast float %1386, %1379
  %1388 = fsub fast float %1375, %1378
  %1389 = fmul fast float %1384, %1388
  %1390 = fadd fast float %1389, %1378
  br label %1391

; <label>:1391                                    ; preds = %1380, %1370
  %1392 = phi float [ %1387, %1380 ], [ %1379, %1370 ]
  %1393 = phi float [ %1390, %1380 ], [ %1378, %1370 ]
  %1394 = fsub fast float %1392, %1393
  %1395 = fsub fast float 1.000000e+00, %1393
  %1396 = fdiv fast float %1394, %1395
  %1397 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  br label %1398

; <label>:1398                                    ; preds = %1391, %1273
  %1399 = phi float [ %1397, %1391 ], [ 1.000000e+00, %1273 ]
  %1400 = fcmp fast oeq float %391, 0.000000e+00
  br i1 %1400, label %1405, label %1401, !dx.controlflow.hints !72

; <label>:1401                                    ; preds = %1398
  %1402 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1403 = fmul fast float %1402, %391
  %1404 = call float @dx.op.unary.f32(i32 23, float %1403)  ; Log(value)
  br label %1405

; <label>:1405                                    ; preds = %1401, %1398
  %1406 = phi float [ %1404, %1401 ], [ 0.000000e+00, %1398 ]
  %1407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %32, float %1229, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float %1406)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1229, float %1247, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.ResRet.f32 %1409, 1
  %1412 = extractvalue %dx.types.ResRet.f32 %1409, 2
  %1413 = extractvalue %dx.types.ResRet.f32 %1409, 3
  %1414 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1229, float %1247, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.ResRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.ResRet.f32 %1414, 2
  %1418 = extractvalue %dx.types.ResRet.f32 %1414, 3
  %1419 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1229, float %1247, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.ResRet.f32 %1419, 2
  %1423 = extractvalue %dx.types.ResRet.f32 %1419, 3
  %1424 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1229, float %1247, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.ResRet.f32 %1424, 3
  %1429 = fadd fast float %1410, %1411
  %1430 = fadd fast float %1429, %1412
  %1431 = fadd fast float %1430, %1413
  %1432 = fmul fast float %1415, %1410
  %1433 = fmul fast float %1416, %1411
  %1434 = fadd fast float %1432, %1433
  %1435 = fmul fast float %1417, %1412
  %1436 = fadd fast float %1434, %1435
  %1437 = fmul fast float %1418, %1413
  %1438 = fadd fast float %1436, %1437
  %1439 = fmul fast float %1420, %1410
  %1440 = fmul fast float %1421, %1411
  %1441 = fadd fast float %1439, %1440
  %1442 = fmul fast float %1422, %1412
  %1443 = fadd fast float %1441, %1442
  %1444 = fmul fast float %1423, %1413
  %1445 = fadd fast float %1443, %1444
  %1446 = fmul fast float %1425, %1410
  %1447 = fmul fast float %1426, %1411
  %1448 = fadd fast float %1446, %1447
  %1449 = fmul fast float %1427, %1412
  %1450 = fadd fast float %1448, %1449
  %1451 = fmul fast float %1428, %1413
  %1452 = fadd fast float %1450, %1451
  %1453 = fcmp fast ogt float %1431, 0.000000e+00
  %1454 = fdiv fast float %1438, %1431
  %1455 = select i1 %1453, float %1454, float 0.000000e+00
  %1456 = fdiv fast float %1445, %1431
  %1457 = select i1 %1453, float %1456, float 0.000000e+00
  %1458 = fdiv fast float %1452, %1431
  %1459 = select i1 %1453, float %1458, float 0.000000e+00
  %1460 = fcmp fast ogt float %191, %1457
  %1461 = fcmp fast olt float %191, %1455
  %1462 = and i1 %1461, %1460
  br i1 %1462, label %1463, label %1530, !dx.controlflow.hints !92

; <label>:1463                                    ; preds = %1405
  %1464 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1467 = extractvalue %dx.types.CBufRet.f32 %1465, 3
  br i1 %1193, label %1478, label %1468, !dx.controlflow.hints !93

; <label>:1468                                    ; preds = %1463
  %1469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 60)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 64)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 72)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 96)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  br label %1478

; <label>:1478                                    ; preds = %1468, %1463
  %1479 = phi float [ %1470, %1468 ], [ %1242, %1463 ]
  %1480 = phi float [ %1475, %1468 ], [ %1240, %1463 ]
  %1481 = phi float [ %1477, %1468 ], [ %1464, %1463 ]
  %1482 = phi float [ %1472, %1468 ], [ %1466, %1463 ]
  %1483 = phi float [ %1473, %1468 ], [ %1467, %1463 ]
  %1484 = call float @dx.op.binary.f32(i32 35, float %1408, float 0.000000e+00)  ; FMax(a,b)
  %1485 = call float @dx.op.binary.f32(i32 36, float %1484, float 1.000000e+00)  ; FMin(a,b)
  %1486 = call float @dx.op.unary.f32(i32 24, float %1485)  ; Sqrt(value)
  %1487 = call float @dx.op.binary.f32(i32 35, float %1459, float 0x3F847AE140000000)  ; FMax(a,b)
  %1488 = fsub fast float %1455, %191
  %1489 = fsub fast float %191, %1457
  %1490 = call float @dx.op.binary.f32(i32 36, float %1489, float %1488)  ; FMin(a,b)
  %1491 = fdiv fast float %1490, %1487
  %1492 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1493 = fsub fast float %191, %1480
  %1494 = fdiv fast float %1493, %1479
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = fsub fast float 1.000000e+00, %1495
  %1497 = fmul float %1492, %1496
  %1498 = fmul float %1497, %1497
  %1499 = fmul fast float %1486, %1399
  %1500 = fmul fast float %1499, %1498
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 2
  %1503 = extractvalue %dx.types.CBufRet.f32 %1501, 1
  %1504 = fsub fast float %1500, %1503
  %1505 = fsub fast float %1502, %1503
  %1506 = fdiv fast float %1504, %1505
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1508 = fmul fast float %1507, %1481
  %1509 = fcmp fast ogt float %1483, 0.000000e+00
  br i1 %1509, label %1510, label %1530, !dx.controlflow.hints !94

; <label>:1510                                    ; preds = %1478
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = extractvalue %dx.types.CBufRet.f32 %1511, 1
  %1514 = extractvalue %dx.types.CBufRet.f32 %1511, 2
  %1515 = fsub fast float %189, %1512
  %1516 = fsub fast float %190, %1513
  %1517 = fsub fast float %191, %1514
  %1518 = fmul fast float %1515, %1515
  %1519 = fmul fast float %1516, %1516
  %1520 = fadd fast float %1518, %1519
  %1521 = fmul fast float %1517, %1517
  %1522 = fadd fast float %1520, %1521
  %1523 = call float @dx.op.unary.f32(i32 24, float %1522)  ; Sqrt(value)
  %1524 = fsub fast float %1523, %1482
  %1525 = fsub fast float %1483, %1482
  %1526 = fdiv fast float %1524, %1525
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1528 = fmul fast float %1527, %1527
  %1529 = fmul fast float %1528, %1508
  br label %1530

; <label>:1530                                    ; preds = %1510, %1478, %1405, %1213
  %1531 = phi float [ 0.000000e+00, %1213 ], [ 0.000000e+00, %1405 ], [ %1529, %1510 ], [ %1508, %1478 ]
  %1532 = fcmp fast oeq float %1531, 0.000000e+00
  br i1 %1532, label %1911, label %1533, !dx.controlflow.hints !95

; <label>:1533                                    ; preds = %1530
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.CBufRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.CBufRet.f32 %1534, 2
  %1538 = fsub fast float %189, %1535
  %1539 = fadd fast float %1538, %1537
  %1540 = fsub fast float %190, %1536
  %1541 = fadd fast float %1540, %1537
  %1542 = extractvalue %dx.types.CBufRet.f32 %1534, 3
  %1543 = fmul fast float %1539, %1542
  %1544 = fmul fast float %1541, %1542
  %1545 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1546 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1547 = fsub fast float 1.000000e+00, %1545
  %1548 = fsub fast float 1.000000e+00, %1546
  %1549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1547, float %1548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1552 = extractvalue %dx.types.CBufRet.f32 %1551, 2
  %1553 = fmul fast float %1552, %1550
  %1554 = extractvalue %dx.types.CBufRet.f32 %1551, 3
  %1555 = fadd fast float %1554, %1553
  %1556 = fcmp fast ogt float %1550, 0.000000e+00
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 32768
  %1560 = icmp ne i32 %1559, 0
  %1561 = and i1 %1556, %1560
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 3
  %1564 = fadd fast float %1563, %1555
  %1565 = fcmp fast ole float %191, %1564
  %1566 = and i1 %1561, %1565
  %1567 = xor i1 %1566, true
  %1568 = icmp ne i32 %1220, 0
  %1569 = and i1 %1568, %1567
  %1570 = icmp ne i32 %1221, 0
  %1571 = and i1 %1570, %1566
  %1572 = or i1 %1569, %1571
  br i1 %1572, label %1911, label %1573, !dx.controlflow.hints !96

; <label>:1573                                    ; preds = %1533
  %1574 = fsub fast float %191, %1555
  %1575 = call float @dx.op.unary.f32(i32 6, float %1574)  ; FAbs(value)
  %1576 = fdiv fast float %1575, %1219
  %1577 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1578 = fmul fast float %1577, %1531
  %1579 = fcmp fast une float %1217, 0.000000e+00
  br i1 %1579, label %1580, label %1899, !dx.controlflow.hints !97

; <label>:1580                                    ; preds = %1573
  %1581 = fmul fast float %1217, %113
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.CBufRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.CBufRet.f32 %1582, 2
  %1586 = fmul fast float %1583, %1581
  %1587 = fmul fast float %1584, %1581
  %1588 = fmul fast float %1585, %1581
  %1589 = fadd fast float %1586, %189
  %1590 = fadd fast float %1587, %190
  %1591 = fadd fast float %1588, %191
  %1592 = fmul fast float %1217, 2.000000e+00
  %1593 = call float @dx.op.binary.f32(i32 35, float %391, float %1592)  ; FMax(a,b)
  %1594 = fsub fast float %1589, %1222
  %1595 = fsub fast float %1590, %1223
  %1596 = fmul fast float %1594, %1227
  %1597 = fmul fast float %1595, %1228
  %1598 = call float @dx.op.binary.f32(i32 36, float %1596, float %1597)  ; FMin(a,b)
  %1599 = fcmp fast olt float %1598, 0.000000e+00
  %1600 = call float @dx.op.binary.f32(i32 35, float %1596, float %1597)  ; FMax(a,b)
  %1601 = fcmp fast ogt float %1600, 1.000000e+00
  %1602 = or i1 %1599, %1601
  %1603 = fcmp fast olt float %1591, %1236
  %1604 = or i1 %1602, %1603
  %1605 = fcmp fast ogt float %1591, %1243
  %1606 = or i1 %1604, %1605
  br i1 %1606, label %1891, label %1607, !dx.controlflow.hints !86

; <label>:1607                                    ; preds = %1580
  %1608 = fsub fast float 1.000000e+00, %1597
  %1609 = extractvalue %dx.types.CBufRet.f32 %1241, 3
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 3
  %1612 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1613 = extractvalue %dx.types.CBufRet.f32 %1610, 1
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.CBufRet.f32 %1614, 2
  %1618 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  br i1 %1193, label %1634, label %1619, !dx.controlflow.hints !87

; <label>:1619                                    ; preds = %1607
  %1620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 48)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 0
  %1622 = extractvalue %dx.types.ResRet.f32 %1620, 1
  %1623 = extractvalue %dx.types.ResRet.f32 %1620, 2
  %1624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 104)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.f32 %1624, 0
  %1626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 108)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.f32 %1626, 0
  %1628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 112)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.f32 %1628, 0
  %1630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 116)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.f32 %1630, 0
  %1632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 120)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.f32 %1632, 0
  br label %1634

; <label>:1634                                    ; preds = %1619, %1607
  %1635 = phi float [ %1627, %1619 ], [ %1609, %1607 ]
  %1636 = phi float [ %1631, %1619 ], [ %1611, %1607 ]
  %1637 = phi float [ %1633, %1619 ], [ %1612, %1607 ]
  %1638 = phi float [ %1629, %1619 ], [ %1613, %1607 ]
  %1639 = phi float [ %1621, %1619 ], [ %1615, %1607 ]
  %1640 = phi float [ %1622, %1619 ], [ %1616, %1607 ]
  %1641 = phi float [ %1623, %1619 ], [ %1617, %1607 ]
  %1642 = phi float [ %1625, %1619 ], [ %1618, %1607 ]
  %1643 = fcmp fast oeq float %1635, 0.000000e+00
  br i1 %1643, label %1759, label %1644, !dx.controlflow.hints !88

; <label>:1644                                    ; preds = %1634
  %1645 = fcmp fast ogt float %1636, 0.000000e+00
  %1646 = fcmp fast oeq float %1593, 0.000000e+00
  br i1 %1646, label %1651, label %1647, !dx.controlflow.hints !72

; <label>:1647                                    ; preds = %1644
  %1648 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1649 = fmul fast float %1648, %1593
  %1650 = call float @dx.op.unary.f32(i32 23, float %1649)  ; Log(value)
  br label %1651

; <label>:1651                                    ; preds = %1647, %1644
  %1652 = phi float [ %1650, %1647 ], [ 0.000000e+00, %1644 ]
  br i1 %1646, label %1657, label %1653, !dx.controlflow.hints !72

; <label>:1653                                    ; preds = %1651
  %1654 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1655 = fmul fast float %1654, %1593
  %1656 = call float @dx.op.unary.f32(i32 23, float %1655)  ; Log(value)
  br label %1657

; <label>:1657                                    ; preds = %1653, %1651
  %1658 = phi float [ %1656, %1653 ], [ 0.000000e+00, %1651 ]
  br i1 %1645, label %1659, label %1721, !dx.controlflow.hints !89

; <label>:1659                                    ; preds = %1657
  %1660 = fcmp fast ogt float %1637, 0.000000e+00
  br i1 %1660, label %1661, label %1671, !dx.controlflow.hints !90

; <label>:1661                                    ; preds = %1659
  %1662 = fmul fast float %1637, %1596
  %1663 = fmul fast float %1637, %1608
  %1664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %31, float %1662, float %1663, float undef, float undef, i32 0, i32 0, i32 undef, float %1658)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.ResRet.f32 %1664, 1
  %1667 = fmul fast float %1665, 2.000000e+00
  %1668 = fmul fast float %1666, 2.000000e+00
  %1669 = fadd fast float %1667, -1.000000e+00
  %1670 = fadd fast float %1668, -1.000000e+00
  br label %1692

; <label>:1671                                    ; preds = %1659
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 3
  %1674 = fmul fast float %1673, %1596
  %1675 = fmul fast float %1673, %1608
  %1676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %33, float %1674, float %1675, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.ResRet.f32 %1676, 2
  %1680 = fmul fast float %1677, 2.000000e+00
  %1681 = fmul fast float %1678, 2.000000e+00
  %1682 = fmul fast float %1679, 2.000000e+00
  %1683 = fadd fast float %1680, -1.000000e+00
  %1684 = fadd fast float %1681, -1.000000e+00
  %1685 = fadd fast float %1682, -1.000000e+00
  %1686 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1687 = fmul fast float %1683, %1686
  %1688 = fmul fast float %1684, %1686
  %1689 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1690 = fmul fast float %1689, 5.000000e-01
  %1691 = fmul fast float %1690, %1685
  br label %1692

; <label>:1692                                    ; preds = %1671, %1661
  %1693 = phi float [ %1669, %1661 ], [ %1687, %1671 ]
  %1694 = phi float [ %1670, %1661 ], [ %1688, %1671 ]
  %1695 = phi float [ 0.000000e+00, %1661 ], [ %1691, %1671 ]
  %1696 = fmul fast float %1635, %1589
  %1697 = fmul fast float %1635, %1590
  %1698 = fmul fast float %1635, %1591
  %1699 = call float @dx.op.unary.f32(i32 22, float %1636)  ; Frc(value)
  %1700 = fmul fast float %1699, %1693
  %1701 = fmul fast float %1699, %1694
  %1702 = fmul fast float %1699, %1695
  %1703 = fsub fast float %1696, %1700
  %1704 = fsub fast float %1697, %1701
  %1705 = fsub fast float %1698, %1702
  %1706 = fadd fast float %1636, 5.000000e-01
  %1707 = call float @dx.op.unary.f32(i32 22, float %1706)  ; Frc(value)
  %1708 = fmul fast float %1707, %1693
  %1709 = fmul fast float %1707, %1694
  %1710 = fmul fast float %1707, %1695
  %1711 = fadd fast float %1696, -5.000000e-01
  %1712 = fsub fast float %1711, %1708
  %1713 = fadd fast float %1697, -5.000000e-01
  %1714 = fsub fast float %1713, %1709
  %1715 = fadd fast float %1698, -5.000000e-01
  %1716 = fsub fast float %1715, %1710
  %1717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1712, float %1714, float %1716, float undef, i32 0, i32 0, i32 0, float %1652)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1720 = fadd fast float %1718, %1638
  br label %1731

; <label>:1721                                    ; preds = %1657
  %1722 = fmul fast float %1642, %1639
  %1723 = fmul fast float %1642, %1640
  %1724 = fmul fast float %1642, %1641
  %1725 = fsub fast float %1589, %1722
  %1726 = fsub fast float %1590, %1723
  %1727 = fsub fast float %1591, %1724
  %1728 = fmul fast float %1725, %1635
  %1729 = fmul fast float %1726, %1635
  %1730 = fmul fast float %1727, %1635
  br label %1731

; <label>:1731                                    ; preds = %1721, %1692
  %1732 = phi float [ %1703, %1692 ], [ %1728, %1721 ]
  %1733 = phi float [ %1704, %1692 ], [ %1729, %1721 ]
  %1734 = phi float [ %1705, %1692 ], [ %1730, %1721 ]
  %1735 = phi float [ %1720, %1692 ], [ 0.000000e+00, %1721 ]
  %1736 = phi float [ %1719, %1692 ], [ 0.000000e+00, %1721 ]
  %1737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1732, float %1733, float %1734, float undef, i32 0, i32 0, i32 0, float %1652)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1738 = extractvalue %dx.types.ResRet.f32 %1737, 0
  %1739 = extractvalue %dx.types.ResRet.f32 %1737, 1
  %1740 = fadd fast float %1738, %1638
  br i1 %1645, label %1741, label %1752, !dx.controlflow.hints !91

; <label>:1741                                    ; preds = %1731
  %1742 = call float @dx.op.unary.f32(i32 22, float %1636)  ; Frc(value)
  %1743 = fmul fast float %1742, 2.000000e+00
  %1744 = fadd fast float %1743, -1.000000e+00
  %1745 = call float @dx.op.unary.f32(i32 6, float %1744)  ; FAbs(value)
  %1746 = fsub fast float %1735, %1740
  %1747 = fmul fast float %1745, %1746
  %1748 = fadd fast float %1747, %1740
  %1749 = fsub fast float %1736, %1739
  %1750 = fmul fast float %1745, %1749
  %1751 = fadd fast float %1750, %1739
  br label %1752

; <label>:1752                                    ; preds = %1741, %1731
  %1753 = phi float [ %1748, %1741 ], [ %1740, %1731 ]
  %1754 = phi float [ %1751, %1741 ], [ %1739, %1731 ]
  %1755 = fsub fast float %1753, %1754
  %1756 = fsub fast float 1.000000e+00, %1754
  %1757 = fdiv fast float %1755, %1756
  %1758 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  br label %1759

; <label>:1759                                    ; preds = %1752, %1634
  %1760 = phi float [ %1758, %1752 ], [ 1.000000e+00, %1634 ]
  %1761 = fcmp fast oeq float %1593, 0.000000e+00
  br i1 %1761, label %1766, label %1762, !dx.controlflow.hints !72

; <label>:1762                                    ; preds = %1759
  %1763 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1764 = fmul fast float %1763, %1593
  %1765 = call float @dx.op.unary.f32(i32 23, float %1764)  ; Log(value)
  br label %1766

; <label>:1766                                    ; preds = %1762, %1759
  %1767 = phi float [ %1765, %1762 ], [ 0.000000e+00, %1759 ]
  %1768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %32, float %1596, float %1608, float undef, float undef, i32 0, i32 0, i32 undef, float %1767)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1596, float %1608, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = extractvalue %dx.types.ResRet.f32 %1770, 3
  %1775 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1596, float %1608, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1779 = extractvalue %dx.types.ResRet.f32 %1775, 3
  %1780 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1596, float %1608, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = extractvalue %dx.types.ResRet.f32 %1780, 3
  %1785 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1596, float %1608, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.ResRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.ResRet.f32 %1785, 2
  %1789 = extractvalue %dx.types.ResRet.f32 %1785, 3
  %1790 = fadd fast float %1771, %1772
  %1791 = fadd fast float %1790, %1773
  %1792 = fadd fast float %1791, %1774
  %1793 = fmul fast float %1776, %1771
  %1794 = fmul fast float %1777, %1772
  %1795 = fadd fast float %1793, %1794
  %1796 = fmul fast float %1778, %1773
  %1797 = fadd fast float %1795, %1796
  %1798 = fmul fast float %1779, %1774
  %1799 = fadd fast float %1797, %1798
  %1800 = fmul fast float %1781, %1771
  %1801 = fmul fast float %1782, %1772
  %1802 = fadd fast float %1800, %1801
  %1803 = fmul fast float %1783, %1773
  %1804 = fadd fast float %1802, %1803
  %1805 = fmul fast float %1784, %1774
  %1806 = fadd fast float %1804, %1805
  %1807 = fmul fast float %1786, %1771
  %1808 = fmul fast float %1787, %1772
  %1809 = fadd fast float %1807, %1808
  %1810 = fmul fast float %1788, %1773
  %1811 = fadd fast float %1809, %1810
  %1812 = fmul fast float %1789, %1774
  %1813 = fadd fast float %1811, %1812
  %1814 = fcmp fast ogt float %1792, 0.000000e+00
  %1815 = fdiv fast float %1799, %1792
  %1816 = select i1 %1814, float %1815, float 0.000000e+00
  %1817 = fdiv fast float %1806, %1792
  %1818 = select i1 %1814, float %1817, float 0.000000e+00
  %1819 = fdiv fast float %1813, %1792
  %1820 = select i1 %1814, float %1819, float 0.000000e+00
  %1821 = fcmp fast ogt float %1591, %1818
  %1822 = fcmp fast olt float %1591, %1816
  %1823 = and i1 %1822, %1821
  br i1 %1823, label %1824, label %1891, !dx.controlflow.hints !92

; <label>:1824                                    ; preds = %1766
  %1825 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1828 = extractvalue %dx.types.CBufRet.f32 %1826, 3
  br i1 %1193, label %1839, label %1829, !dx.controlflow.hints !93

; <label>:1829                                    ; preds = %1824
  %1830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 60)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.f32 %1830, 0
  %1832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 64)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.ResRet.f32 %1832, 1
  %1835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 72)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1192, i32 96)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  br label %1839

; <label>:1839                                    ; preds = %1829, %1824
  %1840 = phi float [ %1831, %1829 ], [ %1242, %1824 ]
  %1841 = phi float [ %1836, %1829 ], [ %1240, %1824 ]
  %1842 = phi float [ %1838, %1829 ], [ %1825, %1824 ]
  %1843 = phi float [ %1833, %1829 ], [ %1827, %1824 ]
  %1844 = phi float [ %1834, %1829 ], [ %1828, %1824 ]
  %1845 = call float @dx.op.binary.f32(i32 35, float %1769, float 0.000000e+00)  ; FMax(a,b)
  %1846 = call float @dx.op.binary.f32(i32 36, float %1845, float 1.000000e+00)  ; FMin(a,b)
  %1847 = call float @dx.op.unary.f32(i32 24, float %1846)  ; Sqrt(value)
  %1848 = call float @dx.op.binary.f32(i32 35, float %1820, float 0x3F847AE140000000)  ; FMax(a,b)
  %1849 = fsub fast float %1816, %1591
  %1850 = fsub fast float %1591, %1818
  %1851 = call float @dx.op.binary.f32(i32 36, float %1850, float %1849)  ; FMin(a,b)
  %1852 = fdiv fast float %1851, %1848
  %1853 = call float @dx.op.unary.f32(i32 7, float %1852)  ; Saturate(value)
  %1854 = fsub fast float %1591, %1841
  %1855 = fdiv fast float %1854, %1840
  %1856 = call float @dx.op.unary.f32(i32 7, float %1855)  ; Saturate(value)
  %1857 = fsub fast float 1.000000e+00, %1856
  %1858 = fmul float %1853, %1857
  %1859 = fmul float %1858, %1858
  %1860 = fmul fast float %1847, %1760
  %1861 = fmul fast float %1860, %1859
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 2
  %1864 = extractvalue %dx.types.CBufRet.f32 %1862, 1
  %1865 = fsub fast float %1861, %1864
  %1866 = fsub fast float %1863, %1864
  %1867 = fdiv fast float %1865, %1866
  %1868 = call float @dx.op.unary.f32(i32 7, float %1867)  ; Saturate(value)
  %1869 = fmul fast float %1868, %1842
  %1870 = fcmp fast ogt float %1844, 0.000000e+00
  br i1 %1870, label %1871, label %1891, !dx.controlflow.hints !94

; <label>:1871                                    ; preds = %1839
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.CBufRet.f32 %1872, 1
  %1875 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %1876 = fsub fast float %1589, %1873
  %1877 = fsub fast float %1590, %1874
  %1878 = fsub fast float %1591, %1875
  %1879 = fmul fast float %1876, %1876
  %1880 = fmul fast float %1877, %1877
  %1881 = fadd fast float %1879, %1880
  %1882 = fmul fast float %1878, %1878
  %1883 = fadd fast float %1881, %1882
  %1884 = call float @dx.op.unary.f32(i32 24, float %1883)  ; Sqrt(value)
  %1885 = fsub fast float %1884, %1843
  %1886 = fsub fast float %1844, %1843
  %1887 = fdiv fast float %1885, %1886
  %1888 = call float @dx.op.unary.f32(i32 7, float %1887)  ; Saturate(value)
  %1889 = fmul fast float %1888, %1888
  %1890 = fmul fast float %1889, %1869
  br label %1891

; <label>:1891                                    ; preds = %1871, %1839, %1766, %1580
  %1892 = phi float [ 0.000000e+00, %1580 ], [ 0.000000e+00, %1766 ], [ %1890, %1871 ], [ %1869, %1839 ]
  %1893 = fsub fast float %1578, %1892
  %1894 = fdiv fast float %1893, %1578
  %1895 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1896 = fsub fast float 1.000000e+00, %1218
  %1897 = fmul fast float %1895, %1896
  %1898 = fadd fast float %1897, %1218
  br label %1899

; <label>:1899                                    ; preds = %1891, %1573
  %1900 = phi float [ %1898, %1891 ], [ 1.000000e+00, %1573 ]
  %1901 = fadd fast float %1578, %1117
  %1902 = fmul fast float %1578, %1214
  %1903 = fmul fast float %1902, %1900
  %1904 = fmul fast float %1578, %1215
  %1905 = fmul fast float %1904, %1900
  %1906 = fmul fast float %1578, %1216
  %1907 = fmul fast float %1906, %1900
  %1908 = fadd fast float %1903, %1113
  %1909 = fadd fast float %1905, %1114
  %1910 = fadd fast float %1907, %1115
  br label %1911

; <label>:1911                                    ; preds = %1899, %1533, %1530, %1112
  %1912 = phi float [ %1113, %1112 ], [ %1113, %1530 ], [ %1113, %1533 ], [ %1908, %1899 ]
  %1913 = phi float [ %1114, %1112 ], [ %1114, %1530 ], [ %1114, %1533 ], [ %1909, %1899 ]
  %1914 = phi float [ %1115, %1112 ], [ %1115, %1530 ], [ %1115, %1533 ], [ %1910, %1899 ]
  %1915 = phi float [ %1117, %1112 ], [ %1117, %1530 ], [ %1117, %1533 ], [ %1901, %1899 ]
  %1916 = and i32 %310, 4
  %1917 = icmp eq i32 %1916, 0
  br i1 %1917, label %2088, label %1918, !dx.controlflow.hints !98

; <label>:1918                                    ; preds = %1911
  %1919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.i32 %1919, 1
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %2088, label %1922

; <label>:1922                                    ; preds = %1918
  br label %1923

; <label>:1923                                    ; preds = %2079, %1922
  %1924 = phi i32 [ %2085, %2079 ], [ 0, %1922 ]
  %1925 = phi float [ %2080, %2079 ], [ %1912, %1922 ]
  %1926 = phi float [ %2081, %2079 ], [ %1913, %1922 ]
  %1927 = phi float [ %2082, %2079 ], [ %1914, %1922 ]
  %1928 = phi float [ %2083, %2079 ], [ %1116, %1922 ]
  %1929 = phi float [ %2084, %2079 ], [ %1915, %1922 ]
  %1930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.i32 %1930, 1
  %1932 = call i32 @dx.op.tertiary.i32(i32 49, i32 %308, i32 %1931, i32 %1924)  ; UMad(a,b,c)
  %1933 = shl i32 %1932, 2
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %2079, label %1937

; <label>:1937                                    ; preds = %1923
  br label %1938

; <label>:1938                                    ; preds = %2065, %1937
  %1939 = phi i32 [ %1949, %2065 ], [ %1935, %1937 ]
  %1940 = phi float [ %2071, %2065 ], [ %1925, %1937 ]
  %1941 = phi float [ %2072, %2065 ], [ %1926, %1937 ]
  %1942 = phi float [ %2073, %2065 ], [ %1927, %1937 ]
  %1943 = phi float [ %2075, %2065 ], [ %1928, %1937 ]
  %1944 = phi float [ %2076, %2065 ], [ %1929, %1937 ]
  %1945 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1939)  ; FirstbitLo(value)
  %1946 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1924, i32 %1945)  ; UMad(a,b,c)
  %1947 = and i32 %1945, 31
  %1948 = shl i32 1, %1947
  %1949 = xor i32 %1948, %1939
  %1950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1946, i32 0)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.f32 %1950, 0
  %1952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1946, i32 4)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1946, i32 16)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.f32 %1954, 0
  %1956 = extractvalue %dx.types.ResRet.f32 %1954, 1
  %1957 = extractvalue %dx.types.ResRet.f32 %1954, 2
  %1958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1946, i32 28)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 0
  %1960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1946, i32 32)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.f32 %1960, 0
  %1962 = extractvalue %dx.types.ResRet.f32 %1960, 1
  %1963 = extractvalue %dx.types.ResRet.f32 %1960, 2
  %1964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1946, i32 44)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1946, i32 48)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1946, i32 52)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1946, i32 56)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1946, i32 64)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.ResRet.f32 %1972, 1
  %1975 = extractvalue %dx.types.ResRet.f32 %1972, 2
  %1976 = mul i32 %1946, 60
  %1977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.ResRet.f32 %1977, 1
  %1980 = extractvalue %dx.types.ResRet.f32 %1977, 2
  %1981 = add i32 %1976, 12
  %1982 = add i32 %1976, 48
  %1983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1985 = fsub fast float %189, %1978
  %1986 = fsub fast float %190, %1979
  %1987 = fsub fast float %191, %1980
  %1988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.ResRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.ResRet.f32 %1988, 2
  %1992 = call float @dx.op.dot3.f32(i32 55, float %1985, float %1986, float %1987, float %1989, float %1990, float %1991)  ; Dot3(ax,ay,az,bx,by,bz)
  %1993 = add i32 %1976, 24
  %1994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = extractvalue %dx.types.ResRet.f32 %1994, 1
  %1997 = extractvalue %dx.types.ResRet.f32 %1994, 2
  %1998 = call float @dx.op.dot3.f32(i32 55, float %1985, float %1986, float %1987, float %1995, float %1996, float %1997)  ; Dot3(ax,ay,az,bx,by,bz)
  %1999 = add i32 %1976, 36
  %2000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.ResRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.ResRet.f32 %2000, 2
  %2004 = call float @dx.op.dot3.f32(i32 55, float %1985, float %1986, float %1987, float %2001, float %2002, float %2003)  ; Dot3(ax,ay,az,bx,by,bz)
  %2005 = call float @dx.op.unary.f32(i32 6, float %1992)  ; FAbs(value)
  %2006 = call float @dx.op.unary.f32(i32 6, float %1998)  ; FAbs(value)
  %2007 = call float @dx.op.unary.f32(i32 6, float %2004)  ; FAbs(value)
  %2008 = fmul fast float %2005, %1965
  %2009 = fmul fast float %2006, %1965
  %2010 = fmul fast float %2007, %1965
  %2011 = fadd fast float %2008, %1961
  %2012 = fadd fast float %2009, %1962
  %2013 = fadd fast float %2010, %1963
  %2014 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2015 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2016 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2017 = fmul fast float %2014, %2014
  %2018 = fmul fast float %2015, %2015
  %2019 = fadd fast float %2018, %2017
  %2020 = fmul fast float %2016, %2016
  %2021 = fadd fast float %2019, %2020
  %2022 = call float @dx.op.unary.f32(i32 24, float %2021)  ; Sqrt(value)
  %2023 = fsub fast float 1.000000e+00, %2022
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2025 = fmul fast float %2024, %1951
  %2026 = fmul fast float %1984, 2.000000e+00
  %2027 = fadd fast float %2004, %1984
  %2028 = call float @dx.op.binary.f32(i32 35, float %2027, float 0.000000e+00)  ; FMax(a,b)
  %2029 = call float @dx.op.binary.f32(i32 36, float %2028, float %2026)  ; FMin(a,b)
  %2030 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2029)  ; FMax(a,b)
  %2031 = fmul fast float %1953, 0x3FF7154760000000
  %2032 = fmul fast float %2031, %2030
  %2033 = call float @dx.op.unary.f32(i32 21, float %2032)  ; Exp(value)
  %2034 = fmul fast float %2025, %2033
  %2035 = fcmp fast oeq float %391, 0.000000e+00
  br i1 %2035, label %2041, label %2036, !dx.controlflow.hints !72

; <label>:2036                                    ; preds = %1938
  %2037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2038 = extractvalue %dx.types.CBufRet.f32 %2037, 3
  %2039 = fmul fast float %2038, %391
  %2040 = call float @dx.op.unary.f32(i32 23, float %2039)  ; Log(value)
  br label %2041

; <label>:2041                                    ; preds = %2036, %1938
  %2042 = phi float [ %2040, %2036 ], [ 0.000000e+00, %1938 ]
  %2043 = fcmp fast oeq float %1967, 0.000000e+00
  br i1 %2043, label %2065, label %2044, !dx.controlflow.hints !99

; <label>:2044                                    ; preds = %2041
  %2045 = fmul fast float %1973, %1971
  %2046 = fmul fast float %1974, %1971
  %2047 = fmul fast float %1975, %1971
  %2048 = fsub fast float %189, %2045
  %2049 = fsub fast float %190, %2046
  %2050 = fsub fast float %191, %2047
  %2051 = fmul fast float %2048, %1967
  %2052 = fmul fast float %2049, %1967
  %2053 = fmul fast float %2050, %1967
  %2054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %2051, float %2052, float %2053, float undef, i32 0, i32 0, i32 0, float %2042)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.ResRet.f32 %2054, 1
  %2057 = fdiv fast float 1.000000e+00, %1969
  %2058 = fmul fast float %1969, 2.000000e+00
  %2059 = fadd fast float %2058, -1.000000e+00
  %2060 = fadd fast float %2059, %2056
  %2061 = fadd fast float %2060, %2055
  %2062 = fmul fast float %2061, %2057
  %2063 = fadd fast float %2062, -1.000000e+00
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  br label %2065

; <label>:2065                                    ; preds = %2044, %2041
  %2066 = phi float [ %2064, %2044 ], [ 1.000000e+00, %2041 ]
  %2067 = fmul fast float %2034, %2066
  %2068 = fmul fast float %2067, %1955
  %2069 = fmul fast float %2067, %1956
  %2070 = fmul fast float %2067, %1957
  %2071 = fadd fast float %2068, %1940
  %2072 = fadd fast float %2069, %1941
  %2073 = fadd fast float %2070, %1942
  %2074 = fmul fast float %2067, %1959
  %2075 = fadd fast float %2074, %1943
  %2076 = fadd fast float %2067, %1944
  %2077 = icmp eq i32 %1939, %1948
  br i1 %2077, label %2078, label %1938, !llvm.loop !100

; <label>:2078                                    ; preds = %2065
  br label %2079

; <label>:2079                                    ; preds = %2078, %1923
  %2080 = phi float [ %1925, %1923 ], [ %2071, %2078 ]
  %2081 = phi float [ %1926, %1923 ], [ %2072, %2078 ]
  %2082 = phi float [ %1927, %1923 ], [ %2073, %2078 ]
  %2083 = phi float [ %1928, %1923 ], [ %2075, %2078 ]
  %2084 = phi float [ %1929, %1923 ], [ %2076, %2078 ]
  %2085 = add i32 %1924, 1
  %2086 = icmp ult i32 %2085, %1931
  br i1 %2086, label %1923, label %2087, !llvm.loop !101

; <label>:2087                                    ; preds = %2079
  br label %2088

; <label>:2088                                    ; preds = %2087, %1918, %1911
  %2089 = phi float [ %1912, %1911 ], [ %1912, %1918 ], [ %2080, %2087 ]
  %2090 = phi float [ %1913, %1911 ], [ %1913, %1918 ], [ %2081, %2087 ]
  %2091 = phi float [ %1914, %1911 ], [ %1914, %1918 ], [ %2082, %2087 ]
  %2092 = phi float [ %1116, %1911 ], [ %1116, %1918 ], [ %2083, %2087 ]
  %2093 = phi float [ %1915, %1911 ], [ %1915, %1918 ], [ %2084, %2087 ]
  %2094 = fcmp fast ogt float %2093, 0.000000e+00
  br i1 %2094, label %2095, label %2771, !dx.controlflow.hints !102

; <label>:2095                                    ; preds = %2088
  %2096 = fdiv fast float 1.000000e+00, %2093
  %2097 = fmul fast float %2096, %2089
  %2098 = fmul fast float %2096, %2090
  %2099 = fmul fast float %2096, %2091
  %2100 = fmul fast float %2096, %2092
  %2101 = fmul fast float %388, %387
  %2102 = fmul fast float %317, %124
  %2103 = call float @dx.op.unary.f32(i32 21, float %2102)  ; Exp(value)
  %2104 = fmul fast float %2103, %316
  %2105 = fadd fast float %321, %2104
  %2106 = fmul fast float %131, 2.000000e+00
  %2107 = fmul fast float %2106, %313
  %2108 = fmul fast float %132, 2.000000e+00
  %2109 = fmul fast float %2108, %314
  %2110 = fsub fast float 1.000000e+00, %2107
  %2111 = fsub fast float 1.000000e+00, %2109
  %2112 = fmul fast float %330, %2110
  %2113 = fmul fast float %331, %2110
  %2114 = fmul fast float %332, %2110
  %2115 = fmul fast float %337, %2111
  %2116 = fmul fast float %338, %2111
  %2117 = fmul fast float %339, %2111
  %2118 = fadd fast float %2115, %2112
  %2119 = fadd fast float %2116, %2113
  %2120 = fadd fast float %2117, %2114
  %2121 = fadd fast float %2118, %347
  %2122 = fadd fast float %2119, %348
  %2123 = fadd fast float %2120, %349
  %2124 = fmul fast float %2121, %2105
  %2125 = fmul fast float %2122, %2105
  %2126 = fmul fast float %2123, %2105
  %2127 = fadd fast float %124, 1.000000e+00
  %2128 = fmul fast float %317, %2127
  %2129 = call float @dx.op.unary.f32(i32 21, float %2128)  ; Exp(value)
  %2130 = fsub fast float %2129, %2103
  %2131 = fmul fast float %316, %2130
  %2132 = fmul fast float %2121, %2131
  %2133 = fsub fast float %2129, %2103
  %2134 = fmul fast float %316, %2133
  %2135 = fmul fast float %2122, %2134
  %2136 = fsub fast float %2129, %2103
  %2137 = fmul fast float %316, %2136
  %2138 = fmul fast float %2123, %2137
  %2139 = call float @dx.op.dot3.f32(i32 55, float %2132, float %2135, float %2138, float %2132, float %2135, float %2138)  ; Dot3(ax,ay,az,bx,by,bz)
  %2140 = call float @dx.op.unary.f32(i32 25, float %2139)  ; Rsqrt(value)
  %2141 = fmul fast float %2140, %2139
  %2142 = fmul fast float %2132, %2140
  %2143 = fmul fast float %2135, %2140
  %2144 = fmul fast float %2138, %2140
  %2145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.i32 %2145, 0
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2742, label %2148, !dx.controlflow.hints !103

; <label>:2148                                    ; preds = %2095
  %2149 = add nsw i32 %2146, -1
  %2150 = call i32 @dx.op.binary.i32(i32 37, i32 %2149, i32 0)  ; IMax(a,b)
  br label %2151

; <label>:2151                                    ; preds = %2735, %2148
  %2152 = phi i32 [ 0, %2148 ], [ %2739, %2735 ]
  %2153 = phi float [ 0.000000e+00, %2148 ], [ %2736, %2735 ]
  %2154 = phi float [ 0.000000e+00, %2148 ], [ %2737, %2735 ]
  %2155 = phi float [ 0.000000e+00, %2148 ], [ %2738, %2735 ]
  %2156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.i32 %2156, 0
  %2158 = call i32 @dx.op.tertiary.i32(i32 49, i32 %308, i32 %2157, i32 %2152)  ; UMad(a,b,c)
  %2159 = shl i32 %2158, 2
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2735, label %2163

; <label>:2163                                    ; preds = %2151
  br label %2164

; <label>:2164                                    ; preds = %2603, %2163
  %2165 = phi i32 [ %2174, %2603 ], [ %2161, %2163 ]
  %2166 = phi float [ %2604, %2603 ], [ %2153, %2163 ]
  %2167 = phi float [ %2605, %2603 ], [ %2154, %2163 ]
  %2168 = phi float [ %2606, %2603 ], [ %2155, %2163 ]
  %2169 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2165)  ; FirstbitLo(value)
  %2170 = shl i32 %2152, 5
  %2171 = add i32 %2169, %2170
  %2172 = and i32 %2169, 31
  %2173 = shl i32 1, %2172
  %2174 = xor i32 %2173, %2165
  %2175 = mul i32 %2171, 112
  %2176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2175, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.ResRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.ResRet.f32 %2176, 2
  %2180 = or i32 %2175, 12
  %2181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.f32 %2181, 0
  %2183 = add i32 %2175, 16
  %2184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.f32 %2184, 0
  %2186 = extractvalue %dx.types.ResRet.f32 %2184, 1
  %2187 = extractvalue %dx.types.ResRet.f32 %2184, 2
  %2188 = add i32 %2175, 28
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = add i32 %2175, 32
  %2192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.f32 %2192, 0
  %2194 = extractvalue %dx.types.ResRet.f32 %2192, 1
  %2195 = extractvalue %dx.types.ResRet.f32 %2192, 2
  %2196 = add i32 %2175, 44
  %2197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2196, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  %2199 = add i32 %2175, 48
  %2200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.ResRet.f32 %2200, 1
  %2203 = extractvalue %dx.types.ResRet.f32 %2200, 2
  %2204 = extractvalue %dx.types.ResRet.f32 %2200, 3
  %2205 = add i32 %2175, 64
  %2206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.ResRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.ResRet.f32 %2206, 2
  %2210 = extractvalue %dx.types.ResRet.f32 %2206, 3
  %2211 = add i32 %2175, 92
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 65535
  %2215 = uitofp i32 %2214 to float
  %2216 = lshr i32 %2213, 16
  %2217 = uitofp i32 %2216 to float
  %2218 = and i32 %2190, 65535
  %2219 = and i32 %2190, 50331648
  %2220 = icmp eq i32 %2219, 33554432
  %2221 = fdiv fast float 1.000000e+00, %2141
  br i1 %2220, label %2222, label %2414, !dx.controlflow.hints !104

; <label>:2222                                    ; preds = %2164
  %2223 = fsub fast float %2201, %2193
  %2224 = fsub fast float %2202, %2194
  %2225 = fsub fast float %2203, %2195
  %2226 = fmul fast float %2142, %2141
  %2227 = fmul fast float %2143, %2141
  %2228 = fmul fast float %2144, %2141
  %2229 = fadd fast float %2226, %2124
  %2230 = fadd fast float %2227, %2125
  %2231 = fadd fast float %2228, %2126
  %2232 = fmul fast float %2193, 2.000000e+00
  %2233 = fmul fast float %2194, 2.000000e+00
  %2234 = fmul fast float %2195, 2.000000e+00
  %2235 = call float @dx.op.dot3.f32(i32 55, float %2232, float %2233, float %2234, float %2232, float %2233, float %2234)  ; Dot3(ax,ay,az,bx,by,bz)
  %2236 = fdiv fast float %2232, %2235
  %2237 = fdiv fast float %2233, %2235
  %2238 = fdiv fast float %2234, %2235
  %2239 = fsub fast float %2124, %2223
  %2240 = fsub fast float %2125, %2224
  %2241 = fsub fast float %2126, %2225
  %2242 = call float @dx.op.dot3.f32(i32 55, float %2239, float %2240, float %2241, float %2232, float %2233, float %2234)  ; Dot3(ax,ay,az,bx,by,bz)
  %2243 = fmul fast float %2242, %2236
  %2244 = fmul fast float %2242, %2237
  %2245 = fmul fast float %2242, %2238
  %2246 = fsub fast float %2124, %2243
  %2247 = fsub fast float %2125, %2244
  %2248 = fsub fast float %2126, %2245
  %2249 = fsub fast float %2229, %2223
  %2250 = fsub fast float %2230, %2224
  %2251 = fsub fast float %2231, %2225
  %2252 = call float @dx.op.dot3.f32(i32 55, float %2249, float %2250, float %2251, float %2232, float %2233, float %2234)  ; Dot3(ax,ay,az,bx,by,bz)
  %2253 = fmul fast float %2252, %2236
  %2254 = fmul fast float %2252, %2237
  %2255 = fmul fast float %2252, %2238
  %2256 = fsub fast float %2229, %2253
  %2257 = fsub fast float %2230, %2254
  %2258 = fsub fast float %2231, %2255
  %2259 = fsub fast float %2256, %2246
  %2260 = fsub fast float %2257, %2247
  %2261 = fsub fast float %2258, %2248
  %2262 = fsub fast float %2223, %2246
  %2263 = fsub fast float %2224, %2247
  %2264 = fsub fast float %2225, %2248
  %2265 = call float @dx.op.dot3.f32(i32 55, float %2262, float %2263, float %2264, float %2259, float %2260, float %2261)  ; Dot3(ax,ay,az,bx,by,bz)
  %2266 = call float @dx.op.dot3.f32(i32 55, float %2259, float %2260, float %2261, float %2259, float %2260, float %2261)  ; Dot3(ax,ay,az,bx,by,bz)
  %2267 = fdiv fast float %2265, %2266
  %2268 = fcmp fast une float %2246, %2256
  %2269 = fcmp fast une float %2247, %2257
  %2270 = fcmp fast une float %2248, %2258
  %2271 = or i1 %2268, %2269
  %2272 = or i1 %2270, %2271
  %2273 = select i1 %2272, float %2267, float 0.000000e+00
  %2274 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  %2275 = fmul fast float %2274, %2226
  %2276 = fmul fast float %2274, %2227
  %2277 = fmul fast float %2274, %2228
  %2278 = fadd fast float %2239, %2275
  %2279 = fadd fast float %2240, %2276
  %2280 = fadd fast float %2241, %2277
  %2281 = call float @dx.op.dot3.f32(i32 55, float %2278, float %2279, float %2280, float %2232, float %2233, float %2234)  ; Dot3(ax,ay,az,bx,by,bz)
  %2282 = fdiv fast float %2281, %2235
  %2283 = call float @dx.op.unary.f32(i32 7, float %2282)  ; Saturate(value)
  %2284 = fmul fast float %2232, %2283
  %2285 = fmul fast float %2233, %2283
  %2286 = fmul fast float %2234, %2283
  %2287 = fadd fast float %2284, %2223
  %2288 = fadd fast float %2285, %2224
  %2289 = fadd fast float %2286, %2225
  %2290 = fmul fast float %2209, %2185
  %2291 = fmul fast float %2209, %2186
  %2292 = fmul fast float %2209, %2187
  %2293 = fadd fast float %2287, %2290
  %2294 = fadd fast float %2288, %2291
  %2295 = fadd fast float %2289, %2292
  %2296 = fsub fast float -0.000000e+00, %2208
  %2297 = fdiv fast float %2296, %2207
  %2298 = fmul fast float %2297, %2297
  %2299 = call float @dx.op.dot3.f32(i32 55, float %2142, float %2143, float %2144, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2300 = fsub fast float %2124, %2293
  %2301 = fsub fast float %2125, %2294
  %2302 = fsub fast float %2126, %2295
  %2303 = call float @dx.op.dot3.f32(i32 55, float %2300, float %2301, float %2302, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2304 = fsub fast float %2293, %2124
  %2305 = fsub fast float %2294, %2125
  %2306 = fsub fast float %2295, %2126
  %2307 = fmul fast float %2299, %2299
  %2308 = fsub fast float %2307, %2298
  %2309 = fmul fast float %2303, %2299
  %2310 = call float @dx.op.dot3.f32(i32 55, float %2304, float %2305, float %2306, float %2142, float %2143, float %2144)  ; Dot3(ax,ay,az,bx,by,bz)
  %2311 = fmul fast float %2310, %2298
  %2312 = fadd fast float %2311, %2309
  %2313 = fmul fast float %2312, 2.000000e+00
  %2314 = fmul fast float %2303, %2303
  %2315 = call float @dx.op.dot3.f32(i32 55, float %2304, float %2305, float %2306, float %2304, float %2305, float %2306)  ; Dot3(ax,ay,az,bx,by,bz)
  %2316 = fmul fast float %2315, %2298
  %2317 = fsub fast float %2314, %2316
  %2318 = fmul fast float %2313, %2313
  %2319 = fmul fast float %2308, 4.000000e+00
  %2320 = fmul fast float %2319, %2317
  %2321 = fsub fast float %2318, %2320
  %2322 = fcmp fast ogt float %2321, 0.000000e+00
  br i1 %2322, label %2323, label %2414, !dx.controlflow.hints !105

; <label>:2323                                    ; preds = %2222
  %2324 = call float @dx.op.unary.f32(i32 24, float %2321)  ; Sqrt(value)
  %2325 = fdiv fast float 5.000000e-01, %2308
  %2326 = fsub fast float -0.000000e+00, %2313
  %2327 = fsub fast float %2326, %2324
  %2328 = fmul fast float %2327, %2325
  %2329 = fsub fast float %2324, %2313
  %2330 = fmul fast float %2329, %2325
  %2331 = call float @dx.op.binary.f32(i32 35, float %2328, float %2330)  ; FMax(a,b)
  %2332 = call float @dx.op.binary.f32(i32 36, float %2328, float %2330)  ; FMin(a,b)
  %2333 = fsub fast float %2287, %2124
  %2334 = fsub fast float %2288, %2125
  %2335 = fsub fast float %2289, %2126
  %2336 = call float @dx.op.dot3.f32(i32 55, float %2333, float %2334, float %2335, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2337 = fdiv fast float %2336, %2299
  %2338 = fcmp fast ogt float %2299, 0.000000e+00
  br i1 %2338, label %2339, label %2342, !dx.controlflow.hints !106

; <label>:2339                                    ; preds = %2323
  %2340 = call float @dx.op.binary.f32(i32 36, float %2332, float %2337)  ; FMin(a,b)
  %2341 = call float @dx.op.binary.f32(i32 36, float %2331, float %2337)  ; FMin(a,b)
  br label %2345

; <label>:2342                                    ; preds = %2323
  %2343 = call float @dx.op.binary.f32(i32 35, float %2332, float %2337)  ; FMax(a,b)
  %2344 = call float @dx.op.binary.f32(i32 35, float %2331, float %2337)  ; FMax(a,b)
  br label %2345

; <label>:2345                                    ; preds = %2342, %2339
  %2346 = phi float [ %2340, %2339 ], [ %2343, %2342 ]
  %2347 = phi float [ %2341, %2339 ], [ %2344, %2342 ]
  %2348 = fcmp fast oge float %2346, 0.000000e+00
  %2349 = fcmp fast olt float %2346, %2141
  %2350 = and i1 %2348, %2349
  %2351 = fcmp fast ogt float %2347, 0.000000e+00
  %2352 = fcmp fast ole float %2347, %2141
  %2353 = and i1 %2351, %2352
  %2354 = or i1 %2350, %2353
  br i1 %2354, label %2355, label %2414, !dx.controlflow.hints !107

; <label>:2355                                    ; preds = %2345
  %2356 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2346)  ; FMax(a,b)
  %2357 = call float @dx.op.binary.f32(i32 36, float %2141, float %2347)  ; FMin(a,b)
  br i1 %2338, label %2358, label %2380, !dx.controlflow.hints !108

; <label>:2358                                    ; preds = %2355
  %2359 = fmul fast float %2357, %2142
  %2360 = fmul fast float %2357, %2143
  %2361 = fmul fast float %2357, %2144
  %2362 = fsub fast float %2304, %2359
  %2363 = fsub fast float %2305, %2360
  %2364 = fsub fast float %2306, %2361
  %2365 = call float @dx.op.dot3.f32(i32 55, float %2362, float %2363, float %2364, float %2362, float %2363, float %2364)  ; Dot3(ax,ay,az,bx,by,bz)
  %2366 = call float @dx.op.unary.f32(i32 25, float %2365)  ; Rsqrt(value)
  %2367 = fmul fast float %2366, %2362
  %2368 = fmul fast float %2366, %2363
  %2369 = fmul fast float %2366, %2364
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2367, float %2368, float %2369, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = fmul fast float %2370, %2207
  %2372 = fadd fast float %2371, %2208
  %2373 = fcmp fast olt float %2372, 0xBF1A36E2E0000000
  %2374 = select i1 %2373, float 0.000000e+00, float %2356
  %2375 = select i1 %2373, float %2356, float %2357
  %2376 = fsub fast float %2374, %2375
  %2377 = call float @dx.op.unary.f32(i32 6, float %2376)  ; FAbs(value)
  %2378 = fcmp fast olt float %2377, 0x3F1A36E2E0000000
  br i1 %2378, label %2379, label %2402, !dx.controlflow.hints !109

; <label>:2379                                    ; preds = %2358
  br label %2402

; <label>:2380                                    ; preds = %2355
  %2381 = fmul fast float %2356, %2142
  %2382 = fmul fast float %2356, %2143
  %2383 = fmul fast float %2356, %2144
  %2384 = fsub fast float %2304, %2381
  %2385 = fsub fast float %2305, %2382
  %2386 = fsub fast float %2306, %2383
  %2387 = call float @dx.op.dot3.f32(i32 55, float %2384, float %2385, float %2386, float %2384, float %2385, float %2386)  ; Dot3(ax,ay,az,bx,by,bz)
  %2388 = call float @dx.op.unary.f32(i32 25, float %2387)  ; Rsqrt(value)
  %2389 = fmul fast float %2388, %2384
  %2390 = fmul fast float %2388, %2385
  %2391 = fmul fast float %2388, %2386
  %2392 = call float @dx.op.dot3.f32(i32 55, float %2389, float %2390, float %2391, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2393 = fmul fast float %2392, %2207
  %2394 = fadd fast float %2393, %2208
  %2395 = fcmp fast olt float %2394, 0xBF1A36E2E0000000
  %2396 = select i1 %2395, float %2357, float %2356
  %2397 = select i1 %2395, float %2141, float %2357
  %2398 = fsub fast float %2396, %2397
  %2399 = call float @dx.op.unary.f32(i32 6, float %2398)  ; FAbs(value)
  %2400 = fcmp fast olt float %2399, 0x3F1A36E2E0000000
  br i1 %2400, label %2401, label %2402, !dx.controlflow.hints !110

; <label>:2401                                    ; preds = %2380
  br label %2402

; <label>:2402                                    ; preds = %2401, %2380, %2379, %2358
  %2403 = phi float [ 0.000000e+00, %2379 ], [ %2374, %2358 ], [ %2396, %2401 ], [ %2396, %2380 ]
  %2404 = phi float [ %2375, %2379 ], [ %2375, %2358 ], [ %2141, %2401 ], [ %2397, %2380 ]
  %2405 = fmul fast float %2403, %2142
  %2406 = fmul fast float %2403, %2143
  %2407 = fmul fast float %2403, %2144
  %2408 = fadd fast float %2405, %2124
  %2409 = fadd fast float %2406, %2125
  %2410 = fadd fast float %2407, %2126
  %2411 = fsub fast float %2404, %2403
  %2412 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2411)  ; FMax(a,b)
  %2413 = fmul fast float %2412, %2221
  br label %2414

; <label>:2414                                    ; preds = %2402, %2345, %2222, %2164
  %2415 = phi float [ %2293, %2402 ], [ %2293, %2345 ], [ %2293, %2222 ], [ %2201, %2164 ]
  %2416 = phi float [ %2294, %2402 ], [ %2294, %2345 ], [ %2294, %2222 ], [ %2202, %2164 ]
  %2417 = phi float [ %2295, %2402 ], [ %2295, %2345 ], [ %2295, %2222 ], [ %2203, %2164 ]
  %2418 = phi float [ %2408, %2402 ], [ %2124, %2345 ], [ %2124, %2222 ], [ %2124, %2164 ]
  %2419 = phi float [ %2409, %2402 ], [ %2125, %2345 ], [ %2125, %2222 ], [ %2125, %2164 ]
  %2420 = phi float [ %2410, %2402 ], [ %2126, %2345 ], [ %2126, %2222 ], [ %2126, %2164 ]
  %2421 = phi float [ %2412, %2402 ], [ %2141, %2345 ], [ %2141, %2222 ], [ %2141, %2164 ]
  %2422 = phi float [ %2413, %2402 ], [ 1.000000e+00, %2345 ], [ 1.000000e+00, %2222 ], [ 1.000000e+00, %2164 ]
  %2423 = fsub fast float %2415, %2418
  %2424 = fsub fast float %2416, %2419
  %2425 = fsub fast float %2417, %2420
  %2426 = call float @dx.op.dot3.f32(i32 55, float %2423, float %2424, float %2425, float %2142, float %2143, float %2144)  ; Dot3(ax,ay,az,bx,by,bz)
  %2427 = call float @dx.op.binary.f32(i32 35, float %2426, float 0.000000e+00)  ; FMax(a,b)
  %2428 = call float @dx.op.binary.f32(i32 36, float %2427, float %2421)  ; FMin(a,b)
  %2429 = fmul fast float %2428, %2142
  %2430 = fmul fast float %2428, %2143
  %2431 = fmul fast float %2428, %2144
  %2432 = fsub fast float %2418, %2415
  %2433 = fadd fast float %2432, %2429
  %2434 = fsub fast float %2419, %2416
  %2435 = fadd fast float %2434, %2430
  %2436 = fsub fast float %2420, %2417
  %2437 = fadd fast float %2436, %2431
  %2438 = fmul fast float %2433, %2433
  %2439 = fmul fast float %2435, %2435
  %2440 = fadd fast float %2438, %2439
  %2441 = fmul fast float %2437, %2437
  %2442 = fadd fast float %2440, %2441
  %2443 = call float @dx.op.unary.f32(i32 24, float %2442)  ; Sqrt(value)
  %2444 = fsub fast float -0.000000e+00, %2428
  %2445 = call float @dx.op.unary.f32(i32 6, float %2444)  ; FAbs(value)
  %2446 = fadd fast float %2445, 0x3DDB7CDFE0000000
  %2447 = fcmp fast oge float %2443, 0.000000e+00
  %2448 = fsub fast float -0.000000e+00, %2446
  %2449 = select i1 %2447, float %2448, float %2446
  %2450 = fadd fast float %2449, %2443
  %2451 = fsub fast float -0.000000e+00, %2443
  %2452 = select i1 %2447, float %2443, float %2451
  %2453 = fadd fast float %2446, %2452
  %2454 = fdiv fast float %2450, %2453
  %2455 = select i1 %2447, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %2456 = fmul fast float %2454, %2454
  %2457 = fmul fast float %2456, 0x3FC9205BC0000000
  %2458 = fadd fast float %2457, 0xBFEF6A1620000000
  %2459 = fmul fast float %2458, %2454
  %2460 = fadd fast float %2459, %2455
  %2461 = fcmp ole float %2428, -0.000000e+00
  %2462 = fsub fast float -0.000000e+00, %2460
  %2463 = select i1 %2461, float %2460, float %2462
  %2464 = fsub fast float %2421, %2428
  %2465 = call float @dx.op.unary.f32(i32 6, float %2464)  ; FAbs(value)
  %2466 = fadd fast float %2465, 0x3DDB7CDFE0000000
  %2467 = fsub fast float -0.000000e+00, %2466
  %2468 = select i1 %2447, float %2467, float %2466
  %2469 = fadd fast float %2468, %2443
  %2470 = fadd fast float %2466, %2452
  %2471 = fdiv fast float %2469, %2470
  %2472 = fmul fast float %2471, %2471
  %2473 = fmul fast float %2472, 0x3FC9205BC0000000
  %2474 = fadd fast float %2473, 0xBFEF6A1620000000
  %2475 = fmul fast float %2474, %2471
  %2476 = fadd fast float %2475, %2455
  %2477 = fcmp fast oge float %2464, 0.000000e+00
  %2478 = fsub fast float -0.000000e+00, %2476
  %2479 = select i1 %2477, float %2476, float %2478
  %2480 = fsub fast float %2479, %2463
  %2481 = fmul fast float %2480, %113
  %2482 = fadd fast float %2481, %2463
  %2483 = call float @dx.op.unary.f32(i32 14, float %2482)  ; Tan(value)
  %2484 = fmul fast float %2483, %2443
  %2485 = fadd fast float %2484, %2428
  %2486 = fmul fast float %2443, %2443
  %2487 = fmul fast float %2484, %2484
  %2488 = fadd fast float %2487, %2486
  %2489 = fmul fast float %2480, %2488
  %2490 = fdiv fast float %2443, %2489
  %2491 = fdiv fast float 1.000000e+00, %2490
  %2492 = fmul fast float %2422, %2221
  %2493 = fmul fast float %2492, %2491
  %2494 = fmul fast float %2485, %2142
  %2495 = fmul fast float %2485, %2143
  %2496 = fmul fast float %2485, %2144
  %2497 = fadd fast float %2494, %2418
  %2498 = fadd fast float %2495, %2419
  %2499 = fadd fast float %2496, %2420
  %2500 = call float @dx.op.dot3.f32(i32 55, float %2193, float %2194, float %2195, float %2193, float %2194, float %2195)  ; Dot3(ax,ay,az,bx,by,bz)
  %2501 = fsub fast float %2497, %2201
  %2502 = fsub fast float %2498, %2202
  %2503 = fsub fast float %2499, %2203
  %2504 = call float @dx.op.dot3.f32(i32 55, float %2501, float %2502, float %2503, float %2193, float %2194, float %2195)  ; Dot3(ax,ay,az,bx,by,bz)
  %2505 = fdiv fast float %2504, %2500
  %2506 = call float @dx.op.binary.f32(i32 35, float %2505, float -1.000000e+00)  ; FMax(a,b)
  %2507 = call float @dx.op.binary.f32(i32 36, float %2506, float 1.000000e+00)  ; FMin(a,b)
  %2508 = fmul fast float %2507, %2193
  %2509 = fmul fast float %2507, %2194
  %2510 = fmul fast float %2507, %2195
  %2511 = fadd fast float %2508, %2201
  %2512 = fadd fast float %2509, %2202
  %2513 = fadd fast float %2510, %2203
  %2514 = fsub fast float %2511, %2497
  %2515 = fsub fast float %2512, %2498
  %2516 = fsub fast float %2513, %2499
  %2517 = call float @dx.op.dot3.f32(i32 55, float %2514, float %2515, float %2516, float %2514, float %2515, float %2516)  ; Dot3(ax,ay,az,bx,by,bz)
  %2518 = call float @dx.op.unary.f32(i32 24, float %2517)  ; Sqrt(value)
  %2519 = fdiv fast float 1.000000e+00, %2518
  %2520 = fmul fast float %2514, %2519
  %2521 = fmul fast float %2515, %2519
  %2522 = fmul fast float %2516, %2519
  %2523 = fadd fast float %2518, %2182
  %2524 = fdiv fast float 1.000000e+00, %2523
  %2525 = fmul float %2198, %2524
  %2526 = fmul float %2525, %2525
  %2527 = call float @dx.op.unary.f32(i32 7, float %2526)  ; Saturate(value)
  br i1 %2220, label %2528, label %2552, !dx.controlflow.hints !111

; <label>:2528                                    ; preds = %2414
  %2529 = fmul fast float %2209, %2185
  %2530 = fmul fast float %2209, %2186
  %2531 = fmul fast float %2209, %2187
  %2532 = fsub fast float %2529, %2497
  %2533 = fadd fast float %2532, %2511
  %2534 = fsub fast float %2530, %2498
  %2535 = fadd fast float %2534, %2512
  %2536 = fsub fast float %2531, %2499
  %2537 = fadd fast float %2536, %2513
  %2538 = call float @dx.op.dot3.f32(i32 55, float %2533, float %2535, float %2537, float %2533, float %2535, float %2537)  ; Dot3(ax,ay,az,bx,by,bz)
  %2539 = call float @dx.op.unary.f32(i32 25, float %2538)  ; Rsqrt(value)
  %2540 = fmul fast float %2539, %2533
  %2541 = fmul fast float %2539, %2535
  %2542 = fmul fast float %2539, %2537
  %2543 = fsub fast float %2497, %2511
  %2544 = fsub fast float %2498, %2512
  %2545 = fsub fast float %2499, %2513
  %2546 = fsub fast float -0.000000e+00, %2543
  %2547 = fsub fast float -0.000000e+00, %2544
  %2548 = fsub fast float -0.000000e+00, %2545
  %2549 = call float @dx.op.dot3.f32(i32 55, float %2546, float %2547, float %2548, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2550 = fcmp fast ogt float %2549, 0.000000e+00
  %2551 = uitofp i1 %2550 to float
  br label %2552

; <label>:2552                                    ; preds = %2528, %2414
  %2553 = phi float [ %2551, %2528 ], [ 1.000000e+00, %2414 ]
  %2554 = phi float [ %2540, %2528 ], [ %2520, %2414 ]
  %2555 = phi float [ %2541, %2528 ], [ %2521, %2414 ]
  %2556 = phi float [ %2542, %2528 ], [ %2522, %2414 ]
  %2557 = call float @dx.op.dot3.f32(i32 55, float %2185, float %2186, float %2187, float %2554, float %2555, float %2556)  ; Dot3(ax,ay,az,bx,by,bz)
  %2558 = fmul fast float %2557, %2557
  %2559 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2560 = fsub fast float 1.000000e+00, %2559
  %2561 = fmul fast float %2560, 5.000000e-01
  %2562 = fcmp fast ogt float %2557, 0.000000e+00
  %2563 = fsub fast float 1.000000e+00, %2561
  %2564 = select i1 %2562, float %2561, float %2563
  %2565 = fmul fast float %2564, %2217
  %2566 = fadd fast float %2565, %2215
  %2567 = fmul fast float %2566, 0x3EF0001000000000
  %2568 = fsub fast float %2511, %381
  %2569 = fsub fast float %2512, %382
  %2570 = fsub fast float %2513, %383
  %2571 = call float @dx.op.dot3.f32(i32 55, float %2568, float %2569, float %2570, float %2568, float %2569, float %2570)  ; Dot3(ax,ay,az,bx,by,bz)
  %2572 = fmul fast float %2101, %2101
  %2573 = fsub fast float %2571, %2572
  %2574 = fdiv fast float %2573, %2571
  %2575 = call float @dx.op.unary.f32(i32 24, float %2574)  ; Sqrt(value)
  %2576 = fsub fast float 1.000000e+00, %2575
  %2577 = fcmp fast olt float %2571, %2572
  %2578 = fmul fast float %2576, 2.560000e+02
  %2579 = select i1 %2577, float 2.560000e+02, float %2578
  %2580 = call float @dx.op.unary.f32(i32 23, float %2579)  ; Log(value)
  %2581 = call float @dx.op.binary.f32(i32 36, float %2580, float 7.000000e+00)  ; FMin(a,b)
  %2582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %32, float %2567, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %2581)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2583 = extractvalue %dx.types.ResRet.f32 %2582, 0
  %2584 = fmul fast float %2557, %2207
  %2585 = fadd fast float %2584, %2208
  %2586 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2587 = select i1 %2220, float 1.000000e+00, float %2586
  %2588 = select i1 %2220, float %2586, float 1.000000e+00
  %2589 = fmul fast float %2518, %2204
  %2590 = fsub fast float 1.000000e+00, %2589
  %2591 = fmul fast float %2590, %2210
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2593 = fmul fast float %2592, %2588
  %2594 = fmul fast float %2593, 2.000000e+00
  %2595 = fsub fast float 3.000000e+00, %2594
  %2596 = fmul fast float %2583, %2553
  %2597 = fmul fast float %2593, %2593
  %2598 = fmul fast float %2597, %2596
  %2599 = fmul fast float %2598, %2595
  %2600 = call float @dx.op.binary.f32(i32 36, float %2599, float %2599)  ; FMin(a,b)
  %2601 = call float @dx.op.binary.f32(i32 36, float %2599, float %2600)  ; FMin(a,b)
  %2602 = fcmp fast ogt float %2601, 0.000000e+00
  br i1 %2602, label %2608, label %2603, !dx.controlflow.hints !112

; <label>:2603                                    ; preds = %2701, %2696, %2552
  %2604 = phi float [ %2731, %2701 ], [ %2166, %2696 ], [ %2166, %2552 ]
  %2605 = phi float [ %2732, %2701 ], [ %2167, %2696 ], [ %2167, %2552 ]
  %2606 = phi float [ %2733, %2701 ], [ %2168, %2696 ], [ %2168, %2552 ]
  %2607 = icmp eq i32 %2165, %2173
  br i1 %2607, label %2734, label %2164

; <label>:2608                                    ; preds = %2552
  %2609 = icmp eq i32 %2218, 255
  br i1 %2609, label %2696, label %2610, !dx.controlflow.hints !113

; <label>:2610                                    ; preds = %2608
  %2611 = mul nuw nsw i32 %2218, 176
  %2612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.f32 %2612, 0
  %2614 = extractvalue %dx.types.ResRet.f32 %2612, 1
  %2615 = extractvalue %dx.types.ResRet.f32 %2612, 2
  %2616 = extractvalue %dx.types.ResRet.f32 %2612, 3
  %2617 = add nuw nsw i32 %2611, 16
  %2618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.ResRet.f32 %2618, 1
  %2621 = add nuw nsw i32 %2611, 32
  %2622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.ResRet.f32 %2622, 2
  %2625 = add nuw nsw i32 %2611, 48
  %2626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.f32 %2626, 0
  %2628 = extractvalue %dx.types.ResRet.f32 %2626, 1
  %2629 = extractvalue %dx.types.ResRet.f32 %2626, 2
  %2630 = extractvalue %dx.types.ResRet.f32 %2626, 3
  %2631 = add nuw nsw i32 %2611, 64
  %2632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.ResRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.ResRet.f32 %2632, 2
  %2636 = extractvalue %dx.types.ResRet.f32 %2632, 3
  %2637 = add nuw nsw i32 %2611, 80
  %2638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  %2640 = extractvalue %dx.types.ResRet.f32 %2638, 1
  %2641 = extractvalue %dx.types.ResRet.f32 %2638, 2
  %2642 = extractvalue %dx.types.ResRet.f32 %2638, 3
  %2643 = add nuw nsw i32 %2611, 96
  %2644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  %2646 = extractvalue %dx.types.ResRet.f32 %2644, 1
  %2647 = extractvalue %dx.types.ResRet.f32 %2644, 2
  %2648 = extractvalue %dx.types.ResRet.f32 %2644, 3
  %2649 = bitcast float %2620 to i32
  %2650 = fmul fast float %2624, %2520
  %2651 = fmul fast float %2624, %2521
  %2652 = fmul fast float %2624, %2522
  %2653 = fsub fast float %2497, %2650
  %2654 = fsub fast float %2498, %2651
  %2655 = fsub fast float %2499, %2652
  %2656 = fmul fast float %2653, %2627
  %2657 = call float @dx.op.tertiary.f32(i32 46, float %2654, float %2633, float %2656)  ; FMad(a,b,c)
  %2658 = call float @dx.op.tertiary.f32(i32 46, float %2655, float %2639, float %2657)  ; FMad(a,b,c)
  %2659 = fadd fast float %2658, %2645
  %2660 = fmul fast float %2653, %2628
  %2661 = call float @dx.op.tertiary.f32(i32 46, float %2654, float %2634, float %2660)  ; FMad(a,b,c)
  %2662 = call float @dx.op.tertiary.f32(i32 46, float %2655, float %2640, float %2661)  ; FMad(a,b,c)
  %2663 = fadd fast float %2662, %2646
  %2664 = fmul fast float %2653, %2629
  %2665 = call float @dx.op.tertiary.f32(i32 46, float %2654, float %2635, float %2664)  ; FMad(a,b,c)
  %2666 = call float @dx.op.tertiary.f32(i32 46, float %2655, float %2641, float %2665)  ; FMad(a,b,c)
  %2667 = fadd fast float %2666, %2647
  %2668 = fmul fast float %2653, %2630
  %2669 = call float @dx.op.tertiary.f32(i32 46, float %2654, float %2636, float %2668)  ; FMad(a,b,c)
  %2670 = call float @dx.op.tertiary.f32(i32 46, float %2655, float %2642, float %2669)  ; FMad(a,b,c)
  %2671 = fadd fast float %2670, %2648
  %2672 = fdiv fast float %2659, %2671
  %2673 = fdiv fast float %2663, %2671
  %2674 = fdiv fast float %2667, %2671
  %2675 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %2674)  ; FMax(a,b)
  %2676 = fmul fast float %2615, 5.000000e-01
  %2677 = call float @dx.op.tertiary.f32(i32 46, float %2676, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %2678 = fadd fast float %2677, %2672
  %2679 = fadd fast float %2673, %2676
  %2680 = fmul fast float %2678, %2619
  %2681 = fmul fast float %2679, %2619
  %2682 = call float @dx.op.binary.f32(i32 35, float %2680, float %2615)  ; FMax(a,b)
  %2683 = call float @dx.op.binary.f32(i32 35, float %2681, float %2615)  ; FMax(a,b)
  %2684 = call float @dx.op.binary.f32(i32 36, float %2682, float %2616)  ; FMin(a,b)
  %2685 = call float @dx.op.binary.f32(i32 36, float %2683, float %2616)  ; FMin(a,b)
  %2686 = fadd fast float %2684, %2613
  %2687 = fadd fast float %2685, %2614
  %2688 = uitofp i32 %2649 to float
  %2689 = fadd fast float %2675, %2623
  %2690 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %35, float %2686, float %2687, float %2688, float undef, i32 0, i32 0, i32 undef, float %2689)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2691 = extractvalue %dx.types.ResRet.f32 %2690, 0
  %2692 = fadd fast float %2691, -1.000000e+00
  %2693 = fmul fast float %2692, %2587
  %2694 = fadd fast float %2693, 1.000000e+00
  %2695 = fmul fast float %2694, %2599
  br label %2696

; <label>:2696                                    ; preds = %2610, %2608
  %2697 = phi float [ %2695, %2610 ], [ %2599, %2608 ]
  %2698 = call float @dx.op.binary.f32(i32 36, float %2697, float %2697)  ; FMin(a,b)
  %2699 = call float @dx.op.binary.f32(i32 36, float %2697, float %2698)  ; FMin(a,b)
  %2700 = fcmp fast ogt float %2699, 0.000000e+00
  br i1 %2700, label %2701, label %2603, !dx.controlflow.hints !114

; <label>:2701                                    ; preds = %2696
  %2702 = call float @dx.op.dot3.f32(i32 55, float %2520, float %2521, float %2522, float %202, float %203, float %204)  ; Dot3(ax,ay,az,bx,by,bz)
  %2703 = fcmp fast ogt float %2100, 0.000000e+00
  %2704 = select i1 %2703, float 1.000000e+00, float -1.000000e+00
  %2705 = fmul fast float %113, 7.812500e-03
  %2706 = fmul fast float %113, 3.125000e-02
  %2707 = fadd fast float %2706, -3.125000e-02
  %2708 = fmul fast float %2704, 5.000000e-01
  %2709 = fmul fast float %2708, %2702
  %2710 = fmul fast float %2704, %2100
  %2711 = fadd fast float %2705, 4.921875e-01
  %2712 = fadd fast float %2711, %2709
  %2713 = fadd fast float %2705, 0x3FB25F3060000000
  %2714 = fadd fast float %2707, %2710
  %2715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %34, float %2712, float %2713, float %2714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 0
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 1
  %2719 = extractvalue %dx.types.CBufRet.f32 %2717, 2
  %2720 = select i1 %2220, float %2718, float %2719
  %2721 = fmul fast float %2527, 0x400921FB60000000
  %2722 = fmul fast float %2721, %2697
  %2723 = fmul fast float %2722, %2716
  %2724 = fmul fast float %2723, %2720
  %2725 = fmul fast float %2493, %2177
  %2726 = fmul fast float %2725, %2724
  %2727 = fmul fast float %2493, %2178
  %2728 = fmul fast float %2727, %2724
  %2729 = fmul fast float %2493, %2179
  %2730 = fmul fast float %2729, %2724
  %2731 = fadd fast float %2726, %2166
  %2732 = fadd fast float %2728, %2167
  %2733 = fadd fast float %2730, %2168
  br label %2603

; <label>:2734                                    ; preds = %2603
  br label %2735

; <label>:2735                                    ; preds = %2734, %2151
  %2736 = phi float [ %2153, %2151 ], [ %2604, %2734 ]
  %2737 = phi float [ %2154, %2151 ], [ %2605, %2734 ]
  %2738 = phi float [ %2155, %2151 ], [ %2606, %2734 ]
  %2739 = add i32 %2152, 1
  %2740 = icmp ugt i32 %2739, %2150
  br i1 %2740, label %2741, label %2151

; <label>:2741                                    ; preds = %2735
  br label %2742

; <label>:2742                                    ; preds = %2741, %2095
  %2743 = phi float [ 0.000000e+00, %2095 ], [ %2736, %2741 ]
  %2744 = phi float [ 0.000000e+00, %2095 ], [ %2737, %2741 ]
  %2745 = phi float [ 0.000000e+00, %2095 ], [ %2738, %2741 ]
  %2746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %32, float %138, float %139, float %140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2747 = extractvalue %dx.types.ResRet.f32 %2746, 0
  %2748 = extractvalue %dx.types.ResRet.f32 %2746, 1
  %2749 = extractvalue %dx.types.ResRet.f32 %2746, 2
  %2750 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2747)  ; IsNaN(value)
  %2751 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2748)  ; IsNaN(value)
  %2752 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2749)  ; IsNaN(value)
  %2753 = or i1 %2750, %2751
  %2754 = or i1 %2753, %2752
  %2755 = select i1 %2754, float 0.000000e+00, float %2747
  %2756 = select i1 %2754, float 0.000000e+00, float %2748
  %2757 = select i1 %2754, float 0.000000e+00, float %2749
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 1
  %2760 = fmul fast float %2755, %2759
  %2761 = fmul fast float %2756, %2759
  %2762 = fmul fast float %2757, %2759
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 3
  %2765 = fmul fast float %2760, %2764
  %2766 = fmul fast float %2761, %2764
  %2767 = fmul fast float %2762, %2764
  %2768 = fadd fast float %2765, %2743
  %2769 = fadd fast float %2766, %2744
  %2770 = fadd fast float %2767, %2745
  br label %2771

; <label>:2771                                    ; preds = %2742, %2088
  %2772 = phi float [ %2097, %2742 ], [ %2089, %2088 ]
  %2773 = phi float [ %2098, %2742 ], [ %2090, %2088 ]
  %2774 = phi float [ %2099, %2742 ], [ %2091, %2088 ]
  %2775 = phi float [ %2768, %2742 ], [ 0.000000e+00, %2088 ]
  %2776 = phi float [ %2769, %2742 ], [ 0.000000e+00, %2088 ]
  %2777 = phi float [ %2770, %2742 ], [ 0.000000e+00, %2088 ]
  %2778 = fmul fast float %2772, %2093
  %2779 = fmul fast float %2773, %2093
  %2780 = fmul fast float %2774, %2093
  %2781 = fmul fast float %2778, %2775
  %2782 = fmul fast float %2779, %2776
  %2783 = fmul fast float %2780, %2777
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = fmul fast float %2781, %2785
  %2787 = fmul fast float %2782, %2785
  %2788 = fmul fast float %2783, %2785
  %2789 = fmul fast float %2787, 5.000000e-01
  %2790 = fadd fast float %2783, %2781
  %2791 = fmul fast float %2785, %2790
  %2792 = fmul fast float %2791, 2.500000e-01
  %2793 = fadd fast float %2792, %2789
  %2794 = call float @dx.op.unary.f32(i32 23, float %2793)  ; Log(value)
  %2795 = fmul fast float %2794, 0x3FE62E4300000000
  %2796 = fmul fast float %2795, %2795
  store float %208, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  %2797 = fmul fast float %2795, %208
  store float %2797, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  %2798 = fmul fast float %2796, %208
  store float %2798, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2799 = load float, float addrspace(3)* %215, align 4, !tbaa !53, !noalias !57
  %2800 = fadd fast float %2799, %208
  %2801 = load float, float addrspace(3)* %218, align 4, !tbaa !53, !noalias !57
  %2802 = fadd fast float %2801, %2795
  %2803 = load float, float addrspace(3)* %221, align 4, !tbaa !53, !noalias !57
  %2804 = fadd fast float %2803, %2796
  store float %2800, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  store float %2802, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  store float %2804, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2805 = load float, float addrspace(3)* %225, align 4, !tbaa !53, !noalias !57
  %2806 = fadd fast float %2805, %2800
  %2807 = load float, float addrspace(3)* %228, align 4, !tbaa !53, !noalias !57
  %2808 = fadd fast float %2807, %2802
  %2809 = load float, float addrspace(3)* %231, align 4, !tbaa !53, !noalias !57
  %2810 = fadd fast float %2809, %2804
  store float %2806, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  store float %2808, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  store float %2810, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2811 = load float, float addrspace(3)* %235, align 4, !tbaa !53, !noalias !57
  %2812 = fadd fast float %2811, %2806
  %2813 = load float, float addrspace(3)* %238, align 4, !tbaa !53, !noalias !57
  %2814 = fadd fast float %2813, %2808
  %2815 = fdiv fast float %2814, %2812
  br i1 %246, label %2816, label %2824, !dx.controlflow.hints !61

; <label>:2816                                    ; preds = %2771
  %2817 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %234
  %2818 = load float, float addrspace(3)* %2817, align 4, !tbaa !53, !noalias !57
  %2819 = fadd fast float %2818, %2810
  %2820 = fdiv fast float %2819, %2812
  %2821 = lshr i32 %63, 1
  %2822 = lshr i32 %64, 1
  %2823 = lshr i32 %65, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2821, i32 %2822, i32 %2823, float %2815, float %2820, float %2815, float %2815, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2824

; <label>:2824                                    ; preds = %2816, %2771
  br i1 %74, label %2859, label %2825, !dx.controlflow.hints !62

; <label>:2825                                    ; preds = %2824
  %2826 = fadd fast float %113, 0x3FE3C6EF40000000
  %2827 = call float @dx.op.unary.f32(i32 22, float %2826)  ; Frc(value)
  %2828 = call float @dx.op.unary.f32(i32 23, float %2786)  ; Log(value)
  %2829 = fadd fast float %2828, -7.000000e+00
  %2830 = call float @dx.op.unary.f32(i32 21, float %2829)  ; Exp(value)
  %2831 = fmul fast float %2827, 2.000000e+00
  %2832 = fadd fast float %2831, -1.000000e+00
  %2833 = fmul fast float %2830, %2832
  %2834 = fcmp fast ogt float %2786, 0.000000e+00
  %2835 = select i1 %2834, float %2833, float 0.000000e+00
  %2836 = fadd fast float %2835, %2786
  %2837 = fadd fast float %113, 0x3FF3C6EF40000000
  %2838 = call float @dx.op.unary.f32(i32 22, float %2837)  ; Frc(value)
  %2839 = call float @dx.op.unary.f32(i32 23, float %2787)  ; Log(value)
  %2840 = fadd fast float %2839, -7.000000e+00
  %2841 = call float @dx.op.unary.f32(i32 21, float %2840)  ; Exp(value)
  %2842 = fmul fast float %2838, 2.000000e+00
  %2843 = fadd fast float %2842, -1.000000e+00
  %2844 = fmul fast float %2841, %2843
  %2845 = fcmp fast ogt float %2787, 0.000000e+00
  %2846 = select i1 %2845, float %2844, float 0.000000e+00
  %2847 = fadd fast float %2846, %2787
  %2848 = fadd fast float %113, 0x3FFDAA66E0000000
  %2849 = call float @dx.op.unary.f32(i32 22, float %2848)  ; Frc(value)
  %2850 = call float @dx.op.unary.f32(i32 23, float %2788)  ; Log(value)
  %2851 = fadd fast float %2850, -6.000000e+00
  %2852 = call float @dx.op.unary.f32(i32 21, float %2851)  ; Exp(value)
  %2853 = fmul fast float %2849, 2.000000e+00
  %2854 = fadd fast float %2853, -1.000000e+00
  %2855 = fmul fast float %2852, %2854
  %2856 = fcmp fast ogt float %2788, 0.000000e+00
  %2857 = select i1 %2856, float %2855, float 0.000000e+00
  %2858 = fadd fast float %2857, %2788
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %63, i32 %64, i32 %65, float %2836, float %2847, float %2858, float %2836, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2859

; <label>:2859                                    ; preds = %2825, %2824
  %2860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2861 = extractvalue %dx.types.CBufRet.f32 %2860, 0
  %2862 = fmul fast float %2861, %2093
  %2863 = fmul fast float %2862, 5.000000e-01
  %2864 = fadd fast float %2093, %2093
  %2865 = fmul fast float %2861, %2864
  %2866 = fmul fast float %2865, 2.500000e-01
  %2867 = fadd fast float %2866, %2863
  %2868 = fmul fast float %2867, %2867
  store float %208, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  %2869 = fmul fast float %2867, %208
  store float %2869, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  %2870 = fmul fast float %2868, %208
  store float %2870, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2871 = load float, float addrspace(3)* %215, align 4, !tbaa !53, !noalias !57
  %2872 = fadd fast float %2871, %208
  %2873 = load float, float addrspace(3)* %218, align 4, !tbaa !53, !noalias !57
  %2874 = fadd fast float %2867, %2873
  %2875 = load float, float addrspace(3)* %221, align 4, !tbaa !53, !noalias !57
  %2876 = fadd fast float %2868, %2875
  store float %2872, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  store float %2874, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  store float %2876, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2877 = load float, float addrspace(3)* %225, align 4, !tbaa !53, !noalias !57
  %2878 = fadd fast float %2877, %2872
  %2879 = load float, float addrspace(3)* %228, align 4, !tbaa !53, !noalias !57
  %2880 = fadd fast float %2879, %2874
  %2881 = load float, float addrspace(3)* %231, align 4, !tbaa !53, !noalias !57
  %2882 = fadd fast float %2881, %2876
  store float %2878, float addrspace(3)* %209, align 4, !tbaa !53, !noalias !57
  store float %2880, float addrspace(3)* %211, align 4, !tbaa !53, !noalias !57
  store float %2882, float addrspace(3)* %213, align 4, !tbaa !53, !noalias !57
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2883 = load float, float addrspace(3)* %235, align 4, !tbaa !53, !noalias !57
  %2884 = fadd fast float %2883, %2878
  %2885 = load float, float addrspace(3)* %238, align 4, !tbaa !53, !noalias !57
  %2886 = fadd fast float %2885, %2880
  %2887 = fdiv fast float %2886, %2884
  br i1 %246, label %2888, label %2896, !dx.controlflow.hints !63

; <label>:2888                                    ; preds = %2859
  %2889 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %234
  %2890 = load float, float addrspace(3)* %2889, align 4, !tbaa !53, !noalias !57
  %2891 = fadd fast float %2890, %2882
  %2892 = fdiv fast float %2891, %2884
  %2893 = lshr i32 %63, 1
  %2894 = lshr i32 %64, 1
  %2895 = lshr i32 %65, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %2893, i32 %2894, i32 %2895, float %2887, float %2892, float %2887, float %2887, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2896

; <label>:2896                                    ; preds = %2888, %2859
  br i1 %74, label %2925, label %2897, !dx.controlflow.hints !64

; <label>:2897                                    ; preds = %2896
  %2898 = fadd fast float %113, 0x3FE3C6EF40000000
  %2899 = call float @dx.op.unary.f32(i32 22, float %2898)  ; Frc(value)
  %2900 = call float @dx.op.unary.f32(i32 23, float %2862)  ; Log(value)
  %2901 = fadd fast float %2900, -7.000000e+00
  %2902 = call float @dx.op.unary.f32(i32 21, float %2901)  ; Exp(value)
  %2903 = fmul fast float %2899, 2.000000e+00
  %2904 = fadd fast float %2903, -1.000000e+00
  %2905 = fmul fast float %2902, %2904
  %2906 = fcmp fast ogt float %2862, 0.000000e+00
  %2907 = select i1 %2906, float %2905, float 0.000000e+00
  %2908 = fadd fast float %2907, %2862
  %2909 = fadd fast float %113, 0x3FF3C6EF40000000
  %2910 = call float @dx.op.unary.f32(i32 22, float %2909)  ; Frc(value)
  %2911 = fmul fast float %2910, 2.000000e+00
  %2912 = fadd fast float %2911, -1.000000e+00
  %2913 = fmul fast float %2902, %2912
  %2914 = select i1 %2906, float %2913, float 0.000000e+00
  %2915 = fadd fast float %2914, %2862
  %2916 = fadd fast float %113, 0x3FFDAA66E0000000
  %2917 = call float @dx.op.unary.f32(i32 22, float %2916)  ; Frc(value)
  %2918 = fadd fast float %2900, -6.000000e+00
  %2919 = call float @dx.op.unary.f32(i32 21, float %2918)  ; Exp(value)
  %2920 = fmul fast float %2917, 2.000000e+00
  %2921 = fadd fast float %2920, -1.000000e+00
  %2922 = fmul fast float %2919, %2921
  %2923 = select i1 %2906, float %2922, float 0.000000e+00
  %2924 = fadd fast float %2923, %2862
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %63, i32 %64, i32 %65, float %2908, float %2915, float %2924, float %2908, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2925

; <label>:2925                                    ; preds = %2897, %2896
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
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

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
!dx.entryPoints = !{!50}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !36, !41, !44}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 4, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 24, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 25, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 39, i32 1, i32 12, i32 0, !22}
!22 = !{i32 1, i32 164}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 42, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture1D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 1, i32 0, !7}
!27 = !{i32 19, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !32}
!32 = !{i32 1, i32 80}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !35}
!35 = !{i32 1, i32 4}
!36 = !{!37, !38, !39, !40}
!37 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!38 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!39 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!40 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!41 = !{!42, !43}
!42 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!43 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!44 = !{!45, !46, !47, !48, !49}
!45 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!46 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!47 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!48 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!49 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!50 = !{void ()* @cs_volumetric_forwardplus_scatter_local, !"cs_volumetric_forwardplus_scatter_local", null, !4, !51}
!51 = !{i32 0, i64 272, i32 4, !52}
!52 = !{i32 4, i32 4, i32 4}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!59 = distinct !{!59, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!60 = distinct !{!60, !59, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !84}
!101 = distinct !{!101, !84}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}

