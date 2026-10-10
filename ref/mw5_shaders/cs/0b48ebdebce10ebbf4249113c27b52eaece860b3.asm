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
; shader hash: 97cebb70f1f65cfa10f42daaeedaf1cf
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
;                                   texture     f32          1d     T21            t54     1
;                                   texture     f32          3d     T22             t5     1
;                                   texture    byte         r/o     T23            t13     1
;                                   texture  struct         r/o     T24            t14     1
;                                   texture    byte         r/o     T25            t15     1
;                                   texture  struct         r/o     T26            t29     1
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

define void @cs_volumetric_forwardplus_scatter_local_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %40 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %41 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %42 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %43 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %44 = alloca [3 x float], align 4
  %45 = alloca [3 x float], align 4
  %46 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.i32 %46, 3
  %48 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.i32 %48, 1
  %50 = mul i32 %49, %47
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 1
  %53 = mul i32 %50, %52
  %54 = add i32 %53, %42
  %55 = shl i32 %54, 2
  %56 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.i32 %56, 0
  %58 = and i32 %57, 255
  %59 = lshr i32 %57, 8
  %60 = and i32 %59, 255
  %61 = lshr i32 %57, 16
  %62 = and i32 %61, 255
  %63 = shl nuw nsw i32 %58, 2
  %64 = shl nuw nsw i32 %60, 2
  %65 = shl nuw nsw i32 %62, 2
  %66 = add i32 %63, %39
  %67 = add i32 %64, %40
  %68 = add i32 %65, %41
  %69 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.i32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.i32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.i32 %69, 2
  %73 = icmp uge i32 %66, %70
  %74 = icmp uge i32 %67, %71
  %75 = icmp uge i32 %68, %72
  %76 = or i1 %73, %74
  %77 = or i1 %75, %76
  %78 = xor i1 %77, true
  %79 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.i32 %79, 3
  %81 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %67, i32 %80)  ; UMad(a,b,c)
  %82 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %66, i32 %81)  ; UMad(a,b,c)
  %83 = mul i32 %82, -63
  %84 = lshr i32 %83, 17
  %85 = xor i32 %84, %83
  %86 = mul i32 %85, -511
  %87 = mul i32 %85, -8176
  %88 = xor i32 %86, %87
  %89 = mul i32 %88, -7
  %90 = mul i32 %88, -7168
  %91 = xor i32 %89, %90
  %92 = lshr i32 %91, 15
  %93 = xor i32 %92, %89
  %94 = and i32 %93, 127
  %95 = mul i32 %94, 3
  %96 = add i32 0, %95
  %97 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %96
  %98 = load float, float* %97, align 4
  %99 = mul i32 %94, 3
  %100 = add i32 1, %99
  %101 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %100
  %102 = load float, float* %101, align 4
  %103 = mul i32 %94, 3
  %104 = add i32 2, %103
  %105 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %104
  %106 = load float, float* %105, align 4
  %107 = uitofp i32 %80 to float
  %108 = fmul fast float %107, 0x3FEA36A940000000
  %109 = fmul fast float %107, 0x3FE5793080000000
  %110 = fmul fast float %107, 0x3FE1972580000000
  %111 = fadd fast float %98, %108
  %112 = fadd fast float %102, %109
  %113 = fadd fast float %106, %110
  %114 = call float @dx.op.unary.f32(i32 22, float %111)  ; Frc(value)
  %115 = call float @dx.op.unary.f32(i32 22, float %112)  ; Frc(value)
  %116 = call float @dx.op.unary.f32(i32 22, float %113)  ; Frc(value)
  %117 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %31, i32 0, i32 %66, i32 %67, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fcmp fast ogt float %118, -1.000000e+00
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %122 = select i1 %119, float %121, float 1.000000e+00
  %123 = fadd fast float %118, 1.000000e+00
  %124 = fmul fast float %122, %123
  %125 = uitofp i32 %66 to float
  %126 = uitofp i32 %67 to float
  %127 = uitofp i32 %68 to float
  %128 = fadd fast float %125, -5.000000e-01
  %129 = fadd fast float %128, %114
  %130 = fadd fast float %126, -5.000000e-01
  %131 = fadd fast float %130, %115
  %132 = fadd fast float %127, -5.000000e-01
  %133 = fadd fast float %132, %116
  %134 = fadd fast float %129, 5.000000e-01
  %135 = fadd fast float %131, 5.000000e-01
  %136 = fadd fast float %133, 5.000000e-01
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %138, %134
  %142 = fmul fast float %139, %135
  %143 = fmul fast float %140, %136
  %144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.i32 %144, 0
  %146 = uitofp i32 %145 to float
  %147 = fmul fast float %146, %143
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = fmul fast float %147, %150
  %152 = call float @dx.op.unary.f32(i32 21, float %151)  ; Exp(value)
  %153 = fmul fast float %152, %149
  %154 = fsub fast float 4.000000e+00, %149
  %155 = fadd fast float %154, %153
  %156 = call float @dx.op.binary.f32(i32 36, float %155, float %124)  ; FMin(a,b)
  %157 = fmul fast float %141, 2.000000e+00
  %158 = fmul fast float %142, 2.000000e+00
  %159 = fsub fast float 1.000000e+00, %157
  %160 = fsub fast float 1.000000e+00, %158
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = fmul fast float %162, %159
  %166 = fmul fast float %163, %159
  %167 = fmul fast float %164, %159
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = fmul fast float %169, %160
  %173 = fmul fast float %170, %160
  %174 = fmul fast float %171, %160
  %175 = fadd fast float %172, %165
  %176 = fadd fast float %173, %166
  %177 = fadd fast float %174, %167
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = fadd fast float %175, %179
  %183 = fadd fast float %176, %180
  %184 = fadd fast float %177, %181
  %185 = fmul fast float %182, %156
  %186 = fmul fast float %183, %156
  %187 = fmul fast float %184, %156
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = fadd fast float %185, %189
  %193 = fadd fast float %186, %190
  %194 = fadd fast float %187, %191
  %195 = add i32 %68, 1
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %150, %196
  %198 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %199 = fmul fast float %150, %127
  %200 = call float @dx.op.unary.f32(i32 21, float %199)  ; Exp(value)
  %201 = fsub fast float %198, %200
  %202 = fmul fast float %149, %201
  %203 = call float @dx.op.dot3.f32(i32 55, float %185, float %186, float %187, float %185, float %186, float %187)  ; Dot3(ax,ay,az,bx,by,bz)
  %204 = call float @dx.op.unary.f32(i32 25, float %203)  ; Rsqrt(value)
  %205 = fmul fast float %204, %185
  %206 = fmul fast float %204, %186
  %207 = fmul fast float %204, %187
  %208 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %209 = fmul fast float %208, 0x3FE62E4300000000
  %210 = fmul fast float %209, %209
  %211 = select i1 %77, float 0.000000e+00, float 1.000000e+00
  %212 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %43
  store float %211, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  %213 = fmul fast float %209, %211
  %214 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %43
  store float %213, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  %215 = fmul fast float %210, %211
  %216 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %43
  store float %215, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = xor i32 %43, 4
  %218 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %217
  %219 = load float, float addrspace(3)* %218, align 4, !tbaa !54, !noalias !58
  %220 = fadd fast float %219, %211
  %221 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %217
  %222 = load float, float addrspace(3)* %221, align 4, !tbaa !54, !noalias !58
  %223 = fadd fast float %222, %209
  %224 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %217
  %225 = load float, float addrspace(3)* %224, align 4, !tbaa !54, !noalias !58
  %226 = fadd fast float %225, %210
  store float %220, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  store float %223, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  store float %226, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %227 = xor i32 %43, 16
  %228 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %227
  %229 = load float, float addrspace(3)* %228, align 4, !tbaa !54, !noalias !58
  %230 = fadd fast float %229, %220
  %231 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %227
  %232 = load float, float addrspace(3)* %231, align 4, !tbaa !54, !noalias !58
  %233 = fadd fast float %232, %223
  %234 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %227
  %235 = load float, float addrspace(3)* %234, align 4, !tbaa !54, !noalias !58
  %236 = fadd fast float %235, %226
  store float %230, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  store float %233, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  store float %236, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %237 = xor i32 %43, 1
  %238 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %237
  %239 = load float, float addrspace(3)* %238, align 4, !tbaa !54, !noalias !58
  %240 = fadd fast float %239, %230
  %241 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %237
  %242 = load float, float addrspace(3)* %241, align 4, !tbaa !54, !noalias !58
  %243 = fadd fast float %242, %233
  %244 = fdiv fast float %243, %240
  %245 = and i32 %66, 1
  %246 = and i32 %245, %67
  %247 = and i32 %246, %68
  %248 = icmp ne i32 %247, 0
  %249 = and i1 %248, %78
  br i1 %249, label %250, label %258, !dx.controlflow.hints !62

; <label>:250                                     ; preds = %0
  %251 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %237
  %252 = load float, float addrspace(3)* %251, align 4, !tbaa !54, !noalias !58
  %253 = fadd fast float %252, %236
  %254 = fdiv fast float %253, %240
  %255 = lshr i32 %66, 1
  %256 = lshr i32 %67, 1
  %257 = lshr i32 %68, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %255, i32 %256, i32 %257, float %244, float %254, float %244, float %244, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %258

; <label>:258                                     ; preds = %250, %0
  br i1 %77, label %260, label %259, !dx.controlflow.hints !63

; <label>:259                                     ; preds = %258
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %66, i32 %67, i32 %68, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %260

; <label>:260                                     ; preds = %259, %258
  store float %211, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  store float 0.000000e+00, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  store float 0.000000e+00, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %261 = load float, float addrspace(3)* %218, align 4, !tbaa !54, !noalias !58
  %262 = fadd fast float %261, %211
  %263 = load float, float addrspace(3)* %221, align 4, !tbaa !54, !noalias !58
  %264 = load float, float addrspace(3)* %224, align 4, !tbaa !54, !noalias !58
  store float %262, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  store float %263, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  store float %264, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %265 = load float, float addrspace(3)* %228, align 4, !tbaa !54, !noalias !58
  %266 = fadd fast float %265, %262
  %267 = load float, float addrspace(3)* %231, align 4, !tbaa !54, !noalias !58
  %268 = fadd fast float %267, %263
  %269 = load float, float addrspace(3)* %234, align 4, !tbaa !54, !noalias !58
  %270 = fadd fast float %269, %264
  store float %266, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  store float %268, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  store float %270, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %271 = load float, float addrspace(3)* %238, align 4, !tbaa !54, !noalias !58
  %272 = fadd fast float %271, %266
  %273 = load float, float addrspace(3)* %241, align 4, !tbaa !54, !noalias !58
  %274 = fadd fast float %273, %268
  %275 = fdiv fast float %274, %272
  br i1 %249, label %276, label %284, !dx.controlflow.hints !64

; <label>:276                                     ; preds = %260
  %277 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %237
  %278 = load float, float addrspace(3)* %277, align 4, !tbaa !54, !noalias !58
  %279 = fadd fast float %278, %270
  %280 = fdiv fast float %279, %272
  %281 = lshr i32 %66, 1
  %282 = lshr i32 %67, 1
  %283 = lshr i32 %68, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %281, i32 %282, i32 %283, float %275, float %280, float %275, float %275, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %284

; <label>:284                                     ; preds = %276, %260
  br i1 %77, label %286, label %285, !dx.controlflow.hints !65

; <label>:285                                     ; preds = %284
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %66, i32 %67, i32 %68, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %286

; <label>:286                                     ; preds = %285, %284
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %289 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %290 = fsub fast float %194, %288
  %291 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %290)  ; FMax(a,b)
  %292 = fmul fast float %291, 0x3FF7154760000000
  %293 = fmul fast float %292, %289
  %294 = call float @dx.op.unary.f32(i32 21, float %293)  ; Exp(value)
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %298 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %302 = fmul fast float %301, %294
  %303 = fmul fast float %302, %296
  %304 = fmul fast float %302, %297
  %305 = fmul fast float %302, %298
  %306 = fmul fast float %302, %300
  %307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.i32 %307, 2
  %309 = extractvalue %dx.types.CBufRet.i32 %307, 3
  %310 = call i32 @dx.op.tertiary.i32(i32 49, i32 %60, i32 %308, i32 %58)  ; UMad(a,b,c)
  %311 = call i32 @dx.op.tertiary.i32(i32 49, i32 %62, i32 %309, i32 %310)  ; UMad(a,b,c)
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %311, i32 0)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = fadd fast float %125, 1.000000e+00
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %317 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = fmul fast float %320, %133
  %322 = call float @dx.op.unary.f32(i32 21, float %321)  ; Exp(value)
  %323 = fmul fast float %322, %319
  %324 = fsub fast float 4.000000e+00, %319
  %325 = fadd fast float %324, %323
  %326 = fmul fast float %314, 2.000000e+00
  %327 = fmul fast float %326, %316
  %328 = fmul fast float %126, 2.000000e+00
  %329 = fmul fast float %328, %317
  %330 = fsub fast float 1.000000e+00, %327
  %331 = fsub fast float 1.000000e+00, %329
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %334 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %335 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %336 = fmul fast float %333, %330
  %337 = fmul fast float %334, %330
  %338 = fmul fast float %335, %330
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %343 = fmul fast float %340, %331
  %344 = fmul fast float %341, %331
  %345 = fmul fast float %342, %331
  %346 = fadd fast float %343, %336
  %347 = fadd fast float %344, %337
  %348 = fadd fast float %345, %338
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = fadd fast float %346, %350
  %354 = fadd fast float %347, %351
  %355 = fadd fast float %348, %352
  %356 = fadd fast float %126, 1.000000e+00
  %357 = fmul fast float %125, 2.000000e+00
  %358 = fmul fast float %357, %316
  %359 = fmul fast float %356, 2.000000e+00
  %360 = fmul fast float %359, %317
  %361 = fsub fast float 1.000000e+00, %358
  %362 = fsub fast float 1.000000e+00, %360
  %363 = fmul fast float %333, %361
  %364 = fmul fast float %334, %361
  %365 = fmul fast float %335, %361
  %366 = fmul fast float %340, %362
  %367 = fmul fast float %341, %362
  %368 = fmul fast float %342, %362
  %369 = fadd fast float %366, %363
  %370 = fadd fast float %367, %364
  %371 = fadd fast float %368, %365
  %372 = fadd fast float %369, %350
  %373 = fadd fast float %370, %351
  %374 = fadd fast float %371, %352
  %375 = fmul fast float %372, %325
  %376 = fmul fast float %373, %325
  %377 = fmul fast float %374, %325
  %378 = fadd fast float %372, %353
  %379 = fmul fast float %325, %378
  %380 = fadd fast float %373, %354
  %381 = fmul fast float %325, %380
  %382 = fadd fast float %374, %355
  %383 = fmul fast float %325, %382
  %384 = fmul fast float %379, 5.000000e-01
  %385 = fmul fast float %381, 5.000000e-01
  %386 = fmul fast float %383, 5.000000e-01
  %387 = fsub fast float %384, %375
  %388 = fsub fast float %385, %376
  %389 = fsub fast float %386, %377
  %390 = call float @dx.op.dot3.f32(i32 55, float %387, float %388, float %389, float %387, float %388, float %389)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = call float @dx.op.unary.f32(i32 25, float %390)  ; Rsqrt(value)
  %392 = fmul fast float %390, 2.000000e+00
  %393 = fmul fast float %392, %391
  %394 = call float @dx.op.binary.f32(i32 35, float %202, float %393)  ; FMax(a,b)
  %395 = and i32 %313, 8
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %613, label %397, !dx.controlflow.hints !66

; <label>:397                                     ; preds = %286
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = fsub fast float %192, %403
  %407 = fsub fast float %193, %404
  %408 = fsub fast float %194, %405
  %409 = fmul fast float %406, %399
  %410 = fmul fast float %407, %400
  %411 = fmul fast float %408, %401
  %412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.i32 %412, 3
  %414 = icmp eq i32 %413, 0
  %415 = fcmp fast oge float %411, 0.000000e+00
  %416 = fcmp fast ole float %411, 1.000000e+00
  br i1 %414, label %419, label %417, !dx.controlflow.hints !67

; <label>:417                                     ; preds = %397
  %418 = and i1 %415, %416
  br label %429

; <label>:419                                     ; preds = %397
  %420 = fcmp fast oge float %409, 0.000000e+00
  %421 = fcmp fast oge float %410, 0.000000e+00
  %422 = and i1 %420, %421
  %423 = and i1 %415, %422
  %424 = fcmp fast ole float %409, 1.000000e+00
  %425 = fcmp fast ole float %410, 1.000000e+00
  %426 = and i1 %424, %425
  %427 = and i1 %416, %426
  %428 = and i1 %423, %427
  br label %429

; <label>:429                                     ; preds = %419, %417
  %430 = phi i1 [ %418, %417 ], [ %428, %419 ]
  br i1 %430, label %431, label %606, !dx.controlflow.hints !68

; <label>:431                                     ; preds = %429
  %432 = fcmp fast oeq float %394, 0.000000e+00
  br i1 %432, label %447, label %433, !dx.controlflow.hints !69

; <label>:433                                     ; preds = %431
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 3
  %436 = fmul fast float %435, %394
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = extractvalue %dx.types.CBufRet.f32 %437, 1
  %440 = extractvalue %dx.types.CBufRet.f32 %437, 2
  %441 = fmul fast float %438, %436
  %442 = fmul fast float %439, %436
  %443 = fmul fast float %440, %436
  %444 = call float @dx.op.unary.f32(i32 23, float %441)  ; Log(value)
  %445 = call float @dx.op.unary.f32(i32 23, float %442)  ; Log(value)
  %446 = call float @dx.op.unary.f32(i32 23, float %443)  ; Log(value)
  br label %447

; <label>:447                                     ; preds = %433, %431
  %448 = phi float [ %444, %433 ], [ 0.000000e+00, %431 ]
  %449 = phi float [ %445, %433 ], [ 0.000000e+00, %431 ]
  %450 = phi float [ %446, %433 ], [ 0.000000e+00, %431 ]
  %451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.i32 %451, 0
  %453 = extractvalue %dx.types.CBufRet.i32 %451, 1
  %454 = uitofp i32 %452 to float
  %455 = uitofp i32 %453 to float
  %456 = fmul fast float %409, %454
  %457 = fmul fast float %410, %455
  %458 = fadd fast float %456, 5.000000e-01
  %459 = fadd fast float %457, 5.000000e-01
  %460 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %461 = call float @dx.op.unary.f32(i32 22, float %459)  ; Frc(value)
  %462 = call float @dx.op.unary.f32(i32 27, float %458)  ; Round_ni(value)
  %463 = call float @dx.op.unary.f32(i32 27, float %459)  ; Round_ni(value)
  %464 = fadd fast float %462, 1.000000e+00
  %465 = fadd fast float %463, 1.000000e+00
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = extractvalue %dx.types.CBufRet.f32 %466, 1
  %469 = fmul fast float %467, %464
  %470 = fmul fast float %468, %465
  %471 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %34, float %469, float %470, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = extractvalue %dx.types.ResRet.f32 %471, 3
  %476 = extractvalue %dx.types.CBufRet.i32 %451, 2
  %477 = extractvalue %dx.types.CBufRet.f32 %466, 2
  %478 = uitofp i32 %476 to float
  %479 = fadd fast float %478, -1.000000e+00
  %480 = fmul fast float %479, %472
  %481 = fmul fast float %479, %473
  %482 = fmul fast float %479, %474
  %483 = fmul fast float %479, %475
  %484 = fadd fast float %480, 5.000000e-01
  %485 = fadd fast float %481, 5.000000e-01
  %486 = fadd fast float %482, 5.000000e-01
  %487 = fadd fast float %483, 5.000000e-01
  %488 = fptoui float %484 to i32
  %489 = fptoui float %485 to i32
  %490 = fptoui float %486 to i32
  %491 = fptoui float %487 to i32
  %492 = uitofp i32 %488 to float
  %493 = uitofp i32 %489 to float
  %494 = uitofp i32 %490 to float
  %495 = uitofp i32 %491 to float
  %496 = fadd fast float %492, 5.000000e-01
  %497 = fadd fast float %493, 5.000000e-01
  %498 = fadd fast float %494, 5.000000e-01
  %499 = fadd fast float %495, 5.000000e-01
  %500 = fmul fast float %496, %477
  %501 = fmul fast float %497, %477
  %502 = fmul fast float %498, %477
  %503 = fmul fast float %499, %477
  %504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %500, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %501, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %502, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %35, float %503, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = fsub fast float %509, %511
  %513 = fmul fast float %512, %460
  %514 = fadd fast float %513, %511
  %515 = fsub fast float %507, %505
  %516 = fmul fast float %515, %460
  %517 = fadd fast float %516, %505
  %518 = fsub fast float %517, %514
  %519 = fmul fast float %518, %461
  %520 = fadd fast float %519, %514
  %521 = fcmp fast ogt float %520, 0.000000e+00
  br i1 %521, label %522, label %590, !dx.controlflow.hints !70

; <label>:522                                     ; preds = %447
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 0
  %525 = extractvalue %dx.types.CBufRet.f32 %523, 1
  %526 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 0
  %529 = extractvalue %dx.types.CBufRet.f32 %527, 1
  %530 = extractvalue %dx.types.CBufRet.f32 %527, 2
  %531 = fmul fast float %407, %399
  %532 = fmul fast float %408, %399
  %533 = fadd fast float %409, %528
  %534 = fadd fast float %531, %529
  %535 = fadd fast float %532, %530
  %536 = fmul fast float %533, %524
  %537 = fmul fast float %534, %524
  %538 = fmul fast float %535, %524
  %539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %32, float %536, float %537, float %538, float undef, i32 0, i32 0, i32 0, float %448)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = fmul fast float %533, %525
  %542 = fmul fast float %534, %525
  %543 = fmul fast float %535, %525
  %544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %32, float %541, float %542, float %543, float undef, i32 0, i32 0, i32 0, float %449)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 1
  %546 = fmul fast float %533, %526
  %547 = fmul fast float %534, %526
  %548 = fmul fast float %535, %526
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %32, float %546, float %547, float %548, float undef, i32 0, i32 0, i32 0, float %450)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 2
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %553 = fmul fast float %545, %540
  %554 = fmul fast float %553, %550
  %555 = call float @dx.op.unary.f32(i32 23, float %554)  ; Log(value)
  %556 = fmul fast float %555, %552
  %557 = call float @dx.op.unary.f32(i32 21, float %556)  ; Exp(value)
  %558 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %559 = fmul fast float %520, %520
  %560 = fmul fast float %559, %557
  %561 = fmul fast float %560, %558
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %564 = fmul fast float %563, %561
  %565 = bitcast float %564 to i32
  %566 = sitofp i32 %565 to float
  %567 = fptosi float %566 to i32
  %568 = bitcast i32 %567 to float
  %569 = fsub fast float 1.000000e+00, %561
  %570 = bitcast float %569 to i32
  %571 = sitofp i32 %570 to float
  %572 = fptosi float %571 to i32
  %573 = bitcast i32 %572 to float
  %574 = fadd fast float %568, %573
  %575 = bitcast float %574 to i32
  %576 = sub nsw i32 2129859010, %575
  %577 = bitcast i32 %576 to float
  %578 = fmul fast float %577, %568
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %583 = fmul fast float %578, %582
  %584 = fadd fast float %583, 1.000000e+00
  %585 = bitcast float %584 to i32
  %586 = sub nsw i32 2129859010, %585
  %587 = bitcast i32 %586 to float
  %588 = fmul fast float %578, %580
  %589 = fmul fast float %588, %587
  br label %590

; <label>:590                                     ; preds = %522, %447
  %591 = phi float [ %589, %522 ], [ %520, %447 ]
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.f32 %592, 1
  %595 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %598 = fmul fast float %593, %591
  %599 = fmul fast float %594, %591
  %600 = fmul fast float %595, %591
  %601 = fadd fast float %598, %303
  %602 = fadd fast float %599, %304
  %603 = fadd fast float %600, %305
  %604 = fmul fast float %597, %591
  %605 = fadd fast float %604, %306
  br label %606

; <label>:606                                     ; preds = %590, %429
  %607 = phi float [ %601, %590 ], [ %303, %429 ]
  %608 = phi float [ %602, %590 ], [ %304, %429 ]
  %609 = phi float [ %603, %590 ], [ %305, %429 ]
  %610 = phi float [ %605, %590 ], [ %306, %429 ]
  %611 = phi float [ %591, %590 ], [ 0.000000e+00, %429 ]
  %612 = fadd fast float %611, %302
  br label %613

; <label>:613                                     ; preds = %606, %286
  %614 = phi float [ %607, %606 ], [ %303, %286 ]
  %615 = phi float [ %608, %606 ], [ %304, %286 ]
  %616 = phi float [ %609, %606 ], [ %305, %286 ]
  %617 = phi float [ %610, %606 ], [ %306, %286 ]
  %618 = phi float [ %612, %606 ], [ %302, %286 ]
  %619 = and i32 %313, 2
  %620 = icmp ne i32 %619, 0
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 2
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %625 = fadd fast float %624, %622
  %626 = fcmp fast ole float %194, %625
  %627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.i32 %627, 3
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %649, !dx.controlflow.hints !71

; <label>:630                                     ; preds = %613
  %631 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %633 = fsub fast float %192, %631
  %634 = fsub fast float %193, %632
  %635 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %637 = fdiv fast float 1.000000e+00, %635
  %638 = fdiv fast float 1.000000e+00, %636
  %639 = fmul fast float %633, %637
  %640 = fmul fast float %638, %634
  %641 = fcmp fast oge float %639, 0.000000e+00
  %642 = fcmp fast oge float %640, 0.000000e+00
  %643 = and i1 %641, %642
  %644 = and i1 %626, %643
  %645 = fcmp fast ole float %639, 1.000000e+00
  %646 = fcmp fast ole float %640, 1.000000e+00
  %647 = and i1 %645, %646
  %648 = and i1 %647, %644
  br label %649

