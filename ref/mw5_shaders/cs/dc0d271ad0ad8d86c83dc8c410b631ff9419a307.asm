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
; shader hash: 08d060e9942fd9c2448437e9d12d6a57
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
;                                   texture     f32          2d     T16             t0     1
;                                   textureunorm_f32     2darray     T17            t34     1
;                                   texture    byte         r/o     T18            t28     1
;                                   texture     f32          2d     T19             t1     1
;                                   texture     f32          2d     T20            t23     1
;                                   texture     f32          2d     T21             t2     1
;                                   texture     f32          2d     T22            t18     1
;                                   texture     f32          1d     T23            t54     1
;                                   texture     f32          3d     T24             t5     1
;                                   texture    byte         r/o     T25            t13     1
;                                   texture  struct         r/o     T26            t14     1
;                                   texture    byte         r/o     T27            t15     1
;                                   texture  struct         r/o     T28            t29     1
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
%struct.SamplerComparisonState = type { i32 }
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = alloca [4 x i32], align 4
  %42 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %43 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %44 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %45 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %46 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %47 = alloca [12 x float], align 4
  %48 = alloca [12 x float], align 4
  %49 = alloca [3 x float], align 4
  %50 = alloca [3 x float], align 4
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 3
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 1
  %55 = mul i32 %54, %52
  %56 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.i32 %56, 1
  %58 = mul i32 %55, %57
  %59 = add i32 %58, %45
  %60 = shl i32 %59, 2
  %61 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.i32 %61, 0
  %63 = and i32 %62, 255
  %64 = lshr i32 %62, 8
  %65 = and i32 %64, 255
  %66 = lshr i32 %62, 16
  %67 = and i32 %66, 255
  %68 = shl nuw nsw i32 %63, 2
  %69 = shl nuw nsw i32 %65, 2
  %70 = shl nuw nsw i32 %67, 2
  %71 = add i32 %68, %42
  %72 = add i32 %69, %43
  %73 = add i32 %70, %44
  %74 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.i32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.i32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.i32 %74, 2
  %78 = icmp uge i32 %71, %75
  %79 = icmp uge i32 %72, %76
  %80 = icmp uge i32 %73, %77
  %81 = or i1 %78, %79
  %82 = or i1 %80, %81
  %83 = xor i1 %82, true
  %84 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.i32 %84, 3
  %86 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %72, i32 %85)  ; UMad(a,b,c)
  %87 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %71, i32 %86)  ; UMad(a,b,c)
  %88 = mul i32 %87, -63
  %89 = lshr i32 %88, 17
  %90 = xor i32 %89, %88
  %91 = mul i32 %90, -511
  %92 = mul i32 %90, -8176
  %93 = xor i32 %91, %92
  %94 = mul i32 %93, -7
  %95 = mul i32 %93, -7168
  %96 = xor i32 %94, %95
  %97 = lshr i32 %96, 15
  %98 = xor i32 %97, %94
  %99 = and i32 %98, 127
  %100 = mul i32 %99, 3
  %101 = add i32 0, %100
  %102 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %101
  %103 = load float, float* %102, align 4
  %104 = mul i32 %99, 3
  %105 = add i32 1, %104
  %106 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %105
  %107 = load float, float* %106, align 4
  %108 = mul i32 %99, 3
  %109 = add i32 2, %108
  %110 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %109
  %111 = load float, float* %110, align 4
  %112 = uitofp i32 %85 to float
  %113 = fmul fast float %112, 0x3FEA36A940000000
  %114 = fmul fast float %112, 0x3FE5793080000000
  %115 = fmul fast float %112, 0x3FE1972580000000
  %116 = fadd fast float %103, %113
  %117 = fadd fast float %107, %114
  %118 = fadd fast float %111, %115
  %119 = call float @dx.op.unary.f32(i32 22, float %116)  ; Frc(value)
  %120 = call float @dx.op.unary.f32(i32 22, float %117)  ; Frc(value)
  %121 = call float @dx.op.unary.f32(i32 22, float %118)  ; Frc(value)
  %122 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %33, i32 0, i32 %71, i32 %72, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = fcmp fast ogt float %123, -1.000000e+00
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %127 = select i1 %124, float %126, float 1.000000e+00
  %128 = fadd fast float %123, 1.000000e+00
  %129 = fmul fast float %127, %128
  %130 = uitofp i32 %71 to float
  %131 = uitofp i32 %72 to float
  %132 = uitofp i32 %73 to float
  %133 = fadd fast float %132, -5.000000e-01
  %134 = fadd fast float %133, %121
  %135 = fadd fast float %130, %119
  %136 = fadd fast float %131, %120
  %137 = fadd fast float %134, 5.000000e-01
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fmul fast float %139, %135
  %143 = fmul fast float %140, %136
  %144 = fmul fast float %141, %137
  %145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.i32 %145, 0
  %147 = uitofp i32 %146 to float
  %148 = fmul fast float %147, %144
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = fmul fast float %148, %151
  %153 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %154 = fmul fast float %153, %150
  %155 = fsub fast float 4.000000e+00, %150
  %156 = fadd fast float %155, %154
  %157 = call float @dx.op.binary.f32(i32 36, float %156, float %129)  ; FMin(a,b)
  %158 = fmul fast float %142, 2.000000e+00
  %159 = fmul fast float %143, 2.000000e+00
  %160 = fsub fast float 1.000000e+00, %158
  %161 = fsub fast float 1.000000e+00, %159
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = fmul fast float %163, %160
  %167 = fmul fast float %164, %160
  %168 = fmul fast float %165, %160
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %173 = fmul fast float %170, %161
  %174 = fmul fast float %171, %161
  %175 = fmul fast float %172, %161
  %176 = fadd fast float %173, %166
  %177 = fadd fast float %174, %167
  %178 = fadd fast float %175, %168
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = fadd fast float %176, %180
  %184 = fadd fast float %177, %181
  %185 = fadd fast float %178, %182
  %186 = fmul fast float %183, %157
  %187 = fmul fast float %184, %157
  %188 = fmul fast float %185, %157
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %193 = fadd fast float %186, %190
  %194 = fadd fast float %187, %191
  %195 = fadd fast float %188, %192
  %196 = add i32 %73, 1
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %151, %197
  %199 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %200 = fmul fast float %151, %132
  %201 = call float @dx.op.unary.f32(i32 21, float %200)  ; Exp(value)
  %202 = fsub fast float %199, %201
  %203 = fmul fast float %150, %202
  %204 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %186, float %187, float %188)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call float @dx.op.unary.f32(i32 25, float %204)  ; Rsqrt(value)
  %206 = fmul fast float %205, %186
  %207 = fmul fast float %205, %187
  %208 = fmul fast float %205, %188
  %209 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %210 = fmul fast float %209, 0x3FE62E4300000000
  %211 = fmul fast float %210, %210
  %212 = select i1 %82, float 0.000000e+00, float 1.000000e+00
  %213 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %46
  store float %212, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  %214 = fmul fast float %210, %212
  %215 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %46
  store float %214, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  %216 = fmul fast float %211, %212
  %217 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %46
  store float %216, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = xor i32 %46, 4
  %219 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %218
  %220 = load float, float addrspace(3)* %219, align 4, !tbaa !57, !noalias !61
  %221 = fadd fast float %220, %212
  %222 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %218
  %223 = load float, float addrspace(3)* %222, align 4, !tbaa !57, !noalias !61
  %224 = fadd fast float %223, %210
  %225 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %218
  %226 = load float, float addrspace(3)* %225, align 4, !tbaa !57, !noalias !61
  %227 = fadd fast float %226, %211
  store float %221, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  store float %224, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  store float %227, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %228 = xor i32 %46, 16
  %229 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %228
  %230 = load float, float addrspace(3)* %229, align 4, !tbaa !57, !noalias !61
  %231 = fadd fast float %230, %221
  %232 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %228
  %233 = load float, float addrspace(3)* %232, align 4, !tbaa !57, !noalias !61
  %234 = fadd fast float %233, %224
  %235 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %228
  %236 = load float, float addrspace(3)* %235, align 4, !tbaa !57, !noalias !61
  %237 = fadd fast float %236, %227
  store float %231, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  store float %234, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  store float %237, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %238 = xor i32 %46, 1
  %239 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %238
  %240 = load float, float addrspace(3)* %239, align 4, !tbaa !57, !noalias !61
  %241 = fadd fast float %240, %231
  %242 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %238
  %243 = load float, float addrspace(3)* %242, align 4, !tbaa !57, !noalias !61
  %244 = fadd fast float %243, %234
  %245 = fdiv fast float %244, %241
  %246 = and i32 %71, 1
  %247 = and i32 %246, %72
  %248 = and i32 %247, %73
  %249 = icmp ne i32 %248, 0
  %250 = and i1 %249, %83
  br i1 %250, label %251, label %259, !dx.controlflow.hints !65

; <label>:251                                     ; preds = %0
  %252 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %238
  %253 = load float, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  %254 = fadd fast float %253, %237
  %255 = fdiv fast float %254, %241
  %256 = lshr i32 %71, 1
  %257 = lshr i32 %72, 1
  %258 = lshr i32 %73, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %256, i32 %257, i32 %258, float %245, float %255, float %245, float %245, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %259

; <label>:259                                     ; preds = %251, %0
  br i1 %82, label %261, label %260, !dx.controlflow.hints !66

; <label>:260                                     ; preds = %259
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %71, i32 %72, i32 %73, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %261

; <label>:261                                     ; preds = %260, %259
  store float %212, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  store float 0.000000e+00, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  store float 0.000000e+00, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %262 = load float, float addrspace(3)* %219, align 4, !tbaa !57, !noalias !61
  %263 = fadd fast float %262, %212
  %264 = load float, float addrspace(3)* %222, align 4, !tbaa !57, !noalias !61
  %265 = load float, float addrspace(3)* %225, align 4, !tbaa !57, !noalias !61
  store float %263, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  store float %264, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  store float %265, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %266 = load float, float addrspace(3)* %229, align 4, !tbaa !57, !noalias !61
  %267 = fadd fast float %266, %263
  %268 = load float, float addrspace(3)* %232, align 4, !tbaa !57, !noalias !61
  %269 = fadd fast float %268, %264
  %270 = load float, float addrspace(3)* %235, align 4, !tbaa !57, !noalias !61
  %271 = fadd fast float %270, %265
  store float %267, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  store float %269, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  store float %271, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %272 = load float, float addrspace(3)* %239, align 4, !tbaa !57, !noalias !61
  %273 = fadd fast float %272, %267
  %274 = load float, float addrspace(3)* %242, align 4, !tbaa !57, !noalias !61
  %275 = fadd fast float %274, %269
  %276 = fdiv fast float %275, %273
  br i1 %250, label %277, label %285, !dx.controlflow.hints !67

; <label>:277                                     ; preds = %261
  %278 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %238
  %279 = load float, float addrspace(3)* %278, align 4, !tbaa !57, !noalias !61
  %280 = fadd fast float %279, %271
  %281 = fdiv fast float %280, %273
  %282 = lshr i32 %71, 1
  %283 = lshr i32 %72, 1
  %284 = lshr i32 %73, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %282, i32 %283, i32 %284, float %276, float %281, float %276, float %276, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %285

; <label>:285                                     ; preds = %277, %261
  br i1 %82, label %287, label %286, !dx.controlflow.hints !68

; <label>:286                                     ; preds = %285
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %71, i32 %72, i32 %73, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %287

; <label>:287                                     ; preds = %286, %285
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %290 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %291 = fsub fast float %195, %289
  %292 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %291)  ; FMax(a,b)
  %293 = fmul fast float %292, 0x3FF7154760000000
  %294 = fmul fast float %293, %290
  %295 = call float @dx.op.unary.f32(i32 21, float %294)  ; Exp(value)
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %299 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = fmul fast float %302, %295
  %304 = fmul fast float %303, %297
  %305 = fmul fast float %303, %298
  %306 = fmul fast float %303, %299
  %307 = fmul fast float %303, %301
  %308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.i32 %308, 2
  %310 = extractvalue %dx.types.CBufRet.i32 %308, 3
  %311 = call i32 @dx.op.tertiary.i32(i32 49, i32 %65, i32 %309, i32 %63)  ; UMad(a,b,c)
  %312 = call i32 @dx.op.tertiary.i32(i32 49, i32 %67, i32 %310, i32 %311)  ; UMad(a,b,c)
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %312, i32 0)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = fadd fast float %130, 1.000000e+00
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %322 = fmul fast float %321, %134
  %323 = call float @dx.op.unary.f32(i32 21, float %322)  ; Exp(value)
  %324 = fmul fast float %323, %320
  %325 = fsub fast float 4.000000e+00, %320
  %326 = fadd fast float %325, %324
  %327 = fmul fast float %315, 2.000000e+00
  %328 = fmul fast float %327, %317
  %329 = fmul fast float %131, 2.000000e+00
  %330 = fmul fast float %329, %318
  %331 = fsub fast float 1.000000e+00, %328
  %332 = fsub fast float 1.000000e+00, %330
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %337 = fmul fast float %334, %331
  %338 = fmul fast float %335, %331
  %339 = fmul fast float %336, %331
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = fmul fast float %341, %332
  %345 = fmul fast float %342, %332
  %346 = fmul fast float %343, %332
  %347 = fadd fast float %344, %337
  %348 = fadd fast float %345, %338
  %349 = fadd fast float %346, %339
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fadd fast float %347, %351
  %355 = fadd fast float %348, %352
  %356 = fadd fast float %349, %353
  %357 = fadd fast float %131, 1.000000e+00
  %358 = fmul fast float %130, 2.000000e+00
  %359 = fmul fast float %358, %317
  %360 = fmul fast float %357, 2.000000e+00
  %361 = fmul fast float %360, %318
  %362 = fsub fast float 1.000000e+00, %359
  %363 = fsub fast float 1.000000e+00, %361
  %364 = fmul fast float %334, %362
  %365 = fmul fast float %335, %362
  %366 = fmul fast float %336, %362
  %367 = fmul fast float %341, %363
  %368 = fmul fast float %342, %363
  %369 = fmul fast float %343, %363
  %370 = fadd fast float %367, %364
  %371 = fadd fast float %368, %365
  %372 = fadd fast float %369, %366
  %373 = fadd fast float %370, %351
  %374 = fadd fast float %371, %352
  %375 = fadd fast float %372, %353
  %376 = fmul fast float %373, %326
  %377 = fmul fast float %374, %326
  %378 = fmul fast float %375, %326
  %379 = fadd fast float %373, %354
  %380 = fmul fast float %326, %379
  %381 = fadd fast float %374, %355
  %382 = fmul fast float %326, %381
  %383 = fadd fast float %375, %356
  %384 = fmul fast float %326, %383
  %385 = fmul fast float %380, 5.000000e-01
  %386 = fmul fast float %382, 5.000000e-01
  %387 = fmul fast float %384, 5.000000e-01
  %388 = fsub fast float %385, %376
  %389 = fsub fast float %386, %377
  %390 = fsub fast float %387, %378
  %391 = call float @dx.op.dot3.f32(i32 55, float %388, float %389, float %390, float %388, float %389, float %390)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = call float @dx.op.unary.f32(i32 25, float %391)  ; Rsqrt(value)
  %393 = fmul fast float %391, 2.000000e+00
  %394 = fmul fast float %393, %392
  %395 = call float @dx.op.binary.f32(i32 35, float %203, float %394)  ; FMax(a,b)
  %396 = and i32 %314, 8
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %614, label %398, !dx.controlflow.hints !69

; <label>:398                                     ; preds = %287
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %402 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %407 = fsub fast float %193, %404
  %408 = fsub fast float %194, %405
  %409 = fsub fast float %195, %406
  %410 = fmul fast float %407, %400
  %411 = fmul fast float %408, %401
  %412 = fmul fast float %409, %402
  %413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.i32 %413, 3
  %415 = icmp eq i32 %414, 0
  %416 = fcmp fast oge float %412, 0.000000e+00
  %417 = fcmp fast ole float %412, 1.000000e+00
  br i1 %415, label %420, label %418, !dx.controlflow.hints !70

; <label>:418                                     ; preds = %398
  %419 = and i1 %416, %417
  br label %430

; <label>:420                                     ; preds = %398
  %421 = fcmp fast oge float %410, 0.000000e+00
  %422 = fcmp fast oge float %411, 0.000000e+00
  %423 = and i1 %421, %422
  %424 = and i1 %416, %423
  %425 = fcmp fast ole float %410, 1.000000e+00
  %426 = fcmp fast ole float %411, 1.000000e+00
  %427 = and i1 %425, %426
  %428 = and i1 %417, %427
  %429 = and i1 %424, %428
  br label %430

; <label>:430                                     ; preds = %420, %418
  %431 = phi i1 [ %419, %418 ], [ %429, %420 ]
  br i1 %431, label %432, label %607, !dx.controlflow.hints !71

; <label>:432                                     ; preds = %430
  %433 = fcmp fast oeq float %395, 0.000000e+00
  br i1 %433, label %448, label %434, !dx.controlflow.hints !72

; <label>:434                                     ; preds = %432
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 3
  %437 = fmul fast float %436, %395
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 0
  %440 = extractvalue %dx.types.CBufRet.f32 %438, 1
  %441 = extractvalue %dx.types.CBufRet.f32 %438, 2
  %442 = fmul fast float %439, %437
  %443 = fmul fast float %440, %437
  %444 = fmul fast float %441, %437
  %445 = call float @dx.op.unary.f32(i32 23, float %442)  ; Log(value)
  %446 = call float @dx.op.unary.f32(i32 23, float %443)  ; Log(value)
  %447 = call float @dx.op.unary.f32(i32 23, float %444)  ; Log(value)
  br label %448

; <label>:448                                     ; preds = %434, %432
  %449 = phi float [ %445, %434 ], [ 0.000000e+00, %432 ]
  %450 = phi float [ %446, %434 ], [ 0.000000e+00, %432 ]
  %451 = phi float [ %447, %434 ], [ 0.000000e+00, %432 ]
  %452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.i32 %452, 0
  %454 = extractvalue %dx.types.CBufRet.i32 %452, 1
  %455 = uitofp i32 %453 to float
  %456 = uitofp i32 %454 to float
  %457 = fmul fast float %410, %455
  %458 = fmul fast float %411, %456
  %459 = fadd fast float %457, 5.000000e-01
  %460 = fadd fast float %458, 5.000000e-01
  %461 = call float @dx.op.unary.f32(i32 22, float %459)  ; Frc(value)
  %462 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %463 = call float @dx.op.unary.f32(i32 27, float %459)  ; Round_ni(value)
  %464 = call float @dx.op.unary.f32(i32 27, float %460)  ; Round_ni(value)
  %465 = fadd fast float %463, 1.000000e+00
  %466 = fadd fast float %464, 1.000000e+00
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %467, 1
  %470 = fmul fast float %468, %465
  %471 = fmul fast float %469, %466
  %472 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %23, %dx.types.Handle %36, float %470, float %471, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = extractvalue %dx.types.CBufRet.i32 %452, 2
  %478 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %479 = uitofp i32 %477 to float
  %480 = fadd fast float %479, -1.000000e+00
  %481 = fmul fast float %480, %473
  %482 = fmul fast float %480, %474
  %483 = fmul fast float %480, %475
  %484 = fmul fast float %480, %476
  %485 = fadd fast float %481, 5.000000e-01
  %486 = fadd fast float %482, 5.000000e-01
  %487 = fadd fast float %483, 5.000000e-01
  %488 = fadd fast float %484, 5.000000e-01
  %489 = fptoui float %485 to i32
  %490 = fptoui float %486 to i32
  %491 = fptoui float %487 to i32
  %492 = fptoui float %488 to i32
  %493 = uitofp i32 %489 to float
  %494 = uitofp i32 %490 to float
  %495 = uitofp i32 %491 to float
  %496 = uitofp i32 %492 to float
  %497 = fadd fast float %493, 5.000000e-01
  %498 = fadd fast float %494, 5.000000e-01
  %499 = fadd fast float %495, 5.000000e-01
  %500 = fadd fast float %496, 5.000000e-01
  %501 = fmul fast float %497, %478
  %502 = fmul fast float %498, %478
  %503 = fmul fast float %499, %478
  %504 = fmul fast float %500, %478
  %505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %501, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %502, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %503, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %37, float %504, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = fsub fast float %510, %512
  %514 = fmul fast float %513, %461
  %515 = fadd fast float %514, %512
  %516 = fsub fast float %508, %506
  %517 = fmul fast float %516, %461
  %518 = fadd fast float %517, %506
  %519 = fsub fast float %518, %515
  %520 = fmul fast float %519, %462
  %521 = fadd fast float %520, %515
  %522 = fcmp fast ogt float %521, 0.000000e+00
  br i1 %522, label %523, label %591, !dx.controlflow.hints !73

; <label>:523                                     ; preds = %448
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = extractvalue %dx.types.CBufRet.f32 %524, 1
  %527 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 0
  %530 = extractvalue %dx.types.CBufRet.f32 %528, 1
  %531 = extractvalue %dx.types.CBufRet.f32 %528, 2
  %532 = fmul fast float %408, %400
  %533 = fmul fast float %409, %400
  %534 = fadd fast float %410, %529
  %535 = fadd fast float %532, %530
  %536 = fadd fast float %533, %531
  %537 = fmul fast float %534, %525
  %538 = fmul fast float %535, %525
  %539 = fmul fast float %536, %525
  %540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %537, float %538, float %539, float undef, i32 0, i32 0, i32 0, float %449)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = fmul fast float %534, %526
  %543 = fmul fast float %535, %526
  %544 = fmul fast float %536, %526
  %545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %542, float %543, float %544, float undef, i32 0, i32 0, i32 0, float %450)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 1
  %547 = fmul fast float %534, %527
  %548 = fmul fast float %535, %527
  %549 = fmul fast float %536, %527
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %547, float %548, float %549, float undef, i32 0, i32 0, i32 0, float %451)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 2
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 1
  %554 = fmul fast float %546, %541
  %555 = fmul fast float %554, %551
  %556 = call float @dx.op.unary.f32(i32 23, float %555)  ; Log(value)
  %557 = fmul fast float %556, %553
  %558 = call float @dx.op.unary.f32(i32 21, float %557)  ; Exp(value)
  %559 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %560 = fmul fast float %521, %521
  %561 = fmul fast float %560, %558
  %562 = fmul fast float %561, %559
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 3
  %565 = fmul fast float %564, %562
  %566 = bitcast float %565 to i32
  %567 = sitofp i32 %566 to float
  %568 = fptosi float %567 to i32
  %569 = bitcast i32 %568 to float
  %570 = fsub fast float 1.000000e+00, %562
  %571 = bitcast float %570 to i32
  %572 = sitofp i32 %571 to float
  %573 = fptosi float %572 to i32
  %574 = bitcast i32 %573 to float
  %575 = fadd fast float %569, %574
  %576 = bitcast float %575 to i32
  %577 = sub nsw i32 2129859010, %576
  %578 = bitcast i32 %577 to float
  %579 = fmul fast float %578, %569
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = fmul fast float %579, %583
  %585 = fadd fast float %584, 1.000000e+00
  %586 = bitcast float %585 to i32
  %587 = sub nsw i32 2129859010, %586
  %588 = bitcast i32 %587 to float
  %589 = fmul fast float %579, %581
  %590 = fmul fast float %589, %588
  br label %591

; <label>:591                                     ; preds = %523, %448
  %592 = phi float [ %590, %523 ], [ %521, %448 ]
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %596 = extractvalue %dx.types.CBufRet.f32 %593, 2
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %599 = fmul fast float %594, %592
  %600 = fmul fast float %595, %592
  %601 = fmul fast float %596, %592
  %602 = fadd fast float %599, %304
  %603 = fadd fast float %600, %305
  %604 = fadd fast float %601, %306
  %605 = fmul fast float %598, %592
  %606 = fadd fast float %605, %307
  br label %607

; <label>:607                                     ; preds = %591, %430
  %608 = phi float [ %602, %591 ], [ %304, %430 ]
  %609 = phi float [ %603, %591 ], [ %305, %430 ]
  %610 = phi float [ %604, %591 ], [ %306, %430 ]
  %611 = phi float [ %606, %591 ], [ %307, %430 ]
  %612 = phi float [ %592, %591 ], [ 0.000000e+00, %430 ]
  %613 = fadd fast float %612, %303
  br label %614

; <label>:614                                     ; preds = %607, %287
  %615 = phi float [ %608, %607 ], [ %304, %287 ]
  %616 = phi float [ %609, %607 ], [ %305, %287 ]
  %617 = phi float [ %610, %607 ], [ %306, %287 ]
  %618 = phi float [ %611, %607 ], [ %307, %287 ]
  %619 = phi float [ %613, %607 ], [ %303, %287 ]
  %620 = phi float [ %612, %607 ], [ 0.000000e+00, %287 ]
  %621 = and i32 %314, 2
  %622 = icmp ne i32 %621, 0
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %627 = fadd fast float %626, %624
  %628 = fcmp fast ole float %195, %627
  %629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.i32 %629, 3
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %651, !dx.controlflow.hints !74

; <label>:632                                     ; preds = %614
  %633 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %634 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %635 = fsub fast float %193, %633
  %636 = fsub fast float %194, %634
  %637 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %638 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %639 = fdiv fast float 1.000000e+00, %637
  %640 = fdiv fast float 1.000000e+00, %638
  %641 = fmul fast float %635, %639
  %642 = fmul fast float %640, %636
  %643 = fcmp fast oge float %641, 0.000000e+00
  %644 = fcmp fast oge float %642, 0.000000e+00
  %645 = and i1 %643, %644
  %646 = and i1 %628, %645
  %647 = fcmp fast ole float %641, 1.000000e+00
  %648 = fcmp fast ole float %642, 1.000000e+00
  %649 = and i1 %647, %648
  %650 = and i1 %649, %646
  br label %651

; <label>:651                                     ; preds = %632, %614
  %652 = phi i1 [ %650, %632 ], [ %628, %614 ]
  %653 = and i1 %622, %652
  br i1 %653, label %654, label %833, !dx.controlflow.hints !75

; <label>:654                                     ; preds = %651
  %655 = fcmp fast oeq float %395, 0.000000e+00
  br i1 %655, label %661, label %656, !dx.controlflow.hints !76

; <label>:656                                     ; preds = %654
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 3
  %659 = fmul fast float %658, %395
  %660 = call float @dx.op.unary.f32(i32 23, float %659)  ; Log(value)
  br label %661

