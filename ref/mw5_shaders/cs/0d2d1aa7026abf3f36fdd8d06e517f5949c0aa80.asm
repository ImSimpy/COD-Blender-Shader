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
; shader hash: aca5a4dac7c2b2b8a42851775959b538
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
;                                   texture     f32          2d      T2            t21     1
;                                   texture     f32          2d      T3            t26     1
;                                   texture     f32          2d      T4            t43     1
;                                   texture     f32          2d      T5            t27     1
;                                   texture     f32          2d      T6            t40     1
;                                   texture    byte         r/o      T7            t44     1
;                                   texture     f32          3d      T8            t10     1
;                                   texture     f32          2d      T9            t33     1
;                                   texture     f32          3d     T10            t38     1
;                                   texture     f32          2d     T11            t35     1
;                                   texture     f32          2d     T12            t41     1
;                                   texture     f32          3d     T13            t16     1
;                                   texture     f32          2d     T14            t24     1
;                                   texture     f32          2d     T15            t25     1
;                                   texture     f32          2d     T16            t36     1
;                                   texture     f32          2d     T17            t37     1
;                                   texture  struct         r/o     T18            t39     1
;                                   texture    byte         r/o     T19            t42     1
;                                   texture     f32          2d     T20             t0     1
;                                   textureunorm_f32     2darray     T21            t34     1
;                                   texture    byte         r/o     T22            t28     1
;                                   texture     f32          2d     T23             t1     1
;                                   texture     f32          2d     T24            t23     1
;                                   texture     f32          2d     T25             t2     1
;                                   texture     f32          2d     T26            t18     1
;                                   texture     f32          1d     T27            t54     1
;                                   texture     f32          3d     T28             t5     1
;                                   texture    byte         r/o     T29            t13     1
;                                   texture  struct         r/o     T30            t14     1
;                                   texture    byte         r/o     T31            t15     1
;                                   texture  struct         r/o     T32            t29     1
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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

define void @cs_volumetric_forwardplus_scatter_local_water_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = alloca [4 x i32], align 4
  %46 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %47 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %48 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %49 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %50 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %51 = alloca [12 x float], align 4
  %52 = alloca [12 x float], align 4
  %53 = alloca [3 x float], align 4
  %54 = alloca [3 x float], align 4
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 3
  %57 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.i32 %57, 1
  %59 = mul i32 %58, %56
  %60 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.i32 %60, 1
  %62 = mul i32 %59, %61
  %63 = add i32 %62, %49
  %64 = shl i32 %63, 2
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %64, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  %67 = and i32 %66, 255
  %68 = lshr i32 %66, 8
  %69 = and i32 %68, 255
  %70 = lshr i32 %66, 16
  %71 = and i32 %70, 255
  %72 = shl nuw nsw i32 %67, 2
  %73 = shl nuw nsw i32 %69, 2
  %74 = shl nuw nsw i32 %71, 2
  %75 = add i32 %72, %46
  %76 = add i32 %73, %47
  %77 = add i32 %74, %48
  %78 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.i32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.i32 %78, 1
  %81 = extractvalue %dx.types.CBufRet.i32 %78, 2
  %82 = icmp uge i32 %75, %79
  %83 = icmp uge i32 %76, %80
  %84 = icmp uge i32 %77, %81
  %85 = or i1 %82, %83
  %86 = or i1 %84, %85
  %87 = xor i1 %86, true
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.i32 %88, 3
  %90 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %76, i32 %89)  ; UMad(a,b,c)
  %91 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %75, i32 %90)  ; UMad(a,b,c)
  %92 = mul i32 %91, -63
  %93 = lshr i32 %92, 17
  %94 = xor i32 %93, %92
  %95 = mul i32 %94, -511
  %96 = mul i32 %94, -8176
  %97 = xor i32 %95, %96
  %98 = mul i32 %97, -7
  %99 = mul i32 %97, -7168
  %100 = xor i32 %98, %99
  %101 = lshr i32 %100, 15
  %102 = xor i32 %101, %98
  %103 = and i32 %102, 127
  %104 = mul i32 %103, 3
  %105 = add i32 0, %104
  %106 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %105
  %107 = load float, float* %106, align 4
  %108 = mul i32 %103, 3
  %109 = add i32 1, %108
  %110 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %109
  %111 = load float, float* %110, align 4
  %112 = mul i32 %103, 3
  %113 = add i32 2, %112
  %114 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %113
  %115 = load float, float* %114, align 4
  %116 = uitofp i32 %89 to float
  %117 = fmul fast float %116, 0x3FEA36A940000000
  %118 = fmul fast float %116, 0x3FE5793080000000
  %119 = fmul fast float %116, 0x3FE1972580000000
  %120 = fadd fast float %107, %117
  %121 = fadd fast float %111, %118
  %122 = fadd fast float %115, %119
  %123 = call float @dx.op.unary.f32(i32 22, float %120)  ; Frc(value)
  %124 = call float @dx.op.unary.f32(i32 22, float %121)  ; Frc(value)
  %125 = call float @dx.op.unary.f32(i32 22, float %122)  ; Frc(value)
  %126 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %75, i32 %76, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = fcmp fast ogt float %127, -1.000000e+00
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %131 = select i1 %128, float %130, float 1.000000e+00
  %132 = fadd fast float %127, 1.000000e+00
  %133 = fmul fast float %131, %132
  %134 = uitofp i32 %75 to float
  %135 = uitofp i32 %76 to float
  %136 = uitofp i32 %77 to float
  %137 = fadd fast float %136, -5.000000e-01
  %138 = fadd fast float %137, %125
  %139 = fadd fast float %134, %123
  %140 = fadd fast float %135, %124
  %141 = fadd fast float %138, 5.000000e-01
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = fmul fast float %143, %139
  %147 = fmul fast float %144, %140
  %148 = fmul fast float %145, %141
  %149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.i32 %149, 0
  %151 = uitofp i32 %150 to float
  %152 = fmul fast float %151, %148
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = fmul fast float %152, %155
  %157 = call float @dx.op.unary.f32(i32 21, float %156)  ; Exp(value)
  %158 = fmul fast float %157, %154
  %159 = fsub fast float 4.000000e+00, %154
  %160 = fadd fast float %159, %158
  %161 = call float @dx.op.binary.f32(i32 36, float %160, float %133)  ; FMin(a,b)
  %162 = fmul fast float %146, 2.000000e+00
  %163 = fmul fast float %147, 2.000000e+00
  %164 = fsub fast float 1.000000e+00, %162
  %165 = fsub fast float 1.000000e+00, %163
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = fmul fast float %167, %164
  %171 = fmul fast float %168, %164
  %172 = fmul fast float %169, %164
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %177 = fmul fast float %174, %165
  %178 = fmul fast float %175, %165
  %179 = fmul fast float %176, %165
  %180 = fadd fast float %177, %170
  %181 = fadd fast float %178, %171
  %182 = fadd fast float %179, %172
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = fadd fast float %180, %184
  %188 = fadd fast float %181, %185
  %189 = fadd fast float %182, %186
  %190 = fmul fast float %187, %161
  %191 = fmul fast float %188, %161
  %192 = fmul fast float %189, %161
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 1
  %196 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %197 = fadd fast float %190, %194
  %198 = fadd fast float %191, %195
  %199 = fadd fast float %192, %196
  %200 = add i32 %77, 1
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %155, %201
  %203 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %204 = fmul fast float %155, %136
  %205 = call float @dx.op.unary.f32(i32 21, float %204)  ; Exp(value)
  %206 = fsub fast float %203, %205
  %207 = fmul fast float %154, %206
  %208 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = call float @dx.op.unary.f32(i32 25, float %208)  ; Rsqrt(value)
  %210 = fmul fast float %209, %190
  %211 = fmul fast float %209, %191
  %212 = fmul fast float %209, %192
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = fcmp fast ogt float %214, 0.000000e+00
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = extractvalue %dx.types.CBufRet.f32 %216, 1
  %219 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %220 = fsub fast float %197, %217
  %221 = fadd fast float %220, %219
  %222 = fsub fast float %198, %218
  %223 = fadd fast float %222, %219
  %224 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %225 = fmul fast float %221, %224
  %226 = fmul fast float %223, %224
  %227 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %228 = call float @dx.op.unary.f32(i32 7, float %226)  ; Saturate(value)
  %229 = fsub fast float 1.000000e+00, %227
  %230 = fsub fast float 1.000000e+00, %228
  %231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %41, float %229, float %230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = fmul fast float %234, %232
  %236 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %237 = fadd fast float %236, %235
  %238 = fcmp fast ogt float %232, 0.000000e+00
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = and i32 %240, 32768
  %242 = icmp ne i32 %241, 0
  %243 = and i1 %238, %242
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %246 = fadd fast float %245, %237
  %247 = fcmp fast ole float %199, %246
  %248 = and i1 %243, %247
  %249 = select i1 %215, i32 %150, i32 0
  %250 = add i32 %249, %77
  %251 = xor i1 %215, %248
  %252 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %253 = fmul fast float %252, 0x3FE62E4300000000
  %254 = fmul fast float %253, %253
  %255 = select i1 %86, float 0.000000e+00, float 1.000000e+00
  %256 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %50
  store float %255, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  %257 = fmul fast float %253, %255
  %258 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %50
  store float %257, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  %259 = fmul fast float %254, %255
  %260 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %50
  store float %259, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %261 = xor i32 %50, 4
  %262 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %261
  %263 = load float, float addrspace(3)* %262, align 4, !tbaa !61, !noalias !65
  %264 = fadd fast float %263, %255
  %265 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %261
  %266 = load float, float addrspace(3)* %265, align 4, !tbaa !61, !noalias !65
  %267 = fadd fast float %266, %253
  %268 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %261
  %269 = load float, float addrspace(3)* %268, align 4, !tbaa !61, !noalias !65
  %270 = fadd fast float %269, %254
  store float %264, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  store float %267, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  store float %270, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %271 = xor i32 %50, 16
  %272 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %271
  %273 = load float, float addrspace(3)* %272, align 4, !tbaa !61, !noalias !65
  %274 = fadd fast float %273, %264
  %275 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %271
  %276 = load float, float addrspace(3)* %275, align 4, !tbaa !61, !noalias !65
  %277 = fadd fast float %276, %267
  %278 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %271
  %279 = load float, float addrspace(3)* %278, align 4, !tbaa !61, !noalias !65
  %280 = fadd fast float %279, %270
  store float %274, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  store float %277, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  store float %280, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %281 = xor i32 %50, 1
  %282 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %281
  %283 = load float, float addrspace(3)* %282, align 4, !tbaa !61, !noalias !65
  %284 = fadd fast float %283, %274
  %285 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %281
  %286 = load float, float addrspace(3)* %285, align 4, !tbaa !61, !noalias !65
  %287 = fadd fast float %286, %277
  %288 = fdiv fast float %287, %284
  %289 = and i32 %75, 1
  %290 = and i32 %289, %76
  %291 = and i32 %290, %250
  %292 = icmp ne i32 %291, 0
  %293 = and i1 %292, %87
  br i1 %293, label %294, label %302, !dx.controlflow.hints !69

; <label>:294                                     ; preds = %0
  %295 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %281
  %296 = load float, float addrspace(3)* %295, align 4, !tbaa !61, !noalias !65
  %297 = fadd fast float %296, %280
  %298 = fdiv fast float %297, %284
  %299 = lshr i32 %75, 1
  %300 = lshr i32 %76, 1
  %301 = lshr i32 %250, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %299, i32 %300, i32 %301, float %288, float %298, float %288, float %288, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %302

; <label>:302                                     ; preds = %294, %0
  br i1 %86, label %304, label %303, !dx.controlflow.hints !70

; <label>:303                                     ; preds = %302
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %75, i32 %76, i32 %250, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %304

; <label>:304                                     ; preds = %303, %302
  store float %255, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  store float 0.000000e+00, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  store float 0.000000e+00, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %305 = load float, float addrspace(3)* %262, align 4, !tbaa !61, !noalias !65
  %306 = fadd fast float %305, %255
  %307 = load float, float addrspace(3)* %265, align 4, !tbaa !61, !noalias !65
  %308 = load float, float addrspace(3)* %268, align 4, !tbaa !61, !noalias !65
  store float %306, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  store float %307, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  store float %308, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %309 = load float, float addrspace(3)* %272, align 4, !tbaa !61, !noalias !65
  %310 = fadd fast float %309, %306
  %311 = load float, float addrspace(3)* %275, align 4, !tbaa !61, !noalias !65
  %312 = fadd fast float %311, %307
  %313 = load float, float addrspace(3)* %278, align 4, !tbaa !61, !noalias !65
  %314 = fadd fast float %313, %308
  store float %310, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  store float %312, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  store float %314, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %315 = load float, float addrspace(3)* %282, align 4, !tbaa !61, !noalias !65
  %316 = fadd fast float %315, %310
  %317 = load float, float addrspace(3)* %285, align 4, !tbaa !61, !noalias !65
  %318 = fadd fast float %317, %312
  %319 = fdiv fast float %318, %316
  br i1 %293, label %320, label %328, !dx.controlflow.hints !71

; <label>:320                                     ; preds = %304
  %321 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %281
  %322 = load float, float addrspace(3)* %321, align 4, !tbaa !61, !noalias !65
  %323 = fadd fast float %322, %314
  %324 = fdiv fast float %323, %316
  %325 = lshr i32 %75, 1
  %326 = lshr i32 %76, 1
  %327 = lshr i32 %250, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %325, i32 %326, i32 %327, float %319, float %324, float %319, float %319, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %328

; <label>:328                                     ; preds = %320, %304
  br i1 %86, label %330, label %329, !dx.controlflow.hints !72

; <label>:329                                     ; preds = %328
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %75, i32 %76, i32 %250, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %330

; <label>:330                                     ; preds = %329, %328
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = fsub fast float %199, %332
  %335 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %334)  ; FMax(a,b)
  %336 = fmul fast float %335, 0x3FF7154760000000
  %337 = fmul fast float %336, %333
  %338 = call float @dx.op.unary.f32(i32 21, float %337)  ; Exp(value)
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = fmul fast float %345, %338
  %347 = fmul fast float %346, %340
  %348 = fmul fast float %346, %341
  %349 = fmul fast float %346, %342
  %350 = fmul fast float %346, %344
  %351 = select i1 %248, float 0.000000e+00, float %346
  %352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.i32 %352, 2
  %354 = extractvalue %dx.types.CBufRet.i32 %352, 3
  %355 = call i32 @dx.op.tertiary.i32(i32 49, i32 %69, i32 %353, i32 %67)  ; UMad(a,b,c)
  %356 = call i32 @dx.op.tertiary.i32(i32 49, i32 %71, i32 %354, i32 %355)  ; UMad(a,b,c)
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %356, i32 0)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = fadd fast float %134, 1.000000e+00
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = fmul fast float %365, %138
  %367 = call float @dx.op.unary.f32(i32 21, float %366)  ; Exp(value)
  %368 = fmul fast float %367, %364
  %369 = fsub fast float 4.000000e+00, %364
  %370 = fadd fast float %369, %368
  %371 = fmul fast float %359, 2.000000e+00
  %372 = fmul fast float %371, %361
  %373 = fmul fast float %135, 2.000000e+00
  %374 = fmul fast float %373, %362
  %375 = fsub fast float 1.000000e+00, %372
  %376 = fsub fast float 1.000000e+00, %374
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %380 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %381 = fmul fast float %378, %375
  %382 = fmul fast float %379, %375
  %383 = fmul fast float %380, %375
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %387 = extractvalue %dx.types.CBufRet.f32 %384, 2
  %388 = fmul fast float %385, %376
  %389 = fmul fast float %386, %376
  %390 = fmul fast float %387, %376
  %391 = fadd fast float %388, %381
  %392 = fadd fast float %389, %382
  %393 = fadd fast float %390, %383
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %397 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %398 = fadd fast float %391, %395
  %399 = fadd fast float %392, %396
  %400 = fadd fast float %393, %397
  %401 = fadd fast float %135, 1.000000e+00
  %402 = fmul fast float %134, 2.000000e+00
  %403 = fmul fast float %402, %361
  %404 = fmul fast float %401, 2.000000e+00
  %405 = fmul fast float %404, %362
  %406 = fsub fast float 1.000000e+00, %403
  %407 = fsub fast float 1.000000e+00, %405
  %408 = fmul fast float %378, %406
  %409 = fmul fast float %379, %406
  %410 = fmul fast float %380, %406
  %411 = fmul fast float %385, %407
  %412 = fmul fast float %386, %407
  %413 = fmul fast float %387, %407
  %414 = fadd fast float %411, %408
  %415 = fadd fast float %412, %409
  %416 = fadd fast float %413, %410
  %417 = fadd fast float %414, %395
  %418 = fadd fast float %415, %396
  %419 = fadd fast float %416, %397
  %420 = fmul fast float %417, %370
  %421 = fmul fast float %418, %370
  %422 = fmul fast float %419, %370
  %423 = fadd fast float %417, %398
  %424 = fmul fast float %370, %423
  %425 = fadd fast float %418, %399
  %426 = fmul fast float %370, %425
  %427 = fadd fast float %419, %400
  %428 = fmul fast float %370, %427
  %429 = fmul fast float %424, 5.000000e-01
  %430 = fmul fast float %426, 5.000000e-01
  %431 = fmul fast float %428, 5.000000e-01
  %432 = fsub fast float %429, %420
  %433 = fsub fast float %430, %421
  %434 = fsub fast float %431, %422
  %435 = call float @dx.op.dot3.f32(i32 55, float %432, float %433, float %434, float %432, float %433, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %436 = call float @dx.op.unary.f32(i32 25, float %435)  ; Rsqrt(value)
  %437 = fmul fast float %435, 2.000000e+00
  %438 = fmul fast float %437, %436
  %439 = call float @dx.op.binary.f32(i32 35, float %207, float %438)  ; FMax(a,b)
  %440 = xor i1 %248, true
  %441 = and i32 %358, 8
  %442 = icmp ne i32 %441, 0
  %443 = and i1 %442, %440
  br i1 %443, label %444, label %660, !dx.controlflow.hints !73

; <label>:444                                     ; preds = %330
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %453 = fsub fast float %197, %450
  %454 = fsub fast float %198, %451
  %455 = fsub fast float %199, %452
  %456 = fmul fast float %453, %446
  %457 = fmul fast float %454, %447
  %458 = fmul fast float %455, %448
  %459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.i32 %459, 3
  %461 = icmp eq i32 %460, 0
  %462 = fcmp fast oge float %458, 0.000000e+00
  %463 = fcmp fast ole float %458, 1.000000e+00
  br i1 %461, label %466, label %464, !dx.controlflow.hints !74

; <label>:464                                     ; preds = %444
  %465 = and i1 %462, %463
  br label %476

; <label>:466                                     ; preds = %444
  %467 = fcmp fast oge float %456, 0.000000e+00
  %468 = fcmp fast oge float %457, 0.000000e+00
  %469 = and i1 %467, %468
  %470 = and i1 %462, %469
  %471 = fcmp fast ole float %456, 1.000000e+00
  %472 = fcmp fast ole float %457, 1.000000e+00
  %473 = and i1 %471, %472
  %474 = and i1 %463, %473
  %475 = and i1 %470, %474
  br label %476

; <label>:476                                     ; preds = %466, %464
  %477 = phi i1 [ %465, %464 ], [ %475, %466 ]
  br i1 %477, label %478, label %653, !dx.controlflow.hints !75

; <label>:478                                     ; preds = %476
  %479 = fcmp fast oeq float %439, 0.000000e+00
  br i1 %479, label %494, label %480, !dx.controlflow.hints !76

; <label>:480                                     ; preds = %478
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 3
  %483 = fmul fast float %482, %439
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 0
  %486 = extractvalue %dx.types.CBufRet.f32 %484, 1
  %487 = extractvalue %dx.types.CBufRet.f32 %484, 2
  %488 = fmul fast float %485, %483
  %489 = fmul fast float %486, %483
  %490 = fmul fast float %487, %483
  %491 = call float @dx.op.unary.f32(i32 23, float %488)  ; Log(value)
  %492 = call float @dx.op.unary.f32(i32 23, float %489)  ; Log(value)
  %493 = call float @dx.op.unary.f32(i32 23, float %490)  ; Log(value)
  br label %494

; <label>:494                                     ; preds = %480, %478
  %495 = phi float [ %491, %480 ], [ 0.000000e+00, %478 ]
  %496 = phi float [ %492, %480 ], [ 0.000000e+00, %478 ]
  %497 = phi float [ %493, %480 ], [ 0.000000e+00, %478 ]
  %498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.i32 %498, 0
  %500 = extractvalue %dx.types.CBufRet.i32 %498, 1
  %501 = uitofp i32 %499 to float
  %502 = uitofp i32 %500 to float
  %503 = fmul fast float %456, %501
  %504 = fmul fast float %457, %502
  %505 = fadd fast float %503, 5.000000e-01
  %506 = fadd fast float %504, 5.000000e-01
  %507 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %508 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %509 = call float @dx.op.unary.f32(i32 27, float %505)  ; Round_ni(value)
  %510 = call float @dx.op.unary.f32(i32 27, float %506)  ; Round_ni(value)
  %511 = fadd fast float %509, 1.000000e+00
  %512 = fadd fast float %510, 1.000000e+00
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 0
  %515 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %516 = fmul fast float %514, %511
  %517 = fmul fast float %515, %512
  %518 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %23, %dx.types.Handle %40, float %516, float %517, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = extractvalue %dx.types.ResRet.f32 %518, 1
  %521 = extractvalue %dx.types.ResRet.f32 %518, 2
  %522 = extractvalue %dx.types.ResRet.f32 %518, 3
  %523 = extractvalue %dx.types.CBufRet.i32 %498, 2
  %524 = extractvalue %dx.types.CBufRet.f32 %513, 2
  %525 = uitofp i32 %523 to float
  %526 = fadd fast float %525, -1.000000e+00
  %527 = fmul fast float %526, %519
  %528 = fmul fast float %526, %520
  %529 = fmul fast float %526, %521
  %530 = fmul fast float %526, %522
  %531 = fadd fast float %527, 5.000000e-01
  %532 = fadd fast float %528, 5.000000e-01
  %533 = fadd fast float %529, 5.000000e-01
  %534 = fadd fast float %530, 5.000000e-01
  %535 = fptoui float %531 to i32
  %536 = fptoui float %532 to i32
  %537 = fptoui float %533 to i32
  %538 = fptoui float %534 to i32
  %539 = uitofp i32 %535 to float
  %540 = uitofp i32 %536 to float
  %541 = uitofp i32 %537 to float
  %542 = uitofp i32 %538 to float
  %543 = fadd fast float %539, 5.000000e-01
  %544 = fadd fast float %540, 5.000000e-01
  %545 = fadd fast float %541, 5.000000e-01
  %546 = fadd fast float %542, 5.000000e-01
  %547 = fmul fast float %543, %524
  %548 = fmul fast float %544, %524
  %549 = fmul fast float %545, %524
  %550 = fmul fast float %546, %524
  %551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %41, float %547, float %458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %41, float %548, float %458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %41, float %549, float %458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %41, float %550, float %458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = fsub fast float %556, %558
  %560 = fmul fast float %559, %507
  %561 = fadd fast float %560, %558
  %562 = fsub fast float %554, %552
  %563 = fmul fast float %562, %507
  %564 = fadd fast float %563, %552
  %565 = fsub fast float %564, %561
  %566 = fmul fast float %565, %508
  %567 = fadd fast float %566, %561
  %568 = fcmp fast ogt float %567, 0.000000e+00
  br i1 %568, label %569, label %637, !dx.controlflow.hints !77

; <label>:569                                     ; preds = %494
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %573 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %578 = fmul fast float %454, %446
  %579 = fmul fast float %455, %446
  %580 = fadd fast float %456, %575
  %581 = fadd fast float %578, %576
  %582 = fadd fast float %579, %577
  %583 = fmul fast float %580, %571
  %584 = fmul fast float %581, %571
  %585 = fmul fast float %582, %571
  %586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %583, float %584, float %585, float undef, i32 0, i32 0, i32 0, float %495)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = fmul fast float %580, %572
  %589 = fmul fast float %581, %572
  %590 = fmul fast float %582, %572
  %591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %588, float %589, float %590, float undef, i32 0, i32 0, i32 0, float %496)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 1
  %593 = fmul fast float %580, %573
  %594 = fmul fast float %581, %573
  %595 = fmul fast float %582, %573
  %596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %593, float %594, float %595, float undef, i32 0, i32 0, i32 0, float %497)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 2
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %600 = fmul fast float %592, %587
  %601 = fmul fast float %600, %597
  %602 = call float @dx.op.unary.f32(i32 23, float %601)  ; Log(value)
  %603 = fmul fast float %602, %599
  %604 = call float @dx.op.unary.f32(i32 21, float %603)  ; Exp(value)
  %605 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %606 = fmul fast float %567, %567
  %607 = fmul fast float %606, %604
  %608 = fmul fast float %607, %605
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 3
  %611 = fmul fast float %610, %608
  %612 = bitcast float %611 to i32
  %613 = sitofp i32 %612 to float
  %614 = fptosi float %613 to i32
  %615 = bitcast i32 %614 to float
  %616 = fsub fast float 1.000000e+00, %608
  %617 = bitcast float %616 to i32
  %618 = sitofp i32 %617 to float
  %619 = fptosi float %618 to i32
  %620 = bitcast i32 %619 to float
  %621 = fadd fast float %615, %620
  %622 = bitcast float %621 to i32
  %623 = sub nsw i32 2129859010, %622
  %624 = bitcast i32 %623 to float
  %625 = fmul fast float %624, %615
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 2
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = fmul fast float %625, %629
  %631 = fadd fast float %630, 1.000000e+00
  %632 = bitcast float %631 to i32
  %633 = sub nsw i32 2129859010, %632
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %625, %627
  %636 = fmul fast float %635, %634
  br label %637

; <label>:637                                     ; preds = %569, %494
  %638 = phi float [ %636, %569 ], [ %567, %494 ]
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %642 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.f32 %643, 1
  %645 = fmul fast float %640, %638
  %646 = fmul fast float %641, %638
  %647 = fmul fast float %642, %638
  %648 = fadd fast float %645, %347
  %649 = fadd fast float %646, %348
  %650 = fadd fast float %647, %349
  %651 = fmul fast float %644, %638
  %652 = fadd fast float %651, %350
  br label %653

; <label>:653                                     ; preds = %637, %476
  %654 = phi float [ %648, %637 ], [ %347, %476 ]
  %655 = phi float [ %649, %637 ], [ %348, %476 ]
  %656 = phi float [ %650, %637 ], [ %349, %476 ]
  %657 = phi float [ %652, %637 ], [ %350, %476 ]
  %658 = phi float [ %638, %637 ], [ 0.000000e+00, %476 ]
  %659 = fadd fast float %658, %351
  br label %660

; <label>:660                                     ; preds = %653, %330
  %661 = phi float [ %654, %653 ], [ %347, %330 ]
  %662 = phi float [ %655, %653 ], [ %348, %330 ]
  %663 = phi float [ %656, %653 ], [ %349, %330 ]
  %664 = phi float [ %657, %653 ], [ %350, %330 ]
  %665 = phi float [ %659, %653 ], [ %351, %330 ]
  %666 = phi float [ %658, %653 ], [ 0.000000e+00, %330 ]
  br i1 %248, label %1164, label %667, !dx.controlflow.hints !78

; <label>:667                                     ; preds = %660
  %668 = and i32 %358, 2
  %669 = icmp ne i32 %668, 0
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 2
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 2
  %674 = fadd fast float %673, %671
  %675 = fcmp fast ole float %199, %674
  %676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.i32 %676, 3
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %698, !dx.controlflow.hints !79

; <label>:679                                     ; preds = %667
  %680 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %681 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %682 = fsub fast float %197, %680
  %683 = fsub fast float %198, %681
  %684 = extractvalue %dx.types.CBufRet.f32 %672, 0
  %685 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %686 = fdiv fast float 1.000000e+00, %684
  %687 = fdiv fast float 1.000000e+00, %685
  %688 = fmul fast float %682, %686
  %689 = fmul fast float %687, %683
  %690 = fcmp fast oge float %688, 0.000000e+00
  %691 = fcmp fast oge float %689, 0.000000e+00
  %692 = and i1 %690, %691
  %693 = and i1 %675, %692
  %694 = fcmp fast ole float %688, 1.000000e+00
  %695 = fcmp fast ole float %689, 1.000000e+00
  %696 = and i1 %694, %695
  %697 = and i1 %696, %693
  br label %698

; <label>:698                                     ; preds = %679, %667
  %699 = phi i1 [ %697, %679 ], [ %675, %667 ]
  %700 = and i1 %669, %699
  br i1 %700, label %701, label %880, !dx.controlflow.hints !80

; <label>:701                                     ; preds = %698
  %702 = fcmp fast oeq float %439, 0.000000e+00
  br i1 %702, label %708, label %703, !dx.controlflow.hints !81

; <label>:703                                     ; preds = %701
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 3
  %706 = fmul fast float %705, %439
  %707 = call float @dx.op.unary.f32(i32 23, float %706)  ; Log(value)
  br label %708

; <label>:708                                     ; preds = %703, %701
  %709 = phi float [ %707, %703 ], [ 0.000000e+00, %701 ]
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 0
  %712 = extractvalue %dx.types.CBufRet.f32 %710, 1
  %713 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %714 = fsub fast float %197, %711
  %715 = fsub fast float %198, %712
  %716 = fsub fast float %199, %713
  %717 = fmul fast float %714, %714
  %718 = fmul fast float %715, %715
  %719 = fadd fast float %717, %718
  %720 = fmul fast float %716, %716
  %721 = fadd fast float %719, %720
  %722 = call float @dx.op.unary.f32(i32 24, float %721)  ; Sqrt(value)
  %723 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %724 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %725 = fsub fast float %197, %723
  %726 = fsub fast float %198, %724
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 0
  %729 = extractvalue %dx.types.CBufRet.f32 %727, 1
  %730 = fmul fast float %725, %728
  %731 = fmul fast float %726, %729
  %732 = fsub fast float 1.000000e+00, %731
  br i1 %678, label %739, label %733, !dx.controlflow.hints !82

; <label>:733                                     ; preds = %708
  %734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %40, float %730, float %732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = extractvalue %dx.types.ResRet.f32 %734, 3
  br label %745

