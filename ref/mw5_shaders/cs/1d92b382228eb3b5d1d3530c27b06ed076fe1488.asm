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
; shader hash: cd2a5408a89efdfb9d7c93b8c0f37df1
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
;                                   texture     f32          3d     T23             t5     1
;                                   texture    byte         r/o     T24            t13     1
;                                   texture  struct         r/o     T25            t14     1
;                                   texture    byte         r/o     T26            t15     1
;                                   texture  struct         r/o     T27            t29     1
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = alloca [4 x i32], align 4
  %41 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %42 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %43 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %44 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %45 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %46 = alloca [12 x float], align 4
  %47 = alloca [12 x float], align 4
  %48 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.i32 %48, 3
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 1
  %52 = mul i32 %51, %49
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 1
  %55 = mul i32 %52, %54
  %56 = add i32 %55, %44
  %57 = shl i32 %56, 2
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = and i32 %59, 255
  %61 = lshr i32 %59, 8
  %62 = and i32 %61, 255
  %63 = lshr i32 %59, 16
  %64 = and i32 %63, 255
  %65 = shl nuw nsw i32 %60, 2
  %66 = shl nuw nsw i32 %62, 2
  %67 = shl nuw nsw i32 %64, 2
  %68 = add i32 %65, %41
  %69 = add i32 %66, %42
  %70 = add i32 %67, %43
  %71 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.i32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.i32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.i32 %71, 2
  %75 = icmp uge i32 %68, %72
  %76 = icmp uge i32 %69, %73
  %77 = icmp uge i32 %70, %74
  %78 = or i1 %75, %76
  %79 = or i1 %77, %78
  %80 = xor i1 %79, true
  %81 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.i32 %81, 3
  %83 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %69, i32 %82)  ; UMad(a,b,c)
  %84 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %68, i32 %83)  ; UMad(a,b,c)
  %85 = mul i32 %84, -63
  %86 = lshr i32 %85, 17
  %87 = xor i32 %86, %85
  %88 = mul i32 %87, -511
  %89 = mul i32 %87, -8176
  %90 = xor i32 %88, %89
  %91 = mul i32 %90, -7
  %92 = mul i32 %90, -7168
  %93 = xor i32 %91, %92
  %94 = lshr i32 %93, 15
  %95 = xor i32 %94, %91
  %96 = and i32 %95, 127
  %97 = mul i32 %96, 3
  %98 = add i32 0, %97
  %99 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %98
  %100 = load float, float* %99, align 4
  %101 = mul i32 %96, 3
  %102 = add i32 1, %101
  %103 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %102
  %104 = load float, float* %103, align 4
  %105 = mul i32 %96, 3
  %106 = add i32 2, %105
  %107 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %106
  %108 = load float, float* %107, align 4
  %109 = uitofp i32 %82 to float
  %110 = fmul fast float %109, 0x3FEA36A940000000
  %111 = fmul fast float %109, 0x3FE5793080000000
  %112 = fmul fast float %109, 0x3FE1972580000000
  %113 = fadd fast float %100, %110
  %114 = fadd fast float %104, %111
  %115 = fadd fast float %108, %112
  %116 = call float @dx.op.unary.f32(i32 22, float %113)  ; Frc(value)
  %117 = call float @dx.op.unary.f32(i32 22, float %114)  ; Frc(value)
  %118 = call float @dx.op.unary.f32(i32 22, float %115)  ; Frc(value)
  %119 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %32, i32 0, i32 %68, i32 %69, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fcmp fast ogt float %120, -1.000000e+00
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %124 = select i1 %121, float %123, float 1.000000e+00
  %125 = fadd fast float %120, 1.000000e+00
  %126 = fmul fast float %124, %125
  %127 = uitofp i32 %68 to float
  %128 = uitofp i32 %69 to float
  %129 = uitofp i32 %70 to float
  %130 = fadd fast float %129, -5.000000e-01
  %131 = fadd fast float %130, %118
  %132 = fadd fast float %127, %116
  %133 = fadd fast float %128, %117
  %134 = fadd fast float %131, 5.000000e-01
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fmul fast float %136, %132
  %140 = fmul fast float %137, %133
  %141 = fmul fast float %138, %134
  %142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.i32 %142, 0
  %144 = uitofp i32 %143 to float
  %145 = fmul fast float %144, %141
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = fmul fast float %145, %148
  %150 = call float @dx.op.unary.f32(i32 21, float %149)  ; Exp(value)
  %151 = fmul fast float %150, %147
  %152 = fsub fast float 4.000000e+00, %147
  %153 = fadd fast float %152, %151
  %154 = call float @dx.op.binary.f32(i32 36, float %153, float %126)  ; FMin(a,b)
  %155 = fmul fast float %139, 2.000000e+00
  %156 = fmul fast float %140, 2.000000e+00
  %157 = fsub fast float 1.000000e+00, %155
  %158 = fsub fast float 1.000000e+00, %156
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = fmul fast float %160, %157
  %164 = fmul fast float %161, %157
  %165 = fmul fast float %162, %157
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = fmul fast float %167, %158
  %171 = fmul fast float %168, %158
  %172 = fmul fast float %169, %158
  %173 = fadd fast float %170, %163
  %174 = fadd fast float %171, %164
  %175 = fadd fast float %172, %165
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = fadd fast float %173, %177
  %181 = fadd fast float %174, %178
  %182 = fadd fast float %175, %179
  %183 = fmul fast float %180, %154
  %184 = fmul fast float %181, %154
  %185 = fmul fast float %182, %154
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %190 = fadd fast float %183, %187
  %191 = fadd fast float %184, %188
  %192 = fadd fast float %185, %189
  %193 = add i32 %70, 1
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %148, %194
  %196 = call float @dx.op.unary.f32(i32 21, float %195)  ; Exp(value)
  %197 = fmul fast float %148, %129
  %198 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %199 = fsub fast float %196, %198
  %200 = fmul fast float %147, %199
  %201 = call float @dx.op.dot3.f32(i32 55, float %183, float %184, float %185, float %183, float %184, float %185)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = call float @dx.op.unary.f32(i32 25, float %201)  ; Rsqrt(value)
  %203 = fmul fast float %202, %183
  %204 = fmul fast float %202, %184
  %205 = fmul fast float %202, %185
  %206 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %207 = fmul fast float %206, 0x3FE62E4300000000
  %208 = fmul fast float %207, %207
  %209 = select i1 %79, float 0.000000e+00, float 1.000000e+00
  %210 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %45
  store float %209, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  %211 = fmul fast float %207, %209
  %212 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %45
  store float %211, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  %213 = fmul fast float %208, %209
  %214 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %45
  store float %213, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %215 = xor i32 %45, 4
  %216 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %215
  %217 = load float, float addrspace(3)* %216, align 4, !tbaa !56, !noalias !60
  %218 = fadd fast float %217, %209
  %219 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %215
  %220 = load float, float addrspace(3)* %219, align 4, !tbaa !56, !noalias !60
  %221 = fadd fast float %220, %207
  %222 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %215
  %223 = load float, float addrspace(3)* %222, align 4, !tbaa !56, !noalias !60
  %224 = fadd fast float %223, %208
  store float %218, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  store float %221, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  store float %224, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %225 = xor i32 %45, 16
  %226 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %225
  %227 = load float, float addrspace(3)* %226, align 4, !tbaa !56, !noalias !60
  %228 = fadd fast float %227, %218
  %229 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %225
  %230 = load float, float addrspace(3)* %229, align 4, !tbaa !56, !noalias !60
  %231 = fadd fast float %230, %221
  %232 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %225
  %233 = load float, float addrspace(3)* %232, align 4, !tbaa !56, !noalias !60
  %234 = fadd fast float %233, %224
  store float %228, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  store float %231, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  store float %234, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %235 = xor i32 %45, 1
  %236 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %235
  %237 = load float, float addrspace(3)* %236, align 4, !tbaa !56, !noalias !60
  %238 = fadd fast float %237, %228
  %239 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %235
  %240 = load float, float addrspace(3)* %239, align 4, !tbaa !56, !noalias !60
  %241 = fadd fast float %240, %231
  %242 = fdiv fast float %241, %238
  %243 = and i32 %68, 1
  %244 = and i32 %243, %69
  %245 = and i32 %244, %70
  %246 = icmp ne i32 %245, 0
  %247 = and i1 %246, %80
  br i1 %247, label %248, label %256, !dx.controlflow.hints !64

; <label>:248                                     ; preds = %0
  %249 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %235
  %250 = load float, float addrspace(3)* %249, align 4, !tbaa !56, !noalias !60
  %251 = fadd fast float %250, %234
  %252 = fdiv fast float %251, %238
  %253 = lshr i32 %68, 1
  %254 = lshr i32 %69, 1
  %255 = lshr i32 %70, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %253, i32 %254, i32 %255, float %242, float %252, float %242, float %242, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %256

; <label>:256                                     ; preds = %248, %0
  br i1 %79, label %258, label %257, !dx.controlflow.hints !65

; <label>:257                                     ; preds = %256
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %68, i32 %69, i32 %70, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %258

; <label>:258                                     ; preds = %257, %256
  store float %209, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  store float 0.000000e+00, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  store float 0.000000e+00, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %259 = load float, float addrspace(3)* %216, align 4, !tbaa !56, !noalias !60
  %260 = fadd fast float %259, %209
  %261 = load float, float addrspace(3)* %219, align 4, !tbaa !56, !noalias !60
  %262 = load float, float addrspace(3)* %222, align 4, !tbaa !56, !noalias !60
  store float %260, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  store float %261, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  store float %262, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %263 = load float, float addrspace(3)* %226, align 4, !tbaa !56, !noalias !60
  %264 = fadd fast float %263, %260
  %265 = load float, float addrspace(3)* %229, align 4, !tbaa !56, !noalias !60
  %266 = fadd fast float %265, %261
  %267 = load float, float addrspace(3)* %232, align 4, !tbaa !56, !noalias !60
  %268 = fadd fast float %267, %262
  store float %264, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  store float %266, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  store float %268, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %269 = load float, float addrspace(3)* %236, align 4, !tbaa !56, !noalias !60
  %270 = fadd fast float %269, %264
  %271 = load float, float addrspace(3)* %239, align 4, !tbaa !56, !noalias !60
  %272 = fadd fast float %271, %266
  %273 = fdiv fast float %272, %270
  br i1 %247, label %274, label %282, !dx.controlflow.hints !66

; <label>:274                                     ; preds = %258
  %275 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %235
  %276 = load float, float addrspace(3)* %275, align 4, !tbaa !56, !noalias !60
  %277 = fadd fast float %276, %268
  %278 = fdiv fast float %277, %270
  %279 = lshr i32 %68, 1
  %280 = lshr i32 %69, 1
  %281 = lshr i32 %70, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %279, i32 %280, i32 %281, float %273, float %278, float %273, float %273, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %282

; <label>:282                                     ; preds = %274, %258
  br i1 %79, label %284, label %283, !dx.controlflow.hints !67

; <label>:283                                     ; preds = %282
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %68, i32 %69, i32 %70, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %284

; <label>:284                                     ; preds = %283, %282
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %287 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %288 = fsub fast float %192, %286
  %289 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %288)  ; FMax(a,b)
  %290 = fmul fast float %289, 0x3FF7154760000000
  %291 = fmul fast float %290, %287
  %292 = call float @dx.op.unary.f32(i32 21, float %291)  ; Exp(value)
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = fmul fast float %299, %292
  %301 = fmul fast float %300, %294
  %302 = fmul fast float %300, %295
  %303 = fmul fast float %300, %296
  %304 = fmul fast float %300, %298
  %305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.i32 %305, 2
  %307 = extractvalue %dx.types.CBufRet.i32 %305, 3
  %308 = call i32 @dx.op.tertiary.i32(i32 49, i32 %62, i32 %306, i32 %60)  ; UMad(a,b,c)
  %309 = call i32 @dx.op.tertiary.i32(i32 49, i32 %64, i32 %307, i32 %308)  ; UMad(a,b,c)
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %309, i32 0)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = fadd fast float %127, 1.000000e+00
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = fmul fast float %318, %131
  %320 = call float @dx.op.unary.f32(i32 21, float %319)  ; Exp(value)
  %321 = fmul fast float %320, %317
  %322 = fsub fast float 4.000000e+00, %317
  %323 = fadd fast float %322, %321
  %324 = fmul fast float %312, 2.000000e+00
  %325 = fmul fast float %324, %314
  %326 = fmul fast float %128, 2.000000e+00
  %327 = fmul fast float %326, %315
  %328 = fsub fast float 1.000000e+00, %325
  %329 = fsub fast float 1.000000e+00, %327
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %334 = fmul fast float %331, %328
  %335 = fmul fast float %332, %328
  %336 = fmul fast float %333, %328
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %341 = fmul fast float %338, %329
  %342 = fmul fast float %339, %329
  %343 = fmul fast float %340, %329
  %344 = fadd fast float %341, %334
  %345 = fadd fast float %342, %335
  %346 = fadd fast float %343, %336
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %351 = fadd fast float %344, %348
  %352 = fadd fast float %345, %349
  %353 = fadd fast float %346, %350
  %354 = fadd fast float %128, 1.000000e+00
  %355 = fmul fast float %127, 2.000000e+00
  %356 = fmul fast float %355, %314
  %357 = fmul fast float %354, 2.000000e+00
  %358 = fmul fast float %357, %315
  %359 = fsub fast float 1.000000e+00, %356
  %360 = fsub fast float 1.000000e+00, %358
  %361 = fmul fast float %331, %359
  %362 = fmul fast float %332, %359
  %363 = fmul fast float %333, %359
  %364 = fmul fast float %338, %360
  %365 = fmul fast float %339, %360
  %366 = fmul fast float %340, %360
  %367 = fadd fast float %364, %361
  %368 = fadd fast float %365, %362
  %369 = fadd fast float %366, %363
  %370 = fadd fast float %367, %348
  %371 = fadd fast float %368, %349
  %372 = fadd fast float %369, %350
  %373 = fmul fast float %370, %323
  %374 = fmul fast float %371, %323
  %375 = fmul fast float %372, %323
  %376 = fadd fast float %370, %351
  %377 = fmul fast float %323, %376
  %378 = fadd fast float %371, %352
  %379 = fmul fast float %323, %378
  %380 = fadd fast float %372, %353
  %381 = fmul fast float %323, %380
  %382 = fmul fast float %377, 5.000000e-01
  %383 = fmul fast float %379, 5.000000e-01
  %384 = fmul fast float %381, 5.000000e-01
  %385 = fsub fast float %382, %373
  %386 = fsub fast float %383, %374
  %387 = fsub fast float %384, %375
  %388 = call float @dx.op.dot3.f32(i32 55, float %385, float %386, float %387, float %385, float %386, float %387)  ; Dot3(ax,ay,az,bx,by,bz)
  %389 = call float @dx.op.unary.f32(i32 25, float %388)  ; Rsqrt(value)
  %390 = fmul fast float %388, 2.000000e+00
  %391 = fmul fast float %390, %389
  %392 = call float @dx.op.binary.f32(i32 35, float %200, float %391)  ; FMax(a,b)
  %393 = and i32 %311, 8
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %611, label %395, !dx.controlflow.hints !68

; <label>:395                                     ; preds = %284
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %399 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = fsub fast float %190, %401
  %405 = fsub fast float %191, %402
  %406 = fsub fast float %192, %403
  %407 = fmul fast float %404, %397
  %408 = fmul fast float %405, %398
  %409 = fmul fast float %406, %399
  %410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.i32 %410, 3
  %412 = icmp eq i32 %411, 0
  %413 = fcmp fast oge float %409, 0.000000e+00
  %414 = fcmp fast ole float %409, 1.000000e+00
  br i1 %412, label %417, label %415, !dx.controlflow.hints !69

; <label>:415                                     ; preds = %395
  %416 = and i1 %413, %414
  br label %427

; <label>:417                                     ; preds = %395
  %418 = fcmp fast oge float %407, 0.000000e+00
  %419 = fcmp fast oge float %408, 0.000000e+00
  %420 = and i1 %418, %419
  %421 = and i1 %413, %420
  %422 = fcmp fast ole float %407, 1.000000e+00
  %423 = fcmp fast ole float %408, 1.000000e+00
  %424 = and i1 %422, %423
  %425 = and i1 %414, %424
  %426 = and i1 %421, %425
  br label %427

; <label>:427                                     ; preds = %417, %415
  %428 = phi i1 [ %416, %415 ], [ %426, %417 ]
  br i1 %428, label %429, label %604, !dx.controlflow.hints !70

; <label>:429                                     ; preds = %427
  %430 = fcmp fast oeq float %392, 0.000000e+00
  br i1 %430, label %445, label %431, !dx.controlflow.hints !71

; <label>:431                                     ; preds = %429
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 3
  %434 = fmul fast float %433, %392
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = fmul fast float %436, %434
  %440 = fmul fast float %437, %434
  %441 = fmul fast float %438, %434
  %442 = call float @dx.op.unary.f32(i32 23, float %439)  ; Log(value)
  %443 = call float @dx.op.unary.f32(i32 23, float %440)  ; Log(value)
  %444 = call float @dx.op.unary.f32(i32 23, float %441)  ; Log(value)
  br label %445

; <label>:445                                     ; preds = %431, %429
  %446 = phi float [ %442, %431 ], [ 0.000000e+00, %429 ]
  %447 = phi float [ %443, %431 ], [ 0.000000e+00, %429 ]
  %448 = phi float [ %444, %431 ], [ 0.000000e+00, %429 ]
  %449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.i32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.i32 %449, 1
  %452 = uitofp i32 %450 to float
  %453 = uitofp i32 %451 to float
  %454 = fmul fast float %407, %452
  %455 = fmul fast float %408, %453
  %456 = fadd fast float %454, 5.000000e-01
  %457 = fadd fast float %455, 5.000000e-01
  %458 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %459 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %460 = call float @dx.op.unary.f32(i32 27, float %456)  ; Round_ni(value)
  %461 = call float @dx.op.unary.f32(i32 27, float %457)  ; Round_ni(value)
  %462 = fadd fast float %460, 1.000000e+00
  %463 = fadd fast float %461, 1.000000e+00
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 0
  %466 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %467 = fmul fast float %465, %462
  %468 = fmul fast float %466, %463
  %469 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %22, %dx.types.Handle %35, float %467, float %468, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  %473 = extractvalue %dx.types.ResRet.f32 %469, 3
  %474 = extractvalue %dx.types.CBufRet.i32 %449, 2
  %475 = extractvalue %dx.types.CBufRet.f32 %464, 2
  %476 = uitofp i32 %474 to float
  %477 = fadd fast float %476, -1.000000e+00
  %478 = fmul fast float %477, %470
  %479 = fmul fast float %477, %471
  %480 = fmul fast float %477, %472
  %481 = fmul fast float %477, %473
  %482 = fadd fast float %478, 5.000000e-01
  %483 = fadd fast float %479, 5.000000e-01
  %484 = fadd fast float %480, 5.000000e-01
  %485 = fadd fast float %481, 5.000000e-01
  %486 = fptoui float %482 to i32
  %487 = fptoui float %483 to i32
  %488 = fptoui float %484 to i32
  %489 = fptoui float %485 to i32
  %490 = uitofp i32 %486 to float
  %491 = uitofp i32 %487 to float
  %492 = uitofp i32 %488 to float
  %493 = uitofp i32 %489 to float
  %494 = fadd fast float %490, 5.000000e-01
  %495 = fadd fast float %491, 5.000000e-01
  %496 = fadd fast float %492, 5.000000e-01
  %497 = fadd fast float %493, 5.000000e-01
  %498 = fmul fast float %494, %475
  %499 = fmul fast float %495, %475
  %500 = fmul fast float %496, %475
  %501 = fmul fast float %497, %475
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %36, float %498, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %36, float %499, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %36, float %500, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %36, float %501, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = fsub fast float %507, %509
  %511 = fmul fast float %510, %458
  %512 = fadd fast float %511, %509
  %513 = fsub fast float %505, %503
  %514 = fmul fast float %513, %458
  %515 = fadd fast float %514, %503
  %516 = fsub fast float %515, %512
  %517 = fmul fast float %516, %459
  %518 = fadd fast float %517, %512
  %519 = fcmp fast ogt float %518, 0.000000e+00
  br i1 %519, label %520, label %588, !dx.controlflow.hints !72

