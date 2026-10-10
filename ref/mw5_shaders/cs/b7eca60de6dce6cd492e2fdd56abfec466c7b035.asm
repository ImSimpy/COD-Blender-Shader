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
; shader hash: fbe06bbd1d73df228131f79e6721d25c
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

@BLUE_NOISE_SAMPLES.v.1dim = internal constant [384 x float] [float 0x3FE18FE160000000, float 0x3FE2F89540000000, float 0x3FE6E2D4C0000000, float 0x3FC15736E0000000, float 0x3FBA5540C0000000, float 0x3FD3170EC0000000, float 0x3FED0D5120000000, float 0x3FE296A0E0000000, float 0x3FC4826EA0000000, float 0x3FE8282660000000, float 0x3FAFC328C0000000, float 0x3FEC521960000000, float 0x3FE37806C0000000, float 0x3FCA6D0000000000, float 0x3FD7082D00000000, float 0x3FC5E13120000000, float 0x3FD2E650A0000000, float 0x3FEBB39F60000000, float 0x3FDC57B600000000, float 0x3FE7C97180000000, float 0x3FCBD95EA0000000, float 0x3FC9988140000000, float 0x3FEAC46E60000000, float 0x3FEAD953E0000000, float 0x3FC843F4E0000000, float 0x3FE1FA7840000000, float 0x3FDEF62560000000, float 0x3FD8DD05A0000000, float 0x3FB5C98040000000, float 0x3FE40B4F00000000, float 0x3FEC4AEE80000000, float 0x3FEB172F40000000, float 0x3FE0065C00000000, float 0x3FEA254D00000000, float 0x3FD8E6DF40000000, float 0x3FE24C96C0000000, float 0x3FDE978BA0000000, float 0x3FBA8F1180000000, float 0x3FB121A6A0000000, float 0x3FE3626000000000, float 0x3FDE58B860000000, float 0x3FB2DED7A0000000, float 0x3FD4F97900000000, float 0x3FD7645460000000, float 0x3FCE571520000000, float 0x3FE7E85200000000, float 0x3FEAFC6460000000, float 0x3FCC666220000000, float 0x3FEC4FF540000000, float 0x3FE7C8B540000000, float 0x3FEBF4AC20000000, float 0x3FD0C66640000000, float 0x3FE2F95320000000, float 0x3F915FFF00000000, float 0x3FE352C600000000, float 0x3FEBC2D0A0000000, float 0x3FE3664520000000, float 0x3FE4504660000000, float 0x3FE1D81AA0000000, float 0x3FD7A97CA0000000, float 0x3F86A53280000000, float 0x3FC1343780000000, float 0x3FE473A1A0000000, float 0x3FEC7EAE80000000, float 0x3FCE83F160000000, float 0x3FC3B66640000000, float 0x3FABB6C6C0000000, float 0x3FEC127C60000000, float 0x3FC3E70E00000000, float 0x3FDC159A60000000, float 0x3FD7AB8720000000, float 0x3FE14710E0000000, float 0x3FDE623A40000000, float 0x3FEB8A45E0000000, float 0x3FEC3C0140000000, float 0x3FD1597DE0000000, float 0x3FEAF0F9A0000000, float 0x3FE1C52360000000, float 0x3FEA622660000000, float 0x3FD760A060000000, float 0x3FEC561B20000000, float 0x3FBAF00320000000, float 0x3FE4643220000000, float 0x3FE72199C0000000, float 0x3FE2E54080000000, float 0x3FD56206C0000000, float 0x3FE8890420000000, float 0x3FEFBE55E0000000, float 0x3FD25DC400000000, float 0x3FD8BF4640000000, float 0x3FE956BCC0000000, float 0x3FE3A5DFE0000000, float 0x3FE5928420000000, float 0x3FE6754AA0000000, float 0x3FBBCDB900000000, float 0x3FE4509C40000000, float 0x3FE14E9AE0000000, float 0x3FEEE61140000000, float 0x3FD3ADB960000000, float 0x3FD3C9D440000000, float 0x3FDF30AF40000000, float 0x3FE885B760000000, float 0x3FEFC30220000000, float 0x3FB1A902E0000000, float 0x3FED532A00000000, float 0x3FBA846540000000, float 0x3FDAC4BEC0000000, float 0x3FB347E280000000, float 0x3FC77620A0000000, float 0x3FBBEF41C0000000, float 0x3FB2C764E0000000, float 0x3FC199A160000000, float 0x3FE44F4480000000, float 0x3FD01FE1E0000000, float 0x3FEC5559A0000000, float 0x3FA2E2FA40000000, float 0x3FD5AAA3C0000000, float 0x3FEDC06380000000, float 0x3FE393B900000000, float 0x3FDA23D800000000, float 0x3FC0BD6E60000000, float 0x3FD6E3CF60000000, float 0x3FE39D7140000000, float 0x3FE07677C0000000, float 0x3FBE721700000000, float 0x3FEA99EBC0000000, float 0x3FC9C1C7E0000000, float 0x3FB4545D20000000, float 0x3FE927BDC0000000, float 0x3FD2AF0880000000, float 0x3FEDDAA620000000, float 0x3FD4C3A220000000, float 0x3FE764E8C0000000, float 0x3FB5474C60000000, float 0x3FBD28BE60000000, float 0x3FDCAE7120000000, float 0x3FE65C7EC0000000, float 0x3FDFAE6DC0000000, float 0x3FEFF2D3E0000000, float 0x3FED44B380000000, float 0x3FE6676480000000, float 0x3FE59F4A80000000, float 0x3FE61D1240000000, float 0x3F80FB0B40000000, float 0x3FD57E1500000000, float 0x3FEC5C93C0000000, float 0x3FA826DF20000000, float 0x3FE939D3A0000000, float 0x3FDB702260000000, float 0x3FD0309DC0000000, float 0x3FC05BD4E0000000, float 0x3F647F5360000000, float 0x3FDFF14000000000, float 0x3FD6B472E0000000, float 0x3FC67E8AE0000000, float 0x3FD7E52D80000000, float 0x3FD9A20420000000, float 0x3FD873C2E0000000, float 0x3FEED079E0000000, float 0x3FD9280DA0000000, float 0x3FE0E70960000000, float 0x3FD7AD5C60000000, float 0x3FADC1E8A0000000, float 0x3FE9BAFE00000000, float 0x3FD6EB3FA0000000, float 0x3FE8B0FE80000000, float 0x3FEC006EA0000000, float 0x3FE7886EC0000000, float 0x3FD4E113A0000000, float 0x3FE5EB06E0000000, float 0x3FE7AE8F00000000, float 0x3FE594A1A0000000, float 0x3FE8BE5C40000000, float 0x3FDBBB7820000000, float 0x3FDC00F660000000, float 0x3FE3BEAF60000000, float 0x3FECE40A40000000, float 0x3FE476BE80000000, float 0x3FCE715760000000, float 0x3F9A66CEA0000000, float 0x3FE1E87120000000, float 0x3FD6EFB1C0000000, float 0x3FCE53C0A0000000, float 0x3FEEC44720000000, float 0x3FDE4FCA40000000, float 0x3FE71C3E60000000, float 0x3FEF2C7C20000000, float 0x3FE166A120000000, float 0x3FEE257F40000000, float 0x3FE9B56F40000000, float 0x3FECD0D600000000, float 0x3FA0FC3EC0000000, float 0x3FEC4C3DC0000000, float 0x3FD150EC60000000, float 0x3FE71F4F60000000, float 0x3FB622B360000000, float 0x3FDC8CDE60000000, float 0x3FD23942A0000000, float 0x3FE1F1FAA0000000, float 0x3FED974C60000000, float 0x3FB46602A0000000, float 0x3FE6E2E620000000, float 0x3FEFD8B280000000, float 0x3FDD9BF5C0000000, float 0x3FA674A1C0000000, float 0x3FE9B56E40000000, float 0x3FEEE67800000000, float 0x3FCDA72D80000000, float 0x3FD469FA40000000, float 0x3FDBC871E0000000, float 0x3FDD20E3E0000000, float 0x3FEF2C1DE0000000, float 0x3FDF7B00E0000000, float 0x3FD6281F00000000, float 0x3FC66B3000000000, float 0x3FEDE19700000000, float 0x3FDB2072A0000000, float 0x3FE0D7DF20000000, float 0x3FC3B1B640000000, float 0x3FDA9DE220000000, float 0x3FD04AFB60000000, float 0x3FE78D6920000000, float 0x3FEF438F00000000, float 0x3FD0DACEC0000000, float 0x3FED6152E0000000, float 0x3FE9CF90A0000000, float 0x3FD0689260000000, float 0x3FDB295100000000, float 0x3FE43A8B20000000, float 0x3FDB335EA0000000, float 0x3FE0E1EA60000000, float 0x3FEBAB00E0000000, float 0x3FDA8B1D60000000, float 0x3FB10CBD20000000, float 0x3FE78F4620000000, float 0x3FE227D0E0000000, float 0x3FEC0E76A0000000, float 0x3FEEF3F8C0000000, float 0x3FE5ADCD40000000, float 0x3FE386C040000000, float 0x3FE2FA86E0000000, float 0x3FCE803BA0000000, float 0x3FE26AEBE0000000, float 0x3FE58556A0000000, float 0x3FEB878100000000, float 0x3FEC77D980000000, float 0x3FC0793440000000, float 0x3FD134B520000000, float 0x3FC9DB4080000000, float 0x3FE83B8480000000, float 0x3FE4ECC2E0000000, float 0x3FCEA8E9A0000000, float 0x3FD60CA840000000, float 0x3FECE35B20000000, float 0x3FE746B7A0000000, float 0x3FCE074860000000, float 0x3FE81DE580000000, float 0x3FC2584AA0000000, float 0x3FD5C82E00000000, float 0x3FE0CECA40000000, float 0x3FE26646C0000000, float 0x3FC0854540000000, float 0x3FE77AA920000000, float 0x3FE0120580000000, float 0x3FEF5EE280000000, float 0x3FB39D7D80000000, float 0x3FC50B8D20000000, float 0x3FDBFF8BC0000000, float 0x3FB7077B80000000, float 0x3FCF722760000000, float 0x3FD274BA20000000, float 0x3FE7EC88A0000000, float 0x3FD8207A00000000, float 0x3FDC2B1A00000000, float 0x3FEAE81F60000000, float 0x3FD84A9200000000, float 0x3FEB3D1480000000, float 0x3F74CDAB80000000, float 0x3FE2903380000000, float 0x3FE3D88D60000000, float 0x3FE5557C00000000, float 0x3FE1B02540000000, float 0x3FCAD53680000000, float 0x3FC97E4340000000, float 0x3FE4A0C720000000, float 0x3FDE649800000000, float 0x3FE8A886A0000000, float 0x3FE77F7260000000, float 0x3FEB51B700000000, float 0x3FC2E2DE00000000, float 0x3F5888D4C0000000, float 0x3FD41984E0000000, float 0x3FD20DB1A0000000, float 0x3FB551A020000000, float 0x3FDB131880000000, float 0x3FEDC9D0C0000000, float 0x3FC7DD4AA0000000, float 0x3FD5F5F120000000, float 0x3F7F518660000000, float 0x3FEBF19260000000, float 0x3F799ADA40000000, float 0x3FDC20E100000000, float 0x3FE0E7DB40000000, float 0x3FC0BB4EE0000000, float 0x3FDECDAEE0000000, float 0x3FEA638F20000000, float 0x3FE70F2040000000, float 0x3FCA53C540000000, float 0x3FCCF95320000000, float 0x3FB324F500000000, float 0x3FE354CC40000000, float 0x3FB2C45460000000, float 0x3FE072AB00000000, float 0x3FE6B81580000000, float 0x3FAD0D1160000000, float 0x3FECCB0BE0000000, float 0x3FEB935140000000, float 0x3FD2A50CE0000000, float 0x3FE5A24D40000000, float 0x3FCB409DA0000000, float 0x3FEAFD5600000000, float 0x3FE2CA5C00000000, float 0x3FEEB0C0A0000000, float 0x3FE8201F60000000, float 0x3FAA420B00000000, float 0x3FD2EB8020000000, float 0x3FE7E3DFA0000000, float 0x3FE7E2A760000000, float 0x3FE8746C80000000, float 0x3FE31217A0000000, float 0x3FEB946480000000, float 0x3FE7B3EDC0000000, float 0x3FB74FEFA0000000, float 0x3FEE07E160000000, float 0x3FC272BDC0000000, float 0x3FDE3B38A0000000, float 0x3FE687E8E0000000, float 0x3FDD8CC5E0000000, float 0x3FE5BD32A0000000, float 0x3FC63803C0000000, float 0x3FED12DE60000000, float 0x3F99B048C0000000, float 0x3FEC98B3E0000000, float 0x3FB9C91A60000000, float 0x3FE8D6E040000000, float 0x3FD39228C0000000, float 0x3FE404F040000000, float 0x3FD00082E0000000, float 0x3FE9099100000000, float 0x3FE1A444E0000000, float 0x3FDDFDC900000000, float 0x3FD649EA00000000, float 0x3FE7F988C0000000, float 0x3FEEB362C0000000, float 0x3FBE7B5FE0000000, float 0x3FC6A55F60000000, float 0x3FE07F6B40000000, float 0x3FE0AFB880000000, float 0x3FDE87A600000000, float 0x3FEBF9DCC0000000, float 0x3FD039B760000000, float 0x3F73CF67C0000000, float 0x3FE33EED40000000, float 0x3FD43683E0000000, float 0x3FD1531020000000, float 0x3FE1D32C60000000, float 0x3FE16249C0000000, float 0x3FBCE097A0000000, float 0x3FDE6FED80000000, float 0x3FE47A3A60000000, float 0x3FE6D84580000000, float 0x3FEA3764C0000000, float 0x3FE9B3C000000000, float 0x3FCD0FDF40000000, float 0x3FE2C6AC00000000, float 0x3FCBCACA20000000, float 0x3FE02FE880000000, float 0x3FC52C7860000000, float 0x3FD5258C40000000, float 0x3FA7811BC0000000, float 0x3FAAEB5B20000000, float 0x3FE369AEC0000000, float 0x3FB38C3220000000, float 0x3FEF14BEE0000000], align 4
@"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [32 x float] undef, align 4

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
  %205 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %206 = icmp ult i32 %205, 32
  br i1 %206, label %207, label %325, !dx.controlflow.hints !53

; <label>:207                                     ; preds = %0
  %208 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %209 = fmul fast float %208, 0x3FE62E4300000000
  %210 = fmul fast float %209, %209
  %211 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %212 = add i32 %205, -1
  %213 = add i32 %205, 7
  %214 = and i32 %213, 4
  %215 = and i32 %212, %211
  %216 = xor i32 %215, %214
  %217 = and i32 %211, -4
  %218 = shl i32 %211, 1
  %219 = and i32 %218, 6
  %220 = lshr i32 177, %219
  %221 = and i32 %220, 3
  %222 = or i32 %221, %217
  %223 = udiv i32 %42, %205
  %224 = shl i32 %223, 2
  %225 = lshr i32 %211, 1
  %226 = and i32 %225, 1
  %227 = or i32 %224, %226
  %228 = lshr i32 %211, 2
  %229 = and i32 %228, 2
  %230 = or i32 %227, %229
  %231 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %209, i32 %216)  ; WaveReadLaneAt(value,lane)
  %232 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %210, i32 %216)  ; WaveReadLaneAt(value,lane)
  %233 = fadd fast float %231, %209
  %234 = fadd fast float %232, %210
  %235 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %233, i32 %222)  ; WaveReadLaneAt(value,lane)
  %236 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %234, i32 %222)  ; WaveReadLaneAt(value,lane)
  %237 = fadd fast float %235, %233
  %238 = fadd fast float %236, %234
  %239 = mul i32 %230, 2
  %240 = add i32 0, %239
  %241 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %240
  store float %237, float addrspace(3)* %241, align 4
  %242 = mul i32 %230, 2
  %243 = add i32 1, %242
  %244 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %243
  store float %238, float addrspace(3)* %244, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %245 = load float, float addrspace(3)* %241, align 4
  %246 = xor i32 %230, 4
  %247 = mul i32 %246, 2
  %248 = add i32 0, %247
  %249 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %248
  %250 = load float, float addrspace(3)* %249, align 4
  %251 = fadd fast float %250, %245
  %252 = fmul fast float %251, 1.250000e-01
  %253 = and i32 %63, 1
  %254 = and i32 %253, %64
  %255 = and i32 %254, %65
  %256 = icmp ne i32 %255, 0
  %257 = and i1 %256, %75
  br i1 %257, label %258, label %269, !dx.controlflow.hints !54

; <label>:258                                     ; preds = %207
  %259 = mul i32 %246, 2
  %260 = add i32 1, %259
  %261 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %260
  %262 = load float, float addrspace(3)* %261, align 4
  %263 = load float, float addrspace(3)* %244, align 4
  %264 = fadd fast float %262, %263
  %265 = fmul fast float %264, 1.250000e-01
  %266 = lshr i32 %63, 1
  %267 = lshr i32 %64, 1
  %268 = lshr i32 %65, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %266, i32 %267, i32 %268, float %252, float %265, float %252, float %252, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %269

; <label>:269                                     ; preds = %258, %207
  br i1 %74, label %271, label %270, !dx.controlflow.hints !55

; <label>:270                                     ; preds = %269
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %63, i32 %64, i32 %65, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %271

; <label>:271                                     ; preds = %270, %269
  %272 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %273 = add i32 %205, -1
  %274 = add i32 %205, 7
  %275 = and i32 %274, 4
  %276 = and i32 %273, %272
  %277 = xor i32 %276, %275
  %278 = and i32 %272, -4
  %279 = shl i32 %272, 1
  %280 = and i32 %279, 6
  %281 = lshr i32 177, %280
  %282 = and i32 %281, 3
  %283 = or i32 %282, %278
  %284 = udiv i32 %42, %205
  %285 = shl i32 %284, 2
  %286 = lshr i32 %272, 1
  %287 = and i32 %286, 1
  %288 = or i32 %285, %287
  %289 = lshr i32 %272, 2
  %290 = and i32 %289, 2
  %291 = or i32 %288, %290
  %292 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %277)  ; WaveReadLaneAt(value,lane)
  %293 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %277)  ; WaveReadLaneAt(value,lane)
  %294 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %292, i32 %283)  ; WaveReadLaneAt(value,lane)
  %295 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %293, i32 %283)  ; WaveReadLaneAt(value,lane)
  %296 = fadd fast float %294, %292
  %297 = fadd fast float %295, %293
  %298 = mul i32 %291, 2
  %299 = add i32 0, %298
  %300 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %299
  store float %296, float addrspace(3)* %300, align 4
  %301 = mul i32 %291, 2
  %302 = add i32 1, %301
  %303 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %302
  store float %297, float addrspace(3)* %303, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %304 = load float, float addrspace(3)* %300, align 4
  %305 = xor i32 %291, 4
  %306 = mul i32 %305, 2
  %307 = add i32 0, %306
  %308 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %307
  %309 = load float, float addrspace(3)* %308, align 4
  %310 = fadd fast float %309, %304
  %311 = fmul fast float %310, 1.250000e-01
  br i1 %257, label %312, label %323, !dx.controlflow.hints !56

; <label>:312                                     ; preds = %271
  %313 = mul i32 %305, 2
  %314 = add i32 1, %313
  %315 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %314
  %316 = load float, float addrspace(3)* %315, align 4
  %317 = load float, float addrspace(3)* %303, align 4
  %318 = fadd fast float %316, %317
  %319 = fmul fast float %318, 1.250000e-01
  %320 = lshr i32 %63, 1
  %321 = lshr i32 %64, 1
  %322 = lshr i32 %65, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %320, i32 %321, i32 %322, float %311, float %319, float %311, float %311, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %323

; <label>:323                                     ; preds = %312, %271
  br i1 %74, label %325, label %324, !dx.controlflow.hints !57

; <label>:324                                     ; preds = %323
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %63, i32 %64, i32 %65, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %325