; <label>:739                                     ; preds = %708
  %740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %41, float %730, float %732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  br label %745

; <label>:745                                     ; preds = %739, %733
  %746 = phi float [ %735, %733 ], [ %741, %739 ]
  %747 = phi float [ %736, %733 ], [ %742, %739 ]
  %748 = phi float [ %737, %733 ], [ %743, %739 ]
  %749 = phi float [ %738, %733 ], [ %744, %739 ]
  %750 = extractvalue %dx.types.CBufRet.f32 %727, 3
  %751 = fmul fast float %750, %747
  %752 = fmul fast float %751, %746
  %753 = fsub fast float %751, %752
  %754 = fcmp fast ole float %753, 0.000000e+00
  %755 = fmul fast float %750, %748
  %756 = fadd fast float %755, %671
  %757 = fdiv fast float 1.000000e+00, %753
  %758 = select i1 %754, float 1.000000e+06, float %757
  %759 = fsub fast float %199, %671
  %760 = fsub fast float %759, %752
  %761 = fmul fast float %758, %760
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %764 = fmul fast float %763, %762
  %765 = fsub fast float %763, %764
  %766 = fcmp fast olt float %199, %756
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 3
  %769 = select i1 %766, float %768, float 1.000000e+00
  %770 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %771 = fcmp fast oeq float %770, 0.000000e+00
  br i1 %771, label %854, label %772, !dx.controlflow.hints !83

; <label>:772                                     ; preds = %745
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 3
  %775 = fcmp fast ogt float %774, 0.000000e+00
  %776 = extractvalue %dx.types.CBufRet.f32 %767, 2
  br i1 %775, label %777, label %807, !dx.controlflow.hints !84

; <label>:777                                     ; preds = %772
  %778 = fmul fast float %730, %774
  %779 = fmul fast float %731, %774
  %780 = fsub fast float 1.000000e+00, %779
  %781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %38, float %778, float %780, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = fmul fast float %782, 2.000000e+00
  %785 = fmul fast float %783, 2.000000e+00
  %786 = fadd fast float %784, -1.000000e+00
  %787 = fadd fast float %785, -1.000000e+00
  %788 = fmul fast float %770, %197
  %789 = fmul fast float %770, %198
  %790 = fmul fast float %770, %199
  %791 = call float @dx.op.unary.f32(i32 22, float %776)  ; Frc(value)
  %792 = fmul fast float %786, %791
  %793 = fmul fast float %787, %791
  %794 = fsub fast float %788, %792
  %795 = fsub fast float %789, %793
  %796 = fadd fast float %776, 5.000000e-01
  %797 = call float @dx.op.unary.f32(i32 22, float %796)  ; Frc(value)
  %798 = fmul fast float %797, %786
  %799 = fmul fast float %797, %787
  %800 = fadd fast float %788, -5.000000e-01
  %801 = fsub fast float %800, %798
  %802 = fadd fast float %789, -5.000000e-01
  %803 = fsub fast float %802, %799
  %804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %38, float %801, float %803, float %790, float undef, i32 0, i32 0, i32 0, float %709)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  %806 = extractvalue %dx.types.ResRet.f32 %804, 1
  br label %820

; <label>:807                                     ; preds = %772
  %808 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %809 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %810 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %811 = fmul fast float %776, %808
  %812 = fmul fast float %776, %809
  %813 = fmul fast float %776, %810
  %814 = fsub fast float %197, %811
  %815 = fsub fast float %198, %812
  %816 = fsub fast float %199, %813
  %817 = fmul fast float %814, %770
  %818 = fmul fast float %815, %770
  %819 = fmul fast float %816, %770
  br label %820

; <label>:820                                     ; preds = %807, %777
  %821 = phi float [ %794, %777 ], [ %817, %807 ]
  %822 = phi float [ %795, %777 ], [ %818, %807 ]
  %823 = phi float [ %790, %777 ], [ %819, %807 ]
  %824 = phi float [ %805, %777 ], [ 0.000000e+00, %807 ]
  %825 = phi float [ %806, %777 ], [ 0.000000e+00, %807 ]
  %826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %38, float %821, float %822, float %823, float undef, i32 0, i32 0, i32 0, float %709)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = extractvalue %dx.types.ResRet.f32 %826, 1
  br i1 %775, label %829, label %841, !dx.controlflow.hints !85

; <label>:829                                     ; preds = %820
  %830 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %831 = call float @dx.op.unary.f32(i32 22, float %830)  ; Frc(value)
  %832 = fmul fast float %831, 2.000000e+00
  %833 = fadd fast float %832, -1.000000e+00
  %834 = call float @dx.op.unary.f32(i32 6, float %833)  ; FAbs(value)
  %835 = fsub fast float %824, %827
  %836 = fmul fast float %834, %835
  %837 = fadd fast float %836, %827
  %838 = fsub fast float %825, %828
  %839 = fmul fast float %834, %838
  %840 = fadd fast float %839, %828
  br label %841

; <label>:841                                     ; preds = %829, %820
  %842 = phi float [ %837, %829 ], [ %827, %820 ]
  %843 = phi float [ %840, %829 ], [ %828, %820 ]
  %844 = extractvalue %dx.types.CBufRet.f32 %670, 3
  %845 = fadd fast float %844, %844
  %846 = fdiv fast float 2.000000e+00, %845
  %847 = fmul fast float %844, 2.000000e+00
  %848 = fadd fast float %842, -1.000000e+00
  %849 = fadd fast float %848, %843
  %850 = fadd fast float %849, %847
  %851 = fmul fast float %850, %846
  %852 = fadd fast float %851, -1.000000e+00
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  br label %854

; <label>:854                                     ; preds = %841, %745
  %855 = phi float [ %853, %841 ], [ 1.000000e+00, %745 ]
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %860 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %863 = fsub fast float %722, %862
  %864 = extractvalue %dx.types.CBufRet.f32 %861, 2
  %865 = fmul fast float %863, %864
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  %867 = fmul fast float %769, %749
  %868 = fmul fast float %867, %765
  %869 = fmul fast float %868, %855
  %870 = fmul fast float %869, %866
  %871 = fmul fast float %870, %857
  %872 = fmul fast float %870, %858
  %873 = fmul fast float %870, %859
  %874 = fadd fast float %871, %661
  %875 = fadd fast float %872, %662
  %876 = fadd fast float %873, %663
  %877 = fmul fast float %870, %860
  %878 = fadd fast float %877, %664
  %879 = fadd fast float %870, %665
  br label %880

; <label>:880                                     ; preds = %854, %698
  %881 = phi float [ %874, %854 ], [ %661, %698 ]
  %882 = phi float [ %875, %854 ], [ %662, %698 ]
  %883 = phi float [ %876, %854 ], [ %663, %698 ]
  %884 = phi float [ %878, %854 ], [ %664, %698 ]
  %885 = phi float [ %879, %854 ], [ %665, %698 ]
  %886 = and i32 %358, 1
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %1164, label %888, !dx.controlflow.hints !86

; <label>:888                                     ; preds = %880
  %889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.i32 %889, 1
  %891 = and i32 %890, 1
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %968, label %893, !dx.controlflow.hints !87

; <label>:893                                     ; preds = %888
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 3
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = extractvalue %dx.types.CBufRet.f32 %896, 1
  %899 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %900 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %901 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 3
  %908 = and i32 %890, 2
  %909 = extractvalue %dx.types.CBufRet.i32 %889, 0
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %947, label %911

; <label>:911                                     ; preds = %893
  br label %912

; <label>:912                                     ; preds = %912, %911
  %913 = phi float [ %941, %912 ], [ 0.000000e+00, %911 ]
  %914 = phi float [ %940, %912 ], [ 1.000000e+06, %911 ]
  %915 = phi i32 [ %942, %912 ], [ 0, %911 ]
  %916 = add i32 %915, 171
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %916)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %919 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %922 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %923 = fsub fast float %197, %918
  %924 = fsub fast float %198, %919
  %925 = fmul fast float %923, %923
  %926 = fmul fast float %924, %924
  %927 = fadd fast float %925, %926
  %928 = call float @dx.op.unary.f32(i32 24, float %927)  ; Sqrt(value)
  %929 = fsub fast float %928, %922
  %930 = icmp ne i32 %908, 0
  %931 = fsub fast float -0.000000e+00, %898
  %932 = select i1 %930, float %931, float %898
  %933 = fmul fast float %929, %932
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = fmul fast float %934, %897
  %936 = fsub fast float %921, %199
  %937 = fmul fast float %936, %895
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %939 = fmul fast float %935, %938
  %940 = call float @dx.op.binary.f32(i32 36, float %914, float %929)  ; FMin(a,b)
  %941 = call float @dx.op.binary.f32(i32 35, float %913, float %939)  ; FMax(a,b)
  %942 = add nuw nsw i32 %915, 1
  %943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.i32 %943, 0
  %945 = icmp ult i32 %942, %944
  br i1 %945, label %912, label %946

; <label>:946                                     ; preds = %912
  br label %947

; <label>:947                                     ; preds = %946, %893
  %948 = phi float [ 0.000000e+00, %893 ], [ %941, %946 ]
  %949 = phi float [ 1.000000e+06, %893 ], [ %940, %946 ]
  %950 = fadd fast float %948, %885
  %951 = fmul fast float %949, %907
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %953 = fsub fast float %903, %899
  %954 = fsub fast float %904, %900
  %955 = fsub fast float %905, %901
  %956 = fmul fast float %952, %953
  %957 = fmul fast float %952, %954
  %958 = fmul fast float %952, %955
  %959 = fadd fast float %956, %899
  %960 = fadd fast float %957, %900
  %961 = fadd fast float %958, %901
  %962 = fmul fast float %959, %948
  %963 = fmul fast float %960, %948
  %964 = fmul fast float %961, %948
  %965 = fadd fast float %962, %881
  %966 = fadd fast float %963, %882
  %967 = fadd fast float %964, %883
  br label %1164

; <label>:968                                     ; preds = %888
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %971 = extractvalue %dx.types.CBufRet.f32 %969, 3
  %972 = fmul fast float %970, %197
  %973 = fmul fast float %971, %198
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 0
  %976 = extractvalue %dx.types.CBufRet.f32 %974, 1
  %977 = fadd fast float %972, %975
  %978 = fadd fast float %973, %976
  %979 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %980 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %41, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 0
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = fmul fast float %984, %982
  %986 = fsub fast float %977, %979
  %987 = fsub fast float %978, %980
  %988 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %989 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %990 = fmul fast float %988, %986
  %991 = fmul fast float %989, %987
  %992 = fmul fast float %990, %990
  %993 = fmul fast float %991, %991
  %994 = fadd fast float %992, %993
  %995 = call float @dx.op.unary.f32(i32 24, float %994)  ; Sqrt(value)
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 3
  %998 = fmul fast float %997, %995
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1000 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1001 = fsub fast float %1000, %985
  %1002 = fmul fast float %1001, %999
  %1003 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %1004 = fsub fast float %199, %985
  %1005 = fsub fast float %1004, %1003
  %1006 = fsub fast float %1005, %1002
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 2
  %1009 = fsub fast float %1006, %1008
  %1010 = fcmp fast olt float %1009, 0.000000e+00
  %1011 = extractvalue %dx.types.CBufRet.i32 %889, 0
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1063, label %1013

; <label>:1013                                    ; preds = %968
  br label %1014

; <label>:1014                                    ; preds = %1052, %1013
  %1015 = phi i32 [ %1058, %1052 ], [ 1, %1013 ]
  %1016 = phi i32 [ %1059, %1052 ], [ 0, %1013 ]
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 1
  %1019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.i32 %1019, 1
  %1021 = and i32 %1020, 8
  %1022 = icmp eq i32 %1021, 0
  %1023 = fcmp fast ogt float %1018, %1006
  %1024 = or i1 %1023, %1022
  %1025 = add i32 %1016, 171
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %1025)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.CBufRet.f32 %1026, 2
  br i1 %1024, label %1030, label %1036, !dx.controlflow.hints !88

; <label>:1030                                    ; preds = %1014
  %1031 = fsub fast float %1027, %197
  %1032 = fsub fast float %1028, %198
  %1033 = fmul fast float %1031, %1031
  %1034 = fmul fast float %1032, %1032
  %1035 = fadd fast float %1033, %1034
  br label %1052

; <label>:1036                                    ; preds = %1014
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1039 = extractvalue %dx.types.CBufRet.f32 %1017, 2
  %1040 = fmul fast float %1039, %1038
  %1041 = fsub fast float %1040, %1018
  %1042 = fdiv fast float %1029, %1041
  %1043 = fsub fast float %197, %1027
  %1044 = fsub fast float %198, %1028
  %1045 = fsub fast float %1006, %1018
  %1046 = fmul fast float %1042, %1045
  %1047 = fmul fast float %1043, %1043
  %1048 = fmul fast float %1044, %1044
  %1049 = fadd fast float %1047, %1048
  %1050 = fmul fast float %1046, %1046
  %1051 = fadd fast float %1049, %1050
  br label %1052

; <label>:1052                                    ; preds = %1036, %1030
  %1053 = phi float [ %1035, %1030 ], [ %1051, %1036 ]
  %1054 = call float @dx.op.unary.f32(i32 24, float %1053)  ; Sqrt(value)
  %1055 = fsub float %1029, %1054
  %1056 = fcmp fast olt float %1055, 0.000000e+00
  %1057 = zext i1 %1056 to i32
  %1058 = and i32 %1057, %1015
  %1059 = add i32 %1016, 1
  %1060 = extractvalue %dx.types.CBufRet.i32 %1019, 0
  %1061 = icmp ult i32 %1059, %1060
  br i1 %1061, label %1014, label %1062

; <label>:1062                                    ; preds = %1052
  br label %1063

; <label>:1063                                    ; preds = %1062, %968
  %1064 = phi i32 [ 1, %968 ], [ %1058, %1062 ]
  br label %1065

; <label>:1065                                    ; preds = %1065, %1063
  %1066 = phi i32 [ %1102, %1065 ], [ %1064, %1063 ]
  %1067 = phi i32 [ %1103, %1065 ], [ 0, %1063 ]
  %1068 = add nuw nsw i32 %1067, 191
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %1068)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.CBufRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.CBufRet.f32 %1069, 2
  %1073 = add nuw nsw i32 %1067, 195
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %1073)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.CBufRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.CBufRet.f32 %1074, 2
  %1078 = fsub fast float %197, %1070
  %1079 = fsub fast float %198, %1071
  %1080 = fsub fast float %1006, %1072
  %1081 = call float @dx.op.unary.f32(i32 6, float %1078)  ; FAbs(value)
  %1082 = call float @dx.op.unary.f32(i32 6, float %1079)  ; FAbs(value)
  %1083 = call float @dx.op.unary.f32(i32 6, float %1080)  ; FAbs(value)
  %1084 = fsub fast float %1081, %1075
  %1085 = fsub fast float %1082, %1076
  %1086 = fsub fast float %1083, %1077
  %1087 = call float @dx.op.binary.f32(i32 35, float %1084, float 0.000000e+00)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 35, float %1085, float 0.000000e+00)  ; FMax(a,b)
  %1089 = call float @dx.op.binary.f32(i32 35, float %1086, float 0.000000e+00)  ; FMax(a,b)
  %1090 = fmul fast float %1087, %1087
  %1091 = fmul fast float %1088, %1088
  %1092 = fadd fast float %1091, %1090
  %1093 = fmul fast float %1089, %1089
  %1094 = fadd fast float %1092, %1093
  %1095 = call float @dx.op.unary.f32(i32 24, float %1094)  ; Sqrt(value)
  %1096 = call float @dx.op.binary.f32(i32 35, float %1085, float %1086)  ; FMax(a,b)
  %1097 = call float @dx.op.binary.f32(i32 35, float %1084, float %1096)  ; FMax(a,b)
  %1098 = call float @dx.op.binary.f32(i32 36, float %1097, float 0.000000e+00)  ; FMin(a,b)
  %1099 = fadd fast float %1098, %1095
  %1100 = fcmp ogt float %1099, -0.000000e+00
  %1101 = zext i1 %1100 to i32
  %1102 = and i32 %1101, %1066
  %1103 = add nuw nsw i32 %1067, 1
  %1104 = icmp eq i32 %1103, 4
  br i1 %1104, label %1105, label %1065

; <label>:1105                                    ; preds = %1065
  %1106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.i32 %1106, 1
  %1108 = lshr i32 %1107, 1
  %1109 = xor i32 %1108, %1102
  %1110 = zext i1 %1010 to i32
  %1111 = and i32 %1109, %1110
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1164, label %1113, !dx.controlflow.hints !89

; <label>:1113                                    ; preds = %1105
  %1114 = fmul fast float %190, %190
  %1115 = fmul fast float %191, %191
  %1116 = fadd fast float %1114, %1115
  %1117 = fmul fast float %192, %192
  %1118 = fadd fast float %1116, %1117
  %1119 = call float @dx.op.unary.f32(i32 24, float %1118)  ; Sqrt(value)
  %1120 = and i32 %890, 4
  %1121 = icmp ne i32 %1120, 0
  %1122 = select i1 %1121, float %1119, float 1.000000e+00
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1125 = fsub fast float %1122, %1124
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1127 = fmul fast float %1125, %1126
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1133 = fsub fast float %1132, %1006
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 3
  %1136 = fmul fast float %1133, %1135
  %1137 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1138 = fmul fast float %1137, %1130
  %1139 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1140 = fsub fast float %1119, %1139
  %1141 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1142 = fmul fast float %1140, %1141
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1144 = fsub fast float 1.000000e+00, %1128
  %1145 = fmul fast float %1143, %1144
  %1146 = fadd fast float %1145, %1128
  %1147 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1148 = fsub fast float %1138, %1147
  %1149 = fmul fast float %1148, %1146
  %1150 = fadd fast float %1149, %1147
  %1151 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1152 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1153 = extractvalue %dx.types.CBufRet.f32 %1129, 2
  %1154 = extractvalue %dx.types.CBufRet.f32 %1134, 2
  %1155 = fadd fast float %1150, %885
  %1156 = fmul fast float %1150, %1151
  %1157 = fmul fast float %1150, %1152
  %1158 = fmul fast float %1150, %1153
  %1159 = fadd fast float %1156, %881
  %1160 = fadd fast float %1157, %882
  %1161 = fadd fast float %1158, %883
  %1162 = fmul fast float %1150, %1154
  %1163 = fadd fast float %1162, %884
  br label %1164

; <label>:1164                                    ; preds = %1113, %1105, %947, %880, %660
  %1165 = phi float [ %661, %660 ], [ %881, %880 ], [ %965, %947 ], [ %1159, %1113 ], [ %881, %1105 ]
  %1166 = phi float [ %662, %660 ], [ %882, %880 ], [ %966, %947 ], [ %1160, %1113 ], [ %882, %1105 ]
  %1167 = phi float [ %663, %660 ], [ %883, %880 ], [ %967, %947 ], [ %1161, %1113 ], [ %883, %1105 ]
  %1168 = phi float [ %664, %660 ], [ %884, %880 ], [ %884, %947 ], [ %1163, %1113 ], [ %884, %1105 ]
  %1169 = phi float [ %665, %660 ], [ %885, %880 ], [ %950, %947 ], [ %1155, %1113 ], [ %885, %1105 ]
  %1170 = and i32 %358, 32
  %1171 = icmp ne i32 %1170, 0
  %1172 = and i1 %248, %1171
  br i1 %1172, label %1173, label %1215, !dx.controlflow.hints !90

; <label>:1173                                    ; preds = %1164
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.CBufRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.CBufRet.f32 %1174, 2
  %1178 = fsub fast float %197, %1175
  %1179 = fadd fast float %1178, %1177
  %1180 = fsub fast float %198, %1176
  %1181 = fadd fast float %1180, %1177
  %1182 = extractvalue %dx.types.CBufRet.f32 %1174, 3
  %1183 = fmul fast float %1179, %1182
  %1184 = fmul fast float %1181, %1182
  %1185 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1186 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1187 = fsub fast float 1.000000e+00, %1185
  %1188 = fsub fast float 1.000000e+00, %1186
  %1189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %1187, float %1188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.ResRet.f32 %1189, 2
  %1193 = fmul fast float %1190, 0x3F847AE140000000
  %1194 = fmul fast float %1191, 0x3F847AE140000000
  %1195 = fmul fast float %1192, 0x3F847AE140000000
  %1196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %41, float %1187, float %1188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.ResRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.ResRet.f32 %1196, 2
  %1200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %41, float %1187, float %1188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = call float @dx.op.dot3.f32(i32 55, float %1193, float %1194, float %1195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1203 = fadd fast float %1197, %1190
  %1204 = fmul fast float %1203, 0x3F847AE140000000
  %1205 = fadd fast float %1198, %1191
  %1206 = fmul fast float %1205, 0x3F847AE140000000
  %1207 = fadd fast float %1199, %1192
  %1208 = fmul fast float %1207, 0x3F847AE140000000
  %1209 = fadd fast float %1202, %1169
  %1210 = fadd fast float %1193, %1165
  %1211 = fadd fast float %1194, %1166
  %1212 = fadd fast float %1195, %1167
  %1213 = fmul fast float %1201, %1202
  %1214 = fadd fast float %1213, %1168
  br label %1215

; <label>:1215                                    ; preds = %1173, %1164
  %1216 = phi float [ %1210, %1173 ], [ %1165, %1164 ]
  %1217 = phi float [ %1211, %1173 ], [ %1166, %1164 ]
  %1218 = phi float [ %1212, %1173 ], [ %1167, %1164 ]
  %1219 = phi float [ %1214, %1173 ], [ %1168, %1164 ]
  %1220 = phi float [ %1209, %1173 ], [ %1169, %1164 ]
  %1221 = phi float [ %1204, %1173 ], [ 0.000000e+00, %1164 ]
  %1222 = phi float [ %1206, %1173 ], [ 0.000000e+00, %1164 ]
  %1223 = phi float [ %1208, %1173 ], [ 0.000000e+00, %1164 ]
  %1224 = and i32 %358, 16
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %2017, label %1226, !dx.controlflow.hints !91

; <label>:1226                                    ; preds = %1215
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 3
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 3
  %1237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.i32 %1237, 0
  %1239 = icmp ne i32 %1238, 0
  %1240 = zext i1 %1239 to i32
  %1241 = extractvalue %dx.types.CBufRet.i32 %1237, 1
  %1242 = icmp ne i32 %1241, 0
  %1243 = zext i1 %1242 to i32
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = bitcast float %1245 to i32
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1297, label %1248

; <label>:1248                                    ; preds = %1226
  br label %1249

; <label>:1249                                    ; preds = %1292, %1248
  %1250 = phi i32 [ %1293, %1292 ], [ 0, %1248 ]
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = bitcast float %1252 to i32
  %1254 = call i32 @dx.op.tertiary.i32(i32 49, i32 %356, i32 %1253, i32 %1250)  ; UMad(a,b,c)
  %1255 = shl i32 %1254, 2
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  br label %1258

; <label>:1258                                    ; preds = %1261, %1249
  %1259 = phi i32 [ %1257, %1249 ], [ %1266, %1261 ]
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1292, label %1261

; <label>:1261                                    ; preds = %1258
  %1262 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1259)  ; FirstbitLo(value)
  %1263 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1250, i32 %1262)  ; UMad(a,b,c)
  %1264 = and i32 %1262, 31
  %1265 = shl i32 1, %1264
  %1266 = xor i32 %1265, %1259
  %1267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1263, i32 0)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.ResRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.ResRet.f32 %1267, 2
  %1271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1263, i32 16)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.ResRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.ResRet.f32 %1271, 2
  %1275 = fsub fast float %1268, %1272
  %1276 = fsub fast float %1269, %1273
  %1277 = fsub fast float %1270, %1274
  %1278 = fadd fast float %1272, %1268
  %1279 = fadd fast float %1273, %1269
  %1280 = fadd fast float %1274, %1270
  %1281 = fcmp fast ogt float %197, %1275
  %1282 = fcmp fast ogt float %198, %1276
  %1283 = fcmp fast ogt float %199, %1277
  %1284 = and i1 %1281, %1282
  %1285 = and i1 %1283, %1284
  %1286 = fcmp fast olt float %197, %1278
  %1287 = fcmp fast olt float %198, %1279
  %1288 = fcmp fast olt float %199, %1280
  %1289 = and i1 %1286, %1287
  %1290 = and i1 %1288, %1289
  %1291 = and i1 %1285, %1290
  br i1 %1291, label %1295, label %1258, !dx.controlflow.hints !92

; <label>:1292                                    ; preds = %1258
  %1293 = add i32 %1250, 1
  %1294 = icmp ult i32 %1293, %1253
  br i1 %1294, label %1249, label %1296, !llvm.loop !93

; <label>:1295                                    ; preds = %1261
  br label %1297

; <label>:1296                                    ; preds = %1292
  br label %1297

; <label>:1297                                    ; preds = %1296, %1295, %1226
  %1298 = phi i32 [ 255, %1226 ], [ %1263, %1295 ], [ 255, %1296 ]
  %1299 = icmp eq i32 %1298, 255
  br i1 %1299, label %1319, label %1300, !dx.controlflow.hints !95

; <label>:1300                                    ; preds = %1297
  %1301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 32)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.ResRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1301, 2
  %1305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 132)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 136)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  %1309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 152)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1298, i32 156)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1298, i32 160)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = icmp ne i32 %1312, 0
  %1316 = zext i1 %1315 to i32
  %1317 = icmp ne i32 %1314, 0
  %1318 = zext i1 %1317 to i32
  br label %1319

; <label>:1319                                    ; preds = %1300, %1297
  %1320 = phi float [ %1302, %1300 ], [ %1228, %1297 ]
  %1321 = phi float [ %1303, %1300 ], [ %1229, %1297 ]
  %1322 = phi float [ %1304, %1300 ], [ %1230, %1297 ]
  %1323 = phi float [ %1306, %1300 ], [ %1232, %1297 ]
  %1324 = phi float [ %1308, %1300 ], [ %1234, %1297 ]
  %1325 = phi float [ %1310, %1300 ], [ %1236, %1297 ]
  %1326 = phi i32 [ %1316, %1300 ], [ %1240, %1297 ]
  %1327 = phi i32 [ %1318, %1300 ], [ %1243, %1297 ]
  %1328 = extractvalue %dx.types.CBufRet.f32 %1233, 0
  %1329 = extractvalue %dx.types.CBufRet.f32 %1233, 1
  %1330 = fsub fast float %197, %1328
  %1331 = fsub fast float %198, %1329
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1334 = extractvalue %dx.types.CBufRet.f32 %1332, 3
  %1335 = fmul fast float %1330, %1333
  %1336 = fmul fast float %1331, %1334
  %1337 = call float @dx.op.binary.f32(i32 36, float %1335, float %1336)  ; FMin(a,b)
  %1338 = fcmp fast olt float %1337, 0.000000e+00
  %1339 = call float @dx.op.binary.f32(i32 35, float %1335, float %1336)  ; FMax(a,b)
  %1340 = fcmp fast ogt float %1339, 1.000000e+00
  %1341 = or i1 %1338, %1340
  %1342 = extractvalue %dx.types.CBufRet.f32 %1233, 2
  %1343 = fcmp fast olt float %199, %1342
  %1344 = or i1 %1341, %1343
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 3
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 0
  %1349 = fadd fast float %1348, %1346
  %1350 = fcmp fast ogt float %199, %1349
  %1351 = or i1 %1344, %1350
  br i1 %1351, label %1636, label %1352, !dx.controlflow.hints !96

; <label>:1352                                    ; preds = %1319
  %1353 = fsub fast float 1.000000e+00, %1336
  %1354 = extractvalue %dx.types.CBufRet.f32 %1347, 3
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 3
  %1357 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1358 = extractvalue %dx.types.CBufRet.f32 %1355, 1
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.CBufRet.f32 %1359, 1
  %1362 = extractvalue %dx.types.CBufRet.f32 %1359, 2
  %1363 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  br i1 %1299, label %1379, label %1364, !dx.controlflow.hints !97

; <label>:1364                                    ; preds = %1352
  %1365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 48)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.ResRet.f32 %1365, 1
  %1368 = extractvalue %dx.types.ResRet.f32 %1365, 2
  %1369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 104)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.f32 %1369, 0
  %1371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 108)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 112)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 116)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 120)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  br label %1379

; <label>:1379                                    ; preds = %1364, %1352
  %1380 = phi float [ %1372, %1364 ], [ %1354, %1352 ]
  %1381 = phi float [ %1376, %1364 ], [ %1356, %1352 ]
  %1382 = phi float [ %1378, %1364 ], [ %1357, %1352 ]
  %1383 = phi float [ %1374, %1364 ], [ %1358, %1352 ]
  %1384 = phi float [ %1366, %1364 ], [ %1360, %1352 ]
  %1385 = phi float [ %1367, %1364 ], [ %1361, %1352 ]
  %1386 = phi float [ %1368, %1364 ], [ %1362, %1352 ]
  %1387 = phi float [ %1370, %1364 ], [ %1363, %1352 ]
  %1388 = fcmp fast oeq float %1380, 0.000000e+00
  br i1 %1388, label %1504, label %1389, !dx.controlflow.hints !98

; <label>:1389                                    ; preds = %1379
  %1390 = fcmp fast ogt float %1381, 0.000000e+00
  %1391 = fcmp fast oeq float %439, 0.000000e+00
  br i1 %1391, label %1396, label %1392, !dx.controlflow.hints !81

; <label>:1392                                    ; preds = %1389
  %1393 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1394 = fmul fast float %1393, %439
  %1395 = call float @dx.op.unary.f32(i32 23, float %1394)  ; Log(value)
  br label %1396

; <label>:1396                                    ; preds = %1392, %1389
  %1397 = phi float [ %1395, %1392 ], [ 0.000000e+00, %1389 ]
  br i1 %1391, label %1402, label %1398, !dx.controlflow.hints !81

; <label>:1398                                    ; preds = %1396
  %1399 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1400 = fmul fast float %1399, %439
  %1401 = call float @dx.op.unary.f32(i32 23, float %1400)  ; Log(value)
  br label %1402

; <label>:1402                                    ; preds = %1398, %1396
  %1403 = phi float [ %1401, %1398 ], [ 0.000000e+00, %1396 ]
  br i1 %1390, label %1404, label %1466, !dx.controlflow.hints !99