; <label>:661                                     ; preds = %656, %654
  %662 = phi float [ %660, %656 ], [ 0.000000e+00, %654 ]
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 0
  %665 = extractvalue %dx.types.CBufRet.f32 %663, 1
  %666 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %667 = fsub fast float %193, %664
  %668 = fsub fast float %194, %665
  %669 = fsub fast float %195, %666
  %670 = fmul fast float %667, %667
  %671 = fmul fast float %668, %668
  %672 = fadd fast float %670, %671
  %673 = fmul fast float %669, %669
  %674 = fadd fast float %672, %673
  %675 = call float @dx.op.unary.f32(i32 24, float %674)  ; Sqrt(value)
  %676 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %677 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %678 = fsub fast float %193, %676
  %679 = fsub fast float %194, %677
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 0
  %682 = extractvalue %dx.types.CBufRet.f32 %680, 1
  %683 = fmul fast float %678, %681
  %684 = fmul fast float %679, %682
  %685 = fsub fast float 1.000000e+00, %684
  br i1 %631, label %692, label %686, !dx.controlflow.hints !77

; <label>:686                                     ; preds = %661
  %687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %36, float %683, float %685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = extractvalue %dx.types.ResRet.f32 %687, 1
  %690 = extractvalue %dx.types.ResRet.f32 %687, 2
  %691 = extractvalue %dx.types.ResRet.f32 %687, 3
  br label %698

; <label>:692                                     ; preds = %661
  %693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %37, float %683, float %685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.ResRet.f32 %693, 1
  %696 = extractvalue %dx.types.ResRet.f32 %693, 2
  %697 = extractvalue %dx.types.ResRet.f32 %693, 3
  br label %698

; <label>:698                                     ; preds = %692, %686
  %699 = phi float [ %688, %686 ], [ %694, %692 ]
  %700 = phi float [ %689, %686 ], [ %695, %692 ]
  %701 = phi float [ %690, %686 ], [ %696, %692 ]
  %702 = phi float [ %691, %686 ], [ %697, %692 ]
  %703 = extractvalue %dx.types.CBufRet.f32 %680, 3
  %704 = fmul fast float %703, %700
  %705 = fmul fast float %704, %699
  %706 = fsub fast float %704, %705
  %707 = fcmp fast ole float %706, 0.000000e+00
  %708 = fmul fast float %703, %701
  %709 = fadd fast float %708, %624
  %710 = fdiv fast float 1.000000e+00, %706
  %711 = select i1 %707, float 1.000000e+06, float %710
  %712 = fsub fast float %195, %624
  %713 = fsub fast float %712, %705
  %714 = fmul fast float %711, %713
  %715 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %716 = extractvalue %dx.types.CBufRet.f32 %680, 2
  %717 = fmul fast float %716, %715
  %718 = fsub fast float %716, %717
  %719 = fcmp fast olt float %195, %709
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 3
  %722 = select i1 %719, float %721, float 1.000000e+00
  %723 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %724 = fcmp fast oeq float %723, 0.000000e+00
  br i1 %724, label %807, label %725, !dx.controlflow.hints !78

; <label>:725                                     ; preds = %698
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 3
  %728 = fcmp fast ogt float %727, 0.000000e+00
  %729 = extractvalue %dx.types.CBufRet.f32 %720, 2
  br i1 %728, label %730, label %760, !dx.controlflow.hints !79

; <label>:730                                     ; preds = %725
  %731 = fmul fast float %683, %727
  %732 = fmul fast float %684, %727
  %733 = fsub fast float 1.000000e+00, %732
  %734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %34, float %731, float %733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = fmul fast float %735, 2.000000e+00
  %738 = fmul fast float %736, 2.000000e+00
  %739 = fadd fast float %737, -1.000000e+00
  %740 = fadd fast float %738, -1.000000e+00
  %741 = fmul fast float %723, %193
  %742 = fmul fast float %723, %194
  %743 = fmul fast float %723, %195
  %744 = call float @dx.op.unary.f32(i32 22, float %729)  ; Frc(value)
  %745 = fmul fast float %739, %744
  %746 = fmul fast float %740, %744
  %747 = fsub fast float %741, %745
  %748 = fsub fast float %742, %746
  %749 = fadd fast float %729, 5.000000e-01
  %750 = call float @dx.op.unary.f32(i32 22, float %749)  ; Frc(value)
  %751 = fmul fast float %750, %739
  %752 = fmul fast float %750, %740
  %753 = fadd fast float %741, -5.000000e-01
  %754 = fsub fast float %753, %751
  %755 = fadd fast float %742, -5.000000e-01
  %756 = fsub fast float %755, %752
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %754, float %756, float %743, float undef, i32 0, i32 0, i32 0, float %662)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  br label %773

; <label>:760                                     ; preds = %725
  %761 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %762 = extractvalue %dx.types.CBufRet.f32 %726, 1
  %763 = extractvalue %dx.types.CBufRet.f32 %726, 2
  %764 = fmul fast float %729, %761
  %765 = fmul fast float %729, %762
  %766 = fmul fast float %729, %763
  %767 = fsub fast float %193, %764
  %768 = fsub fast float %194, %765
  %769 = fsub fast float %195, %766
  %770 = fmul fast float %767, %723
  %771 = fmul fast float %768, %723
  %772 = fmul fast float %769, %723
  br label %773

; <label>:773                                     ; preds = %760, %730
  %774 = phi float [ %747, %730 ], [ %770, %760 ]
  %775 = phi float [ %748, %730 ], [ %771, %760 ]
  %776 = phi float [ %743, %730 ], [ %772, %760 ]
  %777 = phi float [ %758, %730 ], [ 0.000000e+00, %760 ]
  %778 = phi float [ %759, %730 ], [ 0.000000e+00, %760 ]
  %779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %774, float %775, float %776, float undef, i32 0, i32 0, i32 0, float %662)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = extractvalue %dx.types.ResRet.f32 %779, 1
  br i1 %728, label %782, label %794, !dx.controlflow.hints !80

; <label>:782                                     ; preds = %773
  %783 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %784 = call float @dx.op.unary.f32(i32 22, float %783)  ; Frc(value)
  %785 = fmul fast float %784, 2.000000e+00
  %786 = fadd fast float %785, -1.000000e+00
  %787 = call float @dx.op.unary.f32(i32 6, float %786)  ; FAbs(value)
  %788 = fsub fast float %777, %780
  %789 = fmul fast float %787, %788
  %790 = fadd fast float %789, %780
  %791 = fsub fast float %778, %781
  %792 = fmul fast float %787, %791
  %793 = fadd fast float %792, %781
  br label %794

; <label>:794                                     ; preds = %782, %773
  %795 = phi float [ %790, %782 ], [ %780, %773 ]
  %796 = phi float [ %793, %782 ], [ %781, %773 ]
  %797 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %798 = fadd fast float %797, %797
  %799 = fdiv fast float 2.000000e+00, %798
  %800 = fmul fast float %797, 2.000000e+00
  %801 = fadd fast float %795, -1.000000e+00
  %802 = fadd fast float %801, %796
  %803 = fadd fast float %802, %800
  %804 = fmul fast float %803, %799
  %805 = fadd fast float %804, -1.000000e+00
  %806 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  br label %807

; <label>:807                                     ; preds = %794, %698
  %808 = phi float [ %806, %794 ], [ 1.000000e+00, %698 ]
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %812 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %813 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 1
  %816 = fsub fast float %675, %815
  %817 = extractvalue %dx.types.CBufRet.f32 %814, 2
  %818 = fmul fast float %816, %817
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = fmul fast float %722, %702
  %821 = fmul fast float %820, %718
  %822 = fmul fast float %821, %808
  %823 = fmul fast float %822, %819
  %824 = fmul fast float %823, %810
  %825 = fmul fast float %823, %811
  %826 = fmul fast float %823, %812
  %827 = fadd fast float %824, %615
  %828 = fadd fast float %825, %616
  %829 = fadd fast float %826, %617
  %830 = fmul fast float %823, %813
  %831 = fadd fast float %830, %618
  %832 = fadd fast float %823, %619
  br label %833

; <label>:833                                     ; preds = %807, %651
  %834 = phi float [ %827, %807 ], [ %615, %651 ]
  %835 = phi float [ %828, %807 ], [ %616, %651 ]
  %836 = phi float [ %829, %807 ], [ %617, %651 ]
  %837 = phi float [ %831, %807 ], [ %618, %651 ]
  %838 = phi float [ %832, %807 ], [ %619, %651 ]
  %839 = and i32 %314, 1
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %1117, label %841, !dx.controlflow.hints !81

; <label>:841                                     ; preds = %833
  %842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.i32 %842, 1
  %844 = and i32 %843, 1
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %921, label %846, !dx.controlflow.hints !82

; <label>:846                                     ; preds = %841
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 0
  %851 = extractvalue %dx.types.CBufRet.f32 %849, 1
  %852 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %853 = extractvalue %dx.types.CBufRet.f32 %847, 1
  %854 = extractvalue %dx.types.CBufRet.f32 %847, 2
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 3
  %861 = and i32 %843, 2
  %862 = extractvalue %dx.types.CBufRet.i32 %842, 0
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %900, label %864

; <label>:864                                     ; preds = %846
  br label %865

; <label>:865                                     ; preds = %865, %864
  %866 = phi float [ %894, %865 ], [ 0.000000e+00, %864 ]
  %867 = phi float [ %893, %865 ], [ 1.000000e+06, %864 ]
  %868 = phi i32 [ %895, %865 ], [ 0, %864 ]
  %869 = add i32 %868, 171
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %869)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %875 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %876 = fsub fast float %193, %871
  %877 = fsub fast float %194, %872
  %878 = fmul fast float %876, %876
  %879 = fmul fast float %877, %877
  %880 = fadd fast float %878, %879
  %881 = call float @dx.op.unary.f32(i32 24, float %880)  ; Sqrt(value)
  %882 = fsub fast float %881, %875
  %883 = icmp ne i32 %861, 0
  %884 = fsub fast float -0.000000e+00, %851
  %885 = select i1 %883, float %884, float %851
  %886 = fmul fast float %882, %885
  %887 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %888 = fmul fast float %887, %850
  %889 = fsub fast float %874, %195
  %890 = fmul fast float %889, %848
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = fmul fast float %888, %891
  %893 = call float @dx.op.binary.f32(i32 36, float %867, float %882)  ; FMin(a,b)
  %894 = call float @dx.op.binary.f32(i32 35, float %866, float %892)  ; FMax(a,b)
  %895 = add nuw nsw i32 %868, 1
  %896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.i32 %896, 0
  %898 = icmp ult i32 %895, %897
  br i1 %898, label %865, label %899

; <label>:899                                     ; preds = %865
  br label %900

; <label>:900                                     ; preds = %899, %846
  %901 = phi float [ 0.000000e+00, %846 ], [ %894, %899 ]
  %902 = phi float [ 1.000000e+06, %846 ], [ %893, %899 ]
  %903 = fadd fast float %901, %838
  %904 = fmul fast float %902, %860
  %905 = call float @dx.op.unary.f32(i32 7, float %904)  ; Saturate(value)
  %906 = fsub fast float %856, %852
  %907 = fsub fast float %857, %853
  %908 = fsub fast float %858, %854
  %909 = fmul fast float %905, %906
  %910 = fmul fast float %905, %907
  %911 = fmul fast float %905, %908
  %912 = fadd fast float %909, %852
  %913 = fadd fast float %910, %853
  %914 = fadd fast float %911, %854
  %915 = fmul fast float %912, %901
  %916 = fmul fast float %913, %901
  %917 = fmul fast float %914, %901
  %918 = fadd fast float %915, %834
  %919 = fadd fast float %916, %835
  %920 = fadd fast float %917, %836
  br label %1117

; <label>:921                                     ; preds = %841
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %924 = extractvalue %dx.types.CBufRet.f32 %922, 3
  %925 = fmul fast float %923, %193
  %926 = fmul fast float %924, %194
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = fadd fast float %925, %928
  %931 = fadd fast float %926, %929
  %932 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %933 = call float @dx.op.unary.f32(i32 7, float %931)  ; Saturate(value)
  %934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %37, float %932, float %933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = fmul fast float %937, %935
  %939 = fsub fast float %930, %932
  %940 = fsub fast float %931, %933
  %941 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %942 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %943 = fmul fast float %941, %939
  %944 = fmul fast float %942, %940
  %945 = fmul fast float %943, %943
  %946 = fmul fast float %944, %944
  %947 = fadd fast float %945, %946
  %948 = call float @dx.op.unary.f32(i32 24, float %947)  ; Sqrt(value)
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 3
  %951 = fmul fast float %950, %948
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %953 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %954 = fsub fast float %953, %938
  %955 = fmul fast float %954, %952
  %956 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %957 = fsub fast float %195, %938
  %958 = fsub fast float %957, %956
  %959 = fsub fast float %958, %955
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %962 = fsub fast float %959, %961
  %963 = fcmp fast olt float %962, 0.000000e+00
  %964 = extractvalue %dx.types.CBufRet.i32 %842, 0
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %1016, label %966

; <label>:966                                     ; preds = %921
  br label %967

; <label>:967                                     ; preds = %1005, %966
  %968 = phi i32 [ %1011, %1005 ], [ 1, %966 ]
  %969 = phi i32 [ %1012, %1005 ], [ 0, %966 ]
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 1
  %972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.i32 %972, 1
  %974 = and i32 %973, 8
  %975 = icmp eq i32 %974, 0
  %976 = fcmp fast ogt float %971, %959
  %977 = or i1 %976, %975
  %978 = add i32 %969, 171
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %978)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 0
  %981 = extractvalue %dx.types.CBufRet.f32 %979, 1
  %982 = extractvalue %dx.types.CBufRet.f32 %979, 2
  br i1 %977, label %983, label %989, !dx.controlflow.hints !83

; <label>:983                                     ; preds = %967
  %984 = fsub fast float %980, %193
  %985 = fsub fast float %981, %194
  %986 = fmul fast float %984, %984
  %987 = fmul fast float %985, %985
  %988 = fadd fast float %986, %987
  br label %1005

; <label>:989                                     ; preds = %967
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 2
  %992 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %993 = fmul fast float %992, %991
  %994 = fsub fast float %993, %971
  %995 = fdiv fast float %982, %994
  %996 = fsub fast float %193, %980
  %997 = fsub fast float %194, %981
  %998 = fsub fast float %959, %971
  %999 = fmul fast float %995, %998
  %1000 = fmul fast float %996, %996
  %1001 = fmul fast float %997, %997
  %1002 = fadd fast float %1000, %1001
  %1003 = fmul fast float %999, %999
  %1004 = fadd fast float %1002, %1003
  br label %1005

; <label>:1005                                    ; preds = %989, %983
  %1006 = phi float [ %988, %983 ], [ %1004, %989 ]
  %1007 = call float @dx.op.unary.f32(i32 24, float %1006)  ; Sqrt(value)
  %1008 = fsub float %982, %1007
  %1009 = fcmp fast olt float %1008, 0.000000e+00
  %1010 = zext i1 %1009 to i32
  %1011 = and i32 %1010, %968
  %1012 = add i32 %969, 1
  %1013 = extractvalue %dx.types.CBufRet.i32 %972, 0
  %1014 = icmp ult i32 %1012, %1013
  br i1 %1014, label %967, label %1015

; <label>:1015                                    ; preds = %1005
  br label %1016

; <label>:1016                                    ; preds = %1015, %921
  %1017 = phi i32 [ 1, %921 ], [ %1011, %1015 ]
  br label %1018

; <label>:1018                                    ; preds = %1018, %1016
  %1019 = phi i32 [ %1055, %1018 ], [ %1017, %1016 ]
  %1020 = phi i32 [ %1056, %1018 ], [ 0, %1016 ]
  %1021 = add nuw nsw i32 %1020, 191
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %1021)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1026 = add nuw nsw i32 %1020, 195
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %1026)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1031 = fsub fast float %193, %1023
  %1032 = fsub fast float %194, %1024
  %1033 = fsub fast float %959, %1025
  %1034 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1035 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1036 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1037 = fsub fast float %1034, %1028
  %1038 = fsub fast float %1035, %1029
  %1039 = fsub fast float %1036, %1030
  %1040 = call float @dx.op.binary.f32(i32 35, float %1037, float 0.000000e+00)  ; FMax(a,b)
  %1041 = call float @dx.op.binary.f32(i32 35, float %1038, float 0.000000e+00)  ; FMax(a,b)
  %1042 = call float @dx.op.binary.f32(i32 35, float %1039, float 0.000000e+00)  ; FMax(a,b)
  %1043 = fmul fast float %1040, %1040
  %1044 = fmul fast float %1041, %1041
  %1045 = fadd fast float %1044, %1043
  %1046 = fmul fast float %1042, %1042
  %1047 = fadd fast float %1045, %1046
  %1048 = call float @dx.op.unary.f32(i32 24, float %1047)  ; Sqrt(value)
  %1049 = call float @dx.op.binary.f32(i32 35, float %1038, float %1039)  ; FMax(a,b)
  %1050 = call float @dx.op.binary.f32(i32 35, float %1037, float %1049)  ; FMax(a,b)
  %1051 = call float @dx.op.binary.f32(i32 36, float %1050, float 0.000000e+00)  ; FMin(a,b)
  %1052 = fadd fast float %1051, %1048
  %1053 = fcmp ogt float %1052, -0.000000e+00
  %1054 = zext i1 %1053 to i32
  %1055 = and i32 %1054, %1019
  %1056 = add nuw nsw i32 %1020, 1
  %1057 = icmp eq i32 %1056, 4
  br i1 %1057, label %1058, label %1018

; <label>:1058                                    ; preds = %1018
  %1059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.i32 %1059, 1
  %1061 = lshr i32 %1060, 1
  %1062 = xor i32 %1061, %1055
  %1063 = zext i1 %963 to i32
  %1064 = and i32 %1062, %1063
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1117, label %1066, !dx.controlflow.hints !84

; <label>:1066                                    ; preds = %1058
  %1067 = fmul fast float %186, %186
  %1068 = fmul fast float %187, %187
  %1069 = fadd fast float %1067, %1068
  %1070 = fmul fast float %188, %188
  %1071 = fadd fast float %1069, %1070
  %1072 = call float @dx.op.unary.f32(i32 24, float %1071)  ; Sqrt(value)
  %1073 = and i32 %843, 4
  %1074 = icmp ne i32 %1073, 0
  %1075 = select i1 %1074, float %1072, float 1.000000e+00
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 1
  %1078 = fsub fast float %1075, %1077
  %1079 = extractvalue %dx.types.CBufRet.f32 %1076, 3
  %1080 = fmul fast float %1078, %1079
  %1081 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 3
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1086 = fsub fast float %1085, %959
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 3
  %1089 = fmul fast float %1086, %1088
  %1090 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  %1091 = fmul fast float %1090, %1083
  %1092 = extractvalue %dx.types.CBufRet.f32 %1087, 0
  %1093 = fsub fast float %1072, %1092
  %1094 = extractvalue %dx.types.CBufRet.f32 %1087, 1
  %1095 = fmul fast float %1093, %1094
  %1096 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1097 = fsub fast float 1.000000e+00, %1081
  %1098 = fmul fast float %1096, %1097
  %1099 = fadd fast float %1098, %1081
  %1100 = extractvalue %dx.types.CBufRet.f32 %1076, 0
  %1101 = fsub fast float %1091, %1100
  %1102 = fmul fast float %1101, %1099
  %1103 = fadd fast float %1102, %1100
  %1104 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1105 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1106 = extractvalue %dx.types.CBufRet.f32 %1082, 2
  %1107 = extractvalue %dx.types.CBufRet.f32 %1087, 2
  %1108 = fadd fast float %1103, %838
  %1109 = fmul fast float %1103, %1104
  %1110 = fmul fast float %1103, %1105
  %1111 = fmul fast float %1103, %1106
  %1112 = fadd fast float %1109, %834
  %1113 = fadd fast float %1110, %835
  %1114 = fadd fast float %1111, %836
  %1115 = fmul fast float %1103, %1107
  %1116 = fadd fast float %1115, %837
  br label %1117

; <label>:1117                                    ; preds = %1066, %1058, %900, %833
  %1118 = phi float [ %834, %833 ], [ %918, %900 ], [ %1112, %1066 ], [ %834, %1058 ]
  %1119 = phi float [ %835, %833 ], [ %919, %900 ], [ %1113, %1066 ], [ %835, %1058 ]
  %1120 = phi float [ %836, %833 ], [ %920, %900 ], [ %1114, %1066 ], [ %836, %1058 ]
  %1121 = phi float [ %837, %833 ], [ %837, %900 ], [ %1116, %1066 ], [ %837, %1058 ]
  %1122 = phi float [ %838, %833 ], [ %903, %900 ], [ %1108, %1066 ], [ %838, %1058 ]
  %1123 = and i32 %314, 16
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1916, label %1125, !dx.controlflow.hints !85

; <label>:1125                                    ; preds = %1117
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 3
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 3
  %1136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.i32 %1136, 0
  %1138 = icmp ne i32 %1137, 0
  %1139 = zext i1 %1138 to i32
  %1140 = extractvalue %dx.types.CBufRet.i32 %1136, 1
  %1141 = icmp ne i32 %1140, 0
  %1142 = zext i1 %1141 to i32
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 0
  %1145 = bitcast float %1144 to i32
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1196, label %1147

; <label>:1147                                    ; preds = %1125
  br label %1148

; <label>:1148                                    ; preds = %1191, %1147
  %1149 = phi i32 [ %1192, %1191 ], [ 0, %1147 ]
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 0
  %1152 = bitcast float %1151 to i32
  %1153 = call i32 @dx.op.tertiary.i32(i32 49, i32 %312, i32 %1152, i32 %1149)  ; UMad(a,b,c)
  %1154 = shl i32 %1153, 2
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  br label %1157

; <label>:1157                                    ; preds = %1160, %1148
  %1158 = phi i32 [ %1156, %1148 ], [ %1165, %1160 ]
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1191, label %1160

; <label>:1160                                    ; preds = %1157
  %1161 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1158)  ; FirstbitLo(value)
  %1162 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1149, i32 %1161)  ; UMad(a,b,c)
  %1163 = and i32 %1161, 31
  %1164 = shl i32 1, %1163
  %1165 = xor i32 %1164, %1158
  %1166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1162, i32 0)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1162, i32 16)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = fsub fast float %1167, %1171
  %1175 = fsub fast float %1168, %1172
  %1176 = fsub fast float %1169, %1173
  %1177 = fadd fast float %1171, %1167
  %1178 = fadd fast float %1172, %1168
  %1179 = fadd fast float %1173, %1169
  %1180 = fcmp fast ogt float %193, %1174
  %1181 = fcmp fast ogt float %194, %1175
  %1182 = fcmp fast ogt float %195, %1176
  %1183 = and i1 %1180, %1181
  %1184 = and i1 %1182, %1183
  %1185 = fcmp fast olt float %193, %1177
  %1186 = fcmp fast olt float %194, %1178
  %1187 = fcmp fast olt float %195, %1179
  %1188 = and i1 %1185, %1186
  %1189 = and i1 %1187, %1188
  %1190 = and i1 %1184, %1189
  br i1 %1190, label %1194, label %1157, !dx.controlflow.hints !86

; <label>:1191                                    ; preds = %1157
  %1192 = add i32 %1149, 1
  %1193 = icmp ult i32 %1192, %1152
  br i1 %1193, label %1148, label %1195, !llvm.loop !87

; <label>:1194                                    ; preds = %1160
  br label %1196

; <label>:1195                                    ; preds = %1191
  br label %1196

; <label>:1196                                    ; preds = %1195, %1194, %1125
  %1197 = phi i32 [ 255, %1125 ], [ %1162, %1194 ], [ 255, %1195 ]
  %1198 = icmp eq i32 %1197, 255
  br i1 %1198, label %1218, label %1199, !dx.controlflow.hints !89

; <label>:1199                                    ; preds = %1196
  %1200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 32)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 132)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 136)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 152)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1197, i32 156)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1197, i32 160)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = icmp ne i32 %1211, 0
  %1215 = zext i1 %1214 to i32
  %1216 = icmp ne i32 %1213, 0
  %1217 = zext i1 %1216 to i32
  br label %1218

; <label>:1218                                    ; preds = %1199, %1196
  %1219 = phi float [ %1201, %1199 ], [ %1127, %1196 ]
  %1220 = phi float [ %1202, %1199 ], [ %1128, %1196 ]
  %1221 = phi float [ %1203, %1199 ], [ %1129, %1196 ]
  %1222 = phi float [ %1205, %1199 ], [ %1131, %1196 ]
  %1223 = phi float [ %1207, %1199 ], [ %1133, %1196 ]
  %1224 = phi float [ %1209, %1199 ], [ %1135, %1196 ]
  %1225 = phi i32 [ %1215, %1199 ], [ %1139, %1196 ]
  %1226 = phi i32 [ %1217, %1199 ], [ %1142, %1196 ]
  %1227 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1228 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1229 = fsub fast float %193, %1227
  %1230 = fsub fast float %194, %1228
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1233 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1234 = fmul fast float %1229, %1232
  %1235 = fmul fast float %1230, %1233
  %1236 = call float @dx.op.binary.f32(i32 36, float %1234, float %1235)  ; FMin(a,b)
  %1237 = fcmp fast olt float %1236, 0.000000e+00
  %1238 = call float @dx.op.binary.f32(i32 35, float %1234, float %1235)  ; FMax(a,b)
  %1239 = fcmp fast ogt float %1238, 1.000000e+00
  %1240 = or i1 %1237, %1239
  %1241 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1242 = fcmp fast olt float %195, %1241
  %1243 = or i1 %1240, %1242
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 3
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 0
  %1248 = fadd fast float %1247, %1245
  %1249 = fcmp fast ogt float %195, %1248
  %1250 = or i1 %1243, %1249
  br i1 %1250, label %1535, label %1251, !dx.controlflow.hints !90

; <label>:1251                                    ; preds = %1218
  %1252 = fsub fast float 1.000000e+00, %1235
  %1253 = extractvalue %dx.types.CBufRet.f32 %1246, 3
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 3
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1257 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.CBufRet.f32 %1258, 2
  %1262 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  br i1 %1198, label %1278, label %1263, !dx.controlflow.hints !91

; <label>:1263                                    ; preds = %1251
  %1264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 48)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.ResRet.f32 %1264, 2
  %1268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 104)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 108)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 112)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 116)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 120)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  br label %1278