; <label>:325                                     ; preds = %324, %323, %0
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = fsub fast float %191, %327
  %330 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %329)  ; FMax(a,b)
  %331 = fmul fast float %330, 0x3FF7154760000000
  %332 = fmul fast float %331, %328
  %333 = call float @dx.op.unary.f32(i32 21, float %332)  ; Exp(value)
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = fmul fast float %340, %333
  %342 = fmul fast float %341, %335
  %343 = fmul fast float %341, %336
  %344 = fmul fast float %341, %337
  %345 = fmul fast float %341, %339
  %346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.i32 %346, 2
  %348 = extractvalue %dx.types.CBufRet.i32 %346, 3
  %349 = call i32 @dx.op.tertiary.i32(i32 49, i32 %57, i32 %347, i32 %55)  ; UMad(a,b,c)
  %350 = call i32 @dx.op.tertiary.i32(i32 49, i32 %59, i32 %348, i32 %349)  ; UMad(a,b,c)
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %350, i32 0)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = fadd fast float %122, 1.000000e+00
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = fmul fast float %359, %130
  %361 = call float @dx.op.unary.f32(i32 21, float %360)  ; Exp(value)
  %362 = fmul fast float %361, %358
  %363 = fsub fast float 4.000000e+00, %358
  %364 = fadd fast float %363, %362
  %365 = fmul fast float %353, 2.000000e+00
  %366 = fmul fast float %365, %355
  %367 = fmul fast float %123, 2.000000e+00
  %368 = fmul fast float %367, %356
  %369 = fsub fast float 1.000000e+00, %366
  %370 = fsub fast float 1.000000e+00, %368
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %374 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %375 = fmul fast float %372, %369
  %376 = fmul fast float %373, %369
  %377 = fmul fast float %374, %369
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %381 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %382 = fmul fast float %379, %370
  %383 = fmul fast float %380, %370
  %384 = fmul fast float %381, %370
  %385 = fadd fast float %382, %375
  %386 = fadd fast float %383, %376
  %387 = fadd fast float %384, %377
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %392 = fadd fast float %385, %389
  %393 = fadd fast float %386, %390
  %394 = fadd fast float %387, %391
  %395 = fadd fast float %123, 1.000000e+00
  %396 = fmul fast float %122, 2.000000e+00
  %397 = fmul fast float %396, %355
  %398 = fmul fast float %395, 2.000000e+00
  %399 = fmul fast float %398, %356
  %400 = fsub fast float 1.000000e+00, %397
  %401 = fsub fast float 1.000000e+00, %399
  %402 = fmul fast float %372, %400
  %403 = fmul fast float %373, %400
  %404 = fmul fast float %374, %400
  %405 = fmul fast float %379, %401
  %406 = fmul fast float %380, %401
  %407 = fmul fast float %381, %401
  %408 = fadd fast float %405, %402
  %409 = fadd fast float %406, %403
  %410 = fadd fast float %407, %404
  %411 = fadd fast float %408, %389
  %412 = fadd fast float %409, %390
  %413 = fadd fast float %410, %391
  %414 = fmul fast float %411, %364
  %415 = fmul fast float %412, %364
  %416 = fmul fast float %413, %364
  %417 = fadd fast float %411, %392
  %418 = fmul fast float %364, %417
  %419 = fadd fast float %412, %393
  %420 = fmul fast float %364, %419
  %421 = fadd fast float %413, %394
  %422 = fmul fast float %364, %421
  %423 = fmul fast float %418, 5.000000e-01
  %424 = fmul fast float %420, 5.000000e-01
  %425 = fmul fast float %422, 5.000000e-01
  %426 = fsub fast float %423, %414
  %427 = fsub fast float %424, %415
  %428 = fsub fast float %425, %416
  %429 = call float @dx.op.dot3.f32(i32 55, float %426, float %427, float %428, float %426, float %427, float %428)  ; Dot3(ax,ay,az,bx,by,bz)
  %430 = call float @dx.op.unary.f32(i32 25, float %429)  ; Rsqrt(value)
  %431 = fmul fast float %429, 2.000000e+00
  %432 = fmul fast float %431, %430
  %433 = call float @dx.op.binary.f32(i32 35, float %199, float %432)  ; FMax(a,b)
  %434 = and i32 %352, 8
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %652, label %436, !dx.controlflow.hints !58

; <label>:436                                     ; preds = %325
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = extractvalue %dx.types.CBufRet.f32 %437, 1
  %440 = extractvalue %dx.types.CBufRet.f32 %437, 2
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %444 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %445 = fsub fast float %189, %442
  %446 = fsub fast float %190, %443
  %447 = fsub fast float %191, %444
  %448 = fmul fast float %445, %438
  %449 = fmul fast float %446, %439
  %450 = fmul fast float %447, %440
  %451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.i32 %451, 3
  %453 = icmp eq i32 %452, 0
  %454 = fcmp fast oge float %450, 0.000000e+00
  %455 = fcmp fast ole float %450, 1.000000e+00
  br i1 %453, label %458, label %456, !dx.controlflow.hints !59

; <label>:456                                     ; preds = %436
  %457 = and i1 %454, %455
  br label %468

; <label>:458                                     ; preds = %436
  %459 = fcmp fast oge float %448, 0.000000e+00
  %460 = fcmp fast oge float %449, 0.000000e+00
  %461 = and i1 %459, %460
  %462 = and i1 %454, %461
  %463 = fcmp fast ole float %448, 1.000000e+00
  %464 = fcmp fast ole float %449, 1.000000e+00
  %465 = and i1 %463, %464
  %466 = and i1 %455, %465
  %467 = and i1 %462, %466
  br label %468

; <label>:468                                     ; preds = %458, %456
  %469 = phi i1 [ %457, %456 ], [ %467, %458 ]
  br i1 %469, label %470, label %645, !dx.controlflow.hints !60

; <label>:470                                     ; preds = %468
  %471 = fcmp fast oeq float %433, 0.000000e+00
  br i1 %471, label %486, label %472, !dx.controlflow.hints !61

; <label>:472                                     ; preds = %470
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 3
  %475 = fmul fast float %474, %433
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %479 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %480 = fmul fast float %477, %475
  %481 = fmul fast float %478, %475
  %482 = fmul fast float %479, %475
  %483 = call float @dx.op.unary.f32(i32 23, float %480)  ; Log(value)
  %484 = call float @dx.op.unary.f32(i32 23, float %481)  ; Log(value)
  %485 = call float @dx.op.unary.f32(i32 23, float %482)  ; Log(value)
  br label %486

; <label>:486                                     ; preds = %472, %470
  %487 = phi float [ %483, %472 ], [ 0.000000e+00, %470 ]
  %488 = phi float [ %484, %472 ], [ 0.000000e+00, %470 ]
  %489 = phi float [ %485, %472 ], [ 0.000000e+00, %470 ]
  %490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.i32 %490, 0
  %492 = extractvalue %dx.types.CBufRet.i32 %490, 1
  %493 = uitofp i32 %491 to float
  %494 = uitofp i32 %492 to float
  %495 = fmul fast float %448, %493
  %496 = fmul fast float %449, %494
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fadd fast float %496, 5.000000e-01
  %499 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %500 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %501 = call float @dx.op.unary.f32(i32 27, float %497)  ; Round_ni(value)
  %502 = call float @dx.op.unary.f32(i32 27, float %498)  ; Round_ni(value)
  %503 = fadd fast float %501, 1.000000e+00
  %504 = fadd fast float %502, 1.000000e+00
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 0
  %507 = extractvalue %dx.types.CBufRet.f32 %505, 1
  %508 = fmul fast float %506, %503
  %509 = fmul fast float %507, %504
  %510 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %33, float %508, float %509, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = extractvalue %dx.types.ResRet.f32 %510, 2
  %514 = extractvalue %dx.types.ResRet.f32 %510, 3
  %515 = extractvalue %dx.types.CBufRet.i32 %490, 2
  %516 = extractvalue %dx.types.CBufRet.f32 %505, 2
  %517 = uitofp i32 %515 to float
  %518 = fadd fast float %517, -1.000000e+00
  %519 = fmul fast float %518, %511
  %520 = fmul fast float %518, %512
  %521 = fmul fast float %518, %513
  %522 = fmul fast float %518, %514
  %523 = fadd fast float %519, 5.000000e-01
  %524 = fadd fast float %520, 5.000000e-01
  %525 = fadd fast float %521, 5.000000e-01
  %526 = fadd fast float %522, 5.000000e-01
  %527 = fptoui float %523 to i32
  %528 = fptoui float %524 to i32
  %529 = fptoui float %525 to i32
  %530 = fptoui float %526 to i32
  %531 = uitofp i32 %527 to float
  %532 = uitofp i32 %528 to float
  %533 = uitofp i32 %529 to float
  %534 = uitofp i32 %530 to float
  %535 = fadd fast float %531, 5.000000e-01
  %536 = fadd fast float %532, 5.000000e-01
  %537 = fadd fast float %533, 5.000000e-01
  %538 = fadd fast float %534, 5.000000e-01
  %539 = fmul fast float %535, %516
  %540 = fmul fast float %536, %516
  %541 = fmul fast float %537, %516
  %542 = fmul fast float %538, %516
  %543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %539, float %450, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %540, float %450, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %541, float %450, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %542, float %450, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = fsub fast float %548, %550
  %552 = fmul fast float %551, %499
  %553 = fadd fast float %552, %550
  %554 = fsub fast float %546, %544
  %555 = fmul fast float %554, %499
  %556 = fadd fast float %555, %544
  %557 = fsub fast float %556, %553
  %558 = fmul fast float %557, %500
  %559 = fadd fast float %558, %553
  %560 = fcmp fast ogt float %559, 0.000000e+00
  br i1 %560, label %561, label %629, !dx.controlflow.hints !62

; <label>:561                                     ; preds = %486
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %569 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %570 = fmul fast float %446, %438
  %571 = fmul fast float %447, %438
  %572 = fadd fast float %448, %567
  %573 = fadd fast float %570, %568
  %574 = fadd fast float %571, %569
  %575 = fmul fast float %572, %563
  %576 = fmul fast float %573, %563
  %577 = fmul fast float %574, %563
  %578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %575, float %576, float %577, float undef, i32 0, i32 0, i32 0, float %487)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = fmul fast float %572, %564
  %581 = fmul fast float %573, %564
  %582 = fmul fast float %574, %564
  %583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %580, float %581, float %582, float undef, i32 0, i32 0, i32 0, float %488)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 1
  %585 = fmul fast float %572, %565
  %586 = fmul fast float %573, %565
  %587 = fmul fast float %574, %565
  %588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %585, float %586, float %587, float undef, i32 0, i32 0, i32 0, float %489)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 2
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %592 = fmul fast float %584, %579
  %593 = fmul fast float %592, %589
  %594 = call float @dx.op.unary.f32(i32 23, float %593)  ; Log(value)
  %595 = fmul fast float %594, %591
  %596 = call float @dx.op.unary.f32(i32 21, float %595)  ; Exp(value)
  %597 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %598 = fmul fast float %559, %559
  %599 = fmul fast float %598, %596
  %600 = fmul fast float %599, %597
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 3
  %603 = fmul fast float %602, %600
  %604 = bitcast float %603 to i32
  %605 = sitofp i32 %604 to float
  %606 = fptosi float %605 to i32
  %607 = bitcast i32 %606 to float
  %608 = fsub fast float 1.000000e+00, %600
  %609 = bitcast float %608 to i32
  %610 = sitofp i32 %609 to float
  %611 = fptosi float %610 to i32
  %612 = bitcast i32 %611 to float
  %613 = fadd fast float %607, %612
  %614 = bitcast float %613 to i32
  %615 = sub nsw i32 2129859010, %614
  %616 = bitcast i32 %615 to float
  %617 = fmul fast float %616, %607
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %622 = fmul fast float %617, %621
  %623 = fadd fast float %622, 1.000000e+00
  %624 = bitcast float %623 to i32
  %625 = sub nsw i32 2129859010, %624
  %626 = bitcast i32 %625 to float
  %627 = fmul fast float %617, %619
  %628 = fmul fast float %627, %626
  br label %629

; <label>:629                                     ; preds = %561, %486
  %630 = phi float [ %628, %561 ], [ %559, %486 ]
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %633 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %634 = extractvalue %dx.types.CBufRet.f32 %631, 2
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %637 = fmul fast float %632, %630
  %638 = fmul fast float %633, %630
  %639 = fmul fast float %634, %630
  %640 = fadd fast float %637, %342
  %641 = fadd fast float %638, %343
  %642 = fadd fast float %639, %344
  %643 = fmul fast float %636, %630
  %644 = fadd fast float %643, %345
  br label %645

; <label>:645                                     ; preds = %629, %468
  %646 = phi float [ %640, %629 ], [ %342, %468 ]
  %647 = phi float [ %641, %629 ], [ %343, %468 ]
  %648 = phi float [ %642, %629 ], [ %344, %468 ]
  %649 = phi float [ %644, %629 ], [ %345, %468 ]
  %650 = phi float [ %630, %629 ], [ 0.000000e+00, %468 ]
  %651 = fadd fast float %650, %341
  br label %652

; <label>:652                                     ; preds = %645, %325
  %653 = phi float [ %646, %645 ], [ %342, %325 ]
  %654 = phi float [ %647, %645 ], [ %343, %325 ]
  %655 = phi float [ %648, %645 ], [ %344, %325 ]
  %656 = phi float [ %649, %645 ], [ %345, %325 ]
  %657 = phi float [ %651, %645 ], [ %341, %325 ]
  %658 = and i32 %352, 2
  %659 = icmp ne i32 %658, 0
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 2
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %664 = fadd fast float %663, %661
  %665 = fcmp fast ole float %191, %664
  %666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.i32 %666, 3
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %688, !dx.controlflow.hints !63

; <label>:669                                     ; preds = %652
  %670 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %671 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %672 = fsub fast float %189, %670
  %673 = fsub fast float %190, %671
  %674 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %675 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %676 = fdiv fast float 1.000000e+00, %674
  %677 = fdiv fast float 1.000000e+00, %675
  %678 = fmul fast float %672, %676
  %679 = fmul fast float %677, %673
  %680 = fcmp fast oge float %678, 0.000000e+00
  %681 = fcmp fast oge float %679, 0.000000e+00
  %682 = and i1 %680, %681
  %683 = and i1 %665, %682
  %684 = fcmp fast ole float %678, 1.000000e+00
  %685 = fcmp fast ole float %679, 1.000000e+00
  %686 = and i1 %684, %685
  %687 = and i1 %686, %683
  br label %688

; <label>:688                                     ; preds = %669, %652
  %689 = phi i1 [ %687, %669 ], [ %665, %652 ]
  %690 = and i1 %659, %689
  br i1 %690, label %691, label %870, !dx.controlflow.hints !64

; <label>:691                                     ; preds = %688
  %692 = fcmp fast oeq float %433, 0.000000e+00
  br i1 %692, label %698, label %693, !dx.controlflow.hints !65

; <label>:693                                     ; preds = %691
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 3
  %696 = fmul fast float %695, %433
  %697 = call float @dx.op.unary.f32(i32 23, float %696)  ; Log(value)
  br label %698

; <label>:698                                     ; preds = %693, %691
  %699 = phi float [ %697, %693 ], [ 0.000000e+00, %691 ]
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 0
  %702 = extractvalue %dx.types.CBufRet.f32 %700, 1
  %703 = extractvalue %dx.types.CBufRet.f32 %700, 2
  %704 = fsub fast float %189, %701
  %705 = fsub fast float %190, %702
  %706 = fsub fast float %191, %703
  %707 = fmul fast float %704, %704
  %708 = fmul fast float %705, %705
  %709 = fadd fast float %707, %708
  %710 = fmul fast float %706, %706
  %711 = fadd fast float %709, %710
  %712 = call float @dx.op.unary.f32(i32 24, float %711)  ; Sqrt(value)
  %713 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %714 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %715 = fsub fast float %189, %713
  %716 = fsub fast float %190, %714
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 0
  %719 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %720 = fmul fast float %715, %718
  %721 = fmul fast float %716, %719
  %722 = fsub fast float 1.000000e+00, %721
  br i1 %668, label %729, label %723, !dx.controlflow.hints !66

; <label>:723                                     ; preds = %698
  %724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %720, float %722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = extractvalue %dx.types.ResRet.f32 %724, 1
  %727 = extractvalue %dx.types.ResRet.f32 %724, 2
  %728 = extractvalue %dx.types.ResRet.f32 %724, 3
  br label %735

; <label>:729                                     ; preds = %698
  %730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %720, float %722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = extractvalue %dx.types.ResRet.f32 %730, 1
  %733 = extractvalue %dx.types.ResRet.f32 %730, 2
  %734 = extractvalue %dx.types.ResRet.f32 %730, 3
  br label %735

; <label>:735                                     ; preds = %729, %723
  %736 = phi float [ %725, %723 ], [ %731, %729 ]
  %737 = phi float [ %726, %723 ], [ %732, %729 ]
  %738 = phi float [ %727, %723 ], [ %733, %729 ]
  %739 = phi float [ %728, %723 ], [ %734, %729 ]
  %740 = extractvalue %dx.types.CBufRet.f32 %717, 3
  %741 = fmul fast float %740, %737
  %742 = fmul fast float %741, %736
  %743 = fsub fast float %741, %742
  %744 = fcmp fast ole float %743, 0.000000e+00
  %745 = fmul fast float %740, %738
  %746 = fadd fast float %745, %661
  %747 = fdiv fast float 1.000000e+00, %743
  %748 = select i1 %744, float 1.000000e+06, float %747
  %749 = fsub fast float %191, %661
  %750 = fsub fast float %749, %742
  %751 = fmul fast float %748, %750
  %752 = call float @dx.op.unary.f32(i32 7, float %751)  ; Saturate(value)
  %753 = extractvalue %dx.types.CBufRet.f32 %717, 2
  %754 = fmul fast float %753, %752
  %755 = fsub fast float %753, %754
  %756 = fcmp fast olt float %191, %746
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %759 = select i1 %756, float %758, float 1.000000e+00
  %760 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %761 = fcmp fast oeq float %760, 0.000000e+00
  br i1 %761, label %844, label %762, !dx.controlflow.hints !67

; <label>:762                                     ; preds = %735
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %765 = fcmp fast ogt float %764, 0.000000e+00
  %766 = extractvalue %dx.types.CBufRet.f32 %757, 2
  br i1 %765, label %767, label %797, !dx.controlflow.hints !68

; <label>:767                                     ; preds = %762
  %768 = fmul fast float %720, %764
  %769 = fmul fast float %721, %764
  %770 = fsub fast float 1.000000e+00, %769
  %771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %31, float %768, float %770, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = fmul fast float %772, 2.000000e+00
  %775 = fmul fast float %773, 2.000000e+00
  %776 = fadd fast float %774, -1.000000e+00
  %777 = fadd fast float %775, -1.000000e+00
  %778 = fmul fast float %760, %189
  %779 = fmul fast float %760, %190
  %780 = fmul fast float %760, %191
  %781 = call float @dx.op.unary.f32(i32 22, float %766)  ; Frc(value)
  %782 = fmul fast float %776, %781
  %783 = fmul fast float %777, %781
  %784 = fsub fast float %778, %782
  %785 = fsub fast float %779, %783
  %786 = fadd fast float %766, 5.000000e-01
  %787 = call float @dx.op.unary.f32(i32 22, float %786)  ; Frc(value)
  %788 = fmul fast float %787, %776
  %789 = fmul fast float %787, %777
  %790 = fadd fast float %778, -5.000000e-01
  %791 = fsub fast float %790, %788
  %792 = fadd fast float %779, -5.000000e-01
  %793 = fsub fast float %792, %789
  %794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %791, float %793, float %780, float undef, i32 0, i32 0, i32 0, float %699)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  %796 = extractvalue %dx.types.ResRet.f32 %794, 1
  br label %810

; <label>:797                                     ; preds = %762
  %798 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %799 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %800 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %801 = fmul fast float %766, %798
  %802 = fmul fast float %766, %799
  %803 = fmul fast float %766, %800
  %804 = fsub fast float %189, %801
  %805 = fsub fast float %190, %802
  %806 = fsub fast float %191, %803
  %807 = fmul fast float %804, %760
  %808 = fmul fast float %805, %760
  %809 = fmul fast float %806, %760
  br label %810

; <label>:810                                     ; preds = %797, %767
  %811 = phi float [ %784, %767 ], [ %807, %797 ]
  %812 = phi float [ %785, %767 ], [ %808, %797 ]
  %813 = phi float [ %780, %767 ], [ %809, %797 ]
  %814 = phi float [ %795, %767 ], [ 0.000000e+00, %797 ]
  %815 = phi float [ %796, %767 ], [ 0.000000e+00, %797 ]
  %816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %811, float %812, float %813, float undef, i32 0, i32 0, i32 0, float %699)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  br i1 %765, label %819, label %831, !dx.controlflow.hints !69

; <label>:819                                     ; preds = %810
  %820 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %821 = call float @dx.op.unary.f32(i32 22, float %820)  ; Frc(value)
  %822 = fmul fast float %821, 2.000000e+00
  %823 = fadd fast float %822, -1.000000e+00
  %824 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %825 = fsub fast float %814, %817
  %826 = fmul fast float %824, %825
  %827 = fadd fast float %826, %817
  %828 = fsub fast float %815, %818
  %829 = fmul fast float %824, %828
  %830 = fadd fast float %829, %818
  br label %831