; <label>:1404                                    ; preds = %1402
  %1405 = fcmp fast ogt float %1382, 0.000000e+00
  br i1 %1405, label %1406, label %1416, !dx.controlflow.hints !100

; <label>:1406                                    ; preds = %1404
  %1407 = fmul fast float %1382, %1335
  %1408 = fmul fast float %1382, %1353
  %1409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %38, float %1407, float %1408, float undef, float undef, i32 0, i32 0, i32 undef, float %1403)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.ResRet.f32 %1409, 1
  %1412 = fmul fast float %1410, 2.000000e+00
  %1413 = fmul fast float %1411, 2.000000e+00
  %1414 = fadd fast float %1412, -1.000000e+00
  %1415 = fadd fast float %1413, -1.000000e+00
  br label %1437

; <label>:1416                                    ; preds = %1404
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 3
  %1419 = fmul fast float %1418, %1335
  %1420 = fmul fast float %1418, %1353
  %1421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  %1423 = extractvalue %dx.types.ResRet.f32 %1421, 1
  %1424 = extractvalue %dx.types.ResRet.f32 %1421, 2
  %1425 = fmul fast float %1422, 2.000000e+00
  %1426 = fmul fast float %1423, 2.000000e+00
  %1427 = fmul fast float %1424, 2.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fadd fast float %1426, -1.000000e+00
  %1430 = fadd fast float %1427, -1.000000e+00
  %1431 = extractvalue %dx.types.CBufRet.f32 %1347, 1
  %1432 = fmul fast float %1428, %1431
  %1433 = fmul fast float %1429, %1431
  %1434 = extractvalue %dx.types.CBufRet.f32 %1347, 2
  %1435 = fmul fast float %1434, 5.000000e-01
  %1436 = fmul fast float %1435, %1430
  br label %1437

; <label>:1437                                    ; preds = %1416, %1406
  %1438 = phi float [ %1414, %1406 ], [ %1432, %1416 ]
  %1439 = phi float [ %1415, %1406 ], [ %1433, %1416 ]
  %1440 = phi float [ 0.000000e+00, %1406 ], [ %1436, %1416 ]
  %1441 = fmul fast float %1380, %197
  %1442 = fmul fast float %1380, %198
  %1443 = fmul fast float %1380, %199
  %1444 = call float @dx.op.unary.f32(i32 22, float %1381)  ; Frc(value)
  %1445 = fmul fast float %1444, %1438
  %1446 = fmul fast float %1444, %1439
  %1447 = fmul fast float %1444, %1440
  %1448 = fsub fast float %1441, %1445
  %1449 = fsub fast float %1442, %1446
  %1450 = fsub fast float %1443, %1447
  %1451 = fadd fast float %1381, 5.000000e-01
  %1452 = call float @dx.op.unary.f32(i32 22, float %1451)  ; Frc(value)
  %1453 = fmul fast float %1452, %1438
  %1454 = fmul fast float %1452, %1439
  %1455 = fmul fast float %1452, %1440
  %1456 = fadd fast float %1441, -5.000000e-01
  %1457 = fsub fast float %1456, %1453
  %1458 = fadd fast float %1442, -5.000000e-01
  %1459 = fsub fast float %1458, %1454
  %1460 = fadd fast float %1443, -5.000000e-01
  %1461 = fsub fast float %1460, %1455
  %1462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %38, float %1457, float %1459, float %1461, float undef, i32 0, i32 0, i32 0, float %1397)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.ResRet.f32 %1462, 1
  %1465 = fadd fast float %1463, %1383
  br label %1476

; <label>:1466                                    ; preds = %1402
  %1467 = fmul fast float %1387, %1384
  %1468 = fmul fast float %1387, %1385
  %1469 = fmul fast float %1387, %1386
  %1470 = fsub fast float %197, %1467
  %1471 = fsub fast float %198, %1468
  %1472 = fsub fast float %199, %1469
  %1473 = fmul fast float %1470, %1380
  %1474 = fmul fast float %1471, %1380
  %1475 = fmul fast float %1472, %1380
  br label %1476

; <label>:1476                                    ; preds = %1466, %1437
  %1477 = phi float [ %1448, %1437 ], [ %1473, %1466 ]
  %1478 = phi float [ %1449, %1437 ], [ %1474, %1466 ]
  %1479 = phi float [ %1450, %1437 ], [ %1475, %1466 ]
  %1480 = phi float [ %1465, %1437 ], [ 0.000000e+00, %1466 ]
  %1481 = phi float [ %1464, %1437 ], [ 0.000000e+00, %1466 ]
  %1482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %38, float %1477, float %1478, float %1479, float undef, i32 0, i32 0, i32 0, float %1397)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = extractvalue %dx.types.ResRet.f32 %1482, 1
  %1485 = fadd fast float %1483, %1383
  br i1 %1390, label %1486, label %1497, !dx.controlflow.hints !101

; <label>:1486                                    ; preds = %1476
  %1487 = call float @dx.op.unary.f32(i32 22, float %1381)  ; Frc(value)
  %1488 = fmul fast float %1487, 2.000000e+00
  %1489 = fadd fast float %1488, -1.000000e+00
  %1490 = call float @dx.op.unary.f32(i32 6, float %1489)  ; FAbs(value)
  %1491 = fsub fast float %1480, %1485
  %1492 = fmul fast float %1490, %1491
  %1493 = fadd fast float %1492, %1485
  %1494 = fsub fast float %1481, %1484
  %1495 = fmul fast float %1490, %1494
  %1496 = fadd fast float %1495, %1484
  br label %1497

; <label>:1497                                    ; preds = %1486, %1476
  %1498 = phi float [ %1493, %1486 ], [ %1485, %1476 ]
  %1499 = phi float [ %1496, %1486 ], [ %1484, %1476 ]
  %1500 = fsub fast float %1498, %1499
  %1501 = fsub fast float 1.000000e+00, %1499
  %1502 = fdiv fast float %1500, %1501
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  br label %1504

; <label>:1504                                    ; preds = %1497, %1379
  %1505 = phi float [ %1503, %1497 ], [ 1.000000e+00, %1379 ]
  %1506 = fcmp fast oeq float %439, 0.000000e+00
  br i1 %1506, label %1511, label %1507, !dx.controlflow.hints !81

; <label>:1507                                    ; preds = %1504
  %1508 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1509 = fmul fast float %1508, %439
  %1510 = call float @dx.op.unary.f32(i32 23, float %1509)  ; Log(value)
  br label %1511

; <label>:1511                                    ; preds = %1507, %1504
  %1512 = phi float [ %1510, %1507 ], [ 0.000000e+00, %1504 ]
  %1513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %1335, float %1353, float undef, float undef, i32 0, i32 0, i32 undef, float %1512)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %41, float %1335, float %1353, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.ResRet.f32 %1515, 2
  %1519 = extractvalue %dx.types.ResRet.f32 %1515, 3
  %1520 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %41, float %1335, float %1353, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.ResRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.ResRet.f32 %1520, 2
  %1524 = extractvalue %dx.types.ResRet.f32 %1520, 3
  %1525 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %41, float %1335, float %1353, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = extractvalue %dx.types.ResRet.f32 %1525, 3
  %1530 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %41, float %1335, float %1353, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.ResRet.f32 %1530, 2
  %1534 = extractvalue %dx.types.ResRet.f32 %1530, 3
  %1535 = fadd fast float %1516, %1517
  %1536 = fadd fast float %1535, %1518
  %1537 = fadd fast float %1536, %1519
  %1538 = fmul fast float %1521, %1516
  %1539 = fmul fast float %1522, %1517
  %1540 = fadd fast float %1538, %1539
  %1541 = fmul fast float %1523, %1518
  %1542 = fadd fast float %1540, %1541
  %1543 = fmul fast float %1524, %1519
  %1544 = fadd fast float %1542, %1543
  %1545 = fmul fast float %1526, %1516
  %1546 = fmul fast float %1527, %1517
  %1547 = fadd fast float %1545, %1546
  %1548 = fmul fast float %1528, %1518
  %1549 = fadd fast float %1547, %1548
  %1550 = fmul fast float %1529, %1519
  %1551 = fadd fast float %1549, %1550
  %1552 = fmul fast float %1531, %1516
  %1553 = fmul fast float %1532, %1517
  %1554 = fadd fast float %1552, %1553
  %1555 = fmul fast float %1533, %1518
  %1556 = fadd fast float %1554, %1555
  %1557 = fmul fast float %1534, %1519
  %1558 = fadd fast float %1556, %1557
  %1559 = fcmp fast ogt float %1537, 0.000000e+00
  %1560 = fdiv fast float %1544, %1537
  %1561 = select i1 %1559, float %1560, float 0.000000e+00
  %1562 = fdiv fast float %1551, %1537
  %1563 = select i1 %1559, float %1562, float 0.000000e+00
  %1564 = fdiv fast float %1558, %1537
  %1565 = select i1 %1559, float %1564, float 0.000000e+00
  %1566 = fcmp fast ogt float %199, %1563
  %1567 = fcmp fast olt float %199, %1561
  %1568 = and i1 %1567, %1566
  br i1 %1568, label %1569, label %1636, !dx.controlflow.hints !102

; <label>:1569                                    ; preds = %1511
  %1570 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  %1571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1571, 2
  %1573 = extractvalue %dx.types.CBufRet.f32 %1571, 3
  br i1 %1299, label %1584, label %1574, !dx.controlflow.hints !103

; <label>:1574                                    ; preds = %1569
  %1575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 60)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.f32 %1575, 0
  %1577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 64)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.ResRet.f32 %1577, 1
  %1580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 72)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.f32 %1580, 0
  %1582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 96)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  br label %1584

; <label>:1584                                    ; preds = %1574, %1569
  %1585 = phi float [ %1576, %1574 ], [ %1348, %1569 ]
  %1586 = phi float [ %1581, %1574 ], [ %1346, %1569 ]
  %1587 = phi float [ %1583, %1574 ], [ %1570, %1569 ]
  %1588 = phi float [ %1578, %1574 ], [ %1572, %1569 ]
  %1589 = phi float [ %1579, %1574 ], [ %1573, %1569 ]
  %1590 = call float @dx.op.binary.f32(i32 35, float %1514, float 0.000000e+00)  ; FMax(a,b)
  %1591 = call float @dx.op.binary.f32(i32 36, float %1590, float 1.000000e+00)  ; FMin(a,b)
  %1592 = call float @dx.op.unary.f32(i32 24, float %1591)  ; Sqrt(value)
  %1593 = call float @dx.op.binary.f32(i32 35, float %1565, float 0x3F847AE140000000)  ; FMax(a,b)
  %1594 = fsub fast float %1561, %199
  %1595 = fsub fast float %199, %1563
  %1596 = call float @dx.op.binary.f32(i32 36, float %1595, float %1594)  ; FMin(a,b)
  %1597 = fdiv fast float %1596, %1593
  %1598 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1599 = fsub fast float %199, %1586
  %1600 = fdiv fast float %1599, %1585
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1602 = fsub fast float 1.000000e+00, %1601
  %1603 = fmul float %1598, %1602
  %1604 = fmul float %1603, %1603
  %1605 = fmul fast float %1592, %1505
  %1606 = fmul fast float %1605, %1604
  %1607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1608 = extractvalue %dx.types.CBufRet.f32 %1607, 2
  %1609 = extractvalue %dx.types.CBufRet.f32 %1607, 1
  %1610 = fsub fast float %1606, %1609
  %1611 = fsub fast float %1608, %1609
  %1612 = fdiv fast float %1610, %1611
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1614 = fmul fast float %1613, %1587
  %1615 = fcmp fast ogt float %1589, 0.000000e+00
  br i1 %1615, label %1616, label %1636, !dx.controlflow.hints !104

; <label>:1616                                    ; preds = %1584
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1621 = fsub fast float %197, %1618
  %1622 = fsub fast float %198, %1619
  %1623 = fsub fast float %199, %1620
  %1624 = fmul fast float %1621, %1621
  %1625 = fmul fast float %1622, %1622
  %1626 = fadd fast float %1624, %1625
  %1627 = fmul fast float %1623, %1623
  %1628 = fadd fast float %1626, %1627
  %1629 = call float @dx.op.unary.f32(i32 24, float %1628)  ; Sqrt(value)
  %1630 = fsub fast float %1629, %1588
  %1631 = fsub fast float %1589, %1588
  %1632 = fdiv fast float %1630, %1631
  %1633 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1634 = fmul fast float %1633, %1633
  %1635 = fmul fast float %1634, %1614
  br label %1636

; <label>:1636                                    ; preds = %1616, %1584, %1511, %1319
  %1637 = phi float [ 0.000000e+00, %1319 ], [ 0.000000e+00, %1511 ], [ %1635, %1616 ], [ %1614, %1584 ]
  %1638 = fcmp fast oeq float %1637, 0.000000e+00
  br i1 %1638, label %2017, label %1639, !dx.controlflow.hints !105

; <label>:1639                                    ; preds = %1636
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1642 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1643 = extractvalue %dx.types.CBufRet.f32 %1640, 2
  %1644 = fsub fast float %197, %1641
  %1645 = fadd fast float %1644, %1643
  %1646 = fsub fast float %198, %1642
  %1647 = fadd fast float %1646, %1643
  %1648 = extractvalue %dx.types.CBufRet.f32 %1640, 3
  %1649 = fmul fast float %1645, %1648
  %1650 = fmul fast float %1647, %1648
  %1651 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1652 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1653 = fsub fast float 1.000000e+00, %1651
  %1654 = fsub fast float 1.000000e+00, %1652
  %1655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %41, float %1653, float %1654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1656 = extractvalue %dx.types.ResRet.f32 %1655, 0
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 2
  %1659 = fmul fast float %1658, %1656
  %1660 = extractvalue %dx.types.CBufRet.f32 %1657, 3
  %1661 = fadd fast float %1660, %1659
  %1662 = fcmp fast ogt float %1656, 0.000000e+00
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = and i32 %1664, 32768
  %1666 = icmp ne i32 %1665, 0
  %1667 = and i1 %1662, %1666
  %1668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1668, 3
  %1670 = fadd fast float %1669, %1661
  %1671 = fcmp fast ole float %199, %1670
  %1672 = and i1 %1667, %1671
  %1673 = xor i1 %1672, true
  %1674 = icmp ne i32 %1326, 0
  %1675 = and i1 %1674, %1673
  %1676 = icmp ne i32 %1327, 0
  %1677 = and i1 %1676, %1672
  %1678 = or i1 %1675, %1677
  br i1 %1678, label %2017, label %1679, !dx.controlflow.hints !106

; <label>:1679                                    ; preds = %1639
  %1680 = fsub fast float %199, %1661
  %1681 = call float @dx.op.unary.f32(i32 6, float %1680)  ; FAbs(value)
  %1682 = fdiv fast float %1681, %1325
  %1683 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1684 = fmul fast float %1683, %1637
  %1685 = fcmp fast une float %1323, 0.000000e+00
  br i1 %1685, label %1686, label %2005, !dx.controlflow.hints !107

; <label>:1686                                    ; preds = %1679
  %1687 = fmul fast float %1323, %125
  %1688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1689 = extractvalue %dx.types.CBufRet.f32 %1688, 0
  %1690 = extractvalue %dx.types.CBufRet.f32 %1688, 1
  %1691 = extractvalue %dx.types.CBufRet.f32 %1688, 2
  %1692 = fmul fast float %1689, %1687
  %1693 = fmul fast float %1690, %1687
  %1694 = fmul fast float %1691, %1687
  %1695 = fadd fast float %1692, %197
  %1696 = fadd fast float %1693, %198
  %1697 = fadd fast float %1694, %199
  %1698 = fmul fast float %1323, 2.000000e+00
  %1699 = call float @dx.op.binary.f32(i32 35, float %439, float %1698)  ; FMax(a,b)
  %1700 = fsub fast float %1695, %1328
  %1701 = fsub fast float %1696, %1329
  %1702 = fmul fast float %1700, %1333
  %1703 = fmul fast float %1701, %1334
  %1704 = call float @dx.op.binary.f32(i32 36, float %1702, float %1703)  ; FMin(a,b)
  %1705 = fcmp fast olt float %1704, 0.000000e+00
  %1706 = call float @dx.op.binary.f32(i32 35, float %1702, float %1703)  ; FMax(a,b)
  %1707 = fcmp fast ogt float %1706, 1.000000e+00
  %1708 = or i1 %1705, %1707
  %1709 = fcmp fast olt float %1697, %1342
  %1710 = or i1 %1708, %1709
  %1711 = fcmp fast ogt float %1697, %1349
  %1712 = or i1 %1710, %1711
  br i1 %1712, label %1997, label %1713, !dx.controlflow.hints !96

; <label>:1713                                    ; preds = %1686
  %1714 = fsub fast float 1.000000e+00, %1703
  %1715 = extractvalue %dx.types.CBufRet.f32 %1347, 3
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 3
  %1718 = extractvalue %dx.types.CBufRet.f32 %1716, 2
  %1719 = extractvalue %dx.types.CBufRet.f32 %1716, 1
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 0
  %1722 = extractvalue %dx.types.CBufRet.f32 %1720, 1
  %1723 = extractvalue %dx.types.CBufRet.f32 %1720, 2
  %1724 = extractvalue %dx.types.CBufRet.f32 %1716, 0
  br i1 %1299, label %1740, label %1725, !dx.controlflow.hints !97

; <label>:1725                                    ; preds = %1713
  %1726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 48)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.ResRet.f32 %1726, 1
  %1729 = extractvalue %dx.types.ResRet.f32 %1726, 2
  %1730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 104)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 108)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.f32 %1732, 0
  %1734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 112)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.f32 %1734, 0
  %1736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 116)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 120)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  br label %1740

; <label>:1740                                    ; preds = %1725, %1713
  %1741 = phi float [ %1733, %1725 ], [ %1715, %1713 ]
  %1742 = phi float [ %1737, %1725 ], [ %1717, %1713 ]
  %1743 = phi float [ %1739, %1725 ], [ %1718, %1713 ]
  %1744 = phi float [ %1735, %1725 ], [ %1719, %1713 ]
  %1745 = phi float [ %1727, %1725 ], [ %1721, %1713 ]
  %1746 = phi float [ %1728, %1725 ], [ %1722, %1713 ]
  %1747 = phi float [ %1729, %1725 ], [ %1723, %1713 ]
  %1748 = phi float [ %1731, %1725 ], [ %1724, %1713 ]
  %1749 = fcmp fast oeq float %1741, 0.000000e+00
  br i1 %1749, label %1865, label %1750, !dx.controlflow.hints !98

; <label>:1750                                    ; preds = %1740
  %1751 = fcmp fast ogt float %1742, 0.000000e+00
  %1752 = fcmp fast oeq float %1699, 0.000000e+00
  br i1 %1752, label %1757, label %1753, !dx.controlflow.hints !81

; <label>:1753                                    ; preds = %1750
  %1754 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1755 = fmul fast float %1754, %1699
  %1756 = call float @dx.op.unary.f32(i32 23, float %1755)  ; Log(value)
  br label %1757

; <label>:1757                                    ; preds = %1753, %1750
  %1758 = phi float [ %1756, %1753 ], [ 0.000000e+00, %1750 ]
  br i1 %1752, label %1763, label %1759, !dx.controlflow.hints !81

; <label>:1759                                    ; preds = %1757
  %1760 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1761 = fmul fast float %1760, %1699
  %1762 = call float @dx.op.unary.f32(i32 23, float %1761)  ; Log(value)
  br label %1763

; <label>:1763                                    ; preds = %1759, %1757
  %1764 = phi float [ %1762, %1759 ], [ 0.000000e+00, %1757 ]
  br i1 %1751, label %1765, label %1827, !dx.controlflow.hints !99

; <label>:1765                                    ; preds = %1763
  %1766 = fcmp fast ogt float %1743, 0.000000e+00
  br i1 %1766, label %1767, label %1777, !dx.controlflow.hints !100

; <label>:1767                                    ; preds = %1765
  %1768 = fmul fast float %1743, %1702
  %1769 = fmul fast float %1743, %1714
  %1770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %38, float %1768, float %1769, float undef, float undef, i32 0, i32 0, i32 undef, float %1764)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = fmul fast float %1771, 2.000000e+00
  %1774 = fmul fast float %1772, 2.000000e+00
  %1775 = fadd fast float %1773, -1.000000e+00
  %1776 = fadd fast float %1774, -1.000000e+00
  br label %1798

; <label>:1777                                    ; preds = %1765
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 3
  %1780 = fmul fast float %1779, %1702
  %1781 = fmul fast float %1779, %1714
  %1782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1780, float %1781, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1786 = fmul fast float %1783, 2.000000e+00
  %1787 = fmul fast float %1784, 2.000000e+00
  %1788 = fmul fast float %1785, 2.000000e+00
  %1789 = fadd fast float %1786, -1.000000e+00
  %1790 = fadd fast float %1787, -1.000000e+00
  %1791 = fadd fast float %1788, -1.000000e+00
  %1792 = extractvalue %dx.types.CBufRet.f32 %1347, 1
  %1793 = fmul fast float %1789, %1792
  %1794 = fmul fast float %1790, %1792
  %1795 = extractvalue %dx.types.CBufRet.f32 %1347, 2
  %1796 = fmul fast float %1795, 5.000000e-01
  %1797 = fmul fast float %1796, %1791
  br label %1798

; <label>:1798                                    ; preds = %1777, %1767
  %1799 = phi float [ %1775, %1767 ], [ %1793, %1777 ]
  %1800 = phi float [ %1776, %1767 ], [ %1794, %1777 ]
  %1801 = phi float [ 0.000000e+00, %1767 ], [ %1797, %1777 ]
  %1802 = fmul fast float %1741, %1695
  %1803 = fmul fast float %1741, %1696
  %1804 = fmul fast float %1741, %1697
  %1805 = call float @dx.op.unary.f32(i32 22, float %1742)  ; Frc(value)
  %1806 = fmul fast float %1805, %1799
  %1807 = fmul fast float %1805, %1800
  %1808 = fmul fast float %1805, %1801
  %1809 = fsub fast float %1802, %1806
  %1810 = fsub fast float %1803, %1807
  %1811 = fsub fast float %1804, %1808
  %1812 = fadd fast float %1742, 5.000000e-01
  %1813 = call float @dx.op.unary.f32(i32 22, float %1812)  ; Frc(value)
  %1814 = fmul fast float %1813, %1799
  %1815 = fmul fast float %1813, %1800
  %1816 = fmul fast float %1813, %1801
  %1817 = fadd fast float %1802, -5.000000e-01
  %1818 = fsub fast float %1817, %1814
  %1819 = fadd fast float %1803, -5.000000e-01
  %1820 = fsub fast float %1819, %1815
  %1821 = fadd fast float %1804, -5.000000e-01
  %1822 = fsub fast float %1821, %1816
  %1823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %38, float %1818, float %1820, float %1822, float undef, i32 0, i32 0, i32 0, float %1758)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.ResRet.f32 %1823, 1
  %1826 = fadd fast float %1824, %1744
  br label %1837

; <label>:1827                                    ; preds = %1763
  %1828 = fmul fast float %1748, %1745
  %1829 = fmul fast float %1748, %1746
  %1830 = fmul fast float %1748, %1747
  %1831 = fsub fast float %1695, %1828
  %1832 = fsub fast float %1696, %1829
  %1833 = fsub fast float %1697, %1830
  %1834 = fmul fast float %1831, %1741
  %1835 = fmul fast float %1832, %1741
  %1836 = fmul fast float %1833, %1741
  br label %1837

; <label>:1837                                    ; preds = %1827, %1798
  %1838 = phi float [ %1809, %1798 ], [ %1834, %1827 ]
  %1839 = phi float [ %1810, %1798 ], [ %1835, %1827 ]
  %1840 = phi float [ %1811, %1798 ], [ %1836, %1827 ]
  %1841 = phi float [ %1826, %1798 ], [ 0.000000e+00, %1827 ]
  %1842 = phi float [ %1825, %1798 ], [ 0.000000e+00, %1827 ]
  %1843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %38, float %1838, float %1839, float %1840, float undef, i32 0, i32 0, i32 0, float %1758)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.ResRet.f32 %1843, 1
  %1846 = fadd fast float %1844, %1744
  br i1 %1751, label %1847, label %1858, !dx.controlflow.hints !101

; <label>:1847                                    ; preds = %1837
  %1848 = call float @dx.op.unary.f32(i32 22, float %1742)  ; Frc(value)
  %1849 = fmul fast float %1848, 2.000000e+00
  %1850 = fadd fast float %1849, -1.000000e+00
  %1851 = call float @dx.op.unary.f32(i32 6, float %1850)  ; FAbs(value)
  %1852 = fsub fast float %1841, %1846
  %1853 = fmul fast float %1851, %1852
  %1854 = fadd fast float %1853, %1846
  %1855 = fsub fast float %1842, %1845
  %1856 = fmul fast float %1851, %1855
  %1857 = fadd fast float %1856, %1845
  br label %1858

; <label>:1858                                    ; preds = %1847, %1837
  %1859 = phi float [ %1854, %1847 ], [ %1846, %1837 ]
  %1860 = phi float [ %1857, %1847 ], [ %1845, %1837 ]
  %1861 = fsub fast float %1859, %1860
  %1862 = fsub fast float 1.000000e+00, %1860
  %1863 = fdiv fast float %1861, %1862
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  br label %1865

; <label>:1865                                    ; preds = %1858, %1740
  %1866 = phi float [ %1864, %1858 ], [ 1.000000e+00, %1740 ]
  %1867 = fcmp fast oeq float %1699, 0.000000e+00
  br i1 %1867, label %1872, label %1868, !dx.controlflow.hints !81

; <label>:1868                                    ; preds = %1865
  %1869 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1870 = fmul fast float %1869, %1699
  %1871 = call float @dx.op.unary.f32(i32 23, float %1870)  ; Log(value)
  br label %1872

; <label>:1872                                    ; preds = %1868, %1865
  %1873 = phi float [ %1871, %1868 ], [ 0.000000e+00, %1865 ]
  %1874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %1702, float %1714, float undef, float undef, i32 0, i32 0, i32 undef, float %1873)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %41, float %1702, float %1714, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = extractvalue %dx.types.ResRet.f32 %1876, 3
  %1881 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %41, float %1702, float %1714, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.ResRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.ResRet.f32 %1881, 2
  %1885 = extractvalue %dx.types.ResRet.f32 %1881, 3
  %1886 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %41, float %1702, float %1714, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.ResRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.ResRet.f32 %1886, 2
  %1890 = extractvalue %dx.types.ResRet.f32 %1886, 3
  %1891 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %41, float %1702, float %1714, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.ResRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.ResRet.f32 %1891, 2
  %1895 = extractvalue %dx.types.ResRet.f32 %1891, 3
  %1896 = fadd fast float %1877, %1878
  %1897 = fadd fast float %1896, %1879
  %1898 = fadd fast float %1897, %1880
  %1899 = fmul fast float %1882, %1877
  %1900 = fmul fast float %1883, %1878
  %1901 = fadd fast float %1899, %1900
  %1902 = fmul fast float %1884, %1879
  %1903 = fadd fast float %1901, %1902
  %1904 = fmul fast float %1885, %1880
  %1905 = fadd fast float %1903, %1904
  %1906 = fmul fast float %1887, %1877
  %1907 = fmul fast float %1888, %1878
  %1908 = fadd fast float %1906, %1907
  %1909 = fmul fast float %1889, %1879
  %1910 = fadd fast float %1908, %1909
  %1911 = fmul fast float %1890, %1880
  %1912 = fadd fast float %1910, %1911
  %1913 = fmul fast float %1892, %1877
  %1914 = fmul fast float %1893, %1878
  %1915 = fadd fast float %1913, %1914
  %1916 = fmul fast float %1894, %1879
  %1917 = fadd fast float %1915, %1916
  %1918 = fmul fast float %1895, %1880
  %1919 = fadd fast float %1917, %1918
  %1920 = fcmp fast ogt float %1898, 0.000000e+00
  %1921 = fdiv fast float %1905, %1898
  %1922 = select i1 %1920, float %1921, float 0.000000e+00
  %1923 = fdiv fast float %1912, %1898
  %1924 = select i1 %1920, float %1923, float 0.000000e+00
  %1925 = fdiv fast float %1919, %1898
  %1926 = select i1 %1920, float %1925, float 0.000000e+00
  %1927 = fcmp fast ogt float %1697, %1924
  %1928 = fcmp fast olt float %1697, %1922
  %1929 = and i1 %1928, %1927
  br i1 %1929, label %1930, label %1997, !dx.controlflow.hints !102

; <label>:1930                                    ; preds = %1872
  %1931 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  %1932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1932, 2
  %1934 = extractvalue %dx.types.CBufRet.f32 %1932, 3
  br i1 %1299, label %1945, label %1935, !dx.controlflow.hints !103

; <label>:1935                                    ; preds = %1930
  %1936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 60)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 64)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.ResRet.f32 %1938, 1
  %1941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 72)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.f32 %1941, 0
  %1943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1298, i32 96)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  br label %1945

; <label>:1945                                    ; preds = %1935, %1930
  %1946 = phi float [ %1937, %1935 ], [ %1348, %1930 ]
  %1947 = phi float [ %1942, %1935 ], [ %1346, %1930 ]
  %1948 = phi float [ %1944, %1935 ], [ %1931, %1930 ]
  %1949 = phi float [ %1939, %1935 ], [ %1933, %1930 ]
  %1950 = phi float [ %1940, %1935 ], [ %1934, %1930 ]
  %1951 = call float @dx.op.binary.f32(i32 35, float %1875, float 0.000000e+00)  ; FMax(a,b)
  %1952 = call float @dx.op.binary.f32(i32 36, float %1951, float 1.000000e+00)  ; FMin(a,b)
  %1953 = call float @dx.op.unary.f32(i32 24, float %1952)  ; Sqrt(value)
  %1954 = call float @dx.op.binary.f32(i32 35, float %1926, float 0x3F847AE140000000)  ; FMax(a,b)
  %1955 = fsub fast float %1922, %1697
  %1956 = fsub fast float %1697, %1924
  %1957 = call float @dx.op.binary.f32(i32 36, float %1956, float %1955)  ; FMin(a,b)
  %1958 = fdiv fast float %1957, %1954
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = fsub fast float %1697, %1947
  %1961 = fdiv fast float %1960, %1946
  %1962 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  %1963 = fsub fast float 1.000000e+00, %1962
  %1964 = fmul float %1959, %1963
  %1965 = fmul float %1964, %1964
  %1966 = fmul fast float %1953, %1866
  %1967 = fmul fast float %1966, %1965
  %1968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1969 = extractvalue %dx.types.CBufRet.f32 %1968, 2
  %1970 = extractvalue %dx.types.CBufRet.f32 %1968, 1
  %1971 = fsub fast float %1967, %1970
  %1972 = fsub fast float %1969, %1970
  %1973 = fdiv fast float %1971, %1972
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1975 = fmul fast float %1974, %1948
  %1976 = fcmp fast ogt float %1950, 0.000000e+00
  br i1 %1976, label %1977, label %1997, !dx.controlflow.hints !104