; <label>:649                                     ; preds = %630, %613
  %650 = phi i1 [ %648, %630 ], [ %626, %613 ]
  %651 = and i1 %620, %650
  br i1 %651, label %652, label %831, !dx.controlflow.hints !72

; <label>:652                                     ; preds = %649
  %653 = fcmp fast oeq float %394, 0.000000e+00
  br i1 %653, label %659, label %654, !dx.controlflow.hints !73

; <label>:654                                     ; preds = %652
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 3
  %657 = fmul fast float %656, %394
  %658 = call float @dx.op.unary.f32(i32 23, float %657)  ; Log(value)
  br label %659

; <label>:659                                     ; preds = %654, %652
  %660 = phi float [ %658, %654 ], [ 0.000000e+00, %652 ]
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 0
  %663 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %664 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %665 = fsub fast float %192, %662
  %666 = fsub fast float %193, %663
  %667 = fsub fast float %194, %664
  %668 = fmul fast float %665, %665
  %669 = fmul fast float %666, %666
  %670 = fadd fast float %668, %669
  %671 = fmul fast float %667, %667
  %672 = fadd fast float %670, %671
  %673 = call float @dx.op.unary.f32(i32 24, float %672)  ; Sqrt(value)
  %674 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %675 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %676 = fsub fast float %192, %674
  %677 = fsub fast float %193, %675
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %681 = fmul fast float %676, %679
  %682 = fmul fast float %677, %680
  %683 = fsub fast float 1.000000e+00, %682
  br i1 %629, label %690, label %684, !dx.controlflow.hints !74

; <label>:684                                     ; preds = %659
  %685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %34, float %681, float %683, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = extractvalue %dx.types.ResRet.f32 %685, 1
  %688 = extractvalue %dx.types.ResRet.f32 %685, 2
  %689 = extractvalue %dx.types.ResRet.f32 %685, 3
  br label %696

; <label>:690                                     ; preds = %659
  %691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %35, float %681, float %683, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = extractvalue %dx.types.ResRet.f32 %691, 1
  %694 = extractvalue %dx.types.ResRet.f32 %691, 2
  %695 = extractvalue %dx.types.ResRet.f32 %691, 3
  br label %696

; <label>:696                                     ; preds = %690, %684
  %697 = phi float [ %686, %684 ], [ %692, %690 ]
  %698 = phi float [ %687, %684 ], [ %693, %690 ]
  %699 = phi float [ %688, %684 ], [ %694, %690 ]
  %700 = phi float [ %689, %684 ], [ %695, %690 ]
  %701 = extractvalue %dx.types.CBufRet.f32 %678, 3
  %702 = fmul fast float %701, %698
  %703 = fmul fast float %702, %697
  %704 = fsub fast float %702, %703
  %705 = fcmp fast ole float %704, 0.000000e+00
  %706 = fmul fast float %701, %699
  %707 = fadd fast float %706, %622
  %708 = fdiv fast float 1.000000e+00, %704
  %709 = select i1 %705, float 1.000000e+06, float %708
  %710 = fsub fast float %194, %622
  %711 = fsub fast float %710, %703
  %712 = fmul fast float %709, %711
  %713 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %714 = extractvalue %dx.types.CBufRet.f32 %678, 2
  %715 = fmul fast float %714, %713
  %716 = fsub fast float %714, %715
  %717 = fcmp fast olt float %194, %707
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 3
  %720 = select i1 %717, float %719, float 1.000000e+00
  %721 = extractvalue %dx.types.CBufRet.f32 %718, 1
  %722 = fcmp fast oeq float %721, 0.000000e+00
  br i1 %722, label %805, label %723, !dx.controlflow.hints !75

; <label>:723                                     ; preds = %696
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %726 = fcmp fast ogt float %725, 0.000000e+00
  %727 = extractvalue %dx.types.CBufRet.f32 %718, 2
  br i1 %726, label %728, label %758, !dx.controlflow.hints !76

; <label>:728                                     ; preds = %723
  %729 = fmul fast float %681, %725
  %730 = fmul fast float %682, %725
  %731 = fsub fast float 1.000000e+00, %730
  %732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %32, float %729, float %731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = fmul fast float %733, 2.000000e+00
  %736 = fmul fast float %734, 2.000000e+00
  %737 = fadd fast float %735, -1.000000e+00
  %738 = fadd fast float %736, -1.000000e+00
  %739 = fmul fast float %721, %192
  %740 = fmul fast float %721, %193
  %741 = fmul fast float %721, %194
  %742 = call float @dx.op.unary.f32(i32 22, float %727)  ; Frc(value)
  %743 = fmul fast float %737, %742
  %744 = fmul fast float %738, %742
  %745 = fsub fast float %739, %743
  %746 = fsub fast float %740, %744
  %747 = fadd fast float %727, 5.000000e-01
  %748 = call float @dx.op.unary.f32(i32 22, float %747)  ; Frc(value)
  %749 = fmul fast float %748, %737
  %750 = fmul fast float %748, %738
  %751 = fadd fast float %739, -5.000000e-01
  %752 = fsub fast float %751, %749
  %753 = fadd fast float %740, -5.000000e-01
  %754 = fsub fast float %753, %750
  %755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %752, float %754, float %741, float undef, i32 0, i32 0, i32 0, float %660)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  br label %771

; <label>:758                                     ; preds = %723
  %759 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %760 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %761 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %762 = fmul fast float %727, %759
  %763 = fmul fast float %727, %760
  %764 = fmul fast float %727, %761
  %765 = fsub fast float %192, %762
  %766 = fsub fast float %193, %763
  %767 = fsub fast float %194, %764
  %768 = fmul fast float %765, %721
  %769 = fmul fast float %766, %721
  %770 = fmul fast float %767, %721
  br label %771

; <label>:771                                     ; preds = %758, %728
  %772 = phi float [ %745, %728 ], [ %768, %758 ]
  %773 = phi float [ %746, %728 ], [ %769, %758 ]
  %774 = phi float [ %741, %728 ], [ %770, %758 ]
  %775 = phi float [ %756, %728 ], [ 0.000000e+00, %758 ]
  %776 = phi float [ %757, %728 ], [ 0.000000e+00, %758 ]
  %777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %772, float %773, float %774, float undef, i32 0, i32 0, i32 0, float %660)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  br i1 %726, label %780, label %792, !dx.controlflow.hints !77

; <label>:780                                     ; preds = %771
  %781 = extractvalue %dx.types.CBufRet.f32 %718, 2
  %782 = call float @dx.op.unary.f32(i32 22, float %781)  ; Frc(value)
  %783 = fmul fast float %782, 2.000000e+00
  %784 = fadd fast float %783, -1.000000e+00
  %785 = call float @dx.op.unary.f32(i32 6, float %784)  ; FAbs(value)
  %786 = fsub fast float %775, %778
  %787 = fmul fast float %785, %786
  %788 = fadd fast float %787, %778
  %789 = fsub fast float %776, %779
  %790 = fmul fast float %785, %789
  %791 = fadd fast float %790, %779
  br label %792

; <label>:792                                     ; preds = %780, %771
  %793 = phi float [ %788, %780 ], [ %778, %771 ]
  %794 = phi float [ %791, %780 ], [ %779, %771 ]
  %795 = extractvalue %dx.types.CBufRet.f32 %621, 3
  %796 = fadd fast float %795, %795
  %797 = fdiv fast float 2.000000e+00, %796
  %798 = fmul fast float %795, 2.000000e+00
  %799 = fadd fast float %793, -1.000000e+00
  %800 = fadd fast float %799, %794
  %801 = fadd fast float %800, %798
  %802 = fmul fast float %801, %797
  %803 = fadd fast float %802, -1.000000e+00
  %804 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  br label %805

; <label>:805                                     ; preds = %792, %696
  %806 = phi float [ %804, %792 ], [ 1.000000e+00, %696 ]
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 0
  %809 = extractvalue %dx.types.CBufRet.f32 %807, 1
  %810 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %811 = extractvalue %dx.types.CBufRet.f32 %718, 0
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %814 = fsub fast float %673, %813
  %815 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %816 = fmul fast float %814, %815
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %818 = fmul fast float %720, %700
  %819 = fmul fast float %818, %716
  %820 = fmul fast float %819, %806
  %821 = fmul fast float %820, %817
  %822 = fmul fast float %821, %808
  %823 = fmul fast float %821, %809
  %824 = fmul fast float %821, %810
  %825 = fadd fast float %822, %614
  %826 = fadd fast float %823, %615
  %827 = fadd fast float %824, %616
  %828 = fmul fast float %821, %811
  %829 = fadd fast float %828, %617
  %830 = fadd fast float %821, %618
  br label %831

; <label>:831                                     ; preds = %805, %649
  %832 = phi float [ %825, %805 ], [ %614, %649 ]
  %833 = phi float [ %826, %805 ], [ %615, %649 ]
  %834 = phi float [ %827, %805 ], [ %616, %649 ]
  %835 = phi float [ %829, %805 ], [ %617, %649 ]
  %836 = phi float [ %830, %805 ], [ %618, %649 ]
  %837 = and i32 %313, 1
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %1115, label %839, !dx.controlflow.hints !78

; <label>:839                                     ; preds = %831
  %840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.i32 %840, 1
  %842 = and i32 %841, 1
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %919, label %844, !dx.controlflow.hints !79

; <label>:844                                     ; preds = %839
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %849 = extractvalue %dx.types.CBufRet.f32 %847, 1
  %850 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %851 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %852 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 0
  %855 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %856 = extractvalue %dx.types.CBufRet.f32 %853, 2
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 3
  %859 = and i32 %841, 2
  %860 = extractvalue %dx.types.CBufRet.i32 %840, 0
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %898, label %862

; <label>:862                                     ; preds = %844
  br label %863

; <label>:863                                     ; preds = %863, %862
  %864 = phi float [ %892, %863 ], [ 0.000000e+00, %862 ]
  %865 = phi float [ %891, %863 ], [ 1.000000e+06, %862 ]
  %866 = phi i32 [ %893, %863 ], [ 0, %862 ]
  %867 = add i32 %866, 171
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 %867)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %873 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %874 = fsub fast float %192, %869
  %875 = fsub fast float %193, %870
  %876 = fmul fast float %874, %874
  %877 = fmul fast float %875, %875
  %878 = fadd fast float %876, %877
  %879 = call float @dx.op.unary.f32(i32 24, float %878)  ; Sqrt(value)
  %880 = fsub fast float %879, %873
  %881 = icmp ne i32 %859, 0
  %882 = fsub fast float -0.000000e+00, %849
  %883 = select i1 %881, float %882, float %849
  %884 = fmul fast float %880, %883
  %885 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %886 = fmul fast float %885, %848
  %887 = fsub fast float %872, %194
  %888 = fmul fast float %887, %846
  %889 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %890 = fmul fast float %886, %889
  %891 = call float @dx.op.binary.f32(i32 36, float %865, float %880)  ; FMin(a,b)
  %892 = call float @dx.op.binary.f32(i32 35, float %864, float %890)  ; FMax(a,b)
  %893 = add nuw nsw i32 %866, 1
  %894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.i32 %894, 0
  %896 = icmp ult i32 %893, %895
  br i1 %896, label %863, label %897

; <label>:897                                     ; preds = %863
  br label %898

; <label>:898                                     ; preds = %897, %844
  %899 = phi float [ 0.000000e+00, %844 ], [ %892, %897 ]
  %900 = phi float [ 1.000000e+06, %844 ], [ %891, %897 ]
  %901 = fadd fast float %899, %836
  %902 = fmul fast float %900, %858
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %904 = fsub fast float %854, %850
  %905 = fsub fast float %855, %851
  %906 = fsub fast float %856, %852
  %907 = fmul fast float %903, %904
  %908 = fmul fast float %903, %905
  %909 = fmul fast float %903, %906
  %910 = fadd fast float %907, %850
  %911 = fadd fast float %908, %851
  %912 = fadd fast float %909, %852
  %913 = fmul fast float %910, %899
  %914 = fmul fast float %911, %899
  %915 = fmul fast float %912, %899
  %916 = fadd fast float %913, %832
  %917 = fadd fast float %914, %833
  %918 = fadd fast float %915, %834
  br label %1115

; <label>:919                                     ; preds = %839
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %922 = extractvalue %dx.types.CBufRet.f32 %920, 3
  %923 = fmul fast float %921, %192
  %924 = fmul fast float %922, %193
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = extractvalue %dx.types.CBufRet.f32 %925, 1
  %928 = fadd fast float %923, %926
  %929 = fadd fast float %924, %927
  %930 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %931 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %930, float %931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %936 = fmul fast float %935, %933
  %937 = fsub fast float %928, %930
  %938 = fsub fast float %929, %931
  %939 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %940 = extractvalue %dx.types.CBufRet.f32 %920, 1
  %941 = fmul fast float %939, %937
  %942 = fmul fast float %940, %938
  %943 = fmul fast float %941, %941
  %944 = fmul fast float %942, %942
  %945 = fadd fast float %943, %944
  %946 = call float @dx.op.unary.f32(i32 24, float %945)  ; Sqrt(value)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %949 = fmul fast float %948, %946
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  %951 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %952 = fsub fast float %951, %936
  %953 = fmul fast float %952, %950
  %954 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %955 = fsub fast float %194, %936
  %956 = fsub fast float %955, %954
  %957 = fsub fast float %956, %953
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %960 = fsub fast float %957, %959
  %961 = fcmp fast olt float %960, 0.000000e+00
  %962 = extractvalue %dx.types.CBufRet.i32 %840, 0
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %1014, label %964

; <label>:964                                     ; preds = %919
  br label %965

; <label>:965                                     ; preds = %1003, %964
  %966 = phi i32 [ %1009, %1003 ], [ 1, %964 ]
  %967 = phi i32 [ %1010, %1003 ], [ 0, %964 ]
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.i32 %970, 1
  %972 = and i32 %971, 8
  %973 = icmp eq i32 %972, 0
  %974 = fcmp fast ogt float %969, %957
  %975 = or i1 %974, %973
  %976 = add i32 %967, 171
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 %976)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 0
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 1
  %980 = extractvalue %dx.types.CBufRet.f32 %977, 2
  br i1 %975, label %981, label %987, !dx.controlflow.hints !80

; <label>:981                                     ; preds = %965
  %982 = fsub fast float %978, %192
  %983 = fsub fast float %979, %193
  %984 = fmul fast float %982, %982
  %985 = fmul fast float %983, %983
  %986 = fadd fast float %984, %985
  br label %1003

; <label>:987                                     ; preds = %965
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %990 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %991 = fmul fast float %990, %989
  %992 = fsub fast float %991, %969
  %993 = fdiv fast float %980, %992
  %994 = fsub fast float %192, %978
  %995 = fsub fast float %193, %979
  %996 = fsub fast float %957, %969
  %997 = fmul fast float %993, %996
  %998 = fmul fast float %994, %994
  %999 = fmul fast float %995, %995
  %1000 = fadd fast float %998, %999
  %1001 = fmul fast float %997, %997
  %1002 = fadd fast float %1000, %1001
  br label %1003

; <label>:1003                                    ; preds = %987, %981
  %1004 = phi float [ %986, %981 ], [ %1002, %987 ]
  %1005 = call float @dx.op.unary.f32(i32 24, float %1004)  ; Sqrt(value)
  %1006 = fsub float %980, %1005
  %1007 = fcmp fast olt float %1006, 0.000000e+00
  %1008 = zext i1 %1007 to i32
  %1009 = and i32 %1008, %966
  %1010 = add i32 %967, 1
  %1011 = extractvalue %dx.types.CBufRet.i32 %970, 0
  %1012 = icmp ult i32 %1010, %1011
  br i1 %1012, label %965, label %1013

; <label>:1013                                    ; preds = %1003
  br label %1014

; <label>:1014                                    ; preds = %1013, %919
  %1015 = phi i32 [ 1, %919 ], [ %1009, %1013 ]
  br label %1016

; <label>:1016                                    ; preds = %1016, %1014
  %1017 = phi i32 [ %1053, %1016 ], [ %1015, %1014 ]
  %1018 = phi i32 [ %1054, %1016 ], [ 0, %1014 ]
  %1019 = add nuw nsw i32 %1018, 191
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 %1019)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1024 = add nuw nsw i32 %1018, 195
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 %1024)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.CBufRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1029 = fsub fast float %192, %1021
  %1030 = fsub fast float %193, %1022
  %1031 = fsub fast float %957, %1023
  %1032 = call float @dx.op.unary.f32(i32 6, float %1029)  ; FAbs(value)
  %1033 = call float @dx.op.unary.f32(i32 6, float %1030)  ; FAbs(value)
  %1034 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1035 = fsub fast float %1032, %1026
  %1036 = fsub fast float %1033, %1027
  %1037 = fsub fast float %1034, %1028
  %1038 = call float @dx.op.binary.f32(i32 35, float %1035, float 0.000000e+00)  ; FMax(a,b)
  %1039 = call float @dx.op.binary.f32(i32 35, float %1036, float 0.000000e+00)  ; FMax(a,b)
  %1040 = call float @dx.op.binary.f32(i32 35, float %1037, float 0.000000e+00)  ; FMax(a,b)
  %1041 = fmul fast float %1038, %1038
  %1042 = fmul fast float %1039, %1039
  %1043 = fadd fast float %1042, %1041
  %1044 = fmul fast float %1040, %1040
  %1045 = fadd fast float %1043, %1044
  %1046 = call float @dx.op.unary.f32(i32 24, float %1045)  ; Sqrt(value)
  %1047 = call float @dx.op.binary.f32(i32 35, float %1036, float %1037)  ; FMax(a,b)
  %1048 = call float @dx.op.binary.f32(i32 35, float %1035, float %1047)  ; FMax(a,b)
  %1049 = call float @dx.op.binary.f32(i32 36, float %1048, float 0.000000e+00)  ; FMin(a,b)
  %1050 = fadd fast float %1049, %1046
  %1051 = fcmp ogt float %1050, -0.000000e+00
  %1052 = zext i1 %1051 to i32
  %1053 = and i32 %1052, %1017
  %1054 = add nuw nsw i32 %1018, 1
  %1055 = icmp eq i32 %1054, 4
  br i1 %1055, label %1056, label %1016

; <label>:1056                                    ; preds = %1016
  %1057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.i32 %1057, 1
  %1059 = lshr i32 %1058, 1
  %1060 = xor i32 %1059, %1053
  %1061 = zext i1 %961 to i32
  %1062 = and i32 %1060, %1061
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1115, label %1064, !dx.controlflow.hints !81

; <label>:1064                                    ; preds = %1056
  %1065 = fmul fast float %185, %185
  %1066 = fmul fast float %186, %186
  %1067 = fadd fast float %1065, %1066
  %1068 = fmul fast float %187, %187
  %1069 = fadd fast float %1067, %1068
  %1070 = call float @dx.op.unary.f32(i32 24, float %1069)  ; Sqrt(value)
  %1071 = and i32 %841, 4
  %1072 = icmp ne i32 %1071, 0
  %1073 = select i1 %1072, float %1070, float 1.000000e+00
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 1
  %1076 = fsub fast float %1073, %1075
  %1077 = extractvalue %dx.types.CBufRet.f32 %1074, 3
  %1078 = fmul fast float %1076, %1077
  %1079 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 3
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 2
  %1084 = fsub fast float %1083, %957
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 3
  %1087 = fmul fast float %1084, %1086
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = fmul fast float %1088, %1081
  %1090 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1091 = fsub fast float %1070, %1090
  %1092 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1093 = fmul fast float %1091, %1092
  %1094 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  %1095 = fsub fast float 1.000000e+00, %1079
  %1096 = fmul fast float %1094, %1095
  %1097 = fadd fast float %1096, %1079
  %1098 = extractvalue %dx.types.CBufRet.f32 %1074, 0
  %1099 = fsub fast float %1089, %1098
  %1100 = fmul fast float %1099, %1097
  %1101 = fadd fast float %1100, %1098
  %1102 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1103 = extractvalue %dx.types.CBufRet.f32 %1080, 1
  %1104 = extractvalue %dx.types.CBufRet.f32 %1080, 2
  %1105 = extractvalue %dx.types.CBufRet.f32 %1085, 2
  %1106 = fadd fast float %1101, %836
  %1107 = fmul fast float %1101, %1102
  %1108 = fmul fast float %1101, %1103
  %1109 = fmul fast float %1101, %1104
  %1110 = fadd fast float %1107, %832
  %1111 = fadd fast float %1108, %833
  %1112 = fadd fast float %1109, %834
  %1113 = fmul fast float %1101, %1105
  %1114 = fadd fast float %1113, %835
  br label %1115

; <label>:1115                                    ; preds = %1064, %1056, %898, %831
  %1116 = phi float [ %832, %831 ], [ %916, %898 ], [ %1110, %1064 ], [ %832, %1056 ]
  %1117 = phi float [ %833, %831 ], [ %917, %898 ], [ %1111, %1064 ], [ %833, %1056 ]
  %1118 = phi float [ %834, %831 ], [ %918, %898 ], [ %1112, %1064 ], [ %834, %1056 ]
  %1119 = phi float [ %835, %831 ], [ %835, %898 ], [ %1114, %1064 ], [ %835, %1056 ]
  %1120 = phi float [ %836, %831 ], [ %901, %898 ], [ %1106, %1064 ], [ %836, %1056 ]
  %1121 = and i32 %313, 16
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1914, label %1123, !dx.controlflow.hints !82

; <label>:1123                                    ; preds = %1115
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 3
  %1134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.i32 %1134, 0
  %1136 = icmp ne i32 %1135, 0
  %1137 = zext i1 %1136 to i32
  %1138 = extractvalue %dx.types.CBufRet.i32 %1134, 1
  %1139 = icmp ne i32 %1138, 0
  %1140 = zext i1 %1139 to i32
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 0
  %1143 = bitcast float %1142 to i32
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1194, label %1145

; <label>:1145                                    ; preds = %1123
  br label %1146

; <label>:1146                                    ; preds = %1189, %1145
  %1147 = phi i32 [ %1190, %1189 ], [ 0, %1145 ]
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = bitcast float %1149 to i32
  %1151 = call i32 @dx.op.tertiary.i32(i32 49, i32 %311, i32 %1150, i32 %1147)  ; UMad(a,b,c)
  %1152 = shl i32 %1151, 2
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  br label %1155

; <label>:1155                                    ; preds = %1158, %1146
  %1156 = phi i32 [ %1154, %1146 ], [ %1163, %1158 ]
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1189, label %1158

; <label>:1158                                    ; preds = %1155
  %1159 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1156)  ; FirstbitLo(value)
  %1160 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1147, i32 %1159)  ; UMad(a,b,c)
  %1161 = and i32 %1159, 31
  %1162 = shl i32 1, %1161
  %1163 = xor i32 %1162, %1156
  %1164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1160, i32 0)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1160, i32 16)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.ResRet.f32 %1168, 2
  %1172 = fsub fast float %1165, %1169
  %1173 = fsub fast float %1166, %1170
  %1174 = fsub fast float %1167, %1171
  %1175 = fadd fast float %1169, %1165
  %1176 = fadd fast float %1170, %1166
  %1177 = fadd fast float %1171, %1167
  %1178 = fcmp fast ogt float %192, %1172
  %1179 = fcmp fast ogt float %193, %1173
  %1180 = fcmp fast ogt float %194, %1174
  %1181 = and i1 %1178, %1179
  %1182 = and i1 %1180, %1181
  %1183 = fcmp fast olt float %192, %1175
  %1184 = fcmp fast olt float %193, %1176
  %1185 = fcmp fast olt float %194, %1177
  %1186 = and i1 %1183, %1184
  %1187 = and i1 %1185, %1186
  %1188 = and i1 %1182, %1187
  br i1 %1188, label %1192, label %1155, !dx.controlflow.hints !83

; <label>:1189                                    ; preds = %1155
  %1190 = add i32 %1147, 1
  %1191 = icmp ult i32 %1190, %1150
  br i1 %1191, label %1146, label %1193, !llvm.loop !84

; <label>:1192                                    ; preds = %1158
  br label %1194

; <label>:1193                                    ; preds = %1189
  br label %1194

; <label>:1194                                    ; preds = %1193, %1192, %1123
  %1195 = phi i32 [ 255, %1123 ], [ %1160, %1192 ], [ 255, %1193 ]
  %1196 = icmp eq i32 %1195, 255
  br i1 %1196, label %1216, label %1197, !dx.controlflow.hints !86

; <label>:1197                                    ; preds = %1194
  %1198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 32)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1198, 2
  %1202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 132)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 136)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 152)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1195, i32 156)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1195, i32 160)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = icmp ne i32 %1209, 0
  %1213 = zext i1 %1212 to i32
  %1214 = icmp ne i32 %1211, 0
  %1215 = zext i1 %1214 to i32
  br label %1216

; <label>:1216                                    ; preds = %1197, %1194
  %1217 = phi float [ %1199, %1197 ], [ %1125, %1194 ]
  %1218 = phi float [ %1200, %1197 ], [ %1126, %1194 ]
  %1219 = phi float [ %1201, %1197 ], [ %1127, %1194 ]
  %1220 = phi float [ %1203, %1197 ], [ %1129, %1194 ]
  %1221 = phi float [ %1205, %1197 ], [ %1131, %1194 ]
  %1222 = phi float [ %1207, %1197 ], [ %1133, %1194 ]
  %1223 = phi i32 [ %1213, %1197 ], [ %1137, %1194 ]
  %1224 = phi i32 [ %1215, %1197 ], [ %1140, %1194 ]
  %1225 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1226 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1227 = fsub fast float %192, %1225
  %1228 = fsub fast float %193, %1226
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1231 = extractvalue %dx.types.CBufRet.f32 %1229, 3
  %1232 = fmul fast float %1227, %1230
  %1233 = fmul fast float %1228, %1231
  %1234 = call float @dx.op.binary.f32(i32 36, float %1232, float %1233)  ; FMin(a,b)
  %1235 = fcmp fast olt float %1234, 0.000000e+00
  %1236 = call float @dx.op.binary.f32(i32 35, float %1232, float %1233)  ; FMax(a,b)
  %1237 = fcmp fast ogt float %1236, 1.000000e+00
  %1238 = or i1 %1235, %1237
  %1239 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1240 = fcmp fast olt float %194, %1239
  %1241 = or i1 %1238, %1240
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 3
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = fadd fast float %1245, %1243
  %1247 = fcmp fast ogt float %194, %1246
  %1248 = or i1 %1241, %1247
  br i1 %1248, label %1533, label %1249, !dx.controlflow.hints !87