; <label>:831                                     ; preds = %819, %810
  %832 = phi float [ %827, %819 ], [ %817, %810 ]
  %833 = phi float [ %830, %819 ], [ %818, %810 ]
  %834 = extractvalue %dx.types.CBufRet.f32 %660, 3
  %835 = fadd fast float %834, %834
  %836 = fdiv fast float 2.000000e+00, %835
  %837 = fmul fast float %834, 2.000000e+00
  %838 = fadd fast float %832, -1.000000e+00
  %839 = fadd fast float %838, %833
  %840 = fadd fast float %839, %837
  %841 = fmul fast float %840, %836
  %842 = fadd fast float %841, -1.000000e+00
  %843 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  br label %844

; <label>:844                                     ; preds = %831, %735
  %845 = phi float [ %843, %831 ], [ 1.000000e+00, %735 ]
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %849 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %850 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %853 = fsub fast float %712, %852
  %854 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %855 = fmul fast float %853, %854
  %856 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %857 = fmul fast float %759, %739
  %858 = fmul fast float %857, %755
  %859 = fmul fast float %858, %845
  %860 = fmul fast float %859, %856
  %861 = fmul fast float %860, %847
  %862 = fmul fast float %860, %848
  %863 = fmul fast float %860, %849
  %864 = fadd fast float %861, %653
  %865 = fadd fast float %862, %654
  %866 = fadd fast float %863, %655
  %867 = fmul fast float %860, %850
  %868 = fadd fast float %867, %656
  %869 = fadd fast float %860, %657
  br label %870

; <label>:870                                     ; preds = %844, %688
  %871 = phi float [ %864, %844 ], [ %653, %688 ]
  %872 = phi float [ %865, %844 ], [ %654, %688 ]
  %873 = phi float [ %866, %844 ], [ %655, %688 ]
  %874 = phi float [ %868, %844 ], [ %656, %688 ]
  %875 = phi float [ %869, %844 ], [ %657, %688 ]
  %876 = and i32 %352, 1
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %1154, label %878, !dx.controlflow.hints !70

; <label>:878                                     ; preds = %870
  %879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.i32 %879, 1
  %881 = and i32 %880, 1
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %958, label %883, !dx.controlflow.hints !71

; <label>:883                                     ; preds = %878
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 3
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %888 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %889 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %890 = extractvalue %dx.types.CBufRet.f32 %884, 1
  %891 = extractvalue %dx.types.CBufRet.f32 %884, 2
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %895 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 3
  %898 = and i32 %880, 2
  %899 = extractvalue %dx.types.CBufRet.i32 %879, 0
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %937, label %901

; <label>:901                                     ; preds = %883
  br label %902

; <label>:902                                     ; preds = %902, %901
  %903 = phi float [ %931, %902 ], [ 0.000000e+00, %901 ]
  %904 = phi float [ %930, %902 ], [ 1.000000e+06, %901 ]
  %905 = phi i32 [ %932, %902 ], [ 0, %901 ]
  %906 = add i32 %905, 171
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 %906)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 2
  %912 = extractvalue %dx.types.CBufRet.f32 %907, 2
  %913 = fsub fast float %189, %908
  %914 = fsub fast float %190, %909
  %915 = fmul fast float %913, %913
  %916 = fmul fast float %914, %914
  %917 = fadd fast float %915, %916
  %918 = call float @dx.op.unary.f32(i32 24, float %917)  ; Sqrt(value)
  %919 = fsub fast float %918, %912
  %920 = icmp ne i32 %898, 0
  %921 = fsub fast float -0.000000e+00, %888
  %922 = select i1 %920, float %921, float %888
  %923 = fmul fast float %919, %922
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = fmul fast float %924, %887
  %926 = fsub fast float %911, %191
  %927 = fmul fast float %926, %885
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = fmul fast float %925, %928
  %930 = call float @dx.op.binary.f32(i32 36, float %904, float %919)  ; FMin(a,b)
  %931 = call float @dx.op.binary.f32(i32 35, float %903, float %929)  ; FMax(a,b)
  %932 = add nuw nsw i32 %905, 1
  %933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.i32 %933, 0
  %935 = icmp ult i32 %932, %934
  br i1 %935, label %902, label %936

; <label>:936                                     ; preds = %902
  br label %937

; <label>:937                                     ; preds = %936, %883
  %938 = phi float [ 0.000000e+00, %883 ], [ %931, %936 ]
  %939 = phi float [ 1.000000e+06, %883 ], [ %930, %936 ]
  %940 = fadd fast float %938, %875
  %941 = fmul fast float %939, %897
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  %943 = fsub fast float %893, %889
  %944 = fsub fast float %894, %890
  %945 = fsub fast float %895, %891
  %946 = fmul fast float %942, %943
  %947 = fmul fast float %942, %944
  %948 = fmul fast float %942, %945
  %949 = fadd fast float %946, %889
  %950 = fadd fast float %947, %890
  %951 = fadd fast float %948, %891
  %952 = fmul fast float %949, %938
  %953 = fmul fast float %950, %938
  %954 = fmul fast float %951, %938
  %955 = fadd fast float %952, %871
  %956 = fadd fast float %953, %872
  %957 = fadd fast float %954, %873
  br label %1154

; <label>:958                                     ; preds = %878
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %961 = extractvalue %dx.types.CBufRet.f32 %959, 3
  %962 = fmul fast float %960, %189
  %963 = fmul fast float %961, %190
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %967 = fadd fast float %962, %965
  %968 = fadd fast float %963, %966
  %969 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %970 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %969, float %970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %975 = fmul fast float %974, %972
  %976 = fsub fast float %967, %969
  %977 = fsub fast float %968, %970
  %978 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %979 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %980 = fmul fast float %978, %976
  %981 = fmul fast float %979, %977
  %982 = fmul fast float %980, %980
  %983 = fmul fast float %981, %981
  %984 = fadd fast float %982, %983
  %985 = call float @dx.op.unary.f32(i32 24, float %984)  ; Sqrt(value)
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %988 = fmul fast float %987, %985
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  %990 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %991 = fsub fast float %990, %975
  %992 = fmul fast float %991, %989
  %993 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %994 = fsub fast float %191, %975
  %995 = fsub fast float %994, %993
  %996 = fsub fast float %995, %992
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %999 = fsub fast float %996, %998
  %1000 = fcmp fast olt float %999, 0.000000e+00
  %1001 = extractvalue %dx.types.CBufRet.i32 %879, 0
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1053, label %1003

; <label>:1003                                    ; preds = %958
  br label %1004

; <label>:1004                                    ; preds = %1042, %1003
  %1005 = phi i32 [ %1048, %1042 ], [ 1, %1003 ]
  %1006 = phi i32 [ %1049, %1042 ], [ 0, %1003 ]
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 1
  %1009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.i32 %1009, 1
  %1011 = and i32 %1010, 8
  %1012 = icmp eq i32 %1011, 0
  %1013 = fcmp fast ogt float %1008, %996
  %1014 = or i1 %1013, %1012
  %1015 = add i32 %1006, 171
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 %1015)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1019 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  br i1 %1014, label %1020, label %1026, !dx.controlflow.hints !72

; <label>:1020                                    ; preds = %1004
  %1021 = fsub fast float %1017, %189
  %1022 = fsub fast float %1018, %190
  %1023 = fmul fast float %1021, %1021
  %1024 = fmul fast float %1022, %1022
  %1025 = fadd fast float %1023, %1024
  br label %1042

; <label>:1026                                    ; preds = %1004
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1029 = extractvalue %dx.types.CBufRet.f32 %1007, 2
  %1030 = fmul fast float %1029, %1028
  %1031 = fsub fast float %1030, %1008
  %1032 = fdiv fast float %1019, %1031
  %1033 = fsub fast float %189, %1017
  %1034 = fsub fast float %190, %1018
  %1035 = fsub fast float %996, %1008
  %1036 = fmul fast float %1032, %1035
  %1037 = fmul fast float %1033, %1033
  %1038 = fmul fast float %1034, %1034
  %1039 = fadd fast float %1037, %1038
  %1040 = fmul fast float %1036, %1036
  %1041 = fadd fast float %1039, %1040
  br label %1042

; <label>:1042                                    ; preds = %1026, %1020
  %1043 = phi float [ %1025, %1020 ], [ %1041, %1026 ]
  %1044 = call float @dx.op.unary.f32(i32 24, float %1043)  ; Sqrt(value)
  %1045 = fsub float %1019, %1044
  %1046 = fcmp fast olt float %1045, 0.000000e+00
  %1047 = zext i1 %1046 to i32
  %1048 = and i32 %1047, %1005
  %1049 = add i32 %1006, 1
  %1050 = extractvalue %dx.types.CBufRet.i32 %1009, 0
  %1051 = icmp ult i32 %1049, %1050
  br i1 %1051, label %1004, label %1052

; <label>:1052                                    ; preds = %1042
  br label %1053

; <label>:1053                                    ; preds = %1052, %958
  %1054 = phi i32 [ 1, %958 ], [ %1048, %1052 ]
  br label %1055

; <label>:1055                                    ; preds = %1055, %1053
  %1056 = phi i32 [ %1092, %1055 ], [ %1054, %1053 ]
  %1057 = phi i32 [ %1093, %1055 ], [ 0, %1053 ]
  %1058 = add nuw nsw i32 %1057, 191
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 %1058)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1063 = add nuw nsw i32 %1057, 195
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 %1063)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1068 = fsub fast float %189, %1060
  %1069 = fsub fast float %190, %1061
  %1070 = fsub fast float %996, %1062
  %1071 = call float @dx.op.unary.f32(i32 6, float %1068)  ; FAbs(value)
  %1072 = call float @dx.op.unary.f32(i32 6, float %1069)  ; FAbs(value)
  %1073 = call float @dx.op.unary.f32(i32 6, float %1070)  ; FAbs(value)
  %1074 = fsub fast float %1071, %1065
  %1075 = fsub fast float %1072, %1066
  %1076 = fsub fast float %1073, %1067
  %1077 = call float @dx.op.binary.f32(i32 35, float %1074, float 0.000000e+00)  ; FMax(a,b)
  %1078 = call float @dx.op.binary.f32(i32 35, float %1075, float 0.000000e+00)  ; FMax(a,b)
  %1079 = call float @dx.op.binary.f32(i32 35, float %1076, float 0.000000e+00)  ; FMax(a,b)
  %1080 = fmul fast float %1077, %1077
  %1081 = fmul fast float %1078, %1078
  %1082 = fadd fast float %1081, %1080
  %1083 = fmul fast float %1079, %1079
  %1084 = fadd fast float %1082, %1083
  %1085 = call float @dx.op.unary.f32(i32 24, float %1084)  ; Sqrt(value)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1075, float %1076)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 35, float %1074, float %1086)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 36, float %1087, float 0.000000e+00)  ; FMin(a,b)
  %1089 = fadd fast float %1088, %1085
  %1090 = fcmp ogt float %1089, -0.000000e+00
  %1091 = zext i1 %1090 to i32
  %1092 = and i32 %1091, %1056
  %1093 = add nuw nsw i32 %1057, 1
  %1094 = icmp eq i32 %1093, 4
  br i1 %1094, label %1095, label %1055

; <label>:1095                                    ; preds = %1055
  %1096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.i32 %1096, 1
  %1098 = lshr i32 %1097, 1
  %1099 = xor i32 %1098, %1092
  %1100 = zext i1 %1000 to i32
  %1101 = and i32 %1099, %1100
  %1102 = icmp eq i32 %1101, 0
  br i1 %1102, label %1154, label %1103, !dx.controlflow.hints !73

; <label>:1103                                    ; preds = %1095
  %1104 = fmul fast float %182, %182
  %1105 = fmul fast float %183, %183
  %1106 = fadd fast float %1104, %1105
  %1107 = fmul fast float %184, %184
  %1108 = fadd fast float %1106, %1107
  %1109 = call float @dx.op.unary.f32(i32 24, float %1108)  ; Sqrt(value)
  %1110 = and i32 %880, 4
  %1111 = icmp ne i32 %1110, 0
  %1112 = select i1 %1111, float %1109, float 1.000000e+00
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1115 = fsub fast float %1112, %1114
  %1116 = extractvalue %dx.types.CBufRet.f32 %1113, 3
  %1117 = fmul fast float %1115, %1116
  %1118 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 3
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1123 = fsub fast float %1122, %996
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1126 = fmul fast float %1123, %1125
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1128 = fmul fast float %1127, %1120
  %1129 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1130 = fsub fast float %1109, %1129
  %1131 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1132 = fmul fast float %1130, %1131
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1134 = fsub fast float 1.000000e+00, %1118
  %1135 = fmul fast float %1133, %1134
  %1136 = fadd fast float %1135, %1118
  %1137 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1138 = fsub fast float %1128, %1137
  %1139 = fmul fast float %1138, %1136
  %1140 = fadd fast float %1139, %1137
  %1141 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1142 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1143 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1144 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1145 = fadd fast float %1140, %875
  %1146 = fmul fast float %1140, %1141
  %1147 = fmul fast float %1140, %1142
  %1148 = fmul fast float %1140, %1143
  %1149 = fadd fast float %1146, %871
  %1150 = fadd fast float %1147, %872
  %1151 = fadd fast float %1148, %873
  %1152 = fmul fast float %1140, %1144
  %1153 = fadd fast float %1152, %874
  br label %1154

; <label>:1154                                    ; preds = %1103, %1095, %937, %870
  %1155 = phi float [ %871, %870 ], [ %955, %937 ], [ %1149, %1103 ], [ %871, %1095 ]
  %1156 = phi float [ %872, %870 ], [ %956, %937 ], [ %1150, %1103 ], [ %872, %1095 ]
  %1157 = phi float [ %873, %870 ], [ %957, %937 ], [ %1151, %1103 ], [ %873, %1095 ]
  %1158 = phi float [ %874, %870 ], [ %874, %937 ], [ %1153, %1103 ], [ %874, %1095 ]
  %1159 = phi float [ %875, %870 ], [ %940, %937 ], [ %1145, %1103 ], [ %875, %1095 ]
  %1160 = and i32 %352, 16
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1953, label %1162, !dx.controlflow.hints !74

; <label>:1162                                    ; preds = %1154
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 3
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 3
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 3
  %1173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.i32 %1173, 0
  %1175 = icmp ne i32 %1174, 0
  %1176 = zext i1 %1175 to i32
  %1177 = extractvalue %dx.types.CBufRet.i32 %1173, 1
  %1178 = icmp ne i32 %1177, 0
  %1179 = zext i1 %1178 to i32
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = bitcast float %1181 to i32
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1233, label %1184

; <label>:1184                                    ; preds = %1162
  br label %1185

; <label>:1185                                    ; preds = %1228, %1184
  %1186 = phi i32 [ %1229, %1228 ], [ 0, %1184 ]
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1189 = bitcast float %1188 to i32
  %1190 = call i32 @dx.op.tertiary.i32(i32 49, i32 %350, i32 %1189, i32 %1186)  ; UMad(a,b,c)
  %1191 = shl i32 %1190, 2
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  br label %1194

; <label>:1194                                    ; preds = %1197, %1185
  %1195 = phi i32 [ %1193, %1185 ], [ %1202, %1197 ]
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1228, label %1197

; <label>:1197                                    ; preds = %1194
  %1198 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1195)  ; FirstbitLo(value)
  %1199 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1186, i32 %1198)  ; UMad(a,b,c)
  %1200 = and i32 %1198, 31
  %1201 = shl i32 1, %1200
  %1202 = xor i32 %1201, %1195
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1199, i32 0)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1199, i32 16)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.ResRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.ResRet.f32 %1207, 2
  %1211 = fsub fast float %1204, %1208
  %1212 = fsub fast float %1205, %1209
  %1213 = fsub fast float %1206, %1210
  %1214 = fadd fast float %1208, %1204
  %1215 = fadd fast float %1209, %1205
  %1216 = fadd fast float %1210, %1206
  %1217 = fcmp fast ogt float %189, %1211
  %1218 = fcmp fast ogt float %190, %1212
  %1219 = fcmp fast ogt float %191, %1213
  %1220 = and i1 %1217, %1218
  %1221 = and i1 %1219, %1220
  %1222 = fcmp fast olt float %189, %1214
  %1223 = fcmp fast olt float %190, %1215
  %1224 = fcmp fast olt float %191, %1216
  %1225 = and i1 %1222, %1223
  %1226 = and i1 %1224, %1225
  %1227 = and i1 %1221, %1226
  br i1 %1227, label %1231, label %1194, !dx.controlflow.hints !75

; <label>:1228                                    ; preds = %1194
  %1229 = add i32 %1186, 1
  %1230 = icmp ult i32 %1229, %1189
  br i1 %1230, label %1185, label %1232, !llvm.loop !76

; <label>:1231                                    ; preds = %1197
  br label %1233

; <label>:1232                                    ; preds = %1228
  br label %1233

; <label>:1233                                    ; preds = %1232, %1231, %1162
  %1234 = phi i32 [ 255, %1162 ], [ %1199, %1231 ], [ 255, %1232 ]
  %1235 = icmp eq i32 %1234, 255
  br i1 %1235, label %1255, label %1236, !dx.controlflow.hints !78

; <label>:1236                                    ; preds = %1233
  %1237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 32)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 132)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 136)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 152)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1234, i32 156)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1234, i32 160)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = icmp ne i32 %1248, 0
  %1252 = zext i1 %1251 to i32
  %1253 = icmp ne i32 %1250, 0
  %1254 = zext i1 %1253 to i32
  br label %1255

; <label>:1255                                    ; preds = %1236, %1233
  %1256 = phi float [ %1238, %1236 ], [ %1164, %1233 ]
  %1257 = phi float [ %1239, %1236 ], [ %1165, %1233 ]
  %1258 = phi float [ %1240, %1236 ], [ %1166, %1233 ]
  %1259 = phi float [ %1242, %1236 ], [ %1168, %1233 ]
  %1260 = phi float [ %1244, %1236 ], [ %1170, %1233 ]
  %1261 = phi float [ %1246, %1236 ], [ %1172, %1233 ]
  %1262 = phi i32 [ %1252, %1236 ], [ %1176, %1233 ]
  %1263 = phi i32 [ %1254, %1236 ], [ %1179, %1233 ]
  %1264 = extractvalue %dx.types.CBufRet.f32 %1169, 0
  %1265 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1266 = fsub fast float %189, %1264
  %1267 = fsub fast float %190, %1265
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1270 = extractvalue %dx.types.CBufRet.f32 %1268, 3
  %1271 = fmul fast float %1266, %1269
  %1272 = fmul fast float %1267, %1270
  %1273 = call float @dx.op.binary.f32(i32 36, float %1271, float %1272)  ; FMin(a,b)
  %1274 = fcmp fast olt float %1273, 0.000000e+00
  %1275 = call float @dx.op.binary.f32(i32 35, float %1271, float %1272)  ; FMax(a,b)
  %1276 = fcmp fast ogt float %1275, 1.000000e+00
  %1277 = or i1 %1274, %1276
  %1278 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1279 = fcmp fast olt float %191, %1278
  %1280 = or i1 %1277, %1279
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 3
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = fadd fast float %1284, %1282
  %1286 = fcmp fast ogt float %191, %1285
  %1287 = or i1 %1280, %1286
  br i1 %1287, label %1572, label %1288, !dx.controlflow.hints !79

; <label>:1288                                    ; preds = %1255
  %1289 = fsub fast float 1.000000e+00, %1272
  %1290 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 3
  %1293 = extractvalue %dx.types.CBufRet.f32 %1291, 2
  %1294 = extractvalue %dx.types.CBufRet.f32 %1291, 1
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1299 = extractvalue %dx.types.CBufRet.f32 %1291, 0
  br i1 %1235, label %1315, label %1300, !dx.controlflow.hints !80

; <label>:1300                                    ; preds = %1288
  %1301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 48)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.ResRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1301, 2
  %1305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 104)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 108)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  %1309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 112)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 116)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 120)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  br label %1315

; <label>:1315                                    ; preds = %1300, %1288
  %1316 = phi float [ %1308, %1300 ], [ %1290, %1288 ]
  %1317 = phi float [ %1312, %1300 ], [ %1292, %1288 ]
  %1318 = phi float [ %1314, %1300 ], [ %1293, %1288 ]
  %1319 = phi float [ %1310, %1300 ], [ %1294, %1288 ]
  %1320 = phi float [ %1302, %1300 ], [ %1296, %1288 ]
  %1321 = phi float [ %1303, %1300 ], [ %1297, %1288 ]
  %1322 = phi float [ %1304, %1300 ], [ %1298, %1288 ]
  %1323 = phi float [ %1306, %1300 ], [ %1299, %1288 ]
  %1324 = fcmp fast oeq float %1316, 0.000000e+00
  br i1 %1324, label %1440, label %1325, !dx.controlflow.hints !81