; <label>:1977                                    ; preds = %1945
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 0
  %1980 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %1981 = extractvalue %dx.types.CBufRet.f32 %1978, 2
  %1982 = fsub fast float %1695, %1979
  %1983 = fsub fast float %1696, %1980
  %1984 = fsub fast float %1697, %1981
  %1985 = fmul fast float %1982, %1982
  %1986 = fmul fast float %1983, %1983
  %1987 = fadd fast float %1985, %1986
  %1988 = fmul fast float %1984, %1984
  %1989 = fadd fast float %1987, %1988
  %1990 = call float @dx.op.unary.f32(i32 24, float %1989)  ; Sqrt(value)
  %1991 = fsub fast float %1990, %1949
  %1992 = fsub fast float %1950, %1949
  %1993 = fdiv fast float %1991, %1992
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = fmul fast float %1994, %1994
  %1996 = fmul fast float %1995, %1975
  br label %1997

; <label>:1997                                    ; preds = %1977, %1945, %1872, %1686
  %1998 = phi float [ 0.000000e+00, %1686 ], [ 0.000000e+00, %1872 ], [ %1996, %1977 ], [ %1975, %1945 ]
  %1999 = fsub fast float %1684, %1998
  %2000 = fdiv fast float %1999, %1684
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = fsub fast float 1.000000e+00, %1324
  %2003 = fmul fast float %2001, %2002
  %2004 = fadd fast float %2003, %1324
  br label %2005

; <label>:2005                                    ; preds = %1997, %1679
  %2006 = phi float [ %2004, %1997 ], [ 1.000000e+00, %1679 ]
  %2007 = fadd fast float %1684, %1220
  %2008 = fmul fast float %1684, %1320
  %2009 = fmul fast float %2008, %2006
  %2010 = fmul fast float %1684, %1321
  %2011 = fmul fast float %2010, %2006
  %2012 = fmul fast float %1684, %1322
  %2013 = fmul fast float %2012, %2006
  %2014 = fadd fast float %2009, %1216
  %2015 = fadd fast float %2011, %1217
  %2016 = fadd fast float %2013, %1218
  br label %2017

; <label>:2017                                    ; preds = %2005, %1639, %1636, %1215
  %2018 = phi float [ %1216, %1215 ], [ %1216, %1636 ], [ %1216, %1639 ], [ %2014, %2005 ]
  %2019 = phi float [ %1217, %1215 ], [ %1217, %1636 ], [ %1217, %1639 ], [ %2015, %2005 ]
  %2020 = phi float [ %1218, %1215 ], [ %1218, %1636 ], [ %1218, %1639 ], [ %2016, %2005 ]
  %2021 = phi float [ %1220, %1215 ], [ %1220, %1636 ], [ %1220, %1639 ], [ %2007, %2005 ]
  %2022 = and i32 %358, 4
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2194, label %2024, !dx.controlflow.hints !108

; <label>:2024                                    ; preds = %2017
  %2025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.i32 %2025, 1
  %2027 = icmp eq i32 %2026, 0
  br i1 %2027, label %2194, label %2028

; <label>:2028                                    ; preds = %2024
  br label %2029

; <label>:2029                                    ; preds = %2185, %2028
  %2030 = phi i32 [ %2191, %2185 ], [ 0, %2028 ]
  %2031 = phi float [ %2186, %2185 ], [ %2018, %2028 ]
  %2032 = phi float [ %2187, %2185 ], [ %2019, %2028 ]
  %2033 = phi float [ %2188, %2185 ], [ %2020, %2028 ]
  %2034 = phi float [ %2189, %2185 ], [ %1219, %2028 ]
  %2035 = phi float [ %2190, %2185 ], [ %2021, %2028 ]
  %2036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.i32 %2036, 1
  %2038 = call i32 @dx.op.tertiary.i32(i32 49, i32 %356, i32 %2037, i32 %2030)  ; UMad(a,b,c)
  %2039 = shl i32 %2038, 2
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2185, label %2043

; <label>:2043                                    ; preds = %2029
  br label %2044

; <label>:2044                                    ; preds = %2171, %2043
  %2045 = phi i32 [ %2055, %2171 ], [ %2041, %2043 ]
  %2046 = phi float [ %2177, %2171 ], [ %2031, %2043 ]
  %2047 = phi float [ %2178, %2171 ], [ %2032, %2043 ]
  %2048 = phi float [ %2179, %2171 ], [ %2033, %2043 ]
  %2049 = phi float [ %2181, %2171 ], [ %2034, %2043 ]
  %2050 = phi float [ %2182, %2171 ], [ %2035, %2043 ]
  %2051 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2045)  ; FirstbitLo(value)
  %2052 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %2030, i32 %2051)  ; UMad(a,b,c)
  %2053 = and i32 %2051, 31
  %2054 = shl i32 1, %2053
  %2055 = xor i32 %2054, %2045
  %2056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2052, i32 0)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.f32 %2056, 0
  %2058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2052, i32 4)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2052, i32 16)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.f32 %2060, 0
  %2062 = extractvalue %dx.types.ResRet.f32 %2060, 1
  %2063 = extractvalue %dx.types.ResRet.f32 %2060, 2
  %2064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2052, i32 28)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2052, i32 32)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.f32 %2066, 0
  %2068 = extractvalue %dx.types.ResRet.f32 %2066, 1
  %2069 = extractvalue %dx.types.ResRet.f32 %2066, 2
  %2070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2052, i32 44)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2052, i32 48)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2052, i32 52)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2052, i32 56)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2052, i32 64)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = extractvalue %dx.types.ResRet.f32 %2078, 1
  %2081 = extractvalue %dx.types.ResRet.f32 %2078, 2
  %2082 = mul i32 %2052, 60
  %2083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = extractvalue %dx.types.ResRet.f32 %2083, 1
  %2086 = extractvalue %dx.types.ResRet.f32 %2083, 2
  %2087 = add i32 %2082, 12
  %2088 = add i32 %2082, 48
  %2089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 2
  %2091 = fsub fast float %197, %2084
  %2092 = fsub fast float %198, %2085
  %2093 = fsub fast float %199, %2086
  %2094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.ResRet.f32 %2094, 1
  %2097 = extractvalue %dx.types.ResRet.f32 %2094, 2
  %2098 = call float @dx.op.dot3.f32(i32 55, float %2091, float %2092, float %2093, float %2095, float %2096, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2099 = add i32 %2082, 24
  %2100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.f32 %2100, 0
  %2102 = extractvalue %dx.types.ResRet.f32 %2100, 1
  %2103 = extractvalue %dx.types.ResRet.f32 %2100, 2
  %2104 = call float @dx.op.dot3.f32(i32 55, float %2091, float %2092, float %2093, float %2101, float %2102, float %2103)  ; Dot3(ax,ay,az,bx,by,bz)
  %2105 = add i32 %2082, 36
  %2106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2105, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.ResRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.ResRet.f32 %2106, 2
  %2110 = call float @dx.op.dot3.f32(i32 55, float %2091, float %2092, float %2093, float %2107, float %2108, float %2109)  ; Dot3(ax,ay,az,bx,by,bz)
  %2111 = call float @dx.op.unary.f32(i32 6, float %2098)  ; FAbs(value)
  %2112 = call float @dx.op.unary.f32(i32 6, float %2104)  ; FAbs(value)
  %2113 = call float @dx.op.unary.f32(i32 6, float %2110)  ; FAbs(value)
  %2114 = fmul fast float %2111, %2071
  %2115 = fmul fast float %2112, %2071
  %2116 = fmul fast float %2113, %2071
  %2117 = fadd fast float %2114, %2067
  %2118 = fadd fast float %2115, %2068
  %2119 = fadd fast float %2116, %2069
  %2120 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2121 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2122 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2123 = fmul fast float %2120, %2120
  %2124 = fmul fast float %2121, %2121
  %2125 = fadd fast float %2124, %2123
  %2126 = fmul fast float %2122, %2122
  %2127 = fadd fast float %2125, %2126
  %2128 = call float @dx.op.unary.f32(i32 24, float %2127)  ; Sqrt(value)
  %2129 = fsub fast float 1.000000e+00, %2128
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = fmul fast float %2130, %2057
  %2132 = fmul fast float %2090, 2.000000e+00
  %2133 = fadd fast float %2110, %2090
  %2134 = call float @dx.op.binary.f32(i32 35, float %2133, float 0.000000e+00)  ; FMax(a,b)
  %2135 = call float @dx.op.binary.f32(i32 36, float %2134, float %2132)  ; FMin(a,b)
  %2136 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2135)  ; FMax(a,b)
  %2137 = fmul fast float %2059, 0x3FF7154760000000
  %2138 = fmul fast float %2137, %2136
  %2139 = call float @dx.op.unary.f32(i32 21, float %2138)  ; Exp(value)
  %2140 = fmul fast float %2131, %2139
  %2141 = fcmp fast oeq float %439, 0.000000e+00
  br i1 %2141, label %2147, label %2142, !dx.controlflow.hints !81

; <label>:2142                                    ; preds = %2044
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 3
  %2145 = fmul fast float %2144, %439
  %2146 = call float @dx.op.unary.f32(i32 23, float %2145)  ; Log(value)
  br label %2147

; <label>:2147                                    ; preds = %2142, %2044
  %2148 = phi float [ %2146, %2142 ], [ 0.000000e+00, %2044 ]
  %2149 = fcmp fast oeq float %2073, 0.000000e+00
  br i1 %2149, label %2171, label %2150, !dx.controlflow.hints !109

; <label>:2150                                    ; preds = %2147
  %2151 = fmul fast float %2079, %2077
  %2152 = fmul fast float %2080, %2077
  %2153 = fmul fast float %2081, %2077
  %2154 = fsub fast float %197, %2151
  %2155 = fsub fast float %198, %2152
  %2156 = fsub fast float %199, %2153
  %2157 = fmul fast float %2154, %2073
  %2158 = fmul fast float %2155, %2073
  %2159 = fmul fast float %2156, %2073
  %2160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %38, float %2157, float %2158, float %2159, float undef, i32 0, i32 0, i32 0, float %2148)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2161 = extractvalue %dx.types.ResRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.ResRet.f32 %2160, 1
  %2163 = fdiv fast float 1.000000e+00, %2075
  %2164 = fmul fast float %2075, 2.000000e+00
  %2165 = fadd fast float %2164, -1.000000e+00
  %2166 = fadd fast float %2165, %2162
  %2167 = fadd fast float %2166, %2161
  %2168 = fmul fast float %2167, %2163
  %2169 = fadd fast float %2168, -1.000000e+00
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  br label %2171

; <label>:2171                                    ; preds = %2150, %2147
  %2172 = phi float [ %2170, %2150 ], [ 1.000000e+00, %2147 ]
  %2173 = fmul fast float %2140, %2172
  %2174 = fmul fast float %2173, %2061
  %2175 = fmul fast float %2173, %2062
  %2176 = fmul fast float %2173, %2063
  %2177 = fadd fast float %2174, %2046
  %2178 = fadd fast float %2175, %2047
  %2179 = fadd fast float %2176, %2048
  %2180 = fmul fast float %2173, %2065
  %2181 = fadd fast float %2180, %2049
  %2182 = fadd fast float %2173, %2050
  %2183 = icmp eq i32 %2045, %2054
  br i1 %2183, label %2184, label %2044, !llvm.loop !110

; <label>:2184                                    ; preds = %2171
  br label %2185

; <label>:2185                                    ; preds = %2184, %2029
  %2186 = phi float [ %2031, %2029 ], [ %2177, %2184 ]
  %2187 = phi float [ %2032, %2029 ], [ %2178, %2184 ]
  %2188 = phi float [ %2033, %2029 ], [ %2179, %2184 ]
  %2189 = phi float [ %2034, %2029 ], [ %2181, %2184 ]
  %2190 = phi float [ %2035, %2029 ], [ %2182, %2184 ]
  %2191 = add i32 %2030, 1
  %2192 = icmp ult i32 %2191, %2037
  br i1 %2192, label %2029, label %2193, !llvm.loop !111

; <label>:2193                                    ; preds = %2185
  br label %2194

; <label>:2194                                    ; preds = %2193, %2024, %2017
  %2195 = phi float [ %2018, %2017 ], [ %2018, %2024 ], [ %2186, %2193 ]
  %2196 = phi float [ %2019, %2017 ], [ %2019, %2024 ], [ %2187, %2193 ]
  %2197 = phi float [ %2020, %2017 ], [ %2020, %2024 ], [ %2188, %2193 ]
  %2198 = phi float [ %1219, %2017 ], [ %1219, %2024 ], [ %2189, %2193 ]
  %2199 = phi float [ %2021, %2017 ], [ %2021, %2024 ], [ %2190, %2193 ]
  %2200 = fcmp fast ogt float %2199, 0.000000e+00
  br i1 %2200, label %2201, label %3399, !dx.controlflow.hints !112

; <label>:2201                                    ; preds = %2194
  %2202 = fdiv fast float 1.000000e+00, %2199
  %2203 = fmul fast float %2202, %2195
  %2204 = fmul fast float %2202, %2196
  %2205 = fmul fast float %2202, %2197
  %2206 = fmul fast float %2202, %2198
  %2207 = fmul fast float %2202, %666
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 0
  %2210 = fadd fast float %2209, -1.000000e+00
  %2211 = fmul fast float %2207, %2210
  %2212 = fadd fast float %2211, 1.000000e+00
  %2213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2214 = extractvalue %dx.types.CBufRet.f32 %2213, 0
  %2215 = extractvalue %dx.types.CBufRet.f32 %2213, 1
  %2216 = extractvalue %dx.types.CBufRet.f32 %2213, 2
  %2217 = fsub fast float %199, %2216
  %2218 = fsub fast float %237, %2216
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 3
  %2221 = fcmp fast oeq float %2220, 0.000000e+00
  br i1 %2221, label %3370, label %2222, !dx.controlflow.hints !113

; <label>:2222                                    ; preds = %2201
  %2223 = fsub fast float %198, %2215
  %2224 = fsub fast float %197, %2214
  %2225 = extractvalue %dx.types.CBufRet.f32 %2219, 0
  %2226 = extractvalue %dx.types.CBufRet.f32 %2219, 1
  %2227 = extractvalue %dx.types.CBufRet.f32 %2219, 2
  %2228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2229 = extractvalue %dx.types.CBufRet.f32 %2228, 0
  %2230 = extractvalue %dx.types.CBufRet.f32 %2228, 1
  %2231 = extractvalue %dx.types.CBufRet.f32 %2228, 2
  %2232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.f32 %2232, 2
  %2234 = fmul fast float %2233, %2225
  %2235 = fmul fast float %2233, %2226
  %2236 = fmul fast float %2233, %2227
  %2237 = fsub fast float %2224, %2234
  %2238 = fsub fast float %2223, %2235
  %2239 = fsub fast float %2217, %2236
  %2240 = fcmp fast olt float %2220, 0.000000e+00
  br i1 %2240, label %2772, label %2241, !dx.controlflow.hints !114

; <label>:2241                                    ; preds = %2222
  %2242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2243 = extractvalue %dx.types.CBufRet.f32 %2242, 0
  %2244 = extractvalue %dx.types.CBufRet.f32 %2242, 1
  %2245 = extractvalue %dx.types.CBufRet.f32 %2242, 2
  %2246 = extractvalue %dx.types.CBufRet.f32 %2242, 3
  %2247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.CBufRet.f32 %2247, 1
  %2250 = extractvalue %dx.types.CBufRet.f32 %2247, 2
  %2251 = extractvalue %dx.types.CBufRet.f32 %2247, 3
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 0
  %2254 = extractvalue %dx.types.CBufRet.f32 %2252, 1
  %2255 = extractvalue %dx.types.CBufRet.f32 %2252, 2
  %2256 = extractvalue %dx.types.CBufRet.f32 %2252, 3
  %2257 = fmul fast float %2243, %2237
  %2258 = call float @dx.op.tertiary.f32(i32 46, float %2238, float %2244, float %2257)  ; FMad(a,b,c)
  %2259 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2245, float %2258)  ; FMad(a,b,c)
  %2260 = fadd fast float %2259, %2246
  %2261 = fmul fast float %2248, %2237
  %2262 = call float @dx.op.tertiary.f32(i32 46, float %2238, float %2249, float %2261)  ; FMad(a,b,c)
  %2263 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2250, float %2262)  ; FMad(a,b,c)
  %2264 = fadd fast float %2263, %2251
  %2265 = fmul fast float %2253, %2237
  %2266 = call float @dx.op.tertiary.f32(i32 46, float %2238, float %2254, float %2265)  ; FMad(a,b,c)
  %2267 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2255, float %2266)  ; FMad(a,b,c)
  %2268 = fadd fast float %2267, %2256
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.CBufRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.CBufRet.f32 %2269, 3
  %2273 = fmul fast float %2272, %2260
  %2274 = fmul fast float %2272, %2264
  %2275 = fadd fast float %2273, %2270
  %2276 = fadd fast float %2274, %2271
  %2277 = extractvalue %dx.types.CBufRet.f32 %2269, 2
  %2278 = fcmp fast olt float %2277, 0.000000e+00
  %2279 = fsub fast float -0.000000e+00, %2277
  %2280 = select i1 %2278, float %2279, float %2277
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 1
  %2283 = fadd fast float %2280, %2282
  %2284 = fcmp fast ogt float %2283, 0.000000e+00
  br i1 %2284, label %2285, label %2316, !dx.controlflow.hints !115

; <label>:2285                                    ; preds = %2241
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 1
  %2288 = fsub fast float %2287, %2268
  %2289 = extractvalue %dx.types.CBufRet.f32 %2286, 2
  %2290 = fmul fast float %2288, %2289
  %2291 = fsub fast float 1.000000e+00, %2290
  %2292 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2294 = extractvalue %dx.types.CBufRet.f32 %2293, 0
  %2295 = extractvalue %dx.types.CBufRet.f32 %2293, 1
  %2296 = fsub fast float %2275, %2294
  %2297 = fsub fast float %2276, %2295
  %2298 = fcmp fast olt float %2296, 0.000000e+00
  %2299 = fcmp fast olt float %2297, 0.000000e+00
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.CBufRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.CBufRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.CBufRet.f32 %2300, 3
  %2305 = select i1 %2298, float %2301, float %2303
  %2306 = select i1 %2299, float %2302, float %2304
  %2307 = fmul fast float %2305, %2296
  %2308 = fmul fast float %2306, %2297
  %2309 = call float @dx.op.unary.f32(i32 6, float %2307)  ; FAbs(value)
  %2310 = call float @dx.op.unary.f32(i32 6, float %2308)  ; FAbs(value)
  %2311 = extractvalue %dx.types.CBufRet.f32 %2232, 0
  %2312 = call float @dx.op.binary.f32(i32 35, float %2309, float %2310)  ; FMax(a,b)
  %2313 = fsub fast float %2311, %2312
  %2314 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2315 = fmul fast float %2314, %2292
  br label %2316

; <label>:2316                                    ; preds = %2285, %2241
  %2317 = phi float [ %2315, %2285 ], [ 0.000000e+00, %2241 ]
  %2318 = call float @dx.op.binary.f32(i32 35, float %2317, float 0.000000e+00)  ; FMax(a,b)
  %2319 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2318)  ; FMax(a,b)
  %2320 = fcmp fast olt float %2319, 1.000000e+00
  br i1 %2320, label %2321, label %2719, !dx.controlflow.hints !116

; <label>:2321                                    ; preds = %2316
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = fcmp fast une float %2323, 0.000000e+00
  br i1 %2324, label %2325, label %2719, !dx.controlflow.hints !117

; <label>:2325                                    ; preds = %2321
  %2326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2327 = extractvalue %dx.types.CBufRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.CBufRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.CBufRet.f32 %2326, 2
  %2330 = extractvalue %dx.types.CBufRet.f32 %2326, 3
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 0
  %2333 = extractvalue %dx.types.CBufRet.f32 %2331, 1
  %2334 = extractvalue %dx.types.CBufRet.f32 %2331, 2
  %2335 = extractvalue %dx.types.CBufRet.f32 %2331, 3
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 0
  %2338 = extractvalue %dx.types.CBufRet.f32 %2336, 1
  %2339 = extractvalue %dx.types.CBufRet.f32 %2336, 2
  %2340 = extractvalue %dx.types.CBufRet.f32 %2336, 3
  %2341 = fmul fast float %2327, %2237
  %2342 = call float @dx.op.tertiary.f32(i32 46, float %2238, float %2328, float %2341)  ; FMad(a,b,c)
  %2343 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2329, float %2342)  ; FMad(a,b,c)
  %2344 = fadd fast float %2343, %2330
  %2345 = fmul fast float %2332, %2237
  %2346 = call float @dx.op.tertiary.f32(i32 46, float %2238, float %2333, float %2345)  ; FMad(a,b,c)
  %2347 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2334, float %2346)  ; FMad(a,b,c)
  %2348 = fadd fast float %2347, %2335
  %2349 = fmul fast float %2337, %2237
  %2350 = call float @dx.op.tertiary.f32(i32 46, float %2238, float %2338, float %2349)  ; FMad(a,b,c)
  %2351 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2339, float %2350)  ; FMad(a,b,c)
  %2352 = fadd fast float %2351, %2340
  %2353 = fcmp fast oge float %2344, 1.000000e+00
  %2354 = fcmp fast oge float %2348, 1.000000e+00
  %2355 = or i1 %2353, %2354
  %2356 = fcmp fast olt float %2344, 0.000000e+00
  %2357 = fcmp fast olt float %2348, 0.000000e+00
  %2358 = or i1 %2356, %2357
  %2359 = or i1 %2355, %2358
  br i1 %2359, label %2719, label %2360, !dx.controlflow.hints !118

; <label>:2360                                    ; preds = %2325
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.CBufRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.CBufRet.f32 %2361, 2
  %2365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.i32 %2365, 2
  %2367 = uitofp i32 %2366 to float
  %2368 = extractvalue %dx.types.CBufRet.i32 %2365, 3
  %2369 = uitofp i32 %2368 to float
  %2370 = extractvalue %dx.types.CBufRet.f32 %2361, 3
  %2371 = fmul fast float %2370, 2.000000e+00
  %2372 = fsub fast float %2344, %2362
  %2373 = fsub fast float %2348, %2363
  %2374 = fmul fast float %2371, %2372
  %2375 = fmul fast float %2371, %2373
  %2376 = fdiv fast float 1.000000e+00, %2227
  %2377 = fmul fast float %2375, %2376
  %2378 = call float @dx.op.unary.f32(i32 6, float %2377)  ; FAbs(value)
  %2379 = fmul fast float %2364, %2239
  %2380 = fmul fast float %2379, %2371
  %2381 = call float @dx.op.unary.f32(i32 6, float %2380)  ; FAbs(value)
  %2382 = call float @dx.op.unary.f32(i32 6, float %2374)  ; FAbs(value)
  %2383 = call float @dx.op.binary.f32(i32 35, float %2381, float %2378)  ; FMax(a,b)
  %2384 = call float @dx.op.binary.f32(i32 35, float %2382, float %2383)  ; FMax(a,b)
  %2385 = fmul fast float %2384, 2.000000e+00
  %2386 = call float @dx.op.unary.f32(i32 23, float %2385)  ; Log(value)
  %2387 = call float @dx.op.binary.f32(i32 35, float %2386, float %2367)  ; FMax(a,b)
  %2388 = call float @dx.op.unary.f32(i32 22, float %2387)  ; Frc(value)
  %2389 = fadd fast float %2388, 0xBFEA666660000000
  %2390 = fmul fast float %2389, 8.000000e+00
  %2391 = call float @dx.op.unary.f32(i32 7, float %2390)  ; Saturate(value)
  %2392 = call float @dx.op.unary.f32(i32 27, float %2387)  ; Round_ni(value)
  %2393 = fadd fast float %2392, %2391
  %2394 = call float @dx.op.binary.f32(i32 36, float %2393, float %2369)  ; FMin(a,b)
  %2395 = call float @dx.op.unary.f32(i32 27, float %2394)  ; Round_ni(value)
  %2396 = fsub fast float -0.000000e+00, %2395
  %2397 = call float @dx.op.unary.f32(i32 21, float %2396)  ; Exp(value)
  %2398 = fmul fast float %2397, %2371
  %2399 = fmul fast float %2398, %2344
  %2400 = fmul fast float %2398, %2348
  %2401 = fmul fast float %2399, 2.500000e-01
  %2402 = fmul fast float %2400, 2.500000e-01
  %2403 = fadd fast float %2401, 5.000000e-01
  %2404 = fadd fast float %2402, 5.000000e-01
  %2405 = fsub fast float %2369, %2367
  %2406 = fptoui float %2405 to i32
  %2407 = add i32 %2406, 320
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %2407)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.CBufRet.f32 %2408, 1
  %2411 = fcmp fast une float %2394, %2369
  %2412 = fsub fast float %2344, %2409
  %2413 = fsub fast float %2348, %2410
  %2414 = call float @dx.op.unary.f32(i32 6, float %2412)  ; FAbs(value)
  %2415 = call float @dx.op.unary.f32(i32 6, float %2413)  ; FAbs(value)
  %2416 = fmul fast float %2414, %2398
  %2417 = fmul fast float %2415, %2398
  %2418 = fcmp fast olt float %2416, 1.000000e+00
  %2419 = fcmp fast olt float %2417, 1.000000e+00
  %2420 = and i1 %2418, %2419
  %2421 = or i1 %2411, %2420
  br i1 %2421, label %2422, label %2719, !dx.controlflow.hints !119

; <label>:2422                                    ; preds = %2360
  %2423 = fmul fast float %2400, 5.000000e-01
  %2424 = fmul fast float %2399, 5.000000e-01
  %2425 = fadd fast float %2423, 5.000000e-01
  %2426 = fadd fast float %2424, 5.000000e-01
  %2427 = sitofp i32 %2366 to float
  %2428 = fsub fast float %2394, %2427
  %2429 = call float @dx.op.unary.f32(i32 27, float %2428)  ; Round_ni(value)
  %2430 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2431 = call float @dx.op.unary.f32(i32 22, float %2426)  ; Frc(value)
  %2432 = call float @dx.op.unary.f32(i32 22, float %2425)  ; Frc(value)
  %2433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %40, float %2431, float %2432, float %2429, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2434 = extractvalue %dx.types.ResRet.f32 %2433, 0
  %2435 = extractvalue %dx.types.ResRet.f32 %2433, 1
  %2436 = extractvalue %dx.types.ResRet.f32 %2433, 2
  %2437 = extractvalue %dx.types.ResRet.f32 %2433, 3
  %2438 = fcmp fast ogt float %2430, 0.000000e+00
  br i1 %2438, label %2439, label %2460, !dx.controlflow.hints !120

; <label>:2439                                    ; preds = %2422
  %2440 = fadd fast float %2429, 1.000000e+00
  %2441 = call float @dx.op.unary.f32(i32 22, float %2403)  ; Frc(value)
  %2442 = call float @dx.op.unary.f32(i32 22, float %2404)  ; Frc(value)
  %2443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %40, float %2441, float %2442, float %2440, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.ResRet.f32 %2443, 2
  %2447 = extractvalue %dx.types.ResRet.f32 %2443, 3
  %2448 = fsub fast float %2444, %2434
  %2449 = fsub fast float %2445, %2435
  %2450 = fsub fast float %2446, %2436
  %2451 = fsub fast float %2447, %2437
  %2452 = fmul fast float %2448, %2430
  %2453 = fmul fast float %2449, %2430
  %2454 = fmul fast float %2450, %2430
  %2455 = fmul fast float %2451, %2430
  %2456 = fadd fast float %2452, %2434
  %2457 = fadd fast float %2453, %2435
  %2458 = fadd fast float %2454, %2436
  %2459 = fadd fast float %2455, %2437
  br label %2460

; <label>:2460                                    ; preds = %2439, %2422
  %2461 = phi float [ %2456, %2439 ], [ %2434, %2422 ]
  %2462 = phi float [ %2457, %2439 ], [ %2435, %2422 ]
  %2463 = phi float [ %2458, %2439 ], [ %2436, %2422 ]
  %2464 = phi float [ %2459, %2439 ], [ %2437, %2422 ]
  %2465 = fadd fast float %2461, -5.000000e-01
  %2466 = fadd fast float %2463, -5.000000e-01
  %2467 = fmul fast float %2465, 0xBFD5555560000000
  %2468 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2466, float %2467)  ; FMad(a,b,c)
  %2469 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2462, float 0.000000e+00)  ; FMad(a,b,c)
  %2470 = fadd fast float %2469, %2464
  %2471 = fmul fast float %2465, -7.500000e-01
  %2472 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2466, float %2471)  ; FMad(a,b,c)
  %2473 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2462, float 0.000000e+00)  ; FMad(a,b,c)
  %2474 = fadd fast float %2473, %2464
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 0
  %2477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2478 = extractvalue %dx.types.CBufRet.f32 %2477, 0
  %2479 = extractvalue %dx.types.CBufRet.f32 %2477, 1
  %2480 = extractvalue %dx.types.CBufRet.f32 %2477, 2
  %2481 = extractvalue %dx.types.CBufRet.f32 %2477, 3
  %2482 = fsub fast float %2478, %2468
  %2483 = fsub fast float %2479, %2470
  %2484 = fsub fast float %2480, %2472
  %2485 = fsub fast float %2481, %2474
  %2486 = fmul fast float %2482, %2476
  %2487 = fmul fast float %2483, %2476
  %2488 = fmul fast float %2484, %2476
  %2489 = fmul fast float %2485, %2476
  %2490 = fadd fast float %2486, %2468
  %2491 = fadd fast float %2487, %2470
  %2492 = fadd fast float %2488, %2472
  %2493 = fadd fast float %2489, %2474
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = and i32 %2495, 536870911
  %2497 = uitofp i32 %2496 to float
  %2498 = fmul fast float %2497, %2344
  %2499 = fmul fast float %2497, %2348
  %2500 = fptoui float %2498 to i32
  %2501 = fptoui float %2499 to i32
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = and i32 %2503, 31
  %2505 = lshr i32 %2500, %2504
  %2506 = lshr i32 %2501, %2504
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 31
  %2510 = shl i32 1, %2509
  %2511 = call i32 @dx.op.binary.i32(i32 40, i32 %2510, i32 4)  ; UMin(a,b)
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = extractvalue %dx.types.ResRet.i32 %2512, 1
  %2515 = icmp eq i32 %2511, 0
  br i1 %2515, label %2557, label %2516