; <label>:520                                     ; preds = %445
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %524 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 0
  %527 = extractvalue %dx.types.CBufRet.f32 %525, 1
  %528 = extractvalue %dx.types.CBufRet.f32 %525, 2
  %529 = fmul fast float %405, %397
  %530 = fmul fast float %406, %397
  %531 = fadd fast float %407, %526
  %532 = fadd fast float %529, %527
  %533 = fadd fast float %530, %528
  %534 = fmul fast float %531, %522
  %535 = fmul fast float %532, %522
  %536 = fmul fast float %533, %522
  %537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %33, float %534, float %535, float %536, float undef, i32 0, i32 0, i32 0, float %446)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = fmul fast float %531, %523
  %540 = fmul fast float %532, %523
  %541 = fmul fast float %533, %523
  %542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %33, float %539, float %540, float %541, float undef, i32 0, i32 0, i32 0, float %447)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 1
  %544 = fmul fast float %531, %524
  %545 = fmul fast float %532, %524
  %546 = fmul fast float %533, %524
  %547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %33, float %544, float %545, float %546, float undef, i32 0, i32 0, i32 0, float %448)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 2
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %551 = fmul fast float %543, %538
  %552 = fmul fast float %551, %548
  %553 = call float @dx.op.unary.f32(i32 23, float %552)  ; Log(value)
  %554 = fmul fast float %553, %550
  %555 = call float @dx.op.unary.f32(i32 21, float %554)  ; Exp(value)
  %556 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %557 = fmul fast float %518, %518
  %558 = fmul fast float %557, %555
  %559 = fmul fast float %558, %556
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %562 = fmul fast float %561, %559
  %563 = bitcast float %562 to i32
  %564 = sitofp i32 %563 to float
  %565 = fptosi float %564 to i32
  %566 = bitcast i32 %565 to float
  %567 = fsub fast float 1.000000e+00, %559
  %568 = bitcast float %567 to i32
  %569 = sitofp i32 %568 to float
  %570 = fptosi float %569 to i32
  %571 = bitcast i32 %570 to float
  %572 = fadd fast float %566, %571
  %573 = bitcast float %572 to i32
  %574 = sub nsw i32 2129859010, %573
  %575 = bitcast i32 %574 to float
  %576 = fmul fast float %575, %566
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = fmul fast float %576, %580
  %582 = fadd fast float %581, 1.000000e+00
  %583 = bitcast float %582 to i32
  %584 = sub nsw i32 2129859010, %583
  %585 = bitcast i32 %584 to float
  %586 = fmul fast float %576, %578
  %587 = fmul fast float %586, %585
  br label %588

; <label>:588                                     ; preds = %520, %445
  %589 = phi float [ %587, %520 ], [ %518, %445 ]
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %593 = extractvalue %dx.types.CBufRet.f32 %590, 2
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %596 = fmul fast float %591, %589
  %597 = fmul fast float %592, %589
  %598 = fmul fast float %593, %589
  %599 = fadd fast float %596, %301
  %600 = fadd fast float %597, %302
  %601 = fadd fast float %598, %303
  %602 = fmul fast float %595, %589
  %603 = fadd fast float %602, %304
  br label %604

; <label>:604                                     ; preds = %588, %427
  %605 = phi float [ %599, %588 ], [ %301, %427 ]
  %606 = phi float [ %600, %588 ], [ %302, %427 ]
  %607 = phi float [ %601, %588 ], [ %303, %427 ]
  %608 = phi float [ %603, %588 ], [ %304, %427 ]
  %609 = phi float [ %589, %588 ], [ 0.000000e+00, %427 ]
  %610 = fadd fast float %609, %300
  br label %611

; <label>:611                                     ; preds = %604, %284
  %612 = phi float [ %605, %604 ], [ %301, %284 ]
  %613 = phi float [ %606, %604 ], [ %302, %284 ]
  %614 = phi float [ %607, %604 ], [ %303, %284 ]
  %615 = phi float [ %608, %604 ], [ %304, %284 ]
  %616 = phi float [ %610, %604 ], [ %300, %284 ]
  %617 = phi float [ %609, %604 ], [ 0.000000e+00, %284 ]
  %618 = and i32 %311, 2
  %619 = icmp ne i32 %618, 0
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %624 = fadd fast float %623, %621
  %625 = fcmp fast ole float %192, %624
  %626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.i32 %626, 3
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %648, !dx.controlflow.hints !73

; <label>:629                                     ; preds = %611
  %630 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %631 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %632 = fsub fast float %190, %630
  %633 = fsub fast float %191, %631
  %634 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %635 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %636 = fdiv fast float 1.000000e+00, %634
  %637 = fdiv fast float 1.000000e+00, %635
  %638 = fmul fast float %632, %636
  %639 = fmul fast float %637, %633
  %640 = fcmp fast oge float %638, 0.000000e+00
  %641 = fcmp fast oge float %639, 0.000000e+00
  %642 = and i1 %640, %641
  %643 = and i1 %625, %642
  %644 = fcmp fast ole float %638, 1.000000e+00
  %645 = fcmp fast ole float %639, 1.000000e+00
  %646 = and i1 %644, %645
  %647 = and i1 %646, %643
  br label %648

; <label>:648                                     ; preds = %629, %611
  %649 = phi i1 [ %647, %629 ], [ %625, %611 ]
  %650 = and i1 %619, %649
  br i1 %650, label %651, label %830, !dx.controlflow.hints !74

; <label>:651                                     ; preds = %648
  %652 = fcmp fast oeq float %392, 0.000000e+00
  br i1 %652, label %658, label %653, !dx.controlflow.hints !75

; <label>:653                                     ; preds = %651
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 3
  %656 = fmul fast float %655, %392
  %657 = call float @dx.op.unary.f32(i32 23, float %656)  ; Log(value)
  br label %658

; <label>:658                                     ; preds = %653, %651
  %659 = phi float [ %657, %653 ], [ 0.000000e+00, %651 ]
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %662 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %663 = extractvalue %dx.types.CBufRet.f32 %660, 2
  %664 = fsub fast float %190, %661
  %665 = fsub fast float %191, %662
  %666 = fsub fast float %192, %663
  %667 = fmul fast float %664, %664
  %668 = fmul fast float %665, %665
  %669 = fadd fast float %667, %668
  %670 = fmul fast float %666, %666
  %671 = fadd fast float %669, %670
  %672 = call float @dx.op.unary.f32(i32 24, float %671)  ; Sqrt(value)
  %673 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %674 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %675 = fsub fast float %190, %673
  %676 = fsub fast float %191, %674
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %680 = fmul fast float %675, %678
  %681 = fmul fast float %676, %679
  %682 = fsub fast float 1.000000e+00, %681
  br i1 %628, label %689, label %683, !dx.controlflow.hints !76

; <label>:683                                     ; preds = %658
  %684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %35, float %680, float %682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = extractvalue %dx.types.ResRet.f32 %684, 3
  br label %695

; <label>:689                                     ; preds = %658
  %690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %36, float %680, float %682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = extractvalue %dx.types.ResRet.f32 %690, 1
  %693 = extractvalue %dx.types.ResRet.f32 %690, 2
  %694 = extractvalue %dx.types.ResRet.f32 %690, 3
  br label %695

; <label>:695                                     ; preds = %689, %683
  %696 = phi float [ %685, %683 ], [ %691, %689 ]
  %697 = phi float [ %686, %683 ], [ %692, %689 ]
  %698 = phi float [ %687, %683 ], [ %693, %689 ]
  %699 = phi float [ %688, %683 ], [ %694, %689 ]
  %700 = extractvalue %dx.types.CBufRet.f32 %677, 3
  %701 = fmul fast float %700, %697
  %702 = fmul fast float %701, %696
  %703 = fsub fast float %701, %702
  %704 = fcmp fast ole float %703, 0.000000e+00
  %705 = fmul fast float %700, %698
  %706 = fadd fast float %705, %621
  %707 = fdiv fast float 1.000000e+00, %703
  %708 = select i1 %704, float 1.000000e+06, float %707
  %709 = fsub fast float %192, %621
  %710 = fsub fast float %709, %702
  %711 = fmul fast float %708, %710
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %713 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %714 = fmul fast float %713, %712
  %715 = fsub fast float %713, %714
  %716 = fcmp fast olt float %192, %706
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 3
  %719 = select i1 %716, float %718, float 1.000000e+00
  %720 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %721 = fcmp fast oeq float %720, 0.000000e+00
  br i1 %721, label %804, label %722, !dx.controlflow.hints !77

; <label>:722                                     ; preds = %695
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %725 = fcmp fast ogt float %724, 0.000000e+00
  %726 = extractvalue %dx.types.CBufRet.f32 %717, 2
  br i1 %725, label %727, label %757, !dx.controlflow.hints !78

; <label>:727                                     ; preds = %722
  %728 = fmul fast float %680, %724
  %729 = fmul fast float %681, %724
  %730 = fsub fast float 1.000000e+00, %729
  %731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %728, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  %734 = fmul fast float %732, 2.000000e+00
  %735 = fmul fast float %733, 2.000000e+00
  %736 = fadd fast float %734, -1.000000e+00
  %737 = fadd fast float %735, -1.000000e+00
  %738 = fmul fast float %720, %190
  %739 = fmul fast float %720, %191
  %740 = fmul fast float %720, %192
  %741 = call float @dx.op.unary.f32(i32 22, float %726)  ; Frc(value)
  %742 = fmul fast float %736, %741
  %743 = fmul fast float %737, %741
  %744 = fsub fast float %738, %742
  %745 = fsub fast float %739, %743
  %746 = fadd fast float %726, 5.000000e-01
  %747 = call float @dx.op.unary.f32(i32 22, float %746)  ; Frc(value)
  %748 = fmul fast float %747, %736
  %749 = fmul fast float %747, %737
  %750 = fadd fast float %738, -5.000000e-01
  %751 = fsub fast float %750, %748
  %752 = fadd fast float %739, -5.000000e-01
  %753 = fsub fast float %752, %749
  %754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %751, float %753, float %740, float undef, i32 0, i32 0, i32 0, float %659)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  %756 = extractvalue %dx.types.ResRet.f32 %754, 1
  br label %770

; <label>:757                                     ; preds = %722
  %758 = extractvalue %dx.types.CBufRet.f32 %723, 0
  %759 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %760 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %761 = fmul fast float %726, %758
  %762 = fmul fast float %726, %759
  %763 = fmul fast float %726, %760
  %764 = fsub fast float %190, %761
  %765 = fsub fast float %191, %762
  %766 = fsub fast float %192, %763
  %767 = fmul fast float %764, %720
  %768 = fmul fast float %765, %720
  %769 = fmul fast float %766, %720
  br label %770

; <label>:770                                     ; preds = %757, %727
  %771 = phi float [ %744, %727 ], [ %767, %757 ]
  %772 = phi float [ %745, %727 ], [ %768, %757 ]
  %773 = phi float [ %740, %727 ], [ %769, %757 ]
  %774 = phi float [ %755, %727 ], [ 0.000000e+00, %757 ]
  %775 = phi float [ %756, %727 ], [ 0.000000e+00, %757 ]
  %776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %771, float %772, float %773, float undef, i32 0, i32 0, i32 0, float %659)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  br i1 %725, label %779, label %791, !dx.controlflow.hints !79

; <label>:779                                     ; preds = %770
  %780 = extractvalue %dx.types.CBufRet.f32 %717, 2
  %781 = call float @dx.op.unary.f32(i32 22, float %780)  ; Frc(value)
  %782 = fmul fast float %781, 2.000000e+00
  %783 = fadd fast float %782, -1.000000e+00
  %784 = call float @dx.op.unary.f32(i32 6, float %783)  ; FAbs(value)
  %785 = fsub fast float %774, %777
  %786 = fmul fast float %784, %785
  %787 = fadd fast float %786, %777
  %788 = fsub fast float %775, %778
  %789 = fmul fast float %784, %788
  %790 = fadd fast float %789, %778
  br label %791

; <label>:791                                     ; preds = %779, %770
  %792 = phi float [ %787, %779 ], [ %777, %770 ]
  %793 = phi float [ %790, %779 ], [ %778, %770 ]
  %794 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %795 = fadd fast float %794, %794
  %796 = fdiv fast float 2.000000e+00, %795
  %797 = fmul fast float %794, 2.000000e+00
  %798 = fadd fast float %792, -1.000000e+00
  %799 = fadd fast float %798, %793
  %800 = fadd fast float %799, %797
  %801 = fmul fast float %800, %796
  %802 = fadd fast float %801, -1.000000e+00
  %803 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  br label %804

; <label>:804                                     ; preds = %791, %695
  %805 = phi float [ %803, %791 ], [ 1.000000e+00, %695 ]
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 0
  %808 = extractvalue %dx.types.CBufRet.f32 %806, 1
  %809 = extractvalue %dx.types.CBufRet.f32 %806, 2
  %810 = extractvalue %dx.types.CBufRet.f32 %717, 0
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 1
  %813 = fsub fast float %672, %812
  %814 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %815 = fmul fast float %813, %814
  %816 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %817 = fmul fast float %719, %699
  %818 = fmul fast float %817, %715
  %819 = fmul fast float %818, %805
  %820 = fmul fast float %819, %816
  %821 = fmul fast float %820, %807
  %822 = fmul fast float %820, %808
  %823 = fmul fast float %820, %809
  %824 = fadd fast float %821, %612
  %825 = fadd fast float %822, %613
  %826 = fadd fast float %823, %614
  %827 = fmul fast float %820, %810
  %828 = fadd fast float %827, %615
  %829 = fadd fast float %820, %616
  br label %830

; <label>:830                                     ; preds = %804, %648
  %831 = phi float [ %824, %804 ], [ %612, %648 ]
  %832 = phi float [ %825, %804 ], [ %613, %648 ]
  %833 = phi float [ %826, %804 ], [ %614, %648 ]
  %834 = phi float [ %828, %804 ], [ %615, %648 ]
  %835 = phi float [ %829, %804 ], [ %616, %648 ]
  %836 = and i32 %311, 1
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %1114, label %838, !dx.controlflow.hints !80

; <label>:838                                     ; preds = %830
  %839 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.i32 %839, 1
  %841 = and i32 %840, 1
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %918, label %843, !dx.controlflow.hints !81

; <label>:843                                     ; preds = %838
  %844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.f32 %844, 3
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %849 = extractvalue %dx.types.CBufRet.f32 %844, 0
  %850 = extractvalue %dx.types.CBufRet.f32 %844, 1
  %851 = extractvalue %dx.types.CBufRet.f32 %844, 2
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %855 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 3
  %858 = and i32 %840, 2
  %859 = extractvalue %dx.types.CBufRet.i32 %839, 0
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %897, label %861

; <label>:861                                     ; preds = %843
  br label %862

; <label>:862                                     ; preds = %862, %861
  %863 = phi float [ %891, %862 ], [ 0.000000e+00, %861 ]
  %864 = phi float [ %890, %862 ], [ 1.000000e+06, %861 ]
  %865 = phi i32 [ %892, %862 ], [ 0, %861 ]
  %866 = add i32 %865, 171
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %866)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %869 = extractvalue %dx.types.CBufRet.f32 %867, 1
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %872 = extractvalue %dx.types.CBufRet.f32 %867, 2
  %873 = fsub fast float %190, %868
  %874 = fsub fast float %191, %869
  %875 = fmul fast float %873, %873
  %876 = fmul fast float %874, %874
  %877 = fadd fast float %875, %876
  %878 = call float @dx.op.unary.f32(i32 24, float %877)  ; Sqrt(value)
  %879 = fsub fast float %878, %872
  %880 = icmp ne i32 %858, 0
  %881 = fsub fast float -0.000000e+00, %848
  %882 = select i1 %880, float %881, float %848
  %883 = fmul fast float %879, %882
  %884 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %885 = fmul fast float %884, %847
  %886 = fsub fast float %871, %192
  %887 = fmul fast float %886, %845
  %888 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %889 = fmul fast float %885, %888
  %890 = call float @dx.op.binary.f32(i32 36, float %864, float %879)  ; FMin(a,b)
  %891 = call float @dx.op.binary.f32(i32 35, float %863, float %889)  ; FMax(a,b)
  %892 = add nuw nsw i32 %865, 1
  %893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.i32 %893, 0
  %895 = icmp ult i32 %892, %894
  br i1 %895, label %862, label %896

; <label>:896                                     ; preds = %862
  br label %897

; <label>:897                                     ; preds = %896, %843
  %898 = phi float [ 0.000000e+00, %843 ], [ %891, %896 ]
  %899 = phi float [ 1.000000e+06, %843 ], [ %890, %896 ]
  %900 = fadd fast float %898, %835
  %901 = fmul fast float %899, %857
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = fsub fast float %853, %849
  %904 = fsub fast float %854, %850
  %905 = fsub fast float %855, %851
  %906 = fmul fast float %902, %903
  %907 = fmul fast float %902, %904
  %908 = fmul fast float %902, %905
  %909 = fadd fast float %906, %849
  %910 = fadd fast float %907, %850
  %911 = fadd fast float %908, %851
  %912 = fmul fast float %909, %898
  %913 = fmul fast float %910, %898
  %914 = fmul fast float %911, %898
  %915 = fadd fast float %912, %831
  %916 = fadd fast float %913, %832
  %917 = fadd fast float %914, %833
  br label %1114

; <label>:918                                     ; preds = %838
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %921 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %922 = fmul fast float %920, %190
  %923 = fmul fast float %921, %191
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %926 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %927 = fadd fast float %922, %925
  %928 = fadd fast float %923, %926
  %929 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %930 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %36, float %929, float %930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %935 = fmul fast float %934, %932
  %936 = fsub fast float %927, %929
  %937 = fsub fast float %928, %930
  %938 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %939 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %940 = fmul fast float %938, %936
  %941 = fmul fast float %939, %937
  %942 = fmul fast float %940, %940
  %943 = fmul fast float %941, %941
  %944 = fadd fast float %942, %943
  %945 = call float @dx.op.unary.f32(i32 24, float %944)  ; Sqrt(value)
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 3
  %948 = fmul fast float %947, %945
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %951 = fsub fast float %950, %935
  %952 = fmul fast float %951, %949
  %953 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %954 = fsub fast float %192, %935
  %955 = fsub fast float %954, %953
  %956 = fsub fast float %955, %952
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %959 = fsub fast float %956, %958
  %960 = fcmp fast olt float %959, 0.000000e+00
  %961 = extractvalue %dx.types.CBufRet.i32 %839, 0
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %1013, label %963

; <label>:963                                     ; preds = %918
  br label %964

; <label>:964                                     ; preds = %1002, %963
  %965 = phi i32 [ %1008, %1002 ], [ 1, %963 ]
  %966 = phi i32 [ %1009, %1002 ], [ 0, %963 ]
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.i32 %969, 1
  %971 = and i32 %970, 8
  %972 = icmp eq i32 %971, 0
  %973 = fcmp fast ogt float %968, %956
  %974 = or i1 %973, %972
  %975 = add i32 %966, 171
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %975)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %978 = extractvalue %dx.types.CBufRet.f32 %976, 1
  %979 = extractvalue %dx.types.CBufRet.f32 %976, 2
  br i1 %974, label %980, label %986, !dx.controlflow.hints !82