; <label>:1325                                    ; preds = %1315
  %1326 = fcmp fast ogt float %1317, 0.000000e+00
  %1327 = fcmp fast oeq float %433, 0.000000e+00
  br i1 %1327, label %1332, label %1328, !dx.controlflow.hints !65

; <label>:1328                                    ; preds = %1325
  %1329 = extractvalue %dx.types.CBufRet.f32 %1167, 1
  %1330 = fmul fast float %1329, %433
  %1331 = call float @dx.op.unary.f32(i32 23, float %1330)  ; Log(value)
  br label %1332

; <label>:1332                                    ; preds = %1328, %1325
  %1333 = phi float [ %1331, %1328 ], [ 0.000000e+00, %1325 ]
  br i1 %1327, label %1338, label %1334, !dx.controlflow.hints !65

; <label>:1334                                    ; preds = %1332
  %1335 = extractvalue %dx.types.CBufRet.f32 %1167, 0
  %1336 = fmul fast float %1335, %433
  %1337 = call float @dx.op.unary.f32(i32 23, float %1336)  ; Log(value)
  br label %1338

; <label>:1338                                    ; preds = %1334, %1332
  %1339 = phi float [ %1337, %1334 ], [ 0.000000e+00, %1332 ]
  br i1 %1326, label %1340, label %1402, !dx.controlflow.hints !82

; <label>:1340                                    ; preds = %1338
  %1341 = fcmp fast ogt float %1318, 0.000000e+00
  br i1 %1341, label %1342, label %1352, !dx.controlflow.hints !83

; <label>:1342                                    ; preds = %1340
  %1343 = fmul fast float %1318, %1271
  %1344 = fmul fast float %1318, %1289
  %1345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %31, float %1343, float %1344, float undef, float undef, i32 0, i32 0, i32 undef, float %1339)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.ResRet.f32 %1345, 1
  %1348 = fmul fast float %1346, 2.000000e+00
  %1349 = fmul fast float %1347, 2.000000e+00
  %1350 = fadd fast float %1348, -1.000000e+00
  %1351 = fadd fast float %1349, -1.000000e+00
  br label %1373

; <label>:1352                                    ; preds = %1340
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 3
  %1355 = fmul fast float %1354, %1271
  %1356 = fmul fast float %1354, %1289
  %1357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %33, float %1355, float %1356, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.ResRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.ResRet.f32 %1357, 2
  %1361 = fmul fast float %1358, 2.000000e+00
  %1362 = fmul fast float %1359, 2.000000e+00
  %1363 = fmul fast float %1360, 2.000000e+00
  %1364 = fadd fast float %1361, -1.000000e+00
  %1365 = fadd fast float %1362, -1.000000e+00
  %1366 = fadd fast float %1363, -1.000000e+00
  %1367 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1368 = fmul fast float %1364, %1367
  %1369 = fmul fast float %1365, %1367
  %1370 = extractvalue %dx.types.CBufRet.f32 %1283, 2
  %1371 = fmul fast float %1370, 5.000000e-01
  %1372 = fmul fast float %1371, %1366
  br label %1373

; <label>:1373                                    ; preds = %1352, %1342
  %1374 = phi float [ %1350, %1342 ], [ %1368, %1352 ]
  %1375 = phi float [ %1351, %1342 ], [ %1369, %1352 ]
  %1376 = phi float [ 0.000000e+00, %1342 ], [ %1372, %1352 ]
  %1377 = fmul fast float %1316, %189
  %1378 = fmul fast float %1316, %190
  %1379 = fmul fast float %1316, %191
  %1380 = call float @dx.op.unary.f32(i32 22, float %1317)  ; Frc(value)
  %1381 = fmul fast float %1380, %1374
  %1382 = fmul fast float %1380, %1375
  %1383 = fmul fast float %1380, %1376
  %1384 = fsub fast float %1377, %1381
  %1385 = fsub fast float %1378, %1382
  %1386 = fsub fast float %1379, %1383
  %1387 = fadd fast float %1317, 5.000000e-01
  %1388 = call float @dx.op.unary.f32(i32 22, float %1387)  ; Frc(value)
  %1389 = fmul fast float %1388, %1374
  %1390 = fmul fast float %1388, %1375
  %1391 = fmul fast float %1388, %1376
  %1392 = fadd fast float %1377, -5.000000e-01
  %1393 = fsub fast float %1392, %1389
  %1394 = fadd fast float %1378, -5.000000e-01
  %1395 = fsub fast float %1394, %1390
  %1396 = fadd fast float %1379, -5.000000e-01
  %1397 = fsub fast float %1396, %1391
  %1398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1393, float %1395, float %1397, float undef, i32 0, i32 0, i32 0, float %1333)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = fadd fast float %1399, %1319
  br label %1412

; <label>:1402                                    ; preds = %1338
  %1403 = fmul fast float %1323, %1320
  %1404 = fmul fast float %1323, %1321
  %1405 = fmul fast float %1323, %1322
  %1406 = fsub fast float %189, %1403
  %1407 = fsub fast float %190, %1404
  %1408 = fsub fast float %191, %1405
  %1409 = fmul fast float %1406, %1316
  %1410 = fmul fast float %1407, %1316
  %1411 = fmul fast float %1408, %1316
  br label %1412

; <label>:1412                                    ; preds = %1402, %1373
  %1413 = phi float [ %1384, %1373 ], [ %1409, %1402 ]
  %1414 = phi float [ %1385, %1373 ], [ %1410, %1402 ]
  %1415 = phi float [ %1386, %1373 ], [ %1411, %1402 ]
  %1416 = phi float [ %1401, %1373 ], [ 0.000000e+00, %1402 ]
  %1417 = phi float [ %1400, %1373 ], [ 0.000000e+00, %1402 ]
  %1418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1413, float %1414, float %1415, float undef, i32 0, i32 0, i32 0, float %1333)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = fadd fast float %1419, %1319
  br i1 %1326, label %1422, label %1433, !dx.controlflow.hints !84

; <label>:1422                                    ; preds = %1412
  %1423 = call float @dx.op.unary.f32(i32 22, float %1317)  ; Frc(value)
  %1424 = fmul fast float %1423, 2.000000e+00
  %1425 = fadd fast float %1424, -1.000000e+00
  %1426 = call float @dx.op.unary.f32(i32 6, float %1425)  ; FAbs(value)
  %1427 = fsub fast float %1416, %1421
  %1428 = fmul fast float %1426, %1427
  %1429 = fadd fast float %1428, %1421
  %1430 = fsub fast float %1417, %1420
  %1431 = fmul fast float %1426, %1430
  %1432 = fadd fast float %1431, %1420
  br label %1433

; <label>:1433                                    ; preds = %1422, %1412
  %1434 = phi float [ %1429, %1422 ], [ %1421, %1412 ]
  %1435 = phi float [ %1432, %1422 ], [ %1420, %1412 ]
  %1436 = fsub fast float %1434, %1435
  %1437 = fsub fast float 1.000000e+00, %1435
  %1438 = fdiv fast float %1436, %1437
  %1439 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  br label %1440

; <label>:1440                                    ; preds = %1433, %1315
  %1441 = phi float [ %1439, %1433 ], [ 1.000000e+00, %1315 ]
  %1442 = fcmp fast oeq float %433, 0.000000e+00
  br i1 %1442, label %1447, label %1443, !dx.controlflow.hints !65

; <label>:1443                                    ; preds = %1440
  %1444 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1445 = fmul fast float %1444, %433
  %1446 = call float @dx.op.unary.f32(i32 23, float %1445)  ; Log(value)
  br label %1447

; <label>:1447                                    ; preds = %1443, %1440
  %1448 = phi float [ %1446, %1443 ], [ 0.000000e+00, %1440 ]
  %1449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %32, float %1271, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float %1448)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1271, float %1289, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1452 = extractvalue %dx.types.ResRet.f32 %1451, 0
  %1453 = extractvalue %dx.types.ResRet.f32 %1451, 1
  %1454 = extractvalue %dx.types.ResRet.f32 %1451, 2
  %1455 = extractvalue %dx.types.ResRet.f32 %1451, 3
  %1456 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1271, float %1289, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1460 = extractvalue %dx.types.ResRet.f32 %1456, 3
  %1461 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1271, float %1289, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.ResRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.ResRet.f32 %1461, 2
  %1465 = extractvalue %dx.types.ResRet.f32 %1461, 3
  %1466 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1271, float %1289, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.ResRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.ResRet.f32 %1466, 2
  %1470 = extractvalue %dx.types.ResRet.f32 %1466, 3
  %1471 = fadd fast float %1452, %1453
  %1472 = fadd fast float %1471, %1454
  %1473 = fadd fast float %1472, %1455
  %1474 = fmul fast float %1457, %1452
  %1475 = fmul fast float %1458, %1453
  %1476 = fadd fast float %1474, %1475
  %1477 = fmul fast float %1459, %1454
  %1478 = fadd fast float %1476, %1477
  %1479 = fmul fast float %1460, %1455
  %1480 = fadd fast float %1478, %1479
  %1481 = fmul fast float %1462, %1452
  %1482 = fmul fast float %1463, %1453
  %1483 = fadd fast float %1481, %1482
  %1484 = fmul fast float %1464, %1454
  %1485 = fadd fast float %1483, %1484
  %1486 = fmul fast float %1465, %1455
  %1487 = fadd fast float %1485, %1486
  %1488 = fmul fast float %1467, %1452
  %1489 = fmul fast float %1468, %1453
  %1490 = fadd fast float %1488, %1489
  %1491 = fmul fast float %1469, %1454
  %1492 = fadd fast float %1490, %1491
  %1493 = fmul fast float %1470, %1455
  %1494 = fadd fast float %1492, %1493
  %1495 = fcmp fast ogt float %1473, 0.000000e+00
  %1496 = fdiv fast float %1480, %1473
  %1497 = select i1 %1495, float %1496, float 0.000000e+00
  %1498 = fdiv fast float %1487, %1473
  %1499 = select i1 %1495, float %1498, float 0.000000e+00
  %1500 = fdiv fast float %1494, %1473
  %1501 = select i1 %1495, float %1500, float 0.000000e+00
  %1502 = fcmp fast ogt float %191, %1499
  %1503 = fcmp fast olt float %191, %1497
  %1504 = and i1 %1503, %1502
  br i1 %1504, label %1505, label %1572, !dx.controlflow.hints !85

; <label>:1505                                    ; preds = %1447
  %1506 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 2
  %1509 = extractvalue %dx.types.CBufRet.f32 %1507, 3
  br i1 %1235, label %1520, label %1510, !dx.controlflow.hints !86

; <label>:1510                                    ; preds = %1505
  %1511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 60)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 64)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.f32 %1513, 1
  %1516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 72)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 96)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  br label %1520

; <label>:1520                                    ; preds = %1510, %1505
  %1521 = phi float [ %1512, %1510 ], [ %1284, %1505 ]
  %1522 = phi float [ %1517, %1510 ], [ %1282, %1505 ]
  %1523 = phi float [ %1519, %1510 ], [ %1506, %1505 ]
  %1524 = phi float [ %1514, %1510 ], [ %1508, %1505 ]
  %1525 = phi float [ %1515, %1510 ], [ %1509, %1505 ]
  %1526 = call float @dx.op.binary.f32(i32 35, float %1450, float 0.000000e+00)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 36, float %1526, float 1.000000e+00)  ; FMin(a,b)
  %1528 = call float @dx.op.unary.f32(i32 24, float %1527)  ; Sqrt(value)
  %1529 = call float @dx.op.binary.f32(i32 35, float %1501, float 0x3F847AE140000000)  ; FMax(a,b)
  %1530 = fsub fast float %1497, %191
  %1531 = fsub fast float %191, %1499
  %1532 = call float @dx.op.binary.f32(i32 36, float %1531, float %1530)  ; FMin(a,b)
  %1533 = fdiv fast float %1532, %1529
  %1534 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1535 = fsub fast float %191, %1522
  %1536 = fdiv fast float %1535, %1521
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = fsub fast float 1.000000e+00, %1537
  %1539 = fmul float %1534, %1538
  %1540 = fmul float %1539, %1539
  %1541 = fmul fast float %1528, %1441
  %1542 = fmul fast float %1541, %1540
  %1543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1543, 2
  %1545 = extractvalue %dx.types.CBufRet.f32 %1543, 1
  %1546 = fsub fast float %1542, %1545
  %1547 = fsub fast float %1544, %1545
  %1548 = fdiv fast float %1546, %1547
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1550 = fmul fast float %1549, %1523
  %1551 = fcmp fast ogt float %1525, 0.000000e+00
  br i1 %1551, label %1552, label %1572, !dx.controlflow.hints !87

; <label>:1552                                    ; preds = %1520
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 0
  %1555 = extractvalue %dx.types.CBufRet.f32 %1553, 1
  %1556 = extractvalue %dx.types.CBufRet.f32 %1553, 2
  %1557 = fsub fast float %189, %1554
  %1558 = fsub fast float %190, %1555
  %1559 = fsub fast float %191, %1556
  %1560 = fmul fast float %1557, %1557
  %1561 = fmul fast float %1558, %1558
  %1562 = fadd fast float %1560, %1561
  %1563 = fmul fast float %1559, %1559
  %1564 = fadd fast float %1562, %1563
  %1565 = call float @dx.op.unary.f32(i32 24, float %1564)  ; Sqrt(value)
  %1566 = fsub fast float %1565, %1524
  %1567 = fsub fast float %1525, %1524
  %1568 = fdiv fast float %1566, %1567
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1570 = fmul fast float %1569, %1569
  %1571 = fmul fast float %1570, %1550
  br label %1572

; <label>:1572                                    ; preds = %1552, %1520, %1447, %1255
  %1573 = phi float [ 0.000000e+00, %1255 ], [ 0.000000e+00, %1447 ], [ %1571, %1552 ], [ %1550, %1520 ]
  %1574 = fcmp fast oeq float %1573, 0.000000e+00
  br i1 %1574, label %1953, label %1575, !dx.controlflow.hints !88

; <label>:1575                                    ; preds = %1572
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 0
  %1578 = extractvalue %dx.types.CBufRet.f32 %1576, 1
  %1579 = extractvalue %dx.types.CBufRet.f32 %1576, 2
  %1580 = fsub fast float %189, %1577
  %1581 = fadd fast float %1580, %1579
  %1582 = fsub fast float %190, %1578
  %1583 = fadd fast float %1582, %1579
  %1584 = extractvalue %dx.types.CBufRet.f32 %1576, 3
  %1585 = fmul fast float %1581, %1584
  %1586 = fmul fast float %1583, %1584
  %1587 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1588 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1589 = fsub fast float 1.000000e+00, %1587
  %1590 = fsub fast float 1.000000e+00, %1588
  %1591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1589, float %1590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 2
  %1595 = fmul fast float %1594, %1592
  %1596 = extractvalue %dx.types.CBufRet.f32 %1593, 3
  %1597 = fadd fast float %1596, %1595
  %1598 = fcmp fast ogt float %1592, 0.000000e+00
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = and i32 %1600, 32768
  %1602 = icmp ne i32 %1601, 0
  %1603 = and i1 %1598, %1602
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 3
  %1606 = fadd fast float %1605, %1597
  %1607 = fcmp fast ole float %191, %1606
  %1608 = and i1 %1603, %1607
  %1609 = xor i1 %1608, true
  %1610 = icmp ne i32 %1262, 0
  %1611 = and i1 %1610, %1609
  %1612 = icmp ne i32 %1263, 0
  %1613 = and i1 %1612, %1608
  %1614 = or i1 %1611, %1613
  br i1 %1614, label %1953, label %1615, !dx.controlflow.hints !89

; <label>:1615                                    ; preds = %1575
  %1616 = fsub fast float %191, %1597
  %1617 = call float @dx.op.unary.f32(i32 6, float %1616)  ; FAbs(value)
  %1618 = fdiv fast float %1617, %1261
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = fmul fast float %1619, %1573
  %1621 = fcmp fast une float %1259, 0.000000e+00
  br i1 %1621, label %1622, label %1941, !dx.controlflow.hints !90

; <label>:1622                                    ; preds = %1615
  %1623 = fmul fast float %1259, %113
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1628 = fmul fast float %1625, %1623
  %1629 = fmul fast float %1626, %1623
  %1630 = fmul fast float %1627, %1623
  %1631 = fadd fast float %1628, %189
  %1632 = fadd fast float %1629, %190
  %1633 = fadd fast float %1630, %191
  %1634 = fmul fast float %1259, 2.000000e+00
  %1635 = call float @dx.op.binary.f32(i32 35, float %433, float %1634)  ; FMax(a,b)
  %1636 = fsub fast float %1631, %1264
  %1637 = fsub fast float %1632, %1265
  %1638 = fmul fast float %1636, %1269
  %1639 = fmul fast float %1637, %1270
  %1640 = call float @dx.op.binary.f32(i32 36, float %1638, float %1639)  ; FMin(a,b)
  %1641 = fcmp fast olt float %1640, 0.000000e+00
  %1642 = call float @dx.op.binary.f32(i32 35, float %1638, float %1639)  ; FMax(a,b)
  %1643 = fcmp fast ogt float %1642, 1.000000e+00
  %1644 = or i1 %1641, %1643
  %1645 = fcmp fast olt float %1633, %1278
  %1646 = or i1 %1644, %1645
  %1647 = fcmp fast ogt float %1633, %1285
  %1648 = or i1 %1646, %1647
  br i1 %1648, label %1933, label %1649, !dx.controlflow.hints !79

; <label>:1649                                    ; preds = %1622
  %1650 = fsub fast float 1.000000e+00, %1639
  %1651 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 3
  %1654 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1655 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 0
  %1658 = extractvalue %dx.types.CBufRet.f32 %1656, 1
  %1659 = extractvalue %dx.types.CBufRet.f32 %1656, 2
  %1660 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  br i1 %1235, label %1676, label %1661, !dx.controlflow.hints !80

; <label>:1661                                    ; preds = %1649
  %1662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 48)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.f32 %1662, 0
  %1664 = extractvalue %dx.types.ResRet.f32 %1662, 1
  %1665 = extractvalue %dx.types.ResRet.f32 %1662, 2
  %1666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 104)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 108)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 112)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 116)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.f32 %1672, 0
  %1674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 120)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  br label %1676

; <label>:1676                                    ; preds = %1661, %1649
  %1677 = phi float [ %1669, %1661 ], [ %1651, %1649 ]
  %1678 = phi float [ %1673, %1661 ], [ %1653, %1649 ]
  %1679 = phi float [ %1675, %1661 ], [ %1654, %1649 ]
  %1680 = phi float [ %1671, %1661 ], [ %1655, %1649 ]
  %1681 = phi float [ %1663, %1661 ], [ %1657, %1649 ]
  %1682 = phi float [ %1664, %1661 ], [ %1658, %1649 ]
  %1683 = phi float [ %1665, %1661 ], [ %1659, %1649 ]
  %1684 = phi float [ %1667, %1661 ], [ %1660, %1649 ]
  %1685 = fcmp fast oeq float %1677, 0.000000e+00
  br i1 %1685, label %1801, label %1686, !dx.controlflow.hints !81

; <label>:1686                                    ; preds = %1676
  %1687 = fcmp fast ogt float %1678, 0.000000e+00
  %1688 = fcmp fast oeq float %1635, 0.000000e+00
  br i1 %1688, label %1693, label %1689, !dx.controlflow.hints !65

; <label>:1689                                    ; preds = %1686
  %1690 = extractvalue %dx.types.CBufRet.f32 %1167, 1
  %1691 = fmul fast float %1690, %1635
  %1692 = call float @dx.op.unary.f32(i32 23, float %1691)  ; Log(value)
  br label %1693

; <label>:1693                                    ; preds = %1689, %1686
  %1694 = phi float [ %1692, %1689 ], [ 0.000000e+00, %1686 ]
  br i1 %1688, label %1699, label %1695, !dx.controlflow.hints !65

; <label>:1695                                    ; preds = %1693
  %1696 = extractvalue %dx.types.CBufRet.f32 %1167, 0
  %1697 = fmul fast float %1696, %1635
  %1698 = call float @dx.op.unary.f32(i32 23, float %1697)  ; Log(value)
  br label %1699

; <label>:1699                                    ; preds = %1695, %1693
  %1700 = phi float [ %1698, %1695 ], [ 0.000000e+00, %1693 ]
  br i1 %1687, label %1701, label %1763, !dx.controlflow.hints !82

; <label>:1701                                    ; preds = %1699
  %1702 = fcmp fast ogt float %1679, 0.000000e+00
  br i1 %1702, label %1703, label %1713, !dx.controlflow.hints !83