; <label>:2516                                    ; preds = %2460
  br label %2517

; <label>:2517                                    ; preds = %2545, %2516
  %2518 = phi i32 [ %2548, %2545 ], [ 0, %2516 ]
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = lshr i32 %2520, 16
  %2522 = and i32 %2521, 31
  %2523 = shl i32 %2506, %2522
  %2524 = add i32 %2523, %2505
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 31
  %2528 = shl i32 %2524, %2527
  %2529 = add i32 %2528, %2518
  %2530 = shl i32 %2529, 2
  %2531 = add i32 %2530, 32
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = icmp slt i32 %2533, 0
  %2535 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2518
  %2536 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2518
  %2537 = bitcast float* %2535 to i32*
  %2538 = bitcast float* %2536 to i32*
  br i1 %2534, label %2539, label %2545, !dx.controlflow.hints !121

; <label>:2539                                    ; preds = %2517
  %2540 = and i32 %2533, 1073741823
  %2541 = add nuw nsw i32 %2540, 20
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = extractvalue %dx.types.ResRet.i32 %2542, 1
  br label %2545

; <label>:2545                                    ; preds = %2539, %2517
  %2546 = phi i32 [ %2543, %2539 ], [ %2513, %2517 ]
  %2547 = phi i32 [ %2544, %2539 ], [ %2514, %2517 ]
  store i32 %2546, i32* %2537, align 4
  store i32 %2547, i32* %2538, align 4
  %2548 = add nuw i32 %2518, 1
  %2549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.i32 %2549, 2
  %2551 = icmp eq i32 %2550, 0
  %2552 = icmp ugt i32 %2533, -1073741825
  %2553 = and i1 %2552, %2551
  %2554 = icmp ult i32 %2548, %2511
  %2555 = and i1 %2553, %2554
  br i1 %2555, label %2517, label %2556, !dx.controlflow.hints !122

; <label>:2556                                    ; preds = %2545
  br label %2557

; <label>:2557                                    ; preds = %2556, %2460
  %2558 = phi i32 [ 0, %2460 ], [ %2548, %2556 ]
  %2559 = extractvalue %dx.types.CBufRet.f32 %2322, 2
  %2560 = fptoui float %2559 to i32
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2613, label %2562

; <label>:2562                                    ; preds = %2557
  br label %2563

; <label>:2563                                    ; preds = %2608, %2562
  %2564 = phi i32 [ %2609, %2608 ], [ %2558, %2562 ]
  %2565 = phi i32 [ %2610, %2608 ], [ 0, %2562 ]
  %2566 = lshr i32 %2565, 2
  %2567 = and i32 %2565, 3
  %2568 = add nuw nsw i32 %2566, 83
  %2569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 %2568)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.i32 %2569, 0
  %2571 = extractvalue %dx.types.CBufRet.i32 %2569, 1
  %2572 = extractvalue %dx.types.CBufRet.i32 %2569, 2
  %2573 = extractvalue %dx.types.CBufRet.i32 %2569, 3
  %2574 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 0
  store i32 %2570, i32* %2574, align 4
  %2575 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 1
  store i32 %2571, i32* %2575, align 4
  %2576 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 2
  store i32 %2572, i32* %2576, align 4
  %2577 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 3
  store i32 %2573, i32* %2577, align 4
  %2578 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 %2567
  %2579 = load i32, i32* %2578, align 4, !tbaa !123, !noalias !125
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = lshr i32 %2581, 16
  %2583 = and i32 %2582, 31
  %2584 = shl i32 %2506, %2583
  %2585 = add i32 %2584, %2505
  %2586 = shl i32 %2585, 2
  %2587 = add i32 %2586, %2579
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = icmp eq i32 %2589, 0
  br i1 %2590, label %2608, label %2591, !dx.controlflow.hints !132

; <label>:2591                                    ; preds = %2563
  %2592 = icmp slt i32 %2589, 0
  %2593 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2564
  %2594 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2564
  %2595 = bitcast float* %2593 to i32*
  %2596 = bitcast float* %2594 to i32*
  br i1 %2592, label %2597, label %2604, !dx.controlflow.hints !133

; <label>:2597                                    ; preds = %2591
  %2598 = and i32 %2589, 1073741823
  %2599 = add i32 %2579, 20
  %2600 = add i32 %2599, %2598
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = extractvalue %dx.types.ResRet.i32 %2601, 1
  br label %2604

; <label>:2604                                    ; preds = %2597, %2591
  %2605 = phi i32 [ %2602, %2597 ], [ %2513, %2591 ]
  %2606 = phi i32 [ %2603, %2597 ], [ %2514, %2591 ]
  store i32 %2605, i32* %2595, align 4
  store i32 %2606, i32* %2596, align 4
  %2607 = add i32 %2564, 1
  br label %2608

; <label>:2608                                    ; preds = %2604, %2563
  %2609 = phi i32 [ %2564, %2563 ], [ %2607, %2604 ]
  %2610 = add nuw i32 %2565, 1
  %2611 = icmp eq i32 %2610, %2560
  br i1 %2611, label %2612, label %2563

; <label>:2612                                    ; preds = %2608
  br label %2613

; <label>:2613                                    ; preds = %2612, %2557
  %2614 = phi i32 [ %2558, %2557 ], [ %2609, %2612 ]
  %2615 = icmp eq i32 %2614, 1
  %2616 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 0
  %2617 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 0
  br i1 %2615, label %2618, label %2621, !dx.controlflow.hints !134

; <label>:2618                                    ; preds = %2613
  %2619 = load float, float* %2616, align 4
  %2620 = load float, float* %2617, align 4
  br label %2648

; <label>:2621                                    ; preds = %2613
  %2622 = load float, float* %2616, align 4
  %2623 = load float, float* %2617, align 4
  %2624 = fdiv fast float 1.000000e+00, %2623
  %2625 = fsub fast float %2622, %2624
  %2626 = icmp ugt i32 %2614, 1
  br i1 %2626, label %2627, label %2643

; <label>:2627                                    ; preds = %2621
  br label %2628

; <label>:2628                                    ; preds = %2628, %2627
  %2629 = phi float [ %2638, %2628 ], [ %2625, %2627 ]
  %2630 = phi float [ %2639, %2628 ], [ %2622, %2627 ]
  %2631 = phi i32 [ %2640, %2628 ], [ 1, %2627 ]
  %2632 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2631
  %2633 = load float, float* %2632, align 4
  %2634 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2631
  %2635 = load float, float* %2634, align 4
  %2636 = fdiv fast float 1.000000e+00, %2635
  %2637 = fsub fast float %2633, %2636
  %2638 = call float @dx.op.binary.f32(i32 36, float %2629, float %2637)  ; FMin(a,b)
  %2639 = call float @dx.op.binary.f32(i32 35, float %2630, float %2633)  ; FMax(a,b)
  %2640 = add nuw i32 %2631, 1
  %2641 = icmp eq i32 %2640, %2614
  br i1 %2641, label %2642, label %2628

; <label>:2642                                    ; preds = %2628
  br label %2643

; <label>:2643                                    ; preds = %2642, %2621
  %2644 = phi float [ %2625, %2621 ], [ %2638, %2642 ]
  %2645 = phi float [ %2622, %2621 ], [ %2639, %2642 ]
  %2646 = fsub fast float %2645, %2644
  %2647 = fdiv fast float 1.000000e+00, %2646
  br label %2648

; <label>:2648                                    ; preds = %2643, %2618
  %2649 = phi float [ %2619, %2618 ], [ %2645, %2643 ]
  %2650 = phi float [ %2620, %2618 ], [ %2647, %2643 ]
  %2651 = fadd fast float %2352, %2649
  %2652 = fmul fast float %2651, %2650
  %2653 = call float @dx.op.unary.f32(i32 7, float %2652)  ; Saturate(value)
  %2654 = fmul fast float %2653, 2.000000e+00
  %2655 = fsub fast float 1.000000e+00, %2654
  %2656 = fmul fast float %2490, %2490
  %2657 = fsub fast float %2491, %2656
  %2658 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2657)  ; FMax(a,b)
  %2659 = fdiv fast float 1.000000e+00, %2658
  %2660 = fmul fast float %2491, %2490
  %2661 = fsub fast float %2492, %2660
  %2662 = fsub fast float %2655, %2490
  %2663 = fmul fast float %2655, %2655
  %2664 = fsub fast float %2663, %2491
  %2665 = fmul fast float %2659, %2661
  %2666 = fmul fast float %2665, %2662
  %2667 = fsub fast float %2664, %2666
  %2668 = fmul fast float %2491, %2491
  %2669 = fsub fast float %2493, %2668
  %2670 = fmul fast float %2661, %2661
  %2671 = fmul fast float %2670, %2659
  %2672 = fsub fast float %2669, %2671
  %2673 = fdiv fast float %2667, %2672
  %2674 = fmul fast float %2673, %2661
  %2675 = fsub fast float %2662, %2674
  %2676 = fmul fast float %2675, %2659
  %2677 = fmul fast float %2676, %2490
  %2678 = fsub fast float 1.000000e+00, %2677
  %2679 = fmul fast float %2673, %2491
  %2680 = fsub fast float %2678, %2679
  %2681 = fmul fast float %2676, %2676
  %2682 = fmul fast float %2673, 4.000000e+00
  %2683 = fmul fast float %2682, %2680
  %2684 = fsub fast float %2681, %2683
  %2685 = call float @dx.op.unary.f32(i32 24, float %2684)  ; Sqrt(value)
  %2686 = fcmp fast oge float %2676, 0.000000e+00
  %2687 = fsub fast float -0.000000e+00, %2685
  %2688 = select i1 %2686, float %2687, float %2685
  %2689 = fsub fast float %2688, %2676
  %2690 = fdiv fast float %2689, %2673
  %2691 = fdiv fast float %2680, %2689
  %2692 = fmul fast float %2690, 5.000000e-01
  %2693 = fmul fast float %2691, 2.000000e+00
  %2694 = select i1 %2686, float %2692, float %2693
  %2695 = select i1 %2686, float %2693, float %2692
  %2696 = call float @dx.op.binary.f32(i32 35, float %2694, float %2695)  ; FMax(a,b)
  %2697 = call float @dx.op.binary.f32(i32 36, float %2694, float %2695)  ; FMin(a,b)
  %2698 = fcmp fast ogt float %2655, %2696
  %2699 = fsub fast float %2655, %2697
  %2700 = fsub fast float %2655, %2696
  %2701 = fsub fast float %2696, %2697
  %2702 = select i1 %2698, float %2700, float %2701
  %2703 = fmul float %2699, %2702
  %2704 = select i1 %2698, float %2697, float %2655
  %2705 = fcmp fast ogt float %2655, %2697
  %2706 = fmul fast float %2704, %2696
  %2707 = fadd fast float %2704, %2696
  %2708 = fmul fast float %2707, %2490
  %2709 = fadd fast float %2706, %2491
  %2710 = fsub fast float %2709, %2708
  %2711 = fdiv fast float %2710, %2703
  %2712 = select i1 %2705, float %2711, float 0.000000e+00
  %2713 = fsub fast float 1.000000e+00, %2712
  %2714 = select i1 %2698, float %2713, float %2712
  %2715 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2475, 3
  %2717 = fmul fast float %2716, %2715
  %2718 = fsub fast float 1.000000e+00, %2717
  br label %2719

; <label>:2719                                    ; preds = %2648, %2360, %2325, %2321, %2316
  %2720 = phi float [ 1.000000e+00, %2316 ], [ %2718, %2648 ], [ 1.000000e+00, %2325 ], [ 1.000000e+00, %2360 ], [ 1.000000e+00, %2321 ]
  %2721 = fcmp fast ogt float %2317, 0.000000e+00
  br i1 %2721, label %2722, label %2728, !dx.controlflow.hints !135

; <label>:2722                                    ; preds = %2719
  %2723 = fadd fast float %2282, %2268
  %2724 = call float @dx.op.binary.f32(i32 35, float %2723, float 0.000000e+00)  ; FMax(a,b)
  %2725 = fadd fast float %2724, 0x3F10000000000000
  %2726 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %2275, float %2276, float undef, float undef, i32 0, i32 0, i32 undef, float %2725)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  br label %2728

; <label>:2728                                    ; preds = %2722, %2719
  %2729 = phi float [ %2727, %2722 ], [ 1.000000e+00, %2719 ]
  %2730 = fsub fast float %2729, %2720
  %2731 = fmul fast float %2730, %2317
  %2732 = fadd fast float %2731, %2720
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 2
  %2735 = fcmp fast ogt float %2734, 0.000000e+00
  br i1 %2735, label %2736, label %2772, !dx.controlflow.hints !136

; <label>:2736                                    ; preds = %2728
  %2737 = fcmp fast ugt float %2734, 0.000000e+00
  br i1 %2737, label %2738, label %2769, !dx.controlflow.hints !137

; <label>:2738                                    ; preds = %2736
  %2739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2740 = extractvalue %dx.types.CBufRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.CBufRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.CBufRet.f32 %2739, 2
  %2743 = extractvalue %dx.types.CBufRet.f32 %2739, 3
  %2744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2745 = extractvalue %dx.types.CBufRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.CBufRet.f32 %2744, 1
  %2747 = extractvalue %dx.types.CBufRet.f32 %2744, 2
  %2748 = extractvalue %dx.types.CBufRet.f32 %2744, 3
  %2749 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2750 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2751 = fadd fast float %2214, %2237
  %2752 = fadd fast float %2215, %2238
  %2753 = fadd fast float %2216, %2239
  %2754 = fmul fast float %2751, %2740
  %2755 = call float @dx.op.tertiary.f32(i32 46, float %2741, float %2752, float %2754)  ; FMad(a,b,c)
  %2756 = call float @dx.op.tertiary.f32(i32 46, float %2742, float %2753, float %2755)  ; FMad(a,b,c)
  %2757 = fadd fast float %2756, %2743
  %2758 = fmul fast float %2751, %2745
  %2759 = call float @dx.op.tertiary.f32(i32 46, float %2746, float %2752, float %2758)  ; FMad(a,b,c)
  %2760 = call float @dx.op.tertiary.f32(i32 46, float %2747, float %2753, float %2759)  ; FMad(a,b,c)
  %2761 = fadd fast float %2760, %2748
  %2762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %38, float %2757, float %2761, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2763 = extractvalue %dx.types.ResRet.f32 %2762, 0
  %2764 = fmul fast float %2763, %2750
  %2765 = fadd fast float %2764, %2749
  %2766 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2767 = fmul fast float %2766, %2734
  %2768 = fsub fast float 1.000000e+00, %2767
  br label %2769

; <label>:2769                                    ; preds = %2738, %2736
  %2770 = phi float [ %2768, %2738 ], [ 1.000000e+00, %2736 ]
  %2771 = fmul fast float %2770, %2732
  br label %2772

; <label>:2772                                    ; preds = %2769, %2728, %2222
  %2773 = phi float [ 1.000000e+00, %2222 ], [ %2771, %2769 ], [ %2732, %2728 ]
  %2774 = call float @dx.op.binary.f32(i32 36, float %2773, float %2773)  ; FMin(a,b)
  %2775 = call float @dx.op.binary.f32(i32 36, float %2773, float %2774)  ; FMin(a,b)
  %2776 = fcmp fast ogt float %2775, 0.000000e+00
  br i1 %2776, label %2777, label %2935, !dx.controlflow.hints !138

; <label>:2777                                    ; preds = %2772
  %2778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2779 = extractvalue %dx.types.CBufRet.f32 %2778, 0
  %2780 = extractvalue %dx.types.CBufRet.f32 %2778, 1
  %2781 = extractvalue %dx.types.CBufRet.f32 %2778, 2
  %2782 = extractvalue %dx.types.CBufRet.f32 %2778, 3
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.CBufRet.f32 %2783, 2
  %2787 = extractvalue %dx.types.CBufRet.f32 %2783, 3
  %2788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.CBufRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.CBufRet.f32 %2788, 2
  %2792 = extractvalue %dx.types.CBufRet.f32 %2788, 3
  %2793 = fmul fast float %2779, %2237
  %2794 = call float @dx.op.tertiary.f32(i32 46, float %2238, float %2780, float %2793)  ; FMad(a,b,c)
  %2795 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2781, float %2794)  ; FMad(a,b,c)
  %2796 = fadd fast float %2795, %2782
  %2797 = fmul fast float %2784, %2237
  %2798 = call float @dx.op.tertiary.f32(i32 46, float %2238, float %2785, float %2797)  ; FMad(a,b,c)
  %2799 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2786, float %2798)  ; FMad(a,b,c)
  %2800 = fadd fast float %2799, %2787
  %2801 = fmul fast float %2789, %2237
  %2802 = call float @dx.op.tertiary.f32(i32 46, float %2238, float %2790, float %2801)  ; FMad(a,b,c)
  %2803 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2791, float %2802)  ; FMad(a,b,c)
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2807 = extractvalue %dx.types.CBufRet.f32 %2804, 3
  %2808 = fmul fast float %2807, %2796
  %2809 = fmul fast float %2807, %2800
  %2810 = fadd fast float %2808, %2805
  %2811 = fadd fast float %2809, %2806
  %2812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.f32 %2812, 0
  %2814 = extractvalue %dx.types.CBufRet.f32 %2812, 1
  %2815 = fsub fast float %2810, %2813
  %2816 = fsub fast float %2811, %2814
  %2817 = fcmp fast olt float %2815, 0.000000e+00
  %2818 = fcmp fast olt float %2816, 0.000000e+00
  %2819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.CBufRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.CBufRet.f32 %2819, 2
  %2823 = extractvalue %dx.types.CBufRet.f32 %2819, 3
  %2824 = select i1 %2817, float %2820, float %2822
  %2825 = select i1 %2818, float %2821, float %2823
  %2826 = fmul fast float %2824, %2815
  %2827 = fmul fast float %2825, %2816
  %2828 = call float @dx.op.unary.f32(i32 6, float %2826)  ; FAbs(value)
  %2829 = call float @dx.op.unary.f32(i32 6, float %2827)  ; FAbs(value)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2232, 0
  %2831 = call float @dx.op.binary.f32(i32 35, float %2828, float %2829)  ; FMax(a,b)
  %2832 = fsub fast float %2830, %2831
  %2833 = call float @dx.op.unary.f32(i32 7, float %2832)  ; Saturate(value)
  %2834 = fcmp fast ogt float %2833, 0.000000e+00
  br i1 %2834, label %2835, label %2876, !dx.controlflow.hints !139

; <label>:2835                                    ; preds = %2777
  %2836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %2810, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2838 = fcmp fast ogt float %2837, 0.000000e+00
  br i1 %2838, label %2839, label %2871, !dx.controlflow.hints !140

; <label>:2839                                    ; preds = %2835
  %2840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %41, float %2810, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2841 = extractvalue %dx.types.ResRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.ResRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.ResRet.f32 %2840, 2
  %2844 = extractvalue %dx.types.ResRet.f32 %2840, 3
  %2845 = fsub fast float 1.000000e+00, %2792
  %2846 = fsub fast float %2845, %2803
  %2847 = fmul fast float %2846, 0x400921FB60000000
  %2848 = fadd fast float %2847, 0x3FF921FB60000000
  %2849 = call float @dx.op.unary.f32(i32 13, float %2848)  ; Sin(value)
  %2850 = fadd fast float %2849, -1.000000e+00
  %2851 = fmul fast float %2850, 0x3FD45F3060000000
  %2852 = fmul fast float %2846, 0x401921FB60000000
  %2853 = fadd fast float %2852, 0x400921FB60000000
  %2854 = call float @dx.op.unary.f32(i32 13, float %2853)  ; Sin(value)
  %2855 = fadd fast float %2854, 0x3E7777A5C0000000
  %2856 = fmul fast float %2855, 0x3FC45F3060000000
  %2857 = fmul fast float %2846, 0x4022D97C80000000
  %2858 = fadd fast float %2857, 0x4012D97C80000000
  %2859 = call float @dx.op.unary.f32(i32 13, float %2858)  ; Sin(value)
  %2860 = fadd fast float %2859, 1.000000e+00
  %2861 = fmul fast float %2860, 0x3FBB2995E0000000
  %2862 = fmul fast float %2846, 0x402921FB60000000
  %2863 = fadd fast float %2862, 0x401921FB60000000
  %2864 = call float @dx.op.unary.f32(i32 13, float %2863)  ; Sin(value)
  %2865 = fadd fast float %2864, 0xBE8777A5C0000000
  %2866 = fmul fast float %2865, 0x3FB45F3060000000
  %2867 = call float @dx.op.dot4.f32(i32 56, float %2841, float %2842, float %2843, float %2844, float %2851, float %2856, float %2861, float %2866)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2868 = fmul fast float %2867, 0xBFF7154760000000
  %2869 = call float @dx.op.unary.f32(i32 21, float %2868)  ; Exp(value)
  %2870 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  br label %2871

; <label>:2871                                    ; preds = %2839, %2835
  %2872 = phi float [ %2870, %2839 ], [ 1.000000e+00, %2835 ]
  %2873 = fadd fast float %2872, -1.000000e+00
  %2874 = fmul fast float %2873, %2833
  %2875 = fadd fast float %2874, 1.000000e+00
  br label %2876

; <label>:2876                                    ; preds = %2871, %2777
  %2877 = phi float [ %2875, %2871 ], [ 1.000000e+00, %2777 ]
  %2878 = fmul fast float %2877, %2773
  %2879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2880 = extractvalue %dx.types.CBufRet.f32 %2879, 1
  %2881 = fsub fast float -0.000000e+00, %197
  %2882 = fsub fast float -0.000000e+00, %198
  %2883 = fsub fast float -0.000000e+00, %2217
  %2884 = fsub fast float %2883, %2216
  %2885 = fadd fast float %2884, %2880
  %2886 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2881, float %2882, float %2885)  ; Dot3(ax,ay,az,bx,by,bz)
  %2887 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2225, float %2226, float %2227)  ; Dot3(ax,ay,az,bx,by,bz)
  %2888 = fdiv fast float 1.000000e+00, %2887
  %2889 = fmul fast float %2888, %2886
  %2890 = fmul fast float %2225, %2889
  %2891 = fmul fast float %2226, %2889
  %2892 = fadd fast float %2890, %197
  %2893 = fadd fast float %2891, %198
  %2894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.f32 %2894, 0
  %2896 = extractvalue %dx.types.CBufRet.f32 %2894, 1
  %2897 = fsub fast float %2892, %2895
  %2898 = fsub fast float %2893, %2896
  %2899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2900 = extractvalue %dx.types.CBufRet.f32 %2899, 2
  %2901 = extractvalue %dx.types.CBufRet.f32 %2899, 3
  %2902 = fmul fast float %2897, %2900
  %2903 = fmul fast float %2898, %2901
  %2904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.i32 %2904, 3
  %2906 = icmp eq i32 %2905, 0
  br i1 %2906, label %2912, label %2907, !dx.controlflow.hints !141

; <label>:2907                                    ; preds = %2876
  %2908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %2902, float %2903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2909 = extractvalue %dx.types.ResRet.f32 %2908, 0
  %2910 = extractvalue %dx.types.ResRet.f32 %2908, 1
  %2911 = extractvalue %dx.types.ResRet.f32 %2908, 2
  br label %2917

; <label>:2912                                    ; preds = %2876
  %2913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %41, float %2902, float %2903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.ResRet.f32 %2913, 1
  %2916 = extractvalue %dx.types.ResRet.f32 %2913, 2
  br label %2917

; <label>:2917                                    ; preds = %2912, %2907
  %2918 = phi float [ %2909, %2907 ], [ %2914, %2912 ]
  %2919 = phi float [ %2910, %2907 ], [ %2915, %2912 ]
  %2920 = phi float [ %2911, %2907 ], [ %2916, %2912 ]
  %2921 = extractvalue %dx.types.CBufRet.f32 %2879, 2
  %2922 = fmul fast float %2921, %2918
  %2923 = extractvalue %dx.types.CBufRet.f32 %2879, 0
  %2924 = fsub fast float %2889, %2923
  %2925 = fsub fast float %2924, %2922
  %2926 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2925)  ; FMax(a,b)
  %2927 = fmul fast float %2926, %2919
  %2928 = call float @dx.op.binary.f32(i32 36, float %2920, float %2927)  ; FMin(a,b)
  %2929 = fmul fast float %2928, 0xBFF7154760000000
  %2930 = call float @dx.op.unary.f32(i32 21, float %2929)  ; Exp(value)
  %2931 = fadd fast float %2930, -1.000000e+00
  %2932 = fmul fast float %2931, %2212
  %2933 = fadd fast float %2932, 1.000000e+00
  %2934 = fmul fast float %2878, %2933
  br label %2935

; <label>:2935                                    ; preds = %2917, %2772
  %2936 = phi float [ %2934, %2917 ], [ %2773, %2772 ]
  %2937 = call float @dx.op.binary.f32(i32 36, float %2936, float %2936)  ; FMin(a,b)
  %2938 = call float @dx.op.binary.f32(i32 36, float %2936, float %2937)  ; FMin(a,b)
  %2939 = fcmp fast ogt float %2938, 0.000000e+00
  br i1 %2939, label %2940, label %3370, !dx.controlflow.hints !142

; <label>:2940                                    ; preds = %2935
  br i1 %248, label %2941, label %3343, !dx.controlflow.hints !143

; <label>:2941                                    ; preds = %2940
  %2942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.i32 %2942, 0
  %2944 = and i32 %2943, 64
  %2945 = icmp ne i32 %2944, 0
  %2946 = fsub fast float %199, %237
  %2947 = fcmp fast ogt float %2946, 0.000000e+00
  %2948 = xor i1 %2947, true
  %2949 = fmul fast float %2225, 5.120000e+02
  %2950 = fmul fast float %2226, 5.120000e+02
  %2951 = fmul fast float %2227, 5.120000e+02
  %2952 = fadd fast float %2951, %2217
  %2953 = fsub fast float %2218, %2952
  %2954 = fmul fast float %2953, 2.000000e+00
  %2955 = fadd fast float %2954, %2952
  %2956 = select i1 %2947, float %2955, float %2952
  %2957 = fsub fast float %2956, %2217
  %2958 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2950, float %2957, float %2949, float %2950, float %2957)  ; Dot3(ax,ay,az,bx,by,bz)
  %2959 = call float @dx.op.unary.f32(i32 25, float %2958)  ; Rsqrt(value)
  %2960 = fmul fast float %2959, %2949
  %2961 = fmul fast float %2959, %2950
  %2962 = fmul fast float %2959, %2957
  %2963 = fsub fast float %237, %199
  %2964 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2963)  ; Dot3(ax,ay,az,bx,by,bz)
  %2965 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2960, float %2961, float %2962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = fdiv fast float 1.000000e+00, %2965
  %2967 = fmul fast float %2966, %2964
  %2968 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2946, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2969 = fcmp fast ogt float %2968, 0.000000e+00
  %2970 = fcmp fast olt float %2968, 0.000000e+00
  %2971 = zext i1 %2969 to i32
  %2972 = zext i1 %2970 to i32
  %2973 = sub nsw i32 %2971, %2972
  %2974 = sitofp i32 %2973 to float
  %2975 = fsub fast float %2956, %2218
  %2976 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2950, float %2975, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2977 = fcmp fast ogt float %2976, 0.000000e+00
  %2978 = fcmp fast olt float %2976, 0.000000e+00
  %2979 = zext i1 %2977 to i32
  %2980 = zext i1 %2978 to i32
  %2981 = sub nsw i32 %2979, %2980
  %2982 = sitofp i32 %2981 to float
  %2983 = fcmp fast une float %2974, %2982
  br i1 %2983, label %2984, label %2994, !dx.controlflow.hints !144

; <label>:2984                                    ; preds = %2941
  %2985 = fmul fast float %2967, %2962
  %2986 = fmul fast float %2967, %2961
  %2987 = fmul fast float %2967, %2960
  %2988 = fmul fast float %2987, %2987
  %2989 = fmul fast float %2986, %2986
  %2990 = fadd fast float %2988, %2989
  %2991 = fmul fast float %2985, %2985
  %2992 = fadd fast float %2990, %2991
  %2993 = call float @dx.op.unary.f32(i32 24, float %2992)  ; Sqrt(value)
  br label %3004

; <label>:2994                                    ; preds = %2941
  %2995 = icmp slt i32 %2973, 0
  br i1 %2995, label %2996, label %3004, !dx.controlflow.hints !145

; <label>:2996                                    ; preds = %2994
  %2997 = fsub fast float %2217, %2956
  %2998 = fmul fast float %2949, %2949
  %2999 = fmul fast float %2950, %2950
  %3000 = fadd fast float %2998, %2999
  %3001 = fmul fast float %2997, %2997
  %3002 = fadd fast float %3000, %3001
  %3003 = call float @dx.op.unary.f32(i32 24, float %3002)  ; Sqrt(value)
  br label %3004