; <label>:980                                     ; preds = %964
  %981 = fsub fast float %977, %190
  %982 = fsub fast float %978, %191
  %983 = fmul fast float %981, %981
  %984 = fmul fast float %982, %982
  %985 = fadd fast float %983, %984
  br label %1002

; <label>:986                                     ; preds = %964
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %989 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %990 = fmul fast float %989, %988
  %991 = fsub fast float %990, %968
  %992 = fdiv fast float %979, %991
  %993 = fsub fast float %190, %977
  %994 = fsub fast float %191, %978
  %995 = fsub fast float %956, %968
  %996 = fmul fast float %992, %995
  %997 = fmul fast float %993, %993
  %998 = fmul fast float %994, %994
  %999 = fadd fast float %997, %998
  %1000 = fmul fast float %996, %996
  %1001 = fadd fast float %999, %1000
  br label %1002

; <label>:1002                                    ; preds = %986, %980
  %1003 = phi float [ %985, %980 ], [ %1001, %986 ]
  %1004 = call float @dx.op.unary.f32(i32 24, float %1003)  ; Sqrt(value)
  %1005 = fsub float %979, %1004
  %1006 = fcmp fast olt float %1005, 0.000000e+00
  %1007 = zext i1 %1006 to i32
  %1008 = and i32 %1007, %965
  %1009 = add i32 %966, 1
  %1010 = extractvalue %dx.types.CBufRet.i32 %969, 0
  %1011 = icmp ult i32 %1009, %1010
  br i1 %1011, label %964, label %1012

; <label>:1012                                    ; preds = %1002
  br label %1013

; <label>:1013                                    ; preds = %1012, %918
  %1014 = phi i32 [ 1, %918 ], [ %1008, %1012 ]
  br label %1015

; <label>:1015                                    ; preds = %1015, %1013
  %1016 = phi i32 [ %1052, %1015 ], [ %1014, %1013 ]
  %1017 = phi i32 [ %1053, %1015 ], [ 0, %1013 ]
  %1018 = add nuw nsw i32 %1017, 191
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %1018)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.CBufRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.CBufRet.f32 %1019, 2
  %1023 = add nuw nsw i32 %1017, 195
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %1023)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.CBufRet.f32 %1024, 2
  %1028 = fsub fast float %190, %1020
  %1029 = fsub fast float %191, %1021
  %1030 = fsub fast float %956, %1022
  %1031 = call float @dx.op.unary.f32(i32 6, float %1028)  ; FAbs(value)
  %1032 = call float @dx.op.unary.f32(i32 6, float %1029)  ; FAbs(value)
  %1033 = call float @dx.op.unary.f32(i32 6, float %1030)  ; FAbs(value)
  %1034 = fsub fast float %1031, %1025
  %1035 = fsub fast float %1032, %1026
  %1036 = fsub fast float %1033, %1027
  %1037 = call float @dx.op.binary.f32(i32 35, float %1034, float 0.000000e+00)  ; FMax(a,b)
  %1038 = call float @dx.op.binary.f32(i32 35, float %1035, float 0.000000e+00)  ; FMax(a,b)
  %1039 = call float @dx.op.binary.f32(i32 35, float %1036, float 0.000000e+00)  ; FMax(a,b)
  %1040 = fmul fast float %1037, %1037
  %1041 = fmul fast float %1038, %1038
  %1042 = fadd fast float %1041, %1040
  %1043 = fmul fast float %1039, %1039
  %1044 = fadd fast float %1042, %1043
  %1045 = call float @dx.op.unary.f32(i32 24, float %1044)  ; Sqrt(value)
  %1046 = call float @dx.op.binary.f32(i32 35, float %1035, float %1036)  ; FMax(a,b)
  %1047 = call float @dx.op.binary.f32(i32 35, float %1034, float %1046)  ; FMax(a,b)
  %1048 = call float @dx.op.binary.f32(i32 36, float %1047, float 0.000000e+00)  ; FMin(a,b)
  %1049 = fadd fast float %1048, %1045
  %1050 = fcmp ogt float %1049, -0.000000e+00
  %1051 = zext i1 %1050 to i32
  %1052 = and i32 %1051, %1016
  %1053 = add nuw nsw i32 %1017, 1
  %1054 = icmp eq i32 %1053, 4
  br i1 %1054, label %1055, label %1015

; <label>:1055                                    ; preds = %1015
  %1056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.i32 %1056, 1
  %1058 = lshr i32 %1057, 1
  %1059 = xor i32 %1058, %1052
  %1060 = zext i1 %960 to i32
  %1061 = and i32 %1059, %1060
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1114, label %1063, !dx.controlflow.hints !83

; <label>:1063                                    ; preds = %1055
  %1064 = fmul fast float %183, %183
  %1065 = fmul fast float %184, %184
  %1066 = fadd fast float %1064, %1065
  %1067 = fmul fast float %185, %185
  %1068 = fadd fast float %1066, %1067
  %1069 = call float @dx.op.unary.f32(i32 24, float %1068)  ; Sqrt(value)
  %1070 = and i32 %840, 4
  %1071 = icmp ne i32 %1070, 0
  %1072 = select i1 %1071, float %1069, float 1.000000e+00
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1075 = fsub fast float %1072, %1074
  %1076 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1077 = fmul fast float %1075, %1076
  %1078 = call float @dx.op.unary.f32(i32 7, float %1077)  ; Saturate(value)
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 3
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 2
  %1083 = fsub fast float %1082, %956
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 3
  %1086 = fmul fast float %1083, %1085
  %1087 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1088 = fmul fast float %1087, %1080
  %1089 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1090 = fsub fast float %1069, %1089
  %1091 = extractvalue %dx.types.CBufRet.f32 %1084, 1
  %1092 = fmul fast float %1090, %1091
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  %1094 = fsub fast float 1.000000e+00, %1078
  %1095 = fmul fast float %1093, %1094
  %1096 = fadd fast float %1095, %1078
  %1097 = extractvalue %dx.types.CBufRet.f32 %1073, 0
  %1098 = fsub fast float %1088, %1097
  %1099 = fmul fast float %1098, %1096
  %1100 = fadd fast float %1099, %1097
  %1101 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1102 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1103 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1104 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1105 = fadd fast float %1100, %835
  %1106 = fmul fast float %1100, %1101
  %1107 = fmul fast float %1100, %1102
  %1108 = fmul fast float %1100, %1103
  %1109 = fadd fast float %1106, %831
  %1110 = fadd fast float %1107, %832
  %1111 = fadd fast float %1108, %833
  %1112 = fmul fast float %1100, %1104
  %1113 = fadd fast float %1112, %834
  br label %1114

; <label>:1114                                    ; preds = %1063, %1055, %897, %830
  %1115 = phi float [ %831, %830 ], [ %915, %897 ], [ %1109, %1063 ], [ %831, %1055 ]
  %1116 = phi float [ %832, %830 ], [ %916, %897 ], [ %1110, %1063 ], [ %832, %1055 ]
  %1117 = phi float [ %833, %830 ], [ %917, %897 ], [ %1111, %1063 ], [ %833, %1055 ]
  %1118 = phi float [ %834, %830 ], [ %834, %897 ], [ %1113, %1063 ], [ %834, %1055 ]
  %1119 = phi float [ %835, %830 ], [ %900, %897 ], [ %1105, %1063 ], [ %835, %1055 ]
  %1120 = and i32 %311, 16
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1913, label %1122, !dx.controlflow.hints !84

; <label>:1122                                    ; preds = %1114
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 3
  %1133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.i32 %1133, 0
  %1135 = icmp ne i32 %1134, 0
  %1136 = zext i1 %1135 to i32
  %1137 = extractvalue %dx.types.CBufRet.i32 %1133, 1
  %1138 = icmp ne i32 %1137, 0
  %1139 = zext i1 %1138 to i32
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1142 = bitcast float %1141 to i32
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1193, label %1144

; <label>:1144                                    ; preds = %1122
  br label %1145

; <label>:1145                                    ; preds = %1188, %1144
  %1146 = phi i32 [ %1189, %1188 ], [ 0, %1144 ]
  %1147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.f32 %1147, 0
  %1149 = bitcast float %1148 to i32
  %1150 = call i32 @dx.op.tertiary.i32(i32 49, i32 %309, i32 %1149, i32 %1146)  ; UMad(a,b,c)
  %1151 = shl i32 %1150, 2
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  br label %1154

; <label>:1154                                    ; preds = %1157, %1145
  %1155 = phi i32 [ %1153, %1145 ], [ %1162, %1157 ]
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1188, label %1157

; <label>:1157                                    ; preds = %1154
  %1158 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1155)  ; FirstbitLo(value)
  %1159 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1146, i32 %1158)  ; UMad(a,b,c)
  %1160 = and i32 %1158, 31
  %1161 = shl i32 1, %1160
  %1162 = xor i32 %1161, %1155
  %1163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1159, i32 0)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.ResRet.f32 %1163, 2
  %1167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1159, i32 16)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.ResRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.ResRet.f32 %1167, 2
  %1171 = fsub fast float %1164, %1168
  %1172 = fsub fast float %1165, %1169
  %1173 = fsub fast float %1166, %1170
  %1174 = fadd fast float %1168, %1164
  %1175 = fadd fast float %1169, %1165
  %1176 = fadd fast float %1170, %1166
  %1177 = fcmp fast ogt float %190, %1171
  %1178 = fcmp fast ogt float %191, %1172
  %1179 = fcmp fast ogt float %192, %1173
  %1180 = and i1 %1177, %1178
  %1181 = and i1 %1179, %1180
  %1182 = fcmp fast olt float %190, %1174
  %1183 = fcmp fast olt float %191, %1175
  %1184 = fcmp fast olt float %192, %1176
  %1185 = and i1 %1182, %1183
  %1186 = and i1 %1184, %1185
  %1187 = and i1 %1181, %1186
  br i1 %1187, label %1191, label %1154, !dx.controlflow.hints !85

; <label>:1188                                    ; preds = %1154
  %1189 = add i32 %1146, 1
  %1190 = icmp ult i32 %1189, %1149
  br i1 %1190, label %1145, label %1192, !llvm.loop !86

; <label>:1191                                    ; preds = %1157
  br label %1193

; <label>:1192                                    ; preds = %1188
  br label %1193

; <label>:1193                                    ; preds = %1192, %1191, %1122
  %1194 = phi i32 [ 255, %1122 ], [ %1159, %1191 ], [ 255, %1192 ]
  %1195 = icmp eq i32 %1194, 255
  br i1 %1195, label %1215, label %1196, !dx.controlflow.hints !88

; <label>:1196                                    ; preds = %1193
  %1197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 32)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.f32 %1197, 2
  %1201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 132)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 136)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 152)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1194, i32 156)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1194, i32 160)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = icmp ne i32 %1208, 0
  %1212 = zext i1 %1211 to i32
  %1213 = icmp ne i32 %1210, 0
  %1214 = zext i1 %1213 to i32
  br label %1215

; <label>:1215                                    ; preds = %1196, %1193
  %1216 = phi float [ %1198, %1196 ], [ %1124, %1193 ]
  %1217 = phi float [ %1199, %1196 ], [ %1125, %1193 ]
  %1218 = phi float [ %1200, %1196 ], [ %1126, %1193 ]
  %1219 = phi float [ %1202, %1196 ], [ %1128, %1193 ]
  %1220 = phi float [ %1204, %1196 ], [ %1130, %1193 ]
  %1221 = phi float [ %1206, %1196 ], [ %1132, %1193 ]
  %1222 = phi i32 [ %1212, %1196 ], [ %1136, %1193 ]
  %1223 = phi i32 [ %1214, %1196 ], [ %1139, %1193 ]
  %1224 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1225 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1226 = fsub fast float %190, %1224
  %1227 = fsub fast float %191, %1225
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 2
  %1230 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1231 = fmul fast float %1226, %1229
  %1232 = fmul fast float %1227, %1230
  %1233 = call float @dx.op.binary.f32(i32 36, float %1231, float %1232)  ; FMin(a,b)
  %1234 = fcmp fast olt float %1233, 0.000000e+00
  %1235 = call float @dx.op.binary.f32(i32 35, float %1231, float %1232)  ; FMax(a,b)
  %1236 = fcmp fast ogt float %1235, 1.000000e+00
  %1237 = or i1 %1234, %1236
  %1238 = extractvalue %dx.types.CBufRet.f32 %1129, 2
  %1239 = fcmp fast olt float %192, %1238
  %1240 = or i1 %1237, %1239
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 3
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 0
  %1245 = fadd fast float %1244, %1242
  %1246 = fcmp fast ogt float %192, %1245
  %1247 = or i1 %1240, %1246
  br i1 %1247, label %1532, label %1248, !dx.controlflow.hints !89

; <label>:1248                                    ; preds = %1215
  %1249 = fsub fast float 1.000000e+00, %1232
  %1250 = extractvalue %dx.types.CBufRet.f32 %1243, 3
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1254 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1259 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  br i1 %1195, label %1275, label %1260, !dx.controlflow.hints !90

; <label>:1260                                    ; preds = %1248
  %1261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 48)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.ResRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.ResRet.f32 %1261, 2
  %1265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 104)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 108)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 112)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 116)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 120)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  br label %1275

; <label>:1275                                    ; preds = %1260, %1248
  %1276 = phi float [ %1268, %1260 ], [ %1250, %1248 ]
  %1277 = phi float [ %1272, %1260 ], [ %1252, %1248 ]
  %1278 = phi float [ %1274, %1260 ], [ %1253, %1248 ]
  %1279 = phi float [ %1270, %1260 ], [ %1254, %1248 ]
  %1280 = phi float [ %1262, %1260 ], [ %1256, %1248 ]
  %1281 = phi float [ %1263, %1260 ], [ %1257, %1248 ]
  %1282 = phi float [ %1264, %1260 ], [ %1258, %1248 ]
  %1283 = phi float [ %1266, %1260 ], [ %1259, %1248 ]
  %1284 = fcmp fast oeq float %1276, 0.000000e+00
  br i1 %1284, label %1400, label %1285, !dx.controlflow.hints !91

; <label>:1285                                    ; preds = %1275
  %1286 = fcmp fast ogt float %1277, 0.000000e+00
  %1287 = fcmp fast oeq float %392, 0.000000e+00
  br i1 %1287, label %1292, label %1288, !dx.controlflow.hints !75

; <label>:1288                                    ; preds = %1285
  %1289 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1290 = fmul fast float %1289, %392
  %1291 = call float @dx.op.unary.f32(i32 23, float %1290)  ; Log(value)
  br label %1292

; <label>:1292                                    ; preds = %1288, %1285
  %1293 = phi float [ %1291, %1288 ], [ 0.000000e+00, %1285 ]
  br i1 %1287, label %1298, label %1294, !dx.controlflow.hints !75

; <label>:1294                                    ; preds = %1292
  %1295 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1296 = fmul fast float %1295, %392
  %1297 = call float @dx.op.unary.f32(i32 23, float %1296)  ; Log(value)
  br label %1298

; <label>:1298                                    ; preds = %1294, %1292
  %1299 = phi float [ %1297, %1294 ], [ 0.000000e+00, %1292 ]
  br i1 %1286, label %1300, label %1362, !dx.controlflow.hints !92

; <label>:1300                                    ; preds = %1298
  %1301 = fcmp fast ogt float %1278, 0.000000e+00
  br i1 %1301, label %1302, label %1312, !dx.controlflow.hints !93

; <label>:1302                                    ; preds = %1300
  %1303 = fmul fast float %1278, %1231
  %1304 = fmul fast float %1278, %1249
  %1305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %1303, float %1304, float undef, float undef, i32 0, i32 0, i32 undef, float %1299)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.ResRet.f32 %1305, 1
  %1308 = fmul fast float %1306, 2.000000e+00
  %1309 = fmul fast float %1307, 2.000000e+00
  %1310 = fadd fast float %1308, -1.000000e+00
  %1311 = fadd fast float %1309, -1.000000e+00
  br label %1333

; <label>:1312                                    ; preds = %1300
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 3
  %1315 = fmul fast float %1314, %1231
  %1316 = fmul fast float %1314, %1249
  %1317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %35, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1318 = extractvalue %dx.types.ResRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.ResRet.f32 %1317, 1
  %1320 = extractvalue %dx.types.ResRet.f32 %1317, 2
  %1321 = fmul fast float %1318, 2.000000e+00
  %1322 = fmul fast float %1319, 2.000000e+00
  %1323 = fmul fast float %1320, 2.000000e+00
  %1324 = fadd fast float %1321, -1.000000e+00
  %1325 = fadd fast float %1322, -1.000000e+00
  %1326 = fadd fast float %1323, -1.000000e+00
  %1327 = extractvalue %dx.types.CBufRet.f32 %1243, 1
  %1328 = fmul fast float %1324, %1327
  %1329 = fmul fast float %1325, %1327
  %1330 = extractvalue %dx.types.CBufRet.f32 %1243, 2
  %1331 = fmul fast float %1330, 5.000000e-01
  %1332 = fmul fast float %1331, %1326
  br label %1333

; <label>:1333                                    ; preds = %1312, %1302
  %1334 = phi float [ %1310, %1302 ], [ %1328, %1312 ]
  %1335 = phi float [ %1311, %1302 ], [ %1329, %1312 ]
  %1336 = phi float [ 0.000000e+00, %1302 ], [ %1332, %1312 ]
  %1337 = fmul fast float %1276, %190
  %1338 = fmul fast float %1276, %191
  %1339 = fmul fast float %1276, %192
  %1340 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  %1341 = fmul fast float %1340, %1334
  %1342 = fmul fast float %1340, %1335
  %1343 = fmul fast float %1340, %1336
  %1344 = fsub fast float %1337, %1341
  %1345 = fsub fast float %1338, %1342
  %1346 = fsub fast float %1339, %1343
  %1347 = fadd fast float %1277, 5.000000e-01
  %1348 = call float @dx.op.unary.f32(i32 22, float %1347)  ; Frc(value)
  %1349 = fmul fast float %1348, %1334
  %1350 = fmul fast float %1348, %1335
  %1351 = fmul fast float %1348, %1336
  %1352 = fadd fast float %1337, -5.000000e-01
  %1353 = fsub fast float %1352, %1349
  %1354 = fadd fast float %1338, -5.000000e-01
  %1355 = fsub fast float %1354, %1350
  %1356 = fadd fast float %1339, -5.000000e-01
  %1357 = fsub fast float %1356, %1351
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %1353, float %1355, float %1357, float undef, i32 0, i32 0, i32 0, float %1293)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = fadd fast float %1359, %1279
  br label %1372

; <label>:1362                                    ; preds = %1298
  %1363 = fmul fast float %1283, %1280
  %1364 = fmul fast float %1283, %1281
  %1365 = fmul fast float %1283, %1282
  %1366 = fsub fast float %190, %1363
  %1367 = fsub fast float %191, %1364
  %1368 = fsub fast float %192, %1365
  %1369 = fmul fast float %1366, %1276
  %1370 = fmul fast float %1367, %1276
  %1371 = fmul fast float %1368, %1276
  br label %1372

; <label>:1372                                    ; preds = %1362, %1333
  %1373 = phi float [ %1344, %1333 ], [ %1369, %1362 ]
  %1374 = phi float [ %1345, %1333 ], [ %1370, %1362 ]
  %1375 = phi float [ %1346, %1333 ], [ %1371, %1362 ]
  %1376 = phi float [ %1361, %1333 ], [ 0.000000e+00, %1362 ]
  %1377 = phi float [ %1360, %1333 ], [ 0.000000e+00, %1362 ]
  %1378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %1373, float %1374, float %1375, float undef, i32 0, i32 0, i32 0, float %1293)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.ResRet.f32 %1378, 1
  %1381 = fadd fast float %1379, %1279
  br i1 %1286, label %1382, label %1393, !dx.controlflow.hints !94