; <label>:1249                                    ; preds = %1216
  %1250 = fsub fast float 1.000000e+00, %1233
  %1251 = extractvalue %dx.types.CBufRet.f32 %1244, 3
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 3
  %1254 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1255 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  br i1 %1196, label %1276, label %1261, !dx.controlflow.hints !88

; <label>:1261                                    ; preds = %1249
  %1262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 48)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 104)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 108)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 112)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 116)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 120)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  br label %1276

; <label>:1276                                    ; preds = %1261, %1249
  %1277 = phi float [ %1269, %1261 ], [ %1251, %1249 ]
  %1278 = phi float [ %1273, %1261 ], [ %1253, %1249 ]
  %1279 = phi float [ %1275, %1261 ], [ %1254, %1249 ]
  %1280 = phi float [ %1271, %1261 ], [ %1255, %1249 ]
  %1281 = phi float [ %1263, %1261 ], [ %1257, %1249 ]
  %1282 = phi float [ %1264, %1261 ], [ %1258, %1249 ]
  %1283 = phi float [ %1265, %1261 ], [ %1259, %1249 ]
  %1284 = phi float [ %1267, %1261 ], [ %1260, %1249 ]
  %1285 = fcmp fast oeq float %1277, 0.000000e+00
  br i1 %1285, label %1401, label %1286, !dx.controlflow.hints !89

; <label>:1286                                    ; preds = %1276
  %1287 = fcmp fast ogt float %1278, 0.000000e+00
  %1288 = fcmp fast oeq float %394, 0.000000e+00
  br i1 %1288, label %1293, label %1289, !dx.controlflow.hints !73

; <label>:1289                                    ; preds = %1286
  %1290 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1291 = fmul fast float %1290, %394
  %1292 = call float @dx.op.unary.f32(i32 23, float %1291)  ; Log(value)
  br label %1293

; <label>:1293                                    ; preds = %1289, %1286
  %1294 = phi float [ %1292, %1289 ], [ 0.000000e+00, %1286 ]
  br i1 %1288, label %1299, label %1295, !dx.controlflow.hints !73

; <label>:1295                                    ; preds = %1293
  %1296 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1297 = fmul fast float %1296, %394
  %1298 = call float @dx.op.unary.f32(i32 23, float %1297)  ; Log(value)
  br label %1299

; <label>:1299                                    ; preds = %1295, %1293
  %1300 = phi float [ %1298, %1295 ], [ 0.000000e+00, %1293 ]
  br i1 %1287, label %1301, label %1363, !dx.controlflow.hints !90

; <label>:1301                                    ; preds = %1299
  %1302 = fcmp fast ogt float %1279, 0.000000e+00
  br i1 %1302, label %1303, label %1313, !dx.controlflow.hints !91

; <label>:1303                                    ; preds = %1301
  %1304 = fmul fast float %1279, %1232
  %1305 = fmul fast float %1279, %1250
  %1306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %32, float %1304, float %1305, float undef, float undef, i32 0, i32 0, i32 undef, float %1300)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.ResRet.f32 %1306, 1
  %1309 = fmul fast float %1307, 2.000000e+00
  %1310 = fmul fast float %1308, 2.000000e+00
  %1311 = fadd fast float %1309, -1.000000e+00
  %1312 = fadd fast float %1310, -1.000000e+00
  br label %1334

; <label>:1313                                    ; preds = %1301
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1316 = fmul fast float %1315, %1232
  %1317 = fmul fast float %1315, %1250
  %1318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %34, float %1316, float %1317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.ResRet.f32 %1318, 1
  %1321 = extractvalue %dx.types.ResRet.f32 %1318, 2
  %1322 = fmul fast float %1319, 2.000000e+00
  %1323 = fmul fast float %1320, 2.000000e+00
  %1324 = fmul fast float %1321, 2.000000e+00
  %1325 = fadd fast float %1322, -1.000000e+00
  %1326 = fadd fast float %1323, -1.000000e+00
  %1327 = fadd fast float %1324, -1.000000e+00
  %1328 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1329 = fmul fast float %1325, %1328
  %1330 = fmul fast float %1326, %1328
  %1331 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1332 = fmul fast float %1331, 5.000000e-01
  %1333 = fmul fast float %1332, %1327
  br label %1334

; <label>:1334                                    ; preds = %1313, %1303
  %1335 = phi float [ %1311, %1303 ], [ %1329, %1313 ]
  %1336 = phi float [ %1312, %1303 ], [ %1330, %1313 ]
  %1337 = phi float [ 0.000000e+00, %1303 ], [ %1333, %1313 ]
  %1338 = fmul fast float %1277, %192
  %1339 = fmul fast float %1277, %193
  %1340 = fmul fast float %1277, %194
  %1341 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1342 = fmul fast float %1341, %1335
  %1343 = fmul fast float %1341, %1336
  %1344 = fmul fast float %1341, %1337
  %1345 = fsub fast float %1338, %1342
  %1346 = fsub fast float %1339, %1343
  %1347 = fsub fast float %1340, %1344
  %1348 = fadd fast float %1278, 5.000000e-01
  %1349 = call float @dx.op.unary.f32(i32 22, float %1348)  ; Frc(value)
  %1350 = fmul fast float %1349, %1335
  %1351 = fmul fast float %1349, %1336
  %1352 = fmul fast float %1349, %1337
  %1353 = fadd fast float %1338, -5.000000e-01
  %1354 = fsub fast float %1353, %1350
  %1355 = fadd fast float %1339, -5.000000e-01
  %1356 = fsub fast float %1355, %1351
  %1357 = fadd fast float %1340, -5.000000e-01
  %1358 = fsub fast float %1357, %1352
  %1359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %1354, float %1356, float %1358, float undef, i32 0, i32 0, i32 0, float %1294)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1359, 1
  %1362 = fadd fast float %1360, %1280
  br label %1373

; <label>:1363                                    ; preds = %1299
  %1364 = fmul fast float %1284, %1281
  %1365 = fmul fast float %1284, %1282
  %1366 = fmul fast float %1284, %1283
  %1367 = fsub fast float %192, %1364
  %1368 = fsub fast float %193, %1365
  %1369 = fsub fast float %194, %1366
  %1370 = fmul fast float %1367, %1277
  %1371 = fmul fast float %1368, %1277
  %1372 = fmul fast float %1369, %1277
  br label %1373

; <label>:1373                                    ; preds = %1363, %1334
  %1374 = phi float [ %1345, %1334 ], [ %1370, %1363 ]
  %1375 = phi float [ %1346, %1334 ], [ %1371, %1363 ]
  %1376 = phi float [ %1347, %1334 ], [ %1372, %1363 ]
  %1377 = phi float [ %1362, %1334 ], [ 0.000000e+00, %1363 ]
  %1378 = phi float [ %1361, %1334 ], [ 0.000000e+00, %1363 ]
  %1379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %1374, float %1375, float %1376, float undef, i32 0, i32 0, i32 0, float %1294)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.ResRet.f32 %1379, 1
  %1382 = fadd fast float %1380, %1280
  br i1 %1287, label %1383, label %1394, !dx.controlflow.hints !92

; <label>:1383                                    ; preds = %1373
  %1384 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1385 = fmul fast float %1384, 2.000000e+00
  %1386 = fadd fast float %1385, -1.000000e+00
  %1387 = call float @dx.op.unary.f32(i32 6, float %1386)  ; FAbs(value)
  %1388 = fsub fast float %1377, %1382
  %1389 = fmul fast float %1387, %1388
  %1390 = fadd fast float %1389, %1382
  %1391 = fsub fast float %1378, %1381
  %1392 = fmul fast float %1387, %1391
  %1393 = fadd fast float %1392, %1381
  br label %1394

; <label>:1394                                    ; preds = %1383, %1373
  %1395 = phi float [ %1390, %1383 ], [ %1382, %1373 ]
  %1396 = phi float [ %1393, %1383 ], [ %1381, %1373 ]
  %1397 = fsub fast float %1395, %1396
  %1398 = fsub fast float 1.000000e+00, %1396
  %1399 = fdiv fast float %1397, %1398
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  br label %1401

; <label>:1401                                    ; preds = %1394, %1276
  %1402 = phi float [ %1400, %1394 ], [ 1.000000e+00, %1276 ]
  %1403 = fcmp fast oeq float %394, 0.000000e+00
  br i1 %1403, label %1408, label %1404, !dx.controlflow.hints !73

; <label>:1404                                    ; preds = %1401
  %1405 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1406 = fmul fast float %1405, %394
  %1407 = call float @dx.op.unary.f32(i32 23, float %1406)  ; Log(value)
  br label %1408

; <label>:1408                                    ; preds = %1404, %1401
  %1409 = phi float [ %1407, %1404 ], [ 0.000000e+00, %1401 ]
  %1410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %33, float %1232, float %1250, float undef, float undef, i32 0, i32 0, i32 undef, float %1409)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %35, float %1232, float %1250, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = extractvalue %dx.types.ResRet.f32 %1412, 1
  %1415 = extractvalue %dx.types.ResRet.f32 %1412, 2
  %1416 = extractvalue %dx.types.ResRet.f32 %1412, 3
  %1417 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %35, float %1232, float %1250, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1418 = extractvalue %dx.types.ResRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.ResRet.f32 %1417, 1
  %1420 = extractvalue %dx.types.ResRet.f32 %1417, 2
  %1421 = extractvalue %dx.types.ResRet.f32 %1417, 3
  %1422 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %35, float %1232, float %1250, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.ResRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.ResRet.f32 %1422, 2
  %1426 = extractvalue %dx.types.ResRet.f32 %1422, 3
  %1427 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %35, float %1232, float %1250, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.ResRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.ResRet.f32 %1427, 2
  %1431 = extractvalue %dx.types.ResRet.f32 %1427, 3
  %1432 = fadd fast float %1413, %1414
  %1433 = fadd fast float %1432, %1415
  %1434 = fadd fast float %1433, %1416
  %1435 = fmul fast float %1418, %1413
  %1436 = fmul fast float %1419, %1414
  %1437 = fadd fast float %1435, %1436
  %1438 = fmul fast float %1420, %1415
  %1439 = fadd fast float %1437, %1438
  %1440 = fmul fast float %1421, %1416
  %1441 = fadd fast float %1439, %1440
  %1442 = fmul fast float %1423, %1413
  %1443 = fmul fast float %1424, %1414
  %1444 = fadd fast float %1442, %1443
  %1445 = fmul fast float %1425, %1415
  %1446 = fadd fast float %1444, %1445
  %1447 = fmul fast float %1426, %1416
  %1448 = fadd fast float %1446, %1447
  %1449 = fmul fast float %1428, %1413
  %1450 = fmul fast float %1429, %1414
  %1451 = fadd fast float %1449, %1450
  %1452 = fmul fast float %1430, %1415
  %1453 = fadd fast float %1451, %1452
  %1454 = fmul fast float %1431, %1416
  %1455 = fadd fast float %1453, %1454
  %1456 = fcmp fast ogt float %1434, 0.000000e+00
  %1457 = fdiv fast float %1441, %1434
  %1458 = select i1 %1456, float %1457, float 0.000000e+00
  %1459 = fdiv fast float %1448, %1434
  %1460 = select i1 %1456, float %1459, float 0.000000e+00
  %1461 = fdiv fast float %1455, %1434
  %1462 = select i1 %1456, float %1461, float 0.000000e+00
  %1463 = fcmp fast ogt float %194, %1460
  %1464 = fcmp fast olt float %194, %1458
  %1465 = and i1 %1464, %1463
  br i1 %1465, label %1466, label %1533, !dx.controlflow.hints !93

; <label>:1466                                    ; preds = %1408
  %1467 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 2
  %1470 = extractvalue %dx.types.CBufRet.f32 %1468, 3
  br i1 %1196, label %1481, label %1471, !dx.controlflow.hints !94

; <label>:1471                                    ; preds = %1466
  %1472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 60)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 64)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = extractvalue %dx.types.ResRet.f32 %1474, 1
  %1477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 72)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  %1479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 96)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  br label %1481

; <label>:1481                                    ; preds = %1471, %1466
  %1482 = phi float [ %1473, %1471 ], [ %1245, %1466 ]
  %1483 = phi float [ %1478, %1471 ], [ %1243, %1466 ]
  %1484 = phi float [ %1480, %1471 ], [ %1467, %1466 ]
  %1485 = phi float [ %1475, %1471 ], [ %1469, %1466 ]
  %1486 = phi float [ %1476, %1471 ], [ %1470, %1466 ]
  %1487 = call float @dx.op.binary.f32(i32 35, float %1411, float 0.000000e+00)  ; FMax(a,b)
  %1488 = call float @dx.op.binary.f32(i32 36, float %1487, float 1.000000e+00)  ; FMin(a,b)
  %1489 = call float @dx.op.unary.f32(i32 24, float %1488)  ; Sqrt(value)
  %1490 = call float @dx.op.binary.f32(i32 35, float %1462, float 0x3F847AE140000000)  ; FMax(a,b)
  %1491 = fsub fast float %1458, %194
  %1492 = fsub fast float %194, %1460
  %1493 = call float @dx.op.binary.f32(i32 36, float %1492, float %1491)  ; FMin(a,b)
  %1494 = fdiv fast float %1493, %1490
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = fsub fast float %194, %1483
  %1497 = fdiv fast float %1496, %1482
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1499 = fsub fast float 1.000000e+00, %1498
  %1500 = fmul float %1495, %1499
  %1501 = fmul float %1500, %1500
  %1502 = fmul fast float %1489, %1402
  %1503 = fmul fast float %1502, %1501
  %1504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1504, 2
  %1506 = extractvalue %dx.types.CBufRet.f32 %1504, 1
  %1507 = fsub fast float %1503, %1506
  %1508 = fsub fast float %1505, %1506
  %1509 = fdiv fast float %1507, %1508
  %1510 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  %1511 = fmul fast float %1510, %1484
  %1512 = fcmp fast ogt float %1486, 0.000000e+00
  br i1 %1512, label %1513, label %1533, !dx.controlflow.hints !95

; <label>:1513                                    ; preds = %1481
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1518 = fsub fast float %192, %1515
  %1519 = fsub fast float %193, %1516
  %1520 = fsub fast float %194, %1517
  %1521 = fmul fast float %1518, %1518
  %1522 = fmul fast float %1519, %1519
  %1523 = fadd fast float %1521, %1522
  %1524 = fmul fast float %1520, %1520
  %1525 = fadd fast float %1523, %1524
  %1526 = call float @dx.op.unary.f32(i32 24, float %1525)  ; Sqrt(value)
  %1527 = fsub fast float %1526, %1485
  %1528 = fsub fast float %1486, %1485
  %1529 = fdiv fast float %1527, %1528
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = fmul fast float %1530, %1530
  %1532 = fmul fast float %1531, %1511
  br label %1533

; <label>:1533                                    ; preds = %1513, %1481, %1408, %1216
  %1534 = phi float [ 0.000000e+00, %1216 ], [ 0.000000e+00, %1408 ], [ %1532, %1513 ], [ %1511, %1481 ]
  %1535 = fcmp fast oeq float %1534, 0.000000e+00
  br i1 %1535, label %1914, label %1536, !dx.controlflow.hints !96

; <label>:1536                                    ; preds = %1533
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.CBufRet.f32 %1537, 2
  %1541 = fsub fast float %192, %1538
  %1542 = fadd fast float %1541, %1540
  %1543 = fsub fast float %193, %1539
  %1544 = fadd fast float %1543, %1540
  %1545 = extractvalue %dx.types.CBufRet.f32 %1537, 3
  %1546 = fmul fast float %1542, %1545
  %1547 = fmul fast float %1544, %1545
  %1548 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1549 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1550 = fsub fast float 1.000000e+00, %1548
  %1551 = fsub fast float 1.000000e+00, %1549
  %1552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %1550, float %1551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 2
  %1556 = fmul fast float %1555, %1553
  %1557 = extractvalue %dx.types.CBufRet.f32 %1554, 3
  %1558 = fadd fast float %1557, %1556
  %1559 = fcmp fast ogt float %1553, 0.000000e+00
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 32768
  %1563 = icmp ne i32 %1562, 0
  %1564 = and i1 %1559, %1563
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 3
  %1567 = fadd fast float %1566, %1558
  %1568 = fcmp fast ole float %194, %1567
  %1569 = and i1 %1564, %1568
  %1570 = xor i1 %1569, true
  %1571 = icmp ne i32 %1223, 0
  %1572 = and i1 %1571, %1570
  %1573 = icmp ne i32 %1224, 0
  %1574 = and i1 %1573, %1569
  %1575 = or i1 %1572, %1574
  br i1 %1575, label %1914, label %1576, !dx.controlflow.hints !97

; <label>:1576                                    ; preds = %1536
  %1577 = fsub fast float %194, %1558
  %1578 = call float @dx.op.unary.f32(i32 6, float %1577)  ; FAbs(value)
  %1579 = fdiv fast float %1578, %1222
  %1580 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1581 = fmul fast float %1580, %1534
  %1582 = fcmp fast une float %1220, 0.000000e+00
  br i1 %1582, label %1583, label %1902, !dx.controlflow.hints !98

; <label>:1583                                    ; preds = %1576
  %1584 = fmul fast float %1220, %116
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.CBufRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.CBufRet.f32 %1585, 2
  %1589 = fmul fast float %1586, %1584
  %1590 = fmul fast float %1587, %1584
  %1591 = fmul fast float %1588, %1584
  %1592 = fadd fast float %1589, %192
  %1593 = fadd fast float %1590, %193
  %1594 = fadd fast float %1591, %194
  %1595 = fmul fast float %1220, 2.000000e+00
  %1596 = call float @dx.op.binary.f32(i32 35, float %394, float %1595)  ; FMax(a,b)
  %1597 = fsub fast float %1592, %1225
  %1598 = fsub fast float %1593, %1226
  %1599 = fmul fast float %1597, %1230
  %1600 = fmul fast float %1598, %1231
  %1601 = call float @dx.op.binary.f32(i32 36, float %1599, float %1600)  ; FMin(a,b)
  %1602 = fcmp fast olt float %1601, 0.000000e+00
  %1603 = call float @dx.op.binary.f32(i32 35, float %1599, float %1600)  ; FMax(a,b)
  %1604 = fcmp fast ogt float %1603, 1.000000e+00
  %1605 = or i1 %1602, %1604
  %1606 = fcmp fast olt float %1594, %1239
  %1607 = or i1 %1605, %1606
  %1608 = fcmp fast ogt float %1594, %1246
  %1609 = or i1 %1607, %1608
  br i1 %1609, label %1894, label %1610, !dx.controlflow.hints !87

; <label>:1610                                    ; preds = %1583
  %1611 = fsub fast float 1.000000e+00, %1600
  %1612 = extractvalue %dx.types.CBufRet.f32 %1244, 3
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1615 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1616 = extractvalue %dx.types.CBufRet.f32 %1613, 1
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1621 = extractvalue %dx.types.CBufRet.f32 %1613, 0
  br i1 %1196, label %1637, label %1622, !dx.controlflow.hints !88

; <label>:1622                                    ; preds = %1610
  %1623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 48)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.f32 %1623, 0
  %1625 = extractvalue %dx.types.ResRet.f32 %1623, 1
  %1626 = extractvalue %dx.types.ResRet.f32 %1623, 2
  %1627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 104)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.f32 %1627, 0
  %1629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 108)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 112)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.f32 %1631, 0
  %1633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 116)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.f32 %1633, 0
  %1635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 120)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  br label %1637

; <label>:1637                                    ; preds = %1622, %1610
  %1638 = phi float [ %1630, %1622 ], [ %1612, %1610 ]
  %1639 = phi float [ %1634, %1622 ], [ %1614, %1610 ]
  %1640 = phi float [ %1636, %1622 ], [ %1615, %1610 ]
  %1641 = phi float [ %1632, %1622 ], [ %1616, %1610 ]
  %1642 = phi float [ %1624, %1622 ], [ %1618, %1610 ]
  %1643 = phi float [ %1625, %1622 ], [ %1619, %1610 ]
  %1644 = phi float [ %1626, %1622 ], [ %1620, %1610 ]
  %1645 = phi float [ %1628, %1622 ], [ %1621, %1610 ]
  %1646 = fcmp fast oeq float %1638, 0.000000e+00
  br i1 %1646, label %1762, label %1647, !dx.controlflow.hints !89

; <label>:1647                                    ; preds = %1637
  %1648 = fcmp fast ogt float %1639, 0.000000e+00
  %1649 = fcmp fast oeq float %1596, 0.000000e+00
  br i1 %1649, label %1654, label %1650, !dx.controlflow.hints !73

; <label>:1650                                    ; preds = %1647
  %1651 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1652 = fmul fast float %1651, %1596
  %1653 = call float @dx.op.unary.f32(i32 23, float %1652)  ; Log(value)
  br label %1654

; <label>:1654                                    ; preds = %1650, %1647
  %1655 = phi float [ %1653, %1650 ], [ 0.000000e+00, %1647 ]
  br i1 %1649, label %1660, label %1656, !dx.controlflow.hints !73

; <label>:1656                                    ; preds = %1654
  %1657 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1658 = fmul fast float %1657, %1596
  %1659 = call float @dx.op.unary.f32(i32 23, float %1658)  ; Log(value)
  br label %1660

; <label>:1660                                    ; preds = %1656, %1654
  %1661 = phi float [ %1659, %1656 ], [ 0.000000e+00, %1654 ]
  br i1 %1648, label %1662, label %1724, !dx.controlflow.hints !90

; <label>:1662                                    ; preds = %1660
  %1663 = fcmp fast ogt float %1640, 0.000000e+00
  br i1 %1663, label %1664, label %1674, !dx.controlflow.hints !91

; <label>:1664                                    ; preds = %1662
  %1665 = fmul fast float %1640, %1599
  %1666 = fmul fast float %1640, %1611
  %1667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %32, float %1665, float %1666, float undef, float undef, i32 0, i32 0, i32 undef, float %1661)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1668 = extractvalue %dx.types.ResRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.ResRet.f32 %1667, 1
  %1670 = fmul fast float %1668, 2.000000e+00
  %1671 = fmul fast float %1669, 2.000000e+00
  %1672 = fadd fast float %1670, -1.000000e+00
  %1673 = fadd fast float %1671, -1.000000e+00
  br label %1695

; <label>:1674                                    ; preds = %1662
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 3
  %1677 = fmul fast float %1676, %1599
  %1678 = fmul fast float %1676, %1611
  %1679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %34, float %1677, float %1678, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1680 = extractvalue %dx.types.ResRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.ResRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.ResRet.f32 %1679, 2
  %1683 = fmul fast float %1680, 2.000000e+00
  %1684 = fmul fast float %1681, 2.000000e+00
  %1685 = fmul fast float %1682, 2.000000e+00
  %1686 = fadd fast float %1683, -1.000000e+00
  %1687 = fadd fast float %1684, -1.000000e+00
  %1688 = fadd fast float %1685, -1.000000e+00
  %1689 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1690 = fmul fast float %1686, %1689
  %1691 = fmul fast float %1687, %1689
  %1692 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1693 = fmul fast float %1692, 5.000000e-01
  %1694 = fmul fast float %1693, %1688
  br label %1695

; <label>:1695                                    ; preds = %1674, %1664
  %1696 = phi float [ %1672, %1664 ], [ %1690, %1674 ]
  %1697 = phi float [ %1673, %1664 ], [ %1691, %1674 ]
  %1698 = phi float [ 0.000000e+00, %1664 ], [ %1694, %1674 ]
  %1699 = fmul fast float %1638, %1592
  %1700 = fmul fast float %1638, %1593
  %1701 = fmul fast float %1638, %1594
  %1702 = call float @dx.op.unary.f32(i32 22, float %1639)  ; Frc(value)
  %1703 = fmul fast float %1702, %1696
  %1704 = fmul fast float %1702, %1697
  %1705 = fmul fast float %1702, %1698
  %1706 = fsub fast float %1699, %1703
  %1707 = fsub fast float %1700, %1704
  %1708 = fsub fast float %1701, %1705
  %1709 = fadd fast float %1639, 5.000000e-01
  %1710 = call float @dx.op.unary.f32(i32 22, float %1709)  ; Frc(value)
  %1711 = fmul fast float %1710, %1696
  %1712 = fmul fast float %1710, %1697
  %1713 = fmul fast float %1710, %1698
  %1714 = fadd fast float %1699, -5.000000e-01
  %1715 = fsub fast float %1714, %1711
  %1716 = fadd fast float %1700, -5.000000e-01
  %1717 = fsub fast float %1716, %1712
  %1718 = fadd fast float %1701, -5.000000e-01
  %1719 = fsub fast float %1718, %1713
  %1720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %1715, float %1717, float %1719, float undef, i32 0, i32 0, i32 0, float %1655)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1721 = extractvalue %dx.types.ResRet.f32 %1720, 0
  %1722 = extractvalue %dx.types.ResRet.f32 %1720, 1
  %1723 = fadd fast float %1721, %1641
  br label %1734

; <label>:1724                                    ; preds = %1660
  %1725 = fmul fast float %1645, %1642
  %1726 = fmul fast float %1645, %1643
  %1727 = fmul fast float %1645, %1644
  %1728 = fsub fast float %1592, %1725
  %1729 = fsub fast float %1593, %1726
  %1730 = fsub fast float %1594, %1727
  %1731 = fmul fast float %1728, %1638
  %1732 = fmul fast float %1729, %1638
  %1733 = fmul fast float %1730, %1638
  br label %1734