; <label>:3004                                    ; preds = %2996, %2994, %2984
  %3005 = phi float [ %2993, %2984 ], [ %3003, %2996 ], [ 0.000000e+00, %2994 ]
  %3006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %3007 = extractvalue %dx.types.CBufRet.i32 %3006, 1
  %3008 = icmp ne i32 %3007, 0
  %3009 = and i1 %3008, %2948
  %3010 = call float @dx.op.dot3.f32(i32 55, float %2960, float %2961, float %2962, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3011 = fmul fast float %3010, %3010
  %3012 = fsub fast float 1.000000e+00, %3011
  %3013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.f32 %3013, 0
  %3015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3016 = extractvalue %dx.types.CBufRet.f32 %3015, 0
  %3017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.f32 %3017, 0
  %3019 = extractvalue %dx.types.CBufRet.f32 %3013, 1
  %3020 = extractvalue %dx.types.CBufRet.f32 %3015, 1
  %3021 = extractvalue %dx.types.CBufRet.f32 %3017, 1
  %3022 = extractvalue %dx.types.CBufRet.f32 %3013, 3
  %3023 = extractvalue %dx.types.CBufRet.f32 %3015, 3
  %3024 = extractvalue %dx.types.CBufRet.f32 %3017, 3
  %3025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %3026 = extractvalue %dx.types.CBufRet.f32 %3025, 0
  %3027 = extractvalue %dx.types.CBufRet.f32 %3025, 1
  %3028 = extractvalue %dx.types.CBufRet.f32 %3025, 2
  %3029 = extractvalue %dx.types.CBufRet.f32 %3025, 3
  br i1 %3009, label %3030, label %3223, !dx.controlflow.hints !146

; <label>:3030                                    ; preds = %3004
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 0
  %3033 = fmul fast float %3032, %3032
  %3034 = fmul fast float %3033, %3012
  %3035 = fsub fast float 1.000000e+00, %3034
  %3036 = fcmp fast oge float %3035, 0.000000e+00
  %3037 = fmul fast float %3032, %2960
  %3038 = fmul fast float %3032, %2961
  %3039 = fmul fast float %3032, %2962
  %3040 = call float @dx.op.unary.f32(i32 24, float %3035)  ; Sqrt(value)
  %3041 = fmul fast float %3032, %3010
  %3042 = fsub fast float -0.000000e+00, %3040
  %3043 = fsub fast float %3042, %3041
  %3044 = fadd fast float %3043, %3039
  %3045 = select i1 %3036, float %3037, float 0.000000e+00
  %3046 = select i1 %3036, float %3038, float 0.000000e+00
  %3047 = select i1 %3036, float %3044, float 0.000000e+00
  %3048 = fmul fast float %3045, %3005
  %3049 = fmul fast float %3046, %3005
  %3050 = fmul fast float %3047, %3005
  %3051 = fadd fast float %197, %3048
  %3052 = fadd fast float %3051, %3022
  %3053 = fadd fast float %198, %3049
  %3054 = fadd fast float %3053, %3023
  %3055 = fadd fast float %199, %3050
  %3056 = fadd fast float %3055, %3024
  %3057 = fmul fast float %3052, %3014
  %3058 = call float @dx.op.tertiary.f32(i32 46, float %3054, float %3016, float %3057)  ; FMad(a,b,c)
  %3059 = call float @dx.op.tertiary.f32(i32 46, float %3056, float %3018, float %3058)  ; FMad(a,b,c)
  %3060 = fmul fast float %3052, %3019
  %3061 = call float @dx.op.tertiary.f32(i32 46, float %3054, float %3020, float %3060)  ; FMad(a,b,c)
  %3062 = call float @dx.op.tertiary.f32(i32 46, float %3056, float %3021, float %3061)  ; FMad(a,b,c)
  %3063 = fsub fast float %3059, %3022
  %3064 = fsub fast float %3063, %3026
  %3065 = fadd fast float %3064, %3028
  %3066 = fsub fast float %3062, %3023
  %3067 = fsub fast float %3066, %3027
  %3068 = fadd fast float %3067, %3028
  %3069 = fmul fast float %3065, %3029
  %3070 = fmul fast float %3068, %3029
  %3071 = call float @dx.op.unary.f32(i32 7, float %3069)  ; Saturate(value)
  %3072 = call float @dx.op.unary.f32(i32 7, float %3070)  ; Saturate(value)
  %3073 = fsub fast float 1.000000e+00, %3071
  %3074 = fsub fast float 1.000000e+00, %3072
  %3075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %41, float %3073, float %3074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3076 = extractvalue %dx.types.ResRet.f32 %3075, 0
  %3077 = fmul fast float %3076, 0x3FBC5ABC00000000
  %3078 = extractvalue %dx.types.CBufRet.f32 %3031, 1
  %3079 = fmul fast float %3078, %3078
  %3080 = fmul fast float %3079, %3012
  %3081 = fsub fast float 1.000000e+00, %3080
  %3082 = fcmp fast oge float %3081, 0.000000e+00
  %3083 = fmul fast float %3078, %2960
  %3084 = fmul fast float %3078, %2961
  %3085 = fmul fast float %3078, %2962
  %3086 = call float @dx.op.unary.f32(i32 24, float %3081)  ; Sqrt(value)
  %3087 = fmul fast float %3078, %3010
  %3088 = fsub fast float -0.000000e+00, %3086
  %3089 = fsub fast float %3088, %3087
  %3090 = fadd fast float %3089, %3085
  %3091 = select i1 %3082, float %3083, float 0.000000e+00
  %3092 = select i1 %3082, float %3084, float 0.000000e+00
  %3093 = select i1 %3082, float %3090, float 0.000000e+00
  %3094 = fmul fast float %3091, %3005
  %3095 = fmul fast float %3092, %3005
  %3096 = fmul fast float %3093, %3005
  %3097 = fadd fast float %197, %3094
  %3098 = fadd fast float %3097, %3022
  %3099 = fadd fast float %198, %3095
  %3100 = fadd fast float %3099, %3023
  %3101 = fadd fast float %199, %3096
  %3102 = fadd fast float %3101, %3024
  %3103 = fmul fast float %3098, %3014
  %3104 = call float @dx.op.tertiary.f32(i32 46, float %3100, float %3016, float %3103)  ; FMad(a,b,c)
  %3105 = call float @dx.op.tertiary.f32(i32 46, float %3102, float %3018, float %3104)  ; FMad(a,b,c)
  %3106 = fmul fast float %3098, %3019
  %3107 = call float @dx.op.tertiary.f32(i32 46, float %3100, float %3020, float %3106)  ; FMad(a,b,c)
  %3108 = call float @dx.op.tertiary.f32(i32 46, float %3102, float %3021, float %3107)  ; FMad(a,b,c)
  %3109 = fsub fast float %3105, %3022
  %3110 = fsub fast float %3109, %3026
  %3111 = fadd fast float %3110, %3028
  %3112 = fsub fast float %3108, %3023
  %3113 = fsub fast float %3112, %3027
  %3114 = fadd fast float %3113, %3028
  %3115 = fmul fast float %3111, %3029
  %3116 = fmul fast float %3114, %3029
  %3117 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3118 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3119 = fsub fast float 1.000000e+00, %3117
  %3120 = fsub fast float 1.000000e+00, %3118
  %3121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %41, float %3119, float %3120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3122 = extractvalue %dx.types.ResRet.f32 %3121, 0
  %3123 = fmul fast float %3122, 0x3F9E4BBD60000000
  %3124 = extractvalue %dx.types.CBufRet.f32 %3031, 2
  %3125 = fmul fast float %3124, %3124
  %3126 = fmul fast float %3125, %3012
  %3127 = fsub fast float 1.000000e+00, %3126
  %3128 = fcmp fast oge float %3127, 0.000000e+00
  %3129 = fmul fast float %3124, %2960
  %3130 = fmul fast float %3124, %2961
  %3131 = fmul fast float %3124, %2962
  %3132 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3133 = fmul fast float %3124, %3010
  %3134 = fsub fast float -0.000000e+00, %3132
  %3135 = fsub fast float %3134, %3133
  %3136 = fadd fast float %3135, %3131
  %3137 = select i1 %3128, float %3129, float 0.000000e+00
  %3138 = select i1 %3128, float %3130, float 0.000000e+00
  %3139 = select i1 %3128, float %3136, float 0.000000e+00
  %3140 = fmul fast float %3137, %3005
  %3141 = fmul fast float %3138, %3005
  %3142 = fmul fast float %3139, %3005
  %3143 = fadd fast float %197, %3140
  %3144 = fadd fast float %3143, %3022
  %3145 = fadd fast float %198, %3141
  %3146 = fadd fast float %3145, %3023
  %3147 = fadd fast float %199, %3142
  %3148 = fadd fast float %3147, %3024
  %3149 = fmul fast float %3144, %3014
  %3150 = call float @dx.op.tertiary.f32(i32 46, float %3146, float %3016, float %3149)  ; FMad(a,b,c)
  %3151 = call float @dx.op.tertiary.f32(i32 46, float %3148, float %3018, float %3150)  ; FMad(a,b,c)
  %3152 = fmul fast float %3144, %3019
  %3153 = call float @dx.op.tertiary.f32(i32 46, float %3146, float %3020, float %3152)  ; FMad(a,b,c)
  %3154 = call float @dx.op.tertiary.f32(i32 46, float %3148, float %3021, float %3153)  ; FMad(a,b,c)
  %3155 = fsub fast float %3151, %3022
  %3156 = fsub fast float %3155, %3026
  %3157 = fadd fast float %3156, %3028
  %3158 = fsub fast float %3154, %3023
  %3159 = fsub fast float %3158, %3027
  %3160 = fadd fast float %3159, %3028
  %3161 = fmul fast float %3157, %3029
  %3162 = fmul fast float %3160, %3029
  %3163 = call float @dx.op.unary.f32(i32 7, float %3161)  ; Saturate(value)
  %3164 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  %3165 = fsub fast float 1.000000e+00, %3163
  %3166 = fsub fast float 1.000000e+00, %3164
  %3167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %41, float %3165, float %3166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  %3169 = fmul fast float %3168, 0x3FDDEACB00000000
  %3170 = fadd fast float %3169, %3123
  %3171 = extractvalue %dx.types.CBufRet.f32 %3031, 3
  %3172 = fmul fast float %3171, %3171
  %3173 = fmul fast float %3172, %3012
  %3174 = fsub fast float 1.000000e+00, %3173
  %3175 = fcmp fast oge float %3174, 0.000000e+00
  %3176 = fmul fast float %3171, %2960
  %3177 = fmul fast float %3171, %2961
  %3178 = fmul fast float %3171, %2962
  %3179 = call float @dx.op.unary.f32(i32 24, float %3174)  ; Sqrt(value)
  %3180 = fmul fast float %3171, %3010
  %3181 = fsub fast float -0.000000e+00, %3179
  %3182 = fsub fast float %3181, %3180
  %3183 = fadd fast float %3182, %3178
  %3184 = select i1 %3175, float %3176, float 0.000000e+00
  %3185 = select i1 %3175, float %3177, float 0.000000e+00
  %3186 = select i1 %3175, float %3183, float 0.000000e+00
  %3187 = fmul fast float %3184, %3005
  %3188 = fmul fast float %3185, %3005
  %3189 = fmul fast float %3186, %3005
  %3190 = fadd fast float %197, %3187
  %3191 = fadd fast float %3190, %3022
  %3192 = fadd fast float %198, %3188
  %3193 = fadd fast float %3192, %3023
  %3194 = fadd fast float %199, %3189
  %3195 = fadd fast float %3194, %3024
  %3196 = fmul fast float %3191, %3014
  %3197 = call float @dx.op.tertiary.f32(i32 46, float %3193, float %3016, float %3196)  ; FMad(a,b,c)
  %3198 = call float @dx.op.tertiary.f32(i32 46, float %3195, float %3018, float %3197)  ; FMad(a,b,c)
  %3199 = fmul fast float %3191, %3019
  %3200 = call float @dx.op.tertiary.f32(i32 46, float %3193, float %3020, float %3199)  ; FMad(a,b,c)
  %3201 = call float @dx.op.tertiary.f32(i32 46, float %3195, float %3021, float %3200)  ; FMad(a,b,c)
  %3202 = fsub fast float %3198, %3022
  %3203 = fsub fast float %3202, %3026
  %3204 = fadd fast float %3203, %3028
  %3205 = fsub fast float %3201, %3023
  %3206 = fsub fast float %3205, %3027
  %3207 = fadd fast float %3206, %3028
  %3208 = fmul fast float %3204, %3029
  %3209 = fmul fast float %3207, %3029
  %3210 = call float @dx.op.unary.f32(i32 7, float %3208)  ; Saturate(value)
  %3211 = call float @dx.op.unary.f32(i32 7, float %3209)  ; Saturate(value)
  %3212 = fsub fast float 1.000000e+00, %3210
  %3213 = fsub fast float 1.000000e+00, %3211
  %3214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %41, float %3212, float %3213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3215 = extractvalue %dx.types.ResRet.f32 %3214, 0
  %3216 = fmul fast float %3215, 0x3FE0183CA0000000
  %3217 = fmul fast float %3215, 0x3FB51033E0000000
  %3218 = fadd fast float %3170, %3216
  %3219 = fadd fast float %3168, %3122
  %3220 = fmul fast float %3219, 0x3FD9D2A200000000
  %3221 = fadd fast float %3217, %3077
  %3222 = fadd fast float %3221, %3220
  br label %3269

; <label>:3223                                    ; preds = %3004
  %3224 = fmul fast float %3012, 0x3FE2024E20000000
  %3225 = fsub fast float 1.000000e+00, %3224
  %3226 = fcmp fast oge float %3225, 0.000000e+00
  %3227 = fmul fast float %2960, 0x3FE8018960000000
  %3228 = fmul fast float %2961, 0x3FE8018960000000
  %3229 = fmul fast float %2962, 0x3FE8018960000000
  %3230 = call float @dx.op.unary.f32(i32 24, float %3225)  ; Sqrt(value)
  %3231 = fmul fast float %3010, 0x3FE8018960000000
  %3232 = fsub fast float %3229, %3230
  %3233 = fsub fast float %3232, %3231
  %3234 = select i1 %3226, float %3227, float 0.000000e+00
  %3235 = select i1 %3226, float %3228, float 0.000000e+00
  %3236 = select i1 %3226, float %3233, float 0.000000e+00
  %3237 = select i1 %2947, float %2960, float %3234
  %3238 = select i1 %2947, float %2961, float %3235
  %3239 = select i1 %2947, float %2962, float %3236
  %3240 = fmul fast float %3237, %3005
  %3241 = fmul fast float %3238, %3005
  %3242 = fmul fast float %3239, %3005
  %3243 = fadd fast float %197, %3240
  %3244 = fadd fast float %3243, %3022
  %3245 = fadd fast float %198, %3241
  %3246 = fadd fast float %3245, %3023
  %3247 = fadd fast float %199, %3242
  %3248 = fadd fast float %3247, %3024
  %3249 = fmul fast float %3244, %3014
  %3250 = call float @dx.op.tertiary.f32(i32 46, float %3246, float %3016, float %3249)  ; FMad(a,b,c)
  %3251 = call float @dx.op.tertiary.f32(i32 46, float %3248, float %3018, float %3250)  ; FMad(a,b,c)
  %3252 = fmul fast float %3244, %3019
  %3253 = call float @dx.op.tertiary.f32(i32 46, float %3246, float %3020, float %3252)  ; FMad(a,b,c)
  %3254 = call float @dx.op.tertiary.f32(i32 46, float %3248, float %3021, float %3253)  ; FMad(a,b,c)
  %3255 = fsub fast float %3251, %3022
  %3256 = fsub fast float %3255, %3026
  %3257 = fadd fast float %3256, %3028
  %3258 = fsub fast float %3254, %3023
  %3259 = fsub fast float %3258, %3027
  %3260 = fadd fast float %3259, %3028
  %3261 = fmul fast float %3257, %3029
  %3262 = fmul fast float %3260, %3029
  %3263 = call float @dx.op.unary.f32(i32 7, float %3261)  ; Saturate(value)
  %3264 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  %3265 = fsub fast float 1.000000e+00, %3263
  %3266 = fsub fast float 1.000000e+00, %3264
  %3267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %41, float %3265, float %3266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  br label %3269

; <label>:3269                                    ; preds = %3223, %3030
  %3270 = phi float [ %3268, %3223 ], [ %3218, %3030 ]
  %3271 = phi float [ %3268, %3223 ], [ %3222, %3030 ]
  %3272 = phi float [ %3268, %3223 ], [ %3076, %3030 ]
  %3273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3274 = extractvalue %dx.types.CBufRet.f32 %3273, 0
  %3275 = call float @dx.op.unary.f32(i32 6, float %3274)  ; FAbs(value)
  %3276 = fmul fast float %3005, %3005
  %3277 = fadd fast float %3276, 1.000000e+00
  %3278 = fdiv fast float %3275, %3277
  %3279 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3280 = fsub fast float -0.000000e+00, %3005
  %3281 = select i1 %2947, float -0.000000e+00, float %3280
  %3282 = fmul fast float %1221, 0x3FF7154760000000
  %3283 = fmul fast float %3282, %3281
  %3284 = fmul fast float %1222, 0x3FF7154760000000
  %3285 = fmul fast float %3284, %3281
  %3286 = fmul fast float %1223, 0x3FF7154760000000
  %3287 = fmul fast float %3286, %3281
  %3288 = call float @dx.op.unary.f32(i32 21, float %3283)  ; Exp(value)
  %3289 = call float @dx.op.unary.f32(i32 21, float %3285)  ; Exp(value)
  %3290 = call float @dx.op.unary.f32(i32 21, float %3287)  ; Exp(value)
  %3291 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  %3292 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  %3293 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  %3294 = call float @dx.op.unary.f32(i32 6, float %3010)  ; FAbs(value)
  %3295 = fsub fast float 1.000000e+00, %3294
  %3296 = bitcast float %3295 to i32
  %3297 = sitofp i32 %3296 to float
  %3298 = fptosi float %3297 to i32
  %3299 = bitcast i32 %3298 to float
  %3300 = fmul fast float %3299, 0x3FEF333340000000
  %3301 = fadd fast float %3300, 0x3F999999A0000000
  %3302 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  %3303 = fsub fast float 1.000000e+00, %3302
  %3304 = fadd fast float %3270, 1.000000e+00
  %3305 = fadd fast float %3271, 1.000000e+00
  %3306 = fadd fast float %3272, 1.000000e+00
  %3307 = fmul fast float %3291, %3304
  %3308 = fmul fast float %3292, %3305
  %3309 = fmul fast float %3293, %3306
  %3310 = fmul fast float %3307, %3303
  %3311 = fmul fast float %3308, %3303
  %3312 = fmul fast float %3309, %3303
  %3313 = fmul fast float %3279, %3304
  %3314 = fmul fast float %3313, %3291
  %3315 = fmul fast float %3314, %3302
  %3316 = fmul fast float %3279, %3305
  %3317 = fmul fast float %3316, %3292
  %3318 = fmul fast float %3317, %3302
  %3319 = fmul fast float %3279, %3306
  %3320 = fmul fast float %3319, %3293
  %3321 = fmul fast float %3320, %3302
  %3322 = fadd fast float %3315, %3291
  %3323 = fadd fast float %3318, %3292
  %3324 = fadd fast float %3321, %3293
  %3325 = call float @dx.op.unary.f32(i32 6, float %2946)  ; FAbs(value)
  %3326 = call float @dx.op.unary.f32(i32 7, float %3325)  ; Saturate(value)
  %3327 = select i1 %2947, float %3322, float %3310
  %3328 = select i1 %2947, float %3323, float %3311
  %3329 = select i1 %2947, float %3324, float %3312
  %3330 = select i1 %2945, float %3326, float 0.000000e+00
  %3331 = fsub fast float %3327, %3291
  %3332 = fsub fast float %3328, %3292
  %3333 = fsub fast float %3329, %3293
  %3334 = fmul fast float %3331, %3330
  %3335 = fmul fast float %3332, %3330
  %3336 = fmul fast float %3333, %3330
  %3337 = fadd fast float %3334, %3291
  %3338 = fadd fast float %3335, %3292
  %3339 = fadd fast float %3336, %3293
  %3340 = fmul fast float %3337, %2229
  %3341 = fmul fast float %3338, %2230
  %3342 = fmul fast float %3339, %2231
  br label %3343

; <label>:3343                                    ; preds = %3269, %2940
  %3344 = phi float [ %3340, %3269 ], [ %2229, %2940 ]
  %3345 = phi float [ %3341, %3269 ], [ %2230, %2940 ]
  %3346 = phi float [ %3342, %3269 ], [ %2231, %2940 ]
  %3347 = call float @dx.op.dot3.f32(i32 55, float %2225, float %2226, float %2227, float %210, float %211, float %212)  ; Dot3(ax,ay,az,bx,by,bz)
  %3348 = fcmp fast ogt float %2206, 0.000000e+00
  %3349 = select i1 %3348, float 1.000000e+00, float -1.000000e+00
  %3350 = fmul fast float %125, 7.812500e-03
  %3351 = fmul fast float %125, 3.125000e-02
  %3352 = fadd fast float %3351, -3.125000e-02
  %3353 = fmul fast float %3349, 5.000000e-01
  %3354 = fmul fast float %3353, %3347
  %3355 = fmul fast float %3349, %2206
  %3356 = fadd fast float %3350, 4.921875e-01
  %3357 = fadd fast float %3356, %3354
  %3358 = fadd fast float %3350, 0x3FB25F3060000000
  %3359 = fadd fast float %3352, %3355
  %3360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %3357, float %3358, float %3359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.f32 %3362, 0
  %3364 = fmul fast float %2936, 0x400921FB60000000
  %3365 = fmul fast float %3364, %3361
  %3366 = fmul fast float %3365, %3363
  %3367 = fmul fast float %3366, %3344
  %3368 = fmul fast float %3366, %3345
  %3369 = fmul fast float %3366, %3346
  br label %3370

; <label>:3370                                    ; preds = %3343, %2935, %2201
  %3371 = phi float [ %3367, %3343 ], [ 0.000000e+00, %2201 ], [ 0.000000e+00, %2935 ]
  %3372 = phi float [ %3368, %3343 ], [ 0.000000e+00, %2201 ], [ 0.000000e+00, %2935 ]
  %3373 = phi float [ %3369, %3343 ], [ 0.000000e+00, %2201 ], [ 0.000000e+00, %2935 ]
  %3374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %39, float %146, float %147, float %148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3375 = extractvalue %dx.types.ResRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.ResRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.ResRet.f32 %3374, 2
  %3378 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3375)  ; IsNaN(value)
  %3379 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3376)  ; IsNaN(value)
  %3380 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3377)  ; IsNaN(value)
  %3381 = or i1 %3378, %3379
  %3382 = or i1 %3381, %3380
  %3383 = select i1 %3382, float 0.000000e+00, float %3375
  %3384 = select i1 %3382, float 0.000000e+00, float %3376
  %3385 = select i1 %3382, float 0.000000e+00, float %3377
  %3386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3387 = extractvalue %dx.types.CBufRet.f32 %3386, 1
  %3388 = fmul fast float %3383, %3387
  %3389 = fmul fast float %3384, %3387
  %3390 = fmul fast float %3385, %3387
  %3391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3392 = extractvalue %dx.types.CBufRet.f32 %3391, 3
  %3393 = fmul fast float %3388, %3392
  %3394 = fmul fast float %3389, %3392
  %3395 = fmul fast float %3390, %3392
  %3396 = fadd fast float %3393, %3371
  %3397 = fadd fast float %3394, %3372
  %3398 = fadd fast float %3395, %3373
  br label %3399

; <label>:3399                                    ; preds = %3370, %2194
  %3400 = phi float [ %2203, %3370 ], [ %2195, %2194 ]
  %3401 = phi float [ %2204, %3370 ], [ %2196, %2194 ]
  %3402 = phi float [ %2205, %3370 ], [ %2197, %2194 ]
  %3403 = phi float [ %3396, %3370 ], [ 0.000000e+00, %2194 ]
  %3404 = phi float [ %3397, %3370 ], [ 0.000000e+00, %2194 ]
  %3405 = phi float [ %3398, %3370 ], [ 0.000000e+00, %2194 ]
  %3406 = fmul fast float %3400, %2199
  %3407 = fmul fast float %3401, %2199
  %3408 = fmul fast float %3402, %2199
  %3409 = select i1 %248, float %1221, float %2199
  %3410 = select i1 %248, float %1222, float %2199
  %3411 = select i1 %248, float %1223, float %2199
  %3412 = fmul fast float %3406, %3403
  %3413 = fmul fast float %3407, %3404
  %3414 = fmul fast float %3408, %3405
  br i1 %215, label %4194, label %3415, !dx.controlflow.hints !147

; <label>:3415                                    ; preds = %3399
  %3416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.f32 %3416, 0
  %3418 = extractvalue %dx.types.CBufRet.f32 %3416, 1
  %3419 = extractvalue %dx.types.CBufRet.f32 %3416, 2
  %3420 = extractvalue %dx.types.CBufRet.f32 %3416, 3
  %3421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3422 = extractvalue %dx.types.CBufRet.f32 %3421, 0
  %3423 = extractvalue %dx.types.CBufRet.f32 %3421, 1
  %3424 = extractvalue %dx.types.CBufRet.f32 %3421, 2
  %3425 = extractvalue %dx.types.CBufRet.f32 %3421, 3
  %3426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3427 = extractvalue %dx.types.CBufRet.f32 %3426, 0
  %3428 = extractvalue %dx.types.CBufRet.f32 %3426, 1
  %3429 = extractvalue %dx.types.CBufRet.f32 %3426, 2
  %3430 = extractvalue %dx.types.CBufRet.f32 %3426, 3
  %3431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3432 = extractvalue %dx.types.CBufRet.f32 %3431, 0
  %3433 = extractvalue %dx.types.CBufRet.f32 %3431, 1
  %3434 = extractvalue %dx.types.CBufRet.f32 %3431, 2
  %3435 = extractvalue %dx.types.CBufRet.f32 %3431, 3
  %3436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3437 = extractvalue %dx.types.CBufRet.f32 %3436, 3
  %3438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.f32 %3438, 3
  %3440 = extractvalue %dx.types.CBufRet.f32 %3438, 0
  %3441 = extractvalue %dx.types.CBufRet.f32 %3438, 1
  %3442 = extractvalue %dx.types.CBufRet.f32 %3438, 2
  %3443 = fcmp fast olt float %3442, -5.000000e-01
  %3444 = fmul fast float %209, %208
  %3445 = fadd fast float %3444, %3420
  %3446 = call float @dx.op.dot3.f32(i32 55, float %210, float %211, float %212, float %3417, float %3418, float %3419)  ; Dot3(ax,ay,az,bx,by,bz)
  %3447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3448 = extractvalue %dx.types.CBufRet.i32 %3447, 1
  %3449 = and i32 %3448, 1
  %3450 = icmp ne i32 %3449, 0
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 2
  %3453 = fcmp fast ogt float %3452, 0.000000e+00
  %3454 = and i1 %3450, %3453
  br i1 %3454, label %3455, label %3861, !dx.controlflow.hints !148

; <label>:3455                                    ; preds = %3415
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 3
  %3458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3459 = extractvalue %dx.types.CBufRet.f32 %3458, 2
  %3460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.f32 %3460, 2
  %3462 = fsub fast float %3459, %3461
  %3463 = and i32 %3448, 2
  %3464 = extractvalue %dx.types.CBufRet.i32 %3447, 0
  %3465 = call i32 @dx.op.binary.i32(i32 40, i32 %3464, i32 3)  ; UMin(a,b)
  %3466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3467 = extractvalue %dx.types.CBufRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.CBufRet.f32 %3466, 1
  %3469 = extractvalue %dx.types.CBufRet.f32 %3460, 0
  %3470 = extractvalue %dx.types.CBufRet.f32 %3460, 1
  %3471 = fsub fast float %3467, %3469
  %3472 = fsub fast float %3468, %3470
  %3473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3474 = extractvalue %dx.types.CBufRet.f32 %3473, 0
  %3475 = fcmp fast ogt float %3474, 0.000000e+00
  %3476 = fsub fast float -0.000000e+00, %3471
  %3477 = fsub fast float -0.000000e+00, %3472
  %3478 = call float @dx.op.dot2.f32(i32 54, float %210, float %211, float %210, float %211)  ; Dot2(ax,ay,bx,by)
  %3479 = call float @dx.op.dot2.f32(i32 54, float %210, float %211, float %3476, float %3477)  ; Dot2(ax,ay,bx,by)
  %3480 = fmul fast float %3479, 2.000000e+00
  %3481 = call float @dx.op.dot2.f32(i32 54, float %3476, float %3477, float %3476, float %3477)  ; Dot2(ax,ay,bx,by)
  %3482 = fmul fast float %3474, %3474
  %3483 = fsub fast float %3481, %3482
  %3484 = fmul fast float %3480, %3480
  %3485 = fmul fast float %3478, 4.000000e+00
  %3486 = fmul fast float %3485, %3483
  %3487 = fsub fast float %3484, %3486
  %3488 = fcmp fast ogt float %3487, 0.000000e+00
  br i1 %3488, label %3489, label %3504, !dx.controlflow.hints !149

; <label>:3489                                    ; preds = %3455
  %3490 = fcmp fast ogt float %3480, 0.000000e+00
  %3491 = call float @dx.op.unary.f32(i32 24, float %3487)  ; Sqrt(value)
  %3492 = fsub fast float -0.000000e+00, %3491
  %3493 = select i1 %3490, float %3491, float %3492
  %3494 = fadd fast float %3493, %3480
  %3495 = fmul float %3494, -5.000000e-01
  %3496 = fdiv fast float %3495, %3478
  %3497 = call float @dx.op.binary.f32(i32 35, float %3496, float 0.000000e+00)  ; FMax(a,b)
  %3498 = call float @dx.op.binary.f32(i32 36, float %3444, float %3497)  ; FMin(a,b)
  %3499 = fdiv fast float %3483, %3495
  %3500 = call float @dx.op.binary.f32(i32 35, float %3499, float 0.000000e+00)  ; FMax(a,b)
  %3501 = call float @dx.op.binary.f32(i32 36, float %3444, float %3500)  ; FMin(a,b)
  %3502 = call float @dx.op.binary.f32(i32 36, float %3498, float %3501)  ; FMin(a,b)
  %3503 = call float @dx.op.binary.f32(i32 35, float %3498, float %3501)  ; FMax(a,b)
  br label %3504

; <label>:3504                                    ; preds = %3489, %3455
  %3505 = phi float [ %3503, %3489 ], [ -1.000000e+00, %3455 ]
  %3506 = phi float [ %3502, %3489 ], [ -1.000000e+00, %3455 ]
  %3507 = phi i1 [ true, %3489 ], [ false, %3455 ]
  %3508 = and i1 %3475, %3507
  br i1 %3508, label %3509, label %3511, !dx.controlflow.hints !150