; <label>:1382                                    ; preds = %1372
  %1383 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  %1384 = fmul fast float %1383, 2.000000e+00
  %1385 = fadd fast float %1384, -1.000000e+00
  %1386 = call float @dx.op.unary.f32(i32 6, float %1385)  ; FAbs(value)
  %1387 = fsub fast float %1376, %1381
  %1388 = fmul fast float %1386, %1387
  %1389 = fadd fast float %1388, %1381
  %1390 = fsub fast float %1377, %1380
  %1391 = fmul fast float %1386, %1390
  %1392 = fadd fast float %1391, %1380
  br label %1393

; <label>:1393                                    ; preds = %1382, %1372
  %1394 = phi float [ %1389, %1382 ], [ %1381, %1372 ]
  %1395 = phi float [ %1392, %1382 ], [ %1380, %1372 ]
  %1396 = fsub fast float %1394, %1395
  %1397 = fsub fast float 1.000000e+00, %1395
  %1398 = fdiv fast float %1396, %1397
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  br label %1400

; <label>:1400                                    ; preds = %1393, %1275
  %1401 = phi float [ %1399, %1393 ], [ 1.000000e+00, %1275 ]
  %1402 = fcmp fast oeq float %392, 0.000000e+00
  br i1 %1402, label %1407, label %1403, !dx.controlflow.hints !75

; <label>:1403                                    ; preds = %1400
  %1404 = extractvalue %dx.types.CBufRet.f32 %1127, 2
  %1405 = fmul fast float %1404, %392
  %1406 = call float @dx.op.unary.f32(i32 23, float %1405)  ; Log(value)
  br label %1407

; <label>:1407                                    ; preds = %1403, %1400
  %1408 = phi float [ %1406, %1403 ], [ 0.000000e+00, %1400 ]
  %1409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %34, float %1231, float %1249, float undef, float undef, i32 0, i32 0, i32 undef, float %1408)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1231, float %1249, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1412 = extractvalue %dx.types.ResRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.ResRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.ResRet.f32 %1411, 2
  %1415 = extractvalue %dx.types.ResRet.f32 %1411, 3
  %1416 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1231, float %1249, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.ResRet.f32 %1416, 2
  %1420 = extractvalue %dx.types.ResRet.f32 %1416, 3
  %1421 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1231, float %1249, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.ResRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.ResRet.f32 %1421, 2
  %1425 = extractvalue %dx.types.ResRet.f32 %1421, 3
  %1426 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1231, float %1249, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.ResRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.ResRet.f32 %1426, 2
  %1430 = extractvalue %dx.types.ResRet.f32 %1426, 3
  %1431 = fadd fast float %1412, %1413
  %1432 = fadd fast float %1431, %1414
  %1433 = fadd fast float %1432, %1415
  %1434 = fmul fast float %1417, %1412
  %1435 = fmul fast float %1418, %1413
  %1436 = fadd fast float %1434, %1435
  %1437 = fmul fast float %1419, %1414
  %1438 = fadd fast float %1436, %1437
  %1439 = fmul fast float %1420, %1415
  %1440 = fadd fast float %1438, %1439
  %1441 = fmul fast float %1422, %1412
  %1442 = fmul fast float %1423, %1413
  %1443 = fadd fast float %1441, %1442
  %1444 = fmul fast float %1424, %1414
  %1445 = fadd fast float %1443, %1444
  %1446 = fmul fast float %1425, %1415
  %1447 = fadd fast float %1445, %1446
  %1448 = fmul fast float %1427, %1412
  %1449 = fmul fast float %1428, %1413
  %1450 = fadd fast float %1448, %1449
  %1451 = fmul fast float %1429, %1414
  %1452 = fadd fast float %1450, %1451
  %1453 = fmul fast float %1430, %1415
  %1454 = fadd fast float %1452, %1453
  %1455 = fcmp fast ogt float %1433, 0.000000e+00
  %1456 = fdiv fast float %1440, %1433
  %1457 = select i1 %1455, float %1456, float 0.000000e+00
  %1458 = fdiv fast float %1447, %1433
  %1459 = select i1 %1455, float %1458, float 0.000000e+00
  %1460 = fdiv fast float %1454, %1433
  %1461 = select i1 %1455, float %1460, float 0.000000e+00
  %1462 = fcmp fast ogt float %192, %1459
  %1463 = fcmp fast olt float %192, %1457
  %1464 = and i1 %1463, %1462
  br i1 %1464, label %1465, label %1532, !dx.controlflow.hints !95

; <label>:1465                                    ; preds = %1407
  %1466 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 2
  %1469 = extractvalue %dx.types.CBufRet.f32 %1467, 3
  br i1 %1195, label %1480, label %1470, !dx.controlflow.hints !96

; <label>:1470                                    ; preds = %1465
  %1471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 60)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 64)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.ResRet.f32 %1473, 1
  %1476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 72)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 96)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.f32 %1478, 0
  br label %1480

; <label>:1480                                    ; preds = %1470, %1465
  %1481 = phi float [ %1472, %1470 ], [ %1244, %1465 ]
  %1482 = phi float [ %1477, %1470 ], [ %1242, %1465 ]
  %1483 = phi float [ %1479, %1470 ], [ %1466, %1465 ]
  %1484 = phi float [ %1474, %1470 ], [ %1468, %1465 ]
  %1485 = phi float [ %1475, %1470 ], [ %1469, %1465 ]
  %1486 = call float @dx.op.binary.f32(i32 35, float %1410, float 0.000000e+00)  ; FMax(a,b)
  %1487 = call float @dx.op.binary.f32(i32 36, float %1486, float 1.000000e+00)  ; FMin(a,b)
  %1488 = call float @dx.op.unary.f32(i32 24, float %1487)  ; Sqrt(value)
  %1489 = call float @dx.op.binary.f32(i32 35, float %1461, float 0x3F847AE140000000)  ; FMax(a,b)
  %1490 = fsub fast float %1457, %192
  %1491 = fsub fast float %192, %1459
  %1492 = call float @dx.op.binary.f32(i32 36, float %1491, float %1490)  ; FMin(a,b)
  %1493 = fdiv fast float %1492, %1489
  %1494 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1495 = fsub fast float %192, %1482
  %1496 = fdiv fast float %1495, %1481
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = fsub fast float 1.000000e+00, %1497
  %1499 = fmul float %1494, %1498
  %1500 = fmul float %1499, %1499
  %1501 = fmul fast float %1488, %1401
  %1502 = fmul fast float %1501, %1500
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 2
  %1505 = extractvalue %dx.types.CBufRet.f32 %1503, 1
  %1506 = fsub fast float %1502, %1505
  %1507 = fsub fast float %1504, %1505
  %1508 = fdiv fast float %1506, %1507
  %1509 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1510 = fmul fast float %1509, %1483
  %1511 = fcmp fast ogt float %1485, 0.000000e+00
  br i1 %1511, label %1512, label %1532, !dx.controlflow.hints !97

; <label>:1512                                    ; preds = %1480
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1517 = fsub fast float %190, %1514
  %1518 = fsub fast float %191, %1515
  %1519 = fsub fast float %192, %1516
  %1520 = fmul fast float %1517, %1517
  %1521 = fmul fast float %1518, %1518
  %1522 = fadd fast float %1520, %1521
  %1523 = fmul fast float %1519, %1519
  %1524 = fadd fast float %1522, %1523
  %1525 = call float @dx.op.unary.f32(i32 24, float %1524)  ; Sqrt(value)
  %1526 = fsub fast float %1525, %1484
  %1527 = fsub fast float %1485, %1484
  %1528 = fdiv fast float %1526, %1527
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1530 = fmul fast float %1529, %1529
  %1531 = fmul fast float %1530, %1510
  br label %1532

; <label>:1532                                    ; preds = %1512, %1480, %1407, %1215
  %1533 = phi float [ 0.000000e+00, %1215 ], [ 0.000000e+00, %1407 ], [ %1531, %1512 ], [ %1510, %1480 ]
  %1534 = fcmp fast oeq float %1533, 0.000000e+00
  br i1 %1534, label %1913, label %1535, !dx.controlflow.hints !98

; <label>:1535                                    ; preds = %1532
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.CBufRet.f32 %1536, 1
  %1539 = extractvalue %dx.types.CBufRet.f32 %1536, 2
  %1540 = fsub fast float %190, %1537
  %1541 = fadd fast float %1540, %1539
  %1542 = fsub fast float %191, %1538
  %1543 = fadd fast float %1542, %1539
  %1544 = extractvalue %dx.types.CBufRet.f32 %1536, 3
  %1545 = fmul fast float %1541, %1544
  %1546 = fmul fast float %1543, %1544
  %1547 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1548 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1549 = fsub fast float 1.000000e+00, %1547
  %1550 = fsub fast float 1.000000e+00, %1548
  %1551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %36, float %1549, float %1550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 2
  %1555 = fmul fast float %1554, %1552
  %1556 = extractvalue %dx.types.CBufRet.f32 %1553, 3
  %1557 = fadd fast float %1556, %1555
  %1558 = fcmp fast ogt float %1552, 0.000000e+00
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 32768
  %1562 = icmp ne i32 %1561, 0
  %1563 = and i1 %1558, %1562
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 3
  %1566 = fadd fast float %1565, %1557
  %1567 = fcmp fast ole float %192, %1566
  %1568 = and i1 %1563, %1567
  %1569 = xor i1 %1568, true
  %1570 = icmp ne i32 %1222, 0
  %1571 = and i1 %1570, %1569
  %1572 = icmp ne i32 %1223, 0
  %1573 = and i1 %1572, %1568
  %1574 = or i1 %1571, %1573
  br i1 %1574, label %1913, label %1575, !dx.controlflow.hints !99

; <label>:1575                                    ; preds = %1535
  %1576 = fsub fast float %192, %1557
  %1577 = call float @dx.op.unary.f32(i32 6, float %1576)  ; FAbs(value)
  %1578 = fdiv fast float %1577, %1221
  %1579 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  %1580 = fmul fast float %1579, %1533
  %1581 = fcmp fast une float %1219, 0.000000e+00
  br i1 %1581, label %1582, label %1901, !dx.controlflow.hints !100

; <label>:1582                                    ; preds = %1575
  %1583 = fmul fast float %1219, %118
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.CBufRet.f32 %1584, 1
  %1587 = extractvalue %dx.types.CBufRet.f32 %1584, 2
  %1588 = fmul fast float %1585, %1583
  %1589 = fmul fast float %1586, %1583
  %1590 = fmul fast float %1587, %1583
  %1591 = fadd fast float %1588, %190
  %1592 = fadd fast float %1589, %191
  %1593 = fadd fast float %1590, %192
  %1594 = fmul fast float %1219, 2.000000e+00
  %1595 = call float @dx.op.binary.f32(i32 35, float %392, float %1594)  ; FMax(a,b)
  %1596 = fsub fast float %1591, %1224
  %1597 = fsub fast float %1592, %1225
  %1598 = fmul fast float %1596, %1229
  %1599 = fmul fast float %1597, %1230
  %1600 = call float @dx.op.binary.f32(i32 36, float %1598, float %1599)  ; FMin(a,b)
  %1601 = fcmp fast olt float %1600, 0.000000e+00
  %1602 = call float @dx.op.binary.f32(i32 35, float %1598, float %1599)  ; FMax(a,b)
  %1603 = fcmp fast ogt float %1602, 1.000000e+00
  %1604 = or i1 %1601, %1603
  %1605 = fcmp fast olt float %1593, %1238
  %1606 = or i1 %1604, %1605
  %1607 = fcmp fast ogt float %1593, %1245
  %1608 = or i1 %1606, %1607
  br i1 %1608, label %1893, label %1609, !dx.controlflow.hints !89

; <label>:1609                                    ; preds = %1582
  %1610 = fsub fast float 1.000000e+00, %1599
  %1611 = extractvalue %dx.types.CBufRet.f32 %1243, 3
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 3
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1615 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = extractvalue %dx.types.CBufRet.f32 %1616, 1
  %1619 = extractvalue %dx.types.CBufRet.f32 %1616, 2
  %1620 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  br i1 %1195, label %1636, label %1621, !dx.controlflow.hints !90

; <label>:1621                                    ; preds = %1609
  %1622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 48)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 104)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.f32 %1626, 0
  %1628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 108)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.f32 %1628, 0
  %1630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 112)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.f32 %1630, 0
  %1632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 116)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.f32 %1632, 0
  %1634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 120)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.f32 %1634, 0
  br label %1636

; <label>:1636                                    ; preds = %1621, %1609
  %1637 = phi float [ %1629, %1621 ], [ %1611, %1609 ]
  %1638 = phi float [ %1633, %1621 ], [ %1613, %1609 ]
  %1639 = phi float [ %1635, %1621 ], [ %1614, %1609 ]
  %1640 = phi float [ %1631, %1621 ], [ %1615, %1609 ]
  %1641 = phi float [ %1623, %1621 ], [ %1617, %1609 ]
  %1642 = phi float [ %1624, %1621 ], [ %1618, %1609 ]
  %1643 = phi float [ %1625, %1621 ], [ %1619, %1609 ]
  %1644 = phi float [ %1627, %1621 ], [ %1620, %1609 ]
  %1645 = fcmp fast oeq float %1637, 0.000000e+00
  br i1 %1645, label %1761, label %1646, !dx.controlflow.hints !91

; <label>:1646                                    ; preds = %1636
  %1647 = fcmp fast ogt float %1638, 0.000000e+00
  %1648 = fcmp fast oeq float %1595, 0.000000e+00
  br i1 %1648, label %1653, label %1649, !dx.controlflow.hints !75

; <label>:1649                                    ; preds = %1646
  %1650 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1651 = fmul fast float %1650, %1595
  %1652 = call float @dx.op.unary.f32(i32 23, float %1651)  ; Log(value)
  br label %1653

; <label>:1653                                    ; preds = %1649, %1646
  %1654 = phi float [ %1652, %1649 ], [ 0.000000e+00, %1646 ]
  br i1 %1648, label %1659, label %1655, !dx.controlflow.hints !75

; <label>:1655                                    ; preds = %1653
  %1656 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1657 = fmul fast float %1656, %1595
  %1658 = call float @dx.op.unary.f32(i32 23, float %1657)  ; Log(value)
  br label %1659

; <label>:1659                                    ; preds = %1655, %1653
  %1660 = phi float [ %1658, %1655 ], [ 0.000000e+00, %1653 ]
  br i1 %1647, label %1661, label %1723, !dx.controlflow.hints !92

; <label>:1661                                    ; preds = %1659
  %1662 = fcmp fast ogt float %1639, 0.000000e+00
  br i1 %1662, label %1663, label %1673, !dx.controlflow.hints !93

; <label>:1663                                    ; preds = %1661
  %1664 = fmul fast float %1639, %1598
  %1665 = fmul fast float %1639, %1610
  %1666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %33, float %1664, float %1665, float undef, float undef, i32 0, i32 0, i32 undef, float %1660)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.ResRet.f32 %1666, 1
  %1669 = fmul fast float %1667, 2.000000e+00
  %1670 = fmul fast float %1668, 2.000000e+00
  %1671 = fadd fast float %1669, -1.000000e+00
  %1672 = fadd fast float %1670, -1.000000e+00
  br label %1694

; <label>:1673                                    ; preds = %1661
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 3
  %1676 = fmul fast float %1675, %1598
  %1677 = fmul fast float %1675, %1610
  %1678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %35, float %1676, float %1677, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = fmul fast float %1679, 2.000000e+00
  %1683 = fmul fast float %1680, 2.000000e+00
  %1684 = fmul fast float %1681, 2.000000e+00
  %1685 = fadd fast float %1682, -1.000000e+00
  %1686 = fadd fast float %1683, -1.000000e+00
  %1687 = fadd fast float %1684, -1.000000e+00
  %1688 = extractvalue %dx.types.CBufRet.f32 %1243, 1
  %1689 = fmul fast float %1685, %1688
  %1690 = fmul fast float %1686, %1688
  %1691 = extractvalue %dx.types.CBufRet.f32 %1243, 2
  %1692 = fmul fast float %1691, 5.000000e-01
  %1693 = fmul fast float %1692, %1687
  br label %1694

; <label>:1694                                    ; preds = %1673, %1663
  %1695 = phi float [ %1671, %1663 ], [ %1689, %1673 ]
  %1696 = phi float [ %1672, %1663 ], [ %1690, %1673 ]
  %1697 = phi float [ 0.000000e+00, %1663 ], [ %1693, %1673 ]
  %1698 = fmul fast float %1637, %1591
  %1699 = fmul fast float %1637, %1592
  %1700 = fmul fast float %1637, %1593
  %1701 = call float @dx.op.unary.f32(i32 22, float %1638)  ; Frc(value)
  %1702 = fmul fast float %1701, %1695
  %1703 = fmul fast float %1701, %1696
  %1704 = fmul fast float %1701, %1697
  %1705 = fsub fast float %1698, %1702
  %1706 = fsub fast float %1699, %1703
  %1707 = fsub fast float %1700, %1704
  %1708 = fadd fast float %1638, 5.000000e-01
  %1709 = call float @dx.op.unary.f32(i32 22, float %1708)  ; Frc(value)
  %1710 = fmul fast float %1709, %1695
  %1711 = fmul fast float %1709, %1696
  %1712 = fmul fast float %1709, %1697
  %1713 = fadd fast float %1698, -5.000000e-01
  %1714 = fsub fast float %1713, %1710
  %1715 = fadd fast float %1699, -5.000000e-01
  %1716 = fsub fast float %1715, %1711
  %1717 = fadd fast float %1700, -5.000000e-01
  %1718 = fsub fast float %1717, %1712
  %1719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %1714, float %1716, float %1718, float undef, i32 0, i32 0, i32 0, float %1654)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1720 = extractvalue %dx.types.ResRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.ResRet.f32 %1719, 1
  %1722 = fadd fast float %1720, %1640
  br label %1733

; <label>:1723                                    ; preds = %1659
  %1724 = fmul fast float %1644, %1641
  %1725 = fmul fast float %1644, %1642
  %1726 = fmul fast float %1644, %1643
  %1727 = fsub fast float %1591, %1724
  %1728 = fsub fast float %1592, %1725
  %1729 = fsub fast float %1593, %1726
  %1730 = fmul fast float %1727, %1637
  %1731 = fmul fast float %1728, %1637
  %1732 = fmul fast float %1729, %1637
  br label %1733

; <label>:1733                                    ; preds = %1723, %1694
  %1734 = phi float [ %1705, %1694 ], [ %1730, %1723 ]
  %1735 = phi float [ %1706, %1694 ], [ %1731, %1723 ]
  %1736 = phi float [ %1707, %1694 ], [ %1732, %1723 ]
  %1737 = phi float [ %1722, %1694 ], [ 0.000000e+00, %1723 ]
  %1738 = phi float [ %1721, %1694 ], [ 0.000000e+00, %1723 ]
  %1739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %1734, float %1735, float %1736, float undef, i32 0, i32 0, i32 0, float %1654)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = extractvalue %dx.types.ResRet.f32 %1739, 1
  %1742 = fadd fast float %1740, %1640
  br i1 %1647, label %1743, label %1754, !dx.controlflow.hints !94

; <label>:1743                                    ; preds = %1733
  %1744 = call float @dx.op.unary.f32(i32 22, float %1638)  ; Frc(value)
  %1745 = fmul fast float %1744, 2.000000e+00
  %1746 = fadd fast float %1745, -1.000000e+00
  %1747 = call float @dx.op.unary.f32(i32 6, float %1746)  ; FAbs(value)
  %1748 = fsub fast float %1737, %1742
  %1749 = fmul fast float %1747, %1748
  %1750 = fadd fast float %1749, %1742
  %1751 = fsub fast float %1738, %1741
  %1752 = fmul fast float %1747, %1751
  %1753 = fadd fast float %1752, %1741
  br label %1754