; <label>:1278                                    ; preds = %1263, %1251
  %1279 = phi float [ %1271, %1263 ], [ %1253, %1251 ]
  %1280 = phi float [ %1275, %1263 ], [ %1255, %1251 ]
  %1281 = phi float [ %1277, %1263 ], [ %1256, %1251 ]
  %1282 = phi float [ %1273, %1263 ], [ %1257, %1251 ]
  %1283 = phi float [ %1265, %1263 ], [ %1259, %1251 ]
  %1284 = phi float [ %1266, %1263 ], [ %1260, %1251 ]
  %1285 = phi float [ %1267, %1263 ], [ %1261, %1251 ]
  %1286 = phi float [ %1269, %1263 ], [ %1262, %1251 ]
  %1287 = fcmp fast oeq float %1279, 0.000000e+00
  br i1 %1287, label %1403, label %1288, !dx.controlflow.hints !92

; <label>:1288                                    ; preds = %1278
  %1289 = fcmp fast ogt float %1280, 0.000000e+00
  %1290 = fcmp fast oeq float %395, 0.000000e+00
  br i1 %1290, label %1295, label %1291, !dx.controlflow.hints !76

; <label>:1291                                    ; preds = %1288
  %1292 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1293 = fmul fast float %1292, %395
  %1294 = call float @dx.op.unary.f32(i32 23, float %1293)  ; Log(value)
  br label %1295

; <label>:1295                                    ; preds = %1291, %1288
  %1296 = phi float [ %1294, %1291 ], [ 0.000000e+00, %1288 ]
  br i1 %1290, label %1301, label %1297, !dx.controlflow.hints !76

; <label>:1297                                    ; preds = %1295
  %1298 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1299 = fmul fast float %1298, %395
  %1300 = call float @dx.op.unary.f32(i32 23, float %1299)  ; Log(value)
  br label %1301

; <label>:1301                                    ; preds = %1297, %1295
  %1302 = phi float [ %1300, %1297 ], [ 0.000000e+00, %1295 ]
  br i1 %1289, label %1303, label %1365, !dx.controlflow.hints !93

; <label>:1303                                    ; preds = %1301
  %1304 = fcmp fast ogt float %1281, 0.000000e+00
  br i1 %1304, label %1305, label %1315, !dx.controlflow.hints !94

; <label>:1305                                    ; preds = %1303
  %1306 = fmul fast float %1281, %1234
  %1307 = fmul fast float %1281, %1252
  %1308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %34, float %1306, float %1307, float undef, float undef, i32 0, i32 0, i32 undef, float %1302)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1311 = fmul fast float %1309, 2.000000e+00
  %1312 = fmul fast float %1310, 2.000000e+00
  %1313 = fadd fast float %1311, -1.000000e+00
  %1314 = fadd fast float %1312, -1.000000e+00
  br label %1336

; <label>:1315                                    ; preds = %1303
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 3
  %1318 = fmul fast float %1317, %1234
  %1319 = fmul fast float %1317, %1252
  %1320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %36, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.ResRet.f32 %1320, 1
  %1323 = extractvalue %dx.types.ResRet.f32 %1320, 2
  %1324 = fmul fast float %1321, 2.000000e+00
  %1325 = fmul fast float %1322, 2.000000e+00
  %1326 = fmul fast float %1323, 2.000000e+00
  %1327 = fadd fast float %1324, -1.000000e+00
  %1328 = fadd fast float %1325, -1.000000e+00
  %1329 = fadd fast float %1326, -1.000000e+00
  %1330 = extractvalue %dx.types.CBufRet.f32 %1246, 1
  %1331 = fmul fast float %1327, %1330
  %1332 = fmul fast float %1328, %1330
  %1333 = extractvalue %dx.types.CBufRet.f32 %1246, 2
  %1334 = fmul fast float %1333, 5.000000e-01
  %1335 = fmul fast float %1334, %1329
  br label %1336

; <label>:1336                                    ; preds = %1315, %1305
  %1337 = phi float [ %1313, %1305 ], [ %1331, %1315 ]
  %1338 = phi float [ %1314, %1305 ], [ %1332, %1315 ]
  %1339 = phi float [ 0.000000e+00, %1305 ], [ %1335, %1315 ]
  %1340 = fmul fast float %1279, %193
  %1341 = fmul fast float %1279, %194
  %1342 = fmul fast float %1279, %195
  %1343 = call float @dx.op.unary.f32(i32 22, float %1280)  ; Frc(value)
  %1344 = fmul fast float %1343, %1337
  %1345 = fmul fast float %1343, %1338
  %1346 = fmul fast float %1343, %1339
  %1347 = fsub fast float %1340, %1344
  %1348 = fsub fast float %1341, %1345
  %1349 = fsub fast float %1342, %1346
  %1350 = fadd fast float %1280, 5.000000e-01
  %1351 = call float @dx.op.unary.f32(i32 22, float %1350)  ; Frc(value)
  %1352 = fmul fast float %1351, %1337
  %1353 = fmul fast float %1351, %1338
  %1354 = fmul fast float %1351, %1339
  %1355 = fadd fast float %1340, -5.000000e-01
  %1356 = fsub fast float %1355, %1352
  %1357 = fadd fast float %1341, -5.000000e-01
  %1358 = fsub fast float %1357, %1353
  %1359 = fadd fast float %1342, -5.000000e-01
  %1360 = fsub fast float %1359, %1354
  %1361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %1356, float %1358, float %1360, float undef, i32 0, i32 0, i32 0, float %1296)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1362 = extractvalue %dx.types.ResRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.ResRet.f32 %1361, 1
  %1364 = fadd fast float %1362, %1282
  br label %1375

; <label>:1365                                    ; preds = %1301
  %1366 = fmul fast float %1286, %1283
  %1367 = fmul fast float %1286, %1284
  %1368 = fmul fast float %1286, %1285
  %1369 = fsub fast float %193, %1366
  %1370 = fsub fast float %194, %1367
  %1371 = fsub fast float %195, %1368
  %1372 = fmul fast float %1369, %1279
  %1373 = fmul fast float %1370, %1279
  %1374 = fmul fast float %1371, %1279
  br label %1375

; <label>:1375                                    ; preds = %1365, %1336
  %1376 = phi float [ %1347, %1336 ], [ %1372, %1365 ]
  %1377 = phi float [ %1348, %1336 ], [ %1373, %1365 ]
  %1378 = phi float [ %1349, %1336 ], [ %1374, %1365 ]
  %1379 = phi float [ %1364, %1336 ], [ 0.000000e+00, %1365 ]
  %1380 = phi float [ %1363, %1336 ], [ 0.000000e+00, %1365 ]
  %1381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %1376, float %1377, float %1378, float undef, i32 0, i32 0, i32 0, float %1296)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = fadd fast float %1382, %1282
  br i1 %1289, label %1385, label %1396, !dx.controlflow.hints !95

; <label>:1385                                    ; preds = %1375
  %1386 = call float @dx.op.unary.f32(i32 22, float %1280)  ; Frc(value)
  %1387 = fmul fast float %1386, 2.000000e+00
  %1388 = fadd fast float %1387, -1.000000e+00
  %1389 = call float @dx.op.unary.f32(i32 6, float %1388)  ; FAbs(value)
  %1390 = fsub fast float %1379, %1384
  %1391 = fmul fast float %1389, %1390
  %1392 = fadd fast float %1391, %1384
  %1393 = fsub fast float %1380, %1383
  %1394 = fmul fast float %1389, %1393
  %1395 = fadd fast float %1394, %1383
  br label %1396

; <label>:1396                                    ; preds = %1385, %1375
  %1397 = phi float [ %1392, %1385 ], [ %1384, %1375 ]
  %1398 = phi float [ %1395, %1385 ], [ %1383, %1375 ]
  %1399 = fsub fast float %1397, %1398
  %1400 = fsub fast float 1.000000e+00, %1398
  %1401 = fdiv fast float %1399, %1400
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  br label %1403

; <label>:1403                                    ; preds = %1396, %1278
  %1404 = phi float [ %1402, %1396 ], [ 1.000000e+00, %1278 ]
  %1405 = fcmp fast oeq float %395, 0.000000e+00
  br i1 %1405, label %1410, label %1406, !dx.controlflow.hints !76

; <label>:1406                                    ; preds = %1403
  %1407 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1408 = fmul fast float %1407, %395
  %1409 = call float @dx.op.unary.f32(i32 23, float %1408)  ; Log(value)
  br label %1410

; <label>:1410                                    ; preds = %1406, %1403
  %1411 = phi float [ %1409, %1406 ], [ 0.000000e+00, %1403 ]
  %1412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %1234, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float %1411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %37, float %1234, float %1252, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.ResRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.ResRet.f32 %1414, 2
  %1418 = extractvalue %dx.types.ResRet.f32 %1414, 3
  %1419 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %37, float %1234, float %1252, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.ResRet.f32 %1419, 2
  %1423 = extractvalue %dx.types.ResRet.f32 %1419, 3
  %1424 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %37, float %1234, float %1252, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.ResRet.f32 %1424, 3
  %1429 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %37, float %1234, float %1252, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.ResRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.ResRet.f32 %1429, 2
  %1433 = extractvalue %dx.types.ResRet.f32 %1429, 3
  %1434 = fadd fast float %1415, %1416
  %1435 = fadd fast float %1434, %1417
  %1436 = fadd fast float %1435, %1418
  %1437 = fmul fast float %1420, %1415
  %1438 = fmul fast float %1421, %1416
  %1439 = fadd fast float %1437, %1438
  %1440 = fmul fast float %1422, %1417
  %1441 = fadd fast float %1439, %1440
  %1442 = fmul fast float %1423, %1418
  %1443 = fadd fast float %1441, %1442
  %1444 = fmul fast float %1425, %1415
  %1445 = fmul fast float %1426, %1416
  %1446 = fadd fast float %1444, %1445
  %1447 = fmul fast float %1427, %1417
  %1448 = fadd fast float %1446, %1447
  %1449 = fmul fast float %1428, %1418
  %1450 = fadd fast float %1448, %1449
  %1451 = fmul fast float %1430, %1415
  %1452 = fmul fast float %1431, %1416
  %1453 = fadd fast float %1451, %1452
  %1454 = fmul fast float %1432, %1417
  %1455 = fadd fast float %1453, %1454
  %1456 = fmul fast float %1433, %1418
  %1457 = fadd fast float %1455, %1456
  %1458 = fcmp fast ogt float %1436, 0.000000e+00
  %1459 = fdiv fast float %1443, %1436
  %1460 = select i1 %1458, float %1459, float 0.000000e+00
  %1461 = fdiv fast float %1450, %1436
  %1462 = select i1 %1458, float %1461, float 0.000000e+00
  %1463 = fdiv fast float %1457, %1436
  %1464 = select i1 %1458, float %1463, float 0.000000e+00
  %1465 = fcmp fast ogt float %195, %1462
  %1466 = fcmp fast olt float %195, %1460
  %1467 = and i1 %1466, %1465
  br i1 %1467, label %1468, label %1535, !dx.controlflow.hints !96

; <label>:1468                                    ; preds = %1410
  %1469 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  br i1 %1198, label %1483, label %1473, !dx.controlflow.hints !97

; <label>:1473                                    ; preds = %1468
  %1474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 60)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 64)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 72)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 96)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  br label %1483

; <label>:1483                                    ; preds = %1473, %1468
  %1484 = phi float [ %1475, %1473 ], [ %1247, %1468 ]
  %1485 = phi float [ %1480, %1473 ], [ %1245, %1468 ]
  %1486 = phi float [ %1482, %1473 ], [ %1469, %1468 ]
  %1487 = phi float [ %1477, %1473 ], [ %1471, %1468 ]
  %1488 = phi float [ %1478, %1473 ], [ %1472, %1468 ]
  %1489 = call float @dx.op.binary.f32(i32 35, float %1413, float 0.000000e+00)  ; FMax(a,b)
  %1490 = call float @dx.op.binary.f32(i32 36, float %1489, float 1.000000e+00)  ; FMin(a,b)
  %1491 = call float @dx.op.unary.f32(i32 24, float %1490)  ; Sqrt(value)
  %1492 = call float @dx.op.binary.f32(i32 35, float %1464, float 0x3F847AE140000000)  ; FMax(a,b)
  %1493 = fsub fast float %1460, %195
  %1494 = fsub fast float %195, %1462
  %1495 = call float @dx.op.binary.f32(i32 36, float %1494, float %1493)  ; FMin(a,b)
  %1496 = fdiv fast float %1495, %1492
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = fsub fast float %195, %1485
  %1499 = fdiv fast float %1498, %1484
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = fmul float %1497, %1501
  %1503 = fmul float %1502, %1502
  %1504 = fmul fast float %1491, %1404
  %1505 = fmul fast float %1504, %1503
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 2
  %1508 = extractvalue %dx.types.CBufRet.f32 %1506, 1
  %1509 = fsub fast float %1505, %1508
  %1510 = fsub fast float %1507, %1508
  %1511 = fdiv fast float %1509, %1510
  %1512 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1513 = fmul fast float %1512, %1486
  %1514 = fcmp fast ogt float %1488, 0.000000e+00
  br i1 %1514, label %1515, label %1535, !dx.controlflow.hints !98

; <label>:1515                                    ; preds = %1483
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1519 = extractvalue %dx.types.CBufRet.f32 %1516, 2
  %1520 = fsub fast float %193, %1517
  %1521 = fsub fast float %194, %1518
  %1522 = fsub fast float %195, %1519
  %1523 = fmul fast float %1520, %1520
  %1524 = fmul fast float %1521, %1521
  %1525 = fadd fast float %1523, %1524
  %1526 = fmul fast float %1522, %1522
  %1527 = fadd fast float %1525, %1526
  %1528 = call float @dx.op.unary.f32(i32 24, float %1527)  ; Sqrt(value)
  %1529 = fsub fast float %1528, %1487
  %1530 = fsub fast float %1488, %1487
  %1531 = fdiv fast float %1529, %1530
  %1532 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  %1533 = fmul fast float %1532, %1532
  %1534 = fmul fast float %1533, %1513
  br label %1535

; <label>:1535                                    ; preds = %1515, %1483, %1410, %1218
  %1536 = phi float [ 0.000000e+00, %1218 ], [ 0.000000e+00, %1410 ], [ %1534, %1515 ], [ %1513, %1483 ]
  %1537 = fcmp fast oeq float %1536, 0.000000e+00
  br i1 %1537, label %1916, label %1538, !dx.controlflow.hints !99

; <label>:1538                                    ; preds = %1535
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.CBufRet.f32 %1539, 1
  %1542 = extractvalue %dx.types.CBufRet.f32 %1539, 2
  %1543 = fsub fast float %193, %1540
  %1544 = fadd fast float %1543, %1542
  %1545 = fsub fast float %194, %1541
  %1546 = fadd fast float %1545, %1542
  %1547 = extractvalue %dx.types.CBufRet.f32 %1539, 3
  %1548 = fmul fast float %1544, %1547
  %1549 = fmul fast float %1546, %1547
  %1550 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1551 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1552 = fsub fast float 1.000000e+00, %1550
  %1553 = fsub fast float 1.000000e+00, %1551
  %1554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %37, float %1552, float %1553, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1555 = extractvalue %dx.types.ResRet.f32 %1554, 0
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1558 = fmul fast float %1557, %1555
  %1559 = extractvalue %dx.types.CBufRet.f32 %1556, 3
  %1560 = fadd fast float %1559, %1558
  %1561 = fcmp fast ogt float %1555, 0.000000e+00
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 32768
  %1565 = icmp ne i32 %1564, 0
  %1566 = and i1 %1561, %1565
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 3
  %1569 = fadd fast float %1568, %1560
  %1570 = fcmp fast ole float %195, %1569
  %1571 = and i1 %1566, %1570
  %1572 = xor i1 %1571, true
  %1573 = icmp ne i32 %1225, 0
  %1574 = and i1 %1573, %1572
  %1575 = icmp ne i32 %1226, 0
  %1576 = and i1 %1575, %1571
  %1577 = or i1 %1574, %1576
  br i1 %1577, label %1916, label %1578, !dx.controlflow.hints !100

; <label>:1578                                    ; preds = %1538
  %1579 = fsub fast float %195, %1560
  %1580 = call float @dx.op.unary.f32(i32 6, float %1579)  ; FAbs(value)
  %1581 = fdiv fast float %1580, %1224
  %1582 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1583 = fmul fast float %1582, %1536
  %1584 = fcmp fast une float %1222, 0.000000e+00
  br i1 %1584, label %1585, label %1904, !dx.controlflow.hints !101

; <label>:1585                                    ; preds = %1578
  %1586 = fmul fast float %1222, %121
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 0
  %1589 = extractvalue %dx.types.CBufRet.f32 %1587, 1
  %1590 = extractvalue %dx.types.CBufRet.f32 %1587, 2
  %1591 = fmul fast float %1588, %1586
  %1592 = fmul fast float %1589, %1586
  %1593 = fmul fast float %1590, %1586
  %1594 = fadd fast float %1591, %193
  %1595 = fadd fast float %1592, %194
  %1596 = fadd fast float %1593, %195
  %1597 = fmul fast float %1222, 2.000000e+00
  %1598 = call float @dx.op.binary.f32(i32 35, float %395, float %1597)  ; FMax(a,b)
  %1599 = fsub fast float %1594, %1227
  %1600 = fsub fast float %1595, %1228
  %1601 = fmul fast float %1599, %1232
  %1602 = fmul fast float %1600, %1233
  %1603 = call float @dx.op.binary.f32(i32 36, float %1601, float %1602)  ; FMin(a,b)
  %1604 = fcmp fast olt float %1603, 0.000000e+00
  %1605 = call float @dx.op.binary.f32(i32 35, float %1601, float %1602)  ; FMax(a,b)
  %1606 = fcmp fast ogt float %1605, 1.000000e+00
  %1607 = or i1 %1604, %1606
  %1608 = fcmp fast olt float %1596, %1241
  %1609 = or i1 %1607, %1608
  %1610 = fcmp fast ogt float %1596, %1248
  %1611 = or i1 %1609, %1610
  br i1 %1611, label %1896, label %1612, !dx.controlflow.hints !90

; <label>:1612                                    ; preds = %1585
  %1613 = fsub fast float 1.000000e+00, %1602
  %1614 = extractvalue %dx.types.CBufRet.f32 %1246, 3
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 3
  %1617 = extractvalue %dx.types.CBufRet.f32 %1615, 2
  %1618 = extractvalue %dx.types.CBufRet.f32 %1615, 1
  %1619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.CBufRet.f32 %1619, 1
  %1622 = extractvalue %dx.types.CBufRet.f32 %1619, 2
  %1623 = extractvalue %dx.types.CBufRet.f32 %1615, 0
  br i1 %1198, label %1639, label %1624, !dx.controlflow.hints !91

; <label>:1624                                    ; preds = %1612
  %1625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 48)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.ResRet.f32 %1625, 1
  %1628 = extractvalue %dx.types.ResRet.f32 %1625, 2
  %1629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 104)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 108)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.f32 %1631, 0
  %1633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 112)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.f32 %1633, 0
  %1635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 116)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 120)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.f32 %1637, 0
  br label %1639

; <label>:1639                                    ; preds = %1624, %1612
  %1640 = phi float [ %1632, %1624 ], [ %1614, %1612 ]
  %1641 = phi float [ %1636, %1624 ], [ %1616, %1612 ]
  %1642 = phi float [ %1638, %1624 ], [ %1617, %1612 ]
  %1643 = phi float [ %1634, %1624 ], [ %1618, %1612 ]
  %1644 = phi float [ %1626, %1624 ], [ %1620, %1612 ]
  %1645 = phi float [ %1627, %1624 ], [ %1621, %1612 ]
  %1646 = phi float [ %1628, %1624 ], [ %1622, %1612 ]
  %1647 = phi float [ %1630, %1624 ], [ %1623, %1612 ]
  %1648 = fcmp fast oeq float %1640, 0.000000e+00
  br i1 %1648, label %1764, label %1649, !dx.controlflow.hints !92

; <label>:1649                                    ; preds = %1639
  %1650 = fcmp fast ogt float %1641, 0.000000e+00
  %1651 = fcmp fast oeq float %1598, 0.000000e+00
  br i1 %1651, label %1656, label %1652, !dx.controlflow.hints !76

; <label>:1652                                    ; preds = %1649
  %1653 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1654 = fmul fast float %1653, %1598
  %1655 = call float @dx.op.unary.f32(i32 23, float %1654)  ; Log(value)
  br label %1656

; <label>:1656                                    ; preds = %1652, %1649
  %1657 = phi float [ %1655, %1652 ], [ 0.000000e+00, %1649 ]
  br i1 %1651, label %1662, label %1658, !dx.controlflow.hints !76

; <label>:1658                                    ; preds = %1656
  %1659 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1660 = fmul fast float %1659, %1598
  %1661 = call float @dx.op.unary.f32(i32 23, float %1660)  ; Log(value)
  br label %1662

; <label>:1662                                    ; preds = %1658, %1656
  %1663 = phi float [ %1661, %1658 ], [ 0.000000e+00, %1656 ]
  br i1 %1650, label %1664, label %1726, !dx.controlflow.hints !93

; <label>:1664                                    ; preds = %1662
  %1665 = fcmp fast ogt float %1642, 0.000000e+00
  br i1 %1665, label %1666, label %1676, !dx.controlflow.hints !94

; <label>:1666                                    ; preds = %1664
  %1667 = fmul fast float %1642, %1601
  %1668 = fmul fast float %1642, %1613
  %1669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %34, float %1667, float %1668, float undef, float undef, i32 0, i32 0, i32 undef, float %1663)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1670 = extractvalue %dx.types.ResRet.f32 %1669, 0
  %1671 = extractvalue %dx.types.ResRet.f32 %1669, 1
  %1672 = fmul fast float %1670, 2.000000e+00
  %1673 = fmul fast float %1671, 2.000000e+00
  %1674 = fadd fast float %1672, -1.000000e+00
  %1675 = fadd fast float %1673, -1.000000e+00
  br label %1697

; <label>:1676                                    ; preds = %1664
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 3
  %1679 = fmul fast float %1678, %1601
  %1680 = fmul fast float %1678, %1613
  %1681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %36, float %1679, float %1680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1682 = extractvalue %dx.types.ResRet.f32 %1681, 0
  %1683 = extractvalue %dx.types.ResRet.f32 %1681, 1
  %1684 = extractvalue %dx.types.ResRet.f32 %1681, 2
  %1685 = fmul fast float %1682, 2.000000e+00
  %1686 = fmul fast float %1683, 2.000000e+00
  %1687 = fmul fast float %1684, 2.000000e+00
  %1688 = fadd fast float %1685, -1.000000e+00
  %1689 = fadd fast float %1686, -1.000000e+00
  %1690 = fadd fast float %1687, -1.000000e+00
  %1691 = extractvalue %dx.types.CBufRet.f32 %1246, 1
  %1692 = fmul fast float %1688, %1691
  %1693 = fmul fast float %1689, %1691
  %1694 = extractvalue %dx.types.CBufRet.f32 %1246, 2
  %1695 = fmul fast float %1694, 5.000000e-01
  %1696 = fmul fast float %1695, %1690
  br label %1697

; <label>:1697                                    ; preds = %1676, %1666
  %1698 = phi float [ %1674, %1666 ], [ %1692, %1676 ]
  %1699 = phi float [ %1675, %1666 ], [ %1693, %1676 ]
  %1700 = phi float [ 0.000000e+00, %1666 ], [ %1696, %1676 ]
  %1701 = fmul fast float %1640, %1594
  %1702 = fmul fast float %1640, %1595
  %1703 = fmul fast float %1640, %1596
  %1704 = call float @dx.op.unary.f32(i32 22, float %1641)  ; Frc(value)
  %1705 = fmul fast float %1704, %1698
  %1706 = fmul fast float %1704, %1699
  %1707 = fmul fast float %1704, %1700
  %1708 = fsub fast float %1701, %1705
  %1709 = fsub fast float %1702, %1706
  %1710 = fsub fast float %1703, %1707
  %1711 = fadd fast float %1641, 5.000000e-01
  %1712 = call float @dx.op.unary.f32(i32 22, float %1711)  ; Frc(value)
  %1713 = fmul fast float %1712, %1698
  %1714 = fmul fast float %1712, %1699
  %1715 = fmul fast float %1712, %1700
  %1716 = fadd fast float %1701, -5.000000e-01
  %1717 = fsub fast float %1716, %1713
  %1718 = fadd fast float %1702, -5.000000e-01
  %1719 = fsub fast float %1718, %1714
  %1720 = fadd fast float %1703, -5.000000e-01
  %1721 = fsub fast float %1720, %1715
  %1722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %1717, float %1719, float %1721, float undef, i32 0, i32 0, i32 0, float %1657)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = fadd fast float %1723, %1643
  br label %1736

; <label>:1726                                    ; preds = %1662
  %1727 = fmul fast float %1647, %1644
  %1728 = fmul fast float %1647, %1645
  %1729 = fmul fast float %1647, %1646
  %1730 = fsub fast float %1594, %1727
  %1731 = fsub fast float %1595, %1728
  %1732 = fsub fast float %1596, %1729
  %1733 = fmul fast float %1730, %1640
  %1734 = fmul fast float %1731, %1640
  %1735 = fmul fast float %1732, %1640
  br label %1736

; <label>:1736                                    ; preds = %1726, %1697
  %1737 = phi float [ %1708, %1697 ], [ %1733, %1726 ]
  %1738 = phi float [ %1709, %1697 ], [ %1734, %1726 ]
  %1739 = phi float [ %1710, %1697 ], [ %1735, %1726 ]
  %1740 = phi float [ %1725, %1697 ], [ 0.000000e+00, %1726 ]
  %1741 = phi float [ %1724, %1697 ], [ 0.000000e+00, %1726 ]
  %1742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %1737, float %1738, float %1739, float undef, i32 0, i32 0, i32 0, float %1657)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.ResRet.f32 %1742, 1
  %1745 = fadd fast float %1743, %1643
  br i1 %1650, label %1746, label %1757, !dx.controlflow.hints !95