; <label>:3509                                    ; preds = %3504
  %3510 = fcmp fast oeq float %3506, %3505
  br i1 %3510, label %3814, label %3512, !dx.controlflow.hints !151

; <label>:3511                                    ; preds = %3504
  br i1 %3475, label %3814, label %3512, !dx.controlflow.hints !152

; <label>:3512                                    ; preds = %3511, %3509
  %3513 = phi float [ %3444, %3511 ], [ %3505, %3509 ]
  %3514 = phi float [ 0.000000e+00, %3511 ], [ %3506, %3509 ]
  %3515 = icmp ne i32 %3463, 0
  %3516 = fmul fast float %3513, %212
  %3517 = fadd fast float %3516, %3457
  %3518 = fmul fast float %3517, %3513
  %3519 = select i1 %3515, float 0.000000e+00, float %3518
  %3520 = fcmp fast oeq float %212, 0.000000e+00
  %3521 = fdiv fast float %3462, %212
  %3522 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3521)  ; FMax(a,b)
  %3523 = select i1 %3520, float %3513, float %3522
  %3524 = call float @dx.op.binary.f32(i32 36, float %3513, float %3523)  ; FMin(a,b)
  %3525 = fcmp fast ogt float %212, 0.000000e+00
  %3526 = fcmp fast olt float %3462, 0.000000e+00
  br i1 %3525, label %3527, label %3584, !dx.controlflow.hints !153

; <label>:3527                                    ; preds = %3512
  %3528 = icmp eq i32 %3463, 0
  br i1 %3526, label %3529, label %3573, !dx.controlflow.hints !154

; <label>:3529                                    ; preds = %3527
  %3530 = select i1 %3528, float %3513, float 0.000000e+00
  %3531 = fsub fast float -0.000000e+00, %3530
  %3532 = call float @dx.op.unary.f32(i32 6, float %3531)  ; FAbs(value)
  %3533 = fmul fast float %3530, %212
  %3534 = fadd fast float %3533, %3457
  %3535 = fmul fast float %3532, %3534
  %3536 = fsub fast float %3519, %3535
  %3537 = fsub fast float %3513, %3532
  %3538 = select i1 %3528, float %3537, float 0.000000e+00
  %3539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3540 = extractvalue %dx.types.CBufRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.CBufRet.f32 %3539, 1
  %3542 = extractvalue %dx.types.CBufRet.f32 %3539, 2
  %3543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3544 = extractvalue %dx.types.CBufRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.CBufRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.CBufRet.f32 %3543, 2
  %3547 = extractvalue %dx.types.CBufRet.f32 %3543, 3
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 3
  %3550 = call float @dx.op.binary.f32(i32 36, float %3536, float %3549)  ; FMin(a,b)
  %3551 = fmul fast float %3547, %3538
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = fsub fast float %3544, %3540
  %3554 = fsub fast float %3545, %3541
  %3555 = fsub fast float %3546, %3542
  %3556 = fmul fast float %3552, %3553
  %3557 = fmul fast float %3552, %3554
  %3558 = fmul fast float %3552, %3555
  %3559 = fadd fast float %3556, %3540
  %3560 = fadd fast float %3557, %3541
  %3561 = fadd fast float %3558, %3542
  %3562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3563 = extractvalue %dx.types.CBufRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.CBufRet.f32 %3562, 1
  %3565 = fadd fast float %3564, %3563
  %3566 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3562, 2
  %3568 = extractvalue %dx.types.CBufRet.f32 %3562, 3
  %3569 = fadd fast float %3568, %3567
  %3570 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3571 = fmul fast float %3566, %3550
  %3572 = fmul fast float %3571, %3570
  br label %3814

; <label>:3573                                    ; preds = %3527
  br i1 %3528, label %3574, label %3595, !dx.controlflow.hints !155

; <label>:3574                                    ; preds = %3573
  %3575 = call float @dx.op.binary.f32(i32 36, float %3524, float %3514)  ; FMin(a,b)
  %3576 = fsub fast float %3524, %3575
  %3577 = fsub fast float %3576, %3513
  %3578 = call float @dx.op.unary.f32(i32 6, float %3577)  ; FAbs(value)
  %3579 = fadd fast float %3576, %3513
  %3580 = fmul fast float %3579, %212
  %3581 = fadd fast float %3580, %3457
  %3582 = fmul fast float %3581, %3578
  %3583 = fsub fast float %3519, %3582
  br label %3595

; <label>:3584                                    ; preds = %3512
  br i1 %3526, label %3585, label %3595, !dx.controlflow.hints !156

; <label>:3585                                    ; preds = %3584
  %3586 = call float @dx.op.binary.f32(i32 35, float %3514, float %3524)  ; FMax(a,b)
  %3587 = icmp eq i32 %3463, 0
  %3588 = select i1 %3587, float %3524, float 0.000000e+00
  %3589 = fsub fast float -0.000000e+00, %3588
  %3590 = call float @dx.op.unary.f32(i32 6, float %3589)  ; FAbs(value)
  %3591 = fmul fast float %3588, %212
  %3592 = fadd fast float %3591, %3457
  %3593 = fmul fast float %3590, %3592
  %3594 = fsub fast float %3519, %3593
  br label %3595

; <label>:3595                                    ; preds = %3585, %3584, %3574, %3573
  %3596 = phi float [ %3514, %3573 ], [ %3514, %3574 ], [ %3586, %3585 ], [ %3514, %3584 ]
  %3597 = phi float [ 0.000000e+00, %3573 ], [ %3578, %3574 ], [ %3590, %3585 ], [ 0.000000e+00, %3584 ]
  %3598 = phi float [ %3519, %3573 ], [ %3583, %3574 ], [ %3594, %3585 ], [ %3519, %3584 ]
  %3599 = phi float [ %3524, %3573 ], [ %3524, %3574 ], [ %3513, %3585 ], [ %3513, %3584 ]
  %3600 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 0
  store float -1.000000e+00, float* %3600, align 4, !tbaa !61, !noalias !157
  %3601 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 1
  store float -1.000000e+00, float* %3601, align 4, !tbaa !61, !noalias !157
  %3602 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 2
  store float -1.000000e+00, float* %3602, align 4, !tbaa !61, !noalias !157
  %3603 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 0
  store float -1.000000e+00, float* %3603, align 4, !tbaa !61, !noalias !157
  %3604 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 1
  store float -1.000000e+00, float* %3604, align 4, !tbaa !61, !noalias !157
  %3605 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 2
  store float -1.000000e+00, float* %3605, align 4, !tbaa !61, !noalias !157
  %3606 = icmp sgt i32 %3465, 0
  br i1 %3606, label %3607, label %3668

; <label>:3607                                    ; preds = %3595
  br label %3608

; <label>:3608                                    ; preds = %3657, %3607
  %3609 = phi i32 [ %3658, %3657 ], [ 0, %3607 ]
  %3610 = phi i32 [ %3659, %3657 ], [ 0, %3607 ]
  %3611 = add nuw i32 %3610, 171
  %3612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %3611)  ; CBufferLoadLegacy(handle,regIndex)
  %3613 = extractvalue %dx.types.CBufRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.CBufRet.f32 %3612, 1
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.CBufRet.f32 %3615, 1
  %3618 = fsub fast float %3613, %3616
  %3619 = fsub fast float %3614, %3617
  %3620 = extractvalue %dx.types.CBufRet.f32 %3612, 2
  %3621 = fsub fast float -0.000000e+00, %3618
  %3622 = fsub fast float -0.000000e+00, %3619
  %3623 = call float @dx.op.dot2.f32(i32 54, float %210, float %211, float %3621, float %3622)  ; Dot2(ax,ay,bx,by)
  %3624 = fmul fast float %3623, 2.000000e+00
  %3625 = call float @dx.op.dot2.f32(i32 54, float %3621, float %3622, float %3621, float %3622)  ; Dot2(ax,ay,bx,by)
  %3626 = fmul fast float %3620, %3620
  %3627 = fsub fast float %3625, %3626
  %3628 = fmul fast float %3624, %3624
  %3629 = fmul fast float %3485, %3627
  %3630 = fsub fast float %3628, %3629
  %3631 = fcmp fast ogt float %3630, 0.000000e+00
  br i1 %3631, label %3632, label %3647, !dx.controlflow.hints !149

; <label>:3632                                    ; preds = %3608
  %3633 = fcmp fast ogt float %3624, 0.000000e+00
  %3634 = call float @dx.op.unary.f32(i32 24, float %3630)  ; Sqrt(value)
  %3635 = fsub fast float -0.000000e+00, %3634
  %3636 = select i1 %3633, float %3634, float %3635
  %3637 = fadd fast float %3636, %3624
  %3638 = fmul float %3637, -5.000000e-01
  %3639 = fdiv fast float %3638, %3478
  %3640 = call float @dx.op.binary.f32(i32 35, float %3639, float 0.000000e+00)  ; FMax(a,b)
  %3641 = call float @dx.op.binary.f32(i32 36, float %3513, float %3640)  ; FMin(a,b)
  %3642 = fdiv fast float %3627, %3638
  %3643 = call float @dx.op.binary.f32(i32 35, float %3642, float 0.000000e+00)  ; FMax(a,b)
  %3644 = call float @dx.op.binary.f32(i32 36, float %3513, float %3643)  ; FMin(a,b)
  %3645 = call float @dx.op.binary.f32(i32 36, float %3641, float %3644)  ; FMin(a,b)
  %3646 = call float @dx.op.binary.f32(i32 35, float %3641, float %3644)  ; FMax(a,b)
  br label %3647

; <label>:3647                                    ; preds = %3632, %3608
  %3648 = phi float [ %3646, %3632 ], [ -1.000000e+00, %3608 ]
  %3649 = phi float [ %3645, %3632 ], [ -1.000000e+00, %3608 ]
  %3650 = phi i1 [ true, %3632 ], [ false, %3608 ]
  br i1 %3650, label %3651, label %3657, !dx.controlflow.hints !163

; <label>:3651                                    ; preds = %3647
  %3652 = call float @dx.op.binary.f32(i32 35, float %3596, float %3649)  ; FMax(a,b)
  %3653 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 %3610
  store float %3652, float* %3653, align 4, !tbaa !61, !noalias !157
  %3654 = call float @dx.op.binary.f32(i32 35, float %3596, float %3648)  ; FMax(a,b)
  %3655 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 %3610
  store float %3654, float* %3655, align 4, !tbaa !61, !noalias !157
  %3656 = add nsw i32 %3609, 1
  br label %3657

; <label>:3657                                    ; preds = %3651, %3647
  %3658 = phi i32 [ %3656, %3651 ], [ %3609, %3647 ]
  %3659 = add nuw nsw i32 %3610, 1
  %3660 = icmp eq i32 %3659, %3465
  br i1 %3660, label %3661, label %3608

; <label>:3661                                    ; preds = %3657
  %3662 = load float, float* %3602, align 4, !tbaa !61, !alias.scope !164, !noalias !167
  %3663 = load float, float* %3601, align 4, !tbaa !61, !alias.scope !170, !noalias !171
  %3664 = load float, float* %3600, align 4, !tbaa !61, !alias.scope !172, !noalias !173
  %3665 = load float, float* %3605, align 4, !tbaa !61, !alias.scope !174, !noalias !177
  %3666 = load float, float* %3604, align 4, !tbaa !61, !alias.scope !180, !noalias !181
  %3667 = load float, float* %3603, align 4, !tbaa !61, !alias.scope !182, !noalias !183
  br label %3668

; <label>:3668                                    ; preds = %3661, %3595
  %3669 = phi float [ -1.000000e+00, %3595 ], [ %3667, %3661 ]
  %3670 = phi float [ -1.000000e+00, %3595 ], [ %3666, %3661 ]
  %3671 = phi float [ -1.000000e+00, %3595 ], [ %3665, %3661 ]
  %3672 = phi float [ -1.000000e+00, %3595 ], [ %3664, %3661 ]
  %3673 = phi float [ -1.000000e+00, %3595 ], [ %3663, %3661 ]
  %3674 = phi float [ -1.000000e+00, %3595 ], [ %3662, %3661 ]
  %3675 = phi i32 [ 0, %3595 ], [ %3658, %3661 ]
  %3676 = call float @dx.op.binary.f32(i32 36, float %3673, float %3674)  ; FMin(a,b)
  %3677 = call float @dx.op.binary.f32(i32 36, float %3672, float %3676)  ; FMin(a,b)
  %3678 = call float @dx.op.binary.f32(i32 35, float %3672, float %3673)  ; FMax(a,b)
  %3679 = call float @dx.op.binary.f32(i32 36, float %3678, float %3674)  ; FMin(a,b)
  %3680 = call float @dx.op.binary.f32(i32 36, float %3672, float %3673)  ; FMin(a,b)
  %3681 = call float @dx.op.binary.f32(i32 35, float %3680, float %3679)  ; FMax(a,b)
  %3682 = call float @dx.op.binary.f32(i32 35, float %3673, float %3674)  ; FMax(a,b)
  %3683 = call float @dx.op.binary.f32(i32 35, float %3672, float %3682)  ; FMax(a,b)
  store float %3677, float* %3600, align 4, !tbaa !61, !alias.scope !172, !noalias !173
  store float %3681, float* %3601, align 4, !tbaa !61, !alias.scope !170, !noalias !171
  store float %3683, float* %3602, align 4, !tbaa !61, !alias.scope !164, !noalias !167
  %3684 = call float @dx.op.binary.f32(i32 36, float %3670, float %3671)  ; FMin(a,b)
  %3685 = call float @dx.op.binary.f32(i32 36, float %3669, float %3684)  ; FMin(a,b)
  %3686 = call float @dx.op.binary.f32(i32 35, float %3669, float %3670)  ; FMax(a,b)
  %3687 = call float @dx.op.binary.f32(i32 36, float %3686, float %3671)  ; FMin(a,b)
  %3688 = call float @dx.op.binary.f32(i32 36, float %3669, float %3670)  ; FMin(a,b)
  %3689 = call float @dx.op.binary.f32(i32 35, float %3688, float %3687)  ; FMax(a,b)
  %3690 = call float @dx.op.binary.f32(i32 35, float %3670, float %3671)  ; FMax(a,b)
  %3691 = call float @dx.op.binary.f32(i32 35, float %3669, float %3690)  ; FMax(a,b)
  store float %3685, float* %3603, align 4, !tbaa !61, !alias.scope !182, !noalias !183
  store float %3689, float* %3604, align 4, !tbaa !61, !alias.scope !180, !noalias !181
  store float %3691, float* %3605, align 4, !tbaa !61, !alias.scope !174, !noalias !177
  %3692 = sub nsw i32 3, %3675
  %3693 = icmp sgt i32 %3692, 2
  br i1 %3693, label %3694, label %3732, !dx.controlflow.hints !184

; <label>:3694                                    ; preds = %3668
  %3695 = icmp eq i32 %3463, 0
  %3696 = fsub fast float %3513, %3597
  %3697 = select i1 %3695, float %3696, float %3597
  %3698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.f32 %3698, 0
  %3700 = extractvalue %dx.types.CBufRet.f32 %3698, 1
  %3701 = extractvalue %dx.types.CBufRet.f32 %3698, 2
  %3702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3703 = extractvalue %dx.types.CBufRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.CBufRet.f32 %3702, 1
  %3705 = extractvalue %dx.types.CBufRet.f32 %3702, 2
  %3706 = extractvalue %dx.types.CBufRet.f32 %3702, 3
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 3
  %3709 = call float @dx.op.binary.f32(i32 36, float %3598, float %3708)  ; FMin(a,b)
  %3710 = fmul fast float %3706, %3697
  %3711 = call float @dx.op.unary.f32(i32 7, float %3710)  ; Saturate(value)
  %3712 = fsub fast float %3703, %3699
  %3713 = fsub fast float %3704, %3700
  %3714 = fsub fast float %3705, %3701
  %3715 = fmul fast float %3711, %3712
  %3716 = fmul fast float %3711, %3713
  %3717 = fmul fast float %3711, %3714
  %3718 = fadd fast float %3715, %3699
  %3719 = fadd fast float %3716, %3700
  %3720 = fadd fast float %3717, %3701
  %3721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3722 = extractvalue %dx.types.CBufRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.CBufRet.f32 %3721, 1
  %3724 = fadd fast float %3723, %3722
  %3725 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3726 = extractvalue %dx.types.CBufRet.f32 %3721, 2
  %3727 = extractvalue %dx.types.CBufRet.f32 %3721, 3
  %3728 = fadd fast float %3727, %3726
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3730 = fmul fast float %3725, %3709
  %3731 = fmul fast float %3730, %3729
  br label %3814

; <label>:3732                                    ; preds = %3668
  %3733 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 %3692
  %3734 = load float, float* %3733, align 4, !tbaa !61, !noalias !157
  %3735 = fcmp fast olt float %3734, %3599
  %3736 = icmp sgt i32 %3675, 0
  %3737 = and i1 %3736, %3735
  br i1 %3737, label %3738, label %3775

; <label>:3738                                    ; preds = %3732
  br label %3739

; <label>:3739                                    ; preds = %3768, %3738
  %3740 = phi float [ %3769, %3768 ], [ %3597, %3738 ]
  %3741 = phi float [ %3770, %3768 ], [ %3598, %3738 ]
  %3742 = phi float [ %3750, %3768 ], [ %3734, %3738 ]
  %3743 = phi i32 [ %3747, %3768 ], [ %3692, %3738 ]
  %3744 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 %3743
  %3745 = load float, float* %3744, align 4, !tbaa !61, !noalias !157
  %3746 = icmp slt i32 %3743, 2
  %3747 = add nsw i32 %3743, 1
  %3748 = getelementptr inbounds [3 x float], [3 x float]* %53, i32 0, i32 %3747
  %3749 = load float, float* %3748, align 4, !tbaa !61, !noalias !157
  %3750 = select i1 %3746, float %3749, float %3513
  %3751 = call float @dx.op.binary.f32(i32 36, float %3750, float %3745)  ; FMin(a,b)
  %3752 = call float @dx.op.binary.f32(i32 36, float %3599, float %3751)  ; FMin(a,b)
  %3753 = icmp eq i32 %3463, 0
  %3754 = fadd fast float %3752, %3742
  %3755 = fmul fast float %3754, %212
  %3756 = fadd fast float %3755, %3457
  br i1 %3753, label %3762, label %3757, !dx.controlflow.hints !185

; <label>:3757                                    ; preds = %3739
  %3758 = fsub fast float %3752, %3742
  %3759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3758)  ; FMax(a,b)
  %3760 = fmul fast float %3759, %3756
  %3761 = fadd fast float %3760, %3741
  br label %3768

; <label>:3762                                    ; preds = %3739
  %3763 = fsub fast float %3742, %3752
  %3764 = call float @dx.op.unary.f32(i32 6, float %3763)  ; FAbs(value)
  %3765 = fadd fast float %3764, %3740
  %3766 = fmul fast float %3764, %3756
  %3767 = fsub fast float %3741, %3766
  br label %3768

; <label>:3768                                    ; preds = %3762, %3757
  %3769 = phi float [ %3759, %3757 ], [ %3765, %3762 ]
  %3770 = phi float [ %3761, %3757 ], [ %3767, %3762 ]
  %3771 = fcmp fast olt float %3750, %3599
  %3772 = icmp slt i32 %3747, 3
  %3773 = and i1 %3772, %3771
  br i1 %3773, label %3739, label %3774

; <label>:3774                                    ; preds = %3768
  br label %3775

; <label>:3775                                    ; preds = %3774, %3732
  %3776 = phi float [ %3597, %3732 ], [ %3769, %3774 ]
  %3777 = phi float [ %3598, %3732 ], [ %3770, %3774 ]
  %3778 = fsub fast float %3513, %3776
  %3779 = select i1 %3515, float %3776, float %3778
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3782 = extractvalue %dx.types.CBufRet.f32 %3780, 1
  %3783 = extractvalue %dx.types.CBufRet.f32 %3780, 2
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 0
  %3786 = extractvalue %dx.types.CBufRet.f32 %3784, 1
  %3787 = extractvalue %dx.types.CBufRet.f32 %3784, 2
  %3788 = extractvalue %dx.types.CBufRet.f32 %3784, 3
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 3
  %3791 = call float @dx.op.binary.f32(i32 36, float %3777, float %3790)  ; FMin(a,b)
  %3792 = fmul fast float %3788, %3779
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3794 = fsub fast float %3785, %3781
  %3795 = fsub fast float %3786, %3782
  %3796 = fsub fast float %3787, %3783
  %3797 = fmul fast float %3793, %3794
  %3798 = fmul fast float %3793, %3795
  %3799 = fmul fast float %3793, %3796
  %3800 = fadd fast float %3797, %3781
  %3801 = fadd fast float %3798, %3782
  %3802 = fadd fast float %3799, %3783
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.CBufRet.f32 %3803, 1
  %3806 = fadd fast float %3805, %3804
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3803, 2
  %3809 = extractvalue %dx.types.CBufRet.f32 %3803, 3
  %3810 = fadd fast float %3809, %3808
  %3811 = call float @dx.op.unary.f32(i32 7, float %3810)  ; Saturate(value)
  %3812 = fmul fast float %3807, %3791
  %3813 = fmul fast float %3812, %3811
  br label %3814

; <label>:3814                                    ; preds = %3775, %3694, %3529, %3511, %3509
  %3815 = phi float [ %3538, %3529 ], [ %3697, %3694 ], [ %3779, %3775 ], [ 0.000000e+00, %3509 ], [ 0.000000e+00, %3511 ]
  %3816 = phi float [ %3572, %3529 ], [ %3731, %3694 ], [ %3813, %3775 ], [ 0.000000e+00, %3509 ], [ 0.000000e+00, %3511 ]
  %3817 = phi float [ %3559, %3529 ], [ %3718, %3694 ], [ %3800, %3775 ], [ 0.000000e+00, %3509 ], [ 0.000000e+00, %3511 ]
  %3818 = phi float [ %3560, %3529 ], [ %3719, %3694 ], [ %3801, %3775 ], [ 0.000000e+00, %3509 ], [ 0.000000e+00, %3511 ]
  %3819 = phi float [ %3561, %3529 ], [ %3720, %3694 ], [ %3802, %3775 ], [ 0.000000e+00, %3509 ], [ 0.000000e+00, %3511 ]
  %3820 = fmul fast float %3452, %3816
  %3821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3822 = extractvalue %dx.types.CBufRet.f32 %3821, 2
  %3823 = fsub fast float %3459, %3822
  %3824 = fcmp fast olt float %3820, -2.000000e+01
  %3825 = call float @dx.op.unary.f32(i32 21, float %3820)  ; Exp(value)
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 2
  %3828 = extractvalue %dx.types.CBufRet.f32 %3826, 3
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 2
  %3831 = fmul fast float %3828, %3823
  %3832 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3833 = fsub fast float 1.000000e+00, %3832
  %3834 = fmul fast float %212, 5.000000e-01
  %3835 = fadd fast float %3834, 5.000000e-01
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3833)  ; FMax(a,b)
  %3839 = fdiv fast float %3837, %3838
  %3840 = fsub fast float %3823, %192
  %3841 = call float @dx.op.unary.f32(i32 6, float %3840)  ; FAbs(value)
  %3842 = fmul fast float %3841, %3827
  %3843 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3844 = fsub fast float 1.000000e+00, %3842
  %3845 = fmul fast float %3844, %3843
  %3846 = fadd fast float %3845, %3842
  %3847 = fmul fast float %3830, %3823
  %3848 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  %3849 = fsub fast float 1.000000e+00, %3846
  %3850 = fmul fast float %3849, %3848
  %3851 = fadd fast float %3850, %3846
  %3852 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3853 = fadd fast float %3825, -1.000000e+00
  %3854 = select i1 %3824, float -1.000000e+00, float %3853
  %3855 = fmul fast float %3852, %3854
  %3856 = fadd fast float %3855, 1.000000e+00
  %3857 = fsub fast float -0.000000e+00, %3855
  %3858 = fmul fast float %3817, %3857
  %3859 = fmul fast float %3818, %3857
  %3860 = fmul fast float %3819, %3857
  br label %3861

; <label>:3861                                    ; preds = %3814, %3415
  %3862 = phi float [ %3815, %3814 ], [ 0.000000e+00, %3415 ]
  %3863 = phi float [ %3856, %3814 ], [ 1.000000e+00, %3415 ]
  %3864 = phi float [ %3858, %3814 ], [ 0.000000e+00, %3415 ]
  %3865 = phi float [ %3859, %3814 ], [ 0.000000e+00, %3415 ]
  %3866 = phi float [ %3860, %3814 ], [ 0.000000e+00, %3415 ]
  %3867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3867, 1
  %3869 = fsub fast float 1.000000e+00, %3863
  %3870 = fmul fast float %3869, %3445
  %3871 = fmul fast float %3870, %3868
  %3872 = fsub fast float %3445, %3871
  br i1 %3443, label %3873, label %3902, !dx.controlflow.hints !186

; <label>:3873                                    ; preds = %3861
  %3874 = fmul fast float %3446, %3440
  %3875 = fadd fast float %3874, %3441
  %3876 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3877 = fmul fast float %3422, %3872
  %3878 = fsub fast float -0.000000e+00, %3877
  %3879 = fmul fast float %3423, %3872
  %3880 = fsub fast float -0.000000e+00, %3879
  %3881 = call float @dx.op.unary.f32(i32 21, float %3878)  ; Exp(value)
  %3882 = call float @dx.op.unary.f32(i32 21, float %3880)  ; Exp(value)
  %3883 = call float @dx.op.binary.f32(i32 35, float %3430, float %3881)  ; FMax(a,b)
  %3884 = call float @dx.op.binary.f32(i32 35, float %3430, float %3882)  ; FMax(a,b)
  %3885 = fsub fast float %3884, %3883
  %3886 = fmul fast float %3885, %3876
  %3887 = fadd fast float %3886, %3883
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = fsub fast float %3427, %3432
  %3890 = fsub fast float %3428, %3433
  %3891 = fsub fast float %3429, %3434
  %3892 = fmul fast float %3876, %3889
  %3893 = fmul fast float %3876, %3890
  %3894 = fmul fast float %3876, %3891
  %3895 = fadd fast float %3892, %3432
  %3896 = fadd fast float %3893, %3433
  %3897 = fadd fast float %3894, %3434
  %3898 = fsub fast float 1.000000e+00, %3888
  %3899 = fmul fast float %3898, %3895
  %3900 = fmul fast float %3898, %3896
  %3901 = fmul fast float %3898, %3897
  br label %3961

; <label>:3902                                    ; preds = %3861
  %3903 = fmul fast float %3872, %3439
  %3904 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3905 = fsub fast float 2.000000e+00, %3904
  %3906 = fmul fast float %3904, 9.921875e-01
  %3907 = fmul fast float %3906, %3905
  %3908 = fadd fast float %3907, 3.906250e-03
  %3909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %41, float %3908, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = fsub fast float %3904, %3910
  %3912 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3911)  ; FMax(a,b)
  %3913 = fmul fast float %3425, %192
  %3914 = call float @dx.op.unary.f32(i32 6, float %3913)  ; FAbs(value)
  %3915 = fcmp fast ogt float %3914, 0x3EB0C6F7A0000000
  br i1 %3915, label %3916, label %3922, !dx.controlflow.hints !187

; <label>:3916                                    ; preds = %3902
  %3917 = fmul fast float %3913, 0xBFF7154760000000
  %3918 = call float @dx.op.unary.f32(i32 21, float %3917)  ; Exp(value)
  %3919 = fsub fast float 1.000000e+00, %3918
  %3920 = fdiv fast float %3919, %3913
  %3921 = fmul fast float %3920, %3435
  br label %3922

; <label>:3922                                    ; preds = %3916, %3902
  %3923 = phi float [ %3921, %3916 ], [ %3435, %3902 ]
  %3924 = fadd fast float %3923, %3437
  %3925 = fmul fast float %3924, %3912
  %3926 = fmul fast float %3422, %3925
  %3927 = fsub fast float -0.000000e+00, %3926
  %3928 = fmul fast float %3423, %3925
  %3929 = fsub fast float -0.000000e+00, %3928
  %3930 = fmul fast float %3424, %3925
  %3931 = fsub fast float -0.000000e+00, %3930
  %3932 = call float @dx.op.unary.f32(i32 21, float %3927)  ; Exp(value)
  %3933 = call float @dx.op.unary.f32(i32 21, float %3929)  ; Exp(value)
  %3934 = call float @dx.op.unary.f32(i32 21, float %3931)  ; Exp(value)
  %3935 = fmul fast float %3446, %3446
  %3936 = fadd fast float %3935, 1.000000e+00
  %3937 = fmul fast float %3936, 0x3FAE8EC8A0000000
  %3938 = fmul fast float %3937, %3432
  %3939 = fmul fast float %3937, %3433
  %3940 = fmul fast float %3937, %3434
  %3941 = fmul fast float %3446, %3430
  %3942 = fsub fast float 1.000000e+00, %3941
  %3943 = fmul fast float %3430, %3430
  %3944 = fsub fast float 1.000000e+00, %3943
  %3945 = fmul fast float %3944, 0x3FB45F3060000000
  %3946 = fmul fast float %3942, %3942
  %3947 = fdiv fast float 1.000000e+00, %3946
  %3948 = fmul fast float %3945, %3947
  %3949 = fmul fast float %3948, %3427
  %3950 = fmul fast float %3948, %3428
  %3951 = fmul fast float %3948, %3429
  %3952 = fadd fast float %3949, %3938
  %3953 = fadd fast float %3950, %3939
  %3954 = fadd fast float %3951, %3940
  %3955 = fsub fast float 1.000000e+00, %3932
  %3956 = fsub fast float 1.000000e+00, %3933
  %3957 = fsub fast float 1.000000e+00, %3934
  %3958 = fmul fast float %3952, %3955
  %3959 = fmul fast float %3953, %3956
  %3960 = fmul fast float %3954, %3957
  br label %3961

; <label>:3961                                    ; preds = %3922, %3873
  %3962 = phi float [ %3899, %3873 ], [ %3958, %3922 ]
  %3963 = phi float [ %3900, %3873 ], [ %3959, %3922 ]
  %3964 = phi float [ %3901, %3873 ], [ %3960, %3922 ]
  %3965 = phi float [ %3888, %3873 ], [ %3932, %3922 ]
  %3966 = phi float [ %3888, %3873 ], [ %3933, %3922 ]
  %3967 = phi float [ %3888, %3873 ], [ %3934, %3922 ]
  br i1 %3454, label %3968, label %4166, !dx.controlflow.hints !188