; <label>:1754                                    ; preds = %1743, %1733
  %1755 = phi float [ %1750, %1743 ], [ %1742, %1733 ]
  %1756 = phi float [ %1753, %1743 ], [ %1741, %1733 ]
  %1757 = fsub fast float %1755, %1756
  %1758 = fsub fast float 1.000000e+00, %1756
  %1759 = fdiv fast float %1757, %1758
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  br label %1761

; <label>:1761                                    ; preds = %1754, %1636
  %1762 = phi float [ %1760, %1754 ], [ 1.000000e+00, %1636 ]
  %1763 = fcmp fast oeq float %1595, 0.000000e+00
  br i1 %1763, label %1768, label %1764, !dx.controlflow.hints !75

; <label>:1764                                    ; preds = %1761
  %1765 = extractvalue %dx.types.CBufRet.f32 %1127, 2
  %1766 = fmul fast float %1765, %1595
  %1767 = call float @dx.op.unary.f32(i32 23, float %1766)  ; Log(value)
  br label %1768

; <label>:1768                                    ; preds = %1764, %1761
  %1769 = phi float [ %1767, %1764 ], [ 0.000000e+00, %1761 ]
  %1770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %34, float %1598, float %1610, float undef, float undef, i32 0, i32 0, i32 undef, float %1769)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1598, float %1610, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.ResRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.ResRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.ResRet.f32 %1772, 3
  %1777 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1598, float %1610, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.ResRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.ResRet.f32 %1777, 2
  %1781 = extractvalue %dx.types.ResRet.f32 %1777, 3
  %1782 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1598, float %1610, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.ResRet.f32 %1782, 3
  %1787 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %36, float %1598, float %1610, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.ResRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.ResRet.f32 %1787, 2
  %1791 = extractvalue %dx.types.ResRet.f32 %1787, 3
  %1792 = fadd fast float %1773, %1774
  %1793 = fadd fast float %1792, %1775
  %1794 = fadd fast float %1793, %1776
  %1795 = fmul fast float %1778, %1773
  %1796 = fmul fast float %1779, %1774
  %1797 = fadd fast float %1795, %1796
  %1798 = fmul fast float %1780, %1775
  %1799 = fadd fast float %1797, %1798
  %1800 = fmul fast float %1781, %1776
  %1801 = fadd fast float %1799, %1800
  %1802 = fmul fast float %1783, %1773
  %1803 = fmul fast float %1784, %1774
  %1804 = fadd fast float %1802, %1803
  %1805 = fmul fast float %1785, %1775
  %1806 = fadd fast float %1804, %1805
  %1807 = fmul fast float %1786, %1776
  %1808 = fadd fast float %1806, %1807
  %1809 = fmul fast float %1788, %1773
  %1810 = fmul fast float %1789, %1774
  %1811 = fadd fast float %1809, %1810
  %1812 = fmul fast float %1790, %1775
  %1813 = fadd fast float %1811, %1812
  %1814 = fmul fast float %1791, %1776
  %1815 = fadd fast float %1813, %1814
  %1816 = fcmp fast ogt float %1794, 0.000000e+00
  %1817 = fdiv fast float %1801, %1794
  %1818 = select i1 %1816, float %1817, float 0.000000e+00
  %1819 = fdiv fast float %1808, %1794
  %1820 = select i1 %1816, float %1819, float 0.000000e+00
  %1821 = fdiv fast float %1815, %1794
  %1822 = select i1 %1816, float %1821, float 0.000000e+00
  %1823 = fcmp fast ogt float %1593, %1820
  %1824 = fcmp fast olt float %1593, %1818
  %1825 = and i1 %1824, %1823
  br i1 %1825, label %1826, label %1893, !dx.controlflow.hints !95

; <label>:1826                                    ; preds = %1768
  %1827 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 2
  %1830 = extractvalue %dx.types.CBufRet.f32 %1828, 3
  br i1 %1195, label %1841, label %1831, !dx.controlflow.hints !96

; <label>:1831                                    ; preds = %1826
  %1832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 60)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 64)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.f32 %1834, 0
  %1836 = extractvalue %dx.types.ResRet.f32 %1834, 1
  %1837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 72)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  %1839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1194, i32 96)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  br label %1841

; <label>:1841                                    ; preds = %1831, %1826
  %1842 = phi float [ %1833, %1831 ], [ %1244, %1826 ]
  %1843 = phi float [ %1838, %1831 ], [ %1242, %1826 ]
  %1844 = phi float [ %1840, %1831 ], [ %1827, %1826 ]
  %1845 = phi float [ %1835, %1831 ], [ %1829, %1826 ]
  %1846 = phi float [ %1836, %1831 ], [ %1830, %1826 ]
  %1847 = call float @dx.op.binary.f32(i32 35, float %1771, float 0.000000e+00)  ; FMax(a,b)
  %1848 = call float @dx.op.binary.f32(i32 36, float %1847, float 1.000000e+00)  ; FMin(a,b)
  %1849 = call float @dx.op.unary.f32(i32 24, float %1848)  ; Sqrt(value)
  %1850 = call float @dx.op.binary.f32(i32 35, float %1822, float 0x3F847AE140000000)  ; FMax(a,b)
  %1851 = fsub fast float %1818, %1593
  %1852 = fsub fast float %1593, %1820
  %1853 = call float @dx.op.binary.f32(i32 36, float %1852, float %1851)  ; FMin(a,b)
  %1854 = fdiv fast float %1853, %1850
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  %1856 = fsub fast float %1593, %1843
  %1857 = fdiv fast float %1856, %1842
  %1858 = call float @dx.op.unary.f32(i32 7, float %1857)  ; Saturate(value)
  %1859 = fsub fast float 1.000000e+00, %1858
  %1860 = fmul float %1855, %1859
  %1861 = fmul float %1860, %1860
  %1862 = fmul fast float %1849, %1762
  %1863 = fmul fast float %1862, %1861
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 2
  %1866 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1867 = fsub fast float %1863, %1866
  %1868 = fsub fast float %1865, %1866
  %1869 = fdiv fast float %1867, %1868
  %1870 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  %1871 = fmul fast float %1870, %1844
  %1872 = fcmp fast ogt float %1846, 0.000000e+00
  br i1 %1872, label %1873, label %1893, !dx.controlflow.hints !97

; <label>:1873                                    ; preds = %1841
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.CBufRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.CBufRet.f32 %1874, 2
  %1878 = fsub fast float %1591, %1875
  %1879 = fsub fast float %1592, %1876
  %1880 = fsub fast float %1593, %1877
  %1881 = fmul fast float %1878, %1878
  %1882 = fmul fast float %1879, %1879
  %1883 = fadd fast float %1881, %1882
  %1884 = fmul fast float %1880, %1880
  %1885 = fadd fast float %1883, %1884
  %1886 = call float @dx.op.unary.f32(i32 24, float %1885)  ; Sqrt(value)
  %1887 = fsub fast float %1886, %1845
  %1888 = fsub fast float %1846, %1845
  %1889 = fdiv fast float %1887, %1888
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = fmul fast float %1890, %1890
  %1892 = fmul fast float %1891, %1871
  br label %1893

; <label>:1893                                    ; preds = %1873, %1841, %1768, %1582
  %1894 = phi float [ 0.000000e+00, %1582 ], [ 0.000000e+00, %1768 ], [ %1892, %1873 ], [ %1871, %1841 ]
  %1895 = fsub fast float %1580, %1894
  %1896 = fdiv fast float %1895, %1580
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = fsub fast float 1.000000e+00, %1220
  %1899 = fmul fast float %1897, %1898
  %1900 = fadd fast float %1899, %1220
  br label %1901

; <label>:1901                                    ; preds = %1893, %1575
  %1902 = phi float [ %1900, %1893 ], [ 1.000000e+00, %1575 ]
  %1903 = fadd fast float %1580, %1119
  %1904 = fmul fast float %1580, %1216
  %1905 = fmul fast float %1904, %1902
  %1906 = fmul fast float %1580, %1217
  %1907 = fmul fast float %1906, %1902
  %1908 = fmul fast float %1580, %1218
  %1909 = fmul fast float %1908, %1902
  %1910 = fadd fast float %1905, %1115
  %1911 = fadd fast float %1907, %1116
  %1912 = fadd fast float %1909, %1117
  br label %1913

; <label>:1913                                    ; preds = %1901, %1535, %1532, %1114
  %1914 = phi float [ %1115, %1114 ], [ %1115, %1532 ], [ %1115, %1535 ], [ %1910, %1901 ]
  %1915 = phi float [ %1116, %1114 ], [ %1116, %1532 ], [ %1116, %1535 ], [ %1911, %1901 ]
  %1916 = phi float [ %1117, %1114 ], [ %1117, %1532 ], [ %1117, %1535 ], [ %1912, %1901 ]
  %1917 = phi float [ %1119, %1114 ], [ %1119, %1532 ], [ %1119, %1535 ], [ %1903, %1901 ]
  %1918 = and i32 %311, 4
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %2090, label %1920, !dx.controlflow.hints !101

; <label>:1920                                    ; preds = %1913
  %1921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.i32 %1921, 1
  %1923 = icmp eq i32 %1922, 0
  br i1 %1923, label %2090, label %1924

; <label>:1924                                    ; preds = %1920
  br label %1925

; <label>:1925                                    ; preds = %2081, %1924
  %1926 = phi i32 [ %2087, %2081 ], [ 0, %1924 ]
  %1927 = phi float [ %2082, %2081 ], [ %1914, %1924 ]
  %1928 = phi float [ %2083, %2081 ], [ %1915, %1924 ]
  %1929 = phi float [ %2084, %2081 ], [ %1916, %1924 ]
  %1930 = phi float [ %2085, %2081 ], [ %1118, %1924 ]
  %1931 = phi float [ %2086, %2081 ], [ %1917, %1924 ]
  %1932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.i32 %1932, 1
  %1934 = call i32 @dx.op.tertiary.i32(i32 49, i32 %309, i32 %1933, i32 %1926)  ; UMad(a,b,c)
  %1935 = shl i32 %1934, 2
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = icmp eq i32 %1937, 0
  br i1 %1938, label %2081, label %1939

; <label>:1939                                    ; preds = %1925
  br label %1940

; <label>:1940                                    ; preds = %2067, %1939
  %1941 = phi i32 [ %1951, %2067 ], [ %1937, %1939 ]
  %1942 = phi float [ %2073, %2067 ], [ %1927, %1939 ]
  %1943 = phi float [ %2074, %2067 ], [ %1928, %1939 ]
  %1944 = phi float [ %2075, %2067 ], [ %1929, %1939 ]
  %1945 = phi float [ %2077, %2067 ], [ %1930, %1939 ]
  %1946 = phi float [ %2078, %2067 ], [ %1931, %1939 ]
  %1947 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1941)  ; FirstbitLo(value)
  %1948 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1926, i32 %1947)  ; UMad(a,b,c)
  %1949 = and i32 %1947, 31
  %1950 = shl i32 1, %1949
  %1951 = xor i32 %1950, %1941
  %1952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1948, i32 0)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1948, i32 4)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.f32 %1954, 0
  %1956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1948, i32 16)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.f32 %1956, 0
  %1958 = extractvalue %dx.types.ResRet.f32 %1956, 1
  %1959 = extractvalue %dx.types.ResRet.f32 %1956, 2
  %1960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1948, i32 28)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.f32 %1960, 0
  %1962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1948, i32 32)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.f32 %1962, 0
  %1964 = extractvalue %dx.types.ResRet.f32 %1962, 1
  %1965 = extractvalue %dx.types.ResRet.f32 %1962, 2
  %1966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1948, i32 44)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1948, i32 48)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1948, i32 52)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1948, i32 56)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1948, i32 64)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = extractvalue %dx.types.ResRet.f32 %1974, 1
  %1977 = extractvalue %dx.types.ResRet.f32 %1974, 2
  %1978 = mul i32 %1948, 60
  %1979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.f32 %1979, 0
  %1981 = extractvalue %dx.types.ResRet.f32 %1979, 1
  %1982 = extractvalue %dx.types.ResRet.f32 %1979, 2
  %1983 = add i32 %1978, 12
  %1984 = add i32 %1978, 48
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 2
  %1987 = fsub fast float %190, %1980
  %1988 = fsub fast float %191, %1981
  %1989 = fsub fast float %192, %1982
  %1990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.ResRet.f32 %1990, 1
  %1993 = extractvalue %dx.types.ResRet.f32 %1990, 2
  %1994 = call float @dx.op.dot3.f32(i32 55, float %1987, float %1988, float %1989, float %1991, float %1992, float %1993)  ; Dot3(ax,ay,az,bx,by,bz)
  %1995 = add i32 %1978, 24
  %1996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = extractvalue %dx.types.ResRet.f32 %1996, 1
  %1999 = extractvalue %dx.types.ResRet.f32 %1996, 2
  %2000 = call float @dx.op.dot3.f32(i32 55, float %1987, float %1988, float %1989, float %1997, float %1998, float %1999)  ; Dot3(ax,ay,az,bx,by,bz)
  %2001 = add i32 %1978, 36
  %2002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.ResRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.ResRet.f32 %2002, 2
  %2006 = call float @dx.op.dot3.f32(i32 55, float %1987, float %1988, float %1989, float %2003, float %2004, float %2005)  ; Dot3(ax,ay,az,bx,by,bz)
  %2007 = call float @dx.op.unary.f32(i32 6, float %1994)  ; FAbs(value)
  %2008 = call float @dx.op.unary.f32(i32 6, float %2000)  ; FAbs(value)
  %2009 = call float @dx.op.unary.f32(i32 6, float %2006)  ; FAbs(value)
  %2010 = fmul fast float %2007, %1967
  %2011 = fmul fast float %2008, %1967
  %2012 = fmul fast float %2009, %1967
  %2013 = fadd fast float %2010, %1963
  %2014 = fadd fast float %2011, %1964
  %2015 = fadd fast float %2012, %1965
  %2016 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2017 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2018 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2019 = fmul fast float %2016, %2016
  %2020 = fmul fast float %2017, %2017
  %2021 = fadd fast float %2020, %2019
  %2022 = fmul fast float %2018, %2018
  %2023 = fadd fast float %2021, %2022
  %2024 = call float @dx.op.unary.f32(i32 24, float %2023)  ; Sqrt(value)
  %2025 = fsub fast float 1.000000e+00, %2024
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2027 = fmul fast float %2026, %1953
  %2028 = fmul fast float %1986, 2.000000e+00
  %2029 = fadd fast float %2006, %1986
  %2030 = call float @dx.op.binary.f32(i32 35, float %2029, float 0.000000e+00)  ; FMax(a,b)
  %2031 = call float @dx.op.binary.f32(i32 36, float %2030, float %2028)  ; FMin(a,b)
  %2032 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2031)  ; FMax(a,b)
  %2033 = fmul fast float %1955, 0x3FF7154760000000
  %2034 = fmul fast float %2033, %2032
  %2035 = call float @dx.op.unary.f32(i32 21, float %2034)  ; Exp(value)
  %2036 = fmul fast float %2027, %2035
  %2037 = fcmp fast oeq float %392, 0.000000e+00
  br i1 %2037, label %2043, label %2038, !dx.controlflow.hints !75

; <label>:2038                                    ; preds = %1940
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 3
  %2041 = fmul fast float %2040, %392
  %2042 = call float @dx.op.unary.f32(i32 23, float %2041)  ; Log(value)
  br label %2043

; <label>:2043                                    ; preds = %2038, %1940
  %2044 = phi float [ %2042, %2038 ], [ 0.000000e+00, %1940 ]
  %2045 = fcmp fast oeq float %1969, 0.000000e+00
  br i1 %2045, label %2067, label %2046, !dx.controlflow.hints !102

; <label>:2046                                    ; preds = %2043
  %2047 = fmul fast float %1975, %1973
  %2048 = fmul fast float %1976, %1973
  %2049 = fmul fast float %1977, %1973
  %2050 = fsub fast float %190, %2047
  %2051 = fsub fast float %191, %2048
  %2052 = fsub fast float %192, %2049
  %2053 = fmul fast float %2050, %1969
  %2054 = fmul fast float %2051, %1969
  %2055 = fmul fast float %2052, %1969
  %2056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %33, float %2053, float %2054, float %2055, float undef, i32 0, i32 0, i32 0, float %2044)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2057 = extractvalue %dx.types.ResRet.f32 %2056, 0
  %2058 = extractvalue %dx.types.ResRet.f32 %2056, 1
  %2059 = fdiv fast float 1.000000e+00, %1971
  %2060 = fmul fast float %1971, 2.000000e+00
  %2061 = fadd fast float %2060, -1.000000e+00
  %2062 = fadd fast float %2061, %2058
  %2063 = fadd fast float %2062, %2057
  %2064 = fmul fast float %2063, %2059
  %2065 = fadd fast float %2064, -1.000000e+00
  %2066 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  br label %2067

; <label>:2067                                    ; preds = %2046, %2043
  %2068 = phi float [ %2066, %2046 ], [ 1.000000e+00, %2043 ]
  %2069 = fmul fast float %2036, %2068
  %2070 = fmul fast float %2069, %1957
  %2071 = fmul fast float %2069, %1958
  %2072 = fmul fast float %2069, %1959
  %2073 = fadd fast float %2070, %1942
  %2074 = fadd fast float %2071, %1943
  %2075 = fadd fast float %2072, %1944
  %2076 = fmul fast float %2069, %1961
  %2077 = fadd fast float %2076, %1945
  %2078 = fadd fast float %2069, %1946
  %2079 = icmp eq i32 %1941, %1950
  br i1 %2079, label %2080, label %1940, !llvm.loop !103

; <label>:2080                                    ; preds = %2067
  br label %2081

; <label>:2081                                    ; preds = %2080, %1925
  %2082 = phi float [ %1927, %1925 ], [ %2073, %2080 ]
  %2083 = phi float [ %1928, %1925 ], [ %2074, %2080 ]
  %2084 = phi float [ %1929, %1925 ], [ %2075, %2080 ]
  %2085 = phi float [ %1930, %1925 ], [ %2077, %2080 ]
  %2086 = phi float [ %1931, %1925 ], [ %2078, %2080 ]
  %2087 = add i32 %1926, 1
  %2088 = icmp ult i32 %2087, %1933
  br i1 %2088, label %1925, label %2089, !llvm.loop !104

; <label>:2089                                    ; preds = %2081
  br label %2090

; <label>:2090                                    ; preds = %2089, %1920, %1913
  %2091 = phi float [ %1914, %1913 ], [ %1914, %1920 ], [ %2082, %2089 ]
  %2092 = phi float [ %1915, %1913 ], [ %1915, %1920 ], [ %2083, %2089 ]
  %2093 = phi float [ %1916, %1913 ], [ %1916, %1920 ], [ %2084, %2089 ]
  %2094 = phi float [ %1118, %1913 ], [ %1118, %1920 ], [ %2085, %2089 ]
  %2095 = phi float [ %1917, %1913 ], [ %1917, %1920 ], [ %2086, %2089 ]
  %2096 = fcmp fast ogt float %2095, 0.000000e+00
  br i1 %2096, label %2097, label %2888, !dx.controlflow.hints !105