; <label>:1703                                    ; preds = %1701
  %1704 = fmul fast float %1679, %1638
  %1705 = fmul fast float %1679, %1650
  %1706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %31, float %1704, float %1705, float undef, float undef, i32 0, i32 0, i32 undef, float %1700)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1707 = extractvalue %dx.types.ResRet.f32 %1706, 0
  %1708 = extractvalue %dx.types.ResRet.f32 %1706, 1
  %1709 = fmul fast float %1707, 2.000000e+00
  %1710 = fmul fast float %1708, 2.000000e+00
  %1711 = fadd fast float %1709, -1.000000e+00
  %1712 = fadd fast float %1710, -1.000000e+00
  br label %1734

; <label>:1713                                    ; preds = %1701
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 3
  %1716 = fmul fast float %1715, %1638
  %1717 = fmul fast float %1715, %1650
  %1718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %33, float %1716, float %1717, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = fmul fast float %1719, 2.000000e+00
  %1723 = fmul fast float %1720, 2.000000e+00
  %1724 = fmul fast float %1721, 2.000000e+00
  %1725 = fadd fast float %1722, -1.000000e+00
  %1726 = fadd fast float %1723, -1.000000e+00
  %1727 = fadd fast float %1724, -1.000000e+00
  %1728 = extractvalue %dx.types.CBufRet.f32 %1283, 1
  %1729 = fmul fast float %1725, %1728
  %1730 = fmul fast float %1726, %1728
  %1731 = extractvalue %dx.types.CBufRet.f32 %1283, 2
  %1732 = fmul fast float %1731, 5.000000e-01
  %1733 = fmul fast float %1732, %1727
  br label %1734

; <label>:1734                                    ; preds = %1713, %1703
  %1735 = phi float [ %1711, %1703 ], [ %1729, %1713 ]
  %1736 = phi float [ %1712, %1703 ], [ %1730, %1713 ]
  %1737 = phi float [ 0.000000e+00, %1703 ], [ %1733, %1713 ]
  %1738 = fmul fast float %1677, %1631
  %1739 = fmul fast float %1677, %1632
  %1740 = fmul fast float %1677, %1633
  %1741 = call float @dx.op.unary.f32(i32 22, float %1678)  ; Frc(value)
  %1742 = fmul fast float %1741, %1735
  %1743 = fmul fast float %1741, %1736
  %1744 = fmul fast float %1741, %1737
  %1745 = fsub fast float %1738, %1742
  %1746 = fsub fast float %1739, %1743
  %1747 = fsub fast float %1740, %1744
  %1748 = fadd fast float %1678, 5.000000e-01
  %1749 = call float @dx.op.unary.f32(i32 22, float %1748)  ; Frc(value)
  %1750 = fmul fast float %1749, %1735
  %1751 = fmul fast float %1749, %1736
  %1752 = fmul fast float %1749, %1737
  %1753 = fadd fast float %1738, -5.000000e-01
  %1754 = fsub fast float %1753, %1750
  %1755 = fadd fast float %1739, -5.000000e-01
  %1756 = fsub fast float %1755, %1751
  %1757 = fadd fast float %1740, -5.000000e-01
  %1758 = fsub fast float %1757, %1752
  %1759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1754, float %1756, float %1758, float undef, i32 0, i32 0, i32 0, float %1694)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1760 = extractvalue %dx.types.ResRet.f32 %1759, 0
  %1761 = extractvalue %dx.types.ResRet.f32 %1759, 1
  %1762 = fadd fast float %1760, %1680
  br label %1773

; <label>:1763                                    ; preds = %1699
  %1764 = fmul fast float %1684, %1681
  %1765 = fmul fast float %1684, %1682
  %1766 = fmul fast float %1684, %1683
  %1767 = fsub fast float %1631, %1764
  %1768 = fsub fast float %1632, %1765
  %1769 = fsub fast float %1633, %1766
  %1770 = fmul fast float %1767, %1677
  %1771 = fmul fast float %1768, %1677
  %1772 = fmul fast float %1769, %1677
  br label %1773

; <label>:1773                                    ; preds = %1763, %1734
  %1774 = phi float [ %1745, %1734 ], [ %1770, %1763 ]
  %1775 = phi float [ %1746, %1734 ], [ %1771, %1763 ]
  %1776 = phi float [ %1747, %1734 ], [ %1772, %1763 ]
  %1777 = phi float [ %1762, %1734 ], [ 0.000000e+00, %1763 ]
  %1778 = phi float [ %1761, %1734 ], [ 0.000000e+00, %1763 ]
  %1779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1774, float %1775, float %1776, float undef, i32 0, i32 0, i32 0, float %1694)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.ResRet.f32 %1779, 1
  %1782 = fadd fast float %1780, %1680
  br i1 %1687, label %1783, label %1794, !dx.controlflow.hints !84

; <label>:1783                                    ; preds = %1773
  %1784 = call float @dx.op.unary.f32(i32 22, float %1678)  ; Frc(value)
  %1785 = fmul fast float %1784, 2.000000e+00
  %1786 = fadd fast float %1785, -1.000000e+00
  %1787 = call float @dx.op.unary.f32(i32 6, float %1786)  ; FAbs(value)
  %1788 = fsub fast float %1777, %1782
  %1789 = fmul fast float %1787, %1788
  %1790 = fadd fast float %1789, %1782
  %1791 = fsub fast float %1778, %1781
  %1792 = fmul fast float %1787, %1791
  %1793 = fadd fast float %1792, %1781
  br label %1794

; <label>:1794                                    ; preds = %1783, %1773
  %1795 = phi float [ %1790, %1783 ], [ %1782, %1773 ]
  %1796 = phi float [ %1793, %1783 ], [ %1781, %1773 ]
  %1797 = fsub fast float %1795, %1796
  %1798 = fsub fast float 1.000000e+00, %1796
  %1799 = fdiv fast float %1797, %1798
  %1800 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  br label %1801

; <label>:1801                                    ; preds = %1794, %1676
  %1802 = phi float [ %1800, %1794 ], [ 1.000000e+00, %1676 ]
  %1803 = fcmp fast oeq float %1635, 0.000000e+00
  br i1 %1803, label %1808, label %1804, !dx.controlflow.hints !65

; <label>:1804                                    ; preds = %1801
  %1805 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1806 = fmul fast float %1805, %1635
  %1807 = call float @dx.op.unary.f32(i32 23, float %1806)  ; Log(value)
  br label %1808

; <label>:1808                                    ; preds = %1804, %1801
  %1809 = phi float [ %1807, %1804 ], [ 0.000000e+00, %1801 ]
  %1810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %32, float %1638, float %1650, float undef, float undef, i32 0, i32 0, i32 undef, float %1809)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1812 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1638, float %1650, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1814 = extractvalue %dx.types.ResRet.f32 %1812, 1
  %1815 = extractvalue %dx.types.ResRet.f32 %1812, 2
  %1816 = extractvalue %dx.types.ResRet.f32 %1812, 3
  %1817 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1638, float %1650, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.ResRet.f32 %1817, 1
  %1820 = extractvalue %dx.types.ResRet.f32 %1817, 2
  %1821 = extractvalue %dx.types.ResRet.f32 %1817, 3
  %1822 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1638, float %1650, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1823 = extractvalue %dx.types.ResRet.f32 %1822, 0
  %1824 = extractvalue %dx.types.ResRet.f32 %1822, 1
  %1825 = extractvalue %dx.types.ResRet.f32 %1822, 2
  %1826 = extractvalue %dx.types.ResRet.f32 %1822, 3
  %1827 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %34, float %1638, float %1650, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1828 = extractvalue %dx.types.ResRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.ResRet.f32 %1827, 1
  %1830 = extractvalue %dx.types.ResRet.f32 %1827, 2
  %1831 = extractvalue %dx.types.ResRet.f32 %1827, 3
  %1832 = fadd fast float %1813, %1814
  %1833 = fadd fast float %1832, %1815
  %1834 = fadd fast float %1833, %1816
  %1835 = fmul fast float %1818, %1813
  %1836 = fmul fast float %1819, %1814
  %1837 = fadd fast float %1835, %1836
  %1838 = fmul fast float %1820, %1815
  %1839 = fadd fast float %1837, %1838
  %1840 = fmul fast float %1821, %1816
  %1841 = fadd fast float %1839, %1840
  %1842 = fmul fast float %1823, %1813
  %1843 = fmul fast float %1824, %1814
  %1844 = fadd fast float %1842, %1843
  %1845 = fmul fast float %1825, %1815
  %1846 = fadd fast float %1844, %1845
  %1847 = fmul fast float %1826, %1816
  %1848 = fadd fast float %1846, %1847
  %1849 = fmul fast float %1828, %1813
  %1850 = fmul fast float %1829, %1814
  %1851 = fadd fast float %1849, %1850
  %1852 = fmul fast float %1830, %1815
  %1853 = fadd fast float %1851, %1852
  %1854 = fmul fast float %1831, %1816
  %1855 = fadd fast float %1853, %1854
  %1856 = fcmp fast ogt float %1834, 0.000000e+00
  %1857 = fdiv fast float %1841, %1834
  %1858 = select i1 %1856, float %1857, float 0.000000e+00
  %1859 = fdiv fast float %1848, %1834
  %1860 = select i1 %1856, float %1859, float 0.000000e+00
  %1861 = fdiv fast float %1855, %1834
  %1862 = select i1 %1856, float %1861, float 0.000000e+00
  %1863 = fcmp fast ogt float %1633, %1860
  %1864 = fcmp fast olt float %1633, %1858
  %1865 = and i1 %1864, %1863
  br i1 %1865, label %1866, label %1933, !dx.controlflow.hints !85

; <label>:1866                                    ; preds = %1808
  %1867 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 2
  %1870 = extractvalue %dx.types.CBufRet.f32 %1868, 3
  br i1 %1235, label %1881, label %1871, !dx.controlflow.hints !86

; <label>:1871                                    ; preds = %1866
  %1872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 60)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  %1874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 64)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.ResRet.f32 %1874, 1
  %1877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 72)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1234, i32 96)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  br label %1881

; <label>:1881                                    ; preds = %1871, %1866
  %1882 = phi float [ %1873, %1871 ], [ %1284, %1866 ]
  %1883 = phi float [ %1878, %1871 ], [ %1282, %1866 ]
  %1884 = phi float [ %1880, %1871 ], [ %1867, %1866 ]
  %1885 = phi float [ %1875, %1871 ], [ %1869, %1866 ]
  %1886 = phi float [ %1876, %1871 ], [ %1870, %1866 ]
  %1887 = call float @dx.op.binary.f32(i32 35, float %1811, float 0.000000e+00)  ; FMax(a,b)
  %1888 = call float @dx.op.binary.f32(i32 36, float %1887, float 1.000000e+00)  ; FMin(a,b)
  %1889 = call float @dx.op.unary.f32(i32 24, float %1888)  ; Sqrt(value)
  %1890 = call float @dx.op.binary.f32(i32 35, float %1862, float 0x3F847AE140000000)  ; FMax(a,b)
  %1891 = fsub fast float %1858, %1633
  %1892 = fsub fast float %1633, %1860
  %1893 = call float @dx.op.binary.f32(i32 36, float %1892, float %1891)  ; FMin(a,b)
  %1894 = fdiv fast float %1893, %1890
  %1895 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1896 = fsub fast float %1633, %1883
  %1897 = fdiv fast float %1896, %1882
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = fmul float %1895, %1899
  %1901 = fmul float %1900, %1900
  %1902 = fmul fast float %1889, %1802
  %1903 = fmul fast float %1902, %1901
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 2
  %1906 = extractvalue %dx.types.CBufRet.f32 %1904, 1
  %1907 = fsub fast float %1903, %1906
  %1908 = fsub fast float %1905, %1906
  %1909 = fdiv fast float %1907, %1908
  %1910 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  %1911 = fmul fast float %1910, %1884
  %1912 = fcmp fast ogt float %1886, 0.000000e+00
  br i1 %1912, label %1913, label %1933, !dx.controlflow.hints !87

; <label>:1913                                    ; preds = %1881
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.CBufRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.CBufRet.f32 %1914, 2
  %1918 = fsub fast float %1631, %1915
  %1919 = fsub fast float %1632, %1916
  %1920 = fsub fast float %1633, %1917
  %1921 = fmul fast float %1918, %1918
  %1922 = fmul fast float %1919, %1919
  %1923 = fadd fast float %1921, %1922
  %1924 = fmul fast float %1920, %1920
  %1925 = fadd fast float %1923, %1924
  %1926 = call float @dx.op.unary.f32(i32 24, float %1925)  ; Sqrt(value)
  %1927 = fsub fast float %1926, %1885
  %1928 = fsub fast float %1886, %1885
  %1929 = fdiv fast float %1927, %1928
  %1930 = call float @dx.op.unary.f32(i32 7, float %1929)  ; Saturate(value)
  %1931 = fmul fast float %1930, %1930
  %1932 = fmul fast float %1931, %1911
  br label %1933

; <label>:1933                                    ; preds = %1913, %1881, %1808, %1622
  %1934 = phi float [ 0.000000e+00, %1622 ], [ 0.000000e+00, %1808 ], [ %1932, %1913 ], [ %1911, %1881 ]
  %1935 = fsub fast float %1620, %1934
  %1936 = fdiv fast float %1935, %1620
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fsub fast float 1.000000e+00, %1260
  %1939 = fmul fast float %1937, %1938
  %1940 = fadd fast float %1939, %1260
  br label %1941

; <label>:1941                                    ; preds = %1933, %1615
  %1942 = phi float [ %1940, %1933 ], [ 1.000000e+00, %1615 ]
  %1943 = fadd fast float %1620, %1159
  %1944 = fmul fast float %1620, %1256
  %1945 = fmul fast float %1944, %1942
  %1946 = fmul fast float %1620, %1257
  %1947 = fmul fast float %1946, %1942
  %1948 = fmul fast float %1620, %1258
  %1949 = fmul fast float %1948, %1942
  %1950 = fadd fast float %1945, %1155
  %1951 = fadd fast float %1947, %1156
  %1952 = fadd fast float %1949, %1157
  br label %1953

; <label>:1953                                    ; preds = %1941, %1575, %1572, %1154
  %1954 = phi float [ %1155, %1154 ], [ %1155, %1572 ], [ %1155, %1575 ], [ %1950, %1941 ]
  %1955 = phi float [ %1156, %1154 ], [ %1156, %1572 ], [ %1156, %1575 ], [ %1951, %1941 ]
  %1956 = phi float [ %1157, %1154 ], [ %1157, %1572 ], [ %1157, %1575 ], [ %1952, %1941 ]
  %1957 = phi float [ %1159, %1154 ], [ %1159, %1572 ], [ %1159, %1575 ], [ %1943, %1941 ]
  %1958 = and i32 %352, 4
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %2130, label %1960, !dx.controlflow.hints !91

; <label>:1960                                    ; preds = %1953
  %1961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1962 = extractvalue %dx.types.CBufRet.i32 %1961, 1
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %2130, label %1964

; <label>:1964                                    ; preds = %1960
  br label %1965

; <label>:1965                                    ; preds = %2121, %1964
  %1966 = phi i32 [ %2127, %2121 ], [ 0, %1964 ]
  %1967 = phi float [ %2122, %2121 ], [ %1954, %1964 ]
  %1968 = phi float [ %2123, %2121 ], [ %1955, %1964 ]
  %1969 = phi float [ %2124, %2121 ], [ %1956, %1964 ]
  %1970 = phi float [ %2125, %2121 ], [ %1158, %1964 ]
  %1971 = phi float [ %2126, %2121 ], [ %1957, %1964 ]
  %1972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.i32 %1972, 1
  %1974 = call i32 @dx.op.tertiary.i32(i32 49, i32 %350, i32 %1973, i32 %1966)  ; UMad(a,b,c)
  %1975 = shl i32 %1974, 2
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = icmp eq i32 %1977, 0
  br i1 %1978, label %2121, label %1979

; <label>:1979                                    ; preds = %1965
  br label %1980

; <label>:1980                                    ; preds = %2107, %1979
  %1981 = phi i32 [ %1991, %2107 ], [ %1977, %1979 ]
  %1982 = phi float [ %2113, %2107 ], [ %1967, %1979 ]
  %1983 = phi float [ %2114, %2107 ], [ %1968, %1979 ]
  %1984 = phi float [ %2115, %2107 ], [ %1969, %1979 ]
  %1985 = phi float [ %2117, %2107 ], [ %1970, %1979 ]
  %1986 = phi float [ %2118, %2107 ], [ %1971, %1979 ]
  %1987 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1981)  ; FirstbitLo(value)
  %1988 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1966, i32 %1987)  ; UMad(a,b,c)
  %1989 = and i32 %1987, 31
  %1990 = shl i32 1, %1989
  %1991 = xor i32 %1990, %1981
  %1992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1988, i32 0)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  %1994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1988, i32 4)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1988, i32 16)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = extractvalue %dx.types.ResRet.f32 %1996, 1
  %1999 = extractvalue %dx.types.ResRet.f32 %1996, 2
  %2000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1988, i32 28)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1988, i32 32)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.ResRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.ResRet.f32 %2002, 2
  %2006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1988, i32 44)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.f32 %2006, 0
  %2008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1988, i32 48)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.f32 %2008, 0
  %2010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1988, i32 52)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1988, i32 56)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1988, i32 64)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.f32 %2014, 0
  %2016 = extractvalue %dx.types.ResRet.f32 %2014, 1
  %2017 = extractvalue %dx.types.ResRet.f32 %2014, 2
  %2018 = mul i32 %1988, 60
  %2019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.ResRet.f32 %2019, 1
  %2022 = extractvalue %dx.types.ResRet.f32 %2019, 2
  %2023 = add i32 %2018, 12
  %2024 = add i32 %2018, 48
  %2025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 2
  %2027 = fsub fast float %189, %2020
  %2028 = fsub fast float %190, %2021
  %2029 = fsub fast float %191, %2022
  %2030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.ResRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.ResRet.f32 %2030, 2
  %2034 = call float @dx.op.dot3.f32(i32 55, float %2027, float %2028, float %2029, float %2031, float %2032, float %2033)  ; Dot3(ax,ay,az,bx,by,bz)
  %2035 = add i32 %2018, 24
  %2036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  %2038 = extractvalue %dx.types.ResRet.f32 %2036, 1
  %2039 = extractvalue %dx.types.ResRet.f32 %2036, 2
  %2040 = call float @dx.op.dot3.f32(i32 55, float %2027, float %2028, float %2029, float %2037, float %2038, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2041 = add i32 %2018, 36
  %2042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.f32 %2042, 0
  %2044 = extractvalue %dx.types.ResRet.f32 %2042, 1
  %2045 = extractvalue %dx.types.ResRet.f32 %2042, 2
  %2046 = call float @dx.op.dot3.f32(i32 55, float %2027, float %2028, float %2029, float %2043, float %2044, float %2045)  ; Dot3(ax,ay,az,bx,by,bz)
  %2047 = call float @dx.op.unary.f32(i32 6, float %2034)  ; FAbs(value)
  %2048 = call float @dx.op.unary.f32(i32 6, float %2040)  ; FAbs(value)
  %2049 = call float @dx.op.unary.f32(i32 6, float %2046)  ; FAbs(value)
  %2050 = fmul fast float %2047, %2007
  %2051 = fmul fast float %2048, %2007
  %2052 = fmul fast float %2049, %2007
  %2053 = fadd fast float %2050, %2003
  %2054 = fadd fast float %2051, %2004
  %2055 = fadd fast float %2052, %2005
  %2056 = call float @dx.op.unary.f32(i32 7, float %2053)  ; Saturate(value)
  %2057 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2058 = call float @dx.op.unary.f32(i32 7, float %2055)  ; Saturate(value)
  %2059 = fmul fast float %2056, %2056
  %2060 = fmul fast float %2057, %2057
  %2061 = fadd fast float %2060, %2059
  %2062 = fmul fast float %2058, %2058
  %2063 = fadd fast float %2061, %2062
  %2064 = call float @dx.op.unary.f32(i32 24, float %2063)  ; Sqrt(value)
  %2065 = fsub fast float 1.000000e+00, %2064
  %2066 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2067 = fmul fast float %2066, %1993
  %2068 = fmul fast float %2026, 2.000000e+00
  %2069 = fadd fast float %2046, %2026
  %2070 = call float @dx.op.binary.f32(i32 35, float %2069, float 0.000000e+00)  ; FMax(a,b)
  %2071 = call float @dx.op.binary.f32(i32 36, float %2070, float %2068)  ; FMin(a,b)
  %2072 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2071)  ; FMax(a,b)
  %2073 = fmul fast float %1995, 0x3FF7154760000000
  %2074 = fmul fast float %2073, %2072
  %2075 = call float @dx.op.unary.f32(i32 21, float %2074)  ; Exp(value)
  %2076 = fmul fast float %2067, %2075
  %2077 = fcmp fast oeq float %433, 0.000000e+00
  br i1 %2077, label %2083, label %2078, !dx.controlflow.hints !65