; <label>:3968                                    ; preds = %3961
  %3969 = extractvalue %dx.types.CBufRet.f32 %3867, 0
  %3970 = fmul fast float %3969, %3869
  %3971 = fsub fast float %3864, %3962
  %3972 = fsub fast float %3865, %3963
  %3973 = fsub fast float %3866, %3964
  %3974 = fmul fast float %3970, %3971
  %3975 = fmul fast float %3970, %3972
  %3976 = fmul fast float %3970, %3973
  %3977 = fadd fast float %3974, %3962
  %3978 = fadd fast float %3975, %3963
  %3979 = fadd fast float %3976, %3964
  %3980 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3965)  ; FMax(a,b)
  %3981 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3966)  ; FMax(a,b)
  %3982 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3967)  ; FMax(a,b)
  %3983 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3863)  ; FMax(a,b)
  %3984 = call float @dx.op.binary.f32(i32 35, float %3862, float %3872)  ; FMax(a,b)
  %3985 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3984)  ; FMax(a,b)
  %3986 = fdiv fast float %3862, %3985
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3988 = fdiv fast float %3872, %3985
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3990 = fcmp fast une float %3983, 1.000000e+00
  br i1 %3990, label %3991, label %4004, !dx.controlflow.hints !189

; <label>:3991                                    ; preds = %3968
  %3992 = call float @dx.op.unary.f32(i32 23, float %3983)  ; Log(value)
  %3993 = fmul fast float %3992, 0x3FE62E4300000000
  %3994 = fmul fast float %3864, %3993
  %3995 = fsub fast float -0.000000e+00, %3994
  %3996 = fmul fast float %3865, %3993
  %3997 = fsub fast float -0.000000e+00, %3996
  %3998 = fmul fast float %3866, %3993
  %3999 = fsub fast float -0.000000e+00, %3998
  %4000 = fsub fast float 1.000000e+00, %3983
  %4001 = fdiv fast float %3995, %4000
  %4002 = fdiv fast float %3997, %4000
  %4003 = fdiv fast float %3999, %4000
  br label %4004

; <label>:4004                                    ; preds = %3991, %3968
  %4005 = phi float [ %4001, %3991 ], [ %3864, %3968 ]
  %4006 = phi float [ %4002, %3991 ], [ %3865, %3968 ]
  %4007 = phi float [ %4003, %3991 ], [ %3866, %3968 ]
  %4008 = phi float [ %3993, %3991 ], [ 0.000000e+00, %3968 ]
  %4009 = fcmp fast une float %3980, 1.000000e+00
  br i1 %4009, label %4010, label %4017, !dx.controlflow.hints !190

; <label>:4010                                    ; preds = %4004
  %4011 = call float @dx.op.unary.f32(i32 23, float %3980)  ; Log(value)
  %4012 = fmul fast float %4011, 0x3FE62E4300000000
  %4013 = fmul fast float %3977, %4012
  %4014 = fsub fast float -0.000000e+00, %4013
  %4015 = fsub fast float 1.000000e+00, %3980
  %4016 = fdiv fast float %4014, %4015
  br label %4017

; <label>:4017                                    ; preds = %4010, %4004
  %4018 = phi float [ %4016, %4010 ], [ %3977, %4004 ]
  %4019 = phi float [ %4012, %4010 ], [ 0.000000e+00, %4004 ]
  %4020 = fcmp fast une float %3981, 1.000000e+00
  br i1 %4020, label %4021, label %4028, !dx.controlflow.hints !190

; <label>:4021                                    ; preds = %4017
  %4022 = call float @dx.op.unary.f32(i32 23, float %3981)  ; Log(value)
  %4023 = fmul fast float %4022, 0x3FE62E4300000000
  %4024 = fmul fast float %3978, %4023
  %4025 = fsub fast float -0.000000e+00, %4024
  %4026 = fsub fast float 1.000000e+00, %3981
  %4027 = fdiv fast float %4025, %4026
  br label %4028

; <label>:4028                                    ; preds = %4021, %4017
  %4029 = phi float [ %4027, %4021 ], [ %3978, %4017 ]
  %4030 = phi float [ %4023, %4021 ], [ 0.000000e+00, %4017 ]
  %4031 = fcmp fast une float %3982, 1.000000e+00
  br i1 %4031, label %4032, label %4039, !dx.controlflow.hints !190

; <label>:4032                                    ; preds = %4028
  %4033 = call float @dx.op.unary.f32(i32 23, float %3982)  ; Log(value)
  %4034 = fmul fast float %4033, 0x3FE62E4300000000
  %4035 = fmul fast float %3979, %4034
  %4036 = fsub fast float -0.000000e+00, %4035
  %4037 = fsub fast float 1.000000e+00, %3982
  %4038 = fdiv fast float %4036, %4037
  br label %4039

; <label>:4039                                    ; preds = %4032, %4028
  %4040 = phi float [ %4038, %4032 ], [ %3979, %4028 ]
  %4041 = phi float [ %4034, %4032 ], [ 0.000000e+00, %4028 ]
  %4042 = fmul fast float %4005, %3989
  %4043 = fmul fast float %4006, %3989
  %4044 = fmul fast float %4007, %3989
  %4045 = fmul fast float %4008, %3989
  %4046 = fmul fast float %4018, %3987
  %4047 = fmul fast float %4029, %3987
  %4048 = fmul fast float %4040, %3987
  %4049 = fmul fast float %4019, %3987
  %4050 = fmul fast float %4030, %3987
  %4051 = fmul fast float %4041, %3987
  %4052 = fadd fast float %4046, %4042
  %4053 = fadd fast float %4047, %4043
  %4054 = fadd fast float %4048, %4044
  %4055 = fadd fast float %4049, %4045
  %4056 = fadd fast float %4050, %4045
  %4057 = fadd fast float %4051, %4045
  %4058 = fcmp fast une float %4055, 0.000000e+00
  br i1 %4058, label %4059, label %4066, !dx.controlflow.hints !191

; <label>:4059                                    ; preds = %4039
  %4060 = fmul fast float %4055, 0x3FF7154760000000
  %4061 = call float @dx.op.unary.f32(i32 21, float %4060)  ; Exp(value)
  %4062 = fsub fast float 1.000000e+00, %4061
  %4063 = fmul fast float %4052, %4062
  %4064 = fsub fast float -0.000000e+00, %4063
  %4065 = fdiv fast float %4064, %4055
  br label %4066

; <label>:4066                                    ; preds = %4059, %4039
  %4067 = phi float [ %4061, %4059 ], [ 1.000000e+00, %4039 ]
  %4068 = phi float [ %4065, %4059 ], [ %4052, %4039 ]
  %4069 = fcmp fast une float %4056, 0.000000e+00
  br i1 %4069, label %4070, label %4077, !dx.controlflow.hints !191

; <label>:4070                                    ; preds = %4066
  %4071 = fmul fast float %4056, 0x3FF7154760000000
  %4072 = call float @dx.op.unary.f32(i32 21, float %4071)  ; Exp(value)
  %4073 = fsub fast float 1.000000e+00, %4072
  %4074 = fmul fast float %4053, %4073
  %4075 = fsub fast float -0.000000e+00, %4074
  %4076 = fdiv fast float %4075, %4056
  br label %4077

; <label>:4077                                    ; preds = %4070, %4066
  %4078 = phi float [ %4072, %4070 ], [ 1.000000e+00, %4066 ]
  %4079 = phi float [ %4076, %4070 ], [ %4053, %4066 ]
  %4080 = fcmp fast une float %4057, 0.000000e+00
  br i1 %4080, label %4081, label %4088, !dx.controlflow.hints !191

; <label>:4081                                    ; preds = %4077
  %4082 = fmul fast float %4057, 0x3FF7154760000000
  %4083 = call float @dx.op.unary.f32(i32 21, float %4082)  ; Exp(value)
  %4084 = fsub fast float 1.000000e+00, %4083
  %4085 = fmul fast float %4054, %4084
  %4086 = fsub fast float -0.000000e+00, %4085
  %4087 = fdiv fast float %4086, %4057
  br label %4088

; <label>:4088                                    ; preds = %4081, %4077
  %4089 = phi float [ %4083, %4081 ], [ 1.000000e+00, %4077 ]
  %4090 = phi float [ %4087, %4081 ], [ %4054, %4077 ]
  %4091 = fcmp fast ogt float %3987, %3989
  br i1 %4091, label %4092, label %4112, !dx.controlflow.hints !192

; <label>:4092                                    ; preds = %4088
  %4093 = fsub fast float 1.000000e+00, %3989
  %4094 = fmul fast float %4005, %4093
  %4095 = fmul fast float %4006, %4093
  %4096 = fmul fast float %4007, %4093
  %4097 = fmul fast float %4008, %4093
  %4098 = fcmp fast une float %4097, 0.000000e+00
  br i1 %4098, label %4099, label %4150, !dx.controlflow.hints !193

; <label>:4099                                    ; preds = %4092
  %4100 = fmul fast float %4097, 0x3FF7154760000000
  %4101 = call float @dx.op.unary.f32(i32 21, float %4100)  ; Exp(value)
  %4102 = fsub fast float 1.000000e+00, %4101
  %4103 = fmul fast float %4094, %4102
  %4104 = fsub fast float -0.000000e+00, %4103
  %4105 = fmul fast float %4095, %4102
  %4106 = fsub fast float -0.000000e+00, %4105
  %4107 = fmul fast float %4096, %4102
  %4108 = fsub fast float -0.000000e+00, %4107
  %4109 = fdiv fast float %4104, %4097
  %4110 = fdiv fast float %4106, %4097
  %4111 = fdiv fast float %4108, %4097
  br label %4150

; <label>:4112                                    ; preds = %4088
  %4113 = fsub fast float 1.000000e+00, %3987
  %4114 = fmul fast float %4018, %4113
  %4115 = fmul fast float %4029, %4113
  %4116 = fmul fast float %4040, %4113
  %4117 = fmul fast float %4019, %4113
  %4118 = fmul fast float %4030, %4113
  %4119 = fmul fast float %4041, %4113
  %4120 = fcmp fast une float %4117, 0.000000e+00
  br i1 %4120, label %4121, label %4128, !dx.controlflow.hints !191

; <label>:4121                                    ; preds = %4112
  %4122 = fmul fast float %4117, 0x3FF7154760000000
  %4123 = call float @dx.op.unary.f32(i32 21, float %4122)  ; Exp(value)
  %4124 = fsub fast float 1.000000e+00, %4123
  %4125 = fmul fast float %4114, %4124
  %4126 = fsub fast float -0.000000e+00, %4125
  %4127 = fdiv fast float %4126, %4117
  br label %4128

; <label>:4128                                    ; preds = %4121, %4112
  %4129 = phi float [ %4127, %4121 ], [ %4114, %4112 ]
  %4130 = phi float [ %4123, %4121 ], [ 1.000000e+00, %4112 ]
  %4131 = fcmp fast une float %4118, 0.000000e+00
  br i1 %4131, label %4132, label %4139, !dx.controlflow.hints !191

; <label>:4132                                    ; preds = %4128
  %4133 = fmul fast float %4118, 0x3FF7154760000000
  %4134 = call float @dx.op.unary.f32(i32 21, float %4133)  ; Exp(value)
  %4135 = fsub fast float 1.000000e+00, %4134
  %4136 = fmul fast float %4115, %4135
  %4137 = fsub fast float -0.000000e+00, %4136
  %4138 = fdiv fast float %4137, %4118
  br label %4139

; <label>:4139                                    ; preds = %4132, %4128
  %4140 = phi float [ %4138, %4132 ], [ %4115, %4128 ]
  %4141 = phi float [ %4134, %4132 ], [ 1.000000e+00, %4128 ]
  %4142 = fcmp fast une float %4119, 0.000000e+00
  br i1 %4142, label %4143, label %4150, !dx.controlflow.hints !191

; <label>:4143                                    ; preds = %4139
  %4144 = fmul fast float %4119, 0x3FF7154760000000
  %4145 = call float @dx.op.unary.f32(i32 21, float %4144)  ; Exp(value)
  %4146 = fsub fast float 1.000000e+00, %4145
  %4147 = fmul fast float %4116, %4146
  %4148 = fsub fast float -0.000000e+00, %4147
  %4149 = fdiv fast float %4148, %4119
  br label %4150

; <label>:4150                                    ; preds = %4143, %4139, %4099, %4092
  %4151 = phi float [ %4149, %4143 ], [ %4111, %4099 ], [ %4096, %4092 ], [ %4116, %4139 ]
  %4152 = phi float [ %4140, %4143 ], [ %4110, %4099 ], [ %4095, %4092 ], [ %4140, %4139 ]
  %4153 = phi float [ %4129, %4143 ], [ %4109, %4099 ], [ %4094, %4092 ], [ %4129, %4139 ]
  %4154 = phi float [ %4145, %4143 ], [ %4101, %4099 ], [ 1.000000e+00, %4092 ], [ 1.000000e+00, %4139 ]
  %4155 = phi float [ %4141, %4143 ], [ %4101, %4099 ], [ 1.000000e+00, %4092 ], [ %4141, %4139 ]
  %4156 = phi float [ %4130, %4143 ], [ %4101, %4099 ], [ 1.000000e+00, %4092 ], [ %4130, %4139 ]
  %4157 = fmul fast float %4156, %4068
  %4158 = fmul fast float %4155, %4079
  %4159 = fmul fast float %4154, %4090
  %4160 = fadd fast float %4157, %4153
  %4161 = fadd fast float %4158, %4152
  %4162 = fadd fast float %4159, %4151
  %4163 = fmul fast float %4156, %4067
  %4164 = fmul fast float %4155, %4078
  %4165 = fmul fast float %4154, %4089
  br label %4166

; <label>:4166                                    ; preds = %4150, %3961
  %4167 = phi float [ %4165, %4150 ], [ %3967, %3961 ]
  %4168 = phi float [ %4164, %4150 ], [ %3966, %3961 ]
  %4169 = phi float [ %4163, %4150 ], [ %3965, %3961 ]
  %4170 = phi float [ %4162, %4150 ], [ %3964, %3961 ]
  %4171 = phi float [ %4161, %4150 ], [ %3963, %3961 ]
  %4172 = phi float [ %4160, %4150 ], [ %3962, %3961 ]
  %4173 = fmul fast float %4169, %3412
  %4174 = fmul fast float %4168, %3413
  %4175 = fmul fast float %4167, %3414
  %4176 = fmul fast float %3409, 0xBFF7154760000000
  %4177 = fmul fast float %3410, 0xBFF7154760000000
  %4178 = fmul fast float %3411, 0xBFF7154760000000
  %4179 = call float @dx.op.unary.f32(i32 21, float %4176)  ; Exp(value)
  %4180 = call float @dx.op.unary.f32(i32 21, float %4177)  ; Exp(value)
  %4181 = call float @dx.op.unary.f32(i32 21, float %4178)  ; Exp(value)
  %4182 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4183 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4184 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4185 = fsub fast float 1.000000e+00, %4182
  %4186 = fsub fast float 1.000000e+00, %4183
  %4187 = fsub fast float 1.000000e+00, %4184
  %4188 = fmul fast float %4185, %4172
  %4189 = fmul fast float %4186, %4171
  %4190 = fmul fast float %4187, %4170
  %4191 = fadd fast float %4188, %4173
  %4192 = fadd fast float %4189, %4174
  %4193 = fadd fast float %4190, %4175
  br label %4194

; <label>:4194                                    ; preds = %4166, %3399
  %4195 = phi float [ %4191, %4166 ], [ %3412, %3399 ]
  %4196 = phi float [ %4192, %4166 ], [ %3413, %3399 ]
  %4197 = phi float [ %4193, %4166 ], [ %3414, %3399 ]
  %4198 = xor i1 %251, true
  %4199 = and i1 %87, %4198
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 0
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 0
  %4204 = select i1 %215, float %4201, float %4203
  %4205 = fmul fast float %4204, %4195
  %4206 = fmul fast float %4204, %4196
  %4207 = fmul fast float %4204, %4197
  %4208 = fmul fast float %4206, 5.000000e-01
  %4209 = fadd fast float %4197, %4195
  %4210 = fmul fast float %4204, %4209
  %4211 = fmul fast float %4210, 2.500000e-01
  %4212 = fadd fast float %4211, %4208
  %4213 = call float @dx.op.unary.f32(i32 23, float %4212)  ; Log(value)
  %4214 = fmul fast float %4213, 0x3FE62E4300000000
  %4215 = fmul fast float %4214, %4214
  %4216 = select i1 %4199, float 1.000000e+00, float 0.000000e+00
  store float %4216, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  %4217 = fmul fast float %4214, %4216
  store float %4217, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  %4218 = fmul fast float %4215, %4216
  store float %4218, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4219 = load float, float addrspace(3)* %262, align 4, !tbaa !61, !noalias !65
  %4220 = fadd fast float %4219, %4216
  %4221 = load float, float addrspace(3)* %265, align 4, !tbaa !61, !noalias !65
  %4222 = fadd fast float %4221, %4214
  %4223 = load float, float addrspace(3)* %268, align 4, !tbaa !61, !noalias !65
  %4224 = fadd fast float %4223, %4215
  store float %4220, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  store float %4222, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  store float %4224, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4225 = load float, float addrspace(3)* %272, align 4, !tbaa !61, !noalias !65
  %4226 = fadd fast float %4225, %4220
  %4227 = load float, float addrspace(3)* %275, align 4, !tbaa !61, !noalias !65
  %4228 = fadd fast float %4227, %4222
  %4229 = load float, float addrspace(3)* %278, align 4, !tbaa !61, !noalias !65
  %4230 = fadd fast float %4229, %4224
  store float %4226, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  store float %4228, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  store float %4230, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4231 = load float, float addrspace(3)* %282, align 4, !tbaa !61, !noalias !65
  %4232 = fadd fast float %4231, %4226
  %4233 = load float, float addrspace(3)* %285, align 4, !tbaa !61, !noalias !65
  %4234 = fadd fast float %4233, %4228
  %4235 = fdiv fast float %4234, %4232
  %4236 = and i1 %4199, %292
  br i1 %4236, label %4237, label %4245, !dx.controlflow.hints !69

; <label>:4237                                    ; preds = %4194
  %4238 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %281
  %4239 = load float, float addrspace(3)* %4238, align 4, !tbaa !61, !noalias !65
  %4240 = fadd fast float %4239, %4230
  %4241 = fdiv fast float %4240, %4232
  %4242 = lshr i32 %75, 1
  %4243 = lshr i32 %76, 1
  %4244 = lshr i32 %250, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %4242, i32 %4243, i32 %4244, float %4235, float %4241, float %4235, float %4235, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4245

; <label>:4245                                    ; preds = %4237, %4194
  br i1 %4199, label %4246, label %4280, !dx.controlflow.hints !70

; <label>:4246                                    ; preds = %4245
  %4247 = fadd fast float %125, 0x3FE3C6EF40000000
  %4248 = call float @dx.op.unary.f32(i32 22, float %4247)  ; Frc(value)
  %4249 = call float @dx.op.unary.f32(i32 23, float %4205)  ; Log(value)
  %4250 = fadd fast float %4249, -7.000000e+00
  %4251 = call float @dx.op.unary.f32(i32 21, float %4250)  ; Exp(value)
  %4252 = fmul fast float %4248, 2.000000e+00
  %4253 = fadd fast float %4252, -1.000000e+00
  %4254 = fmul fast float %4251, %4253
  %4255 = fcmp fast ogt float %4205, 0.000000e+00
  %4256 = select i1 %4255, float %4254, float 0.000000e+00
  %4257 = fadd fast float %4256, %4205
  %4258 = fadd fast float %125, 0x3FF3C6EF40000000
  %4259 = call float @dx.op.unary.f32(i32 22, float %4258)  ; Frc(value)
  %4260 = call float @dx.op.unary.f32(i32 23, float %4206)  ; Log(value)
  %4261 = fadd fast float %4260, -7.000000e+00
  %4262 = call float @dx.op.unary.f32(i32 21, float %4261)  ; Exp(value)
  %4263 = fmul fast float %4259, 2.000000e+00
  %4264 = fadd fast float %4263, -1.000000e+00
  %4265 = fmul fast float %4262, %4264
  %4266 = fcmp fast ogt float %4206, 0.000000e+00
  %4267 = select i1 %4266, float %4265, float 0.000000e+00
  %4268 = fadd fast float %4267, %4206
  %4269 = fadd fast float %125, 0x3FFDAA66E0000000
  %4270 = call float @dx.op.unary.f32(i32 22, float %4269)  ; Frc(value)
  %4271 = call float @dx.op.unary.f32(i32 23, float %4207)  ; Log(value)
  %4272 = fadd fast float %4271, -6.000000e+00
  %4273 = call float @dx.op.unary.f32(i32 21, float %4272)  ; Exp(value)
  %4274 = fmul fast float %4270, 2.000000e+00
  %4275 = fadd fast float %4274, -1.000000e+00
  %4276 = fmul fast float %4273, %4275
  %4277 = fcmp fast ogt float %4207, 0.000000e+00
  %4278 = select i1 %4277, float %4276, float 0.000000e+00
  %4279 = fadd fast float %4278, %4207
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %75, i32 %76, i32 %250, float %4257, float %4268, float %4279, float %4257, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4280

; <label>:4280                                    ; preds = %4246, %4245
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 0
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 0
  %4285 = select i1 %215, float %4282, float %4284
  %4286 = fmul fast float %4285, %3409
  %4287 = fmul fast float %4285, %3410
  %4288 = fmul fast float %4285, %3411
  %4289 = fmul fast float %4287, 5.000000e-01
  %4290 = fadd fast float %3411, %3409
  %4291 = fmul fast float %4285, %4290
  %4292 = fmul fast float %4291, 2.500000e-01
  %4293 = fadd fast float %4292, %4289
  %4294 = fmul fast float %4293, %4293
  store float %4216, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  %4295 = fmul fast float %4293, %4216
  store float %4295, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  %4296 = fmul fast float %4294, %4216
  store float %4296, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4297 = load float, float addrspace(3)* %262, align 4, !tbaa !61, !noalias !65
  %4298 = fadd fast float %4297, %4216
  %4299 = load float, float addrspace(3)* %265, align 4, !tbaa !61, !noalias !65
  %4300 = fadd fast float %4293, %4299
  %4301 = load float, float addrspace(3)* %268, align 4, !tbaa !61, !noalias !65
  %4302 = fadd fast float %4294, %4301
  store float %4298, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  store float %4300, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  store float %4302, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4303 = load float, float addrspace(3)* %272, align 4, !tbaa !61, !noalias !65
  %4304 = fadd fast float %4303, %4298
  %4305 = load float, float addrspace(3)* %275, align 4, !tbaa !61, !noalias !65
  %4306 = fadd fast float %4300, %4305
  %4307 = load float, float addrspace(3)* %278, align 4, !tbaa !61, !noalias !65
  %4308 = fadd fast float %4302, %4307
  store float %4304, float addrspace(3)* %256, align 4, !tbaa !61, !noalias !65
  store float %4306, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  store float %4308, float addrspace(3)* %260, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4309 = load float, float addrspace(3)* %282, align 4, !tbaa !61, !noalias !65
  %4310 = fadd fast float %4309, %4304
  %4311 = load float, float addrspace(3)* %285, align 4, !tbaa !61, !noalias !65
  %4312 = fadd fast float %4311, %4306
  %4313 = fdiv fast float %4312, %4310
  br i1 %4236, label %4314, label %4322, !dx.controlflow.hints !71

; <label>:4314                                    ; preds = %4280
  %4315 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %281
  %4316 = load float, float addrspace(3)* %4315, align 4, !tbaa !61, !noalias !65
  %4317 = fadd fast float %4316, %4308
  %4318 = fdiv fast float %4317, %4310
  %4319 = lshr i32 %75, 1
  %4320 = lshr i32 %76, 1
  %4321 = lshr i32 %250, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4319, i32 %4320, i32 %4321, float %4313, float %4318, float %4313, float %4313, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4322

; <label>:4322                                    ; preds = %4314, %4280
  br i1 %4199, label %4323, label %4357, !dx.controlflow.hints !72

; <label>:4323                                    ; preds = %4322
  %4324 = fadd fast float %125, 0x3FE3C6EF40000000
  %4325 = call float @dx.op.unary.f32(i32 22, float %4324)  ; Frc(value)
  %4326 = call float @dx.op.unary.f32(i32 23, float %4286)  ; Log(value)
  %4327 = fadd fast float %4326, -7.000000e+00
  %4328 = call float @dx.op.unary.f32(i32 21, float %4327)  ; Exp(value)
  %4329 = fmul fast float %4325, 2.000000e+00
  %4330 = fadd fast float %4329, -1.000000e+00
  %4331 = fmul fast float %4328, %4330
  %4332 = fcmp fast ogt float %4286, 0.000000e+00
  %4333 = select i1 %4332, float %4331, float 0.000000e+00
  %4334 = fadd fast float %4333, %4286
  %4335 = fadd fast float %125, 0x3FF3C6EF40000000
  %4336 = call float @dx.op.unary.f32(i32 22, float %4335)  ; Frc(value)
  %4337 = call float @dx.op.unary.f32(i32 23, float %4287)  ; Log(value)
  %4338 = fadd fast float %4337, -7.000000e+00
  %4339 = call float @dx.op.unary.f32(i32 21, float %4338)  ; Exp(value)
  %4340 = fmul fast float %4336, 2.000000e+00
  %4341 = fadd fast float %4340, -1.000000e+00
  %4342 = fmul fast float %4339, %4341
  %4343 = fcmp fast ogt float %4287, 0.000000e+00
  %4344 = select i1 %4343, float %4342, float 0.000000e+00
  %4345 = fadd fast float %4344, %4287
  %4346 = fadd fast float %125, 0x3FFDAA66E0000000
  %4347 = call float @dx.op.unary.f32(i32 22, float %4346)  ; Frc(value)
  %4348 = call float @dx.op.unary.f32(i32 23, float %4288)  ; Log(value)
  %4349 = fadd fast float %4348, -6.000000e+00
  %4350 = call float @dx.op.unary.f32(i32 21, float %4349)  ; Exp(value)
  %4351 = fmul fast float %4347, 2.000000e+00
  %4352 = fadd fast float %4351, -1.000000e+00
  %4353 = fmul fast float %4350, %4352
  %4354 = fcmp fast ogt float %4288, 0.000000e+00
  %4355 = select i1 %4354, float %4353, float 0.000000e+00
  %4356 = fadd fast float %4355, %4288
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %75, i32 %76, i32 %250, float %4334, float %4345, float %4356, float %4334, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4357

; <label>:4357                                    ; preds = %4323, %4322
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
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !44, !49, !52}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !42}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 26, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 43, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 40, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture3D<float>"* undef, !"", i32 0, i32 10, i32 1, i32 4, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 33, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 38, i32 1, i32 4, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 35, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 41, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 4, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 24, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 25, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 36, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.StructuredBuffer<VolumetricBBoxGpu>"* undef, !"", i32 0, i32 39, i32 1, i32 12, i32 0, !26}
!26 = !{i32 1, i32 164}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 42, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 34, i32 1, i32 7, i32 0, !30}
!30 = !{i32 0, i32 14}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!37 = !{i32 28, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !40}
!40 = !{i32 1, i32 80}
!41 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!42 = !{i32 32, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !43}
!43 = !{i32 1, i32 4}
!44 = !{!45, !46, !47, !48}
!45 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!46 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!47 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!48 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!49 = !{!50, !51}
!50 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!51 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!52 = !{!53, !54, !55, !56, !57}
!53 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!54 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!58 = !{void ()* @cs_volumetric_forwardplus_scatter_local_water_afog, !"cs_volumetric_forwardplus_scatter_local_water_afog", null, !4, !59}
!59 = !{i32 0, i64 272, i32 4, !60}
!60 = !{i32 4, i32 4, i32 4}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !{!66, !68}
!66 = distinct !{!66, !67, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!67 = distinct !{!67, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!68 = distinct !{!68, !67, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !94}
!111 = distinct !{!111, !94}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = !{!124, !124, i64 0}
!124 = !{!"int", !63, i64 0}
!125 = !{!126, !128, !130, !66, !68}
!126 = distinct !{!126, !127, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!127 = distinct !{!127, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!128 = distinct !{!128, !129, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!129 = distinct !{!129, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!130 = distinct !{!130, !131, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!131 = distinct !{!131, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 2}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 2}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 2}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 2}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 2}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 2}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 2}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 2}
!157 = !{!158, !160, !162, !66, !68}
!158 = distinct !{!158, !159, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!159 = distinct !{!159, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!160 = distinct !{!160, !161, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!161 = distinct !{!161, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!162 = distinct !{!162, !161, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 2}
!164 = !{!165}
!165 = distinct !{!165, !166, !"\01?sort@@YAXAIAM00@Z: %c"}
!166 = distinct !{!166, !"\01?sort@@YAXAIAM00@Z"}
!167 = !{!168, !169, !158, !160, !162, !66, !68}
!168 = distinct !{!168, !166, !"\01?sort@@YAXAIAM00@Z: %a"}
!169 = distinct !{!169, !166, !"\01?sort@@YAXAIAM00@Z: %b"}
!170 = !{!169}
!171 = !{!168, !165, !158, !160, !162, !66, !68}
!172 = !{!168}
!173 = !{!169, !165, !158, !160, !162, !66, !68}
!174 = !{!175}
!175 = distinct !{!175, !176, !"\01?sort@@YAXAIAM00@Z: %c"}
!176 = distinct !{!176, !"\01?sort@@YAXAIAM00@Z"}
!177 = !{!178, !179, !158, !160, !162, !66, !68}
!178 = distinct !{!178, !176, !"\01?sort@@YAXAIAM00@Z: %a"}
!179 = distinct !{!179, !176, !"\01?sort@@YAXAIAM00@Z: %b"}
!180 = !{!179}
!181 = !{!178, !175, !158, !160, !162, !66, !68}
!182 = !{!178}
!183 = !{!179, !175, !158, !160, !162, !66, !68}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 2}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 2}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 2}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 1}
!191 = distinct !{!191, !"dx.controlflow.hints", i32 1}
!192 = distinct !{!192, !"dx.controlflow.hints", i32 2}
!193 = distinct !{!193, !"dx.controlflow.hints", i32 1}