; <label>:2097                                    ; preds = %2090
  %2098 = fdiv fast float 1.000000e+00, %2095
  %2099 = fmul fast float %2098, %2091
  %2100 = fmul fast float %2098, %2092
  %2101 = fmul fast float %2098, %2093
  %2102 = fmul fast float %2098, %2094
  %2103 = fmul fast float %2098, %617
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2106 = fadd fast float %2105, -1.000000e+00
  %2107 = fmul fast float %2103, %2106
  %2108 = fadd fast float %2107, 1.000000e+00
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.CBufRet.f32 %2109, 1
  %2112 = extractvalue %dx.types.CBufRet.f32 %2109, 2
  %2113 = fsub fast float %192, %2112
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 3
  %2116 = fcmp fast oeq float %2115, 0.000000e+00
  br i1 %2116, label %2859, label %2117, !dx.controlflow.hints !106

; <label>:2117                                    ; preds = %2097
  %2118 = fsub fast float %191, %2111
  %2119 = fsub fast float %190, %2110
  %2120 = extractvalue %dx.types.CBufRet.f32 %2114, 0
  %2121 = extractvalue %dx.types.CBufRet.f32 %2114, 1
  %2122 = extractvalue %dx.types.CBufRet.f32 %2114, 2
  %2123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2124 = extractvalue %dx.types.CBufRet.f32 %2123, 0
  %2125 = extractvalue %dx.types.CBufRet.f32 %2123, 1
  %2126 = extractvalue %dx.types.CBufRet.f32 %2123, 2
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2129 = fmul fast float %2128, %2120
  %2130 = fmul fast float %2128, %2121
  %2131 = fmul fast float %2128, %2122
  %2132 = fsub fast float %2119, %2129
  %2133 = fsub fast float %2118, %2130
  %2134 = fsub fast float %2113, %2131
  %2135 = fcmp fast olt float %2115, 0.000000e+00
  br i1 %2135, label %2667, label %2136, !dx.controlflow.hints !107

; <label>:2136                                    ; preds = %2117
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %2141 = extractvalue %dx.types.CBufRet.f32 %2137, 3
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.CBufRet.f32 %2142, 1
  %2145 = extractvalue %dx.types.CBufRet.f32 %2142, 2
  %2146 = extractvalue %dx.types.CBufRet.f32 %2142, 3
  %2147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2148 = extractvalue %dx.types.CBufRet.f32 %2147, 0
  %2149 = extractvalue %dx.types.CBufRet.f32 %2147, 1
  %2150 = extractvalue %dx.types.CBufRet.f32 %2147, 2
  %2151 = extractvalue %dx.types.CBufRet.f32 %2147, 3
  %2152 = fmul fast float %2138, %2132
  %2153 = call float @dx.op.tertiary.f32(i32 46, float %2133, float %2139, float %2152)  ; FMad(a,b,c)
  %2154 = call float @dx.op.tertiary.f32(i32 46, float %2134, float %2140, float %2153)  ; FMad(a,b,c)
  %2155 = fadd fast float %2154, %2141
  %2156 = fmul fast float %2143, %2132
  %2157 = call float @dx.op.tertiary.f32(i32 46, float %2133, float %2144, float %2156)  ; FMad(a,b,c)
  %2158 = call float @dx.op.tertiary.f32(i32 46, float %2134, float %2145, float %2157)  ; FMad(a,b,c)
  %2159 = fadd fast float %2158, %2146
  %2160 = fmul fast float %2148, %2132
  %2161 = call float @dx.op.tertiary.f32(i32 46, float %2133, float %2149, float %2160)  ; FMad(a,b,c)
  %2162 = call float @dx.op.tertiary.f32(i32 46, float %2134, float %2150, float %2161)  ; FMad(a,b,c)
  %2163 = fadd fast float %2162, %2151
  %2164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.CBufRet.f32 %2164, 1
  %2167 = extractvalue %dx.types.CBufRet.f32 %2164, 3
  %2168 = fmul fast float %2167, %2155
  %2169 = fmul fast float %2167, %2159
  %2170 = fadd fast float %2168, %2165
  %2171 = fadd fast float %2169, %2166
  %2172 = extractvalue %dx.types.CBufRet.f32 %2164, 2
  %2173 = fcmp fast olt float %2172, 0.000000e+00
  %2174 = fsub fast float -0.000000e+00, %2172
  %2175 = select i1 %2173, float %2174, float %2172
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 1
  %2178 = fadd fast float %2175, %2177
  %2179 = fcmp fast ogt float %2178, 0.000000e+00
  br i1 %2179, label %2180, label %2211, !dx.controlflow.hints !108

; <label>:2180                                    ; preds = %2136
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 1
  %2183 = fsub fast float %2182, %2163
  %2184 = extractvalue %dx.types.CBufRet.f32 %2181, 2
  %2185 = fmul fast float %2183, %2184
  %2186 = fsub fast float 1.000000e+00, %2185
  %2187 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2191 = fsub fast float %2170, %2189
  %2192 = fsub fast float %2171, %2190
  %2193 = fcmp fast olt float %2191, 0.000000e+00
  %2194 = fcmp fast olt float %2192, 0.000000e+00
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.CBufRet.f32 %2195, 1
  %2198 = extractvalue %dx.types.CBufRet.f32 %2195, 2
  %2199 = extractvalue %dx.types.CBufRet.f32 %2195, 3
  %2200 = select i1 %2193, float %2196, float %2198
  %2201 = select i1 %2194, float %2197, float %2199
  %2202 = fmul fast float %2200, %2191
  %2203 = fmul fast float %2201, %2192
  %2204 = call float @dx.op.unary.f32(i32 6, float %2202)  ; FAbs(value)
  %2205 = call float @dx.op.unary.f32(i32 6, float %2203)  ; FAbs(value)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2207 = call float @dx.op.binary.f32(i32 35, float %2204, float %2205)  ; FMax(a,b)
  %2208 = fsub fast float %2206, %2207
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = fmul fast float %2209, %2187
  br label %2211

; <label>:2211                                    ; preds = %2180, %2136
  %2212 = phi float [ %2210, %2180 ], [ 0.000000e+00, %2136 ]
  %2213 = call float @dx.op.binary.f32(i32 35, float %2212, float 0.000000e+00)  ; FMax(a,b)
  %2214 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2213)  ; FMax(a,b)
  %2215 = fcmp fast olt float %2214, 1.000000e+00
  br i1 %2215, label %2216, label %2614, !dx.controlflow.hints !109

; <label>:2216                                    ; preds = %2211
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = fcmp fast une float %2218, 0.000000e+00
  br i1 %2219, label %2220, label %2614, !dx.controlflow.hints !110

; <label>:2220                                    ; preds = %2216
  %2221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2222 = extractvalue %dx.types.CBufRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.CBufRet.f32 %2221, 1
  %2224 = extractvalue %dx.types.CBufRet.f32 %2221, 2
  %2225 = extractvalue %dx.types.CBufRet.f32 %2221, 3
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 0
  %2228 = extractvalue %dx.types.CBufRet.f32 %2226, 1
  %2229 = extractvalue %dx.types.CBufRet.f32 %2226, 2
  %2230 = extractvalue %dx.types.CBufRet.f32 %2226, 3
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 0
  %2233 = extractvalue %dx.types.CBufRet.f32 %2231, 1
  %2234 = extractvalue %dx.types.CBufRet.f32 %2231, 2
  %2235 = extractvalue %dx.types.CBufRet.f32 %2231, 3
  %2236 = fmul fast float %2222, %2132
  %2237 = call float @dx.op.tertiary.f32(i32 46, float %2133, float %2223, float %2236)  ; FMad(a,b,c)
  %2238 = call float @dx.op.tertiary.f32(i32 46, float %2134, float %2224, float %2237)  ; FMad(a,b,c)
  %2239 = fadd fast float %2238, %2225
  %2240 = fmul fast float %2227, %2132
  %2241 = call float @dx.op.tertiary.f32(i32 46, float %2133, float %2228, float %2240)  ; FMad(a,b,c)
  %2242 = call float @dx.op.tertiary.f32(i32 46, float %2134, float %2229, float %2241)  ; FMad(a,b,c)
  %2243 = fadd fast float %2242, %2230
  %2244 = fmul fast float %2232, %2132
  %2245 = call float @dx.op.tertiary.f32(i32 46, float %2133, float %2233, float %2244)  ; FMad(a,b,c)
  %2246 = call float @dx.op.tertiary.f32(i32 46, float %2134, float %2234, float %2245)  ; FMad(a,b,c)
  %2247 = fadd fast float %2246, %2235
  %2248 = fcmp fast oge float %2239, 1.000000e+00
  %2249 = fcmp fast oge float %2243, 1.000000e+00
  %2250 = or i1 %2248, %2249
  %2251 = fcmp fast olt float %2239, 0.000000e+00
  %2252 = fcmp fast olt float %2243, 0.000000e+00
  %2253 = or i1 %2251, %2252
  %2254 = or i1 %2250, %2253
  br i1 %2254, label %2614, label %2255, !dx.controlflow.hints !111

; <label>:2255                                    ; preds = %2220
  %2256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2257 = extractvalue %dx.types.CBufRet.f32 %2256, 0
  %2258 = extractvalue %dx.types.CBufRet.f32 %2256, 1
  %2259 = extractvalue %dx.types.CBufRet.f32 %2256, 2
  %2260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2261 = extractvalue %dx.types.CBufRet.i32 %2260, 2
  %2262 = uitofp i32 %2261 to float
  %2263 = extractvalue %dx.types.CBufRet.i32 %2260, 3
  %2264 = uitofp i32 %2263 to float
  %2265 = extractvalue %dx.types.CBufRet.f32 %2256, 3
  %2266 = fmul fast float %2265, 2.000000e+00
  %2267 = fsub fast float %2239, %2257
  %2268 = fsub fast float %2243, %2258
  %2269 = fmul fast float %2266, %2267
  %2270 = fmul fast float %2266, %2268
  %2271 = fdiv fast float 1.000000e+00, %2122
  %2272 = fmul fast float %2270, %2271
  %2273 = call float @dx.op.unary.f32(i32 6, float %2272)  ; FAbs(value)
  %2274 = fmul fast float %2259, %2134
  %2275 = fmul fast float %2274, %2266
  %2276 = call float @dx.op.unary.f32(i32 6, float %2275)  ; FAbs(value)
  %2277 = call float @dx.op.unary.f32(i32 6, float %2269)  ; FAbs(value)
  %2278 = call float @dx.op.binary.f32(i32 35, float %2276, float %2273)  ; FMax(a,b)
  %2279 = call float @dx.op.binary.f32(i32 35, float %2277, float %2278)  ; FMax(a,b)
  %2280 = fmul fast float %2279, 2.000000e+00
  %2281 = call float @dx.op.unary.f32(i32 23, float %2280)  ; Log(value)
  %2282 = call float @dx.op.binary.f32(i32 35, float %2281, float %2262)  ; FMax(a,b)
  %2283 = call float @dx.op.unary.f32(i32 22, float %2282)  ; Frc(value)
  %2284 = fadd fast float %2283, 0xBFEA666660000000
  %2285 = fmul fast float %2284, 8.000000e+00
  %2286 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  %2287 = call float @dx.op.unary.f32(i32 27, float %2282)  ; Round_ni(value)
  %2288 = fadd fast float %2287, %2286
  %2289 = call float @dx.op.binary.f32(i32 36, float %2288, float %2264)  ; FMin(a,b)
  %2290 = call float @dx.op.unary.f32(i32 27, float %2289)  ; Round_ni(value)
  %2291 = fsub fast float -0.000000e+00, %2290
  %2292 = call float @dx.op.unary.f32(i32 21, float %2291)  ; Exp(value)
  %2293 = fmul fast float %2292, %2266
  %2294 = fmul fast float %2293, %2239
  %2295 = fmul fast float %2293, %2243
  %2296 = fmul fast float %2294, 2.500000e-01
  %2297 = fmul fast float %2295, 2.500000e-01
  %2298 = fadd fast float %2296, 5.000000e-01
  %2299 = fadd fast float %2297, 5.000000e-01
  %2300 = fsub fast float %2264, %2262
  %2301 = fptoui float %2300 to i32
  %2302 = add i32 %2301, 320
  %2303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %2302)  ; CBufferLoadLegacy(handle,regIndex)
  %2304 = extractvalue %dx.types.CBufRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.CBufRet.f32 %2303, 1
  %2306 = fcmp fast une float %2289, %2264
  %2307 = fsub fast float %2239, %2304
  %2308 = fsub fast float %2243, %2305
  %2309 = call float @dx.op.unary.f32(i32 6, float %2307)  ; FAbs(value)
  %2310 = call float @dx.op.unary.f32(i32 6, float %2308)  ; FAbs(value)
  %2311 = fmul fast float %2309, %2293
  %2312 = fmul fast float %2310, %2293
  %2313 = fcmp fast olt float %2311, 1.000000e+00
  %2314 = fcmp fast olt float %2312, 1.000000e+00
  %2315 = and i1 %2313, %2314
  %2316 = or i1 %2306, %2315
  br i1 %2316, label %2317, label %2614, !dx.controlflow.hints !112

; <label>:2317                                    ; preds = %2255
  %2318 = fmul fast float %2295, 5.000000e-01
  %2319 = fmul fast float %2294, 5.000000e-01
  %2320 = fadd fast float %2318, 5.000000e-01
  %2321 = fadd fast float %2319, 5.000000e-01
  %2322 = sitofp i32 %2261 to float
  %2323 = fsub fast float %2289, %2322
  %2324 = call float @dx.op.unary.f32(i32 27, float %2323)  ; Round_ni(value)
  %2325 = call float @dx.op.unary.f32(i32 22, float %2289)  ; Frc(value)
  %2326 = call float @dx.op.unary.f32(i32 22, float %2321)  ; Frc(value)
  %2327 = call float @dx.op.unary.f32(i32 22, float %2320)  ; Frc(value)
  %2328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %35, float %2326, float %2327, float %2324, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2329 = extractvalue %dx.types.ResRet.f32 %2328, 0
  %2330 = extractvalue %dx.types.ResRet.f32 %2328, 1
  %2331 = extractvalue %dx.types.ResRet.f32 %2328, 2
  %2332 = extractvalue %dx.types.ResRet.f32 %2328, 3
  %2333 = fcmp fast ogt float %2325, 0.000000e+00
  br i1 %2333, label %2334, label %2355, !dx.controlflow.hints !113

; <label>:2334                                    ; preds = %2317
  %2335 = fadd fast float %2324, 1.000000e+00
  %2336 = call float @dx.op.unary.f32(i32 22, float %2298)  ; Frc(value)
  %2337 = call float @dx.op.unary.f32(i32 22, float %2299)  ; Frc(value)
  %2338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %35, float %2336, float %2337, float %2335, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = extractvalue %dx.types.ResRet.f32 %2338, 1
  %2341 = extractvalue %dx.types.ResRet.f32 %2338, 2
  %2342 = extractvalue %dx.types.ResRet.f32 %2338, 3
  %2343 = fsub fast float %2339, %2329
  %2344 = fsub fast float %2340, %2330
  %2345 = fsub fast float %2341, %2331
  %2346 = fsub fast float %2342, %2332
  %2347 = fmul fast float %2343, %2325
  %2348 = fmul fast float %2344, %2325
  %2349 = fmul fast float %2345, %2325
  %2350 = fmul fast float %2346, %2325
  %2351 = fadd fast float %2347, %2329
  %2352 = fadd fast float %2348, %2330
  %2353 = fadd fast float %2349, %2331
  %2354 = fadd fast float %2350, %2332
  br label %2355

; <label>:2355                                    ; preds = %2334, %2317
  %2356 = phi float [ %2351, %2334 ], [ %2329, %2317 ]
  %2357 = phi float [ %2352, %2334 ], [ %2330, %2317 ]
  %2358 = phi float [ %2353, %2334 ], [ %2331, %2317 ]
  %2359 = phi float [ %2354, %2334 ], [ %2332, %2317 ]
  %2360 = fadd fast float %2356, -5.000000e-01
  %2361 = fadd fast float %2358, -5.000000e-01
  %2362 = fmul fast float %2360, 0xBFD5555560000000
  %2363 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2361, float %2362)  ; FMad(a,b,c)
  %2364 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2357, float 0.000000e+00)  ; FMad(a,b,c)
  %2365 = fadd fast float %2364, %2359
  %2366 = fmul fast float %2360, -7.500000e-01
  %2367 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2361, float %2366)  ; FMad(a,b,c)
  %2368 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2357, float 0.000000e+00)  ; FMad(a,b,c)
  %2369 = fadd fast float %2368, %2359
  %2370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.f32 %2370, 0
  %2372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.CBufRet.f32 %2372, 1
  %2375 = extractvalue %dx.types.CBufRet.f32 %2372, 2
  %2376 = extractvalue %dx.types.CBufRet.f32 %2372, 3
  %2377 = fsub fast float %2373, %2363
  %2378 = fsub fast float %2374, %2365
  %2379 = fsub fast float %2375, %2367
  %2380 = fsub fast float %2376, %2369
  %2381 = fmul fast float %2377, %2371
  %2382 = fmul fast float %2378, %2371
  %2383 = fmul fast float %2379, %2371
  %2384 = fmul fast float %2380, %2371
  %2385 = fadd fast float %2381, %2363
  %2386 = fadd fast float %2382, %2365
  %2387 = fadd fast float %2383, %2367
  %2388 = fadd fast float %2384, %2369
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = and i32 %2390, 536870911
  %2392 = uitofp i32 %2391 to float
  %2393 = fmul fast float %2392, %2239
  %2394 = fmul fast float %2392, %2243
  %2395 = fptoui float %2393 to i32
  %2396 = fptoui float %2394 to i32
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = and i32 %2398, 31
  %2400 = lshr i32 %2395, %2399
  %2401 = lshr i32 %2396, %2399
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = and i32 %2403, 31
  %2405 = shl i32 1, %2404
  %2406 = call i32 @dx.op.binary.i32(i32 40, i32 %2405, i32 4)  ; UMin(a,b)
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = extractvalue %dx.types.ResRet.i32 %2407, 1
  %2410 = icmp eq i32 %2406, 0
  br i1 %2410, label %2452, label %2411

; <label>:2411                                    ; preds = %2355
  br label %2412

; <label>:2412                                    ; preds = %2440, %2411
  %2413 = phi i32 [ %2443, %2440 ], [ 0, %2411 ]
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = lshr i32 %2415, 16
  %2417 = and i32 %2416, 31
  %2418 = shl i32 %2401, %2417
  %2419 = add i32 %2418, %2400
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = and i32 %2421, 31
  %2423 = shl i32 %2419, %2422
  %2424 = add i32 %2423, %2413
  %2425 = shl i32 %2424, 2
  %2426 = add i32 %2425, 32
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2426, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = icmp slt i32 %2428, 0
  %2430 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2413
  %2431 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2413
  %2432 = bitcast float* %2430 to i32*
  %2433 = bitcast float* %2431 to i32*
  br i1 %2429, label %2434, label %2440, !dx.controlflow.hints !114

; <label>:2434                                    ; preds = %2412
  %2435 = and i32 %2428, 1073741823
  %2436 = add nuw nsw i32 %2435, 20
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = extractvalue %dx.types.ResRet.i32 %2437, 1
  br label %2440

; <label>:2440                                    ; preds = %2434, %2412
  %2441 = phi i32 [ %2438, %2434 ], [ %2408, %2412 ]
  %2442 = phi i32 [ %2439, %2434 ], [ %2409, %2412 ]
  store i32 %2441, i32* %2432, align 4
  store i32 %2442, i32* %2433, align 4
  %2443 = add nuw i32 %2413, 1
  %2444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.i32 %2444, 2
  %2446 = icmp eq i32 %2445, 0
  %2447 = icmp ugt i32 %2428, -1073741825
  %2448 = and i1 %2447, %2446
  %2449 = icmp ult i32 %2443, %2406
  %2450 = and i1 %2448, %2449
  br i1 %2450, label %2412, label %2451, !dx.controlflow.hints !115