; <label>:2078                                    ; preds = %1980
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 3
  %2081 = fmul fast float %2080, %433
  %2082 = call float @dx.op.unary.f32(i32 23, float %2081)  ; Log(value)
  br label %2083

; <label>:2083                                    ; preds = %2078, %1980
  %2084 = phi float [ %2082, %2078 ], [ 0.000000e+00, %1980 ]
  %2085 = fcmp fast oeq float %2009, 0.000000e+00
  br i1 %2085, label %2107, label %2086, !dx.controlflow.hints !92

; <label>:2086                                    ; preds = %2083
  %2087 = fmul fast float %2015, %2013
  %2088 = fmul fast float %2016, %2013
  %2089 = fmul fast float %2017, %2013
  %2090 = fsub fast float %189, %2087
  %2091 = fsub fast float %190, %2088
  %2092 = fsub fast float %191, %2089
  %2093 = fmul fast float %2090, %2009
  %2094 = fmul fast float %2091, %2009
  %2095 = fmul fast float %2092, %2009
  %2096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %2093, float %2094, float %2095, float undef, i32 0, i32 0, i32 0, float %2084)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2097 = extractvalue %dx.types.ResRet.f32 %2096, 0
  %2098 = extractvalue %dx.types.ResRet.f32 %2096, 1
  %2099 = fdiv fast float 1.000000e+00, %2011
  %2100 = fmul fast float %2011, 2.000000e+00
  %2101 = fadd fast float %2100, -1.000000e+00
  %2102 = fadd fast float %2101, %2098
  %2103 = fadd fast float %2102, %2097
  %2104 = fmul fast float %2103, %2099
  %2105 = fadd fast float %2104, -1.000000e+00
  %2106 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  br label %2107

; <label>:2107                                    ; preds = %2086, %2083
  %2108 = phi float [ %2106, %2086 ], [ 1.000000e+00, %2083 ]
  %2109 = fmul fast float %2076, %2108
  %2110 = fmul fast float %2109, %1997
  %2111 = fmul fast float %2109, %1998
  %2112 = fmul fast float %2109, %1999
  %2113 = fadd fast float %2110, %1982
  %2114 = fadd fast float %2111, %1983
  %2115 = fadd fast float %2112, %1984
  %2116 = fmul fast float %2109, %2001
  %2117 = fadd fast float %2116, %1985
  %2118 = fadd fast float %2109, %1986
  %2119 = icmp eq i32 %1981, %1990
  br i1 %2119, label %2120, label %1980, !llvm.loop !93

; <label>:2120                                    ; preds = %2107
  br label %2121

; <label>:2121                                    ; preds = %2120, %1965
  %2122 = phi float [ %1967, %1965 ], [ %2113, %2120 ]
  %2123 = phi float [ %1968, %1965 ], [ %2114, %2120 ]
  %2124 = phi float [ %1969, %1965 ], [ %2115, %2120 ]
  %2125 = phi float [ %1970, %1965 ], [ %2117, %2120 ]
  %2126 = phi float [ %1971, %1965 ], [ %2118, %2120 ]
  %2127 = add i32 %1966, 1
  %2128 = icmp ult i32 %2127, %1973
  br i1 %2128, label %1965, label %2129, !llvm.loop !94

; <label>:2129                                    ; preds = %2121
  br label %2130

; <label>:2130                                    ; preds = %2129, %1960, %1953
  %2131 = phi float [ %1954, %1953 ], [ %1954, %1960 ], [ %2122, %2129 ]
  %2132 = phi float [ %1955, %1953 ], [ %1955, %1960 ], [ %2123, %2129 ]
  %2133 = phi float [ %1956, %1953 ], [ %1956, %1960 ], [ %2124, %2129 ]
  %2134 = phi float [ %1158, %1953 ], [ %1158, %1960 ], [ %2125, %2129 ]
  %2135 = phi float [ %1957, %1953 ], [ %1957, %1960 ], [ %2126, %2129 ]
  %2136 = fcmp fast ogt float %2135, 0.000000e+00
  br i1 %2136, label %2137, label %2813, !dx.controlflow.hints !95

; <label>:2137                                    ; preds = %2130
  %2138 = fdiv fast float 1.000000e+00, %2135
  %2139 = fmul fast float %2138, %2131
  %2140 = fmul fast float %2138, %2132
  %2141 = fmul fast float %2138, %2133
  %2142 = fmul fast float %2138, %2134
  %2143 = fmul fast float %430, %429
  %2144 = fmul fast float %359, %124
  %2145 = call float @dx.op.unary.f32(i32 21, float %2144)  ; Exp(value)
  %2146 = fmul fast float %2145, %358
  %2147 = fadd fast float %363, %2146
  %2148 = fmul fast float %131, 2.000000e+00
  %2149 = fmul fast float %2148, %355
  %2150 = fmul fast float %132, 2.000000e+00
  %2151 = fmul fast float %2150, %356
  %2152 = fsub fast float 1.000000e+00, %2149
  %2153 = fsub fast float 1.000000e+00, %2151
  %2154 = fmul fast float %372, %2152
  %2155 = fmul fast float %373, %2152
  %2156 = fmul fast float %374, %2152
  %2157 = fmul fast float %379, %2153
  %2158 = fmul fast float %380, %2153
  %2159 = fmul fast float %381, %2153
  %2160 = fadd fast float %2157, %2154
  %2161 = fadd fast float %2158, %2155
  %2162 = fadd fast float %2159, %2156
  %2163 = fadd fast float %2160, %389
  %2164 = fadd fast float %2161, %390
  %2165 = fadd fast float %2162, %391
  %2166 = fmul fast float %2163, %2147
  %2167 = fmul fast float %2164, %2147
  %2168 = fmul fast float %2165, %2147
  %2169 = fadd fast float %124, 1.000000e+00
  %2170 = fmul fast float %359, %2169
  %2171 = call float @dx.op.unary.f32(i32 21, float %2170)  ; Exp(value)
  %2172 = fsub fast float %2171, %2145
  %2173 = fmul fast float %358, %2172
  %2174 = fmul fast float %2163, %2173
  %2175 = fsub fast float %2171, %2145
  %2176 = fmul fast float %358, %2175
  %2177 = fmul fast float %2164, %2176
  %2178 = fsub fast float %2171, %2145
  %2179 = fmul fast float %358, %2178
  %2180 = fmul fast float %2165, %2179
  %2181 = call float @dx.op.dot3.f32(i32 55, float %2174, float %2177, float %2180, float %2174, float %2177, float %2180)  ; Dot3(ax,ay,az,bx,by,bz)
  %2182 = call float @dx.op.unary.f32(i32 25, float %2181)  ; Rsqrt(value)
  %2183 = fmul fast float %2182, %2181
  %2184 = fmul fast float %2174, %2182
  %2185 = fmul fast float %2177, %2182
  %2186 = fmul fast float %2180, %2182
  %2187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.i32 %2187, 0
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2784, label %2190, !dx.controlflow.hints !96

; <label>:2190                                    ; preds = %2137
  %2191 = add nsw i32 %2188, -1
  %2192 = call i32 @dx.op.binary.i32(i32 37, i32 %2191, i32 0)  ; IMax(a,b)
  br label %2193

; <label>:2193                                    ; preds = %2777, %2190
  %2194 = phi i32 [ 0, %2190 ], [ %2781, %2777 ]
  %2195 = phi float [ 0.000000e+00, %2190 ], [ %2778, %2777 ]
  %2196 = phi float [ 0.000000e+00, %2190 ], [ %2779, %2777 ]
  %2197 = phi float [ 0.000000e+00, %2190 ], [ %2780, %2777 ]
  %2198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.i32 %2198, 0
  %2200 = call i32 @dx.op.tertiary.i32(i32 49, i32 %350, i32 %2199, i32 %2194)  ; UMad(a,b,c)
  %2201 = shl i32 %2200, 2
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = icmp eq i32 %2203, 0
  br i1 %2204, label %2777, label %2205

; <label>:2205                                    ; preds = %2193
  br label %2206

; <label>:2206                                    ; preds = %2645, %2205
  %2207 = phi i32 [ %2216, %2645 ], [ %2203, %2205 ]
  %2208 = phi float [ %2646, %2645 ], [ %2195, %2205 ]
  %2209 = phi float [ %2647, %2645 ], [ %2196, %2205 ]
  %2210 = phi float [ %2648, %2645 ], [ %2197, %2205 ]
  %2211 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2207)  ; FirstbitLo(value)
  %2212 = shl i32 %2194, 5
  %2213 = add i32 %2211, %2212
  %2214 = and i32 %2211, 31
  %2215 = shl i32 1, %2214
  %2216 = xor i32 %2215, %2207
  %2217 = mul i32 %2213, 112
  %2218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  %2220 = extractvalue %dx.types.ResRet.f32 %2218, 1
  %2221 = extractvalue %dx.types.ResRet.f32 %2218, 2
  %2222 = or i32 %2217, 12
  %2223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.f32 %2223, 0
  %2225 = add i32 %2217, 16
  %2226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.f32 %2226, 0
  %2228 = extractvalue %dx.types.ResRet.f32 %2226, 1
  %2229 = extractvalue %dx.types.ResRet.f32 %2226, 2
  %2230 = add i32 %2217, 28
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = add i32 %2217, 32
  %2234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.ResRet.f32 %2234, 1
  %2237 = extractvalue %dx.types.ResRet.f32 %2234, 2
  %2238 = add i32 %2217, 44
  %2239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.f32 %2239, 0
  %2241 = add i32 %2217, 48
  %2242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.f32 %2242, 0
  %2244 = extractvalue %dx.types.ResRet.f32 %2242, 1
  %2245 = extractvalue %dx.types.ResRet.f32 %2242, 2
  %2246 = extractvalue %dx.types.ResRet.f32 %2242, 3
  %2247 = add i32 %2217, 64
  %2248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.ResRet.f32 %2248, 1
  %2251 = extractvalue %dx.types.ResRet.f32 %2248, 2
  %2252 = extractvalue %dx.types.ResRet.f32 %2248, 3
  %2253 = add i32 %2217, 92
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 65535
  %2257 = uitofp i32 %2256 to float
  %2258 = lshr i32 %2255, 16
  %2259 = uitofp i32 %2258 to float
  %2260 = and i32 %2232, 65535
  %2261 = and i32 %2232, 50331648
  %2262 = icmp eq i32 %2261, 33554432
  %2263 = fdiv fast float 1.000000e+00, %2183
  br i1 %2262, label %2264, label %2456, !dx.controlflow.hints !97