; <label>:1746                                    ; preds = %1736
  %1747 = call float @dx.op.unary.f32(i32 22, float %1641)  ; Frc(value)
  %1748 = fmul fast float %1747, 2.000000e+00
  %1749 = fadd fast float %1748, -1.000000e+00
  %1750 = call float @dx.op.unary.f32(i32 6, float %1749)  ; FAbs(value)
  %1751 = fsub fast float %1740, %1745
  %1752 = fmul fast float %1750, %1751
  %1753 = fadd fast float %1752, %1745
  %1754 = fsub fast float %1741, %1744
  %1755 = fmul fast float %1750, %1754
  %1756 = fadd fast float %1755, %1744
  br label %1757

; <label>:1757                                    ; preds = %1746, %1736
  %1758 = phi float [ %1753, %1746 ], [ %1745, %1736 ]
  %1759 = phi float [ %1756, %1746 ], [ %1744, %1736 ]
  %1760 = fsub fast float %1758, %1759
  %1761 = fsub fast float 1.000000e+00, %1759
  %1762 = fdiv fast float %1760, %1761
  %1763 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  br label %1764

; <label>:1764                                    ; preds = %1757, %1639
  %1765 = phi float [ %1763, %1757 ], [ 1.000000e+00, %1639 ]
  %1766 = fcmp fast oeq float %1598, 0.000000e+00
  br i1 %1766, label %1771, label %1767, !dx.controlflow.hints !76

; <label>:1767                                    ; preds = %1764
  %1768 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1769 = fmul fast float %1768, %1598
  %1770 = call float @dx.op.unary.f32(i32 23, float %1769)  ; Log(value)
  br label %1771

; <label>:1771                                    ; preds = %1767, %1764
  %1772 = phi float [ %1770, %1767 ], [ 0.000000e+00, %1764 ]
  %1773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %1601, float %1613, float undef, float undef, i32 0, i32 0, i32 undef, float %1772)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1774 = extractvalue %dx.types.ResRet.f32 %1773, 0
  %1775 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %37, float %1601, float %1613, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1779 = extractvalue %dx.types.ResRet.f32 %1775, 3
  %1780 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %37, float %1601, float %1613, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = extractvalue %dx.types.ResRet.f32 %1780, 3
  %1785 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %37, float %1601, float %1613, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.ResRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.ResRet.f32 %1785, 2
  %1789 = extractvalue %dx.types.ResRet.f32 %1785, 3
  %1790 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %37, float %1601, float %1613, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1791 = extractvalue %dx.types.ResRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.ResRet.f32 %1790, 1
  %1793 = extractvalue %dx.types.ResRet.f32 %1790, 2
  %1794 = extractvalue %dx.types.ResRet.f32 %1790, 3
  %1795 = fadd fast float %1776, %1777
  %1796 = fadd fast float %1795, %1778
  %1797 = fadd fast float %1796, %1779
  %1798 = fmul fast float %1781, %1776
  %1799 = fmul fast float %1782, %1777
  %1800 = fadd fast float %1798, %1799
  %1801 = fmul fast float %1783, %1778
  %1802 = fadd fast float %1800, %1801
  %1803 = fmul fast float %1784, %1779
  %1804 = fadd fast float %1802, %1803
  %1805 = fmul fast float %1786, %1776
  %1806 = fmul fast float %1787, %1777
  %1807 = fadd fast float %1805, %1806
  %1808 = fmul fast float %1788, %1778
  %1809 = fadd fast float %1807, %1808
  %1810 = fmul fast float %1789, %1779
  %1811 = fadd fast float %1809, %1810
  %1812 = fmul fast float %1791, %1776
  %1813 = fmul fast float %1792, %1777
  %1814 = fadd fast float %1812, %1813
  %1815 = fmul fast float %1793, %1778
  %1816 = fadd fast float %1814, %1815
  %1817 = fmul fast float %1794, %1779
  %1818 = fadd fast float %1816, %1817
  %1819 = fcmp fast ogt float %1797, 0.000000e+00
  %1820 = fdiv fast float %1804, %1797
  %1821 = select i1 %1819, float %1820, float 0.000000e+00
  %1822 = fdiv fast float %1811, %1797
  %1823 = select i1 %1819, float %1822, float 0.000000e+00
  %1824 = fdiv fast float %1818, %1797
  %1825 = select i1 %1819, float %1824, float 0.000000e+00
  %1826 = fcmp fast ogt float %1596, %1823
  %1827 = fcmp fast olt float %1596, %1821
  %1828 = and i1 %1827, %1826
  br i1 %1828, label %1829, label %1896, !dx.controlflow.hints !96

; <label>:1829                                    ; preds = %1771
  %1830 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1833 = extractvalue %dx.types.CBufRet.f32 %1831, 3
  br i1 %1198, label %1844, label %1834, !dx.controlflow.hints !97

; <label>:1834                                    ; preds = %1829
  %1835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 60)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 64)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.ResRet.f32 %1837, 1
  %1840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 72)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.f32 %1840, 0
  %1842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1197, i32 96)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.f32 %1842, 0
  br label %1844

; <label>:1844                                    ; preds = %1834, %1829
  %1845 = phi float [ %1836, %1834 ], [ %1247, %1829 ]
  %1846 = phi float [ %1841, %1834 ], [ %1245, %1829 ]
  %1847 = phi float [ %1843, %1834 ], [ %1830, %1829 ]
  %1848 = phi float [ %1838, %1834 ], [ %1832, %1829 ]
  %1849 = phi float [ %1839, %1834 ], [ %1833, %1829 ]
  %1850 = call float @dx.op.binary.f32(i32 35, float %1774, float 0.000000e+00)  ; FMax(a,b)
  %1851 = call float @dx.op.binary.f32(i32 36, float %1850, float 1.000000e+00)  ; FMin(a,b)
  %1852 = call float @dx.op.unary.f32(i32 24, float %1851)  ; Sqrt(value)
  %1853 = call float @dx.op.binary.f32(i32 35, float %1825, float 0x3F847AE140000000)  ; FMax(a,b)
  %1854 = fsub fast float %1821, %1596
  %1855 = fsub fast float %1596, %1823
  %1856 = call float @dx.op.binary.f32(i32 36, float %1855, float %1854)  ; FMin(a,b)
  %1857 = fdiv fast float %1856, %1853
  %1858 = call float @dx.op.unary.f32(i32 7, float %1857)  ; Saturate(value)
  %1859 = fsub fast float %1596, %1846
  %1860 = fdiv fast float %1859, %1845
  %1861 = call float @dx.op.unary.f32(i32 7, float %1860)  ; Saturate(value)
  %1862 = fsub fast float 1.000000e+00, %1861
  %1863 = fmul float %1858, %1862
  %1864 = fmul float %1863, %1863
  %1865 = fmul fast float %1852, %1765
  %1866 = fmul fast float %1865, %1864
  %1867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1867, 2
  %1869 = extractvalue %dx.types.CBufRet.f32 %1867, 1
  %1870 = fsub fast float %1866, %1869
  %1871 = fsub fast float %1868, %1869
  %1872 = fdiv fast float %1870, %1871
  %1873 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  %1874 = fmul fast float %1873, %1847
  %1875 = fcmp fast ogt float %1849, 0.000000e+00
  br i1 %1875, label %1876, label %1896, !dx.controlflow.hints !98

; <label>:1876                                    ; preds = %1844
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.CBufRet.f32 %1877, 1
  %1880 = extractvalue %dx.types.CBufRet.f32 %1877, 2
  %1881 = fsub fast float %1594, %1878
  %1882 = fsub fast float %1595, %1879
  %1883 = fsub fast float %1596, %1880
  %1884 = fmul fast float %1881, %1881
  %1885 = fmul fast float %1882, %1882
  %1886 = fadd fast float %1884, %1885
  %1887 = fmul fast float %1883, %1883
  %1888 = fadd fast float %1886, %1887
  %1889 = call float @dx.op.unary.f32(i32 24, float %1888)  ; Sqrt(value)
  %1890 = fsub fast float %1889, %1848
  %1891 = fsub fast float %1849, %1848
  %1892 = fdiv fast float %1890, %1891
  %1893 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  %1894 = fmul fast float %1893, %1893
  %1895 = fmul fast float %1894, %1874
  br label %1896

; <label>:1896                                    ; preds = %1876, %1844, %1771, %1585
  %1897 = phi float [ 0.000000e+00, %1585 ], [ 0.000000e+00, %1771 ], [ %1895, %1876 ], [ %1874, %1844 ]
  %1898 = fsub fast float %1583, %1897
  %1899 = fdiv fast float %1898, %1583
  %1900 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1901 = fsub fast float 1.000000e+00, %1223
  %1902 = fmul fast float %1900, %1901
  %1903 = fadd fast float %1902, %1223
  br label %1904

; <label>:1904                                    ; preds = %1896, %1578
  %1905 = phi float [ %1903, %1896 ], [ 1.000000e+00, %1578 ]
  %1906 = fadd fast float %1583, %1122
  %1907 = fmul fast float %1583, %1219
  %1908 = fmul fast float %1907, %1905
  %1909 = fmul fast float %1583, %1220
  %1910 = fmul fast float %1909, %1905
  %1911 = fmul fast float %1583, %1221
  %1912 = fmul fast float %1911, %1905
  %1913 = fadd fast float %1908, %1118
  %1914 = fadd fast float %1910, %1119
  %1915 = fadd fast float %1912, %1120
  br label %1916

; <label>:1916                                    ; preds = %1904, %1538, %1535, %1117
  %1917 = phi float [ %1118, %1117 ], [ %1118, %1535 ], [ %1118, %1538 ], [ %1913, %1904 ]
  %1918 = phi float [ %1119, %1117 ], [ %1119, %1535 ], [ %1119, %1538 ], [ %1914, %1904 ]
  %1919 = phi float [ %1120, %1117 ], [ %1120, %1535 ], [ %1120, %1538 ], [ %1915, %1904 ]
  %1920 = phi float [ %1122, %1117 ], [ %1122, %1535 ], [ %1122, %1538 ], [ %1906, %1904 ]
  %1921 = and i32 %314, 4
  %1922 = icmp eq i32 %1921, 0
  br i1 %1922, label %2093, label %1923, !dx.controlflow.hints !102

; <label>:1923                                    ; preds = %1916
  %1924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1925 = extractvalue %dx.types.CBufRet.i32 %1924, 1
  %1926 = icmp eq i32 %1925, 0
  br i1 %1926, label %2093, label %1927

; <label>:1927                                    ; preds = %1923
  br label %1928

; <label>:1928                                    ; preds = %2084, %1927
  %1929 = phi i32 [ %2090, %2084 ], [ 0, %1927 ]
  %1930 = phi float [ %2085, %2084 ], [ %1917, %1927 ]
  %1931 = phi float [ %2086, %2084 ], [ %1918, %1927 ]
  %1932 = phi float [ %2087, %2084 ], [ %1919, %1927 ]
  %1933 = phi float [ %2088, %2084 ], [ %1121, %1927 ]
  %1934 = phi float [ %2089, %2084 ], [ %1920, %1927 ]
  %1935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.i32 %1935, 1
  %1937 = call i32 @dx.op.tertiary.i32(i32 49, i32 %312, i32 %1936, i32 %1929)  ; UMad(a,b,c)
  %1938 = shl i32 %1937, 2
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = icmp eq i32 %1940, 0
  br i1 %1941, label %2084, label %1942

; <label>:1942                                    ; preds = %1928
  br label %1943

; <label>:1943                                    ; preds = %2070, %1942
  %1944 = phi i32 [ %1954, %2070 ], [ %1940, %1942 ]
  %1945 = phi float [ %2076, %2070 ], [ %1930, %1942 ]
  %1946 = phi float [ %2077, %2070 ], [ %1931, %1942 ]
  %1947 = phi float [ %2078, %2070 ], [ %1932, %1942 ]
  %1948 = phi float [ %2080, %2070 ], [ %1933, %1942 ]
  %1949 = phi float [ %2081, %2070 ], [ %1934, %1942 ]
  %1950 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1944)  ; FirstbitLo(value)
  %1951 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1929, i32 %1950)  ; UMad(a,b,c)
  %1952 = and i32 %1950, 31
  %1953 = shl i32 1, %1952
  %1954 = xor i32 %1953, %1944
  %1955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1951, i32 0)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.f32 %1955, 0
  %1957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1951, i32 4)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1951, i32 16)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.f32 %1959, 0
  %1961 = extractvalue %dx.types.ResRet.f32 %1959, 1
  %1962 = extractvalue %dx.types.ResRet.f32 %1959, 2
  %1963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1951, i32 28)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.f32 %1963, 0
  %1965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1951, i32 32)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1967 = extractvalue %dx.types.ResRet.f32 %1965, 1
  %1968 = extractvalue %dx.types.ResRet.f32 %1965, 2
  %1969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1951, i32 44)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  %1971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1951, i32 48)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1951, i32 52)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1951, i32 56)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1951, i32 64)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.ResRet.f32 %1977, 1
  %1980 = extractvalue %dx.types.ResRet.f32 %1977, 2
  %1981 = mul i32 %1951, 60
  %1982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = extractvalue %dx.types.ResRet.f32 %1982, 1
  %1985 = extractvalue %dx.types.ResRet.f32 %1982, 2
  %1986 = add i32 %1981, 12
  %1987 = add i32 %1981, 48
  %1988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.f32 %1988, 2
  %1990 = fsub fast float %193, %1983
  %1991 = fsub fast float %194, %1984
  %1992 = fsub fast float %195, %1985
  %1993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.ResRet.f32 %1993, 1
  %1996 = extractvalue %dx.types.ResRet.f32 %1993, 2
  %1997 = call float @dx.op.dot3.f32(i32 55, float %1990, float %1991, float %1992, float %1994, float %1995, float %1996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1998 = add i32 %1981, 24
  %1999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.f32 %1999, 0
  %2001 = extractvalue %dx.types.ResRet.f32 %1999, 1
  %2002 = extractvalue %dx.types.ResRet.f32 %1999, 2
  %2003 = call float @dx.op.dot3.f32(i32 55, float %1990, float %1991, float %1992, float %2000, float %2001, float %2002)  ; Dot3(ax,ay,az,bx,by,bz)
  %2004 = add i32 %1981, 36
  %2005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = extractvalue %dx.types.ResRet.f32 %2005, 1
  %2008 = extractvalue %dx.types.ResRet.f32 %2005, 2
  %2009 = call float @dx.op.dot3.f32(i32 55, float %1990, float %1991, float %1992, float %2006, float %2007, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2010 = call float @dx.op.unary.f32(i32 6, float %1997)  ; FAbs(value)
  %2011 = call float @dx.op.unary.f32(i32 6, float %2003)  ; FAbs(value)
  %2012 = call float @dx.op.unary.f32(i32 6, float %2009)  ; FAbs(value)
  %2013 = fmul fast float %2010, %1970
  %2014 = fmul fast float %2011, %1970
  %2015 = fmul fast float %2012, %1970
  %2016 = fadd fast float %2013, %1966
  %2017 = fadd fast float %2014, %1967
  %2018 = fadd fast float %2015, %1968
  %2019 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  %2020 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2021 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  %2022 = fmul fast float %2019, %2019
  %2023 = fmul fast float %2020, %2020
  %2024 = fadd fast float %2023, %2022
  %2025 = fmul fast float %2021, %2021
  %2026 = fadd fast float %2024, %2025
  %2027 = call float @dx.op.unary.f32(i32 24, float %2026)  ; Sqrt(value)
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2030 = fmul fast float %2029, %1956
  %2031 = fmul fast float %1989, 2.000000e+00
  %2032 = fadd fast float %2009, %1989
  %2033 = call float @dx.op.binary.f32(i32 35, float %2032, float 0.000000e+00)  ; FMax(a,b)
  %2034 = call float @dx.op.binary.f32(i32 36, float %2033, float %2031)  ; FMin(a,b)
  %2035 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2034)  ; FMax(a,b)
  %2036 = fmul fast float %1958, 0x3FF7154760000000
  %2037 = fmul fast float %2036, %2035
  %2038 = call float @dx.op.unary.f32(i32 21, float %2037)  ; Exp(value)
  %2039 = fmul fast float %2030, %2038
  %2040 = fcmp fast oeq float %395, 0.000000e+00
  br i1 %2040, label %2046, label %2041, !dx.controlflow.hints !76

; <label>:2041                                    ; preds = %1943
  %2042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.f32 %2042, 3
  %2044 = fmul fast float %2043, %395
  %2045 = call float @dx.op.unary.f32(i32 23, float %2044)  ; Log(value)
  br label %2046

; <label>:2046                                    ; preds = %2041, %1943
  %2047 = phi float [ %2045, %2041 ], [ 0.000000e+00, %1943 ]
  %2048 = fcmp fast oeq float %1972, 0.000000e+00
  br i1 %2048, label %2070, label %2049, !dx.controlflow.hints !103

; <label>:2049                                    ; preds = %2046
  %2050 = fmul fast float %1978, %1976
  %2051 = fmul fast float %1979, %1976
  %2052 = fmul fast float %1980, %1976
  %2053 = fsub fast float %193, %2050
  %2054 = fsub fast float %194, %2051
  %2055 = fsub fast float %195, %2052
  %2056 = fmul fast float %2053, %1972
  %2057 = fmul fast float %2054, %1972
  %2058 = fmul fast float %2055, %1972
  %2059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2056, float %2057, float %2058, float undef, i32 0, i32 0, i32 0, float %2047)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  %2061 = extractvalue %dx.types.ResRet.f32 %2059, 1
  %2062 = fdiv fast float 1.000000e+00, %1974
  %2063 = fmul fast float %1974, 2.000000e+00
  %2064 = fadd fast float %2063, -1.000000e+00
  %2065 = fadd fast float %2064, %2061
  %2066 = fadd fast float %2065, %2060
  %2067 = fmul fast float %2066, %2062
  %2068 = fadd fast float %2067, -1.000000e+00
  %2069 = call float @dx.op.unary.f32(i32 7, float %2068)  ; Saturate(value)
  br label %2070

; <label>:2070                                    ; preds = %2049, %2046
  %2071 = phi float [ %2069, %2049 ], [ 1.000000e+00, %2046 ]
  %2072 = fmul fast float %2039, %2071
  %2073 = fmul fast float %2072, %1960
  %2074 = fmul fast float %2072, %1961
  %2075 = fmul fast float %2072, %1962
  %2076 = fadd fast float %2073, %1945
  %2077 = fadd fast float %2074, %1946
  %2078 = fadd fast float %2075, %1947
  %2079 = fmul fast float %2072, %1964
  %2080 = fadd fast float %2079, %1948
  %2081 = fadd fast float %2072, %1949
  %2082 = icmp eq i32 %1944, %1953
  br i1 %2082, label %2083, label %1943, !llvm.loop !104

; <label>:2083                                    ; preds = %2070
  br label %2084

; <label>:2084                                    ; preds = %2083, %1928
  %2085 = phi float [ %1930, %1928 ], [ %2076, %2083 ]
  %2086 = phi float [ %1931, %1928 ], [ %2077, %2083 ]
  %2087 = phi float [ %1932, %1928 ], [ %2078, %2083 ]
  %2088 = phi float [ %1933, %1928 ], [ %2080, %2083 ]
  %2089 = phi float [ %1934, %1928 ], [ %2081, %2083 ]
  %2090 = add i32 %1929, 1
  %2091 = icmp ult i32 %2090, %1936
  br i1 %2091, label %1928, label %2092, !llvm.loop !105

; <label>:2092                                    ; preds = %2084
  br label %2093

; <label>:2093                                    ; preds = %2092, %1923, %1916
  %2094 = phi float [ %1917, %1916 ], [ %1917, %1923 ], [ %2085, %2092 ]
  %2095 = phi float [ %1918, %1916 ], [ %1918, %1923 ], [ %2086, %2092 ]
  %2096 = phi float [ %1919, %1916 ], [ %1919, %1923 ], [ %2087, %2092 ]
  %2097 = phi float [ %1121, %1916 ], [ %1121, %1923 ], [ %2088, %2092 ]
  %2098 = phi float [ %1920, %1916 ], [ %1920, %1923 ], [ %2089, %2092 ]
  %2099 = fcmp fast ogt float %2098, 0.000000e+00
  br i1 %2099, label %2100, label %2891, !dx.controlflow.hints !106

; <label>:2100                                    ; preds = %2093
  %2101 = fdiv fast float 1.000000e+00, %2098
  %2102 = fmul fast float %2101, %2094
  %2103 = fmul fast float %2101, %2095
  %2104 = fmul fast float %2101, %2096
  %2105 = fmul fast float %2101, %2097
  %2106 = fmul fast float %2101, %620
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 0
  %2109 = fadd fast float %2108, -1.000000e+00
  %2110 = fmul fast float %2106, %2109
  %2111 = fadd fast float %2110, 1.000000e+00
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.CBufRet.f32 %2112, 1
  %2115 = extractvalue %dx.types.CBufRet.f32 %2112, 2
  %2116 = fsub fast float %195, %2115
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2119 = fcmp fast oeq float %2118, 0.000000e+00
  br i1 %2119, label %2862, label %2120, !dx.controlflow.hints !107

; <label>:2120                                    ; preds = %2100
  %2121 = fsub fast float %194, %2114
  %2122 = fsub fast float %193, %2113
  %2123 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2124 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2125 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.CBufRet.f32 %2126, 1
  %2129 = extractvalue %dx.types.CBufRet.f32 %2126, 2
  %2130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2130, 2
  %2132 = fmul fast float %2131, %2123
  %2133 = fmul fast float %2131, %2124
  %2134 = fmul fast float %2131, %2125
  %2135 = fsub fast float %2122, %2132
  %2136 = fsub fast float %2121, %2133
  %2137 = fsub fast float %2116, %2134
  %2138 = fcmp fast olt float %2118, 0.000000e+00
  br i1 %2138, label %2670, label %2139, !dx.controlflow.hints !108

; <label>:2139                                    ; preds = %2120
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 0
  %2142 = extractvalue %dx.types.CBufRet.f32 %2140, 1
  %2143 = extractvalue %dx.types.CBufRet.f32 %2140, 2
  %2144 = extractvalue %dx.types.CBufRet.f32 %2140, 3
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2149 = extractvalue %dx.types.CBufRet.f32 %2145, 3
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 0
  %2152 = extractvalue %dx.types.CBufRet.f32 %2150, 1
  %2153 = extractvalue %dx.types.CBufRet.f32 %2150, 2
  %2154 = extractvalue %dx.types.CBufRet.f32 %2150, 3
  %2155 = fmul fast float %2141, %2135
  %2156 = call float @dx.op.tertiary.f32(i32 46, float %2136, float %2142, float %2155)  ; FMad(a,b,c)
  %2157 = call float @dx.op.tertiary.f32(i32 46, float %2137, float %2143, float %2156)  ; FMad(a,b,c)
  %2158 = fadd fast float %2157, %2144
  %2159 = fmul fast float %2146, %2135
  %2160 = call float @dx.op.tertiary.f32(i32 46, float %2136, float %2147, float %2159)  ; FMad(a,b,c)
  %2161 = call float @dx.op.tertiary.f32(i32 46, float %2137, float %2148, float %2160)  ; FMad(a,b,c)
  %2162 = fadd fast float %2161, %2149
  %2163 = fmul fast float %2151, %2135
  %2164 = call float @dx.op.tertiary.f32(i32 46, float %2136, float %2152, float %2163)  ; FMad(a,b,c)
  %2165 = call float @dx.op.tertiary.f32(i32 46, float %2137, float %2153, float %2164)  ; FMad(a,b,c)
  %2166 = fadd fast float %2165, %2154
  %2167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.CBufRet.f32 %2167, 1
  %2170 = extractvalue %dx.types.CBufRet.f32 %2167, 3
  %2171 = fmul fast float %2170, %2158
  %2172 = fmul fast float %2170, %2162
  %2173 = fadd fast float %2171, %2168
  %2174 = fadd fast float %2172, %2169
  %2175 = extractvalue %dx.types.CBufRet.f32 %2167, 2
  %2176 = fcmp fast olt float %2175, 0.000000e+00
  %2177 = fsub fast float -0.000000e+00, %2175
  %2178 = select i1 %2176, float %2177, float %2175
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 1
  %2181 = fadd fast float %2178, %2180
  %2182 = fcmp fast ogt float %2181, 0.000000e+00
  br i1 %2182, label %2183, label %2214, !dx.controlflow.hints !109

; <label>:2183                                    ; preds = %2139
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 1
  %2186 = fsub fast float %2185, %2166
  %2187 = extractvalue %dx.types.CBufRet.f32 %2184, 2
  %2188 = fmul fast float %2186, %2187
  %2189 = fsub fast float 1.000000e+00, %2188
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2194 = fsub fast float %2173, %2192
  %2195 = fsub fast float %2174, %2193
  %2196 = fcmp fast olt float %2194, 0.000000e+00
  %2197 = fcmp fast olt float %2195, 0.000000e+00
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.CBufRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.CBufRet.f32 %2198, 2
  %2202 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2203 = select i1 %2196, float %2199, float %2201
  %2204 = select i1 %2197, float %2200, float %2202
  %2205 = fmul fast float %2203, %2194
  %2206 = fmul fast float %2204, %2195
  %2207 = call float @dx.op.unary.f32(i32 6, float %2205)  ; FAbs(value)
  %2208 = call float @dx.op.unary.f32(i32 6, float %2206)  ; FAbs(value)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2130, 0
  %2210 = call float @dx.op.binary.f32(i32 35, float %2207, float %2208)  ; FMax(a,b)
  %2211 = fsub fast float %2209, %2210
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2213 = fmul fast float %2212, %2190
  br label %2214

; <label>:2214                                    ; preds = %2183, %2139
  %2215 = phi float [ %2213, %2183 ], [ 0.000000e+00, %2139 ]
  %2216 = call float @dx.op.binary.f32(i32 35, float %2215, float 0.000000e+00)  ; FMax(a,b)
  %2217 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2216)  ; FMax(a,b)
  %2218 = fcmp fast olt float %2217, 1.000000e+00
  br i1 %2218, label %2219, label %2617, !dx.controlflow.hints !110

; <label>:2219                                    ; preds = %2214
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 0
  %2222 = fcmp fast une float %2221, 0.000000e+00
  br i1 %2222, label %2223, label %2617, !dx.controlflow.hints !111