; <label>:2451                                    ; preds = %2440
  br label %2452

; <label>:2452                                    ; preds = %2451, %2355
  %2453 = phi i32 [ 0, %2355 ], [ %2443, %2451 ]
  %2454 = extractvalue %dx.types.CBufRet.f32 %2217, 2
  %2455 = fptoui float %2454 to i32
  %2456 = icmp eq i32 %2455, 0
  br i1 %2456, label %2508, label %2457

; <label>:2457                                    ; preds = %2452
  br label %2458

; <label>:2458                                    ; preds = %2503, %2457
  %2459 = phi i32 [ %2504, %2503 ], [ %2453, %2457 ]
  %2460 = phi i32 [ %2505, %2503 ], [ 0, %2457 ]
  %2461 = lshr i32 %2460, 2
  %2462 = and i32 %2460, 3
  %2463 = add nuw nsw i32 %2461, 83
  %2464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 %2463)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.i32 %2464, 0
  %2466 = extractvalue %dx.types.CBufRet.i32 %2464, 1
  %2467 = extractvalue %dx.types.CBufRet.i32 %2464, 2
  %2468 = extractvalue %dx.types.CBufRet.i32 %2464, 3
  %2469 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 0
  store i32 %2465, i32* %2469, align 4
  %2470 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 1
  store i32 %2466, i32* %2470, align 4
  %2471 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 2
  store i32 %2467, i32* %2471, align 4
  %2472 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 3
  store i32 %2468, i32* %2472, align 4
  %2473 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i32 0, i32 %2462
  %2474 = load i32, i32* %2473, align 4, !tbaa !116, !noalias !118
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = lshr i32 %2476, 16
  %2478 = and i32 %2477, 31
  %2479 = shl i32 %2401, %2478
  %2480 = add i32 %2479, %2400
  %2481 = shl i32 %2480, 2
  %2482 = add i32 %2481, %2474
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = icmp eq i32 %2484, 0
  br i1 %2485, label %2503, label %2486, !dx.controlflow.hints !125

; <label>:2486                                    ; preds = %2458
  %2487 = icmp slt i32 %2484, 0
  %2488 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2459
  %2489 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2459
  %2490 = bitcast float* %2488 to i32*
  %2491 = bitcast float* %2489 to i32*
  br i1 %2487, label %2492, label %2499, !dx.controlflow.hints !126

; <label>:2492                                    ; preds = %2486
  %2493 = and i32 %2484, 1073741823
  %2494 = add i32 %2474, 20
  %2495 = add i32 %2494, %2493
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = extractvalue %dx.types.ResRet.i32 %2496, 1
  br label %2499

; <label>:2499                                    ; preds = %2492, %2486
  %2500 = phi i32 [ %2497, %2492 ], [ %2408, %2486 ]
  %2501 = phi i32 [ %2498, %2492 ], [ %2409, %2486 ]
  store i32 %2500, i32* %2490, align 4
  store i32 %2501, i32* %2491, align 4
  %2502 = add i32 %2459, 1
  br label %2503

; <label>:2503                                    ; preds = %2499, %2458
  %2504 = phi i32 [ %2459, %2458 ], [ %2502, %2499 ]
  %2505 = add nuw i32 %2460, 1
  %2506 = icmp eq i32 %2505, %2455
  br i1 %2506, label %2507, label %2458

; <label>:2507                                    ; preds = %2503
  br label %2508

; <label>:2508                                    ; preds = %2507, %2452
  %2509 = phi i32 [ %2453, %2452 ], [ %2504, %2507 ]
  %2510 = icmp eq i32 %2509, 1
  %2511 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 0
  %2512 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 0
  br i1 %2510, label %2513, label %2516, !dx.controlflow.hints !127

; <label>:2513                                    ; preds = %2508
  %2514 = load float, float* %2511, align 4
  %2515 = load float, float* %2512, align 4
  br label %2543

; <label>:2516                                    ; preds = %2508
  %2517 = load float, float* %2511, align 4
  %2518 = load float, float* %2512, align 4
  %2519 = fdiv fast float 1.000000e+00, %2518
  %2520 = fsub fast float %2517, %2519
  %2521 = icmp ugt i32 %2509, 1
  br i1 %2521, label %2522, label %2538

; <label>:2522                                    ; preds = %2516
  br label %2523

; <label>:2523                                    ; preds = %2523, %2522
  %2524 = phi float [ %2533, %2523 ], [ %2520, %2522 ]
  %2525 = phi float [ %2534, %2523 ], [ %2517, %2522 ]
  %2526 = phi i32 [ %2535, %2523 ], [ 1, %2522 ]
  %2527 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2526
  %2528 = load float, float* %2527, align 4
  %2529 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2526
  %2530 = load float, float* %2529, align 4
  %2531 = fdiv fast float 1.000000e+00, %2530
  %2532 = fsub fast float %2528, %2531
  %2533 = call float @dx.op.binary.f32(i32 36, float %2524, float %2532)  ; FMin(a,b)
  %2534 = call float @dx.op.binary.f32(i32 35, float %2525, float %2528)  ; FMax(a,b)
  %2535 = add nuw i32 %2526, 1
  %2536 = icmp eq i32 %2535, %2509
  br i1 %2536, label %2537, label %2523

; <label>:2537                                    ; preds = %2523
  br label %2538

; <label>:2538                                    ; preds = %2537, %2516
  %2539 = phi float [ %2520, %2516 ], [ %2533, %2537 ]
  %2540 = phi float [ %2517, %2516 ], [ %2534, %2537 ]
  %2541 = fsub fast float %2540, %2539
  %2542 = fdiv fast float 1.000000e+00, %2541
  br label %2543

; <label>:2543                                    ; preds = %2538, %2513
  %2544 = phi float [ %2514, %2513 ], [ %2540, %2538 ]
  %2545 = phi float [ %2515, %2513 ], [ %2542, %2538 ]
  %2546 = fadd fast float %2247, %2544
  %2547 = fmul fast float %2546, %2545
  %2548 = call float @dx.op.unary.f32(i32 7, float %2547)  ; Saturate(value)
  %2549 = fmul fast float %2548, 2.000000e+00
  %2550 = fsub fast float 1.000000e+00, %2549
  %2551 = fmul fast float %2385, %2385
  %2552 = fsub fast float %2386, %2551
  %2553 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2552)  ; FMax(a,b)
  %2554 = fdiv fast float 1.000000e+00, %2553
  %2555 = fmul fast float %2386, %2385
  %2556 = fsub fast float %2387, %2555
  %2557 = fsub fast float %2550, %2385
  %2558 = fmul fast float %2550, %2550
  %2559 = fsub fast float %2558, %2386
  %2560 = fmul fast float %2554, %2556
  %2561 = fmul fast float %2560, %2557
  %2562 = fsub fast float %2559, %2561
  %2563 = fmul fast float %2386, %2386
  %2564 = fsub fast float %2388, %2563
  %2565 = fmul fast float %2556, %2556
  %2566 = fmul fast float %2565, %2554
  %2567 = fsub fast float %2564, %2566
  %2568 = fdiv fast float %2562, %2567
  %2569 = fmul fast float %2568, %2556
  %2570 = fsub fast float %2557, %2569
  %2571 = fmul fast float %2570, %2554
  %2572 = fmul fast float %2571, %2385
  %2573 = fsub fast float 1.000000e+00, %2572
  %2574 = fmul fast float %2568, %2386
  %2575 = fsub fast float %2573, %2574
  %2576 = fmul fast float %2571, %2571
  %2577 = fmul fast float %2568, 4.000000e+00
  %2578 = fmul fast float %2577, %2575
  %2579 = fsub fast float %2576, %2578
  %2580 = call float @dx.op.unary.f32(i32 24, float %2579)  ; Sqrt(value)
  %2581 = fcmp fast oge float %2571, 0.000000e+00
  %2582 = fsub fast float -0.000000e+00, %2580
  %2583 = select i1 %2581, float %2582, float %2580
  %2584 = fsub fast float %2583, %2571
  %2585 = fdiv fast float %2584, %2568
  %2586 = fdiv fast float %2575, %2584
  %2587 = fmul fast float %2585, 5.000000e-01
  %2588 = fmul fast float %2586, 2.000000e+00
  %2589 = select i1 %2581, float %2587, float %2588
  %2590 = select i1 %2581, float %2588, float %2587
  %2591 = call float @dx.op.binary.f32(i32 35, float %2589, float %2590)  ; FMax(a,b)
  %2592 = call float @dx.op.binary.f32(i32 36, float %2589, float %2590)  ; FMin(a,b)
  %2593 = fcmp fast ogt float %2550, %2591
  %2594 = fsub fast float %2550, %2592
  %2595 = fsub fast float %2550, %2591
  %2596 = fsub fast float %2591, %2592
  %2597 = select i1 %2593, float %2595, float %2596
  %2598 = fmul float %2594, %2597
  %2599 = select i1 %2593, float %2592, float %2550
  %2600 = fcmp fast ogt float %2550, %2592
  %2601 = fmul fast float %2599, %2591
  %2602 = fadd fast float %2599, %2591
  %2603 = fmul fast float %2602, %2385
  %2604 = fadd fast float %2601, %2386
  %2605 = fsub fast float %2604, %2603
  %2606 = fdiv fast float %2605, %2598
  %2607 = select i1 %2600, float %2606, float 0.000000e+00
  %2608 = fsub fast float 1.000000e+00, %2607
  %2609 = select i1 %2593, float %2608, float %2607
  %2610 = call float @dx.op.unary.f32(i32 7, float %2609)  ; Saturate(value)
  %2611 = extractvalue %dx.types.CBufRet.f32 %2370, 3
  %2612 = fmul fast float %2611, %2610
  %2613 = fsub fast float 1.000000e+00, %2612
  br label %2614

; <label>:2614                                    ; preds = %2543, %2255, %2220, %2216, %2211
  %2615 = phi float [ 1.000000e+00, %2211 ], [ %2613, %2543 ], [ 1.000000e+00, %2220 ], [ 1.000000e+00, %2255 ], [ 1.000000e+00, %2216 ]
  %2616 = fcmp fast ogt float %2212, 0.000000e+00
  br i1 %2616, label %2617, label %2623, !dx.controlflow.hints !128

; <label>:2617                                    ; preds = %2614
  %2618 = fadd fast float %2177, %2163
  %2619 = call float @dx.op.binary.f32(i32 35, float %2618, float 0.000000e+00)  ; FMax(a,b)
  %2620 = fadd fast float %2619, 0x3F10000000000000
  %2621 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %37, float %2170, float %2171, float undef, float undef, i32 0, i32 0, i32 undef, float %2620)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 0
  br label %2623

; <label>:2623                                    ; preds = %2617, %2614
  %2624 = phi float [ %2622, %2617 ], [ 1.000000e+00, %2614 ]
  %2625 = fsub fast float %2624, %2615
  %2626 = fmul fast float %2625, %2212
  %2627 = fadd fast float %2626, %2615
  %2628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2629 = extractvalue %dx.types.CBufRet.f32 %2628, 2
  %2630 = fcmp fast ogt float %2629, 0.000000e+00
  br i1 %2630, label %2631, label %2667, !dx.controlflow.hints !129

; <label>:2631                                    ; preds = %2623
  %2632 = fcmp fast ugt float %2629, 0.000000e+00
  br i1 %2632, label %2633, label %2664, !dx.controlflow.hints !130

; <label>:2633                                    ; preds = %2631
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.CBufRet.f32 %2634, 2
  %2638 = extractvalue %dx.types.CBufRet.f32 %2634, 3
  %2639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.f32 %2639, 0
  %2641 = extractvalue %dx.types.CBufRet.f32 %2639, 1
  %2642 = extractvalue %dx.types.CBufRet.f32 %2639, 2
  %2643 = extractvalue %dx.types.CBufRet.f32 %2639, 3
  %2644 = extractvalue %dx.types.CBufRet.f32 %2628, 0
  %2645 = extractvalue %dx.types.CBufRet.f32 %2628, 1
  %2646 = fadd fast float %2110, %2132
  %2647 = fadd fast float %2111, %2133
  %2648 = fadd fast float %2112, %2134
  %2649 = fmul fast float %2646, %2635
  %2650 = call float @dx.op.tertiary.f32(i32 46, float %2636, float %2647, float %2649)  ; FMad(a,b,c)
  %2651 = call float @dx.op.tertiary.f32(i32 46, float %2637, float %2648, float %2650)  ; FMad(a,b,c)
  %2652 = fadd fast float %2651, %2638
  %2653 = fmul fast float %2646, %2640
  %2654 = call float @dx.op.tertiary.f32(i32 46, float %2641, float %2647, float %2653)  ; FMad(a,b,c)
  %2655 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %2648, float %2654)  ; FMad(a,b,c)
  %2656 = fadd fast float %2655, %2643
  %2657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %33, float %2652, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2658 = extractvalue %dx.types.ResRet.f32 %2657, 0
  %2659 = fmul fast float %2658, %2645
  %2660 = fadd fast float %2659, %2644
  %2661 = call float @dx.op.unary.f32(i32 7, float %2660)  ; Saturate(value)
  %2662 = fmul fast float %2661, %2629
  %2663 = fsub fast float 1.000000e+00, %2662
  br label %2664

; <label>:2664                                    ; preds = %2633, %2631
  %2665 = phi float [ %2663, %2633 ], [ 1.000000e+00, %2631 ]
  %2666 = fmul fast float %2665, %2627
  br label %2667

; <label>:2667                                    ; preds = %2664, %2623, %2117
  %2668 = phi float [ 1.000000e+00, %2117 ], [ %2666, %2664 ], [ %2627, %2623 ]
  %2669 = call float @dx.op.binary.f32(i32 36, float %2668, float %2668)  ; FMin(a,b)
  %2670 = call float @dx.op.binary.f32(i32 36, float %2668, float %2669)  ; FMin(a,b)
  %2671 = fcmp fast ogt float %2670, 0.000000e+00
  br i1 %2671, label %2672, label %2830, !dx.controlflow.hints !131

; <label>:2672                                    ; preds = %2667
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 0
  %2675 = extractvalue %dx.types.CBufRet.f32 %2673, 1
  %2676 = extractvalue %dx.types.CBufRet.f32 %2673, 2
  %2677 = extractvalue %dx.types.CBufRet.f32 %2673, 3
  %2678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2679 = extractvalue %dx.types.CBufRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.CBufRet.f32 %2678, 1
  %2681 = extractvalue %dx.types.CBufRet.f32 %2678, 2
  %2682 = extractvalue %dx.types.CBufRet.f32 %2678, 3
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 0
  %2685 = extractvalue %dx.types.CBufRet.f32 %2683, 1
  %2686 = extractvalue %dx.types.CBufRet.f32 %2683, 2
  %2687 = extractvalue %dx.types.CBufRet.f32 %2683, 3
  %2688 = fmul fast float %2674, %2132
  %2689 = call float @dx.op.tertiary.f32(i32 46, float %2133, float %2675, float %2688)  ; FMad(a,b,c)
  %2690 = call float @dx.op.tertiary.f32(i32 46, float %2134, float %2676, float %2689)  ; FMad(a,b,c)
  %2691 = fadd fast float %2690, %2677
  %2692 = fmul fast float %2679, %2132
  %2693 = call float @dx.op.tertiary.f32(i32 46, float %2133, float %2680, float %2692)  ; FMad(a,b,c)
  %2694 = call float @dx.op.tertiary.f32(i32 46, float %2134, float %2681, float %2693)  ; FMad(a,b,c)
  %2695 = fadd fast float %2694, %2682
  %2696 = fmul fast float %2684, %2132
  %2697 = call float @dx.op.tertiary.f32(i32 46, float %2133, float %2685, float %2696)  ; FMad(a,b,c)
  %2698 = call float @dx.op.tertiary.f32(i32 46, float %2134, float %2686, float %2697)  ; FMad(a,b,c)
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 0
  %2701 = extractvalue %dx.types.CBufRet.f32 %2699, 1
  %2702 = extractvalue %dx.types.CBufRet.f32 %2699, 3
  %2703 = fmul fast float %2702, %2691
  %2704 = fmul fast float %2702, %2695
  %2705 = fadd fast float %2703, %2700
  %2706 = fadd fast float %2704, %2701
  %2707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.CBufRet.f32 %2707, 1
  %2710 = fsub fast float %2705, %2708
  %2711 = fsub fast float %2706, %2709
  %2712 = fcmp fast olt float %2710, 0.000000e+00
  %2713 = fcmp fast olt float %2711, 0.000000e+00
  %2714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2715 = extractvalue %dx.types.CBufRet.f32 %2714, 0
  %2716 = extractvalue %dx.types.CBufRet.f32 %2714, 1
  %2717 = extractvalue %dx.types.CBufRet.f32 %2714, 2
  %2718 = extractvalue %dx.types.CBufRet.f32 %2714, 3
  %2719 = select i1 %2712, float %2715, float %2717
  %2720 = select i1 %2713, float %2716, float %2718
  %2721 = fmul fast float %2719, %2710
  %2722 = fmul fast float %2720, %2711
  %2723 = call float @dx.op.unary.f32(i32 6, float %2721)  ; FAbs(value)
  %2724 = call float @dx.op.unary.f32(i32 6, float %2722)  ; FAbs(value)
  %2725 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2726 = call float @dx.op.binary.f32(i32 35, float %2723, float %2724)  ; FMax(a,b)
  %2727 = fsub fast float %2725, %2726
  %2728 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2729 = fcmp fast ogt float %2728, 0.000000e+00
  br i1 %2729, label %2730, label %2771, !dx.controlflow.hints !132

; <label>:2730                                    ; preds = %2672
  %2731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %36, float %2705, float %2706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 1
  %2733 = fcmp fast ogt float %2732, 0.000000e+00
  br i1 %2733, label %2734, label %2767, !dx.controlflow.hints !133

; <label>:2734                                    ; preds = %2730
  %2735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %36, float %2705, float %2706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.ResRet.f32 %2735, 1
  %2738 = extractvalue %dx.types.ResRet.f32 %2735, 2
  %2739 = extractvalue %dx.types.ResRet.f32 %2735, 3
  %2740 = fsub fast float 1.000000e+00, %2687
  %2741 = fsub fast float %2740, %2698
  %2742 = fmul fast float %2741, 0x400921FB60000000
  %2743 = fadd fast float %2742, 0x3FF921FB60000000
  %2744 = call float @dx.op.unary.f32(i32 13, float %2743)  ; Sin(value)
  %2745 = fadd fast float %2744, -1.000000e+00
  %2746 = fmul fast float %2745, 0x3FD45F3060000000
  %2747 = fmul fast float %2741, 0x401921FB60000000
  %2748 = fadd fast float %2747, 0x400921FB60000000
  %2749 = call float @dx.op.unary.f32(i32 13, float %2748)  ; Sin(value)
  %2750 = fadd fast float %2749, 0x3E7777A5C0000000
  %2751 = fmul fast float %2750, 0x3FC45F3060000000
  %2752 = fmul fast float %2741, 0x4022D97C80000000
  %2753 = fadd fast float %2752, 0x4012D97C80000000
  %2754 = call float @dx.op.unary.f32(i32 13, float %2753)  ; Sin(value)
  %2755 = fadd fast float %2754, 1.000000e+00
  %2756 = fmul fast float %2755, 0x3FBB2995E0000000
  %2757 = fmul fast float %2741, 0x402921FB60000000
  %2758 = fadd fast float %2757, 0x401921FB60000000
  %2759 = call float @dx.op.unary.f32(i32 13, float %2758)  ; Sin(value)
  %2760 = fadd fast float %2759, 0xBE8777A5C0000000
  %2761 = fmul fast float %2760, 0x3FB45F3060000000
  %2762 = call float @dx.op.dot4.f32(i32 56, float %2736, float %2737, float %2738, float %2739, float %2746, float %2751, float %2756, float %2761)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2763 = fmul fast float %2762, 0xBFF7154760000000
  %2764 = call float @dx.op.unary.f32(i32 21, float %2763)  ; Exp(value)
  %2765 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2766 = fadd float %2765, -1.000000e+00
  br label %2767