; <label>:2264                                    ; preds = %2206
  %2265 = fsub fast float %2243, %2235
  %2266 = fsub fast float %2244, %2236
  %2267 = fsub fast float %2245, %2237
  %2268 = fmul fast float %2184, %2183
  %2269 = fmul fast float %2185, %2183
  %2270 = fmul fast float %2186, %2183
  %2271 = fadd fast float %2268, %2166
  %2272 = fadd fast float %2269, %2167
  %2273 = fadd fast float %2270, %2168
  %2274 = fmul fast float %2235, 2.000000e+00
  %2275 = fmul fast float %2236, 2.000000e+00
  %2276 = fmul fast float %2237, 2.000000e+00
  %2277 = call float @dx.op.dot3.f32(i32 55, float %2274, float %2275, float %2276, float %2274, float %2275, float %2276)  ; Dot3(ax,ay,az,bx,by,bz)
  %2278 = fdiv fast float %2274, %2277
  %2279 = fdiv fast float %2275, %2277
  %2280 = fdiv fast float %2276, %2277
  %2281 = fsub fast float %2166, %2265
  %2282 = fsub fast float %2167, %2266
  %2283 = fsub fast float %2168, %2267
  %2284 = call float @dx.op.dot3.f32(i32 55, float %2281, float %2282, float %2283, float %2274, float %2275, float %2276)  ; Dot3(ax,ay,az,bx,by,bz)
  %2285 = fmul fast float %2284, %2278
  %2286 = fmul fast float %2284, %2279
  %2287 = fmul fast float %2284, %2280
  %2288 = fsub fast float %2166, %2285
  %2289 = fsub fast float %2167, %2286
  %2290 = fsub fast float %2168, %2287
  %2291 = fsub fast float %2271, %2265
  %2292 = fsub fast float %2272, %2266
  %2293 = fsub fast float %2273, %2267
  %2294 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %2274, float %2275, float %2276)  ; Dot3(ax,ay,az,bx,by,bz)
  %2295 = fmul fast float %2294, %2278
  %2296 = fmul fast float %2294, %2279
  %2297 = fmul fast float %2294, %2280
  %2298 = fsub fast float %2271, %2295
  %2299 = fsub fast float %2272, %2296
  %2300 = fsub fast float %2273, %2297
  %2301 = fsub fast float %2298, %2288
  %2302 = fsub fast float %2299, %2289
  %2303 = fsub fast float %2300, %2290
  %2304 = fsub fast float %2265, %2288
  %2305 = fsub fast float %2266, %2289
  %2306 = fsub fast float %2267, %2290
  %2307 = call float @dx.op.dot3.f32(i32 55, float %2304, float %2305, float %2306, float %2301, float %2302, float %2303)  ; Dot3(ax,ay,az,bx,by,bz)
  %2308 = call float @dx.op.dot3.f32(i32 55, float %2301, float %2302, float %2303, float %2301, float %2302, float %2303)  ; Dot3(ax,ay,az,bx,by,bz)
  %2309 = fdiv fast float %2307, %2308
  %2310 = fcmp fast une float %2288, %2298
  %2311 = fcmp fast une float %2289, %2299
  %2312 = fcmp fast une float %2290, %2300
  %2313 = or i1 %2310, %2311
  %2314 = or i1 %2312, %2313
  %2315 = select i1 %2314, float %2309, float 0.000000e+00
  %2316 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2317 = fmul fast float %2316, %2268
  %2318 = fmul fast float %2316, %2269
  %2319 = fmul fast float %2316, %2270
  %2320 = fadd fast float %2281, %2317
  %2321 = fadd fast float %2282, %2318
  %2322 = fadd fast float %2283, %2319
  %2323 = call float @dx.op.dot3.f32(i32 55, float %2320, float %2321, float %2322, float %2274, float %2275, float %2276)  ; Dot3(ax,ay,az,bx,by,bz)
  %2324 = fdiv fast float %2323, %2277
  %2325 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2326 = fmul fast float %2274, %2325
  %2327 = fmul fast float %2275, %2325
  %2328 = fmul fast float %2276, %2325
  %2329 = fadd fast float %2326, %2265
  %2330 = fadd fast float %2327, %2266
  %2331 = fadd fast float %2328, %2267
  %2332 = fmul fast float %2251, %2227
  %2333 = fmul fast float %2251, %2228
  %2334 = fmul fast float %2251, %2229
  %2335 = fadd fast float %2329, %2332
  %2336 = fadd fast float %2330, %2333
  %2337 = fadd fast float %2331, %2334
  %2338 = fsub fast float -0.000000e+00, %2250
  %2339 = fdiv fast float %2338, %2249
  %2340 = fmul fast float %2339, %2339
  %2341 = call float @dx.op.dot3.f32(i32 55, float %2184, float %2185, float %2186, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2342 = fsub fast float %2166, %2335
  %2343 = fsub fast float %2167, %2336
  %2344 = fsub fast float %2168, %2337
  %2345 = call float @dx.op.dot3.f32(i32 55, float %2342, float %2343, float %2344, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2346 = fsub fast float %2335, %2166
  %2347 = fsub fast float %2336, %2167
  %2348 = fsub fast float %2337, %2168
  %2349 = fmul fast float %2341, %2341
  %2350 = fsub fast float %2349, %2340
  %2351 = fmul fast float %2345, %2341
  %2352 = call float @dx.op.dot3.f32(i32 55, float %2346, float %2347, float %2348, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %2353 = fmul fast float %2352, %2340
  %2354 = fadd fast float %2353, %2351
  %2355 = fmul fast float %2354, 2.000000e+00
  %2356 = fmul fast float %2345, %2345
  %2357 = call float @dx.op.dot3.f32(i32 55, float %2346, float %2347, float %2348, float %2346, float %2347, float %2348)  ; Dot3(ax,ay,az,bx,by,bz)
  %2358 = fmul fast float %2357, %2340
  %2359 = fsub fast float %2356, %2358
  %2360 = fmul fast float %2355, %2355
  %2361 = fmul fast float %2350, 4.000000e+00
  %2362 = fmul fast float %2361, %2359
  %2363 = fsub fast float %2360, %2362
  %2364 = fcmp fast ogt float %2363, 0.000000e+00
  br i1 %2364, label %2365, label %2456, !dx.controlflow.hints !98

; <label>:2365                                    ; preds = %2264
  %2366 = call float @dx.op.unary.f32(i32 24, float %2363)  ; Sqrt(value)
  %2367 = fdiv fast float 5.000000e-01, %2350
  %2368 = fsub fast float -0.000000e+00, %2355
  %2369 = fsub fast float %2368, %2366
  %2370 = fmul fast float %2369, %2367
  %2371 = fsub fast float %2366, %2355
  %2372 = fmul fast float %2371, %2367
  %2373 = call float @dx.op.binary.f32(i32 35, float %2370, float %2372)  ; FMax(a,b)
  %2374 = call float @dx.op.binary.f32(i32 36, float %2370, float %2372)  ; FMin(a,b)
  %2375 = fsub fast float %2329, %2166
  %2376 = fsub fast float %2330, %2167
  %2377 = fsub fast float %2331, %2168
  %2378 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2376, float %2377, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2379 = fdiv fast float %2378, %2341
  %2380 = fcmp fast ogt float %2341, 0.000000e+00
  br i1 %2380, label %2381, label %2384, !dx.controlflow.hints !99

; <label>:2381                                    ; preds = %2365
  %2382 = call float @dx.op.binary.f32(i32 36, float %2374, float %2379)  ; FMin(a,b)
  %2383 = call float @dx.op.binary.f32(i32 36, float %2373, float %2379)  ; FMin(a,b)
  br label %2387

; <label>:2384                                    ; preds = %2365
  %2385 = call float @dx.op.binary.f32(i32 35, float %2374, float %2379)  ; FMax(a,b)
  %2386 = call float @dx.op.binary.f32(i32 35, float %2373, float %2379)  ; FMax(a,b)
  br label %2387

; <label>:2387                                    ; preds = %2384, %2381
  %2388 = phi float [ %2382, %2381 ], [ %2385, %2384 ]
  %2389 = phi float [ %2383, %2381 ], [ %2386, %2384 ]
  %2390 = fcmp fast oge float %2388, 0.000000e+00
  %2391 = fcmp fast olt float %2388, %2183
  %2392 = and i1 %2390, %2391
  %2393 = fcmp fast ogt float %2389, 0.000000e+00
  %2394 = fcmp fast ole float %2389, %2183
  %2395 = and i1 %2393, %2394
  %2396 = or i1 %2392, %2395
  br i1 %2396, label %2397, label %2456, !dx.controlflow.hints !100

; <label>:2397                                    ; preds = %2387
  %2398 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2388)  ; FMax(a,b)
  %2399 = call float @dx.op.binary.f32(i32 36, float %2183, float %2389)  ; FMin(a,b)
  br i1 %2380, label %2400, label %2422, !dx.controlflow.hints !101

; <label>:2400                                    ; preds = %2397
  %2401 = fmul fast float %2399, %2184
  %2402 = fmul fast float %2399, %2185
  %2403 = fmul fast float %2399, %2186
  %2404 = fsub fast float %2346, %2401
  %2405 = fsub fast float %2347, %2402
  %2406 = fsub fast float %2348, %2403
  %2407 = call float @dx.op.dot3.f32(i32 55, float %2404, float %2405, float %2406, float %2404, float %2405, float %2406)  ; Dot3(ax,ay,az,bx,by,bz)
  %2408 = call float @dx.op.unary.f32(i32 25, float %2407)  ; Rsqrt(value)
  %2409 = fmul fast float %2408, %2404
  %2410 = fmul fast float %2408, %2405
  %2411 = fmul fast float %2408, %2406
  %2412 = call float @dx.op.dot3.f32(i32 55, float %2409, float %2410, float %2411, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2413 = fmul fast float %2412, %2249
  %2414 = fadd fast float %2413, %2250
  %2415 = fcmp fast olt float %2414, 0xBF1A36E2E0000000
  %2416 = select i1 %2415, float 0.000000e+00, float %2398
  %2417 = select i1 %2415, float %2398, float %2399
  %2418 = fsub fast float %2416, %2417
  %2419 = call float @dx.op.unary.f32(i32 6, float %2418)  ; FAbs(value)
  %2420 = fcmp fast olt float %2419, 0x3F1A36E2E0000000
  br i1 %2420, label %2421, label %2444, !dx.controlflow.hints !102

; <label>:2421                                    ; preds = %2400
  br label %2444

; <label>:2422                                    ; preds = %2397
  %2423 = fmul fast float %2398, %2184
  %2424 = fmul fast float %2398, %2185
  %2425 = fmul fast float %2398, %2186
  %2426 = fsub fast float %2346, %2423
  %2427 = fsub fast float %2347, %2424
  %2428 = fsub fast float %2348, %2425
  %2429 = call float @dx.op.dot3.f32(i32 55, float %2426, float %2427, float %2428, float %2426, float %2427, float %2428)  ; Dot3(ax,ay,az,bx,by,bz)
  %2430 = call float @dx.op.unary.f32(i32 25, float %2429)  ; Rsqrt(value)
  %2431 = fmul fast float %2430, %2426
  %2432 = fmul fast float %2430, %2427
  %2433 = fmul fast float %2430, %2428
  %2434 = call float @dx.op.dot3.f32(i32 55, float %2431, float %2432, float %2433, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2435 = fmul fast float %2434, %2249
  %2436 = fadd fast float %2435, %2250
  %2437 = fcmp fast olt float %2436, 0xBF1A36E2E0000000
  %2438 = select i1 %2437, float %2399, float %2398
  %2439 = select i1 %2437, float %2183, float %2399
  %2440 = fsub fast float %2438, %2439
  %2441 = call float @dx.op.unary.f32(i32 6, float %2440)  ; FAbs(value)
  %2442 = fcmp fast olt float %2441, 0x3F1A36E2E0000000
  br i1 %2442, label %2443, label %2444, !dx.controlflow.hints !103

; <label>:2443                                    ; preds = %2422
  br label %2444

; <label>:2444                                    ; preds = %2443, %2422, %2421, %2400
  %2445 = phi float [ 0.000000e+00, %2421 ], [ %2416, %2400 ], [ %2438, %2443 ], [ %2438, %2422 ]
  %2446 = phi float [ %2417, %2421 ], [ %2417, %2400 ], [ %2183, %2443 ], [ %2439, %2422 ]
  %2447 = fmul fast float %2445, %2184
  %2448 = fmul fast float %2445, %2185
  %2449 = fmul fast float %2445, %2186
  %2450 = fadd fast float %2447, %2166
  %2451 = fadd fast float %2448, %2167
  %2452 = fadd fast float %2449, %2168
  %2453 = fsub fast float %2446, %2445
  %2454 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2453)  ; FMax(a,b)
  %2455 = fmul fast float %2454, %2263
  br label %2456

; <label>:2456                                    ; preds = %2444, %2387, %2264, %2206
  %2457 = phi float [ %2335, %2444 ], [ %2335, %2387 ], [ %2335, %2264 ], [ %2243, %2206 ]
  %2458 = phi float [ %2336, %2444 ], [ %2336, %2387 ], [ %2336, %2264 ], [ %2244, %2206 ]
  %2459 = phi float [ %2337, %2444 ], [ %2337, %2387 ], [ %2337, %2264 ], [ %2245, %2206 ]
  %2460 = phi float [ %2450, %2444 ], [ %2166, %2387 ], [ %2166, %2264 ], [ %2166, %2206 ]
  %2461 = phi float [ %2451, %2444 ], [ %2167, %2387 ], [ %2167, %2264 ], [ %2167, %2206 ]
  %2462 = phi float [ %2452, %2444 ], [ %2168, %2387 ], [ %2168, %2264 ], [ %2168, %2206 ]
  %2463 = phi float [ %2454, %2444 ], [ %2183, %2387 ], [ %2183, %2264 ], [ %2183, %2206 ]
  %2464 = phi float [ %2455, %2444 ], [ 1.000000e+00, %2387 ], [ 1.000000e+00, %2264 ], [ 1.000000e+00, %2206 ]
  %2465 = fsub fast float %2457, %2460
  %2466 = fsub fast float %2458, %2461
  %2467 = fsub fast float %2459, %2462
  %2468 = call float @dx.op.dot3.f32(i32 55, float %2465, float %2466, float %2467, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %2469 = call float @dx.op.binary.f32(i32 35, float %2468, float 0.000000e+00)  ; FMax(a,b)
  %2470 = call float @dx.op.binary.f32(i32 36, float %2469, float %2463)  ; FMin(a,b)
  %2471 = fmul fast float %2470, %2184
  %2472 = fmul fast float %2470, %2185
  %2473 = fmul fast float %2470, %2186
  %2474 = fsub fast float %2460, %2457
  %2475 = fadd fast float %2474, %2471
  %2476 = fsub fast float %2461, %2458
  %2477 = fadd fast float %2476, %2472
  %2478 = fsub fast float %2462, %2459
  %2479 = fadd fast float %2478, %2473
  %2480 = fmul fast float %2475, %2475
  %2481 = fmul fast float %2477, %2477
  %2482 = fadd fast float %2480, %2481
  %2483 = fmul fast float %2479, %2479
  %2484 = fadd fast float %2482, %2483
  %2485 = call float @dx.op.unary.f32(i32 24, float %2484)  ; Sqrt(value)
  %2486 = fsub fast float -0.000000e+00, %2470
  %2487 = call float @dx.op.unary.f32(i32 6, float %2486)  ; FAbs(value)
  %2488 = fadd fast float %2487, 0x3DDB7CDFE0000000
  %2489 = fcmp fast oge float %2485, 0.000000e+00
  %2490 = fsub fast float -0.000000e+00, %2488
  %2491 = select i1 %2489, float %2490, float %2488
  %2492 = fadd fast float %2491, %2485
  %2493 = fsub fast float -0.000000e+00, %2485
  %2494 = select i1 %2489, float %2485, float %2493
  %2495 = fadd fast float %2488, %2494
  %2496 = fdiv fast float %2492, %2495
  %2497 = select i1 %2489, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %2498 = fmul fast float %2496, %2496
  %2499 = fmul fast float %2498, 0x3FC9205BC0000000
  %2500 = fadd fast float %2499, 0xBFEF6A1620000000
  %2501 = fmul fast float %2500, %2496
  %2502 = fadd fast float %2501, %2497
  %2503 = fcmp ole float %2470, -0.000000e+00
  %2504 = fsub fast float -0.000000e+00, %2502
  %2505 = select i1 %2503, float %2502, float %2504
  %2506 = fsub fast float %2463, %2470
  %2507 = call float @dx.op.unary.f32(i32 6, float %2506)  ; FAbs(value)
  %2508 = fadd fast float %2507, 0x3DDB7CDFE0000000
  %2509 = fsub fast float -0.000000e+00, %2508
  %2510 = select i1 %2489, float %2509, float %2508
  %2511 = fadd fast float %2510, %2485
  %2512 = fadd fast float %2508, %2494
  %2513 = fdiv fast float %2511, %2512
  %2514 = fmul fast float %2513, %2513
  %2515 = fmul fast float %2514, 0x3FC9205BC0000000
  %2516 = fadd fast float %2515, 0xBFEF6A1620000000
  %2517 = fmul fast float %2516, %2513
  %2518 = fadd fast float %2517, %2497
  %2519 = fcmp fast oge float %2506, 0.000000e+00
  %2520 = fsub fast float -0.000000e+00, %2518
  %2521 = select i1 %2519, float %2518, float %2520
  %2522 = fsub fast float %2521, %2505
  %2523 = fmul fast float %2522, %113
  %2524 = fadd fast float %2523, %2505
  %2525 = call float @dx.op.unary.f32(i32 14, float %2524)  ; Tan(value)
  %2526 = fmul fast float %2525, %2485
  %2527 = fadd fast float %2526, %2470
  %2528 = fmul fast float %2485, %2485
  %2529 = fmul fast float %2526, %2526
  %2530 = fadd fast float %2529, %2528
  %2531 = fmul fast float %2522, %2530
  %2532 = fdiv fast float %2485, %2531
  %2533 = fdiv fast float 1.000000e+00, %2532
  %2534 = fmul fast float %2464, %2263
  %2535 = fmul fast float %2534, %2533
  %2536 = fmul fast float %2527, %2184
  %2537 = fmul fast float %2527, %2185
  %2538 = fmul fast float %2527, %2186
  %2539 = fadd fast float %2536, %2460
  %2540 = fadd fast float %2537, %2461
  %2541 = fadd fast float %2538, %2462
  %2542 = call float @dx.op.dot3.f32(i32 55, float %2235, float %2236, float %2237, float %2235, float %2236, float %2237)  ; Dot3(ax,ay,az,bx,by,bz)
  %2543 = fsub fast float %2539, %2243
  %2544 = fsub fast float %2540, %2244
  %2545 = fsub fast float %2541, %2245
  %2546 = call float @dx.op.dot3.f32(i32 55, float %2543, float %2544, float %2545, float %2235, float %2236, float %2237)  ; Dot3(ax,ay,az,bx,by,bz)
  %2547 = fdiv fast float %2546, %2542
  %2548 = call float @dx.op.binary.f32(i32 35, float %2547, float -1.000000e+00)  ; FMax(a,b)
  %2549 = call float @dx.op.binary.f32(i32 36, float %2548, float 1.000000e+00)  ; FMin(a,b)
  %2550 = fmul fast float %2549, %2235
  %2551 = fmul fast float %2549, %2236
  %2552 = fmul fast float %2549, %2237
  %2553 = fadd fast float %2550, %2243
  %2554 = fadd fast float %2551, %2244
  %2555 = fadd fast float %2552, %2245
  %2556 = fsub fast float %2553, %2539
  %2557 = fsub fast float %2554, %2540
  %2558 = fsub fast float %2555, %2541
  %2559 = call float @dx.op.dot3.f32(i32 55, float %2556, float %2557, float %2558, float %2556, float %2557, float %2558)  ; Dot3(ax,ay,az,bx,by,bz)
  %2560 = call float @dx.op.unary.f32(i32 24, float %2559)  ; Sqrt(value)
  %2561 = fdiv fast float 1.000000e+00, %2560
  %2562 = fmul fast float %2556, %2561
  %2563 = fmul fast float %2557, %2561
  %2564 = fmul fast float %2558, %2561
  %2565 = fadd fast float %2560, %2224
  %2566 = fdiv fast float 1.000000e+00, %2565
  %2567 = fmul float %2240, %2566
  %2568 = fmul float %2567, %2567
  %2569 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  br i1 %2262, label %2570, label %2594, !dx.controlflow.hints !104

; <label>:2570                                    ; preds = %2456
  %2571 = fmul fast float %2251, %2227
  %2572 = fmul fast float %2251, %2228
  %2573 = fmul fast float %2251, %2229
  %2574 = fsub fast float %2571, %2539
  %2575 = fadd fast float %2574, %2553
  %2576 = fsub fast float %2572, %2540
  %2577 = fadd fast float %2576, %2554
  %2578 = fsub fast float %2573, %2541
  %2579 = fadd fast float %2578, %2555
  %2580 = call float @dx.op.dot3.f32(i32 55, float %2575, float %2577, float %2579, float %2575, float %2577, float %2579)  ; Dot3(ax,ay,az,bx,by,bz)
  %2581 = call float @dx.op.unary.f32(i32 25, float %2580)  ; Rsqrt(value)
  %2582 = fmul fast float %2581, %2575
  %2583 = fmul fast float %2581, %2577
  %2584 = fmul fast float %2581, %2579
  %2585 = fsub fast float %2539, %2553
  %2586 = fsub fast float %2540, %2554
  %2587 = fsub fast float %2541, %2555
  %2588 = fsub fast float -0.000000e+00, %2585
  %2589 = fsub fast float -0.000000e+00, %2586
  %2590 = fsub fast float -0.000000e+00, %2587
  %2591 = call float @dx.op.dot3.f32(i32 55, float %2588, float %2589, float %2590, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2592 = fcmp fast ogt float %2591, 0.000000e+00
  %2593 = uitofp i1 %2592 to float
  br label %2594

; <label>:2594                                    ; preds = %2570, %2456
  %2595 = phi float [ %2593, %2570 ], [ 1.000000e+00, %2456 ]
  %2596 = phi float [ %2582, %2570 ], [ %2562, %2456 ]
  %2597 = phi float [ %2583, %2570 ], [ %2563, %2456 ]
  %2598 = phi float [ %2584, %2570 ], [ %2564, %2456 ]
  %2599 = call float @dx.op.dot3.f32(i32 55, float %2227, float %2228, float %2229, float %2596, float %2597, float %2598)  ; Dot3(ax,ay,az,bx,by,bz)
  %2600 = fmul fast float %2599, %2599
  %2601 = call float @dx.op.unary.f32(i32 7, float %2600)  ; Saturate(value)
  %2602 = fsub fast float 1.000000e+00, %2601
  %2603 = fmul fast float %2602, 5.000000e-01
  %2604 = fcmp fast ogt float %2599, 0.000000e+00
  %2605 = fsub fast float 1.000000e+00, %2603
  %2606 = select i1 %2604, float %2603, float %2605
  %2607 = fmul fast float %2606, %2259
  %2608 = fadd fast float %2607, %2257
  %2609 = fmul fast float %2608, 0x3EF0001000000000
  %2610 = fsub fast float %2553, %423
  %2611 = fsub fast float %2554, %424
  %2612 = fsub fast float %2555, %425
  %2613 = call float @dx.op.dot3.f32(i32 55, float %2610, float %2611, float %2612, float %2610, float %2611, float %2612)  ; Dot3(ax,ay,az,bx,by,bz)
  %2614 = fmul fast float %2143, %2143
  %2615 = fsub fast float %2613, %2614
  %2616 = fdiv fast float %2615, %2613
  %2617 = call float @dx.op.unary.f32(i32 24, float %2616)  ; Sqrt(value)
  %2618 = fsub fast float 1.000000e+00, %2617
  %2619 = fcmp fast olt float %2613, %2614
  %2620 = fmul fast float %2618, 2.560000e+02
  %2621 = select i1 %2619, float 2.560000e+02, float %2620
  %2622 = call float @dx.op.unary.f32(i32 23, float %2621)  ; Log(value)
  %2623 = call float @dx.op.binary.f32(i32 36, float %2622, float 7.000000e+00)  ; FMin(a,b)
  %2624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %32, float %2609, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %2623)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  %2626 = fmul fast float %2599, %2249
  %2627 = fadd fast float %2626, %2250
  %2628 = call float @dx.op.unary.f32(i32 7, float %2627)  ; Saturate(value)
  %2629 = select i1 %2262, float 1.000000e+00, float %2628
  %2630 = select i1 %2262, float %2628, float 1.000000e+00
  %2631 = fmul fast float %2560, %2246
  %2632 = fsub fast float 1.000000e+00, %2631
  %2633 = fmul fast float %2632, %2252
  %2634 = call float @dx.op.unary.f32(i32 7, float %2633)  ; Saturate(value)
  %2635 = fmul fast float %2634, %2630
  %2636 = fmul fast float %2635, 2.000000e+00
  %2637 = fsub fast float 3.000000e+00, %2636
  %2638 = fmul fast float %2625, %2595
  %2639 = fmul fast float %2635, %2635
  %2640 = fmul fast float %2639, %2638
  %2641 = fmul fast float %2640, %2637
  %2642 = call float @dx.op.binary.f32(i32 36, float %2641, float %2641)  ; FMin(a,b)
  %2643 = call float @dx.op.binary.f32(i32 36, float %2641, float %2642)  ; FMin(a,b)
  %2644 = fcmp fast ogt float %2643, 0.000000e+00
  br i1 %2644, label %2650, label %2645, !dx.controlflow.hints !105

; <label>:2645                                    ; preds = %2743, %2738, %2594
  %2646 = phi float [ %2773, %2743 ], [ %2208, %2738 ], [ %2208, %2594 ]
  %2647 = phi float [ %2774, %2743 ], [ %2209, %2738 ], [ %2209, %2594 ]
  %2648 = phi float [ %2775, %2743 ], [ %2210, %2738 ], [ %2210, %2594 ]
  %2649 = icmp eq i32 %2207, %2215
  br i1 %2649, label %2776, label %2206

; <label>:2650                                    ; preds = %2594
  %2651 = icmp eq i32 %2260, 255
  br i1 %2651, label %2738, label %2652, !dx.controlflow.hints !106

; <label>:2652                                    ; preds = %2650
  %2653 = mul nuw nsw i32 %2260, 176
  %2654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.f32 %2654, 0
  %2656 = extractvalue %dx.types.ResRet.f32 %2654, 1
  %2657 = extractvalue %dx.types.ResRet.f32 %2654, 2
  %2658 = extractvalue %dx.types.ResRet.f32 %2654, 3
  %2659 = add nuw nsw i32 %2653, 16
  %2660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.f32 %2660, 0
  %2662 = extractvalue %dx.types.ResRet.f32 %2660, 1
  %2663 = add nuw nsw i32 %2653, 32
  %2664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.ResRet.f32 %2664, 2
  %2667 = add nuw nsw i32 %2653, 48
  %2668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.ResRet.f32 %2668, 1
  %2671 = extractvalue %dx.types.ResRet.f32 %2668, 2
  %2672 = extractvalue %dx.types.ResRet.f32 %2668, 3
  %2673 = add nuw nsw i32 %2653, 64
  %2674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.ResRet.f32 %2674, 1
  %2677 = extractvalue %dx.types.ResRet.f32 %2674, 2
  %2678 = extractvalue %dx.types.ResRet.f32 %2674, 3
  %2679 = add nuw nsw i32 %2653, 80
  %2680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2679, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.f32 %2680, 0
  %2682 = extractvalue %dx.types.ResRet.f32 %2680, 1
  %2683 = extractvalue %dx.types.ResRet.f32 %2680, 2
  %2684 = extractvalue %dx.types.ResRet.f32 %2680, 3
  %2685 = add nuw nsw i32 %2653, 96
  %2686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2685, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.ResRet.f32 %2686, 1
  %2689 = extractvalue %dx.types.ResRet.f32 %2686, 2
  %2690 = extractvalue %dx.types.ResRet.f32 %2686, 3
  %2691 = bitcast float %2662 to i32
  %2692 = fmul fast float %2666, %2562
  %2693 = fmul fast float %2666, %2563
  %2694 = fmul fast float %2666, %2564
  %2695 = fsub fast float %2539, %2692
  %2696 = fsub fast float %2540, %2693
  %2697 = fsub fast float %2541, %2694
  %2698 = fmul fast float %2695, %2669
  %2699 = call float @dx.op.tertiary.f32(i32 46, float %2696, float %2675, float %2698)  ; FMad(a,b,c)
  %2700 = call float @dx.op.tertiary.f32(i32 46, float %2697, float %2681, float %2699)  ; FMad(a,b,c)
  %2701 = fadd fast float %2700, %2687
  %2702 = fmul fast float %2695, %2670
  %2703 = call float @dx.op.tertiary.f32(i32 46, float %2696, float %2676, float %2702)  ; FMad(a,b,c)
  %2704 = call float @dx.op.tertiary.f32(i32 46, float %2697, float %2682, float %2703)  ; FMad(a,b,c)
  %2705 = fadd fast float %2704, %2688
  %2706 = fmul fast float %2695, %2671
  %2707 = call float @dx.op.tertiary.f32(i32 46, float %2696, float %2677, float %2706)  ; FMad(a,b,c)
  %2708 = call float @dx.op.tertiary.f32(i32 46, float %2697, float %2683, float %2707)  ; FMad(a,b,c)
  %2709 = fadd fast float %2708, %2689
  %2710 = fmul fast float %2695, %2672
  %2711 = call float @dx.op.tertiary.f32(i32 46, float %2696, float %2678, float %2710)  ; FMad(a,b,c)
  %2712 = call float @dx.op.tertiary.f32(i32 46, float %2697, float %2684, float %2711)  ; FMad(a,b,c)
  %2713 = fadd fast float %2712, %2690
  %2714 = fdiv fast float %2701, %2713
  %2715 = fdiv fast float %2705, %2713
  %2716 = fdiv fast float %2709, %2713
  %2717 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %2716)  ; FMax(a,b)
  %2718 = fmul fast float %2657, 5.000000e-01
  %2719 = call float @dx.op.tertiary.f32(i32 46, float %2718, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %2720 = fadd fast float %2719, %2714
  %2721 = fadd fast float %2715, %2718
  %2722 = fmul fast float %2720, %2661
  %2723 = fmul fast float %2721, %2661
  %2724 = call float @dx.op.binary.f32(i32 35, float %2722, float %2657)  ; FMax(a,b)
  %2725 = call float @dx.op.binary.f32(i32 35, float %2723, float %2657)  ; FMax(a,b)
  %2726 = call float @dx.op.binary.f32(i32 36, float %2724, float %2658)  ; FMin(a,b)
  %2727 = call float @dx.op.binary.f32(i32 36, float %2725, float %2658)  ; FMin(a,b)
  %2728 = fadd fast float %2726, %2655
  %2729 = fadd fast float %2727, %2656
  %2730 = uitofp i32 %2691 to float
  %2731 = fadd fast float %2717, %2665
  %2732 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %35, float %2728, float %2729, float %2730, float undef, i32 0, i32 0, i32 undef, float %2731)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2733 = extractvalue %dx.types.ResRet.f32 %2732, 0
  %2734 = fadd fast float %2733, -1.000000e+00
  %2735 = fmul fast float %2734, %2629
  %2736 = fadd fast float %2735, 1.000000e+00
  %2737 = fmul fast float %2736, %2641
  br label %2738

; <label>:2738                                    ; preds = %2652, %2650
  %2739 = phi float [ %2737, %2652 ], [ %2641, %2650 ]
  %2740 = call float @dx.op.binary.f32(i32 36, float %2739, float %2739)  ; FMin(a,b)
  %2741 = call float @dx.op.binary.f32(i32 36, float %2739, float %2740)  ; FMin(a,b)
  %2742 = fcmp fast ogt float %2741, 0.000000e+00
  br i1 %2742, label %2743, label %2645, !dx.controlflow.hints !107

; <label>:2743                                    ; preds = %2738
  %2744 = call float @dx.op.dot3.f32(i32 55, float %2562, float %2563, float %2564, float %202, float %203, float %204)  ; Dot3(ax,ay,az,bx,by,bz)
  %2745 = fcmp fast ogt float %2142, 0.000000e+00
  %2746 = select i1 %2745, float 1.000000e+00, float -1.000000e+00
  %2747 = fmul fast float %113, 7.812500e-03
  %2748 = fmul fast float %113, 3.125000e-02
  %2749 = fadd fast float %2748, -3.125000e-02
  %2750 = fmul fast float %2746, 5.000000e-01
  %2751 = fmul fast float %2750, %2744
  %2752 = fmul fast float %2746, %2142
  %2753 = fadd fast float %2747, 4.921875e-01
  %2754 = fadd fast float %2753, %2751
  %2755 = fadd fast float %2747, 0x3FB25F3060000000
  %2756 = fadd fast float %2749, %2752
  %2757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %34, float %2754, float %2755, float %2756, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2758 = extractvalue %dx.types.ResRet.f32 %2757, 0
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 1
  %2761 = extractvalue %dx.types.CBufRet.f32 %2759, 2
  %2762 = select i1 %2262, float %2760, float %2761
  %2763 = fmul fast float %2569, 0x400921FB60000000
  %2764 = fmul fast float %2763, %2739
  %2765 = fmul fast float %2764, %2758
  %2766 = fmul fast float %2765, %2762
  %2767 = fmul fast float %2535, %2219
  %2768 = fmul fast float %2767, %2766
  %2769 = fmul fast float %2535, %2220
  %2770 = fmul fast float %2769, %2766
  %2771 = fmul fast float %2535, %2221
  %2772 = fmul fast float %2771, %2766
  %2773 = fadd fast float %2768, %2208
  %2774 = fadd fast float %2770, %2209
  %2775 = fadd fast float %2772, %2210
  br label %2645

; <label>:2776                                    ; preds = %2645
  br label %2777

; <label>:2777                                    ; preds = %2776, %2193
  %2778 = phi float [ %2195, %2193 ], [ %2646, %2776 ]
  %2779 = phi float [ %2196, %2193 ], [ %2647, %2776 ]
  %2780 = phi float [ %2197, %2193 ], [ %2648, %2776 ]
  %2781 = add i32 %2194, 1
  %2782 = icmp ugt i32 %2781, %2192
  br i1 %2782, label %2783, label %2193

; <label>:2783                                    ; preds = %2777
  br label %2784

; <label>:2784                                    ; preds = %2783, %2137
  %2785 = phi float [ 0.000000e+00, %2137 ], [ %2778, %2783 ]
  %2786 = phi float [ 0.000000e+00, %2137 ], [ %2779, %2783 ]
  %2787 = phi float [ 0.000000e+00, %2137 ], [ %2780, %2783 ]
  %2788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %32, float %138, float %139, float %140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2789 = extractvalue %dx.types.ResRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.ResRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.ResRet.f32 %2788, 2
  %2792 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2789)  ; IsNaN(value)
  %2793 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2790)  ; IsNaN(value)
  %2794 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2791)  ; IsNaN(value)
  %2795 = or i1 %2792, %2793
  %2796 = or i1 %2795, %2794
  %2797 = select i1 %2796, float 0.000000e+00, float %2789
  %2798 = select i1 %2796, float 0.000000e+00, float %2790
  %2799 = select i1 %2796, float 0.000000e+00, float %2791
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 1
  %2802 = fmul fast float %2797, %2801
  %2803 = fmul fast float %2798, %2801
  %2804 = fmul fast float %2799, %2801
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 3
  %2807 = fmul fast float %2802, %2806
  %2808 = fmul fast float %2803, %2806
  %2809 = fmul fast float %2804, %2806
  %2810 = fadd fast float %2807, %2785
  %2811 = fadd fast float %2808, %2786
  %2812 = fadd fast float %2809, %2787
  br label %2813