; <label>:2223                                    ; preds = %2219
  %2224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2225 = extractvalue %dx.types.CBufRet.f32 %2224, 0
  %2226 = extractvalue %dx.types.CBufRet.f32 %2224, 1
  %2227 = extractvalue %dx.types.CBufRet.f32 %2224, 2
  %2228 = extractvalue %dx.types.CBufRet.f32 %2224, 3
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.CBufRet.f32 %2229, 1
  %2232 = extractvalue %dx.types.CBufRet.f32 %2229, 2
  %2233 = extractvalue %dx.types.CBufRet.f32 %2229, 3
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.CBufRet.f32 %2234, 1
  %2237 = extractvalue %dx.types.CBufRet.f32 %2234, 2
  %2238 = extractvalue %dx.types.CBufRet.f32 %2234, 3
  %2239 = fmul fast float %2225, %2135
  %2240 = call float @dx.op.tertiary.f32(i32 46, float %2136, float %2226, float %2239)  ; FMad(a,b,c)
  %2241 = call float @dx.op.tertiary.f32(i32 46, float %2137, float %2227, float %2240)  ; FMad(a,b,c)
  %2242 = fadd fast float %2241, %2228
  %2243 = fmul fast float %2230, %2135
  %2244 = call float @dx.op.tertiary.f32(i32 46, float %2136, float %2231, float %2243)  ; FMad(a,b,c)
  %2245 = call float @dx.op.tertiary.f32(i32 46, float %2137, float %2232, float %2244)  ; FMad(a,b,c)
  %2246 = fadd fast float %2245, %2233
  %2247 = fmul fast float %2235, %2135
  %2248 = call float @dx.op.tertiary.f32(i32 46, float %2136, float %2236, float %2247)  ; FMad(a,b,c)
  %2249 = call float @dx.op.tertiary.f32(i32 46, float %2137, float %2237, float %2248)  ; FMad(a,b,c)
  %2250 = fadd fast float %2249, %2238
  %2251 = fcmp fast oge float %2242, 1.000000e+00
  %2252 = fcmp fast oge float %2246, 1.000000e+00
  %2253 = or i1 %2251, %2252
  %2254 = fcmp fast olt float %2242, 0.000000e+00
  %2255 = fcmp fast olt float %2246, 0.000000e+00
  %2256 = or i1 %2254, %2255
  %2257 = or i1 %2253, %2256
  br i1 %2257, label %2617, label %2258, !dx.controlflow.hints !112

; <label>:2258                                    ; preds = %2223
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.i32 %2263, 2
  %2265 = uitofp i32 %2264 to float
  %2266 = extractvalue %dx.types.CBufRet.i32 %2263, 3
  %2267 = uitofp i32 %2266 to float
  %2268 = extractvalue %dx.types.CBufRet.f32 %2259, 3
  %2269 = fmul fast float %2268, 2.000000e+00
  %2270 = fsub fast float %2242, %2260
  %2271 = fsub fast float %2246, %2261
  %2272 = fmul fast float %2269, %2270
  %2273 = fmul fast float %2269, %2271
  %2274 = fdiv fast float 1.000000e+00, %2125
  %2275 = fmul fast float %2273, %2274
  %2276 = call float @dx.op.unary.f32(i32 6, float %2275)  ; FAbs(value)
  %2277 = fmul fast float %2262, %2137
  %2278 = fmul fast float %2277, %2269
  %2279 = call float @dx.op.unary.f32(i32 6, float %2278)  ; FAbs(value)
  %2280 = call float @dx.op.unary.f32(i32 6, float %2272)  ; FAbs(value)
  %2281 = call float @dx.op.binary.f32(i32 35, float %2279, float %2276)  ; FMax(a,b)
  %2282 = call float @dx.op.binary.f32(i32 35, float %2280, float %2281)  ; FMax(a,b)
  %2283 = fmul fast float %2282, 2.000000e+00
  %2284 = call float @dx.op.unary.f32(i32 23, float %2283)  ; Log(value)
  %2285 = call float @dx.op.binary.f32(i32 35, float %2284, float %2265)  ; FMax(a,b)
  %2286 = call float @dx.op.unary.f32(i32 22, float %2285)  ; Frc(value)
  %2287 = fadd fast float %2286, 0xBFEA666660000000
  %2288 = fmul fast float %2287, 8.000000e+00
  %2289 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2290 = call float @dx.op.unary.f32(i32 27, float %2285)  ; Round_ni(value)
  %2291 = fadd fast float %2290, %2289
  %2292 = call float @dx.op.binary.f32(i32 36, float %2291, float %2267)  ; FMin(a,b)
  %2293 = call float @dx.op.unary.f32(i32 27, float %2292)  ; Round_ni(value)
  %2294 = fsub fast float -0.000000e+00, %2293
  %2295 = call float @dx.op.unary.f32(i32 21, float %2294)  ; Exp(value)
  %2296 = fmul fast float %2295, %2269
  %2297 = fmul fast float %2296, %2242
  %2298 = fmul fast float %2296, %2246
  %2299 = fmul fast float %2297, 2.500000e-01
  %2300 = fmul fast float %2298, 2.500000e-01
  %2301 = fadd fast float %2299, 5.000000e-01
  %2302 = fadd fast float %2300, 5.000000e-01
  %2303 = fsub fast float %2267, %2265
  %2304 = fptoui float %2303 to i32
  %2305 = add i32 %2304, 320
  %2306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %2305)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.f32 %2306, 0
  %2308 = extractvalue %dx.types.CBufRet.f32 %2306, 1
  %2309 = fcmp fast une float %2292, %2267
  %2310 = fsub fast float %2242, %2307
  %2311 = fsub fast float %2246, %2308
  %2312 = call float @dx.op.unary.f32(i32 6, float %2310)  ; FAbs(value)
  %2313 = call float @dx.op.unary.f32(i32 6, float %2311)  ; FAbs(value)
  %2314 = fmul fast float %2312, %2296
  %2315 = fmul fast float %2313, %2296
  %2316 = fcmp fast olt float %2314, 1.000000e+00
  %2317 = fcmp fast olt float %2315, 1.000000e+00
  %2318 = and i1 %2316, %2317
  %2319 = or i1 %2309, %2318
  br i1 %2319, label %2320, label %2617, !dx.controlflow.hints !113

; <label>:2320                                    ; preds = %2258
  %2321 = fmul fast float %2298, 5.000000e-01
  %2322 = fmul fast float %2297, 5.000000e-01
  %2323 = fadd fast float %2321, 5.000000e-01
  %2324 = fadd fast float %2322, 5.000000e-01
  %2325 = sitofp i32 %2264 to float
  %2326 = fsub fast float %2292, %2325
  %2327 = call float @dx.op.unary.f32(i32 27, float %2326)  ; Round_ni(value)
  %2328 = call float @dx.op.unary.f32(i32 22, float %2292)  ; Frc(value)
  %2329 = call float @dx.op.unary.f32(i32 22, float %2324)  ; Frc(value)
  %2330 = call float @dx.op.unary.f32(i32 22, float %2323)  ; Frc(value)
  %2331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %36, float %2329, float %2330, float %2327, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2332 = extractvalue %dx.types.ResRet.f32 %2331, 0
  %2333 = extractvalue %dx.types.ResRet.f32 %2331, 1
  %2334 = extractvalue %dx.types.ResRet.f32 %2331, 2
  %2335 = extractvalue %dx.types.ResRet.f32 %2331, 3
  %2336 = fcmp fast ogt float %2328, 0.000000e+00
  br i1 %2336, label %2337, label %2358, !dx.controlflow.hints !114

; <label>:2337                                    ; preds = %2320
  %2338 = fadd fast float %2327, 1.000000e+00
  %2339 = call float @dx.op.unary.f32(i32 22, float %2301)  ; Frc(value)
  %2340 = call float @dx.op.unary.f32(i32 22, float %2302)  ; Frc(value)
  %2341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %36, float %2339, float %2340, float %2338, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.ResRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.ResRet.f32 %2341, 2
  %2345 = extractvalue %dx.types.ResRet.f32 %2341, 3
  %2346 = fsub fast float %2342, %2332
  %2347 = fsub fast float %2343, %2333
  %2348 = fsub fast float %2344, %2334
  %2349 = fsub fast float %2345, %2335
  %2350 = fmul fast float %2346, %2328
  %2351 = fmul fast float %2347, %2328
  %2352 = fmul fast float %2348, %2328
  %2353 = fmul fast float %2349, %2328
  %2354 = fadd fast float %2350, %2332
  %2355 = fadd fast float %2351, %2333
  %2356 = fadd fast float %2352, %2334
  %2357 = fadd fast float %2353, %2335
  br label %2358

; <label>:2358                                    ; preds = %2337, %2320
  %2359 = phi float [ %2354, %2337 ], [ %2332, %2320 ]
  %2360 = phi float [ %2355, %2337 ], [ %2333, %2320 ]
  %2361 = phi float [ %2356, %2337 ], [ %2334, %2320 ]
  %2362 = phi float [ %2357, %2337 ], [ %2335, %2320 ]
  %2363 = fadd fast float %2359, -5.000000e-01
  %2364 = fadd fast float %2361, -5.000000e-01
  %2365 = fmul fast float %2363, 0xBFD5555560000000
  %2366 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2364, float %2365)  ; FMad(a,b,c)
  %2367 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2360, float 0.000000e+00)  ; FMad(a,b,c)
  %2368 = fadd fast float %2367, %2362
  %2369 = fmul fast float %2363, -7.500000e-01
  %2370 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2364, float %2369)  ; FMad(a,b,c)
  %2371 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2360, float 0.000000e+00)  ; FMad(a,b,c)
  %2372 = fadd fast float %2371, %2362
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 0
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2377 = extractvalue %dx.types.CBufRet.f32 %2375, 1
  %2378 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2379 = extractvalue %dx.types.CBufRet.f32 %2375, 3
  %2380 = fsub fast float %2376, %2366
  %2381 = fsub fast float %2377, %2368
  %2382 = fsub fast float %2378, %2370
  %2383 = fsub fast float %2379, %2372
  %2384 = fmul fast float %2380, %2374
  %2385 = fmul fast float %2381, %2374
  %2386 = fmul fast float %2382, %2374
  %2387 = fmul fast float %2383, %2374
  %2388 = fadd fast float %2384, %2366
  %2389 = fadd fast float %2385, %2368
  %2390 = fadd fast float %2386, %2370
  %2391 = fadd fast float %2387, %2372
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = and i32 %2393, 536870911
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, %2242
  %2397 = fmul fast float %2395, %2246
  %2398 = fptoui float %2396 to i32
  %2399 = fptoui float %2397 to i32
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 31
  %2403 = lshr i32 %2398, %2402
  %2404 = lshr i32 %2399, %2402
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 31
  %2408 = shl i32 1, %2407
  %2409 = call i32 @dx.op.binary.i32(i32 40, i32 %2408, i32 4)  ; UMin(a,b)
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = extractvalue %dx.types.ResRet.i32 %2410, 1
  %2413 = icmp eq i32 %2409, 0
  br i1 %2413, label %2455, label %2414

; <label>:2414                                    ; preds = %2358
  br label %2415

; <label>:2415                                    ; preds = %2443, %2414
  %2416 = phi i32 [ %2446, %2443 ], [ 0, %2414 ]
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = lshr i32 %2418, 16
  %2420 = and i32 %2419, 31
  %2421 = shl i32 %2404, %2420
  %2422 = add i32 %2421, %2403
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = and i32 %2424, 31
  %2426 = shl i32 %2422, %2425
  %2427 = add i32 %2426, %2416
  %2428 = shl i32 %2427, 2
  %2429 = add i32 %2428, 32
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = icmp slt i32 %2431, 0
  %2433 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2416
  %2434 = getelementptr [12 x float], [12 x float]* %48, i32 0, i32 %2416
  %2435 = bitcast float* %2433 to i32*
  %2436 = bitcast float* %2434 to i32*
  br i1 %2432, label %2437, label %2443, !dx.controlflow.hints !115

; <label>:2437                                    ; preds = %2415
  %2438 = and i32 %2431, 1073741823
  %2439 = add nuw nsw i32 %2438, 20
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = extractvalue %dx.types.ResRet.i32 %2440, 1
  br label %2443

; <label>:2443                                    ; preds = %2437, %2415
  %2444 = phi i32 [ %2441, %2437 ], [ %2411, %2415 ]
  %2445 = phi i32 [ %2442, %2437 ], [ %2412, %2415 ]
  store i32 %2444, i32* %2435, align 4
  store i32 %2445, i32* %2436, align 4
  %2446 = add nuw i32 %2416, 1
  %2447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2448 = extractvalue %dx.types.CBufRet.i32 %2447, 2
  %2449 = icmp eq i32 %2448, 0
  %2450 = icmp ugt i32 %2431, -1073741825
  %2451 = and i1 %2450, %2449
  %2452 = icmp ult i32 %2446, %2409
  %2453 = and i1 %2451, %2452
  br i1 %2453, label %2415, label %2454, !dx.controlflow.hints !116

; <label>:2454                                    ; preds = %2443
  br label %2455

; <label>:2455                                    ; preds = %2454, %2358
  %2456 = phi i32 [ 0, %2358 ], [ %2446, %2454 ]
  %2457 = extractvalue %dx.types.CBufRet.f32 %2220, 2
  %2458 = fptoui float %2457 to i32
  %2459 = icmp eq i32 %2458, 0
  br i1 %2459, label %2511, label %2460

; <label>:2460                                    ; preds = %2455
  br label %2461

; <label>:2461                                    ; preds = %2506, %2460
  %2462 = phi i32 [ %2507, %2506 ], [ %2456, %2460 ]
  %2463 = phi i32 [ %2508, %2506 ], [ 0, %2460 ]
  %2464 = lshr i32 %2463, 2
  %2465 = and i32 %2463, 3
  %2466 = add nuw nsw i32 %2464, 83
  %2467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 %2466)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.i32 %2467, 0
  %2469 = extractvalue %dx.types.CBufRet.i32 %2467, 1
  %2470 = extractvalue %dx.types.CBufRet.i32 %2467, 2
  %2471 = extractvalue %dx.types.CBufRet.i32 %2467, 3
  %2472 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 0
  store i32 %2468, i32* %2472, align 4
  %2473 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 1
  store i32 %2469, i32* %2473, align 4
  %2474 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 2
  store i32 %2470, i32* %2474, align 4
  %2475 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 3
  store i32 %2471, i32* %2475, align 4
  %2476 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i32 0, i32 %2465
  %2477 = load i32, i32* %2476, align 4, !tbaa !117, !noalias !119
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = lshr i32 %2479, 16
  %2481 = and i32 %2480, 31
  %2482 = shl i32 %2404, %2481
  %2483 = add i32 %2482, %2403
  %2484 = shl i32 %2483, 2
  %2485 = add i32 %2484, %2477
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = icmp eq i32 %2487, 0
  br i1 %2488, label %2506, label %2489, !dx.controlflow.hints !126

; <label>:2489                                    ; preds = %2461
  %2490 = icmp slt i32 %2487, 0
  %2491 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2462
  %2492 = getelementptr [12 x float], [12 x float]* %48, i32 0, i32 %2462
  %2493 = bitcast float* %2491 to i32*
  %2494 = bitcast float* %2492 to i32*
  br i1 %2490, label %2495, label %2502, !dx.controlflow.hints !127

; <label>:2495                                    ; preds = %2489
  %2496 = and i32 %2487, 1073741823
  %2497 = add i32 %2477, 20
  %2498 = add i32 %2497, %2496
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = extractvalue %dx.types.ResRet.i32 %2499, 1
  br label %2502

; <label>:2502                                    ; preds = %2495, %2489
  %2503 = phi i32 [ %2500, %2495 ], [ %2411, %2489 ]
  %2504 = phi i32 [ %2501, %2495 ], [ %2412, %2489 ]
  store i32 %2503, i32* %2493, align 4
  store i32 %2504, i32* %2494, align 4
  %2505 = add i32 %2462, 1
  br label %2506

; <label>:2506                                    ; preds = %2502, %2461
  %2507 = phi i32 [ %2462, %2461 ], [ %2505, %2502 ]
  %2508 = add nuw i32 %2463, 1
  %2509 = icmp eq i32 %2508, %2458
  br i1 %2509, label %2510, label %2461

; <label>:2510                                    ; preds = %2506
  br label %2511

; <label>:2511                                    ; preds = %2510, %2455
  %2512 = phi i32 [ %2456, %2455 ], [ %2507, %2510 ]
  %2513 = icmp eq i32 %2512, 1
  %2514 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 0
  %2515 = getelementptr [12 x float], [12 x float]* %48, i32 0, i32 0
  br i1 %2513, label %2516, label %2519, !dx.controlflow.hints !128

; <label>:2516                                    ; preds = %2511
  %2517 = load float, float* %2514, align 4
  %2518 = load float, float* %2515, align 4
  br label %2546

; <label>:2519                                    ; preds = %2511
  %2520 = load float, float* %2514, align 4
  %2521 = load float, float* %2515, align 4
  %2522 = fdiv fast float 1.000000e+00, %2521
  %2523 = fsub fast float %2520, %2522
  %2524 = icmp ugt i32 %2512, 1
  br i1 %2524, label %2525, label %2541

; <label>:2525                                    ; preds = %2519
  br label %2526

; <label>:2526                                    ; preds = %2526, %2525
  %2527 = phi float [ %2536, %2526 ], [ %2523, %2525 ]
  %2528 = phi float [ %2537, %2526 ], [ %2520, %2525 ]
  %2529 = phi i32 [ %2538, %2526 ], [ 1, %2525 ]
  %2530 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2529
  %2531 = load float, float* %2530, align 4
  %2532 = getelementptr [12 x float], [12 x float]* %48, i32 0, i32 %2529
  %2533 = load float, float* %2532, align 4
  %2534 = fdiv fast float 1.000000e+00, %2533
  %2535 = fsub fast float %2531, %2534
  %2536 = call float @dx.op.binary.f32(i32 36, float %2527, float %2535)  ; FMin(a,b)
  %2537 = call float @dx.op.binary.f32(i32 35, float %2528, float %2531)  ; FMax(a,b)
  %2538 = add nuw i32 %2529, 1
  %2539 = icmp eq i32 %2538, %2512
  br i1 %2539, label %2540, label %2526

; <label>:2540                                    ; preds = %2526
  br label %2541

; <label>:2541                                    ; preds = %2540, %2519
  %2542 = phi float [ %2523, %2519 ], [ %2536, %2540 ]
  %2543 = phi float [ %2520, %2519 ], [ %2537, %2540 ]
  %2544 = fsub fast float %2543, %2542
  %2545 = fdiv fast float 1.000000e+00, %2544
  br label %2546

; <label>:2546                                    ; preds = %2541, %2516
  %2547 = phi float [ %2517, %2516 ], [ %2543, %2541 ]
  %2548 = phi float [ %2518, %2516 ], [ %2545, %2541 ]
  %2549 = fadd fast float %2250, %2547
  %2550 = fmul fast float %2549, %2548
  %2551 = call float @dx.op.unary.f32(i32 7, float %2550)  ; Saturate(value)
  %2552 = fmul fast float %2551, 2.000000e+00
  %2553 = fsub fast float 1.000000e+00, %2552
  %2554 = fmul fast float %2388, %2388
  %2555 = fsub fast float %2389, %2554
  %2556 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2555)  ; FMax(a,b)
  %2557 = fdiv fast float 1.000000e+00, %2556
  %2558 = fmul fast float %2389, %2388
  %2559 = fsub fast float %2390, %2558
  %2560 = fsub fast float %2553, %2388
  %2561 = fmul fast float %2553, %2553
  %2562 = fsub fast float %2561, %2389
  %2563 = fmul fast float %2557, %2559
  %2564 = fmul fast float %2563, %2560
  %2565 = fsub fast float %2562, %2564
  %2566 = fmul fast float %2389, %2389
  %2567 = fsub fast float %2391, %2566
  %2568 = fmul fast float %2559, %2559
  %2569 = fmul fast float %2568, %2557
  %2570 = fsub fast float %2567, %2569
  %2571 = fdiv fast float %2565, %2570
  %2572 = fmul fast float %2571, %2559
  %2573 = fsub fast float %2560, %2572
  %2574 = fmul fast float %2573, %2557
  %2575 = fmul fast float %2574, %2388
  %2576 = fsub fast float 1.000000e+00, %2575
  %2577 = fmul fast float %2571, %2389
  %2578 = fsub fast float %2576, %2577
  %2579 = fmul fast float %2574, %2574
  %2580 = fmul fast float %2571, 4.000000e+00
  %2581 = fmul fast float %2580, %2578
  %2582 = fsub fast float %2579, %2581
  %2583 = call float @dx.op.unary.f32(i32 24, float %2582)  ; Sqrt(value)
  %2584 = fcmp fast oge float %2574, 0.000000e+00
  %2585 = fsub fast float -0.000000e+00, %2583
  %2586 = select i1 %2584, float %2585, float %2583
  %2587 = fsub fast float %2586, %2574
  %2588 = fdiv fast float %2587, %2571
  %2589 = fdiv fast float %2578, %2587
  %2590 = fmul fast float %2588, 5.000000e-01
  %2591 = fmul fast float %2589, 2.000000e+00
  %2592 = select i1 %2584, float %2590, float %2591
  %2593 = select i1 %2584, float %2591, float %2590
  %2594 = call float @dx.op.binary.f32(i32 35, float %2592, float %2593)  ; FMax(a,b)
  %2595 = call float @dx.op.binary.f32(i32 36, float %2592, float %2593)  ; FMin(a,b)
  %2596 = fcmp fast ogt float %2553, %2594
  %2597 = fsub fast float %2553, %2595
  %2598 = fsub fast float %2553, %2594
  %2599 = fsub fast float %2594, %2595
  %2600 = select i1 %2596, float %2598, float %2599
  %2601 = fmul float %2597, %2600
  %2602 = select i1 %2596, float %2595, float %2553
  %2603 = fcmp fast ogt float %2553, %2595
  %2604 = fmul fast float %2602, %2594
  %2605 = fadd fast float %2602, %2594
  %2606 = fmul fast float %2605, %2388
  %2607 = fadd fast float %2604, %2389
  %2608 = fsub fast float %2607, %2606
  %2609 = fdiv fast float %2608, %2601
  %2610 = select i1 %2603, float %2609, float 0.000000e+00
  %2611 = fsub fast float 1.000000e+00, %2610
  %2612 = select i1 %2596, float %2611, float %2610
  %2613 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2373, 3
  %2615 = fmul fast float %2614, %2613
  %2616 = fsub fast float 1.000000e+00, %2615
  br label %2617

; <label>:2617                                    ; preds = %2546, %2258, %2223, %2219, %2214
  %2618 = phi float [ 1.000000e+00, %2214 ], [ %2616, %2546 ], [ 1.000000e+00, %2223 ], [ 1.000000e+00, %2258 ], [ 1.000000e+00, %2219 ]
  %2619 = fcmp fast ogt float %2215, 0.000000e+00
  br i1 %2619, label %2620, label %2626, !dx.controlflow.hints !129

; <label>:2620                                    ; preds = %2617
  %2621 = fadd fast float %2180, %2166
  %2622 = call float @dx.op.binary.f32(i32 35, float %2621, float 0.000000e+00)  ; FMax(a,b)
  %2623 = fadd fast float %2622, 0x3F10000000000000
  %2624 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %38, float %2173, float %2174, float undef, float undef, i32 0, i32 0, i32 undef, float %2623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  br label %2626

; <label>:2626                                    ; preds = %2620, %2617
  %2627 = phi float [ %2625, %2620 ], [ 1.000000e+00, %2617 ]
  %2628 = fsub fast float %2627, %2618
  %2629 = fmul fast float %2628, %2215
  %2630 = fadd fast float %2629, %2618
  %2631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.f32 %2631, 2
  %2633 = fcmp fast ogt float %2632, 0.000000e+00
  br i1 %2633, label %2634, label %2670, !dx.controlflow.hints !130

; <label>:2634                                    ; preds = %2626
  %2635 = fcmp fast ugt float %2632, 0.000000e+00
  br i1 %2635, label %2636, label %2667, !dx.controlflow.hints !131

; <label>:2636                                    ; preds = %2634
  %2637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2638 = extractvalue %dx.types.CBufRet.f32 %2637, 0
  %2639 = extractvalue %dx.types.CBufRet.f32 %2637, 1
  %2640 = extractvalue %dx.types.CBufRet.f32 %2637, 2
  %2641 = extractvalue %dx.types.CBufRet.f32 %2637, 3
  %2642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2643 = extractvalue %dx.types.CBufRet.f32 %2642, 0
  %2644 = extractvalue %dx.types.CBufRet.f32 %2642, 1
  %2645 = extractvalue %dx.types.CBufRet.f32 %2642, 2
  %2646 = extractvalue %dx.types.CBufRet.f32 %2642, 3
  %2647 = extractvalue %dx.types.CBufRet.f32 %2631, 0
  %2648 = extractvalue %dx.types.CBufRet.f32 %2631, 1
  %2649 = fadd fast float %2113, %2135
  %2650 = fadd fast float %2114, %2136
  %2651 = fadd fast float %2115, %2137
  %2652 = fmul fast float %2649, %2638
  %2653 = call float @dx.op.tertiary.f32(i32 46, float %2639, float %2650, float %2652)  ; FMad(a,b,c)
  %2654 = call float @dx.op.tertiary.f32(i32 46, float %2640, float %2651, float %2653)  ; FMad(a,b,c)
  %2655 = fadd fast float %2654, %2641
  %2656 = fmul fast float %2649, %2643
  %2657 = call float @dx.op.tertiary.f32(i32 46, float %2644, float %2650, float %2656)  ; FMad(a,b,c)
  %2658 = call float @dx.op.tertiary.f32(i32 46, float %2645, float %2651, float %2657)  ; FMad(a,b,c)
  %2659 = fadd fast float %2658, %2646
  %2660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %2655, float %2659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2661 = extractvalue %dx.types.ResRet.f32 %2660, 0
  %2662 = fmul fast float %2661, %2648
  %2663 = fadd fast float %2662, %2647
  %2664 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  %2665 = fmul fast float %2664, %2632
  %2666 = fsub fast float 1.000000e+00, %2665
  br label %2667

; <label>:2667                                    ; preds = %2636, %2634
  %2668 = phi float [ %2666, %2636 ], [ 1.000000e+00, %2634 ]
  %2669 = fmul fast float %2668, %2630
  br label %2670

; <label>:2670                                    ; preds = %2667, %2626, %2120
  %2671 = phi float [ 1.000000e+00, %2120 ], [ %2669, %2667 ], [ %2630, %2626 ]
  %2672 = call float @dx.op.binary.f32(i32 36, float %2671, float %2671)  ; FMin(a,b)
  %2673 = call float @dx.op.binary.f32(i32 36, float %2671, float %2672)  ; FMin(a,b)
  %2674 = fcmp fast ogt float %2673, 0.000000e+00
  br i1 %2674, label %2675, label %2833, !dx.controlflow.hints !132