; <label>:1734                                    ; preds = %1724, %1695
  %1735 = phi float [ %1706, %1695 ], [ %1731, %1724 ]
  %1736 = phi float [ %1707, %1695 ], [ %1732, %1724 ]
  %1737 = phi float [ %1708, %1695 ], [ %1733, %1724 ]
  %1738 = phi float [ %1723, %1695 ], [ 0.000000e+00, %1724 ]
  %1739 = phi float [ %1722, %1695 ], [ 0.000000e+00, %1724 ]
  %1740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %1735, float %1736, float %1737, float undef, i32 0, i32 0, i32 0, float %1655)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1741 = extractvalue %dx.types.ResRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.ResRet.f32 %1740, 1
  %1743 = fadd fast float %1741, %1641
  br i1 %1648, label %1744, label %1755, !dx.controlflow.hints !92

; <label>:1744                                    ; preds = %1734
  %1745 = call float @dx.op.unary.f32(i32 22, float %1639)  ; Frc(value)
  %1746 = fmul fast float %1745, 2.000000e+00
  %1747 = fadd fast float %1746, -1.000000e+00
  %1748 = call float @dx.op.unary.f32(i32 6, float %1747)  ; FAbs(value)
  %1749 = fsub fast float %1738, %1743
  %1750 = fmul fast float %1748, %1749
  %1751 = fadd fast float %1750, %1743
  %1752 = fsub fast float %1739, %1742
  %1753 = fmul fast float %1748, %1752
  %1754 = fadd fast float %1753, %1742
  br label %1755

; <label>:1755                                    ; preds = %1744, %1734
  %1756 = phi float [ %1751, %1744 ], [ %1743, %1734 ]
  %1757 = phi float [ %1754, %1744 ], [ %1742, %1734 ]
  %1758 = fsub fast float %1756, %1757
  %1759 = fsub fast float 1.000000e+00, %1757
  %1760 = fdiv fast float %1758, %1759
  %1761 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  br label %1762

; <label>:1762                                    ; preds = %1755, %1637
  %1763 = phi float [ %1761, %1755 ], [ 1.000000e+00, %1637 ]
  %1764 = fcmp fast oeq float %1596, 0.000000e+00
  br i1 %1764, label %1769, label %1765, !dx.controlflow.hints !73

; <label>:1765                                    ; preds = %1762
  %1766 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1767 = fmul fast float %1766, %1596
  %1768 = call float @dx.op.unary.f32(i32 23, float %1767)  ; Log(value)
  br label %1769

; <label>:1769                                    ; preds = %1765, %1762
  %1770 = phi float [ %1768, %1765 ], [ 0.000000e+00, %1762 ]
  %1771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %33, float %1599, float %1611, float undef, float undef, i32 0, i32 0, i32 undef, float %1770)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1772 = extractvalue %dx.types.ResRet.f32 %1771, 0
  %1773 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %35, float %1599, float %1611, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1774 = extractvalue %dx.types.ResRet.f32 %1773, 0
  %1775 = extractvalue %dx.types.ResRet.f32 %1773, 1
  %1776 = extractvalue %dx.types.ResRet.f32 %1773, 2
  %1777 = extractvalue %dx.types.ResRet.f32 %1773, 3
  %1778 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %35, float %1599, float %1611, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1779 = extractvalue %dx.types.ResRet.f32 %1778, 0
  %1780 = extractvalue %dx.types.ResRet.f32 %1778, 1
  %1781 = extractvalue %dx.types.ResRet.f32 %1778, 2
  %1782 = extractvalue %dx.types.ResRet.f32 %1778, 3
  %1783 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %35, float %1599, float %1611, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1784 = extractvalue %dx.types.ResRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.ResRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.ResRet.f32 %1783, 2
  %1787 = extractvalue %dx.types.ResRet.f32 %1783, 3
  %1788 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %35, float %1599, float %1611, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = extractvalue %dx.types.ResRet.f32 %1788, 3
  %1793 = fadd fast float %1774, %1775
  %1794 = fadd fast float %1793, %1776
  %1795 = fadd fast float %1794, %1777
  %1796 = fmul fast float %1779, %1774
  %1797 = fmul fast float %1780, %1775
  %1798 = fadd fast float %1796, %1797
  %1799 = fmul fast float %1781, %1776
  %1800 = fadd fast float %1798, %1799
  %1801 = fmul fast float %1782, %1777
  %1802 = fadd fast float %1800, %1801
  %1803 = fmul fast float %1784, %1774
  %1804 = fmul fast float %1785, %1775
  %1805 = fadd fast float %1803, %1804
  %1806 = fmul fast float %1786, %1776
  %1807 = fadd fast float %1805, %1806
  %1808 = fmul fast float %1787, %1777
  %1809 = fadd fast float %1807, %1808
  %1810 = fmul fast float %1789, %1774
  %1811 = fmul fast float %1790, %1775
  %1812 = fadd fast float %1810, %1811
  %1813 = fmul fast float %1791, %1776
  %1814 = fadd fast float %1812, %1813
  %1815 = fmul fast float %1792, %1777
  %1816 = fadd fast float %1814, %1815
  %1817 = fcmp fast ogt float %1795, 0.000000e+00
  %1818 = fdiv fast float %1802, %1795
  %1819 = select i1 %1817, float %1818, float 0.000000e+00
  %1820 = fdiv fast float %1809, %1795
  %1821 = select i1 %1817, float %1820, float 0.000000e+00
  %1822 = fdiv fast float %1816, %1795
  %1823 = select i1 %1817, float %1822, float 0.000000e+00
  %1824 = fcmp fast ogt float %1594, %1821
  %1825 = fcmp fast olt float %1594, %1819
  %1826 = and i1 %1825, %1824
  br i1 %1826, label %1827, label %1894, !dx.controlflow.hints !93

; <label>:1827                                    ; preds = %1769
  %1828 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 2
  %1831 = extractvalue %dx.types.CBufRet.f32 %1829, 3
  br i1 %1196, label %1842, label %1832, !dx.controlflow.hints !94

; <label>:1832                                    ; preds = %1827
  %1833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 60)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 64)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = extractvalue %dx.types.ResRet.f32 %1835, 1
  %1838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 72)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1195, i32 96)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.f32 %1840, 0
  br label %1842

; <label>:1842                                    ; preds = %1832, %1827
  %1843 = phi float [ %1834, %1832 ], [ %1245, %1827 ]
  %1844 = phi float [ %1839, %1832 ], [ %1243, %1827 ]
  %1845 = phi float [ %1841, %1832 ], [ %1828, %1827 ]
  %1846 = phi float [ %1836, %1832 ], [ %1830, %1827 ]
  %1847 = phi float [ %1837, %1832 ], [ %1831, %1827 ]
  %1848 = call float @dx.op.binary.f32(i32 35, float %1772, float 0.000000e+00)  ; FMax(a,b)
  %1849 = call float @dx.op.binary.f32(i32 36, float %1848, float 1.000000e+00)  ; FMin(a,b)
  %1850 = call float @dx.op.unary.f32(i32 24, float %1849)  ; Sqrt(value)
  %1851 = call float @dx.op.binary.f32(i32 35, float %1823, float 0x3F847AE140000000)  ; FMax(a,b)
  %1852 = fsub fast float %1819, %1594
  %1853 = fsub fast float %1594, %1821
  %1854 = call float @dx.op.binary.f32(i32 36, float %1853, float %1852)  ; FMin(a,b)
  %1855 = fdiv fast float %1854, %1851
  %1856 = call float @dx.op.unary.f32(i32 7, float %1855)  ; Saturate(value)
  %1857 = fsub fast float %1594, %1844
  %1858 = fdiv fast float %1857, %1843
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = fsub fast float 1.000000e+00, %1859
  %1861 = fmul float %1856, %1860
  %1862 = fmul float %1861, %1861
  %1863 = fmul fast float %1850, %1763
  %1864 = fmul fast float %1863, %1862
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %1867 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1868 = fsub fast float %1864, %1867
  %1869 = fsub fast float %1866, %1867
  %1870 = fdiv fast float %1868, %1869
  %1871 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1872 = fmul fast float %1871, %1845
  %1873 = fcmp fast ogt float %1847, 0.000000e+00
  br i1 %1873, label %1874, label %1894, !dx.controlflow.hints !95

; <label>:1874                                    ; preds = %1842
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.CBufRet.f32 %1875, 2
  %1879 = fsub fast float %1592, %1876
  %1880 = fsub fast float %1593, %1877
  %1881 = fsub fast float %1594, %1878
  %1882 = fmul fast float %1879, %1879
  %1883 = fmul fast float %1880, %1880
  %1884 = fadd fast float %1882, %1883
  %1885 = fmul fast float %1881, %1881
  %1886 = fadd fast float %1884, %1885
  %1887 = call float @dx.op.unary.f32(i32 24, float %1886)  ; Sqrt(value)
  %1888 = fsub fast float %1887, %1846
  %1889 = fsub fast float %1847, %1846
  %1890 = fdiv fast float %1888, %1889
  %1891 = call float @dx.op.unary.f32(i32 7, float %1890)  ; Saturate(value)
  %1892 = fmul fast float %1891, %1891
  %1893 = fmul fast float %1892, %1872
  br label %1894

; <label>:1894                                    ; preds = %1874, %1842, %1769, %1583
  %1895 = phi float [ 0.000000e+00, %1583 ], [ 0.000000e+00, %1769 ], [ %1893, %1874 ], [ %1872, %1842 ]
  %1896 = fsub fast float %1581, %1895
  %1897 = fdiv fast float %1896, %1581
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = fsub fast float 1.000000e+00, %1221
  %1900 = fmul fast float %1898, %1899
  %1901 = fadd fast float %1900, %1221
  br label %1902

; <label>:1902                                    ; preds = %1894, %1576
  %1903 = phi float [ %1901, %1894 ], [ 1.000000e+00, %1576 ]
  %1904 = fadd fast float %1581, %1120
  %1905 = fmul fast float %1581, %1217
  %1906 = fmul fast float %1905, %1903
  %1907 = fmul fast float %1581, %1218
  %1908 = fmul fast float %1907, %1903
  %1909 = fmul fast float %1581, %1219
  %1910 = fmul fast float %1909, %1903
  %1911 = fadd fast float %1906, %1116
  %1912 = fadd fast float %1908, %1117
  %1913 = fadd fast float %1910, %1118
  br label %1914

; <label>:1914                                    ; preds = %1902, %1536, %1533, %1115
  %1915 = phi float [ %1116, %1115 ], [ %1116, %1533 ], [ %1116, %1536 ], [ %1911, %1902 ]
  %1916 = phi float [ %1117, %1115 ], [ %1117, %1533 ], [ %1117, %1536 ], [ %1912, %1902 ]
  %1917 = phi float [ %1118, %1115 ], [ %1118, %1533 ], [ %1118, %1536 ], [ %1913, %1902 ]
  %1918 = phi float [ %1120, %1115 ], [ %1120, %1533 ], [ %1120, %1536 ], [ %1904, %1902 ]
  %1919 = and i32 %313, 4
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %2091, label %1921, !dx.controlflow.hints !99

; <label>:1921                                    ; preds = %1914
  %1922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.i32 %1922, 1
  %1924 = icmp eq i32 %1923, 0
  br i1 %1924, label %2091, label %1925

; <label>:1925                                    ; preds = %1921
  br label %1926

; <label>:1926                                    ; preds = %2082, %1925
  %1927 = phi i32 [ %2088, %2082 ], [ 0, %1925 ]
  %1928 = phi float [ %2083, %2082 ], [ %1915, %1925 ]
  %1929 = phi float [ %2084, %2082 ], [ %1916, %1925 ]
  %1930 = phi float [ %2085, %2082 ], [ %1917, %1925 ]
  %1931 = phi float [ %2086, %2082 ], [ %1119, %1925 ]
  %1932 = phi float [ %2087, %2082 ], [ %1918, %1925 ]
  %1933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.i32 %1933, 1
  %1935 = call i32 @dx.op.tertiary.i32(i32 49, i32 %311, i32 %1934, i32 %1927)  ; UMad(a,b,c)
  %1936 = shl i32 %1935, 2
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = icmp eq i32 %1938, 0
  br i1 %1939, label %2082, label %1940

; <label>:1940                                    ; preds = %1926
  br label %1941

; <label>:1941                                    ; preds = %2068, %1940
  %1942 = phi i32 [ %1952, %2068 ], [ %1938, %1940 ]
  %1943 = phi float [ %2074, %2068 ], [ %1928, %1940 ]
  %1944 = phi float [ %2075, %2068 ], [ %1929, %1940 ]
  %1945 = phi float [ %2076, %2068 ], [ %1930, %1940 ]
  %1946 = phi float [ %2078, %2068 ], [ %1931, %1940 ]
  %1947 = phi float [ %2079, %2068 ], [ %1932, %1940 ]
  %1948 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1942)  ; FirstbitLo(value)
  %1949 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1927, i32 %1948)  ; UMad(a,b,c)
  %1950 = and i32 %1948, 31
  %1951 = shl i32 1, %1950
  %1952 = xor i32 %1951, %1942
  %1953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1949, i32 0)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.f32 %1953, 0
  %1955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1949, i32 4)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.f32 %1955, 0
  %1957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1949, i32 16)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = extractvalue %dx.types.ResRet.f32 %1957, 1
  %1960 = extractvalue %dx.types.ResRet.f32 %1957, 2
  %1961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1949, i32 28)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1949, i32 32)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.f32 %1963, 0
  %1965 = extractvalue %dx.types.ResRet.f32 %1963, 1
  %1966 = extractvalue %dx.types.ResRet.f32 %1963, 2
  %1967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1949, i32 44)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.f32 %1967, 0
  %1969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1949, i32 48)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  %1971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1949, i32 52)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1949, i32 56)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1949, i32 64)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %1978 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1979 = mul i32 %1949, 60
  %1980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = extractvalue %dx.types.ResRet.f32 %1980, 1
  %1983 = extractvalue %dx.types.ResRet.f32 %1980, 2
  %1984 = add i32 %1979, 12
  %1985 = add i32 %1979, 48
  %1986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 2
  %1988 = fsub fast float %192, %1981
  %1989 = fsub fast float %193, %1982
  %1990 = fsub fast float %194, %1983
  %1991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  %1993 = extractvalue %dx.types.ResRet.f32 %1991, 1
  %1994 = extractvalue %dx.types.ResRet.f32 %1991, 2
  %1995 = call float @dx.op.dot3.f32(i32 55, float %1988, float %1989, float %1990, float %1992, float %1993, float %1994)  ; Dot3(ax,ay,az,bx,by,bz)
  %1996 = add i32 %1979, 24
  %1997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.f32 %1997, 0
  %1999 = extractvalue %dx.types.ResRet.f32 %1997, 1
  %2000 = extractvalue %dx.types.ResRet.f32 %1997, 2
  %2001 = call float @dx.op.dot3.f32(i32 55, float %1988, float %1989, float %1990, float %1998, float %1999, float %2000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2002 = add i32 %1979, 36
  %2003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.ResRet.f32 %2003, 1
  %2006 = extractvalue %dx.types.ResRet.f32 %2003, 2
  %2007 = call float @dx.op.dot3.f32(i32 55, float %1988, float %1989, float %1990, float %2004, float %2005, float %2006)  ; Dot3(ax,ay,az,bx,by,bz)
  %2008 = call float @dx.op.unary.f32(i32 6, float %1995)  ; FAbs(value)
  %2009 = call float @dx.op.unary.f32(i32 6, float %2001)  ; FAbs(value)
  %2010 = call float @dx.op.unary.f32(i32 6, float %2007)  ; FAbs(value)
  %2011 = fmul fast float %2008, %1968
  %2012 = fmul fast float %2009, %1968
  %2013 = fmul fast float %2010, %1968
  %2014 = fadd fast float %2011, %1964
  %2015 = fadd fast float %2012, %1965
  %2016 = fadd fast float %2013, %1966
  %2017 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2018 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2019 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  %2020 = fmul fast float %2017, %2017
  %2021 = fmul fast float %2018, %2018
  %2022 = fadd fast float %2021, %2020
  %2023 = fmul fast float %2019, %2019
  %2024 = fadd fast float %2022, %2023
  %2025 = call float @dx.op.unary.f32(i32 24, float %2024)  ; Sqrt(value)
  %2026 = fsub fast float 1.000000e+00, %2025
  %2027 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2028 = fmul fast float %2027, %1954
  %2029 = fmul fast float %1987, 2.000000e+00
  %2030 = fadd fast float %2007, %1987
  %2031 = call float @dx.op.binary.f32(i32 35, float %2030, float 0.000000e+00)  ; FMax(a,b)
  %2032 = call float @dx.op.binary.f32(i32 36, float %2031, float %2029)  ; FMin(a,b)
  %2033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2032)  ; FMax(a,b)
  %2034 = fmul fast float %1956, 0x3FF7154760000000
  %2035 = fmul fast float %2034, %2033
  %2036 = call float @dx.op.unary.f32(i32 21, float %2035)  ; Exp(value)
  %2037 = fmul fast float %2028, %2036
  %2038 = fcmp fast oeq float %394, 0.000000e+00
  br i1 %2038, label %2044, label %2039, !dx.controlflow.hints !73

; <label>:2039                                    ; preds = %1941
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 3
  %2042 = fmul fast float %2041, %394
  %2043 = call float @dx.op.unary.f32(i32 23, float %2042)  ; Log(value)
  br label %2044

; <label>:2044                                    ; preds = %2039, %1941
  %2045 = phi float [ %2043, %2039 ], [ 0.000000e+00, %1941 ]
  %2046 = fcmp fast oeq float %1970, 0.000000e+00
  br i1 %2046, label %2068, label %2047, !dx.controlflow.hints !100

; <label>:2047                                    ; preds = %2044
  %2048 = fmul fast float %1976, %1974
  %2049 = fmul fast float %1977, %1974
  %2050 = fmul fast float %1978, %1974
  %2051 = fsub fast float %192, %2048
  %2052 = fsub fast float %193, %2049
  %2053 = fsub fast float %194, %2050
  %2054 = fmul fast float %2051, %1970
  %2055 = fmul fast float %2052, %1970
  %2056 = fmul fast float %2053, %1970
  %2057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %32, float %2054, float %2055, float %2056, float undef, i32 0, i32 0, i32 0, float %2045)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.ResRet.f32 %2057, 1
  %2060 = fdiv fast float 1.000000e+00, %1972
  %2061 = fmul fast float %1972, 2.000000e+00
  %2062 = fadd fast float %2061, -1.000000e+00
  %2063 = fadd fast float %2062, %2059
  %2064 = fadd fast float %2063, %2058
  %2065 = fmul fast float %2064, %2060
  %2066 = fadd fast float %2065, -1.000000e+00
  %2067 = call float @dx.op.unary.f32(i32 7, float %2066)  ; Saturate(value)
  br label %2068

; <label>:2068                                    ; preds = %2047, %2044
  %2069 = phi float [ %2067, %2047 ], [ 1.000000e+00, %2044 ]
  %2070 = fmul fast float %2037, %2069
  %2071 = fmul fast float %2070, %1958
  %2072 = fmul fast float %2070, %1959
  %2073 = fmul fast float %2070, %1960
  %2074 = fadd fast float %2071, %1943
  %2075 = fadd fast float %2072, %1944
  %2076 = fadd fast float %2073, %1945
  %2077 = fmul fast float %2070, %1962
  %2078 = fadd fast float %2077, %1946
  %2079 = fadd fast float %2070, %1947
  %2080 = icmp eq i32 %1942, %1951
  br i1 %2080, label %2081, label %1941, !llvm.loop !101

; <label>:2081                                    ; preds = %2068
  br label %2082

; <label>:2082                                    ; preds = %2081, %1926
  %2083 = phi float [ %1928, %1926 ], [ %2074, %2081 ]
  %2084 = phi float [ %1929, %1926 ], [ %2075, %2081 ]
  %2085 = phi float [ %1930, %1926 ], [ %2076, %2081 ]
  %2086 = phi float [ %1931, %1926 ], [ %2078, %2081 ]
  %2087 = phi float [ %1932, %1926 ], [ %2079, %2081 ]
  %2088 = add i32 %1927, 1
  %2089 = icmp ult i32 %2088, %1934
  br i1 %2089, label %1926, label %2090, !llvm.loop !102

; <label>:2090                                    ; preds = %2082
  br label %2091

; <label>:2091                                    ; preds = %2090, %1921, %1914
  %2092 = phi float [ %1915, %1914 ], [ %1915, %1921 ], [ %2083, %2090 ]
  %2093 = phi float [ %1916, %1914 ], [ %1916, %1921 ], [ %2084, %2090 ]
  %2094 = phi float [ %1917, %1914 ], [ %1917, %1921 ], [ %2085, %2090 ]
  %2095 = phi float [ %1119, %1914 ], [ %1119, %1921 ], [ %2086, %2090 ]
  %2096 = phi float [ %1918, %1914 ], [ %1918, %1921 ], [ %2087, %2090 ]
  %2097 = fcmp fast ogt float %2096, 0.000000e+00
  br i1 %2097, label %2098, label %2774, !dx.controlflow.hints !103

; <label>:2098                                    ; preds = %2091
  %2099 = fdiv fast float 1.000000e+00, %2096
  %2100 = fmul fast float %2099, %2092
  %2101 = fmul fast float %2099, %2093
  %2102 = fmul fast float %2099, %2094
  %2103 = fmul fast float %2099, %2095
  %2104 = fmul fast float %391, %390
  %2105 = fmul fast float %320, %127
  %2106 = call float @dx.op.unary.f32(i32 21, float %2105)  ; Exp(value)
  %2107 = fmul fast float %2106, %319
  %2108 = fadd fast float %324, %2107
  %2109 = fmul fast float %134, 2.000000e+00
  %2110 = fmul fast float %2109, %316
  %2111 = fmul fast float %135, 2.000000e+00
  %2112 = fmul fast float %2111, %317
  %2113 = fsub fast float 1.000000e+00, %2110
  %2114 = fsub fast float 1.000000e+00, %2112
  %2115 = fmul fast float %333, %2113
  %2116 = fmul fast float %334, %2113
  %2117 = fmul fast float %335, %2113
  %2118 = fmul fast float %340, %2114
  %2119 = fmul fast float %341, %2114
  %2120 = fmul fast float %342, %2114
  %2121 = fadd fast float %2118, %2115
  %2122 = fadd fast float %2119, %2116
  %2123 = fadd fast float %2120, %2117
  %2124 = fadd fast float %2121, %350
  %2125 = fadd fast float %2122, %351
  %2126 = fadd fast float %2123, %352
  %2127 = fmul fast float %2124, %2108
  %2128 = fmul fast float %2125, %2108
  %2129 = fmul fast float %2126, %2108
  %2130 = fadd fast float %127, 1.000000e+00
  %2131 = fmul fast float %320, %2130
  %2132 = call float @dx.op.unary.f32(i32 21, float %2131)  ; Exp(value)
  %2133 = fsub fast float %2132, %2106
  %2134 = fmul fast float %319, %2133
  %2135 = fmul fast float %2124, %2134
  %2136 = fsub fast float %2132, %2106
  %2137 = fmul fast float %319, %2136
  %2138 = fmul fast float %2125, %2137
  %2139 = fsub fast float %2132, %2106
  %2140 = fmul fast float %319, %2139
  %2141 = fmul fast float %2126, %2140
  %2142 = call float @dx.op.dot3.f32(i32 55, float %2135, float %2138, float %2141, float %2135, float %2138, float %2141)  ; Dot3(ax,ay,az,bx,by,bz)
  %2143 = call float @dx.op.unary.f32(i32 25, float %2142)  ; Rsqrt(value)
  %2144 = fmul fast float %2143, %2142
  %2145 = fmul fast float %2135, %2143
  %2146 = fmul fast float %2138, %2143
  %2147 = fmul fast float %2141, %2143
  %2148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2149 = extractvalue %dx.types.CBufRet.i32 %2148, 0
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %2745, label %2151, !dx.controlflow.hints !104

; <label>:2151                                    ; preds = %2098
  %2152 = add nsw i32 %2149, -1
  %2153 = call i32 @dx.op.binary.i32(i32 37, i32 %2152, i32 0)  ; IMax(a,b)
  br label %2154

; <label>:2154                                    ; preds = %2738, %2151
  %2155 = phi i32 [ 0, %2151 ], [ %2742, %2738 ]
  %2156 = phi float [ 0.000000e+00, %2151 ], [ %2739, %2738 ]
  %2157 = phi float [ 0.000000e+00, %2151 ], [ %2740, %2738 ]
  %2158 = phi float [ 0.000000e+00, %2151 ], [ %2741, %2738 ]
  %2159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.i32 %2159, 0
  %2161 = call i32 @dx.op.tertiary.i32(i32 49, i32 %311, i32 %2160, i32 %2155)  ; UMad(a,b,c)
  %2162 = shl i32 %2161, 2
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2738, label %2166

; <label>:2166                                    ; preds = %2154
  br label %2167