; <label>:2813                                    ; preds = %2784, %2130
  %2814 = phi float [ %2139, %2784 ], [ %2131, %2130 ]
  %2815 = phi float [ %2140, %2784 ], [ %2132, %2130 ]
  %2816 = phi float [ %2141, %2784 ], [ %2133, %2130 ]
  %2817 = phi float [ %2810, %2784 ], [ 0.000000e+00, %2130 ]
  %2818 = phi float [ %2811, %2784 ], [ 0.000000e+00, %2130 ]
  %2819 = phi float [ %2812, %2784 ], [ 0.000000e+00, %2130 ]
  %2820 = fmul fast float %2814, %2135
  %2821 = fmul fast float %2815, %2135
  %2822 = fmul fast float %2816, %2135
  %2823 = fmul fast float %2820, %2817
  %2824 = fmul fast float %2821, %2818
  %2825 = fmul fast float %2822, %2819
  %2826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2827 = extractvalue %dx.types.CBufRet.f32 %2826, 0
  %2828 = fmul fast float %2823, %2827
  %2829 = fmul fast float %2824, %2827
  %2830 = fmul fast float %2825, %2827
  %2831 = fmul fast float %2829, 5.000000e-01
  %2832 = fadd fast float %2825, %2823
  %2833 = fmul fast float %2827, %2832
  %2834 = fmul fast float %2833, 2.500000e-01
  %2835 = fadd fast float %2834, %2831
  %2836 = call float @dx.op.unary.f32(i32 23, float %2835)  ; Log(value)
  %2837 = fmul fast float %2836, 0x3FE62E4300000000
  %2838 = fmul fast float %2837, %2837
  %2839 = icmp ugt i32 %205, 31
  %2840 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %2841 = add i32 %205, -1
  %2842 = add i32 %205, 7
  %2843 = and i32 %2842, 4
  %2844 = and i32 %2841, %2840
  %2845 = xor i32 %2844, %2843
  %2846 = and i32 %2840, -4
  %2847 = shl i32 %2840, 1
  %2848 = and i32 %2847, 6
  %2849 = lshr i32 177, %2848
  %2850 = and i32 %2849, 3
  %2851 = or i32 %2850, %2846
  br i1 %2839, label %2852, label %2868, !dx.controlflow.hints !108

; <label>:2852                                    ; preds = %2813
  %2853 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2837, i32 %2845)  ; WaveReadLaneAt(value,lane)
  %2854 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2838, i32 %2845)  ; WaveReadLaneAt(value,lane)
  %2855 = fadd fast float %2853, %2837
  %2856 = fadd fast float %2854, %2838
  %2857 = add i32 %205, 31
  %2858 = and i32 %2857, 16
  %2859 = xor i32 %2844, %2858
  %2860 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2855, i32 %2859)  ; WaveReadLaneAt(value,lane)
  %2861 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2856, i32 %2859)  ; WaveReadLaneAt(value,lane)
  %2862 = fadd fast float %2860, %2855
  %2863 = fadd fast float %2861, %2856
  %2864 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2862, i32 %2851)  ; WaveReadLaneAt(value,lane)
  %2865 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2863, i32 %2851)  ; WaveReadLaneAt(value,lane)
  %2866 = fadd fast float %2864, %2862
  %2867 = fadd fast float %2865, %2863
  br label %2904

; <label>:2868                                    ; preds = %2813
  %2869 = udiv i32 %42, %205
  %2870 = shl i32 %2869, 2
  %2871 = lshr i32 %2840, 1
  %2872 = and i32 %2871, 1
  %2873 = or i32 %2870, %2872
  %2874 = lshr i32 %2840, 2
  %2875 = and i32 %2874, 2
  %2876 = or i32 %2873, %2875
  %2877 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2837, i32 %2845)  ; WaveReadLaneAt(value,lane)
  %2878 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2838, i32 %2845)  ; WaveReadLaneAt(value,lane)
  %2879 = fadd fast float %2877, %2837
  %2880 = fadd fast float %2878, %2838
  %2881 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2879, i32 %2851)  ; WaveReadLaneAt(value,lane)
  %2882 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2880, i32 %2851)  ; WaveReadLaneAt(value,lane)
  %2883 = fadd fast float %2881, %2879
  %2884 = fadd fast float %2882, %2880
  %2885 = mul i32 %2876, 2
  %2886 = add i32 0, %2885
  %2887 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2886
  store float %2883, float addrspace(3)* %2887, align 4
  %2888 = mul i32 %2876, 2
  %2889 = add i32 1, %2888
  %2890 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2889
  store float %2884, float addrspace(3)* %2890, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2891 = load float, float addrspace(3)* %2887, align 4
  %2892 = load float, float addrspace(3)* %2890, align 4
  %2893 = xor i32 %2876, 4
  %2894 = mul i32 %2893, 2
  %2895 = add i32 0, %2894
  %2896 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2895
  %2897 = load float, float addrspace(3)* %2896, align 4
  %2898 = mul i32 %2893, 2
  %2899 = add i32 1, %2898
  %2900 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %2899
  %2901 = load float, float addrspace(3)* %2900, align 4
  %2902 = fadd fast float %2897, %2891
  %2903 = fadd fast float %2901, %2892
  br label %2904

; <label>:2904                                    ; preds = %2868, %2852
  %2905 = phi float [ %2866, %2852 ], [ %2902, %2868 ]
  %2906 = phi float [ %2867, %2852 ], [ %2903, %2868 ]
  %2907 = fmul fast float %2905, 1.250000e-01
  %2908 = and i32 %63, 1
  %2909 = and i32 %2908, %64
  %2910 = and i32 %2909, %65
  %2911 = icmp ne i32 %2910, 0
  %2912 = and i1 %2911, %75
  br i1 %2912, label %2913, label %2918, !dx.controlflow.hints !54

; <label>:2913                                    ; preds = %2904
  %2914 = fmul fast float %2906, 1.250000e-01
  %2915 = lshr i32 %63, 1
  %2916 = lshr i32 %64, 1
  %2917 = lshr i32 %65, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2915, i32 %2916, i32 %2917, float %2907, float %2914, float %2907, float %2907, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2918

; <label>:2918                                    ; preds = %2913, %2904
  br i1 %74, label %2953, label %2919, !dx.controlflow.hints !55

; <label>:2919                                    ; preds = %2918
  %2920 = fadd fast float %113, 0x3FE3C6EF40000000
  %2921 = call float @dx.op.unary.f32(i32 22, float %2920)  ; Frc(value)
  %2922 = call float @dx.op.unary.f32(i32 23, float %2828)  ; Log(value)
  %2923 = fadd fast float %2922, -7.000000e+00
  %2924 = call float @dx.op.unary.f32(i32 21, float %2923)  ; Exp(value)
  %2925 = fmul fast float %2921, 2.000000e+00
  %2926 = fadd fast float %2925, -1.000000e+00
  %2927 = fmul fast float %2924, %2926
  %2928 = fcmp fast ogt float %2828, 0.000000e+00
  %2929 = select i1 %2928, float %2927, float 0.000000e+00
  %2930 = fadd fast float %2929, %2828
  %2931 = fadd fast float %113, 0x3FF3C6EF40000000
  %2932 = call float @dx.op.unary.f32(i32 22, float %2931)  ; Frc(value)
  %2933 = call float @dx.op.unary.f32(i32 23, float %2829)  ; Log(value)
  %2934 = fadd fast float %2933, -7.000000e+00
  %2935 = call float @dx.op.unary.f32(i32 21, float %2934)  ; Exp(value)
  %2936 = fmul fast float %2932, 2.000000e+00
  %2937 = fadd fast float %2936, -1.000000e+00
  %2938 = fmul fast float %2935, %2937
  %2939 = fcmp fast ogt float %2829, 0.000000e+00
  %2940 = select i1 %2939, float %2938, float 0.000000e+00
  %2941 = fadd fast float %2940, %2829
  %2942 = fadd fast float %113, 0x3FFDAA66E0000000
  %2943 = call float @dx.op.unary.f32(i32 22, float %2942)  ; Frc(value)
  %2944 = call float @dx.op.unary.f32(i32 23, float %2830)  ; Log(value)
  %2945 = fadd fast float %2944, -6.000000e+00
  %2946 = call float @dx.op.unary.f32(i32 21, float %2945)  ; Exp(value)
  %2947 = fmul fast float %2943, 2.000000e+00
  %2948 = fadd fast float %2947, -1.000000e+00
  %2949 = fmul fast float %2946, %2948
  %2950 = fcmp fast ogt float %2830, 0.000000e+00
  %2951 = select i1 %2950, float %2949, float 0.000000e+00
  %2952 = fadd fast float %2951, %2830
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %63, i32 %64, i32 %65, float %2930, float %2941, float %2952, float %2930, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2953

; <label>:2953                                    ; preds = %2919, %2918
  %2954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2955 = extractvalue %dx.types.CBufRet.f32 %2954, 0
  %2956 = fmul fast float %2955, %2135
  %2957 = fmul fast float %2956, 5.000000e-01
  %2958 = fadd fast float %2135, %2135
  %2959 = fmul fast float %2955, %2958
  %2960 = fmul fast float %2959, 2.500000e-01
  %2961 = fadd fast float %2960, %2957
  %2962 = fmul fast float %2961, %2961
  %2963 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %2964 = add i32 %205, -1
  %2965 = add i32 %205, 7
  %2966 = and i32 %2965, 4
  %2967 = and i32 %2964, %2963
  %2968 = xor i32 %2967, %2966
  %2969 = and i32 %2963, -4
  %2970 = shl i32 %2963, 1
  %2971 = and i32 %2970, 6
  %2972 = lshr i32 177, %2971
  %2973 = and i32 %2972, 3
  %2974 = or i32 %2973, %2969
  br i1 %2839, label %2975, label %2991, !dx.controlflow.hints !108

; <label>:2975                                    ; preds = %2953
  %2976 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2961, i32 %2968)  ; WaveReadLaneAt(value,lane)
  %2977 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2962, i32 %2968)  ; WaveReadLaneAt(value,lane)
  %2978 = fadd fast float %2976, %2961
  %2979 = fadd fast float %2977, %2962
  %2980 = add i32 %205, 31
  %2981 = and i32 %2980, 16
  %2982 = xor i32 %2967, %2981
  %2983 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2978, i32 %2982)  ; WaveReadLaneAt(value,lane)
  %2984 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2979, i32 %2982)  ; WaveReadLaneAt(value,lane)
  %2985 = fadd fast float %2983, %2978
  %2986 = fadd fast float %2984, %2979
  %2987 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2985, i32 %2974)  ; WaveReadLaneAt(value,lane)
  %2988 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2986, i32 %2974)  ; WaveReadLaneAt(value,lane)
  %2989 = fadd fast float %2987, %2985
  %2990 = fadd fast float %2988, %2986
  br label %3027

; <label>:2991                                    ; preds = %2953
  %2992 = udiv i32 %42, %205
  %2993 = shl i32 %2992, 2
  %2994 = lshr i32 %2963, 1
  %2995 = and i32 %2994, 1
  %2996 = or i32 %2993, %2995
  %2997 = lshr i32 %2963, 2
  %2998 = and i32 %2997, 2
  %2999 = or i32 %2996, %2998
  %3000 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2961, i32 %2968)  ; WaveReadLaneAt(value,lane)
  %3001 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %2962, i32 %2968)  ; WaveReadLaneAt(value,lane)
  %3002 = fadd fast float %3000, %2961
  %3003 = fadd fast float %3001, %2962
  %3004 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3002, i32 %2974)  ; WaveReadLaneAt(value,lane)
  %3005 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3003, i32 %2974)  ; WaveReadLaneAt(value,lane)
  %3006 = fadd fast float %3004, %3002
  %3007 = fadd fast float %3005, %3003
  %3008 = mul i32 %2999, 2
  %3009 = add i32 0, %3008
  %3010 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3009
  store float %3006, float addrspace(3)* %3010, align 4
  %3011 = mul i32 %2999, 2
  %3012 = add i32 1, %3011
  %3013 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3012
  store float %3007, float addrspace(3)* %3013, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3014 = load float, float addrspace(3)* %3010, align 4
  %3015 = load float, float addrspace(3)* %3013, align 4
  %3016 = xor i32 %2999, 4
  %3017 = mul i32 %3016, 2
  %3018 = add i32 0, %3017
  %3019 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3018
  %3020 = load float, float addrspace(3)* %3019, align 4
  %3021 = mul i32 %3016, 2
  %3022 = add i32 1, %3021
  %3023 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3022
  %3024 = load float, float addrspace(3)* %3023, align 4
  %3025 = fadd fast float %3020, %3014
  %3026 = fadd fast float %3024, %3015
  br label %3027

; <label>:3027                                    ; preds = %2991, %2975
  %3028 = phi float [ %2989, %2975 ], [ %3025, %2991 ]
  %3029 = phi float [ %2990, %2975 ], [ %3026, %2991 ]
  %3030 = fmul fast float %3028, 1.250000e-01
  br i1 %2912, label %3031, label %3036, !dx.controlflow.hints !56

; <label>:3031                                    ; preds = %3027
  %3032 = fmul fast float %3029, 1.250000e-01
  %3033 = lshr i32 %63, 1
  %3034 = lshr i32 %64, 1
  %3035 = lshr i32 %65, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3033, i32 %3034, i32 %3035, float %3030, float %3032, float %3030, float %3030, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3036

; <label>:3036                                    ; preds = %3031, %3027
  br i1 %74, label %3065, label %3037, !dx.controlflow.hints !57

; <label>:3037                                    ; preds = %3036
  %3038 = fadd fast float %113, 0x3FE3C6EF40000000
  %3039 = call float @dx.op.unary.f32(i32 22, float %3038)  ; Frc(value)
  %3040 = call float @dx.op.unary.f32(i32 23, float %2956)  ; Log(value)
  %3041 = fadd fast float %3040, -7.000000e+00
  %3042 = call float @dx.op.unary.f32(i32 21, float %3041)  ; Exp(value)
  %3043 = fmul fast float %3039, 2.000000e+00
  %3044 = fadd fast float %3043, -1.000000e+00
  %3045 = fmul fast float %3042, %3044
  %3046 = fcmp fast ogt float %2956, 0.000000e+00
  %3047 = select i1 %3046, float %3045, float 0.000000e+00
  %3048 = fadd fast float %3047, %2956
  %3049 = fadd fast float %113, 0x3FF3C6EF40000000
  %3050 = call float @dx.op.unary.f32(i32 22, float %3049)  ; Frc(value)
  %3051 = fmul fast float %3050, 2.000000e+00
  %3052 = fadd fast float %3051, -1.000000e+00
  %3053 = fmul fast float %3042, %3052
  %3054 = select i1 %3046, float %3053, float 0.000000e+00
  %3055 = fadd fast float %3054, %2956
  %3056 = fadd fast float %113, 0x3FFDAA66E0000000
  %3057 = call float @dx.op.unary.f32(i32 22, float %3056)  ; Frc(value)
  %3058 = fadd fast float %3040, -6.000000e+00
  %3059 = call float @dx.op.unary.f32(i32 21, float %3058)  ; Exp(value)
  %3060 = fmul fast float %3057, 2.000000e+00
  %3061 = fadd fast float %3060, -1.000000e+00
  %3062 = fmul fast float %3059, %3061
  %3063 = select i1 %3046, float %3062, float 0.000000e+00
  %3064 = fadd fast float %3063, %2956
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %63, i32 %64, i32 %65, float %3048, float %3055, float %3064, float %3048, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3065

; <label>:3065                                    ; preds = %3037, %3036
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
!51 = !{i32 0, i64 524560, i32 4, !52}
!52 = !{i32 4, i32 4, i32 4}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
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
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}