; <label>:2675                                    ; preds = %2670
  %2676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2677 = extractvalue %dx.types.CBufRet.f32 %2676, 0
  %2678 = extractvalue %dx.types.CBufRet.f32 %2676, 1
  %2679 = extractvalue %dx.types.CBufRet.f32 %2676, 2
  %2680 = extractvalue %dx.types.CBufRet.f32 %2676, 3
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.CBufRet.f32 %2681, 2
  %2685 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2687 = extractvalue %dx.types.CBufRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.CBufRet.f32 %2686, 1
  %2689 = extractvalue %dx.types.CBufRet.f32 %2686, 2
  %2690 = extractvalue %dx.types.CBufRet.f32 %2686, 3
  %2691 = fmul fast float %2677, %2135
  %2692 = call float @dx.op.tertiary.f32(i32 46, float %2136, float %2678, float %2691)  ; FMad(a,b,c)
  %2693 = call float @dx.op.tertiary.f32(i32 46, float %2137, float %2679, float %2692)  ; FMad(a,b,c)
  %2694 = fadd fast float %2693, %2680
  %2695 = fmul fast float %2682, %2135
  %2696 = call float @dx.op.tertiary.f32(i32 46, float %2136, float %2683, float %2695)  ; FMad(a,b,c)
  %2697 = call float @dx.op.tertiary.f32(i32 46, float %2137, float %2684, float %2696)  ; FMad(a,b,c)
  %2698 = fadd fast float %2697, %2685
  %2699 = fmul fast float %2687, %2135
  %2700 = call float @dx.op.tertiary.f32(i32 46, float %2136, float %2688, float %2699)  ; FMad(a,b,c)
  %2701 = call float @dx.op.tertiary.f32(i32 46, float %2137, float %2689, float %2700)  ; FMad(a,b,c)
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.CBufRet.f32 %2702, 3
  %2706 = fmul fast float %2705, %2694
  %2707 = fmul fast float %2705, %2698
  %2708 = fadd fast float %2706, %2703
  %2709 = fadd fast float %2707, %2704
  %2710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2711 = extractvalue %dx.types.CBufRet.f32 %2710, 0
  %2712 = extractvalue %dx.types.CBufRet.f32 %2710, 1
  %2713 = fsub fast float %2708, %2711
  %2714 = fsub fast float %2709, %2712
  %2715 = fcmp fast olt float %2713, 0.000000e+00
  %2716 = fcmp fast olt float %2714, 0.000000e+00
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.CBufRet.f32 %2717, 1
  %2720 = extractvalue %dx.types.CBufRet.f32 %2717, 2
  %2721 = extractvalue %dx.types.CBufRet.f32 %2717, 3
  %2722 = select i1 %2715, float %2718, float %2720
  %2723 = select i1 %2716, float %2719, float %2721
  %2724 = fmul fast float %2722, %2713
  %2725 = fmul fast float %2723, %2714
  %2726 = call float @dx.op.unary.f32(i32 6, float %2724)  ; FAbs(value)
  %2727 = call float @dx.op.unary.f32(i32 6, float %2725)  ; FAbs(value)
  %2728 = extractvalue %dx.types.CBufRet.f32 %2130, 0
  %2729 = call float @dx.op.binary.f32(i32 35, float %2726, float %2727)  ; FMax(a,b)
  %2730 = fsub fast float %2728, %2729
  %2731 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2732 = fcmp fast ogt float %2731, 0.000000e+00
  br i1 %2732, label %2733, label %2774, !dx.controlflow.hints !133

; <label>:2733                                    ; preds = %2675
  %2734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 1
  %2736 = fcmp fast ogt float %2735, 0.000000e+00
  br i1 %2736, label %2737, label %2769, !dx.controlflow.hints !134

; <label>:2737                                    ; preds = %2733
  %2738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %37, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2739 = extractvalue %dx.types.ResRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.ResRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.ResRet.f32 %2738, 2
  %2742 = extractvalue %dx.types.ResRet.f32 %2738, 3
  %2743 = fsub fast float 1.000000e+00, %2690
  %2744 = fsub fast float %2743, %2701
  %2745 = fmul fast float %2744, 0x400921FB60000000
  %2746 = fadd fast float %2745, 0x3FF921FB60000000
  %2747 = call float @dx.op.unary.f32(i32 13, float %2746)  ; Sin(value)
  %2748 = fadd fast float %2747, -1.000000e+00
  %2749 = fmul fast float %2748, 0x3FD45F3060000000
  %2750 = fmul fast float %2744, 0x401921FB60000000
  %2751 = fadd fast float %2750, 0x400921FB60000000
  %2752 = call float @dx.op.unary.f32(i32 13, float %2751)  ; Sin(value)
  %2753 = fadd fast float %2752, 0x3E7777A5C0000000
  %2754 = fmul fast float %2753, 0x3FC45F3060000000
  %2755 = fmul fast float %2744, 0x4022D97C80000000
  %2756 = fadd fast float %2755, 0x4012D97C80000000
  %2757 = call float @dx.op.unary.f32(i32 13, float %2756)  ; Sin(value)
  %2758 = fadd fast float %2757, 1.000000e+00
  %2759 = fmul fast float %2758, 0x3FBB2995E0000000
  %2760 = fmul fast float %2744, 0x402921FB60000000
  %2761 = fadd fast float %2760, 0x401921FB60000000
  %2762 = call float @dx.op.unary.f32(i32 13, float %2761)  ; Sin(value)
  %2763 = fadd fast float %2762, 0xBE8777A5C0000000
  %2764 = fmul fast float %2763, 0x3FB45F3060000000
  %2765 = call float @dx.op.dot4.f32(i32 56, float %2739, float %2740, float %2741, float %2742, float %2749, float %2754, float %2759, float %2764)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2766 = fmul fast float %2765, 0xBFF7154760000000
  %2767 = call float @dx.op.unary.f32(i32 21, float %2766)  ; Exp(value)
  %2768 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  br label %2769

; <label>:2769                                    ; preds = %2737, %2733
  %2770 = phi float [ %2768, %2737 ], [ 1.000000e+00, %2733 ]
  %2771 = fadd fast float %2770, -1.000000e+00
  %2772 = fmul fast float %2771, %2731
  %2773 = fadd fast float %2772, 1.000000e+00
  br label %2774

; <label>:2774                                    ; preds = %2769, %2675
  %2775 = phi float [ %2773, %2769 ], [ 1.000000e+00, %2675 ]
  %2776 = fmul fast float %2775, %2671
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 1
  %2779 = fsub fast float -0.000000e+00, %193
  %2780 = fsub fast float -0.000000e+00, %194
  %2781 = fsub fast float -0.000000e+00, %2116
  %2782 = fsub fast float %2781, %2115
  %2783 = fadd fast float %2782, %2778
  %2784 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2779, float %2780, float %2783)  ; Dot3(ax,ay,az,bx,by,bz)
  %2785 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2123, float %2124, float %2125)  ; Dot3(ax,ay,az,bx,by,bz)
  %2786 = fdiv fast float 1.000000e+00, %2785
  %2787 = fmul fast float %2786, %2784
  %2788 = fmul fast float %2123, %2787
  %2789 = fmul fast float %2124, %2787
  %2790 = fadd fast float %2788, %193
  %2791 = fadd fast float %2789, %194
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = fsub fast float %2790, %2793
  %2796 = fsub fast float %2791, %2794
  %2797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.f32 %2797, 2
  %2799 = extractvalue %dx.types.CBufRet.f32 %2797, 3
  %2800 = fmul fast float %2795, %2798
  %2801 = fmul fast float %2796, %2799
  %2802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.i32 %2802, 3
  %2804 = icmp eq i32 %2803, 0
  br i1 %2804, label %2810, label %2805, !dx.controlflow.hints !135

; <label>:2805                                    ; preds = %2774
  %2806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %36, float %2800, float %2801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2807 = extractvalue %dx.types.ResRet.f32 %2806, 0
  %2808 = extractvalue %dx.types.ResRet.f32 %2806, 1
  %2809 = extractvalue %dx.types.ResRet.f32 %2806, 2
  br label %2815

; <label>:2810                                    ; preds = %2774
  %2811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %37, float %2800, float %2801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2812 = extractvalue %dx.types.ResRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.ResRet.f32 %2811, 1
  %2814 = extractvalue %dx.types.ResRet.f32 %2811, 2
  br label %2815

; <label>:2815                                    ; preds = %2810, %2805
  %2816 = phi float [ %2807, %2805 ], [ %2812, %2810 ]
  %2817 = phi float [ %2808, %2805 ], [ %2813, %2810 ]
  %2818 = phi float [ %2809, %2805 ], [ %2814, %2810 ]
  %2819 = extractvalue %dx.types.CBufRet.f32 %2777, 2
  %2820 = fmul fast float %2819, %2816
  %2821 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2822 = fsub fast float %2787, %2821
  %2823 = fsub fast float %2822, %2820
  %2824 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2823)  ; FMax(a,b)
  %2825 = fmul fast float %2824, %2817
  %2826 = call float @dx.op.binary.f32(i32 36, float %2818, float %2825)  ; FMin(a,b)
  %2827 = fmul fast float %2826, 0xBFF7154760000000
  %2828 = call float @dx.op.unary.f32(i32 21, float %2827)  ; Exp(value)
  %2829 = fadd fast float %2828, -1.000000e+00
  %2830 = fmul fast float %2829, %2111
  %2831 = fadd fast float %2830, 1.000000e+00
  %2832 = fmul fast float %2776, %2831
  br label %2833

; <label>:2833                                    ; preds = %2815, %2670
  %2834 = phi float [ %2832, %2815 ], [ %2671, %2670 ]
  %2835 = call float @dx.op.binary.f32(i32 36, float %2834, float %2834)  ; FMin(a,b)
  %2836 = call float @dx.op.binary.f32(i32 36, float %2834, float %2835)  ; FMin(a,b)
  %2837 = fcmp fast ogt float %2836, 0.000000e+00
  br i1 %2837, label %2838, label %2862, !dx.controlflow.hints !136

; <label>:2838                                    ; preds = %2833
  %2839 = call float @dx.op.dot3.f32(i32 55, float %2123, float %2124, float %2125, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %2840 = fcmp fast ogt float %2105, 0.000000e+00
  %2841 = select i1 %2840, float 1.000000e+00, float -1.000000e+00
  %2842 = fmul fast float %121, 7.812500e-03
  %2843 = fmul fast float %121, 3.125000e-02
  %2844 = fadd fast float %2843, -3.125000e-02
  %2845 = fmul fast float %2841, 5.000000e-01
  %2846 = fmul fast float %2845, %2839
  %2847 = fmul fast float %2841, %2105
  %2848 = fadd fast float %2842, 4.921875e-01
  %2849 = fadd fast float %2848, %2846
  %2850 = fadd fast float %2842, 0x3FB25F3060000000
  %2851 = fadd fast float %2844, %2847
  %2852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %37, float %2849, float %2850, float %2851, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2853 = extractvalue %dx.types.ResRet.f32 %2852, 0
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = fmul fast float %2834, 0x400921FB60000000
  %2857 = fmul fast float %2856, %2853
  %2858 = fmul fast float %2857, %2855
  %2859 = fmul fast float %2858, %2127
  %2860 = fmul fast float %2858, %2128
  %2861 = fmul fast float %2858, %2129
  br label %2862

; <label>:2862                                    ; preds = %2838, %2833, %2100
  %2863 = phi float [ %2859, %2838 ], [ 0.000000e+00, %2100 ], [ 0.000000e+00, %2833 ]
  %2864 = phi float [ %2860, %2838 ], [ 0.000000e+00, %2100 ], [ 0.000000e+00, %2833 ]
  %2865 = phi float [ %2861, %2838 ], [ 0.000000e+00, %2100 ], [ 0.000000e+00, %2833 ]
  %2866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %35, float %142, float %143, float %144, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2867 = extractvalue %dx.types.ResRet.f32 %2866, 0
  %2868 = extractvalue %dx.types.ResRet.f32 %2866, 1
  %2869 = extractvalue %dx.types.ResRet.f32 %2866, 2
  %2870 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2867)  ; IsNaN(value)
  %2871 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2868)  ; IsNaN(value)
  %2872 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2869)  ; IsNaN(value)
  %2873 = or i1 %2870, %2871
  %2874 = or i1 %2873, %2872
  %2875 = select i1 %2874, float 0.000000e+00, float %2867
  %2876 = select i1 %2874, float 0.000000e+00, float %2868
  %2877 = select i1 %2874, float 0.000000e+00, float %2869
  %2878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.f32 %2878, 1
  %2880 = fmul fast float %2875, %2879
  %2881 = fmul fast float %2876, %2879
  %2882 = fmul fast float %2877, %2879
  %2883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2884 = extractvalue %dx.types.CBufRet.f32 %2883, 3
  %2885 = fmul fast float %2880, %2884
  %2886 = fmul fast float %2881, %2884
  %2887 = fmul fast float %2882, %2884
  %2888 = fadd fast float %2885, %2863
  %2889 = fadd fast float %2886, %2864
  %2890 = fadd fast float %2887, %2865
  br label %2891

; <label>:2891                                    ; preds = %2862, %2093
  %2892 = phi float [ %2102, %2862 ], [ %2094, %2093 ]
  %2893 = phi float [ %2103, %2862 ], [ %2095, %2093 ]
  %2894 = phi float [ %2104, %2862 ], [ %2096, %2093 ]
  %2895 = phi float [ %2888, %2862 ], [ 0.000000e+00, %2093 ]
  %2896 = phi float [ %2889, %2862 ], [ 0.000000e+00, %2093 ]
  %2897 = phi float [ %2890, %2862 ], [ 0.000000e+00, %2093 ]
  %2898 = fmul fast float %2892, %2098
  %2899 = fmul fast float %2893, %2098
  %2900 = fmul fast float %2894, %2098
  %2901 = fmul fast float %2898, %2895
  %2902 = fmul fast float %2899, %2896
  %2903 = fmul fast float %2900, %2897
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.CBufRet.f32 %2904, 2
  %2908 = extractvalue %dx.types.CBufRet.f32 %2904, 3
  %2909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2910 = extractvalue %dx.types.CBufRet.f32 %2909, 0
  %2911 = extractvalue %dx.types.CBufRet.f32 %2909, 1
  %2912 = extractvalue %dx.types.CBufRet.f32 %2909, 2
  %2913 = extractvalue %dx.types.CBufRet.f32 %2909, 3
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 0
  %2916 = extractvalue %dx.types.CBufRet.f32 %2914, 1
  %2917 = extractvalue %dx.types.CBufRet.f32 %2914, 2
  %2918 = extractvalue %dx.types.CBufRet.f32 %2914, 3
  %2919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2919, 0
  %2921 = extractvalue %dx.types.CBufRet.f32 %2919, 1
  %2922 = extractvalue %dx.types.CBufRet.f32 %2919, 2
  %2923 = extractvalue %dx.types.CBufRet.f32 %2919, 3
  %2924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2924, 3
  %2926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2927 = extractvalue %dx.types.CBufRet.f32 %2926, 3
  %2928 = extractvalue %dx.types.CBufRet.f32 %2926, 0
  %2929 = extractvalue %dx.types.CBufRet.f32 %2926, 1
  %2930 = extractvalue %dx.types.CBufRet.f32 %2926, 2
  %2931 = fcmp fast olt float %2930, -5.000000e-01
  %2932 = fmul fast float %205, %204
  %2933 = fadd fast float %2932, %2908
  %2934 = call float @dx.op.dot3.f32(i32 55, float %206, float %207, float %208, float %2905, float %2906, float %2907)  ; Dot3(ax,ay,az,bx,by,bz)
  %2935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2936 = extractvalue %dx.types.CBufRet.i32 %2935, 1
  %2937 = and i32 %2936, 1
  %2938 = icmp ne i32 %2937, 0
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 2
  %2941 = fcmp fast ogt float %2940, 0.000000e+00
  %2942 = and i1 %2938, %2941
  br i1 %2942, label %2943, label %3349, !dx.controlflow.hints !137

; <label>:2943                                    ; preds = %2891
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 3
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 2
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 2
  %2950 = fsub fast float %2947, %2949
  %2951 = and i32 %2936, 2
  %2952 = extractvalue %dx.types.CBufRet.i32 %2935, 0
  %2953 = call i32 @dx.op.binary.i32(i32 40, i32 %2952, i32 3)  ; UMin(a,b)
  %2954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2955 = extractvalue %dx.types.CBufRet.f32 %2954, 0
  %2956 = extractvalue %dx.types.CBufRet.f32 %2954, 1
  %2957 = extractvalue %dx.types.CBufRet.f32 %2948, 0
  %2958 = extractvalue %dx.types.CBufRet.f32 %2948, 1
  %2959 = fsub fast float %2955, %2957
  %2960 = fsub fast float %2956, %2958
  %2961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2962 = extractvalue %dx.types.CBufRet.f32 %2961, 0
  %2963 = fcmp fast ogt float %2962, 0.000000e+00
  %2964 = fsub fast float -0.000000e+00, %2959
  %2965 = fsub fast float -0.000000e+00, %2960
  %2966 = call float @dx.op.dot2.f32(i32 54, float %206, float %207, float %206, float %207)  ; Dot2(ax,ay,bx,by)
  %2967 = call float @dx.op.dot2.f32(i32 54, float %206, float %207, float %2964, float %2965)  ; Dot2(ax,ay,bx,by)
  %2968 = fmul fast float %2967, 2.000000e+00
  %2969 = call float @dx.op.dot2.f32(i32 54, float %2964, float %2965, float %2964, float %2965)  ; Dot2(ax,ay,bx,by)
  %2970 = fmul fast float %2962, %2962
  %2971 = fsub fast float %2969, %2970
  %2972 = fmul fast float %2968, %2968
  %2973 = fmul fast float %2966, 4.000000e+00
  %2974 = fmul fast float %2973, %2971
  %2975 = fsub fast float %2972, %2974
  %2976 = fcmp fast ogt float %2975, 0.000000e+00
  br i1 %2976, label %2977, label %2992, !dx.controlflow.hints !138

; <label>:2977                                    ; preds = %2943
  %2978 = fcmp fast ogt float %2968, 0.000000e+00
  %2979 = call float @dx.op.unary.f32(i32 24, float %2975)  ; Sqrt(value)
  %2980 = fsub fast float -0.000000e+00, %2979
  %2981 = select i1 %2978, float %2979, float %2980
  %2982 = fadd fast float %2981, %2968
  %2983 = fmul float %2982, -5.000000e-01
  %2984 = fdiv fast float %2983, %2966
  %2985 = call float @dx.op.binary.f32(i32 35, float %2984, float 0.000000e+00)  ; FMax(a,b)
  %2986 = call float @dx.op.binary.f32(i32 36, float %2932, float %2985)  ; FMin(a,b)
  %2987 = fdiv fast float %2971, %2983
  %2988 = call float @dx.op.binary.f32(i32 35, float %2987, float 0.000000e+00)  ; FMax(a,b)
  %2989 = call float @dx.op.binary.f32(i32 36, float %2932, float %2988)  ; FMin(a,b)
  %2990 = call float @dx.op.binary.f32(i32 36, float %2986, float %2989)  ; FMin(a,b)
  %2991 = call float @dx.op.binary.f32(i32 35, float %2986, float %2989)  ; FMax(a,b)
  br label %2992

; <label>:2992                                    ; preds = %2977, %2943
  %2993 = phi float [ %2991, %2977 ], [ -1.000000e+00, %2943 ]
  %2994 = phi float [ %2990, %2977 ], [ -1.000000e+00, %2943 ]
  %2995 = phi i1 [ true, %2977 ], [ false, %2943 ]
  %2996 = and i1 %2963, %2995
  br i1 %2996, label %2997, label %2999, !dx.controlflow.hints !139

; <label>:2997                                    ; preds = %2992
  %2998 = fcmp fast oeq float %2994, %2993
  br i1 %2998, label %3302, label %3000, !dx.controlflow.hints !140

; <label>:2999                                    ; preds = %2992
  br i1 %2963, label %3302, label %3000, !dx.controlflow.hints !141

; <label>:3000                                    ; preds = %2999, %2997
  %3001 = phi float [ %2932, %2999 ], [ %2993, %2997 ]
  %3002 = phi float [ 0.000000e+00, %2999 ], [ %2994, %2997 ]
  %3003 = icmp ne i32 %2951, 0
  %3004 = fmul fast float %3001, %208
  %3005 = fadd fast float %3004, %2945
  %3006 = fmul fast float %3005, %3001
  %3007 = select i1 %3003, float 0.000000e+00, float %3006
  %3008 = fcmp fast oeq float %208, 0.000000e+00
  %3009 = fdiv fast float %2950, %208
  %3010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3009)  ; FMax(a,b)
  %3011 = select i1 %3008, float %3001, float %3010
  %3012 = call float @dx.op.binary.f32(i32 36, float %3001, float %3011)  ; FMin(a,b)
  %3013 = fcmp fast ogt float %208, 0.000000e+00
  %3014 = fcmp fast olt float %2950, 0.000000e+00
  br i1 %3013, label %3015, label %3072, !dx.controlflow.hints !142

; <label>:3015                                    ; preds = %3000
  %3016 = icmp eq i32 %2951, 0
  br i1 %3014, label %3017, label %3061, !dx.controlflow.hints !143

; <label>:3017                                    ; preds = %3015
  %3018 = select i1 %3016, float %3001, float 0.000000e+00
  %3019 = fsub fast float -0.000000e+00, %3018
  %3020 = call float @dx.op.unary.f32(i32 6, float %3019)  ; FAbs(value)
  %3021 = fmul fast float %3018, %208
  %3022 = fadd fast float %3021, %2945
  %3023 = fmul fast float %3020, %3022
  %3024 = fsub fast float %3007, %3023
  %3025 = fsub fast float %3001, %3020
  %3026 = select i1 %3016, float %3025, float 0.000000e+00
  %3027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3028 = extractvalue %dx.types.CBufRet.f32 %3027, 0
  %3029 = extractvalue %dx.types.CBufRet.f32 %3027, 1
  %3030 = extractvalue %dx.types.CBufRet.f32 %3027, 2
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.CBufRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.CBufRet.f32 %3031, 2
  %3035 = extractvalue %dx.types.CBufRet.f32 %3031, 3
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 3
  %3038 = call float @dx.op.binary.f32(i32 36, float %3024, float %3037)  ; FMin(a,b)
  %3039 = fmul fast float %3035, %3026
  %3040 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3041 = fsub fast float %3032, %3028
  %3042 = fsub fast float %3033, %3029
  %3043 = fsub fast float %3034, %3030
  %3044 = fmul fast float %3040, %3041
  %3045 = fmul fast float %3040, %3042
  %3046 = fmul fast float %3040, %3043
  %3047 = fadd fast float %3044, %3028
  %3048 = fadd fast float %3045, %3029
  %3049 = fadd fast float %3046, %3030
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.CBufRet.f32 %3050, 1
  %3053 = fadd fast float %3052, %3051
  %3054 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3055 = extractvalue %dx.types.CBufRet.f32 %3050, 2
  %3056 = extractvalue %dx.types.CBufRet.f32 %3050, 3
  %3057 = fadd fast float %3056, %3055
  %3058 = call float @dx.op.unary.f32(i32 7, float %3057)  ; Saturate(value)
  %3059 = fmul fast float %3054, %3038
  %3060 = fmul fast float %3059, %3058
  br label %3302

; <label>:3061                                    ; preds = %3015
  br i1 %3016, label %3062, label %3083, !dx.controlflow.hints !144

; <label>:3062                                    ; preds = %3061
  %3063 = call float @dx.op.binary.f32(i32 36, float %3012, float %3002)  ; FMin(a,b)
  %3064 = fsub fast float %3012, %3063
  %3065 = fsub fast float %3064, %3001
  %3066 = call float @dx.op.unary.f32(i32 6, float %3065)  ; FAbs(value)
  %3067 = fadd fast float %3064, %3001
  %3068 = fmul fast float %3067, %208
  %3069 = fadd fast float %3068, %2945
  %3070 = fmul fast float %3069, %3066
  %3071 = fsub fast float %3007, %3070
  br label %3083

; <label>:3072                                    ; preds = %3000
  br i1 %3014, label %3073, label %3083, !dx.controlflow.hints !145

; <label>:3073                                    ; preds = %3072
  %3074 = call float @dx.op.binary.f32(i32 35, float %3002, float %3012)  ; FMax(a,b)
  %3075 = icmp eq i32 %2951, 0
  %3076 = select i1 %3075, float %3012, float 0.000000e+00
  %3077 = fsub fast float -0.000000e+00, %3076
  %3078 = call float @dx.op.unary.f32(i32 6, float %3077)  ; FAbs(value)
  %3079 = fmul fast float %3076, %208
  %3080 = fadd fast float %3079, %2945
  %3081 = fmul fast float %3078, %3080
  %3082 = fsub fast float %3007, %3081
  br label %3083

; <label>:3083                                    ; preds = %3073, %3072, %3062, %3061
  %3084 = phi float [ %3002, %3061 ], [ %3002, %3062 ], [ %3074, %3073 ], [ %3002, %3072 ]
  %3085 = phi float [ 0.000000e+00, %3061 ], [ %3066, %3062 ], [ %3078, %3073 ], [ 0.000000e+00, %3072 ]
  %3086 = phi float [ %3007, %3061 ], [ %3071, %3062 ], [ %3082, %3073 ], [ %3007, %3072 ]
  %3087 = phi float [ %3012, %3061 ], [ %3012, %3062 ], [ %3001, %3073 ], [ %3001, %3072 ]
  %3088 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 0
  store float -1.000000e+00, float* %3088, align 4, !tbaa !57, !noalias !146
  %3089 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 1
  store float -1.000000e+00, float* %3089, align 4, !tbaa !57, !noalias !146
  %3090 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 2
  store float -1.000000e+00, float* %3090, align 4, !tbaa !57, !noalias !146
  %3091 = getelementptr inbounds [3 x float], [3 x float]* %50, i32 0, i32 0
  store float -1.000000e+00, float* %3091, align 4, !tbaa !57, !noalias !146
  %3092 = getelementptr inbounds [3 x float], [3 x float]* %50, i32 0, i32 1
  store float -1.000000e+00, float* %3092, align 4, !tbaa !57, !noalias !146
  %3093 = getelementptr inbounds [3 x float], [3 x float]* %50, i32 0, i32 2
  store float -1.000000e+00, float* %3093, align 4, !tbaa !57, !noalias !146
  %3094 = icmp sgt i32 %2953, 0
  br i1 %3094, label %3095, label %3156