; <label>:2167                                    ; preds = %2606, %2166
  %2168 = phi i32 [ %2177, %2606 ], [ %2164, %2166 ]
  %2169 = phi float [ %2607, %2606 ], [ %2156, %2166 ]
  %2170 = phi float [ %2608, %2606 ], [ %2157, %2166 ]
  %2171 = phi float [ %2609, %2606 ], [ %2158, %2166 ]
  %2172 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2168)  ; FirstbitLo(value)
  %2173 = shl i32 %2155, 5
  %2174 = add i32 %2172, %2173
  %2175 = and i32 %2172, 31
  %2176 = shl i32 1, %2175
  %2177 = xor i32 %2176, %2168
  %2178 = mul i32 %2174, 112
  %2179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.f32 %2179, 0
  %2181 = extractvalue %dx.types.ResRet.f32 %2179, 1
  %2182 = extractvalue %dx.types.ResRet.f32 %2179, 2
  %2183 = or i32 %2178, 12
  %2184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.f32 %2184, 0
  %2186 = add i32 %2178, 16
  %2187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.f32 %2187, 0
  %2189 = extractvalue %dx.types.ResRet.f32 %2187, 1
  %2190 = extractvalue %dx.types.ResRet.f32 %2187, 2
  %2191 = add i32 %2178, 28
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = add i32 %2178, 32
  %2195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.ResRet.f32 %2195, 1
  %2198 = extractvalue %dx.types.ResRet.f32 %2195, 2
  %2199 = add i32 %2178, 44
  %2200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  %2202 = add i32 %2178, 48
  %2203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.ResRet.f32 %2203, 1
  %2206 = extractvalue %dx.types.ResRet.f32 %2203, 2
  %2207 = extractvalue %dx.types.ResRet.f32 %2203, 3
  %2208 = add i32 %2178, 64
  %2209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2208, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.f32 %2209, 0
  %2211 = extractvalue %dx.types.ResRet.f32 %2209, 1
  %2212 = extractvalue %dx.types.ResRet.f32 %2209, 2
  %2213 = extractvalue %dx.types.ResRet.f32 %2209, 3
  %2214 = add i32 %2178, 92
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 65535
  %2218 = uitofp i32 %2217 to float
  %2219 = lshr i32 %2216, 16
  %2220 = uitofp i32 %2219 to float
  %2221 = and i32 %2193, 65535
  %2222 = and i32 %2193, 50331648
  %2223 = icmp eq i32 %2222, 33554432
  %2224 = fdiv fast float 1.000000e+00, %2144
  br i1 %2223, label %2225, label %2417, !dx.controlflow.hints !105

; <label>:2225                                    ; preds = %2167
  %2226 = fsub fast float %2204, %2196
  %2227 = fsub fast float %2205, %2197
  %2228 = fsub fast float %2206, %2198
  %2229 = fmul fast float %2145, %2144
  %2230 = fmul fast float %2146, %2144
  %2231 = fmul fast float %2147, %2144
  %2232 = fadd fast float %2229, %2127
  %2233 = fadd fast float %2230, %2128
  %2234 = fadd fast float %2231, %2129
  %2235 = fmul fast float %2196, 2.000000e+00
  %2236 = fmul fast float %2197, 2.000000e+00
  %2237 = fmul fast float %2198, 2.000000e+00
  %2238 = call float @dx.op.dot3.f32(i32 55, float %2235, float %2236, float %2237, float %2235, float %2236, float %2237)  ; Dot3(ax,ay,az,bx,by,bz)
  %2239 = fdiv fast float %2235, %2238
  %2240 = fdiv fast float %2236, %2238
  %2241 = fdiv fast float %2237, %2238
  %2242 = fsub fast float %2127, %2226
  %2243 = fsub fast float %2128, %2227
  %2244 = fsub fast float %2129, %2228
  %2245 = call float @dx.op.dot3.f32(i32 55, float %2242, float %2243, float %2244, float %2235, float %2236, float %2237)  ; Dot3(ax,ay,az,bx,by,bz)
  %2246 = fmul fast float %2245, %2239
  %2247 = fmul fast float %2245, %2240
  %2248 = fmul fast float %2245, %2241
  %2249 = fsub fast float %2127, %2246
  %2250 = fsub fast float %2128, %2247
  %2251 = fsub fast float %2129, %2248
  %2252 = fsub fast float %2232, %2226
  %2253 = fsub fast float %2233, %2227
  %2254 = fsub fast float %2234, %2228
  %2255 = call float @dx.op.dot3.f32(i32 55, float %2252, float %2253, float %2254, float %2235, float %2236, float %2237)  ; Dot3(ax,ay,az,bx,by,bz)
  %2256 = fmul fast float %2255, %2239
  %2257 = fmul fast float %2255, %2240
  %2258 = fmul fast float %2255, %2241
  %2259 = fsub fast float %2232, %2256
  %2260 = fsub fast float %2233, %2257
  %2261 = fsub fast float %2234, %2258
  %2262 = fsub fast float %2259, %2249
  %2263 = fsub fast float %2260, %2250
  %2264 = fsub fast float %2261, %2251
  %2265 = fsub fast float %2226, %2249
  %2266 = fsub fast float %2227, %2250
  %2267 = fsub fast float %2228, %2251
  %2268 = call float @dx.op.dot3.f32(i32 55, float %2265, float %2266, float %2267, float %2262, float %2263, float %2264)  ; Dot3(ax,ay,az,bx,by,bz)
  %2269 = call float @dx.op.dot3.f32(i32 55, float %2262, float %2263, float %2264, float %2262, float %2263, float %2264)  ; Dot3(ax,ay,az,bx,by,bz)
  %2270 = fdiv fast float %2268, %2269
  %2271 = fcmp fast une float %2249, %2259
  %2272 = fcmp fast une float %2250, %2260
  %2273 = fcmp fast une float %2251, %2261
  %2274 = or i1 %2271, %2272
  %2275 = or i1 %2273, %2274
  %2276 = select i1 %2275, float %2270, float 0.000000e+00
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fmul fast float %2277, %2229
  %2279 = fmul fast float %2277, %2230
  %2280 = fmul fast float %2277, %2231
  %2281 = fadd fast float %2242, %2278
  %2282 = fadd fast float %2243, %2279
  %2283 = fadd fast float %2244, %2280
  %2284 = call float @dx.op.dot3.f32(i32 55, float %2281, float %2282, float %2283, float %2235, float %2236, float %2237)  ; Dot3(ax,ay,az,bx,by,bz)
  %2285 = fdiv fast float %2284, %2238
  %2286 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  %2287 = fmul fast float %2235, %2286
  %2288 = fmul fast float %2236, %2286
  %2289 = fmul fast float %2237, %2286
  %2290 = fadd fast float %2287, %2226
  %2291 = fadd fast float %2288, %2227
  %2292 = fadd fast float %2289, %2228
  %2293 = fmul fast float %2212, %2188
  %2294 = fmul fast float %2212, %2189
  %2295 = fmul fast float %2212, %2190
  %2296 = fadd fast float %2290, %2293
  %2297 = fadd fast float %2291, %2294
  %2298 = fadd fast float %2292, %2295
  %2299 = fsub fast float -0.000000e+00, %2211
  %2300 = fdiv fast float %2299, %2210
  %2301 = fmul fast float %2300, %2300
  %2302 = call float @dx.op.dot3.f32(i32 55, float %2145, float %2146, float %2147, float %2188, float %2189, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2303 = fsub fast float %2127, %2296
  %2304 = fsub fast float %2128, %2297
  %2305 = fsub fast float %2129, %2298
  %2306 = call float @dx.op.dot3.f32(i32 55, float %2303, float %2304, float %2305, float %2188, float %2189, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2307 = fsub fast float %2296, %2127
  %2308 = fsub fast float %2297, %2128
  %2309 = fsub fast float %2298, %2129
  %2310 = fmul fast float %2302, %2302
  %2311 = fsub fast float %2310, %2301
  %2312 = fmul fast float %2306, %2302
  %2313 = call float @dx.op.dot3.f32(i32 55, float %2307, float %2308, float %2309, float %2145, float %2146, float %2147)  ; Dot3(ax,ay,az,bx,by,bz)
  %2314 = fmul fast float %2313, %2301
  %2315 = fadd fast float %2314, %2312
  %2316 = fmul fast float %2315, 2.000000e+00
  %2317 = fmul fast float %2306, %2306
  %2318 = call float @dx.op.dot3.f32(i32 55, float %2307, float %2308, float %2309, float %2307, float %2308, float %2309)  ; Dot3(ax,ay,az,bx,by,bz)
  %2319 = fmul fast float %2318, %2301
  %2320 = fsub fast float %2317, %2319
  %2321 = fmul fast float %2316, %2316
  %2322 = fmul fast float %2311, 4.000000e+00
  %2323 = fmul fast float %2322, %2320
  %2324 = fsub fast float %2321, %2323
  %2325 = fcmp fast ogt float %2324, 0.000000e+00
  br i1 %2325, label %2326, label %2417, !dx.controlflow.hints !106

; <label>:2326                                    ; preds = %2225
  %2327 = call float @dx.op.unary.f32(i32 24, float %2324)  ; Sqrt(value)
  %2328 = fdiv fast float 5.000000e-01, %2311
  %2329 = fsub fast float -0.000000e+00, %2316
  %2330 = fsub fast float %2329, %2327
  %2331 = fmul fast float %2330, %2328
  %2332 = fsub fast float %2327, %2316
  %2333 = fmul fast float %2332, %2328
  %2334 = call float @dx.op.binary.f32(i32 35, float %2331, float %2333)  ; FMax(a,b)
  %2335 = call float @dx.op.binary.f32(i32 36, float %2331, float %2333)  ; FMin(a,b)
  %2336 = fsub fast float %2290, %2127
  %2337 = fsub fast float %2291, %2128
  %2338 = fsub fast float %2292, %2129
  %2339 = call float @dx.op.dot3.f32(i32 55, float %2336, float %2337, float %2338, float %2188, float %2189, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2340 = fdiv fast float %2339, %2302
  %2341 = fcmp fast ogt float %2302, 0.000000e+00
  br i1 %2341, label %2342, label %2345, !dx.controlflow.hints !107

; <label>:2342                                    ; preds = %2326
  %2343 = call float @dx.op.binary.f32(i32 36, float %2335, float %2340)  ; FMin(a,b)
  %2344 = call float @dx.op.binary.f32(i32 36, float %2334, float %2340)  ; FMin(a,b)
  br label %2348

; <label>:2345                                    ; preds = %2326
  %2346 = call float @dx.op.binary.f32(i32 35, float %2335, float %2340)  ; FMax(a,b)
  %2347 = call float @dx.op.binary.f32(i32 35, float %2334, float %2340)  ; FMax(a,b)
  br label %2348

; <label>:2348                                    ; preds = %2345, %2342
  %2349 = phi float [ %2343, %2342 ], [ %2346, %2345 ]
  %2350 = phi float [ %2344, %2342 ], [ %2347, %2345 ]
  %2351 = fcmp fast oge float %2349, 0.000000e+00
  %2352 = fcmp fast olt float %2349, %2144
  %2353 = and i1 %2351, %2352
  %2354 = fcmp fast ogt float %2350, 0.000000e+00
  %2355 = fcmp fast ole float %2350, %2144
  %2356 = and i1 %2354, %2355
  %2357 = or i1 %2353, %2356
  br i1 %2357, label %2358, label %2417, !dx.controlflow.hints !108

; <label>:2358                                    ; preds = %2348
  %2359 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2349)  ; FMax(a,b)
  %2360 = call float @dx.op.binary.f32(i32 36, float %2144, float %2350)  ; FMin(a,b)
  br i1 %2341, label %2361, label %2383, !dx.controlflow.hints !109

; <label>:2361                                    ; preds = %2358
  %2362 = fmul fast float %2360, %2145
  %2363 = fmul fast float %2360, %2146
  %2364 = fmul fast float %2360, %2147
  %2365 = fsub fast float %2307, %2362
  %2366 = fsub fast float %2308, %2363
  %2367 = fsub fast float %2309, %2364
  %2368 = call float @dx.op.dot3.f32(i32 55, float %2365, float %2366, float %2367, float %2365, float %2366, float %2367)  ; Dot3(ax,ay,az,bx,by,bz)
  %2369 = call float @dx.op.unary.f32(i32 25, float %2368)  ; Rsqrt(value)
  %2370 = fmul fast float %2369, %2365
  %2371 = fmul fast float %2369, %2366
  %2372 = fmul fast float %2369, %2367
  %2373 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float %2188, float %2189, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2374 = fmul fast float %2373, %2210
  %2375 = fadd fast float %2374, %2211
  %2376 = fcmp fast olt float %2375, 0xBF1A36E2E0000000
  %2377 = select i1 %2376, float 0.000000e+00, float %2359
  %2378 = select i1 %2376, float %2359, float %2360
  %2379 = fsub fast float %2377, %2378
  %2380 = call float @dx.op.unary.f32(i32 6, float %2379)  ; FAbs(value)
  %2381 = fcmp fast olt float %2380, 0x3F1A36E2E0000000
  br i1 %2381, label %2382, label %2405, !dx.controlflow.hints !110

; <label>:2382                                    ; preds = %2361
  br label %2405

; <label>:2383                                    ; preds = %2358
  %2384 = fmul fast float %2359, %2145
  %2385 = fmul fast float %2359, %2146
  %2386 = fmul fast float %2359, %2147
  %2387 = fsub fast float %2307, %2384
  %2388 = fsub fast float %2308, %2385
  %2389 = fsub fast float %2309, %2386
  %2390 = call float @dx.op.dot3.f32(i32 55, float %2387, float %2388, float %2389, float %2387, float %2388, float %2389)  ; Dot3(ax,ay,az,bx,by,bz)
  %2391 = call float @dx.op.unary.f32(i32 25, float %2390)  ; Rsqrt(value)
  %2392 = fmul fast float %2391, %2387
  %2393 = fmul fast float %2391, %2388
  %2394 = fmul fast float %2391, %2389
  %2395 = call float @dx.op.dot3.f32(i32 55, float %2392, float %2393, float %2394, float %2188, float %2189, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2396 = fmul fast float %2395, %2210
  %2397 = fadd fast float %2396, %2211
  %2398 = fcmp fast olt float %2397, 0xBF1A36E2E0000000
  %2399 = select i1 %2398, float %2360, float %2359
  %2400 = select i1 %2398, float %2144, float %2360
  %2401 = fsub fast float %2399, %2400
  %2402 = call float @dx.op.unary.f32(i32 6, float %2401)  ; FAbs(value)
  %2403 = fcmp fast olt float %2402, 0x3F1A36E2E0000000
  br i1 %2403, label %2404, label %2405, !dx.controlflow.hints !111

; <label>:2404                                    ; preds = %2383
  br label %2405

; <label>:2405                                    ; preds = %2404, %2383, %2382, %2361
  %2406 = phi float [ 0.000000e+00, %2382 ], [ %2377, %2361 ], [ %2399, %2404 ], [ %2399, %2383 ]
  %2407 = phi float [ %2378, %2382 ], [ %2378, %2361 ], [ %2144, %2404 ], [ %2400, %2383 ]
  %2408 = fmul fast float %2406, %2145
  %2409 = fmul fast float %2406, %2146
  %2410 = fmul fast float %2406, %2147
  %2411 = fadd fast float %2408, %2127
  %2412 = fadd fast float %2409, %2128
  %2413 = fadd fast float %2410, %2129
  %2414 = fsub fast float %2407, %2406
  %2415 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2414)  ; FMax(a,b)
  %2416 = fmul fast float %2415, %2224
  br label %2417

; <label>:2417                                    ; preds = %2405, %2348, %2225, %2167
  %2418 = phi float [ %2296, %2405 ], [ %2296, %2348 ], [ %2296, %2225 ], [ %2204, %2167 ]
  %2419 = phi float [ %2297, %2405 ], [ %2297, %2348 ], [ %2297, %2225 ], [ %2205, %2167 ]
  %2420 = phi float [ %2298, %2405 ], [ %2298, %2348 ], [ %2298, %2225 ], [ %2206, %2167 ]
  %2421 = phi float [ %2411, %2405 ], [ %2127, %2348 ], [ %2127, %2225 ], [ %2127, %2167 ]
  %2422 = phi float [ %2412, %2405 ], [ %2128, %2348 ], [ %2128, %2225 ], [ %2128, %2167 ]
  %2423 = phi float [ %2413, %2405 ], [ %2129, %2348 ], [ %2129, %2225 ], [ %2129, %2167 ]
  %2424 = phi float [ %2415, %2405 ], [ %2144, %2348 ], [ %2144, %2225 ], [ %2144, %2167 ]
  %2425 = phi float [ %2416, %2405 ], [ 1.000000e+00, %2348 ], [ 1.000000e+00, %2225 ], [ 1.000000e+00, %2167 ]
  %2426 = fsub fast float %2418, %2421
  %2427 = fsub fast float %2419, %2422
  %2428 = fsub fast float %2420, %2423
  %2429 = call float @dx.op.dot3.f32(i32 55, float %2426, float %2427, float %2428, float %2145, float %2146, float %2147)  ; Dot3(ax,ay,az,bx,by,bz)
  %2430 = call float @dx.op.binary.f32(i32 35, float %2429, float 0.000000e+00)  ; FMax(a,b)
  %2431 = call float @dx.op.binary.f32(i32 36, float %2430, float %2424)  ; FMin(a,b)
  %2432 = fmul fast float %2431, %2145
  %2433 = fmul fast float %2431, %2146
  %2434 = fmul fast float %2431, %2147
  %2435 = fsub fast float %2421, %2418
  %2436 = fadd fast float %2435, %2432
  %2437 = fsub fast float %2422, %2419
  %2438 = fadd fast float %2437, %2433
  %2439 = fsub fast float %2423, %2420
  %2440 = fadd fast float %2439, %2434
  %2441 = fmul fast float %2436, %2436
  %2442 = fmul fast float %2438, %2438
  %2443 = fadd fast float %2441, %2442
  %2444 = fmul fast float %2440, %2440
  %2445 = fadd fast float %2443, %2444
  %2446 = call float @dx.op.unary.f32(i32 24, float %2445)  ; Sqrt(value)
  %2447 = fsub fast float -0.000000e+00, %2431
  %2448 = call float @dx.op.unary.f32(i32 6, float %2447)  ; FAbs(value)
  %2449 = fadd fast float %2448, 0x3DDB7CDFE0000000
  %2450 = fcmp fast oge float %2446, 0.000000e+00
  %2451 = fsub fast float -0.000000e+00, %2449
  %2452 = select i1 %2450, float %2451, float %2449
  %2453 = fadd fast float %2452, %2446
  %2454 = fsub fast float -0.000000e+00, %2446
  %2455 = select i1 %2450, float %2446, float %2454
  %2456 = fadd fast float %2449, %2455
  %2457 = fdiv fast float %2453, %2456
  %2458 = select i1 %2450, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %2459 = fmul fast float %2457, %2457
  %2460 = fmul fast float %2459, 0x3FC9205BC0000000
  %2461 = fadd fast float %2460, 0xBFEF6A1620000000
  %2462 = fmul fast float %2461, %2457
  %2463 = fadd fast float %2462, %2458
  %2464 = fcmp ole float %2431, -0.000000e+00
  %2465 = fsub fast float -0.000000e+00, %2463
  %2466 = select i1 %2464, float %2463, float %2465
  %2467 = fsub fast float %2424, %2431
  %2468 = call float @dx.op.unary.f32(i32 6, float %2467)  ; FAbs(value)
  %2469 = fadd fast float %2468, 0x3DDB7CDFE0000000
  %2470 = fsub fast float -0.000000e+00, %2469
  %2471 = select i1 %2450, float %2470, float %2469
  %2472 = fadd fast float %2471, %2446
  %2473 = fadd fast float %2469, %2455
  %2474 = fdiv fast float %2472, %2473
  %2475 = fmul fast float %2474, %2474
  %2476 = fmul fast float %2475, 0x3FC9205BC0000000
  %2477 = fadd fast float %2476, 0xBFEF6A1620000000
  %2478 = fmul fast float %2477, %2474
  %2479 = fadd fast float %2478, %2458
  %2480 = fcmp fast oge float %2467, 0.000000e+00
  %2481 = fsub fast float -0.000000e+00, %2479
  %2482 = select i1 %2480, float %2479, float %2481
  %2483 = fsub fast float %2482, %2466
  %2484 = fmul fast float %2483, %116
  %2485 = fadd fast float %2484, %2466
  %2486 = call float @dx.op.unary.f32(i32 14, float %2485)  ; Tan(value)
  %2487 = fmul fast float %2486, %2446
  %2488 = fadd fast float %2487, %2431
  %2489 = fmul fast float %2446, %2446
  %2490 = fmul fast float %2487, %2487
  %2491 = fadd fast float %2490, %2489
  %2492 = fmul fast float %2483, %2491
  %2493 = fdiv fast float %2446, %2492
  %2494 = fdiv fast float 1.000000e+00, %2493
  %2495 = fmul fast float %2425, %2224
  %2496 = fmul fast float %2495, %2494
  %2497 = fmul fast float %2488, %2145
  %2498 = fmul fast float %2488, %2146
  %2499 = fmul fast float %2488, %2147
  %2500 = fadd fast float %2497, %2421
  %2501 = fadd fast float %2498, %2422
  %2502 = fadd fast float %2499, %2423
  %2503 = call float @dx.op.dot3.f32(i32 55, float %2196, float %2197, float %2198, float %2196, float %2197, float %2198)  ; Dot3(ax,ay,az,bx,by,bz)
  %2504 = fsub fast float %2500, %2204
  %2505 = fsub fast float %2501, %2205
  %2506 = fsub fast float %2502, %2206
  %2507 = call float @dx.op.dot3.f32(i32 55, float %2504, float %2505, float %2506, float %2196, float %2197, float %2198)  ; Dot3(ax,ay,az,bx,by,bz)
  %2508 = fdiv fast float %2507, %2503
  %2509 = call float @dx.op.binary.f32(i32 35, float %2508, float -1.000000e+00)  ; FMax(a,b)
  %2510 = call float @dx.op.binary.f32(i32 36, float %2509, float 1.000000e+00)  ; FMin(a,b)
  %2511 = fmul fast float %2510, %2196
  %2512 = fmul fast float %2510, %2197
  %2513 = fmul fast float %2510, %2198
  %2514 = fadd fast float %2511, %2204
  %2515 = fadd fast float %2512, %2205
  %2516 = fadd fast float %2513, %2206
  %2517 = fsub fast float %2514, %2500
  %2518 = fsub fast float %2515, %2501
  %2519 = fsub fast float %2516, %2502
  %2520 = call float @dx.op.dot3.f32(i32 55, float %2517, float %2518, float %2519, float %2517, float %2518, float %2519)  ; Dot3(ax,ay,az,bx,by,bz)
  %2521 = call float @dx.op.unary.f32(i32 24, float %2520)  ; Sqrt(value)
  %2522 = fdiv fast float 1.000000e+00, %2521
  %2523 = fmul fast float %2517, %2522
  %2524 = fmul fast float %2518, %2522
  %2525 = fmul fast float %2519, %2522
  %2526 = fadd fast float %2521, %2185
  %2527 = fdiv fast float 1.000000e+00, %2526
  %2528 = fmul float %2201, %2527
  %2529 = fmul float %2528, %2528
  %2530 = call float @dx.op.unary.f32(i32 7, float %2529)  ; Saturate(value)
  br i1 %2223, label %2531, label %2555, !dx.controlflow.hints !112

; <label>:2531                                    ; preds = %2417
  %2532 = fmul fast float %2212, %2188
  %2533 = fmul fast float %2212, %2189
  %2534 = fmul fast float %2212, %2190
  %2535 = fsub fast float %2532, %2500
  %2536 = fadd fast float %2535, %2514
  %2537 = fsub fast float %2533, %2501
  %2538 = fadd fast float %2537, %2515
  %2539 = fsub fast float %2534, %2502
  %2540 = fadd fast float %2539, %2516
  %2541 = call float @dx.op.dot3.f32(i32 55, float %2536, float %2538, float %2540, float %2536, float %2538, float %2540)  ; Dot3(ax,ay,az,bx,by,bz)
  %2542 = call float @dx.op.unary.f32(i32 25, float %2541)  ; Rsqrt(value)
  %2543 = fmul fast float %2542, %2536
  %2544 = fmul fast float %2542, %2538
  %2545 = fmul fast float %2542, %2540
  %2546 = fsub fast float %2500, %2514
  %2547 = fsub fast float %2501, %2515
  %2548 = fsub fast float %2502, %2516
  %2549 = fsub fast float -0.000000e+00, %2546
  %2550 = fsub fast float -0.000000e+00, %2547
  %2551 = fsub fast float -0.000000e+00, %2548
  %2552 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2550, float %2551, float %2188, float %2189, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2553 = fcmp fast ogt float %2552, 0.000000e+00
  %2554 = uitofp i1 %2553 to float
  br label %2555

; <label>:2555                                    ; preds = %2531, %2417
  %2556 = phi float [ %2554, %2531 ], [ 1.000000e+00, %2417 ]
  %2557 = phi float [ %2543, %2531 ], [ %2523, %2417 ]
  %2558 = phi float [ %2544, %2531 ], [ %2524, %2417 ]
  %2559 = phi float [ %2545, %2531 ], [ %2525, %2417 ]
  %2560 = call float @dx.op.dot3.f32(i32 55, float %2188, float %2189, float %2190, float %2557, float %2558, float %2559)  ; Dot3(ax,ay,az,bx,by,bz)
  %2561 = fmul fast float %2560, %2560
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2563 = fsub fast float 1.000000e+00, %2562
  %2564 = fmul fast float %2563, 5.000000e-01
  %2565 = fcmp fast ogt float %2560, 0.000000e+00
  %2566 = fsub fast float 1.000000e+00, %2564
  %2567 = select i1 %2565, float %2564, float %2566
  %2568 = fmul fast float %2567, %2220
  %2569 = fadd fast float %2568, %2218
  %2570 = fmul fast float %2569, 0x3EF0001000000000
  %2571 = fsub fast float %2514, %384
  %2572 = fsub fast float %2515, %385
  %2573 = fsub fast float %2516, %386
  %2574 = call float @dx.op.dot3.f32(i32 55, float %2571, float %2572, float %2573, float %2571, float %2572, float %2573)  ; Dot3(ax,ay,az,bx,by,bz)
  %2575 = fmul fast float %2104, %2104
  %2576 = fsub fast float %2574, %2575
  %2577 = fdiv fast float %2576, %2574
  %2578 = call float @dx.op.unary.f32(i32 24, float %2577)  ; Sqrt(value)
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fcmp fast olt float %2574, %2575
  %2581 = fmul fast float %2579, 2.560000e+02
  %2582 = select i1 %2580, float 2.560000e+02, float %2581
  %2583 = call float @dx.op.unary.f32(i32 23, float %2582)  ; Log(value)
  %2584 = call float @dx.op.binary.f32(i32 36, float %2583, float 7.000000e+00)  ; FMin(a,b)
  %2585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %33, float %2570, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %2584)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  %2587 = fmul fast float %2560, %2210
  %2588 = fadd fast float %2587, %2211
  %2589 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  %2590 = select i1 %2223, float 1.000000e+00, float %2589
  %2591 = select i1 %2223, float %2589, float 1.000000e+00
  %2592 = fmul fast float %2521, %2207
  %2593 = fsub fast float 1.000000e+00, %2592
  %2594 = fmul fast float %2593, %2213
  %2595 = call float @dx.op.unary.f32(i32 7, float %2594)  ; Saturate(value)
  %2596 = fmul fast float %2595, %2591
  %2597 = fmul fast float %2596, 2.000000e+00
  %2598 = fsub fast float 3.000000e+00, %2597
  %2599 = fmul fast float %2586, %2556
  %2600 = fmul fast float %2596, %2596
  %2601 = fmul fast float %2600, %2599
  %2602 = fmul fast float %2601, %2598
  %2603 = call float @dx.op.binary.f32(i32 36, float %2602, float %2602)  ; FMin(a,b)
  %2604 = call float @dx.op.binary.f32(i32 36, float %2602, float %2603)  ; FMin(a,b)
  %2605 = fcmp fast ogt float %2604, 0.000000e+00
  br i1 %2605, label %2611, label %2606, !dx.controlflow.hints !113

; <label>:2606                                    ; preds = %2704, %2699, %2555
  %2607 = phi float [ %2734, %2704 ], [ %2169, %2699 ], [ %2169, %2555 ]
  %2608 = phi float [ %2735, %2704 ], [ %2170, %2699 ], [ %2170, %2555 ]
  %2609 = phi float [ %2736, %2704 ], [ %2171, %2699 ], [ %2171, %2555 ]
  %2610 = icmp eq i32 %2168, %2176
  br i1 %2610, label %2737, label %2167

; <label>:2611                                    ; preds = %2555
  %2612 = icmp eq i32 %2221, 255
  br i1 %2612, label %2699, label %2613, !dx.controlflow.hints !114

; <label>:2613                                    ; preds = %2611
  %2614 = mul nuw nsw i32 %2221, 176
  %2615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.ResRet.f32 %2615, 1
  %2618 = extractvalue %dx.types.ResRet.f32 %2615, 2
  %2619 = extractvalue %dx.types.ResRet.f32 %2615, 3
  %2620 = add nuw nsw i32 %2614, 16
  %2621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.f32 %2621, 0
  %2623 = extractvalue %dx.types.ResRet.f32 %2621, 1
  %2624 = add nuw nsw i32 %2614, 32
  %2625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.f32 %2625, 0
  %2627 = extractvalue %dx.types.ResRet.f32 %2625, 2
  %2628 = add nuw nsw i32 %2614, 48
  %2629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.ResRet.f32 %2629, 1
  %2632 = extractvalue %dx.types.ResRet.f32 %2629, 2
  %2633 = extractvalue %dx.types.ResRet.f32 %2629, 3
  %2634 = add nuw nsw i32 %2614, 64
  %2635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  %2637 = extractvalue %dx.types.ResRet.f32 %2635, 1
  %2638 = extractvalue %dx.types.ResRet.f32 %2635, 2
  %2639 = extractvalue %dx.types.ResRet.f32 %2635, 3
  %2640 = add nuw nsw i32 %2614, 80
  %2641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.ResRet.f32 %2641, 1
  %2644 = extractvalue %dx.types.ResRet.f32 %2641, 2
  %2645 = extractvalue %dx.types.ResRet.f32 %2641, 3
  %2646 = add nuw nsw i32 %2614, 96
  %2647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.f32 %2647, 0
  %2649 = extractvalue %dx.types.ResRet.f32 %2647, 1
  %2650 = extractvalue %dx.types.ResRet.f32 %2647, 2
  %2651 = extractvalue %dx.types.ResRet.f32 %2647, 3
  %2652 = bitcast float %2623 to i32
  %2653 = fmul fast float %2627, %2523
  %2654 = fmul fast float %2627, %2524
  %2655 = fmul fast float %2627, %2525
  %2656 = fsub fast float %2500, %2653
  %2657 = fsub fast float %2501, %2654
  %2658 = fsub fast float %2502, %2655
  %2659 = fmul fast float %2656, %2630
  %2660 = call float @dx.op.tertiary.f32(i32 46, float %2657, float %2636, float %2659)  ; FMad(a,b,c)
  %2661 = call float @dx.op.tertiary.f32(i32 46, float %2658, float %2642, float %2660)  ; FMad(a,b,c)
  %2662 = fadd fast float %2661, %2648
  %2663 = fmul fast float %2656, %2631
  %2664 = call float @dx.op.tertiary.f32(i32 46, float %2657, float %2637, float %2663)  ; FMad(a,b,c)
  %2665 = call float @dx.op.tertiary.f32(i32 46, float %2658, float %2643, float %2664)  ; FMad(a,b,c)
  %2666 = fadd fast float %2665, %2649
  %2667 = fmul fast float %2656, %2632
  %2668 = call float @dx.op.tertiary.f32(i32 46, float %2657, float %2638, float %2667)  ; FMad(a,b,c)
  %2669 = call float @dx.op.tertiary.f32(i32 46, float %2658, float %2644, float %2668)  ; FMad(a,b,c)
  %2670 = fadd fast float %2669, %2650
  %2671 = fmul fast float %2656, %2633
  %2672 = call float @dx.op.tertiary.f32(i32 46, float %2657, float %2639, float %2671)  ; FMad(a,b,c)
  %2673 = call float @dx.op.tertiary.f32(i32 46, float %2658, float %2645, float %2672)  ; FMad(a,b,c)
  %2674 = fadd fast float %2673, %2651
  %2675 = fdiv fast float %2662, %2674
  %2676 = fdiv fast float %2666, %2674
  %2677 = fdiv fast float %2670, %2674
  %2678 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %2677)  ; FMax(a,b)
  %2679 = fmul fast float %2618, 5.000000e-01
  %2680 = call float @dx.op.tertiary.f32(i32 46, float %2679, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %2681 = fadd fast float %2680, %2675
  %2682 = fadd fast float %2676, %2679
  %2683 = fmul fast float %2681, %2622
  %2684 = fmul fast float %2682, %2622
  %2685 = call float @dx.op.binary.f32(i32 35, float %2683, float %2618)  ; FMax(a,b)
  %2686 = call float @dx.op.binary.f32(i32 35, float %2684, float %2618)  ; FMax(a,b)
  %2687 = call float @dx.op.binary.f32(i32 36, float %2685, float %2619)  ; FMin(a,b)
  %2688 = call float @dx.op.binary.f32(i32 36, float %2686, float %2619)  ; FMin(a,b)
  %2689 = fadd fast float %2687, %2616
  %2690 = fadd fast float %2688, %2617
  %2691 = uitofp i32 %2652 to float
  %2692 = fadd fast float %2678, %2626
  %2693 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %36, float %2689, float %2690, float %2691, float undef, i32 0, i32 0, i32 undef, float %2692)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2694 = extractvalue %dx.types.ResRet.f32 %2693, 0
  %2695 = fadd fast float %2694, -1.000000e+00
  %2696 = fmul fast float %2695, %2590
  %2697 = fadd fast float %2696, 1.000000e+00
  %2698 = fmul fast float %2697, %2602
  br label %2699