; <label>:2767                                    ; preds = %2734, %2730
  %2768 = phi float [ %2766, %2734 ], [ 0.000000e+00, %2730 ]
  %2769 = fmul fast float %2768, %2728
  %2770 = fadd fast float %2769, 1.000000e+00
  br label %2771

; <label>:2771                                    ; preds = %2767, %2672
  %2772 = phi float [ %2770, %2767 ], [ 1.000000e+00, %2672 ]
  %2773 = fmul fast float %2772, %2668
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2776 = fsub fast float -0.000000e+00, %190
  %2777 = fsub fast float -0.000000e+00, %191
  %2778 = fsub fast float -0.000000e+00, %2113
  %2779 = fsub fast float %2778, %2112
  %2780 = fadd fast float %2779, %2775
  %2781 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2776, float %2777, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %2782 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2783 = fdiv fast float 1.000000e+00, %2782
  %2784 = fmul fast float %2783, %2781
  %2785 = fmul fast float %2120, %2784
  %2786 = fmul fast float %2121, %2784
  %2787 = fadd fast float %2785, %190
  %2788 = fadd fast float %2786, %191
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2792 = fsub fast float %2787, %2790
  %2793 = fsub fast float %2788, %2791
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2797 = fmul fast float %2792, %2795
  %2798 = fmul fast float %2793, %2796
  %2799 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.i32 %2799, 3
  %2801 = icmp eq i32 %2800, 0
  br i1 %2801, label %2807, label %2802, !dx.controlflow.hints !134

; <label>:2802                                    ; preds = %2771
  %2803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %2797, float %2798, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2804 = extractvalue %dx.types.ResRet.f32 %2803, 0
  %2805 = extractvalue %dx.types.ResRet.f32 %2803, 1
  %2806 = extractvalue %dx.types.ResRet.f32 %2803, 2
  br label %2812

; <label>:2807                                    ; preds = %2771
  %2808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %36, float %2797, float %2798, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2809 = extractvalue %dx.types.ResRet.f32 %2808, 0
  %2810 = extractvalue %dx.types.ResRet.f32 %2808, 1
  %2811 = extractvalue %dx.types.ResRet.f32 %2808, 2
  br label %2812

; <label>:2812                                    ; preds = %2807, %2802
  %2813 = phi float [ %2804, %2802 ], [ %2809, %2807 ]
  %2814 = phi float [ %2805, %2802 ], [ %2810, %2807 ]
  %2815 = phi float [ %2806, %2802 ], [ %2811, %2807 ]
  %2816 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2817 = fmul fast float %2816, %2813
  %2818 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2819 = fsub fast float %2784, %2818
  %2820 = fsub fast float %2819, %2817
  %2821 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2820)  ; FMax(a,b)
  %2822 = fmul fast float %2821, %2814
  %2823 = call float @dx.op.binary.f32(i32 36, float %2815, float %2822)  ; FMin(a,b)
  %2824 = fmul fast float %2823, 0xBFF7154760000000
  %2825 = call float @dx.op.unary.f32(i32 21, float %2824)  ; Exp(value)
  %2826 = fadd fast float %2825, -1.000000e+00
  %2827 = fmul fast float %2826, %2108
  %2828 = fadd fast float %2827, 1.000000e+00
  %2829 = fmul fast float %2773, %2828
  br label %2830

; <label>:2830                                    ; preds = %2812, %2667
  %2831 = phi float [ %2829, %2812 ], [ %2668, %2667 ]
  %2832 = call float @dx.op.binary.f32(i32 36, float %2831, float %2831)  ; FMin(a,b)
  %2833 = call float @dx.op.binary.f32(i32 36, float %2831, float %2832)  ; FMin(a,b)
  %2834 = fcmp fast ogt float %2833, 0.000000e+00
  br i1 %2834, label %2835, label %2859, !dx.controlflow.hints !135

; <label>:2835                                    ; preds = %2830
  %2836 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2121, float %2122, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %2837 = fcmp fast ogt float %2102, 0.000000e+00
  %2838 = select i1 %2837, float 1.000000e+00, float -1.000000e+00
  %2839 = fmul fast float %118, 7.812500e-03
  %2840 = fmul fast float %118, 3.125000e-02
  %2841 = fadd fast float %2840, -3.125000e-02
  %2842 = fmul fast float %2838, 5.000000e-01
  %2843 = fmul fast float %2842, %2836
  %2844 = fmul fast float %2838, %2102
  %2845 = fadd fast float %2839, 4.921875e-01
  %2846 = fadd fast float %2845, %2843
  %2847 = fadd fast float %2839, 0x3FB25F3060000000
  %2848 = fadd fast float %2841, %2844
  %2849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %36, float %2846, float %2847, float %2848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2850 = extractvalue %dx.types.ResRet.f32 %2849, 0
  %2851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2852 = extractvalue %dx.types.CBufRet.f32 %2851, 0
  %2853 = fmul fast float %2831, 0x400921FB60000000
  %2854 = fmul fast float %2853, %2850
  %2855 = fmul fast float %2854, %2852
  %2856 = fmul fast float %2855, %2124
  %2857 = fmul fast float %2855, %2125
  %2858 = fmul fast float %2855, %2126
  br label %2859

; <label>:2859                                    ; preds = %2835, %2830, %2097
  %2860 = phi float [ %2856, %2835 ], [ 0.000000e+00, %2097 ], [ 0.000000e+00, %2830 ]
  %2861 = phi float [ %2857, %2835 ], [ 0.000000e+00, %2097 ], [ 0.000000e+00, %2830 ]
  %2862 = phi float [ %2858, %2835 ], [ 0.000000e+00, %2097 ], [ 0.000000e+00, %2830 ]
  %2863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %34, float %139, float %140, float %141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2864 = extractvalue %dx.types.ResRet.f32 %2863, 0
  %2865 = extractvalue %dx.types.ResRet.f32 %2863, 1
  %2866 = extractvalue %dx.types.ResRet.f32 %2863, 2
  %2867 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2864)  ; IsNaN(value)
  %2868 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2865)  ; IsNaN(value)
  %2869 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2866)  ; IsNaN(value)
  %2870 = or i1 %2867, %2868
  %2871 = or i1 %2870, %2869
  %2872 = select i1 %2871, float 0.000000e+00, float %2864
  %2873 = select i1 %2871, float 0.000000e+00, float %2865
  %2874 = select i1 %2871, float 0.000000e+00, float %2866
  %2875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2876 = extractvalue %dx.types.CBufRet.f32 %2875, 1
  %2877 = fmul fast float %2872, %2876
  %2878 = fmul fast float %2873, %2876
  %2879 = fmul fast float %2874, %2876
  %2880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2881 = extractvalue %dx.types.CBufRet.f32 %2880, 3
  %2882 = fmul fast float %2877, %2881
  %2883 = fmul fast float %2878, %2881
  %2884 = fmul fast float %2879, %2881
  %2885 = fadd fast float %2882, %2860
  %2886 = fadd fast float %2883, %2861
  %2887 = fadd fast float %2884, %2862
  br label %2888

; <label>:2888                                    ; preds = %2859, %2090
  %2889 = phi float [ %2099, %2859 ], [ %2091, %2090 ]
  %2890 = phi float [ %2100, %2859 ], [ %2092, %2090 ]
  %2891 = phi float [ %2101, %2859 ], [ %2093, %2090 ]
  %2892 = phi float [ %2885, %2859 ], [ 0.000000e+00, %2090 ]
  %2893 = phi float [ %2886, %2859 ], [ 0.000000e+00, %2090 ]
  %2894 = phi float [ %2887, %2859 ], [ 0.000000e+00, %2090 ]
  %2895 = fmul fast float %2889, %2095
  %2896 = fmul fast float %2890, %2095
  %2897 = fmul fast float %2891, %2095
  %2898 = fmul fast float %2895, %2892
  %2899 = fmul fast float %2896, %2893
  %2900 = fmul fast float %2897, %2894
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 0
  %2903 = fmul fast float %2898, %2902
  %2904 = fmul fast float %2899, %2902
  %2905 = fmul fast float %2900, %2902
  %2906 = fmul fast float %2904, 5.000000e-01
  %2907 = fadd fast float %2900, %2898
  %2908 = fmul fast float %2902, %2907
  %2909 = fmul fast float %2908, 2.500000e-01
  %2910 = fadd fast float %2909, %2906
  %2911 = call float @dx.op.unary.f32(i32 23, float %2910)  ; Log(value)
  %2912 = fmul fast float %2911, 0x3FE62E4300000000
  %2913 = fmul fast float %2912, %2912
  store float %209, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  %2914 = fmul fast float %2912, %209
  store float %2914, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  %2915 = fmul fast float %2913, %209
  store float %2915, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2916 = load float, float addrspace(3)* %216, align 4, !tbaa !56, !noalias !60
  %2917 = fadd fast float %2916, %209
  %2918 = load float, float addrspace(3)* %219, align 4, !tbaa !56, !noalias !60
  %2919 = fadd fast float %2918, %2912
  %2920 = load float, float addrspace(3)* %222, align 4, !tbaa !56, !noalias !60
  %2921 = fadd fast float %2920, %2913
  store float %2917, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  store float %2919, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  store float %2921, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2922 = load float, float addrspace(3)* %226, align 4, !tbaa !56, !noalias !60
  %2923 = fadd fast float %2922, %2917
  %2924 = load float, float addrspace(3)* %229, align 4, !tbaa !56, !noalias !60
  %2925 = fadd fast float %2924, %2919
  %2926 = load float, float addrspace(3)* %232, align 4, !tbaa !56, !noalias !60
  %2927 = fadd fast float %2926, %2921
  store float %2923, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  store float %2925, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  store float %2927, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2928 = load float, float addrspace(3)* %236, align 4, !tbaa !56, !noalias !60
  %2929 = fadd fast float %2928, %2923
  %2930 = load float, float addrspace(3)* %239, align 4, !tbaa !56, !noalias !60
  %2931 = fadd fast float %2930, %2925
  %2932 = fdiv fast float %2931, %2929
  br i1 %247, label %2933, label %2941, !dx.controlflow.hints !64

; <label>:2933                                    ; preds = %2888
  %2934 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %235
  %2935 = load float, float addrspace(3)* %2934, align 4, !tbaa !56, !noalias !60
  %2936 = fadd fast float %2935, %2927
  %2937 = fdiv fast float %2936, %2929
  %2938 = lshr i32 %68, 1
  %2939 = lshr i32 %69, 1
  %2940 = lshr i32 %70, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %2938, i32 %2939, i32 %2940, float %2932, float %2937, float %2932, float %2932, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2941

; <label>:2941                                    ; preds = %2933, %2888
  br i1 %79, label %2976, label %2942, !dx.controlflow.hints !65

; <label>:2942                                    ; preds = %2941
  %2943 = fadd fast float %118, 0x3FE3C6EF40000000
  %2944 = call float @dx.op.unary.f32(i32 22, float %2943)  ; Frc(value)
  %2945 = call float @dx.op.unary.f32(i32 23, float %2903)  ; Log(value)
  %2946 = fadd fast float %2945, -7.000000e+00
  %2947 = call float @dx.op.unary.f32(i32 21, float %2946)  ; Exp(value)
  %2948 = fmul fast float %2944, 2.000000e+00
  %2949 = fadd fast float %2948, -1.000000e+00
  %2950 = fmul fast float %2947, %2949
  %2951 = fcmp fast ogt float %2903, 0.000000e+00
  %2952 = select i1 %2951, float %2950, float 0.000000e+00
  %2953 = fadd fast float %2952, %2903
  %2954 = fadd fast float %118, 0x3FF3C6EF40000000
  %2955 = call float @dx.op.unary.f32(i32 22, float %2954)  ; Frc(value)
  %2956 = call float @dx.op.unary.f32(i32 23, float %2904)  ; Log(value)
  %2957 = fadd fast float %2956, -7.000000e+00
  %2958 = call float @dx.op.unary.f32(i32 21, float %2957)  ; Exp(value)
  %2959 = fmul fast float %2955, 2.000000e+00
  %2960 = fadd fast float %2959, -1.000000e+00
  %2961 = fmul fast float %2958, %2960
  %2962 = fcmp fast ogt float %2904, 0.000000e+00
  %2963 = select i1 %2962, float %2961, float 0.000000e+00
  %2964 = fadd fast float %2963, %2904
  %2965 = fadd fast float %118, 0x3FFDAA66E0000000
  %2966 = call float @dx.op.unary.f32(i32 22, float %2965)  ; Frc(value)
  %2967 = call float @dx.op.unary.f32(i32 23, float %2905)  ; Log(value)
  %2968 = fadd fast float %2967, -6.000000e+00
  %2969 = call float @dx.op.unary.f32(i32 21, float %2968)  ; Exp(value)
  %2970 = fmul fast float %2966, 2.000000e+00
  %2971 = fadd fast float %2970, -1.000000e+00
  %2972 = fmul fast float %2969, %2971
  %2973 = fcmp fast ogt float %2905, 0.000000e+00
  %2974 = select i1 %2973, float %2972, float 0.000000e+00
  %2975 = fadd fast float %2974, %2905
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %68, i32 %69, i32 %70, float %2953, float %2964, float %2975, float %2953, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2976

; <label>:2976                                    ; preds = %2942, %2941
  %2977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2978 = extractvalue %dx.types.CBufRet.f32 %2977, 0
  %2979 = fmul fast float %2978, %2095
  %2980 = fmul fast float %2979, 5.000000e-01
  %2981 = fadd fast float %2095, %2095
  %2982 = fmul fast float %2978, %2981
  %2983 = fmul fast float %2982, 2.500000e-01
  %2984 = fadd fast float %2983, %2980
  %2985 = fmul fast float %2984, %2984
  store float %209, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  %2986 = fmul fast float %2984, %209
  store float %2986, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  %2987 = fmul fast float %2985, %209
  store float %2987, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2988 = load float, float addrspace(3)* %216, align 4, !tbaa !56, !noalias !60
  %2989 = fadd fast float %2988, %209
  %2990 = load float, float addrspace(3)* %219, align 4, !tbaa !56, !noalias !60
  %2991 = fadd fast float %2984, %2990
  %2992 = load float, float addrspace(3)* %222, align 4, !tbaa !56, !noalias !60
  %2993 = fadd fast float %2985, %2992
  store float %2989, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  store float %2991, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  store float %2993, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2994 = load float, float addrspace(3)* %226, align 4, !tbaa !56, !noalias !60
  %2995 = fadd fast float %2994, %2989
  %2996 = load float, float addrspace(3)* %229, align 4, !tbaa !56, !noalias !60
  %2997 = fadd fast float %2996, %2991
  %2998 = load float, float addrspace(3)* %232, align 4, !tbaa !56, !noalias !60
  %2999 = fadd fast float %2998, %2993
  store float %2995, float addrspace(3)* %210, align 4, !tbaa !56, !noalias !60
  store float %2997, float addrspace(3)* %212, align 4, !tbaa !56, !noalias !60
  store float %2999, float addrspace(3)* %214, align 4, !tbaa !56, !noalias !60
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3000 = load float, float addrspace(3)* %236, align 4, !tbaa !56, !noalias !60
  %3001 = fadd fast float %3000, %2995
  %3002 = load float, float addrspace(3)* %239, align 4, !tbaa !56, !noalias !60
  %3003 = fadd fast float %3002, %2997
  %3004 = fdiv fast float %3003, %3001
  br i1 %247, label %3005, label %3013, !dx.controlflow.hints !66

; <label>:3005                                    ; preds = %2976
  %3006 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %235
  %3007 = load float, float addrspace(3)* %3006, align 4, !tbaa !56, !noalias !60
  %3008 = fadd fast float %3007, %2999
  %3009 = fdiv fast float %3008, %3001
  %3010 = lshr i32 %68, 1
  %3011 = lshr i32 %69, 1
  %3012 = lshr i32 %70, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3010, i32 %3011, i32 %3012, float %3004, float %3009, float %3004, float %3004, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3013

; <label>:3013                                    ; preds = %3005, %2976
  br i1 %79, label %3042, label %3014, !dx.controlflow.hints !67

; <label>:3014                                    ; preds = %3013
  %3015 = fadd fast float %118, 0x3FE3C6EF40000000
  %3016 = call float @dx.op.unary.f32(i32 22, float %3015)  ; Frc(value)
  %3017 = call float @dx.op.unary.f32(i32 23, float %2979)  ; Log(value)
  %3018 = fadd fast float %3017, -7.000000e+00
  %3019 = call float @dx.op.unary.f32(i32 21, float %3018)  ; Exp(value)
  %3020 = fmul fast float %3016, 2.000000e+00
  %3021 = fadd fast float %3020, -1.000000e+00
  %3022 = fmul fast float %3019, %3021
  %3023 = fcmp fast ogt float %2979, 0.000000e+00
  %3024 = select i1 %3023, float %3022, float 0.000000e+00
  %3025 = fadd fast float %3024, %2979
  %3026 = fadd fast float %118, 0x3FF3C6EF40000000
  %3027 = call float @dx.op.unary.f32(i32 22, float %3026)  ; Frc(value)
  %3028 = fmul fast float %3027, 2.000000e+00
  %3029 = fadd fast float %3028, -1.000000e+00
  %3030 = fmul fast float %3019, %3029
  %3031 = select i1 %3023, float %3030, float 0.000000e+00
  %3032 = fadd fast float %3031, %2979
  %3033 = fadd fast float %118, 0x3FFDAA66E0000000
  %3034 = call float @dx.op.unary.f32(i32 22, float %3033)  ; Frc(value)
  %3035 = fadd fast float %3017, -6.000000e+00
  %3036 = call float @dx.op.unary.f32(i32 21, float %3035)  ; Exp(value)
  %3037 = fmul fast float %3034, 2.000000e+00
  %3038 = fadd fast float %3037, -1.000000e+00
  %3039 = fmul fast float %3036, %3038
  %3040 = select i1 %3023, float %3039, float 0.000000e+00
  %3041 = fadd fast float %3040, %2979
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %68, i32 %69, i32 %70, float %3025, float %3032, float %3041, float %3025, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3042

; <label>:3042                                    ; preds = %3014, %3013
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
!dx.entryPoints = !{!53}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !39, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !36, !37}
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
!32 = !{i32 23, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !35}
!35 = !{i32 1, i32 80}
!36 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!37 = !{i32 27, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !38}
!38 = !{i32 1, i32 4}
!39 = !{!40, !41, !42, !43}
!40 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!41 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!42 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!43 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!47 = !{!48, !49, !50, !51, !52}
!48 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!49 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!53 = !{void ()* @cs_volumetric_forwardplus_scatter_local, !"cs_volumetric_forwardplus_scatter_local", null, !4, !54}
!54 = !{i32 0, i64 272, i32 4, !55}
!55 = !{i32 4, i32 4, i32 4}
!56 = !{!57, !57, i64 0}
!57 = !{!"float", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!62 = distinct !{!62, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!63 = distinct !{!63, !62, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
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
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !87}
!104 = distinct !{!104, !87}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = !{!117, !117, i64 0}
!117 = !{!"int", !58, i64 0}
!118 = !{!119, !121, !123, !61, !63}
!119 = distinct !{!119, !120, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!120 = distinct !{!120, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!121 = distinct !{!121, !122, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!122 = distinct !{!122, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!123 = distinct !{!123, !124, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!124 = distinct !{!124, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}