; <label>:3095                                    ; preds = %3083
  br label %3096

; <label>:3096                                    ; preds = %3145, %3095
  %3097 = phi i32 [ %3146, %3145 ], [ 0, %3095 ]
  %3098 = phi i32 [ %3147, %3145 ], [ 0, %3095 ]
  %3099 = add nuw i32 %3098, 171
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 %3099)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.CBufRet.f32 %3100, 1
  %3103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3104 = extractvalue %dx.types.CBufRet.f32 %3103, 0
  %3105 = extractvalue %dx.types.CBufRet.f32 %3103, 1
  %3106 = fsub fast float %3101, %3104
  %3107 = fsub fast float %3102, %3105
  %3108 = extractvalue %dx.types.CBufRet.f32 %3100, 2
  %3109 = fsub fast float -0.000000e+00, %3106
  %3110 = fsub fast float -0.000000e+00, %3107
  %3111 = call float @dx.op.dot2.f32(i32 54, float %206, float %207, float %3109, float %3110)  ; Dot2(ax,ay,bx,by)
  %3112 = fmul fast float %3111, 2.000000e+00
  %3113 = call float @dx.op.dot2.f32(i32 54, float %3109, float %3110, float %3109, float %3110)  ; Dot2(ax,ay,bx,by)
  %3114 = fmul fast float %3108, %3108
  %3115 = fsub fast float %3113, %3114
  %3116 = fmul fast float %3112, %3112
  %3117 = fmul fast float %2973, %3115
  %3118 = fsub fast float %3116, %3117
  %3119 = fcmp fast ogt float %3118, 0.000000e+00
  br i1 %3119, label %3120, label %3135, !dx.controlflow.hints !138

; <label>:3120                                    ; preds = %3096
  %3121 = fcmp fast ogt float %3112, 0.000000e+00
  %3122 = call float @dx.op.unary.f32(i32 24, float %3118)  ; Sqrt(value)
  %3123 = fsub fast float -0.000000e+00, %3122
  %3124 = select i1 %3121, float %3122, float %3123
  %3125 = fadd fast float %3124, %3112
  %3126 = fmul float %3125, -5.000000e-01
  %3127 = fdiv fast float %3126, %2966
  %3128 = call float @dx.op.binary.f32(i32 35, float %3127, float 0.000000e+00)  ; FMax(a,b)
  %3129 = call float @dx.op.binary.f32(i32 36, float %3001, float %3128)  ; FMin(a,b)
  %3130 = fdiv fast float %3115, %3126
  %3131 = call float @dx.op.binary.f32(i32 35, float %3130, float 0.000000e+00)  ; FMax(a,b)
  %3132 = call float @dx.op.binary.f32(i32 36, float %3001, float %3131)  ; FMin(a,b)
  %3133 = call float @dx.op.binary.f32(i32 36, float %3129, float %3132)  ; FMin(a,b)
  %3134 = call float @dx.op.binary.f32(i32 35, float %3129, float %3132)  ; FMax(a,b)
  br label %3135

; <label>:3135                                    ; preds = %3120, %3096
  %3136 = phi float [ %3134, %3120 ], [ -1.000000e+00, %3096 ]
  %3137 = phi float [ %3133, %3120 ], [ -1.000000e+00, %3096 ]
  %3138 = phi i1 [ true, %3120 ], [ false, %3096 ]
  br i1 %3138, label %3139, label %3145, !dx.controlflow.hints !152

; <label>:3139                                    ; preds = %3135
  %3140 = call float @dx.op.binary.f32(i32 35, float %3084, float %3137)  ; FMax(a,b)
  %3141 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 %3098
  store float %3140, float* %3141, align 4, !tbaa !57, !noalias !146
  %3142 = call float @dx.op.binary.f32(i32 35, float %3084, float %3136)  ; FMax(a,b)
  %3143 = getelementptr inbounds [3 x float], [3 x float]* %50, i32 0, i32 %3098
  store float %3142, float* %3143, align 4, !tbaa !57, !noalias !146
  %3144 = add nsw i32 %3097, 1
  br label %3145

; <label>:3145                                    ; preds = %3139, %3135
  %3146 = phi i32 [ %3144, %3139 ], [ %3097, %3135 ]
  %3147 = add nuw nsw i32 %3098, 1
  %3148 = icmp eq i32 %3147, %2953
  br i1 %3148, label %3149, label %3096

; <label>:3149                                    ; preds = %3145
  %3150 = load float, float* %3090, align 4, !tbaa !57, !alias.scope !153, !noalias !156
  %3151 = load float, float* %3089, align 4, !tbaa !57, !alias.scope !159, !noalias !160
  %3152 = load float, float* %3088, align 4, !tbaa !57, !alias.scope !161, !noalias !162
  %3153 = load float, float* %3093, align 4, !tbaa !57, !alias.scope !163, !noalias !166
  %3154 = load float, float* %3092, align 4, !tbaa !57, !alias.scope !169, !noalias !170
  %3155 = load float, float* %3091, align 4, !tbaa !57, !alias.scope !171, !noalias !172
  br label %3156

; <label>:3156                                    ; preds = %3149, %3083
  %3157 = phi float [ -1.000000e+00, %3083 ], [ %3155, %3149 ]
  %3158 = phi float [ -1.000000e+00, %3083 ], [ %3154, %3149 ]
  %3159 = phi float [ -1.000000e+00, %3083 ], [ %3153, %3149 ]
  %3160 = phi float [ -1.000000e+00, %3083 ], [ %3152, %3149 ]
  %3161 = phi float [ -1.000000e+00, %3083 ], [ %3151, %3149 ]
  %3162 = phi float [ -1.000000e+00, %3083 ], [ %3150, %3149 ]
  %3163 = phi i32 [ 0, %3083 ], [ %3146, %3149 ]
  %3164 = call float @dx.op.binary.f32(i32 36, float %3161, float %3162)  ; FMin(a,b)
  %3165 = call float @dx.op.binary.f32(i32 36, float %3160, float %3164)  ; FMin(a,b)
  %3166 = call float @dx.op.binary.f32(i32 35, float %3160, float %3161)  ; FMax(a,b)
  %3167 = call float @dx.op.binary.f32(i32 36, float %3166, float %3162)  ; FMin(a,b)
  %3168 = call float @dx.op.binary.f32(i32 36, float %3160, float %3161)  ; FMin(a,b)
  %3169 = call float @dx.op.binary.f32(i32 35, float %3168, float %3167)  ; FMax(a,b)
  %3170 = call float @dx.op.binary.f32(i32 35, float %3161, float %3162)  ; FMax(a,b)
  %3171 = call float @dx.op.binary.f32(i32 35, float %3160, float %3170)  ; FMax(a,b)
  store float %3165, float* %3088, align 4, !tbaa !57, !alias.scope !161, !noalias !162
  store float %3169, float* %3089, align 4, !tbaa !57, !alias.scope !159, !noalias !160
  store float %3171, float* %3090, align 4, !tbaa !57, !alias.scope !153, !noalias !156
  %3172 = call float @dx.op.binary.f32(i32 36, float %3158, float %3159)  ; FMin(a,b)
  %3173 = call float @dx.op.binary.f32(i32 36, float %3157, float %3172)  ; FMin(a,b)
  %3174 = call float @dx.op.binary.f32(i32 35, float %3157, float %3158)  ; FMax(a,b)
  %3175 = call float @dx.op.binary.f32(i32 36, float %3174, float %3159)  ; FMin(a,b)
  %3176 = call float @dx.op.binary.f32(i32 36, float %3157, float %3158)  ; FMin(a,b)
  %3177 = call float @dx.op.binary.f32(i32 35, float %3176, float %3175)  ; FMax(a,b)
  %3178 = call float @dx.op.binary.f32(i32 35, float %3158, float %3159)  ; FMax(a,b)
  %3179 = call float @dx.op.binary.f32(i32 35, float %3157, float %3178)  ; FMax(a,b)
  store float %3173, float* %3091, align 4, !tbaa !57, !alias.scope !171, !noalias !172
  store float %3177, float* %3092, align 4, !tbaa !57, !alias.scope !169, !noalias !170
  store float %3179, float* %3093, align 4, !tbaa !57, !alias.scope !163, !noalias !166
  %3180 = sub nsw i32 3, %3163
  %3181 = icmp sgt i32 %3180, 2
  br i1 %3181, label %3182, label %3220, !dx.controlflow.hints !173

; <label>:3182                                    ; preds = %3156
  %3183 = icmp eq i32 %2951, 0
  %3184 = fsub fast float %3001, %3085
  %3185 = select i1 %3183, float %3184, float %3085
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.CBufRet.f32 %3186, 1
  %3189 = extractvalue %dx.types.CBufRet.f32 %3186, 2
  %3190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3191 = extractvalue %dx.types.CBufRet.f32 %3190, 0
  %3192 = extractvalue %dx.types.CBufRet.f32 %3190, 1
  %3193 = extractvalue %dx.types.CBufRet.f32 %3190, 2
  %3194 = extractvalue %dx.types.CBufRet.f32 %3190, 3
  %3195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.f32 %3195, 3
  %3197 = call float @dx.op.binary.f32(i32 36, float %3086, float %3196)  ; FMin(a,b)
  %3198 = fmul fast float %3194, %3185
  %3199 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  %3200 = fsub fast float %3191, %3187
  %3201 = fsub fast float %3192, %3188
  %3202 = fsub fast float %3193, %3189
  %3203 = fmul fast float %3199, %3200
  %3204 = fmul fast float %3199, %3201
  %3205 = fmul fast float %3199, %3202
  %3206 = fadd fast float %3203, %3187
  %3207 = fadd fast float %3204, %3188
  %3208 = fadd fast float %3205, %3189
  %3209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.f32 %3209, 0
  %3211 = extractvalue %dx.types.CBufRet.f32 %3209, 1
  %3212 = fadd fast float %3211, %3210
  %3213 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3214 = extractvalue %dx.types.CBufRet.f32 %3209, 2
  %3215 = extractvalue %dx.types.CBufRet.f32 %3209, 3
  %3216 = fadd fast float %3215, %3214
  %3217 = call float @dx.op.unary.f32(i32 7, float %3216)  ; Saturate(value)
  %3218 = fmul fast float %3213, %3197
  %3219 = fmul fast float %3218, %3217
  br label %3302

; <label>:3220                                    ; preds = %3156
  %3221 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 %3180
  %3222 = load float, float* %3221, align 4, !tbaa !57, !noalias !146
  %3223 = fcmp fast olt float %3222, %3087
  %3224 = icmp sgt i32 %3163, 0
  %3225 = and i1 %3224, %3223
  br i1 %3225, label %3226, label %3263

; <label>:3226                                    ; preds = %3220
  br label %3227

; <label>:3227                                    ; preds = %3256, %3226
  %3228 = phi float [ %3257, %3256 ], [ %3085, %3226 ]
  %3229 = phi float [ %3258, %3256 ], [ %3086, %3226 ]
  %3230 = phi float [ %3238, %3256 ], [ %3222, %3226 ]
  %3231 = phi i32 [ %3235, %3256 ], [ %3180, %3226 ]
  %3232 = getelementptr inbounds [3 x float], [3 x float]* %50, i32 0, i32 %3231
  %3233 = load float, float* %3232, align 4, !tbaa !57, !noalias !146
  %3234 = icmp slt i32 %3231, 2
  %3235 = add nsw i32 %3231, 1
  %3236 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 %3235
  %3237 = load float, float* %3236, align 4, !tbaa !57, !noalias !146
  %3238 = select i1 %3234, float %3237, float %3001
  %3239 = call float @dx.op.binary.f32(i32 36, float %3238, float %3233)  ; FMin(a,b)
  %3240 = call float @dx.op.binary.f32(i32 36, float %3087, float %3239)  ; FMin(a,b)
  %3241 = icmp eq i32 %2951, 0
  %3242 = fadd fast float %3240, %3230
  %3243 = fmul fast float %3242, %208
  %3244 = fadd fast float %3243, %2945
  br i1 %3241, label %3250, label %3245, !dx.controlflow.hints !174

; <label>:3245                                    ; preds = %3227
  %3246 = fsub fast float %3240, %3230
  %3247 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3246)  ; FMax(a,b)
  %3248 = fmul fast float %3247, %3244
  %3249 = fadd fast float %3248, %3229
  br label %3256

; <label>:3250                                    ; preds = %3227
  %3251 = fsub fast float %3230, %3240
  %3252 = call float @dx.op.unary.f32(i32 6, float %3251)  ; FAbs(value)
  %3253 = fadd fast float %3252, %3228
  %3254 = fmul fast float %3252, %3244
  %3255 = fsub fast float %3229, %3254
  br label %3256

; <label>:3256                                    ; preds = %3250, %3245
  %3257 = phi float [ %3247, %3245 ], [ %3253, %3250 ]
  %3258 = phi float [ %3249, %3245 ], [ %3255, %3250 ]
  %3259 = fcmp fast olt float %3238, %3087
  %3260 = icmp slt i32 %3235, 3
  %3261 = and i1 %3260, %3259
  br i1 %3261, label %3227, label %3262

; <label>:3262                                    ; preds = %3256
  br label %3263

; <label>:3263                                    ; preds = %3262, %3220
  %3264 = phi float [ %3085, %3220 ], [ %3257, %3262 ]
  %3265 = phi float [ %3086, %3220 ], [ %3258, %3262 ]
  %3266 = fsub fast float %3001, %3264
  %3267 = select i1 %3003, float %3264, float %3266
  %3268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3269 = extractvalue %dx.types.CBufRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.CBufRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.CBufRet.f32 %3268, 2
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3274 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3275 = extractvalue %dx.types.CBufRet.f32 %3272, 2
  %3276 = extractvalue %dx.types.CBufRet.f32 %3272, 3
  %3277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.f32 %3277, 3
  %3279 = call float @dx.op.binary.f32(i32 36, float %3265, float %3278)  ; FMin(a,b)
  %3280 = fmul fast float %3276, %3267
  %3281 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3282 = fsub fast float %3273, %3269
  %3283 = fsub fast float %3274, %3270
  %3284 = fsub fast float %3275, %3271
  %3285 = fmul fast float %3281, %3282
  %3286 = fmul fast float %3281, %3283
  %3287 = fmul fast float %3281, %3284
  %3288 = fadd fast float %3285, %3269
  %3289 = fadd fast float %3286, %3270
  %3290 = fadd fast float %3287, %3271
  %3291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3292 = extractvalue %dx.types.CBufRet.f32 %3291, 0
  %3293 = extractvalue %dx.types.CBufRet.f32 %3291, 1
  %3294 = fadd fast float %3293, %3292
  %3295 = call float @dx.op.unary.f32(i32 7, float %3294)  ; Saturate(value)
  %3296 = extractvalue %dx.types.CBufRet.f32 %3291, 2
  %3297 = extractvalue %dx.types.CBufRet.f32 %3291, 3
  %3298 = fadd fast float %3297, %3296
  %3299 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  %3300 = fmul fast float %3295, %3279
  %3301 = fmul fast float %3300, %3299
  br label %3302

; <label>:3302                                    ; preds = %3263, %3182, %3017, %2999, %2997
  %3303 = phi float [ %3026, %3017 ], [ %3185, %3182 ], [ %3267, %3263 ], [ 0.000000e+00, %2997 ], [ 0.000000e+00, %2999 ]
  %3304 = phi float [ %3060, %3017 ], [ %3219, %3182 ], [ %3301, %3263 ], [ 0.000000e+00, %2997 ], [ 0.000000e+00, %2999 ]
  %3305 = phi float [ %3047, %3017 ], [ %3206, %3182 ], [ %3288, %3263 ], [ 0.000000e+00, %2997 ], [ 0.000000e+00, %2999 ]
  %3306 = phi float [ %3048, %3017 ], [ %3207, %3182 ], [ %3289, %3263 ], [ 0.000000e+00, %2997 ], [ 0.000000e+00, %2999 ]
  %3307 = phi float [ %3049, %3017 ], [ %3208, %3182 ], [ %3290, %3263 ], [ 0.000000e+00, %2997 ], [ 0.000000e+00, %2999 ]
  %3308 = fmul fast float %2940, %3304
  %3309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3309, 2
  %3311 = fsub fast float %2947, %3310
  %3312 = fcmp fast olt float %3308, -2.000000e+01
  %3313 = call float @dx.op.unary.f32(i32 21, float %3308)  ; Exp(value)
  %3314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3314, 2
  %3316 = extractvalue %dx.types.CBufRet.f32 %3314, 3
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 2
  %3319 = fmul fast float %3316, %3311
  %3320 = call float @dx.op.unary.f32(i32 7, float %3319)  ; Saturate(value)
  %3321 = fsub fast float 1.000000e+00, %3320
  %3322 = fmul fast float %208, 5.000000e-01
  %3323 = fadd fast float %3322, 5.000000e-01
  %3324 = call float @dx.op.unary.f32(i32 7, float %3323)  ; Saturate(value)
  %3325 = fsub fast float 1.000000e+00, %3324
  %3326 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3321)  ; FMax(a,b)
  %3327 = fdiv fast float %3325, %3326
  %3328 = fsub fast float %3311, %188
  %3329 = call float @dx.op.unary.f32(i32 6, float %3328)  ; FAbs(value)
  %3330 = fmul fast float %3329, %3315
  %3331 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  %3332 = fsub fast float 1.000000e+00, %3330
  %3333 = fmul fast float %3332, %3331
  %3334 = fadd fast float %3333, %3330
  %3335 = fmul fast float %3318, %3311
  %3336 = call float @dx.op.unary.f32(i32 7, float %3335)  ; Saturate(value)
  %3337 = fsub fast float 1.000000e+00, %3334
  %3338 = fmul fast float %3337, %3336
  %3339 = fadd fast float %3338, %3334
  %3340 = call float @dx.op.unary.f32(i32 7, float %3339)  ; Saturate(value)
  %3341 = fadd fast float %3313, -1.000000e+00
  %3342 = select i1 %3312, float -1.000000e+00, float %3341
  %3343 = fmul fast float %3340, %3342
  %3344 = fadd fast float %3343, 1.000000e+00
  %3345 = fsub fast float -0.000000e+00, %3343
  %3346 = fmul fast float %3305, %3345
  %3347 = fmul fast float %3306, %3345
  %3348 = fmul fast float %3307, %3345
  br label %3349

; <label>:3349                                    ; preds = %3302, %2891
  %3350 = phi float [ %3303, %3302 ], [ 0.000000e+00, %2891 ]
  %3351 = phi float [ %3344, %3302 ], [ 1.000000e+00, %2891 ]
  %3352 = phi float [ %3346, %3302 ], [ 0.000000e+00, %2891 ]
  %3353 = phi float [ %3347, %3302 ], [ 0.000000e+00, %2891 ]
  %3354 = phi float [ %3348, %3302 ], [ 0.000000e+00, %2891 ]
  %3355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.f32 %3355, 1
  %3357 = fsub fast float 1.000000e+00, %3351
  %3358 = fmul fast float %3357, %2933
  %3359 = fmul fast float %3358, %3356
  %3360 = fsub fast float %2933, %3359
  br i1 %2931, label %3361, label %3390, !dx.controlflow.hints !175

; <label>:3361                                    ; preds = %3349
  %3362 = fmul fast float %2934, %2928
  %3363 = fadd fast float %3362, %2929
  %3364 = call float @dx.op.unary.f32(i32 7, float %3363)  ; Saturate(value)
  %3365 = fmul fast float %2910, %3360
  %3366 = fsub fast float -0.000000e+00, %3365
  %3367 = fmul fast float %2911, %3360
  %3368 = fsub fast float -0.000000e+00, %3367
  %3369 = call float @dx.op.unary.f32(i32 21, float %3366)  ; Exp(value)
  %3370 = call float @dx.op.unary.f32(i32 21, float %3368)  ; Exp(value)
  %3371 = call float @dx.op.binary.f32(i32 35, float %2918, float %3369)  ; FMax(a,b)
  %3372 = call float @dx.op.binary.f32(i32 35, float %2918, float %3370)  ; FMax(a,b)
  %3373 = fsub fast float %3372, %3371
  %3374 = fmul fast float %3373, %3364
  %3375 = fadd fast float %3374, %3371
  %3376 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3377 = fsub fast float %2915, %2920
  %3378 = fsub fast float %2916, %2921
  %3379 = fsub fast float %2917, %2922
  %3380 = fmul fast float %3364, %3377
  %3381 = fmul fast float %3364, %3378
  %3382 = fmul fast float %3364, %3379
  %3383 = fadd fast float %3380, %2920
  %3384 = fadd fast float %3381, %2921
  %3385 = fadd fast float %3382, %2922
  %3386 = fsub fast float 1.000000e+00, %3376
  %3387 = fmul fast float %3386, %3383
  %3388 = fmul fast float %3386, %3384
  %3389 = fmul fast float %3386, %3385
  br label %3449

; <label>:3390                                    ; preds = %3349
  %3391 = fmul fast float %3360, %2927
  %3392 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  %3393 = fsub fast float 2.000000e+00, %3392
  %3394 = fmul fast float %3392, 9.921875e-01
  %3395 = fmul fast float %3394, %3393
  %3396 = fadd fast float %3395, 3.906250e-03
  %3397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %3396, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3399 = fsub fast float %3392, %3398
  %3400 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3399)  ; FMax(a,b)
  %3401 = fmul fast float %2913, %188
  %3402 = call float @dx.op.unary.f32(i32 6, float %3401)  ; FAbs(value)
  %3403 = fcmp fast ogt float %3402, 0x3EB0C6F7A0000000
  br i1 %3403, label %3404, label %3410, !dx.controlflow.hints !176

; <label>:3404                                    ; preds = %3390
  %3405 = fmul fast float %3401, 0xBFF7154760000000
  %3406 = call float @dx.op.unary.f32(i32 21, float %3405)  ; Exp(value)
  %3407 = fsub fast float 1.000000e+00, %3406
  %3408 = fdiv fast float %3407, %3401
  %3409 = fmul fast float %3408, %2923
  br label %3410

; <label>:3410                                    ; preds = %3404, %3390
  %3411 = phi float [ %3409, %3404 ], [ %2923, %3390 ]
  %3412 = fadd fast float %3411, %2925
  %3413 = fmul fast float %3412, %3400
  %3414 = fmul fast float %2910, %3413
  %3415 = fsub fast float -0.000000e+00, %3414
  %3416 = fmul fast float %2911, %3413
  %3417 = fsub fast float -0.000000e+00, %3416
  %3418 = fmul fast float %2912, %3413
  %3419 = fsub fast float -0.000000e+00, %3418
  %3420 = call float @dx.op.unary.f32(i32 21, float %3415)  ; Exp(value)
  %3421 = call float @dx.op.unary.f32(i32 21, float %3417)  ; Exp(value)
  %3422 = call float @dx.op.unary.f32(i32 21, float %3419)  ; Exp(value)
  %3423 = fmul fast float %2934, %2934
  %3424 = fadd fast float %3423, 1.000000e+00
  %3425 = fmul fast float %3424, 0x3FAE8EC8A0000000
  %3426 = fmul fast float %3425, %2920
  %3427 = fmul fast float %3425, %2921
  %3428 = fmul fast float %3425, %2922
  %3429 = fmul fast float %2934, %2918
  %3430 = fsub fast float 1.000000e+00, %3429
  %3431 = fmul fast float %2918, %2918
  %3432 = fsub fast float 1.000000e+00, %3431
  %3433 = fmul fast float %3432, 0x3FB45F3060000000
  %3434 = fmul fast float %3430, %3430
  %3435 = fdiv fast float 1.000000e+00, %3434
  %3436 = fmul fast float %3433, %3435
  %3437 = fmul fast float %3436, %2915
  %3438 = fmul fast float %3436, %2916
  %3439 = fmul fast float %3436, %2917
  %3440 = fadd fast float %3437, %3426
  %3441 = fadd fast float %3438, %3427
  %3442 = fadd fast float %3439, %3428
  %3443 = fsub fast float 1.000000e+00, %3420
  %3444 = fsub fast float 1.000000e+00, %3421
  %3445 = fsub fast float 1.000000e+00, %3422
  %3446 = fmul fast float %3440, %3443
  %3447 = fmul fast float %3441, %3444
  %3448 = fmul fast float %3442, %3445
  br label %3449

; <label>:3449                                    ; preds = %3410, %3361
  %3450 = phi float [ %3387, %3361 ], [ %3446, %3410 ]
  %3451 = phi float [ %3388, %3361 ], [ %3447, %3410 ]
  %3452 = phi float [ %3389, %3361 ], [ %3448, %3410 ]
  %3453 = phi float [ %3376, %3361 ], [ %3420, %3410 ]
  %3454 = phi float [ %3376, %3361 ], [ %3421, %3410 ]
  %3455 = phi float [ %3376, %3361 ], [ %3422, %3410 ]
  br i1 %2942, label %3456, label %3654, !dx.controlflow.hints !177

; <label>:3456                                    ; preds = %3449
  %3457 = extractvalue %dx.types.CBufRet.f32 %3355, 0
  %3458 = fmul fast float %3457, %3357
  %3459 = fsub fast float %3352, %3450
  %3460 = fsub fast float %3353, %3451
  %3461 = fsub fast float %3354, %3452
  %3462 = fmul fast float %3458, %3459
  %3463 = fmul fast float %3458, %3460
  %3464 = fmul fast float %3458, %3461
  %3465 = fadd fast float %3462, %3450
  %3466 = fadd fast float %3463, %3451
  %3467 = fadd fast float %3464, %3452
  %3468 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3453)  ; FMax(a,b)
  %3469 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3454)  ; FMax(a,b)
  %3470 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3455)  ; FMax(a,b)
  %3471 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3351)  ; FMax(a,b)
  %3472 = call float @dx.op.binary.f32(i32 35, float %3350, float %3360)  ; FMax(a,b)
  %3473 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3472)  ; FMax(a,b)
  %3474 = fdiv fast float %3350, %3473
  %3475 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3476 = fdiv fast float %3360, %3473
  %3477 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3478 = fcmp fast une float %3471, 1.000000e+00
  br i1 %3478, label %3479, label %3492, !dx.controlflow.hints !178