; <label>:2699                                    ; preds = %2613, %2611
  %2700 = phi float [ %2698, %2613 ], [ %2602, %2611 ]
  %2701 = call float @dx.op.binary.f32(i32 36, float %2700, float %2700)  ; FMin(a,b)
  %2702 = call float @dx.op.binary.f32(i32 36, float %2700, float %2701)  ; FMin(a,b)
  %2703 = fcmp fast ogt float %2702, 0.000000e+00
  br i1 %2703, label %2704, label %2606, !dx.controlflow.hints !115

; <label>:2704                                    ; preds = %2699
  %2705 = call float @dx.op.dot3.f32(i32 55, float %2523, float %2524, float %2525, float %205, float %206, float %207)  ; Dot3(ax,ay,az,bx,by,bz)
  %2706 = fcmp fast ogt float %2103, 0.000000e+00
  %2707 = select i1 %2706, float 1.000000e+00, float -1.000000e+00
  %2708 = fmul fast float %116, 7.812500e-03
  %2709 = fmul fast float %116, 3.125000e-02
  %2710 = fadd fast float %2709, -3.125000e-02
  %2711 = fmul fast float %2707, 5.000000e-01
  %2712 = fmul fast float %2711, %2705
  %2713 = fmul fast float %2707, %2103
  %2714 = fadd fast float %2708, 4.921875e-01
  %2715 = fadd fast float %2714, %2712
  %2716 = fadd fast float %2708, 0x3FB25F3060000000
  %2717 = fadd fast float %2710, %2713
  %2718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %35, float %2715, float %2716, float %2717, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2719 = extractvalue %dx.types.ResRet.f32 %2718, 0
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2721 = extractvalue %dx.types.CBufRet.f32 %2720, 1
  %2722 = extractvalue %dx.types.CBufRet.f32 %2720, 2
  %2723 = select i1 %2223, float %2721, float %2722
  %2724 = fmul fast float %2530, 0x400921FB60000000
  %2725 = fmul fast float %2724, %2700
  %2726 = fmul fast float %2725, %2719
  %2727 = fmul fast float %2726, %2723
  %2728 = fmul fast float %2496, %2180
  %2729 = fmul fast float %2728, %2727
  %2730 = fmul fast float %2496, %2181
  %2731 = fmul fast float %2730, %2727
  %2732 = fmul fast float %2496, %2182
  %2733 = fmul fast float %2732, %2727
  %2734 = fadd fast float %2729, %2169
  %2735 = fadd fast float %2731, %2170
  %2736 = fadd fast float %2733, %2171
  br label %2606

; <label>:2737                                    ; preds = %2606
  br label %2738

; <label>:2738                                    ; preds = %2737, %2154
  %2739 = phi float [ %2156, %2154 ], [ %2607, %2737 ]
  %2740 = phi float [ %2157, %2154 ], [ %2608, %2737 ]
  %2741 = phi float [ %2158, %2154 ], [ %2609, %2737 ]
  %2742 = add i32 %2155, 1
  %2743 = icmp ugt i32 %2742, %2153
  br i1 %2743, label %2744, label %2154

; <label>:2744                                    ; preds = %2738
  br label %2745

; <label>:2745                                    ; preds = %2744, %2098
  %2746 = phi float [ 0.000000e+00, %2098 ], [ %2739, %2744 ]
  %2747 = phi float [ 0.000000e+00, %2098 ], [ %2740, %2744 ]
  %2748 = phi float [ 0.000000e+00, %2098 ], [ %2741, %2744 ]
  %2749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %33, float %141, float %142, float %143, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2750 = extractvalue %dx.types.ResRet.f32 %2749, 0
  %2751 = extractvalue %dx.types.ResRet.f32 %2749, 1
  %2752 = extractvalue %dx.types.ResRet.f32 %2749, 2
  %2753 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2750)  ; IsNaN(value)
  %2754 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2751)  ; IsNaN(value)
  %2755 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %2752)  ; IsNaN(value)
  %2756 = or i1 %2753, %2754
  %2757 = or i1 %2756, %2755
  %2758 = select i1 %2757, float 0.000000e+00, float %2750
  %2759 = select i1 %2757, float 0.000000e+00, float %2751
  %2760 = select i1 %2757, float 0.000000e+00, float %2752
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 1
  %2763 = fmul fast float %2758, %2762
  %2764 = fmul fast float %2759, %2762
  %2765 = fmul fast float %2760, %2762
  %2766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2767 = extractvalue %dx.types.CBufRet.f32 %2766, 3
  %2768 = fmul fast float %2763, %2767
  %2769 = fmul fast float %2764, %2767
  %2770 = fmul fast float %2765, %2767
  %2771 = fadd fast float %2768, %2746
  %2772 = fadd fast float %2769, %2747
  %2773 = fadd fast float %2770, %2748
  br label %2774

; <label>:2774                                    ; preds = %2745, %2091
  %2775 = phi float [ %2100, %2745 ], [ %2092, %2091 ]
  %2776 = phi float [ %2101, %2745 ], [ %2093, %2091 ]
  %2777 = phi float [ %2102, %2745 ], [ %2094, %2091 ]
  %2778 = phi float [ %2771, %2745 ], [ 0.000000e+00, %2091 ]
  %2779 = phi float [ %2772, %2745 ], [ 0.000000e+00, %2091 ]
  %2780 = phi float [ %2773, %2745 ], [ 0.000000e+00, %2091 ]
  %2781 = fmul fast float %2775, %2096
  %2782 = fmul fast float %2776, %2096
  %2783 = fmul fast float %2777, %2096
  %2784 = fmul fast float %2781, %2778
  %2785 = fmul fast float %2782, %2779
  %2786 = fmul fast float %2783, %2780
  %2787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.f32 %2787, 0
  %2789 = extractvalue %dx.types.CBufRet.f32 %2787, 1
  %2790 = extractvalue %dx.types.CBufRet.f32 %2787, 2
  %2791 = extractvalue %dx.types.CBufRet.f32 %2787, 3
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2796 = extractvalue %dx.types.CBufRet.f32 %2792, 3
  %2797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.f32 %2797, 0
  %2799 = extractvalue %dx.types.CBufRet.f32 %2797, 1
  %2800 = extractvalue %dx.types.CBufRet.f32 %2797, 2
  %2801 = extractvalue %dx.types.CBufRet.f32 %2797, 3
  %2802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2802, 0
  %2804 = extractvalue %dx.types.CBufRet.f32 %2802, 1
  %2805 = extractvalue %dx.types.CBufRet.f32 %2802, 2
  %2806 = extractvalue %dx.types.CBufRet.f32 %2802, 3
  %2807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2808 = extractvalue %dx.types.CBufRet.f32 %2807, 3
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 3
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2812 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2813 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2814 = fcmp fast olt float %2813, -5.000000e-01
  %2815 = fmul fast float %204, %203
  %2816 = fadd fast float %2815, %2791
  %2817 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %2788, float %2789, float %2790)  ; Dot3(ax,ay,az,bx,by,bz)
  %2818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.i32 %2818, 1
  %2820 = and i32 %2819, 1
  %2821 = icmp ne i32 %2820, 0
  %2822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2823 = extractvalue %dx.types.CBufRet.f32 %2822, 2
  %2824 = fcmp fast ogt float %2823, 0.000000e+00
  %2825 = and i1 %2821, %2824
  br i1 %2825, label %2826, label %3232, !dx.controlflow.hints !116

; <label>:2826                                    ; preds = %2774
  %2827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2828 = extractvalue %dx.types.CBufRet.f32 %2827, 3
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 2
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %2833 = fsub fast float %2830, %2832
  %2834 = and i32 %2819, 2
  %2835 = extractvalue %dx.types.CBufRet.i32 %2818, 0
  %2836 = call i32 @dx.op.binary.i32(i32 40, i32 %2835, i32 3)  ; UMin(a,b)
  %2837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.CBufRet.f32 %2837, 1
  %2840 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2841 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2842 = fsub fast float %2838, %2840
  %2843 = fsub fast float %2839, %2841
  %2844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2845 = extractvalue %dx.types.CBufRet.f32 %2844, 0
  %2846 = fcmp fast ogt float %2845, 0.000000e+00
  %2847 = fsub fast float -0.000000e+00, %2842
  %2848 = fsub fast float -0.000000e+00, %2843
  %2849 = call float @dx.op.dot2.f32(i32 54, float %205, float %206, float %205, float %206)  ; Dot2(ax,ay,bx,by)
  %2850 = call float @dx.op.dot2.f32(i32 54, float %205, float %206, float %2847, float %2848)  ; Dot2(ax,ay,bx,by)
  %2851 = fmul fast float %2850, 2.000000e+00
  %2852 = call float @dx.op.dot2.f32(i32 54, float %2847, float %2848, float %2847, float %2848)  ; Dot2(ax,ay,bx,by)
  %2853 = fmul fast float %2845, %2845
  %2854 = fsub fast float %2852, %2853
  %2855 = fmul fast float %2851, %2851
  %2856 = fmul fast float %2849, 4.000000e+00
  %2857 = fmul fast float %2856, %2854
  %2858 = fsub fast float %2855, %2857
  %2859 = fcmp fast ogt float %2858, 0.000000e+00
  br i1 %2859, label %2860, label %2875, !dx.controlflow.hints !117

; <label>:2860                                    ; preds = %2826
  %2861 = fcmp fast ogt float %2851, 0.000000e+00
  %2862 = call float @dx.op.unary.f32(i32 24, float %2858)  ; Sqrt(value)
  %2863 = fsub fast float -0.000000e+00, %2862
  %2864 = select i1 %2861, float %2862, float %2863
  %2865 = fadd fast float %2864, %2851
  %2866 = fmul float %2865, -5.000000e-01
  %2867 = fdiv fast float %2866, %2849
  %2868 = call float @dx.op.binary.f32(i32 35, float %2867, float 0.000000e+00)  ; FMax(a,b)
  %2869 = call float @dx.op.binary.f32(i32 36, float %2815, float %2868)  ; FMin(a,b)
  %2870 = fdiv fast float %2854, %2866
  %2871 = call float @dx.op.binary.f32(i32 35, float %2870, float 0.000000e+00)  ; FMax(a,b)
  %2872 = call float @dx.op.binary.f32(i32 36, float %2815, float %2871)  ; FMin(a,b)
  %2873 = call float @dx.op.binary.f32(i32 36, float %2869, float %2872)  ; FMin(a,b)
  %2874 = call float @dx.op.binary.f32(i32 35, float %2869, float %2872)  ; FMax(a,b)
  br label %2875

; <label>:2875                                    ; preds = %2860, %2826
  %2876 = phi float [ %2874, %2860 ], [ -1.000000e+00, %2826 ]
  %2877 = phi float [ %2873, %2860 ], [ -1.000000e+00, %2826 ]
  %2878 = phi i1 [ true, %2860 ], [ false, %2826 ]
  %2879 = and i1 %2846, %2878
  br i1 %2879, label %2880, label %2882, !dx.controlflow.hints !118

; <label>:2880                                    ; preds = %2875
  %2881 = fcmp fast oeq float %2877, %2876
  br i1 %2881, label %3185, label %2883, !dx.controlflow.hints !119

; <label>:2882                                    ; preds = %2875
  br i1 %2846, label %3185, label %2883, !dx.controlflow.hints !120

; <label>:2883                                    ; preds = %2882, %2880
  %2884 = phi float [ %2815, %2882 ], [ %2876, %2880 ]
  %2885 = phi float [ 0.000000e+00, %2882 ], [ %2877, %2880 ]
  %2886 = icmp ne i32 %2834, 0
  %2887 = fmul fast float %2884, %207
  %2888 = fadd fast float %2887, %2828
  %2889 = fmul fast float %2888, %2884
  %2890 = select i1 %2886, float 0.000000e+00, float %2889
  %2891 = fcmp fast oeq float %207, 0.000000e+00
  %2892 = fdiv fast float %2833, %207
  %2893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2892)  ; FMax(a,b)
  %2894 = select i1 %2891, float %2884, float %2893
  %2895 = call float @dx.op.binary.f32(i32 36, float %2884, float %2894)  ; FMin(a,b)
  %2896 = fcmp fast ogt float %207, 0.000000e+00
  %2897 = fcmp fast olt float %2833, 0.000000e+00
  br i1 %2896, label %2898, label %2955, !dx.controlflow.hints !121

; <label>:2898                                    ; preds = %2883
  %2899 = icmp eq i32 %2834, 0
  br i1 %2897, label %2900, label %2944, !dx.controlflow.hints !122

; <label>:2900                                    ; preds = %2898
  %2901 = select i1 %2899, float %2884, float 0.000000e+00
  %2902 = fsub fast float -0.000000e+00, %2901
  %2903 = call float @dx.op.unary.f32(i32 6, float %2902)  ; FAbs(value)
  %2904 = fmul fast float %2901, %207
  %2905 = fadd fast float %2904, %2828
  %2906 = fmul fast float %2903, %2905
  %2907 = fsub fast float %2890, %2906
  %2908 = fsub fast float %2884, %2903
  %2909 = select i1 %2899, float %2908, float 0.000000e+00
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 0
  %2912 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %2913 = extractvalue %dx.types.CBufRet.f32 %2910, 2
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 0
  %2916 = extractvalue %dx.types.CBufRet.f32 %2914, 1
  %2917 = extractvalue %dx.types.CBufRet.f32 %2914, 2
  %2918 = extractvalue %dx.types.CBufRet.f32 %2914, 3
  %2919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2919, 3
  %2921 = call float @dx.op.binary.f32(i32 36, float %2907, float %2920)  ; FMin(a,b)
  %2922 = fmul fast float %2918, %2909
  %2923 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2924 = fsub fast float %2915, %2911
  %2925 = fsub fast float %2916, %2912
  %2926 = fsub fast float %2917, %2913
  %2927 = fmul fast float %2923, %2924
  %2928 = fmul fast float %2923, %2925
  %2929 = fmul fast float %2923, %2926
  %2930 = fadd fast float %2927, %2911
  %2931 = fadd fast float %2928, %2912
  %2932 = fadd fast float %2929, %2913
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 0
  %2935 = extractvalue %dx.types.CBufRet.f32 %2933, 1
  %2936 = fadd fast float %2935, %2934
  %2937 = call float @dx.op.unary.f32(i32 7, float %2936)  ; Saturate(value)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2933, 2
  %2939 = extractvalue %dx.types.CBufRet.f32 %2933, 3
  %2940 = fadd fast float %2939, %2938
  %2941 = call float @dx.op.unary.f32(i32 7, float %2940)  ; Saturate(value)
  %2942 = fmul fast float %2937, %2921
  %2943 = fmul fast float %2942, %2941
  br label %3185

; <label>:2944                                    ; preds = %2898
  br i1 %2899, label %2945, label %2966, !dx.controlflow.hints !123

; <label>:2945                                    ; preds = %2944
  %2946 = call float @dx.op.binary.f32(i32 36, float %2895, float %2885)  ; FMin(a,b)
  %2947 = fsub fast float %2895, %2946
  %2948 = fsub fast float %2947, %2884
  %2949 = call float @dx.op.unary.f32(i32 6, float %2948)  ; FAbs(value)
  %2950 = fadd fast float %2947, %2884
  %2951 = fmul fast float %2950, %207
  %2952 = fadd fast float %2951, %2828
  %2953 = fmul fast float %2952, %2949
  %2954 = fsub fast float %2890, %2953
  br label %2966

; <label>:2955                                    ; preds = %2883
  br i1 %2897, label %2956, label %2966, !dx.controlflow.hints !124

; <label>:2956                                    ; preds = %2955
  %2957 = call float @dx.op.binary.f32(i32 35, float %2885, float %2895)  ; FMax(a,b)
  %2958 = icmp eq i32 %2834, 0
  %2959 = select i1 %2958, float %2895, float 0.000000e+00
  %2960 = fsub fast float -0.000000e+00, %2959
  %2961 = call float @dx.op.unary.f32(i32 6, float %2960)  ; FAbs(value)
  %2962 = fmul fast float %2959, %207
  %2963 = fadd fast float %2962, %2828
  %2964 = fmul fast float %2961, %2963
  %2965 = fsub fast float %2890, %2964
  br label %2966

; <label>:2966                                    ; preds = %2956, %2955, %2945, %2944
  %2967 = phi float [ %2885, %2944 ], [ %2885, %2945 ], [ %2957, %2956 ], [ %2885, %2955 ]
  %2968 = phi float [ 0.000000e+00, %2944 ], [ %2949, %2945 ], [ %2961, %2956 ], [ 0.000000e+00, %2955 ]
  %2969 = phi float [ %2890, %2944 ], [ %2954, %2945 ], [ %2965, %2956 ], [ %2890, %2955 ]
  %2970 = phi float [ %2895, %2944 ], [ %2895, %2945 ], [ %2884, %2956 ], [ %2884, %2955 ]
  %2971 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 0
  store float -1.000000e+00, float* %2971, align 4, !tbaa !54, !noalias !125
  %2972 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 1
  store float -1.000000e+00, float* %2972, align 4, !tbaa !54, !noalias !125
  %2973 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 2
  store float -1.000000e+00, float* %2973, align 4, !tbaa !54, !noalias !125
  %2974 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 0
  store float -1.000000e+00, float* %2974, align 4, !tbaa !54, !noalias !125
  %2975 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 1
  store float -1.000000e+00, float* %2975, align 4, !tbaa !54, !noalias !125
  %2976 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 2
  store float -1.000000e+00, float* %2976, align 4, !tbaa !54, !noalias !125
  %2977 = icmp sgt i32 %2836, 0
  br i1 %2977, label %2978, label %3039

; <label>:2978                                    ; preds = %2966
  br label %2979