; <label>:3479                                    ; preds = %3456
  %3480 = call float @dx.op.unary.f32(i32 23, float %3471)  ; Log(value)
  %3481 = fmul fast float %3480, 0x3FE62E4300000000
  %3482 = fmul fast float %3352, %3481
  %3483 = fsub fast float -0.000000e+00, %3482
  %3484 = fmul fast float %3353, %3481
  %3485 = fsub fast float -0.000000e+00, %3484
  %3486 = fmul fast float %3354, %3481
  %3487 = fsub fast float -0.000000e+00, %3486
  %3488 = fsub fast float 1.000000e+00, %3471
  %3489 = fdiv fast float %3483, %3488
  %3490 = fdiv fast float %3485, %3488
  %3491 = fdiv fast float %3487, %3488
  br label %3492

; <label>:3492                                    ; preds = %3479, %3456
  %3493 = phi float [ %3489, %3479 ], [ %3352, %3456 ]
  %3494 = phi float [ %3490, %3479 ], [ %3353, %3456 ]
  %3495 = phi float [ %3491, %3479 ], [ %3354, %3456 ]
  %3496 = phi float [ %3481, %3479 ], [ 0.000000e+00, %3456 ]
  %3497 = fcmp fast une float %3468, 1.000000e+00
  br i1 %3497, label %3498, label %3505, !dx.controlflow.hints !179

; <label>:3498                                    ; preds = %3492
  %3499 = call float @dx.op.unary.f32(i32 23, float %3468)  ; Log(value)
  %3500 = fmul fast float %3499, 0x3FE62E4300000000
  %3501 = fmul fast float %3465, %3500
  %3502 = fsub fast float -0.000000e+00, %3501
  %3503 = fsub fast float 1.000000e+00, %3468
  %3504 = fdiv fast float %3502, %3503
  br label %3505

; <label>:3505                                    ; preds = %3498, %3492
  %3506 = phi float [ %3504, %3498 ], [ %3465, %3492 ]
  %3507 = phi float [ %3500, %3498 ], [ 0.000000e+00, %3492 ]
  %3508 = fcmp fast une float %3469, 1.000000e+00
  br i1 %3508, label %3509, label %3516, !dx.controlflow.hints !179

; <label>:3509                                    ; preds = %3505
  %3510 = call float @dx.op.unary.f32(i32 23, float %3469)  ; Log(value)
  %3511 = fmul fast float %3510, 0x3FE62E4300000000
  %3512 = fmul fast float %3466, %3511
  %3513 = fsub fast float -0.000000e+00, %3512
  %3514 = fsub fast float 1.000000e+00, %3469
  %3515 = fdiv fast float %3513, %3514
  br label %3516

; <label>:3516                                    ; preds = %3509, %3505
  %3517 = phi float [ %3515, %3509 ], [ %3466, %3505 ]
  %3518 = phi float [ %3511, %3509 ], [ 0.000000e+00, %3505 ]
  %3519 = fcmp fast une float %3470, 1.000000e+00
  br i1 %3519, label %3520, label %3527, !dx.controlflow.hints !179

; <label>:3520                                    ; preds = %3516
  %3521 = call float @dx.op.unary.f32(i32 23, float %3470)  ; Log(value)
  %3522 = fmul fast float %3521, 0x3FE62E4300000000
  %3523 = fmul fast float %3467, %3522
  %3524 = fsub fast float -0.000000e+00, %3523
  %3525 = fsub fast float 1.000000e+00, %3470
  %3526 = fdiv fast float %3524, %3525
  br label %3527

; <label>:3527                                    ; preds = %3520, %3516
  %3528 = phi float [ %3526, %3520 ], [ %3467, %3516 ]
  %3529 = phi float [ %3522, %3520 ], [ 0.000000e+00, %3516 ]
  %3530 = fmul fast float %3493, %3477
  %3531 = fmul fast float %3494, %3477
  %3532 = fmul fast float %3495, %3477
  %3533 = fmul fast float %3496, %3477
  %3534 = fmul fast float %3506, %3475
  %3535 = fmul fast float %3517, %3475
  %3536 = fmul fast float %3528, %3475
  %3537 = fmul fast float %3507, %3475
  %3538 = fmul fast float %3518, %3475
  %3539 = fmul fast float %3529, %3475
  %3540 = fadd fast float %3534, %3530
  %3541 = fadd fast float %3535, %3531
  %3542 = fadd fast float %3536, %3532
  %3543 = fadd fast float %3537, %3533
  %3544 = fadd fast float %3538, %3533
  %3545 = fadd fast float %3539, %3533
  %3546 = fcmp fast une float %3543, 0.000000e+00
  br i1 %3546, label %3547, label %3554, !dx.controlflow.hints !180

; <label>:3547                                    ; preds = %3527
  %3548 = fmul fast float %3543, 0x3FF7154760000000
  %3549 = call float @dx.op.unary.f32(i32 21, float %3548)  ; Exp(value)
  %3550 = fsub fast float 1.000000e+00, %3549
  %3551 = fmul fast float %3540, %3550
  %3552 = fsub fast float -0.000000e+00, %3551
  %3553 = fdiv fast float %3552, %3543
  br label %3554

; <label>:3554                                    ; preds = %3547, %3527
  %3555 = phi float [ %3549, %3547 ], [ 1.000000e+00, %3527 ]
  %3556 = phi float [ %3553, %3547 ], [ %3540, %3527 ]
  %3557 = fcmp fast une float %3544, 0.000000e+00
  br i1 %3557, label %3558, label %3565, !dx.controlflow.hints !180

; <label>:3558                                    ; preds = %3554
  %3559 = fmul fast float %3544, 0x3FF7154760000000
  %3560 = call float @dx.op.unary.f32(i32 21, float %3559)  ; Exp(value)
  %3561 = fsub fast float 1.000000e+00, %3560
  %3562 = fmul fast float %3541, %3561
  %3563 = fsub fast float -0.000000e+00, %3562
  %3564 = fdiv fast float %3563, %3544
  br label %3565

; <label>:3565                                    ; preds = %3558, %3554
  %3566 = phi float [ %3560, %3558 ], [ 1.000000e+00, %3554 ]
  %3567 = phi float [ %3564, %3558 ], [ %3541, %3554 ]
  %3568 = fcmp fast une float %3545, 0.000000e+00
  br i1 %3568, label %3569, label %3576, !dx.controlflow.hints !180

; <label>:3569                                    ; preds = %3565
  %3570 = fmul fast float %3545, 0x3FF7154760000000
  %3571 = call float @dx.op.unary.f32(i32 21, float %3570)  ; Exp(value)
  %3572 = fsub fast float 1.000000e+00, %3571
  %3573 = fmul fast float %3542, %3572
  %3574 = fsub fast float -0.000000e+00, %3573
  %3575 = fdiv fast float %3574, %3545
  br label %3576

; <label>:3576                                    ; preds = %3569, %3565
  %3577 = phi float [ %3571, %3569 ], [ 1.000000e+00, %3565 ]
  %3578 = phi float [ %3575, %3569 ], [ %3542, %3565 ]
  %3579 = fcmp fast ogt float %3475, %3477
  br i1 %3579, label %3580, label %3600, !dx.controlflow.hints !181

; <label>:3580                                    ; preds = %3576
  %3581 = fsub fast float 1.000000e+00, %3477
  %3582 = fmul fast float %3493, %3581
  %3583 = fmul fast float %3494, %3581
  %3584 = fmul fast float %3495, %3581
  %3585 = fmul fast float %3496, %3581
  %3586 = fcmp fast une float %3585, 0.000000e+00
  br i1 %3586, label %3587, label %3638, !dx.controlflow.hints !182

; <label>:3587                                    ; preds = %3580
  %3588 = fmul fast float %3585, 0x3FF7154760000000
  %3589 = call float @dx.op.unary.f32(i32 21, float %3588)  ; Exp(value)
  %3590 = fsub fast float 1.000000e+00, %3589
  %3591 = fmul fast float %3582, %3590
  %3592 = fsub fast float -0.000000e+00, %3591
  %3593 = fmul fast float %3583, %3590
  %3594 = fsub fast float -0.000000e+00, %3593
  %3595 = fmul fast float %3584, %3590
  %3596 = fsub fast float -0.000000e+00, %3595
  %3597 = fdiv fast float %3592, %3585
  %3598 = fdiv fast float %3594, %3585
  %3599 = fdiv fast float %3596, %3585
  br label %3638

; <label>:3600                                    ; preds = %3576
  %3601 = fsub fast float 1.000000e+00, %3475
  %3602 = fmul fast float %3506, %3601
  %3603 = fmul fast float %3517, %3601
  %3604 = fmul fast float %3528, %3601
  %3605 = fmul fast float %3507, %3601
  %3606 = fmul fast float %3518, %3601
  %3607 = fmul fast float %3529, %3601
  %3608 = fcmp fast une float %3605, 0.000000e+00
  br i1 %3608, label %3609, label %3616, !dx.controlflow.hints !180

; <label>:3609                                    ; preds = %3600
  %3610 = fmul fast float %3605, 0x3FF7154760000000
  %3611 = call float @dx.op.unary.f32(i32 21, float %3610)  ; Exp(value)
  %3612 = fsub fast float 1.000000e+00, %3611
  %3613 = fmul fast float %3602, %3612
  %3614 = fsub fast float -0.000000e+00, %3613
  %3615 = fdiv fast float %3614, %3605
  br label %3616

; <label>:3616                                    ; preds = %3609, %3600
  %3617 = phi float [ %3615, %3609 ], [ %3602, %3600 ]
  %3618 = phi float [ %3611, %3609 ], [ 1.000000e+00, %3600 ]
  %3619 = fcmp fast une float %3606, 0.000000e+00
  br i1 %3619, label %3620, label %3627, !dx.controlflow.hints !180

; <label>:3620                                    ; preds = %3616
  %3621 = fmul fast float %3606, 0x3FF7154760000000
  %3622 = call float @dx.op.unary.f32(i32 21, float %3621)  ; Exp(value)
  %3623 = fsub fast float 1.000000e+00, %3622
  %3624 = fmul fast float %3603, %3623
  %3625 = fsub fast float -0.000000e+00, %3624
  %3626 = fdiv fast float %3625, %3606
  br label %3627

; <label>:3627                                    ; preds = %3620, %3616
  %3628 = phi float [ %3626, %3620 ], [ %3603, %3616 ]
  %3629 = phi float [ %3622, %3620 ], [ 1.000000e+00, %3616 ]
  %3630 = fcmp fast une float %3607, 0.000000e+00
  br i1 %3630, label %3631, label %3638, !dx.controlflow.hints !180

; <label>:3631                                    ; preds = %3627
  %3632 = fmul fast float %3607, 0x3FF7154760000000
  %3633 = call float @dx.op.unary.f32(i32 21, float %3632)  ; Exp(value)
  %3634 = fsub fast float 1.000000e+00, %3633
  %3635 = fmul fast float %3604, %3634
  %3636 = fsub fast float -0.000000e+00, %3635
  %3637 = fdiv fast float %3636, %3607
  br label %3638

; <label>:3638                                    ; preds = %3631, %3627, %3587, %3580
  %3639 = phi float [ %3637, %3631 ], [ %3599, %3587 ], [ %3584, %3580 ], [ %3604, %3627 ]
  %3640 = phi float [ %3628, %3631 ], [ %3598, %3587 ], [ %3583, %3580 ], [ %3628, %3627 ]
  %3641 = phi float [ %3617, %3631 ], [ %3597, %3587 ], [ %3582, %3580 ], [ %3617, %3627 ]
  %3642 = phi float [ %3633, %3631 ], [ %3589, %3587 ], [ 1.000000e+00, %3580 ], [ 1.000000e+00, %3627 ]
  %3643 = phi float [ %3629, %3631 ], [ %3589, %3587 ], [ 1.000000e+00, %3580 ], [ %3629, %3627 ]
  %3644 = phi float [ %3618, %3631 ], [ %3589, %3587 ], [ 1.000000e+00, %3580 ], [ %3618, %3627 ]
  %3645 = fmul fast float %3644, %3556
  %3646 = fmul fast float %3643, %3567
  %3647 = fmul fast float %3642, %3578
  %3648 = fadd fast float %3645, %3641
  %3649 = fadd fast float %3646, %3640
  %3650 = fadd fast float %3647, %3639
  %3651 = fmul fast float %3644, %3555
  %3652 = fmul fast float %3643, %3566
  %3653 = fmul fast float %3642, %3577
  br label %3654

; <label>:3654                                    ; preds = %3638, %3449
  %3655 = phi float [ %3653, %3638 ], [ %3455, %3449 ]
  %3656 = phi float [ %3652, %3638 ], [ %3454, %3449 ]
  %3657 = phi float [ %3651, %3638 ], [ %3453, %3449 ]
  %3658 = phi float [ %3650, %3638 ], [ %3452, %3449 ]
  %3659 = phi float [ %3649, %3638 ], [ %3451, %3449 ]
  %3660 = phi float [ %3648, %3638 ], [ %3450, %3449 ]
  %3661 = fmul fast float %2901, %3657
  %3662 = fmul fast float %2902, %3656
  %3663 = fmul fast float %2903, %3655
  %3664 = fmul fast float %2098, 0xBFF7154760000000
  %3665 = call float @dx.op.unary.f32(i32 21, float %3664)  ; Exp(value)
  %3666 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3667 = fsub fast float 1.000000e+00, %3666
  %3668 = fmul fast float %3667, %3660
  %3669 = fmul fast float %3667, %3659
  %3670 = fmul fast float %3667, %3658
  %3671 = fadd fast float %3668, %3661
  %3672 = fadd fast float %3669, %3662
  %3673 = fadd fast float %3670, %3663
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 0
  %3676 = fmul fast float %3675, %3671
  %3677 = fmul fast float %3672, %3675
  %3678 = fmul fast float %3673, %3675
  %3679 = fmul fast float %3677, 5.000000e-01
  %3680 = fadd fast float %3673, %3671
  %3681 = fmul fast float %3675, %3680
  %3682 = fmul fast float %3681, 2.500000e-01
  %3683 = fadd fast float %3682, %3679
  %3684 = call float @dx.op.unary.f32(i32 23, float %3683)  ; Log(value)
  %3685 = fmul fast float %3684, 0x3FE62E4300000000
  %3686 = fmul fast float %3685, %3685
  store float %212, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  %3687 = fmul fast float %3685, %212
  store float %3687, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  %3688 = fmul fast float %3686, %212
  store float %3688, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3689 = load float, float addrspace(3)* %219, align 4, !tbaa !57, !noalias !61
  %3690 = fadd fast float %3689, %212
  %3691 = load float, float addrspace(3)* %222, align 4, !tbaa !57, !noalias !61
  %3692 = fadd fast float %3691, %3685
  %3693 = load float, float addrspace(3)* %225, align 4, !tbaa !57, !noalias !61
  %3694 = fadd fast float %3693, %3686
  store float %3690, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  store float %3692, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  store float %3694, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3695 = load float, float addrspace(3)* %229, align 4, !tbaa !57, !noalias !61
  %3696 = fadd fast float %3695, %3690
  %3697 = load float, float addrspace(3)* %232, align 4, !tbaa !57, !noalias !61
  %3698 = fadd fast float %3697, %3692
  %3699 = load float, float addrspace(3)* %235, align 4, !tbaa !57, !noalias !61
  %3700 = fadd fast float %3699, %3694
  store float %3696, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  store float %3698, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  store float %3700, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3701 = load float, float addrspace(3)* %239, align 4, !tbaa !57, !noalias !61
  %3702 = fadd fast float %3701, %3696
  %3703 = load float, float addrspace(3)* %242, align 4, !tbaa !57, !noalias !61
  %3704 = fadd fast float %3703, %3698
  %3705 = fdiv fast float %3704, %3702
  br i1 %250, label %3706, label %3714, !dx.controlflow.hints !65

; <label>:3706                                    ; preds = %3654
  %3707 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %238
  %3708 = load float, float addrspace(3)* %3707, align 4, !tbaa !57, !noalias !61
  %3709 = fadd fast float %3708, %3700
  %3710 = fdiv fast float %3709, %3702
  %3711 = lshr i32 %71, 1
  %3712 = lshr i32 %72, 1
  %3713 = lshr i32 %73, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3711, i32 %3712, i32 %3713, float %3705, float %3710, float %3705, float %3705, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3714

; <label>:3714                                    ; preds = %3706, %3654
  br i1 %82, label %3749, label %3715, !dx.controlflow.hints !66

; <label>:3715                                    ; preds = %3714
  %3716 = fadd fast float %121, 0x3FE3C6EF40000000
  %3717 = call float @dx.op.unary.f32(i32 22, float %3716)  ; Frc(value)
  %3718 = call float @dx.op.unary.f32(i32 23, float %3676)  ; Log(value)
  %3719 = fadd fast float %3718, -7.000000e+00
  %3720 = call float @dx.op.unary.f32(i32 21, float %3719)  ; Exp(value)
  %3721 = fmul fast float %3717, 2.000000e+00
  %3722 = fadd fast float %3721, -1.000000e+00
  %3723 = fmul fast float %3720, %3722
  %3724 = fcmp fast ogt float %3676, 0.000000e+00
  %3725 = select i1 %3724, float %3723, float 0.000000e+00
  %3726 = fadd fast float %3725, %3676
  %3727 = fadd fast float %121, 0x3FF3C6EF40000000
  %3728 = call float @dx.op.unary.f32(i32 22, float %3727)  ; Frc(value)
  %3729 = call float @dx.op.unary.f32(i32 23, float %3677)  ; Log(value)
  %3730 = fadd fast float %3729, -7.000000e+00
  %3731 = call float @dx.op.unary.f32(i32 21, float %3730)  ; Exp(value)
  %3732 = fmul fast float %3728, 2.000000e+00
  %3733 = fadd fast float %3732, -1.000000e+00
  %3734 = fmul fast float %3731, %3733
  %3735 = fcmp fast ogt float %3677, 0.000000e+00
  %3736 = select i1 %3735, float %3734, float 0.000000e+00
  %3737 = fadd fast float %3736, %3677
  %3738 = fadd fast float %121, 0x3FFDAA66E0000000
  %3739 = call float @dx.op.unary.f32(i32 22, float %3738)  ; Frc(value)
  %3740 = call float @dx.op.unary.f32(i32 23, float %3678)  ; Log(value)
  %3741 = fadd fast float %3740, -6.000000e+00
  %3742 = call float @dx.op.unary.f32(i32 21, float %3741)  ; Exp(value)
  %3743 = fmul fast float %3739, 2.000000e+00
  %3744 = fadd fast float %3743, -1.000000e+00
  %3745 = fmul fast float %3742, %3744
  %3746 = fcmp fast ogt float %3678, 0.000000e+00
  %3747 = select i1 %3746, float %3745, float 0.000000e+00
  %3748 = fadd fast float %3747, %3678
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %71, i32 %72, i32 %73, float %3726, float %3737, float %3748, float %3726, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3749

; <label>:3749                                    ; preds = %3715, %3714
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = fmul fast float %3751, %2098
  %3753 = fmul fast float %3752, 5.000000e-01
  %3754 = fadd fast float %2098, %2098
  %3755 = fmul fast float %3751, %3754
  %3756 = fmul fast float %3755, 2.500000e-01
  %3757 = fadd fast float %3756, %3753
  %3758 = fmul fast float %3757, %3757
  store float %212, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  %3759 = fmul fast float %3757, %212
  store float %3759, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  %3760 = fmul fast float %3758, %212
  store float %3760, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3761 = load float, float addrspace(3)* %219, align 4, !tbaa !57, !noalias !61
  %3762 = fadd fast float %3761, %212
  %3763 = load float, float addrspace(3)* %222, align 4, !tbaa !57, !noalias !61
  %3764 = fadd fast float %3757, %3763
  %3765 = load float, float addrspace(3)* %225, align 4, !tbaa !57, !noalias !61
  %3766 = fadd fast float %3758, %3765
  store float %3762, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  store float %3764, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  store float %3766, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3767 = load float, float addrspace(3)* %229, align 4, !tbaa !57, !noalias !61
  %3768 = fadd fast float %3767, %3762
  %3769 = load float, float addrspace(3)* %232, align 4, !tbaa !57, !noalias !61
  %3770 = fadd fast float %3769, %3764
  %3771 = load float, float addrspace(3)* %235, align 4, !tbaa !57, !noalias !61
  %3772 = fadd fast float %3771, %3766
  store float %3768, float addrspace(3)* %213, align 4, !tbaa !57, !noalias !61
  store float %3770, float addrspace(3)* %215, align 4, !tbaa !57, !noalias !61
  store float %3772, float addrspace(3)* %217, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3773 = load float, float addrspace(3)* %239, align 4, !tbaa !57, !noalias !61
  %3774 = fadd fast float %3773, %3768
  %3775 = load float, float addrspace(3)* %242, align 4, !tbaa !57, !noalias !61
  %3776 = fadd fast float %3775, %3770
  %3777 = fdiv fast float %3776, %3774
  br i1 %250, label %3778, label %3786, !dx.controlflow.hints !67

; <label>:3778                                    ; preds = %3749
  %3779 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %238
  %3780 = load float, float addrspace(3)* %3779, align 4, !tbaa !57, !noalias !61
  %3781 = fadd fast float %3780, %3772
  %3782 = fdiv fast float %3781, %3774
  %3783 = lshr i32 %71, 1
  %3784 = lshr i32 %72, 1
  %3785 = lshr i32 %73, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3783, i32 %3784, i32 %3785, float %3777, float %3782, float %3777, float %3777, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3786

; <label>:3786                                    ; preds = %3778, %3749
  br i1 %82, label %3815, label %3787, !dx.controlflow.hints !68

; <label>:3787                                    ; preds = %3786
  %3788 = fadd fast float %121, 0x3FE3C6EF40000000
  %3789 = call float @dx.op.unary.f32(i32 22, float %3788)  ; Frc(value)
  %3790 = call float @dx.op.unary.f32(i32 23, float %3752)  ; Log(value)
  %3791 = fadd fast float %3790, -7.000000e+00
  %3792 = call float @dx.op.unary.f32(i32 21, float %3791)  ; Exp(value)
  %3793 = fmul fast float %3789, 2.000000e+00
  %3794 = fadd fast float %3793, -1.000000e+00
  %3795 = fmul fast float %3792, %3794
  %3796 = fcmp fast ogt float %3752, 0.000000e+00
  %3797 = select i1 %3796, float %3795, float 0.000000e+00
  %3798 = fadd fast float %3797, %3752
  %3799 = fadd fast float %121, 0x3FF3C6EF40000000
  %3800 = call float @dx.op.unary.f32(i32 22, float %3799)  ; Frc(value)
  %3801 = fmul fast float %3800, 2.000000e+00
  %3802 = fadd fast float %3801, -1.000000e+00
  %3803 = fmul fast float %3792, %3802
  %3804 = select i1 %3796, float %3803, float 0.000000e+00
  %3805 = fadd fast float %3804, %3752
  %3806 = fadd fast float %121, 0x3FFDAA66E0000000
  %3807 = call float @dx.op.unary.f32(i32 22, float %3806)  ; Frc(value)
  %3808 = fadd fast float %3790, -6.000000e+00
  %3809 = call float @dx.op.unary.f32(i32 21, float %3808)  ; Exp(value)
  %3810 = fmul fast float %3807, 2.000000e+00
  %3811 = fadd fast float %3810, -1.000000e+00
  %3812 = fmul fast float %3809, %3811
  %3813 = select i1 %3796, float %3812, float 0.000000e+00
  %3814 = fadd fast float %3813, %3752
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %71, i32 %72, i32 %73, float %3798, float %3805, float %3814, float %3798, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3815

; <label>:3815                                    ; preds = %3787, %3786
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
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

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
!dx.entryPoints = !{!54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !40, !45, !48}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38}
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
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 34, i32 1, i32 7, i32 0, !26}
!26 = !{i32 0, i32 14}
!27 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!28 = !{i32 19, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!29 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!30 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!31 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!32 = !{i32 23, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!33 = !{i32 24, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!34 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!35 = !{i32 26, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !36}
!36 = !{i32 1, i32 80}
!37 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!38 = !{i32 28, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !39}
!39 = !{i32 1, i32 4}
!40 = !{!41, !42, !43, !44}
!41 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!42 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!43 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!44 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!45 = !{!46, !47}
!46 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!47 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!48 = !{!49, !50, !51, !52, !53}
!49 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!50 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!51 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!52 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!53 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!54 = !{void ()* @cs_volumetric_forwardplus_scatter_local_afog, !"cs_volumetric_forwardplus_scatter_local_afog", null, !4, !55}
!55 = !{i32 0, i64 272, i32 4, !56}
!56 = !{i32 4, i32 4, i32 4}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !{!62, !64}
!62 = distinct !{!62, !63, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!63 = distinct !{!63, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!64 = distinct !{!64, !63, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !88}
!105 = distinct !{!105, !88}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = !{!118, !118, i64 0}
!118 = !{!"int", !59, i64 0}
!119 = !{!120, !122, !124, !62, !64}
!120 = distinct !{!120, !121, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!121 = distinct !{!121, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!122 = distinct !{!122, !123, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!123 = distinct !{!123, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!124 = distinct !{!124, !125, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!125 = distinct !{!125, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 2}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 2}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = !{!147, !149, !151, !62, !64}
!147 = distinct !{!147, !148, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!148 = distinct !{!148, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!149 = distinct !{!149, !150, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!150 = distinct !{!150, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!151 = distinct !{!151, !150, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 2}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !147, !149, !151, !62, !64}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !147, !149, !151, !62, !64}
!161 = !{!157}
!162 = !{!158, !154, !147, !149, !151, !62, !64}
!163 = !{!164}
!164 = distinct !{!164, !165, !"\01?sort@@YAXAIAM00@Z: %c"}
!165 = distinct !{!165, !"\01?sort@@YAXAIAM00@Z"}
!166 = !{!167, !168, !147, !149, !151, !62, !64}
!167 = distinct !{!167, !165, !"\01?sort@@YAXAIAM00@Z: %a"}
!168 = distinct !{!168, !165, !"\01?sort@@YAXAIAM00@Z: %b"}
!169 = !{!168}
!170 = !{!167, !164, !147, !149, !151, !62, !64}
!171 = !{!167}
!172 = !{!168, !164, !147, !149, !151, !62, !64}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 2}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 2}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 2}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 2}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}