; <label>:2979                                    ; preds = %3028, %2978
  %2980 = phi i32 [ %3029, %3028 ], [ 0, %2978 ]
  %2981 = phi i32 [ %3030, %3028 ], [ 0, %2978 ]
  %2982 = add nuw i32 %2981, 171
  %2983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 %2982)  ; CBufferLoadLegacy(handle,regIndex)
  %2984 = extractvalue %dx.types.CBufRet.f32 %2983, 0
  %2985 = extractvalue %dx.types.CBufRet.f32 %2983, 1
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.CBufRet.f32 %2986, 1
  %2989 = fsub fast float %2984, %2987
  %2990 = fsub fast float %2985, %2988
  %2991 = extractvalue %dx.types.CBufRet.f32 %2983, 2
  %2992 = fsub fast float -0.000000e+00, %2989
  %2993 = fsub fast float -0.000000e+00, %2990
  %2994 = call float @dx.op.dot2.f32(i32 54, float %205, float %206, float %2992, float %2993)  ; Dot2(ax,ay,bx,by)
  %2995 = fmul fast float %2994, 2.000000e+00
  %2996 = call float @dx.op.dot2.f32(i32 54, float %2992, float %2993, float %2992, float %2993)  ; Dot2(ax,ay,bx,by)
  %2997 = fmul fast float %2991, %2991
  %2998 = fsub fast float %2996, %2997
  %2999 = fmul fast float %2995, %2995
  %3000 = fmul fast float %2856, %2998
  %3001 = fsub fast float %2999, %3000
  %3002 = fcmp fast ogt float %3001, 0.000000e+00
  br i1 %3002, label %3003, label %3018, !dx.controlflow.hints !117

; <label>:3003                                    ; preds = %2979
  %3004 = fcmp fast ogt float %2995, 0.000000e+00
  %3005 = call float @dx.op.unary.f32(i32 24, float %3001)  ; Sqrt(value)
  %3006 = fsub fast float -0.000000e+00, %3005
  %3007 = select i1 %3004, float %3005, float %3006
  %3008 = fadd fast float %3007, %2995
  %3009 = fmul float %3008, -5.000000e-01
  %3010 = fdiv fast float %3009, %2849
  %3011 = call float @dx.op.binary.f32(i32 35, float %3010, float 0.000000e+00)  ; FMax(a,b)
  %3012 = call float @dx.op.binary.f32(i32 36, float %2884, float %3011)  ; FMin(a,b)
  %3013 = fdiv fast float %2998, %3009
  %3014 = call float @dx.op.binary.f32(i32 35, float %3013, float 0.000000e+00)  ; FMax(a,b)
  %3015 = call float @dx.op.binary.f32(i32 36, float %2884, float %3014)  ; FMin(a,b)
  %3016 = call float @dx.op.binary.f32(i32 36, float %3012, float %3015)  ; FMin(a,b)
  %3017 = call float @dx.op.binary.f32(i32 35, float %3012, float %3015)  ; FMax(a,b)
  br label %3018

; <label>:3018                                    ; preds = %3003, %2979
  %3019 = phi float [ %3017, %3003 ], [ -1.000000e+00, %2979 ]
  %3020 = phi float [ %3016, %3003 ], [ -1.000000e+00, %2979 ]
  %3021 = phi i1 [ true, %3003 ], [ false, %2979 ]
  br i1 %3021, label %3022, label %3028, !dx.controlflow.hints !131

; <label>:3022                                    ; preds = %3018
  %3023 = call float @dx.op.binary.f32(i32 35, float %2967, float %3020)  ; FMax(a,b)
  %3024 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 %2981
  store float %3023, float* %3024, align 4, !tbaa !54, !noalias !125
  %3025 = call float @dx.op.binary.f32(i32 35, float %2967, float %3019)  ; FMax(a,b)
  %3026 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 %2981
  store float %3025, float* %3026, align 4, !tbaa !54, !noalias !125
  %3027 = add nsw i32 %2980, 1
  br label %3028

; <label>:3028                                    ; preds = %3022, %3018
  %3029 = phi i32 [ %3027, %3022 ], [ %2980, %3018 ]
  %3030 = add nuw nsw i32 %2981, 1
  %3031 = icmp eq i32 %3030, %2836
  br i1 %3031, label %3032, label %2979

; <label>:3032                                    ; preds = %3028
  %3033 = load float, float* %2973, align 4, !tbaa !54, !alias.scope !132, !noalias !135
  %3034 = load float, float* %2972, align 4, !tbaa !54, !alias.scope !138, !noalias !139
  %3035 = load float, float* %2971, align 4, !tbaa !54, !alias.scope !140, !noalias !141
  %3036 = load float, float* %2976, align 4, !tbaa !54, !alias.scope !142, !noalias !145
  %3037 = load float, float* %2975, align 4, !tbaa !54, !alias.scope !148, !noalias !149
  %3038 = load float, float* %2974, align 4, !tbaa !54, !alias.scope !150, !noalias !151
  br label %3039

; <label>:3039                                    ; preds = %3032, %2966
  %3040 = phi float [ -1.000000e+00, %2966 ], [ %3038, %3032 ]
  %3041 = phi float [ -1.000000e+00, %2966 ], [ %3037, %3032 ]
  %3042 = phi float [ -1.000000e+00, %2966 ], [ %3036, %3032 ]
  %3043 = phi float [ -1.000000e+00, %2966 ], [ %3035, %3032 ]
  %3044 = phi float [ -1.000000e+00, %2966 ], [ %3034, %3032 ]
  %3045 = phi float [ -1.000000e+00, %2966 ], [ %3033, %3032 ]
  %3046 = phi i32 [ 0, %2966 ], [ %3029, %3032 ]
  %3047 = call float @dx.op.binary.f32(i32 36, float %3044, float %3045)  ; FMin(a,b)
  %3048 = call float @dx.op.binary.f32(i32 36, float %3043, float %3047)  ; FMin(a,b)
  %3049 = call float @dx.op.binary.f32(i32 35, float %3043, float %3044)  ; FMax(a,b)
  %3050 = call float @dx.op.binary.f32(i32 36, float %3049, float %3045)  ; FMin(a,b)
  %3051 = call float @dx.op.binary.f32(i32 36, float %3043, float %3044)  ; FMin(a,b)
  %3052 = call float @dx.op.binary.f32(i32 35, float %3051, float %3050)  ; FMax(a,b)
  %3053 = call float @dx.op.binary.f32(i32 35, float %3044, float %3045)  ; FMax(a,b)
  %3054 = call float @dx.op.binary.f32(i32 35, float %3043, float %3053)  ; FMax(a,b)
  store float %3048, float* %2971, align 4, !tbaa !54, !alias.scope !140, !noalias !141
  store float %3052, float* %2972, align 4, !tbaa !54, !alias.scope !138, !noalias !139
  store float %3054, float* %2973, align 4, !tbaa !54, !alias.scope !132, !noalias !135
  %3055 = call float @dx.op.binary.f32(i32 36, float %3041, float %3042)  ; FMin(a,b)
  %3056 = call float @dx.op.binary.f32(i32 36, float %3040, float %3055)  ; FMin(a,b)
  %3057 = call float @dx.op.binary.f32(i32 35, float %3040, float %3041)  ; FMax(a,b)
  %3058 = call float @dx.op.binary.f32(i32 36, float %3057, float %3042)  ; FMin(a,b)
  %3059 = call float @dx.op.binary.f32(i32 36, float %3040, float %3041)  ; FMin(a,b)
  %3060 = call float @dx.op.binary.f32(i32 35, float %3059, float %3058)  ; FMax(a,b)
  %3061 = call float @dx.op.binary.f32(i32 35, float %3041, float %3042)  ; FMax(a,b)
  %3062 = call float @dx.op.binary.f32(i32 35, float %3040, float %3061)  ; FMax(a,b)
  store float %3056, float* %2974, align 4, !tbaa !54, !alias.scope !150, !noalias !151
  store float %3060, float* %2975, align 4, !tbaa !54, !alias.scope !148, !noalias !149
  store float %3062, float* %2976, align 4, !tbaa !54, !alias.scope !142, !noalias !145
  %3063 = sub nsw i32 3, %3046
  %3064 = icmp sgt i32 %3063, 2
  br i1 %3064, label %3065, label %3103, !dx.controlflow.hints !152

; <label>:3065                                    ; preds = %3039
  %3066 = icmp eq i32 %2834, 0
  %3067 = fsub fast float %2884, %2968
  %3068 = select i1 %3066, float %3067, float %2968
  %3069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3070 = extractvalue %dx.types.CBufRet.f32 %3069, 0
  %3071 = extractvalue %dx.types.CBufRet.f32 %3069, 1
  %3072 = extractvalue %dx.types.CBufRet.f32 %3069, 2
  %3073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3074 = extractvalue %dx.types.CBufRet.f32 %3073, 0
  %3075 = extractvalue %dx.types.CBufRet.f32 %3073, 1
  %3076 = extractvalue %dx.types.CBufRet.f32 %3073, 2
  %3077 = extractvalue %dx.types.CBufRet.f32 %3073, 3
  %3078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3079 = extractvalue %dx.types.CBufRet.f32 %3078, 3
  %3080 = call float @dx.op.binary.f32(i32 36, float %2969, float %3079)  ; FMin(a,b)
  %3081 = fmul fast float %3077, %3068
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3083 = fsub fast float %3074, %3070
  %3084 = fsub fast float %3075, %3071
  %3085 = fsub fast float %3076, %3072
  %3086 = fmul fast float %3082, %3083
  %3087 = fmul fast float %3082, %3084
  %3088 = fmul fast float %3082, %3085
  %3089 = fadd fast float %3086, %3070
  %3090 = fadd fast float %3087, %3071
  %3091 = fadd fast float %3088, %3072
  %3092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3093 = extractvalue %dx.types.CBufRet.f32 %3092, 0
  %3094 = extractvalue %dx.types.CBufRet.f32 %3092, 1
  %3095 = fadd fast float %3094, %3093
  %3096 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  %3097 = extractvalue %dx.types.CBufRet.f32 %3092, 2
  %3098 = extractvalue %dx.types.CBufRet.f32 %3092, 3
  %3099 = fadd fast float %3098, %3097
  %3100 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  %3101 = fmul fast float %3096, %3080
  %3102 = fmul fast float %3101, %3100
  br label %3185

; <label>:3103                                    ; preds = %3039
  %3104 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 %3063
  %3105 = load float, float* %3104, align 4, !tbaa !54, !noalias !125
  %3106 = fcmp fast olt float %3105, %2970
  %3107 = icmp sgt i32 %3046, 0
  %3108 = and i1 %3107, %3106
  br i1 %3108, label %3109, label %3146

; <label>:3109                                    ; preds = %3103
  br label %3110

; <label>:3110                                    ; preds = %3139, %3109
  %3111 = phi float [ %3140, %3139 ], [ %2968, %3109 ]
  %3112 = phi float [ %3141, %3139 ], [ %2969, %3109 ]
  %3113 = phi float [ %3121, %3139 ], [ %3105, %3109 ]
  %3114 = phi i32 [ %3118, %3139 ], [ %3063, %3109 ]
  %3115 = getelementptr inbounds [3 x float], [3 x float]* %45, i32 0, i32 %3114
  %3116 = load float, float* %3115, align 4, !tbaa !54, !noalias !125
  %3117 = icmp slt i32 %3114, 2
  %3118 = add nsw i32 %3114, 1
  %3119 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 %3118
  %3120 = load float, float* %3119, align 4, !tbaa !54, !noalias !125
  %3121 = select i1 %3117, float %3120, float %2884
  %3122 = call float @dx.op.binary.f32(i32 36, float %3121, float %3116)  ; FMin(a,b)
  %3123 = call float @dx.op.binary.f32(i32 36, float %2970, float %3122)  ; FMin(a,b)
  %3124 = icmp eq i32 %2834, 0
  %3125 = fadd fast float %3123, %3113
  %3126 = fmul fast float %3125, %207
  %3127 = fadd fast float %3126, %2828
  br i1 %3124, label %3133, label %3128, !dx.controlflow.hints !153

; <label>:3128                                    ; preds = %3110
  %3129 = fsub fast float %3123, %3113
  %3130 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3129)  ; FMax(a,b)
  %3131 = fmul fast float %3130, %3127
  %3132 = fadd fast float %3131, %3112
  br label %3139

; <label>:3133                                    ; preds = %3110
  %3134 = fsub fast float %3113, %3123
  %3135 = call float @dx.op.unary.f32(i32 6, float %3134)  ; FAbs(value)
  %3136 = fadd fast float %3135, %3111
  %3137 = fmul fast float %3135, %3127
  %3138 = fsub fast float %3112, %3137
  br label %3139

; <label>:3139                                    ; preds = %3133, %3128
  %3140 = phi float [ %3130, %3128 ], [ %3136, %3133 ]
  %3141 = phi float [ %3132, %3128 ], [ %3138, %3133 ]
  %3142 = fcmp fast olt float %3121, %2970
  %3143 = icmp slt i32 %3118, 3
  %3144 = and i1 %3143, %3142
  br i1 %3144, label %3110, label %3145

; <label>:3145                                    ; preds = %3139
  br label %3146

; <label>:3146                                    ; preds = %3145, %3103
  %3147 = phi float [ %2968, %3103 ], [ %3140, %3145 ]
  %3148 = phi float [ %2969, %3103 ], [ %3141, %3145 ]
  %3149 = fsub fast float %2884, %3147
  %3150 = select i1 %2886, float %3147, float %3149
  %3151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.f32 %3151, 0
  %3153 = extractvalue %dx.types.CBufRet.f32 %3151, 1
  %3154 = extractvalue %dx.types.CBufRet.f32 %3151, 2
  %3155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.f32 %3155, 0
  %3157 = extractvalue %dx.types.CBufRet.f32 %3155, 1
  %3158 = extractvalue %dx.types.CBufRet.f32 %3155, 2
  %3159 = extractvalue %dx.types.CBufRet.f32 %3155, 3
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 3
  %3162 = call float @dx.op.binary.f32(i32 36, float %3148, float %3161)  ; FMin(a,b)
  %3163 = fmul fast float %3159, %3150
  %3164 = call float @dx.op.unary.f32(i32 7, float %3163)  ; Saturate(value)
  %3165 = fsub fast float %3156, %3152
  %3166 = fsub fast float %3157, %3153
  %3167 = fsub fast float %3158, %3154
  %3168 = fmul fast float %3164, %3165
  %3169 = fmul fast float %3164, %3166
  %3170 = fmul fast float %3164, %3167
  %3171 = fadd fast float %3168, %3152
  %3172 = fadd fast float %3169, %3153
  %3173 = fadd fast float %3170, %3154
  %3174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3175 = extractvalue %dx.types.CBufRet.f32 %3174, 0
  %3176 = extractvalue %dx.types.CBufRet.f32 %3174, 1
  %3177 = fadd fast float %3176, %3175
  %3178 = call float @dx.op.unary.f32(i32 7, float %3177)  ; Saturate(value)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3174, 2
  %3180 = extractvalue %dx.types.CBufRet.f32 %3174, 3
  %3181 = fadd fast float %3180, %3179
  %3182 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  %3183 = fmul fast float %3178, %3162
  %3184 = fmul fast float %3183, %3182
  br label %3185

; <label>:3185                                    ; preds = %3146, %3065, %2900, %2882, %2880
  %3186 = phi float [ %2909, %2900 ], [ %3068, %3065 ], [ %3150, %3146 ], [ 0.000000e+00, %2880 ], [ 0.000000e+00, %2882 ]
  %3187 = phi float [ %2943, %2900 ], [ %3102, %3065 ], [ %3184, %3146 ], [ 0.000000e+00, %2880 ], [ 0.000000e+00, %2882 ]
  %3188 = phi float [ %2930, %2900 ], [ %3089, %3065 ], [ %3171, %3146 ], [ 0.000000e+00, %2880 ], [ 0.000000e+00, %2882 ]
  %3189 = phi float [ %2931, %2900 ], [ %3090, %3065 ], [ %3172, %3146 ], [ 0.000000e+00, %2880 ], [ 0.000000e+00, %2882 ]
  %3190 = phi float [ %2932, %2900 ], [ %3091, %3065 ], [ %3173, %3146 ], [ 0.000000e+00, %2880 ], [ 0.000000e+00, %2882 ]
  %3191 = fmul fast float %2823, %3187
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 2
  %3194 = fsub fast float %2830, %3193
  %3195 = fcmp fast olt float %3191, -2.000000e+01
  %3196 = call float @dx.op.unary.f32(i32 21, float %3191)  ; Exp(value)
  %3197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.f32 %3197, 2
  %3199 = extractvalue %dx.types.CBufRet.f32 %3197, 3
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 2
  %3202 = fmul fast float %3199, %3194
  %3203 = call float @dx.op.unary.f32(i32 7, float %3202)  ; Saturate(value)
  %3204 = fsub fast float 1.000000e+00, %3203
  %3205 = fmul fast float %207, 5.000000e-01
  %3206 = fadd fast float %3205, 5.000000e-01
  %3207 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  %3208 = fsub fast float 1.000000e+00, %3207
  %3209 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3204)  ; FMax(a,b)
  %3210 = fdiv fast float %3208, %3209
  %3211 = fsub fast float %3194, %187
  %3212 = call float @dx.op.unary.f32(i32 6, float %3211)  ; FAbs(value)
  %3213 = fmul fast float %3212, %3198
  %3214 = call float @dx.op.unary.f32(i32 7, float %3210)  ; Saturate(value)
  %3215 = fsub fast float 1.000000e+00, %3213
  %3216 = fmul fast float %3215, %3214
  %3217 = fadd fast float %3216, %3213
  %3218 = fmul fast float %3201, %3194
  %3219 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3220 = fsub fast float 1.000000e+00, %3217
  %3221 = fmul fast float %3220, %3219
  %3222 = fadd fast float %3221, %3217
  %3223 = call float @dx.op.unary.f32(i32 7, float %3222)  ; Saturate(value)
  %3224 = fadd fast float %3196, -1.000000e+00
  %3225 = select i1 %3195, float -1.000000e+00, float %3224
  %3226 = fmul fast float %3223, %3225
  %3227 = fadd fast float %3226, 1.000000e+00
  %3228 = fsub fast float -0.000000e+00, %3226
  %3229 = fmul fast float %3188, %3228
  %3230 = fmul fast float %3189, %3228
  %3231 = fmul fast float %3190, %3228
  br label %3232

; <label>:3232                                    ; preds = %3185, %2774
  %3233 = phi float [ %3186, %3185 ], [ 0.000000e+00, %2774 ]
  %3234 = phi float [ %3227, %3185 ], [ 1.000000e+00, %2774 ]
  %3235 = phi float [ %3229, %3185 ], [ 0.000000e+00, %2774 ]
  %3236 = phi float [ %3230, %3185 ], [ 0.000000e+00, %2774 ]
  %3237 = phi float [ %3231, %3185 ], [ 0.000000e+00, %2774 ]
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 1
  %3240 = fsub fast float 1.000000e+00, %3234
  %3241 = fmul fast float %3240, %2816
  %3242 = fmul fast float %3241, %3239
  %3243 = fsub fast float %2816, %3242
  br i1 %2814, label %3244, label %3273, !dx.controlflow.hints !154

; <label>:3244                                    ; preds = %3232
  %3245 = fmul fast float %2817, %2811
  %3246 = fadd fast float %3245, %2812
  %3247 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3248 = fmul fast float %2793, %3243
  %3249 = fsub fast float -0.000000e+00, %3248
  %3250 = fmul fast float %2794, %3243
  %3251 = fsub fast float -0.000000e+00, %3250
  %3252 = call float @dx.op.unary.f32(i32 21, float %3249)  ; Exp(value)
  %3253 = call float @dx.op.unary.f32(i32 21, float %3251)  ; Exp(value)
  %3254 = call float @dx.op.binary.f32(i32 35, float %2801, float %3252)  ; FMax(a,b)
  %3255 = call float @dx.op.binary.f32(i32 35, float %2801, float %3253)  ; FMax(a,b)
  %3256 = fsub fast float %3255, %3254
  %3257 = fmul fast float %3256, %3247
  %3258 = fadd fast float %3257, %3254
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3260 = fsub fast float %2798, %2803
  %3261 = fsub fast float %2799, %2804
  %3262 = fsub fast float %2800, %2805
  %3263 = fmul fast float %3247, %3260
  %3264 = fmul fast float %3247, %3261
  %3265 = fmul fast float %3247, %3262
  %3266 = fadd fast float %3263, %2803
  %3267 = fadd fast float %3264, %2804
  %3268 = fadd fast float %3265, %2805
  %3269 = fsub fast float 1.000000e+00, %3259
  %3270 = fmul fast float %3269, %3266
  %3271 = fmul fast float %3269, %3267
  %3272 = fmul fast float %3269, %3268
  br label %3332

; <label>:3273                                    ; preds = %3232
  %3274 = fmul fast float %3243, %2810
  %3275 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3276 = fsub fast float 2.000000e+00, %3275
  %3277 = fmul fast float %3275, 9.921875e-01
  %3278 = fmul fast float %3277, %3276
  %3279 = fadd fast float %3278, 3.906250e-03
  %3280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %35, float %3279, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = fsub fast float %3275, %3281
  %3283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3282)  ; FMax(a,b)
  %3284 = fmul fast float %2796, %187
  %3285 = call float @dx.op.unary.f32(i32 6, float %3284)  ; FAbs(value)
  %3286 = fcmp fast ogt float %3285, 0x3EB0C6F7A0000000
  br i1 %3286, label %3287, label %3293, !dx.controlflow.hints !155

; <label>:3287                                    ; preds = %3273
  %3288 = fmul fast float %3284, 0xBFF7154760000000
  %3289 = call float @dx.op.unary.f32(i32 21, float %3288)  ; Exp(value)
  %3290 = fsub fast float 1.000000e+00, %3289
  %3291 = fdiv fast float %3290, %3284
  %3292 = fmul fast float %3291, %2806
  br label %3293

; <label>:3293                                    ; preds = %3287, %3273
  %3294 = phi float [ %3292, %3287 ], [ %2806, %3273 ]
  %3295 = fadd fast float %3294, %2808
  %3296 = fmul fast float %3295, %3283
  %3297 = fmul fast float %2793, %3296
  %3298 = fsub fast float -0.000000e+00, %3297
  %3299 = fmul fast float %2794, %3296
  %3300 = fsub fast float -0.000000e+00, %3299
  %3301 = fmul fast float %2795, %3296
  %3302 = fsub fast float -0.000000e+00, %3301
  %3303 = call float @dx.op.unary.f32(i32 21, float %3298)  ; Exp(value)
  %3304 = call float @dx.op.unary.f32(i32 21, float %3300)  ; Exp(value)
  %3305 = call float @dx.op.unary.f32(i32 21, float %3302)  ; Exp(value)
  %3306 = fmul fast float %2817, %2817
  %3307 = fadd fast float %3306, 1.000000e+00
  %3308 = fmul fast float %3307, 0x3FAE8EC8A0000000
  %3309 = fmul fast float %3308, %2803
  %3310 = fmul fast float %3308, %2804
  %3311 = fmul fast float %3308, %2805
  %3312 = fmul fast float %2817, %2801
  %3313 = fsub fast float 1.000000e+00, %3312
  %3314 = fmul fast float %2801, %2801
  %3315 = fsub fast float 1.000000e+00, %3314
  %3316 = fmul fast float %3315, 0x3FB45F3060000000
  %3317 = fmul fast float %3313, %3313
  %3318 = fdiv fast float 1.000000e+00, %3317
  %3319 = fmul fast float %3316, %3318
  %3320 = fmul fast float %3319, %2798
  %3321 = fmul fast float %3319, %2799
  %3322 = fmul fast float %3319, %2800
  %3323 = fadd fast float %3320, %3309
  %3324 = fadd fast float %3321, %3310
  %3325 = fadd fast float %3322, %3311
  %3326 = fsub fast float 1.000000e+00, %3303
  %3327 = fsub fast float 1.000000e+00, %3304
  %3328 = fsub fast float 1.000000e+00, %3305
  %3329 = fmul fast float %3323, %3326
  %3330 = fmul fast float %3324, %3327
  %3331 = fmul fast float %3325, %3328
  br label %3332

; <label>:3332                                    ; preds = %3293, %3244
  %3333 = phi float [ %3270, %3244 ], [ %3329, %3293 ]
  %3334 = phi float [ %3271, %3244 ], [ %3330, %3293 ]
  %3335 = phi float [ %3272, %3244 ], [ %3331, %3293 ]
  %3336 = phi float [ %3259, %3244 ], [ %3303, %3293 ]
  %3337 = phi float [ %3259, %3244 ], [ %3304, %3293 ]
  %3338 = phi float [ %3259, %3244 ], [ %3305, %3293 ]
  br i1 %2825, label %3339, label %3537, !dx.controlflow.hints !156

; <label>:3339                                    ; preds = %3332
  %3340 = extractvalue %dx.types.CBufRet.f32 %3238, 0
  %3341 = fmul fast float %3340, %3240
  %3342 = fsub fast float %3235, %3333
  %3343 = fsub fast float %3236, %3334
  %3344 = fsub fast float %3237, %3335
  %3345 = fmul fast float %3341, %3342
  %3346 = fmul fast float %3341, %3343
  %3347 = fmul fast float %3341, %3344
  %3348 = fadd fast float %3345, %3333
  %3349 = fadd fast float %3346, %3334
  %3350 = fadd fast float %3347, %3335
  %3351 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3336)  ; FMax(a,b)
  %3352 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3337)  ; FMax(a,b)
  %3353 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3338)  ; FMax(a,b)
  %3354 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3234)  ; FMax(a,b)
  %3355 = call float @dx.op.binary.f32(i32 35, float %3233, float %3243)  ; FMax(a,b)
  %3356 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3355)  ; FMax(a,b)
  %3357 = fdiv fast float %3233, %3356
  %3358 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3359 = fdiv fast float %3243, %3356
  %3360 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3361 = fcmp fast une float %3354, 1.000000e+00
  br i1 %3361, label %3362, label %3375, !dx.controlflow.hints !157

; <label>:3362                                    ; preds = %3339
  %3363 = call float @dx.op.unary.f32(i32 23, float %3354)  ; Log(value)
  %3364 = fmul fast float %3363, 0x3FE62E4300000000
  %3365 = fmul fast float %3235, %3364
  %3366 = fsub fast float -0.000000e+00, %3365
  %3367 = fmul fast float %3236, %3364
  %3368 = fsub fast float -0.000000e+00, %3367
  %3369 = fmul fast float %3237, %3364
  %3370 = fsub fast float -0.000000e+00, %3369
  %3371 = fsub fast float 1.000000e+00, %3354
  %3372 = fdiv fast float %3366, %3371
  %3373 = fdiv fast float %3368, %3371
  %3374 = fdiv fast float %3370, %3371
  br label %3375

; <label>:3375                                    ; preds = %3362, %3339
  %3376 = phi float [ %3372, %3362 ], [ %3235, %3339 ]
  %3377 = phi float [ %3373, %3362 ], [ %3236, %3339 ]
  %3378 = phi float [ %3374, %3362 ], [ %3237, %3339 ]
  %3379 = phi float [ %3364, %3362 ], [ 0.000000e+00, %3339 ]
  %3380 = fcmp fast une float %3351, 1.000000e+00
  br i1 %3380, label %3381, label %3388, !dx.controlflow.hints !158

; <label>:3381                                    ; preds = %3375
  %3382 = call float @dx.op.unary.f32(i32 23, float %3351)  ; Log(value)
  %3383 = fmul fast float %3382, 0x3FE62E4300000000
  %3384 = fmul fast float %3348, %3383
  %3385 = fsub fast float -0.000000e+00, %3384
  %3386 = fsub fast float 1.000000e+00, %3351
  %3387 = fdiv fast float %3385, %3386
  br label %3388

; <label>:3388                                    ; preds = %3381, %3375
  %3389 = phi float [ %3387, %3381 ], [ %3348, %3375 ]
  %3390 = phi float [ %3383, %3381 ], [ 0.000000e+00, %3375 ]
  %3391 = fcmp fast une float %3352, 1.000000e+00
  br i1 %3391, label %3392, label %3399, !dx.controlflow.hints !158

; <label>:3392                                    ; preds = %3388
  %3393 = call float @dx.op.unary.f32(i32 23, float %3352)  ; Log(value)
  %3394 = fmul fast float %3393, 0x3FE62E4300000000
  %3395 = fmul fast float %3349, %3394
  %3396 = fsub fast float -0.000000e+00, %3395
  %3397 = fsub fast float 1.000000e+00, %3352
  %3398 = fdiv fast float %3396, %3397
  br label %3399

; <label>:3399                                    ; preds = %3392, %3388
  %3400 = phi float [ %3398, %3392 ], [ %3349, %3388 ]
  %3401 = phi float [ %3394, %3392 ], [ 0.000000e+00, %3388 ]
  %3402 = fcmp fast une float %3353, 1.000000e+00
  br i1 %3402, label %3403, label %3410, !dx.controlflow.hints !158

; <label>:3403                                    ; preds = %3399
  %3404 = call float @dx.op.unary.f32(i32 23, float %3353)  ; Log(value)
  %3405 = fmul fast float %3404, 0x3FE62E4300000000
  %3406 = fmul fast float %3350, %3405
  %3407 = fsub fast float -0.000000e+00, %3406
  %3408 = fsub fast float 1.000000e+00, %3353
  %3409 = fdiv fast float %3407, %3408
  br label %3410

; <label>:3410                                    ; preds = %3403, %3399
  %3411 = phi float [ %3409, %3403 ], [ %3350, %3399 ]
  %3412 = phi float [ %3405, %3403 ], [ 0.000000e+00, %3399 ]
  %3413 = fmul fast float %3376, %3360
  %3414 = fmul fast float %3377, %3360
  %3415 = fmul fast float %3378, %3360
  %3416 = fmul fast float %3379, %3360
  %3417 = fmul fast float %3389, %3358
  %3418 = fmul fast float %3400, %3358
  %3419 = fmul fast float %3411, %3358
  %3420 = fmul fast float %3390, %3358
  %3421 = fmul fast float %3401, %3358
  %3422 = fmul fast float %3412, %3358
  %3423 = fadd fast float %3417, %3413
  %3424 = fadd fast float %3418, %3414
  %3425 = fadd fast float %3419, %3415
  %3426 = fadd fast float %3420, %3416
  %3427 = fadd fast float %3421, %3416
  %3428 = fadd fast float %3422, %3416
  %3429 = fcmp fast une float %3426, 0.000000e+00
  br i1 %3429, label %3430, label %3437, !dx.controlflow.hints !159

; <label>:3430                                    ; preds = %3410
  %3431 = fmul fast float %3426, 0x3FF7154760000000
  %3432 = call float @dx.op.unary.f32(i32 21, float %3431)  ; Exp(value)
  %3433 = fsub fast float 1.000000e+00, %3432
  %3434 = fmul fast float %3423, %3433
  %3435 = fsub fast float -0.000000e+00, %3434
  %3436 = fdiv fast float %3435, %3426
  br label %3437

; <label>:3437                                    ; preds = %3430, %3410
  %3438 = phi float [ %3432, %3430 ], [ 1.000000e+00, %3410 ]
  %3439 = phi float [ %3436, %3430 ], [ %3423, %3410 ]
  %3440 = fcmp fast une float %3427, 0.000000e+00
  br i1 %3440, label %3441, label %3448, !dx.controlflow.hints !159

; <label>:3441                                    ; preds = %3437
  %3442 = fmul fast float %3427, 0x3FF7154760000000
  %3443 = call float @dx.op.unary.f32(i32 21, float %3442)  ; Exp(value)
  %3444 = fsub fast float 1.000000e+00, %3443
  %3445 = fmul fast float %3424, %3444
  %3446 = fsub fast float -0.000000e+00, %3445
  %3447 = fdiv fast float %3446, %3427
  br label %3448

; <label>:3448                                    ; preds = %3441, %3437
  %3449 = phi float [ %3443, %3441 ], [ 1.000000e+00, %3437 ]
  %3450 = phi float [ %3447, %3441 ], [ %3424, %3437 ]
  %3451 = fcmp fast une float %3428, 0.000000e+00
  br i1 %3451, label %3452, label %3459, !dx.controlflow.hints !159

; <label>:3452                                    ; preds = %3448
  %3453 = fmul fast float %3428, 0x3FF7154760000000
  %3454 = call float @dx.op.unary.f32(i32 21, float %3453)  ; Exp(value)
  %3455 = fsub fast float 1.000000e+00, %3454
  %3456 = fmul fast float %3425, %3455
  %3457 = fsub fast float -0.000000e+00, %3456
  %3458 = fdiv fast float %3457, %3428
  br label %3459

; <label>:3459                                    ; preds = %3452, %3448
  %3460 = phi float [ %3454, %3452 ], [ 1.000000e+00, %3448 ]
  %3461 = phi float [ %3458, %3452 ], [ %3425, %3448 ]
  %3462 = fcmp fast ogt float %3358, %3360
  br i1 %3462, label %3463, label %3483, !dx.controlflow.hints !160

; <label>:3463                                    ; preds = %3459
  %3464 = fsub fast float 1.000000e+00, %3360
  %3465 = fmul fast float %3376, %3464
  %3466 = fmul fast float %3377, %3464
  %3467 = fmul fast float %3378, %3464
  %3468 = fmul fast float %3379, %3464
  %3469 = fcmp fast une float %3468, 0.000000e+00
  br i1 %3469, label %3470, label %3521, !dx.controlflow.hints !161

; <label>:3470                                    ; preds = %3463
  %3471 = fmul fast float %3468, 0x3FF7154760000000
  %3472 = call float @dx.op.unary.f32(i32 21, float %3471)  ; Exp(value)
  %3473 = fsub fast float 1.000000e+00, %3472
  %3474 = fmul fast float %3465, %3473
  %3475 = fsub fast float -0.000000e+00, %3474
  %3476 = fmul fast float %3466, %3473
  %3477 = fsub fast float -0.000000e+00, %3476
  %3478 = fmul fast float %3467, %3473
  %3479 = fsub fast float -0.000000e+00, %3478
  %3480 = fdiv fast float %3475, %3468
  %3481 = fdiv fast float %3477, %3468
  %3482 = fdiv fast float %3479, %3468
  br label %3521

; <label>:3483                                    ; preds = %3459
  %3484 = fsub fast float 1.000000e+00, %3358
  %3485 = fmul fast float %3389, %3484
  %3486 = fmul fast float %3400, %3484
  %3487 = fmul fast float %3411, %3484
  %3488 = fmul fast float %3390, %3484
  %3489 = fmul fast float %3401, %3484
  %3490 = fmul fast float %3412, %3484
  %3491 = fcmp fast une float %3488, 0.000000e+00
  br i1 %3491, label %3492, label %3499, !dx.controlflow.hints !159

; <label>:3492                                    ; preds = %3483
  %3493 = fmul fast float %3488, 0x3FF7154760000000
  %3494 = call float @dx.op.unary.f32(i32 21, float %3493)  ; Exp(value)
  %3495 = fsub fast float 1.000000e+00, %3494
  %3496 = fmul fast float %3485, %3495
  %3497 = fsub fast float -0.000000e+00, %3496
  %3498 = fdiv fast float %3497, %3488
  br label %3499

; <label>:3499                                    ; preds = %3492, %3483
  %3500 = phi float [ %3498, %3492 ], [ %3485, %3483 ]
  %3501 = phi float [ %3494, %3492 ], [ 1.000000e+00, %3483 ]
  %3502 = fcmp fast une float %3489, 0.000000e+00
  br i1 %3502, label %3503, label %3510, !dx.controlflow.hints !159

; <label>:3503                                    ; preds = %3499
  %3504 = fmul fast float %3489, 0x3FF7154760000000
  %3505 = call float @dx.op.unary.f32(i32 21, float %3504)  ; Exp(value)
  %3506 = fsub fast float 1.000000e+00, %3505
  %3507 = fmul fast float %3486, %3506
  %3508 = fsub fast float -0.000000e+00, %3507
  %3509 = fdiv fast float %3508, %3489
  br label %3510

; <label>:3510                                    ; preds = %3503, %3499
  %3511 = phi float [ %3509, %3503 ], [ %3486, %3499 ]
  %3512 = phi float [ %3505, %3503 ], [ 1.000000e+00, %3499 ]
  %3513 = fcmp fast une float %3490, 0.000000e+00
  br i1 %3513, label %3514, label %3521, !dx.controlflow.hints !159

; <label>:3514                                    ; preds = %3510
  %3515 = fmul fast float %3490, 0x3FF7154760000000
  %3516 = call float @dx.op.unary.f32(i32 21, float %3515)  ; Exp(value)
  %3517 = fsub fast float 1.000000e+00, %3516
  %3518 = fmul fast float %3487, %3517
  %3519 = fsub fast float -0.000000e+00, %3518
  %3520 = fdiv fast float %3519, %3490
  br label %3521

; <label>:3521                                    ; preds = %3514, %3510, %3470, %3463
  %3522 = phi float [ %3520, %3514 ], [ %3482, %3470 ], [ %3467, %3463 ], [ %3487, %3510 ]
  %3523 = phi float [ %3511, %3514 ], [ %3481, %3470 ], [ %3466, %3463 ], [ %3511, %3510 ]
  %3524 = phi float [ %3500, %3514 ], [ %3480, %3470 ], [ %3465, %3463 ], [ %3500, %3510 ]
  %3525 = phi float [ %3516, %3514 ], [ %3472, %3470 ], [ 1.000000e+00, %3463 ], [ 1.000000e+00, %3510 ]
  %3526 = phi float [ %3512, %3514 ], [ %3472, %3470 ], [ 1.000000e+00, %3463 ], [ %3512, %3510 ]
  %3527 = phi float [ %3501, %3514 ], [ %3472, %3470 ], [ 1.000000e+00, %3463 ], [ %3501, %3510 ]
  %3528 = fmul fast float %3527, %3439
  %3529 = fmul fast float %3526, %3450
  %3530 = fmul fast float %3525, %3461
  %3531 = fadd fast float %3528, %3524
  %3532 = fadd fast float %3529, %3523
  %3533 = fadd fast float %3530, %3522
  %3534 = fmul fast float %3527, %3438
  %3535 = fmul fast float %3526, %3449
  %3536 = fmul fast float %3525, %3460
  br label %3537

; <label>:3537                                    ; preds = %3521, %3332
  %3538 = phi float [ %3536, %3521 ], [ %3338, %3332 ]
  %3539 = phi float [ %3535, %3521 ], [ %3337, %3332 ]
  %3540 = phi float [ %3534, %3521 ], [ %3336, %3332 ]
  %3541 = phi float [ %3533, %3521 ], [ %3335, %3332 ]
  %3542 = phi float [ %3532, %3521 ], [ %3334, %3332 ]
  %3543 = phi float [ %3531, %3521 ], [ %3333, %3332 ]
  %3544 = fmul fast float %2784, %3540
  %3545 = fmul fast float %2785, %3539
  %3546 = fmul fast float %2786, %3538
  %3547 = fmul fast float %2096, 0xBFF7154760000000
  %3548 = call float @dx.op.unary.f32(i32 21, float %3547)  ; Exp(value)
  %3549 = call float @dx.op.unary.f32(i32 7, float %3548)  ; Saturate(value)
  %3550 = fsub fast float 1.000000e+00, %3549
  %3551 = fmul fast float %3550, %3543
  %3552 = fmul fast float %3550, %3542
  %3553 = fmul fast float %3550, %3541
  %3554 = fadd fast float %3551, %3544
  %3555 = fadd fast float %3552, %3545
  %3556 = fadd fast float %3553, %3546
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 0
  %3559 = fmul fast float %3558, %3554
  %3560 = fmul fast float %3555, %3558
  %3561 = fmul fast float %3556, %3558
  %3562 = fmul fast float %3560, 5.000000e-01
  %3563 = fadd fast float %3556, %3554
  %3564 = fmul fast float %3558, %3563
  %3565 = fmul fast float %3564, 2.500000e-01
  %3566 = fadd fast float %3565, %3562
  %3567 = call float @dx.op.unary.f32(i32 23, float %3566)  ; Log(value)
  %3568 = fmul fast float %3567, 0x3FE62E4300000000
  %3569 = fmul fast float %3568, %3568
  store float %211, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  %3570 = fmul fast float %3568, %211
  store float %3570, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  %3571 = fmul fast float %3569, %211
  store float %3571, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3572 = load float, float addrspace(3)* %218, align 4, !tbaa !54, !noalias !58
  %3573 = fadd fast float %3572, %211
  %3574 = load float, float addrspace(3)* %221, align 4, !tbaa !54, !noalias !58
  %3575 = fadd fast float %3574, %3568
  %3576 = load float, float addrspace(3)* %224, align 4, !tbaa !54, !noalias !58
  %3577 = fadd fast float %3576, %3569
  store float %3573, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  store float %3575, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  store float %3577, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3578 = load float, float addrspace(3)* %228, align 4, !tbaa !54, !noalias !58
  %3579 = fadd fast float %3578, %3573
  %3580 = load float, float addrspace(3)* %231, align 4, !tbaa !54, !noalias !58
  %3581 = fadd fast float %3580, %3575
  %3582 = load float, float addrspace(3)* %234, align 4, !tbaa !54, !noalias !58
  %3583 = fadd fast float %3582, %3577
  store float %3579, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  store float %3581, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  store float %3583, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3584 = load float, float addrspace(3)* %238, align 4, !tbaa !54, !noalias !58
  %3585 = fadd fast float %3584, %3579
  %3586 = load float, float addrspace(3)* %241, align 4, !tbaa !54, !noalias !58
  %3587 = fadd fast float %3586, %3581
  %3588 = fdiv fast float %3587, %3585
  br i1 %249, label %3589, label %3597, !dx.controlflow.hints !62

; <label>:3589                                    ; preds = %3537
  %3590 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %237
  %3591 = load float, float addrspace(3)* %3590, align 4, !tbaa !54, !noalias !58
  %3592 = fadd fast float %3591, %3583
  %3593 = fdiv fast float %3592, %3585
  %3594 = lshr i32 %66, 1
  %3595 = lshr i32 %67, 1
  %3596 = lshr i32 %68, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3594, i32 %3595, i32 %3596, float %3588, float %3593, float %3588, float %3588, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3597

; <label>:3597                                    ; preds = %3589, %3537
  br i1 %77, label %3632, label %3598, !dx.controlflow.hints !63

; <label>:3598                                    ; preds = %3597
  %3599 = fadd fast float %116, 0x3FE3C6EF40000000
  %3600 = call float @dx.op.unary.f32(i32 22, float %3599)  ; Frc(value)
  %3601 = call float @dx.op.unary.f32(i32 23, float %3559)  ; Log(value)
  %3602 = fadd fast float %3601, -7.000000e+00
  %3603 = call float @dx.op.unary.f32(i32 21, float %3602)  ; Exp(value)
  %3604 = fmul fast float %3600, 2.000000e+00
  %3605 = fadd fast float %3604, -1.000000e+00
  %3606 = fmul fast float %3603, %3605
  %3607 = fcmp fast ogt float %3559, 0.000000e+00
  %3608 = select i1 %3607, float %3606, float 0.000000e+00
  %3609 = fadd fast float %3608, %3559
  %3610 = fadd fast float %116, 0x3FF3C6EF40000000
  %3611 = call float @dx.op.unary.f32(i32 22, float %3610)  ; Frc(value)
  %3612 = call float @dx.op.unary.f32(i32 23, float %3560)  ; Log(value)
  %3613 = fadd fast float %3612, -7.000000e+00
  %3614 = call float @dx.op.unary.f32(i32 21, float %3613)  ; Exp(value)
  %3615 = fmul fast float %3611, 2.000000e+00
  %3616 = fadd fast float %3615, -1.000000e+00
  %3617 = fmul fast float %3614, %3616
  %3618 = fcmp fast ogt float %3560, 0.000000e+00
  %3619 = select i1 %3618, float %3617, float 0.000000e+00
  %3620 = fadd fast float %3619, %3560
  %3621 = fadd fast float %116, 0x3FFDAA66E0000000
  %3622 = call float @dx.op.unary.f32(i32 22, float %3621)  ; Frc(value)
  %3623 = call float @dx.op.unary.f32(i32 23, float %3561)  ; Log(value)
  %3624 = fadd fast float %3623, -6.000000e+00
  %3625 = call float @dx.op.unary.f32(i32 21, float %3624)  ; Exp(value)
  %3626 = fmul fast float %3622, 2.000000e+00
  %3627 = fadd fast float %3626, -1.000000e+00
  %3628 = fmul fast float %3625, %3627
  %3629 = fcmp fast ogt float %3561, 0.000000e+00
  %3630 = select i1 %3629, float %3628, float 0.000000e+00
  %3631 = fadd fast float %3630, %3561
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %66, i32 %67, i32 %68, float %3609, float %3620, float %3631, float %3609, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3632

; <label>:3632                                    ; preds = %3598, %3597
  %3633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %3634 = extractvalue %dx.types.CBufRet.f32 %3633, 0
  %3635 = fmul fast float %3634, %2096
  %3636 = fmul fast float %3635, 5.000000e-01
  %3637 = fadd fast float %2096, %2096
  %3638 = fmul fast float %3634, %3637
  %3639 = fmul fast float %3638, 2.500000e-01
  %3640 = fadd fast float %3639, %3636
  %3641 = fmul fast float %3640, %3640
  store float %211, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  %3642 = fmul fast float %3640, %211
  store float %3642, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  %3643 = fmul fast float %3641, %211
  store float %3643, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3644 = load float, float addrspace(3)* %218, align 4, !tbaa !54, !noalias !58
  %3645 = fadd fast float %3644, %211
  %3646 = load float, float addrspace(3)* %221, align 4, !tbaa !54, !noalias !58
  %3647 = fadd fast float %3640, %3646
  %3648 = load float, float addrspace(3)* %224, align 4, !tbaa !54, !noalias !58
  %3649 = fadd fast float %3641, %3648
  store float %3645, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  store float %3647, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  store float %3649, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3650 = load float, float addrspace(3)* %228, align 4, !tbaa !54, !noalias !58
  %3651 = fadd fast float %3650, %3645
  %3652 = load float, float addrspace(3)* %231, align 4, !tbaa !54, !noalias !58
  %3653 = fadd fast float %3652, %3647
  %3654 = load float, float addrspace(3)* %234, align 4, !tbaa !54, !noalias !58
  %3655 = fadd fast float %3654, %3649
  store float %3651, float addrspace(3)* %212, align 4, !tbaa !54, !noalias !58
  store float %3653, float addrspace(3)* %214, align 4, !tbaa !54, !noalias !58
  store float %3655, float addrspace(3)* %216, align 4, !tbaa !54, !noalias !58
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3656 = load float, float addrspace(3)* %238, align 4, !tbaa !54, !noalias !58
  %3657 = fadd fast float %3656, %3651
  %3658 = load float, float addrspace(3)* %241, align 4, !tbaa !54, !noalias !58
  %3659 = fadd fast float %3658, %3653
  %3660 = fdiv fast float %3659, %3657
  br i1 %249, label %3661, label %3669, !dx.controlflow.hints !64

; <label>:3661                                    ; preds = %3632
  %3662 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %237
  %3663 = load float, float addrspace(3)* %3662, align 4, !tbaa !54, !noalias !58
  %3664 = fadd fast float %3663, %3655
  %3665 = fdiv fast float %3664, %3657
  %3666 = lshr i32 %66, 1
  %3667 = lshr i32 %67, 1
  %3668 = lshr i32 %68, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3666, i32 %3667, i32 %3668, float %3660, float %3665, float %3660, float %3660, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3669

; <label>:3669                                    ; preds = %3661, %3632
  br i1 %77, label %3698, label %3670, !dx.controlflow.hints !65

; <label>:3670                                    ; preds = %3669
  %3671 = fadd fast float %116, 0x3FE3C6EF40000000
  %3672 = call float @dx.op.unary.f32(i32 22, float %3671)  ; Frc(value)
  %3673 = call float @dx.op.unary.f32(i32 23, float %3635)  ; Log(value)
  %3674 = fadd fast float %3673, -7.000000e+00
  %3675 = call float @dx.op.unary.f32(i32 21, float %3674)  ; Exp(value)
  %3676 = fmul fast float %3672, 2.000000e+00
  %3677 = fadd fast float %3676, -1.000000e+00
  %3678 = fmul fast float %3675, %3677
  %3679 = fcmp fast ogt float %3635, 0.000000e+00
  %3680 = select i1 %3679, float %3678, float 0.000000e+00
  %3681 = fadd fast float %3680, %3635
  %3682 = fadd fast float %116, 0x3FF3C6EF40000000
  %3683 = call float @dx.op.unary.f32(i32 22, float %3682)  ; Frc(value)
  %3684 = fmul fast float %3683, 2.000000e+00
  %3685 = fadd fast float %3684, -1.000000e+00
  %3686 = fmul fast float %3675, %3685
  %3687 = select i1 %3679, float %3686, float 0.000000e+00
  %3688 = fadd fast float %3687, %3635
  %3689 = fadd fast float %116, 0x3FFDAA66E0000000
  %3690 = call float @dx.op.unary.f32(i32 22, float %3689)  ; Frc(value)
  %3691 = fadd fast float %3673, -6.000000e+00
  %3692 = call float @dx.op.unary.f32(i32 21, float %3691)  ; Exp(value)
  %3693 = fmul fast float %3690, 2.000000e+00
  %3694 = fadd fast float %3693, -1.000000e+00
  %3695 = fmul fast float %3692, %3694
  %3696 = select i1 %3679, float %3695, float 0.000000e+00
  %3697 = fadd fast float %3696, %3635
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %66, i32 %67, i32 %68, float %3681, float %3688, float %3697, float %3681, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3698

; <label>:3698                                    ; preds = %3670, %3669
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
!dx.entryPoints = !{!51}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !37, !42, !45}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35}
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
!29 = !{i32 21, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!30 = !{i32 22, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !33}
!33 = !{i32 1, i32 80}
!34 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!35 = !{i32 26, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !36}
!36 = !{i32 1, i32 4}
!37 = !{!38, !39, !40, !41}
!38 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!39 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!40 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!41 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!42 = !{!43, !44}
!43 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!44 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!45 = !{!46, !47, !48, !49, !50}
!46 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!47 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!48 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!49 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!50 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!51 = !{void ()* @cs_volumetric_forwardplus_scatter_local_afog, !"cs_volumetric_forwardplus_scatter_local_afog", null, !4, !52}
!52 = !{i32 0, i64 272, i32 4, !53}
!53 = !{i32 4, i32 4, i32 4}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!60 = distinct !{!60, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!61 = distinct !{!61, !60, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
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
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !85}
!102 = distinct !{!102, !85}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = !{!126, !128, !130, !59, !61}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = !{!133}
!133 = distinct !{!133, !134, !"\01?sort@@YAXAIAM00@Z: %c"}
!134 = distinct !{!134, !"\01?sort@@YAXAIAM00@Z"}
!135 = !{!136, !137, !126, !128, !130, !59, !61}
!136 = distinct !{!136, !134, !"\01?sort@@YAXAIAM00@Z: %a"}
!137 = distinct !{!137, !134, !"\01?sort@@YAXAIAM00@Z: %b"}
!138 = !{!137}
!139 = !{!136, !133, !126, !128, !130, !59, !61}
!140 = !{!136}
!141 = !{!137, !133, !126, !128, !130, !59, !61}
!142 = !{!143}
!143 = distinct !{!143, !144, !"\01?sort@@YAXAIAM00@Z: %c"}
!144 = distinct !{!144, !"\01?sort@@YAXAIAM00@Z"}
!145 = !{!146, !147, !126, !128, !130, !59, !61}
!146 = distinct !{!146, !144, !"\01?sort@@YAXAIAM00@Z: %a"}
!147 = distinct !{!147, !144, !"\01?sort@@YAXAIAM00@Z: %b"}
!148 = !{!147}
!149 = !{!146, !143, !126, !128, !130, !59, !61}
!150 = !{!146}
!151 = !{!147, !143, !126, !128, !130, !59, !61}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 2}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 2}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 2}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 2}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}

