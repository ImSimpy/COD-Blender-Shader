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
; shader hash: 65b7f32eb9abbbae18e914b98bce55fd
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
;                                   texture     f32          3d     T27             t5     1
;                                   texture    byte         r/o     T28            t13     1
;                                   texture  struct         r/o     T29            t14     1
;                                   texture    byte         r/o     T30            t15     1
;                                   texture  struct         r/o     T31            t29     1
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

define void @cs_volumetric_forwardplus_scatter_local_water() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = alloca [4 x i32], align 4
  %45 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %46 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %47 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %48 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %49 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %50 = alloca [12 x float], align 4
  %51 = alloca [12 x float], align 4
  %52 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.i32 %52, 3
  %54 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.i32 %54, 1
  %56 = mul i32 %55, %53
  %57 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.i32 %57, 1
  %59 = mul i32 %56, %58
  %60 = add i32 %59, %48
  %61 = shl i32 %60, 2
  %62 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 0
  %64 = and i32 %63, 255
  %65 = lshr i32 %63, 8
  %66 = and i32 %65, 255
  %67 = lshr i32 %63, 16
  %68 = and i32 %67, 255
  %69 = shl nuw nsw i32 %64, 2
  %70 = shl nuw nsw i32 %66, 2
  %71 = shl nuw nsw i32 %68, 2
  %72 = add i32 %69, %45
  %73 = add i32 %70, %46
  %74 = add i32 %71, %47
  %75 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.i32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.i32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.i32 %75, 2
  %79 = icmp uge i32 %72, %76
  %80 = icmp uge i32 %73, %77
  %81 = icmp uge i32 %74, %78
  %82 = or i1 %79, %80
  %83 = or i1 %81, %82
  %84 = xor i1 %83, true
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 3
  %87 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %73, i32 %86)  ; UMad(a,b,c)
  %88 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %72, i32 %87)  ; UMad(a,b,c)
  %89 = mul i32 %88, -63
  %90 = lshr i32 %89, 17
  %91 = xor i32 %90, %89
  %92 = mul i32 %91, -511
  %93 = mul i32 %91, -8176
  %94 = xor i32 %92, %93
  %95 = mul i32 %94, -7
  %96 = mul i32 %94, -7168
  %97 = xor i32 %95, %96
  %98 = lshr i32 %97, 15
  %99 = xor i32 %98, %95
  %100 = and i32 %99, 127
  %101 = mul i32 %100, 3
  %102 = add i32 0, %101
  %103 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %102
  %104 = load float, float* %103, align 4
  %105 = mul i32 %100, 3
  %106 = add i32 1, %105
  %107 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %106
  %108 = load float, float* %107, align 4
  %109 = mul i32 %100, 3
  %110 = add i32 2, %109
  %111 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %110
  %112 = load float, float* %111, align 4
  %113 = uitofp i32 %86 to float
  %114 = fmul fast float %113, 0x3FEA36A940000000
  %115 = fmul fast float %113, 0x3FE5793080000000
  %116 = fmul fast float %113, 0x3FE1972580000000
  %117 = fadd fast float %104, %114
  %118 = fadd fast float %108, %115
  %119 = fadd fast float %112, %116
  %120 = call float @dx.op.unary.f32(i32 22, float %117)  ; Frc(value)
  %121 = call float @dx.op.unary.f32(i32 22, float %118)  ; Frc(value)
  %122 = call float @dx.op.unary.f32(i32 22, float %119)  ; Frc(value)
  %123 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %72, i32 %73, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = fcmp fast ogt float %124, -1.000000e+00
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %128 = select i1 %125, float %127, float 1.000000e+00
  %129 = fadd fast float %124, 1.000000e+00
  %130 = fmul fast float %128, %129
  %131 = uitofp i32 %72 to float
  %132 = uitofp i32 %73 to float
  %133 = uitofp i32 %74 to float
  %134 = fadd fast float %133, -5.000000e-01
  %135 = fadd fast float %134, %122
  %136 = fadd fast float %131, %120
  %137 = fadd fast float %132, %121
  %138 = fadd fast float %135, 5.000000e-01
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = fmul fast float %140, %136
  %144 = fmul fast float %141, %137
  %145 = fmul fast float %142, %138
  %146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.i32 %146, 0
  %148 = uitofp i32 %147 to float
  %149 = fmul fast float %148, %145
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = fmul fast float %149, %152
  %154 = call float @dx.op.unary.f32(i32 21, float %153)  ; Exp(value)
  %155 = fmul fast float %154, %151
  %156 = fsub fast float 4.000000e+00, %151
  %157 = fadd fast float %156, %155
  %158 = call float @dx.op.binary.f32(i32 36, float %157, float %130)  ; FMin(a,b)
  %159 = fmul fast float %143, 2.000000e+00
  %160 = fmul fast float %144, 2.000000e+00
  %161 = fsub fast float 1.000000e+00, %159
  %162 = fsub fast float 1.000000e+00, %160
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = fmul fast float %164, %161
  %168 = fmul fast float %165, %161
  %169 = fmul fast float %166, %161
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = fmul fast float %171, %162
  %175 = fmul fast float %172, %162
  %176 = fmul fast float %173, %162
  %177 = fadd fast float %174, %167
  %178 = fadd fast float %175, %168
  %179 = fadd fast float %176, %169
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = fadd fast float %177, %181
  %185 = fadd fast float %178, %182
  %186 = fadd fast float %179, %183
  %187 = fmul fast float %184, %158
  %188 = fmul fast float %185, %158
  %189 = fmul fast float %186, %158
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = fadd fast float %187, %191
  %195 = fadd fast float %188, %192
  %196 = fadd fast float %189, %193
  %197 = add i32 %74, 1
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %152, %198
  %200 = call float @dx.op.unary.f32(i32 21, float %199)  ; Exp(value)
  %201 = fmul fast float %152, %133
  %202 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %203 = fsub fast float %200, %202
  %204 = fmul fast float %151, %203
  %205 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %206 = call float @dx.op.unary.f32(i32 25, float %205)  ; Rsqrt(value)
  %207 = fmul fast float %206, %187
  %208 = fmul fast float %206, %188
  %209 = fmul fast float %206, %189
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast ogt float %211, 0.000000e+00
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = extractvalue %dx.types.CBufRet.f32 %213, 1
  %216 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %217 = fsub fast float %194, %214
  %218 = fadd fast float %217, %216
  %219 = fsub fast float %195, %215
  %220 = fadd fast float %219, %216
  %221 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %222 = fmul fast float %218, %221
  %223 = fmul fast float %220, %221
  %224 = call float @dx.op.unary.f32(i32 7, float %222)  ; Saturate(value)
  %225 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %226 = fsub fast float 1.000000e+00, %224
  %227 = fsub fast float 1.000000e+00, %225
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %40, float %226, float %227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = fmul fast float %231, %229
  %233 = extractvalue %dx.types.CBufRet.f32 %230, 3
  %234 = fadd fast float %233, %232
  %235 = fcmp fast ogt float %229, 0.000000e+00
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 32768
  %239 = icmp ne i32 %238, 0
  %240 = and i1 %235, %239
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 3
  %243 = fadd fast float %242, %234
  %244 = fcmp fast ole float %196, %243
  %245 = and i1 %240, %244
  %246 = select i1 %212, i32 %147, i32 0
  %247 = add i32 %246, %74
  %248 = xor i1 %212, %245
  %249 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %250 = fmul fast float %249, 0x3FE62E4300000000
  %251 = fmul fast float %250, %250
  %252 = select i1 %83, float 0.000000e+00, float 1.000000e+00
  %253 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %49
  store float %252, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  %254 = fmul fast float %250, %252
  %255 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %49
  store float %254, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  %256 = fmul fast float %251, %252
  %257 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %49
  store float %256, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %258 = xor i32 %49, 4
  %259 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %258
  %260 = load float, float addrspace(3)* %259, align 4, !tbaa !60, !noalias !64
  %261 = fadd fast float %260, %252
  %262 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %258
  %263 = load float, float addrspace(3)* %262, align 4, !tbaa !60, !noalias !64
  %264 = fadd fast float %263, %250
  %265 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %258
  %266 = load float, float addrspace(3)* %265, align 4, !tbaa !60, !noalias !64
  %267 = fadd fast float %266, %251
  store float %261, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  store float %264, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  store float %267, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %268 = xor i32 %49, 16
  %269 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %268
  %270 = load float, float addrspace(3)* %269, align 4, !tbaa !60, !noalias !64
  %271 = fadd fast float %270, %261
  %272 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %268
  %273 = load float, float addrspace(3)* %272, align 4, !tbaa !60, !noalias !64
  %274 = fadd fast float %273, %264
  %275 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %268
  %276 = load float, float addrspace(3)* %275, align 4, !tbaa !60, !noalias !64
  %277 = fadd fast float %276, %267
  store float %271, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  store float %274, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  store float %277, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = xor i32 %49, 1
  %279 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %278
  %280 = load float, float addrspace(3)* %279, align 4, !tbaa !60, !noalias !64
  %281 = fadd fast float %280, %271
  %282 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %278
  %283 = load float, float addrspace(3)* %282, align 4, !tbaa !60, !noalias !64
  %284 = fadd fast float %283, %274
  %285 = fdiv fast float %284, %281
  %286 = and i32 %72, 1
  %287 = and i32 %286, %73
  %288 = and i32 %287, %247
  %289 = icmp ne i32 %288, 0
  %290 = and i1 %289, %84
  br i1 %290, label %291, label %299, !dx.controlflow.hints !68

; <label>:291                                     ; preds = %0
  %292 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %278
  %293 = load float, float addrspace(3)* %292, align 4, !tbaa !60, !noalias !64
  %294 = fadd fast float %293, %277
  %295 = fdiv fast float %294, %281
  %296 = lshr i32 %72, 1
  %297 = lshr i32 %73, 1
  %298 = lshr i32 %247, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %296, i32 %297, i32 %298, float %285, float %295, float %285, float %285, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %299

; <label>:299                                     ; preds = %291, %0
  br i1 %83, label %301, label %300, !dx.controlflow.hints !69

; <label>:300                                     ; preds = %299
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %72, i32 %73, i32 %247, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %301

; <label>:301                                     ; preds = %300, %299
  store float %252, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  store float 0.000000e+00, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  store float 0.000000e+00, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %302 = load float, float addrspace(3)* %259, align 4, !tbaa !60, !noalias !64
  %303 = fadd fast float %302, %252
  %304 = load float, float addrspace(3)* %262, align 4, !tbaa !60, !noalias !64
  %305 = load float, float addrspace(3)* %265, align 4, !tbaa !60, !noalias !64
  store float %303, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  store float %304, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  store float %305, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %306 = load float, float addrspace(3)* %269, align 4, !tbaa !60, !noalias !64
  %307 = fadd fast float %306, %303
  %308 = load float, float addrspace(3)* %272, align 4, !tbaa !60, !noalias !64
  %309 = fadd fast float %308, %304
  %310 = load float, float addrspace(3)* %275, align 4, !tbaa !60, !noalias !64
  %311 = fadd fast float %310, %305
  store float %307, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  store float %309, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  store float %311, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %312 = load float, float addrspace(3)* %279, align 4, !tbaa !60, !noalias !64
  %313 = fadd fast float %312, %307
  %314 = load float, float addrspace(3)* %282, align 4, !tbaa !60, !noalias !64
  %315 = fadd fast float %314, %309
  %316 = fdiv fast float %315, %313
  br i1 %290, label %317, label %325, !dx.controlflow.hints !70

; <label>:317                                     ; preds = %301
  %318 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %278
  %319 = load float, float addrspace(3)* %318, align 4, !tbaa !60, !noalias !64
  %320 = fadd fast float %319, %311
  %321 = fdiv fast float %320, %313
  %322 = lshr i32 %72, 1
  %323 = lshr i32 %73, 1
  %324 = lshr i32 %247, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %322, i32 %323, i32 %324, float %316, float %321, float %316, float %316, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %325

; <label>:325                                     ; preds = %317, %301
  br i1 %83, label %327, label %326, !dx.controlflow.hints !71

; <label>:326                                     ; preds = %325
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %72, i32 %73, i32 %247, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %327

; <label>:327                                     ; preds = %326, %325
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = fsub fast float %196, %329
  %332 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %331)  ; FMax(a,b)
  %333 = fmul fast float %332, 0x3FF7154760000000
  %334 = fmul fast float %333, %330
  %335 = call float @dx.op.unary.f32(i32 21, float %334)  ; Exp(value)
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = fmul fast float %342, %335
  %344 = fmul fast float %343, %337
  %345 = fmul fast float %343, %338
  %346 = fmul fast float %343, %339
  %347 = fmul fast float %343, %341
  %348 = select i1 %245, float 0.000000e+00, float %343
  %349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.i32 %349, 2
  %351 = extractvalue %dx.types.CBufRet.i32 %349, 3
  %352 = call i32 @dx.op.tertiary.i32(i32 49, i32 %66, i32 %350, i32 %64)  ; UMad(a,b,c)
  %353 = call i32 @dx.op.tertiary.i32(i32 49, i32 %68, i32 %351, i32 %352)  ; UMad(a,b,c)
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %353, i32 0)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = fadd fast float %131, 1.000000e+00
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = fmul fast float %362, %135
  %364 = call float @dx.op.unary.f32(i32 21, float %363)  ; Exp(value)
  %365 = fmul fast float %364, %361
  %366 = fsub fast float 4.000000e+00, %361
  %367 = fadd fast float %366, %365
  %368 = fmul fast float %356, 2.000000e+00
  %369 = fmul fast float %368, %358
  %370 = fmul fast float %132, 2.000000e+00
  %371 = fmul fast float %370, %359
  %372 = fsub fast float 1.000000e+00, %369
  %373 = fsub fast float 1.000000e+00, %371
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %377 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %378 = fmul fast float %375, %372
  %379 = fmul fast float %376, %372
  %380 = fmul fast float %377, %372
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %385 = fmul fast float %382, %373
  %386 = fmul fast float %383, %373
  %387 = fmul fast float %384, %373
  %388 = fadd fast float %385, %378
  %389 = fadd fast float %386, %379
  %390 = fadd fast float %387, %380
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %393 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %394 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %395 = fadd fast float %388, %392
  %396 = fadd fast float %389, %393
  %397 = fadd fast float %390, %394
  %398 = fadd fast float %132, 1.000000e+00
  %399 = fmul fast float %131, 2.000000e+00
  %400 = fmul fast float %399, %358
  %401 = fmul fast float %398, 2.000000e+00
  %402 = fmul fast float %401, %359
  %403 = fsub fast float 1.000000e+00, %400
  %404 = fsub fast float 1.000000e+00, %402
  %405 = fmul fast float %375, %403
  %406 = fmul fast float %376, %403
  %407 = fmul fast float %377, %403
  %408 = fmul fast float %382, %404
  %409 = fmul fast float %383, %404
  %410 = fmul fast float %384, %404
  %411 = fadd fast float %408, %405
  %412 = fadd fast float %409, %406
  %413 = fadd fast float %410, %407
  %414 = fadd fast float %411, %392
  %415 = fadd fast float %412, %393
  %416 = fadd fast float %413, %394
  %417 = fmul fast float %414, %367
  %418 = fmul fast float %415, %367
  %419 = fmul fast float %416, %367
  %420 = fadd fast float %414, %395
  %421 = fmul fast float %367, %420
  %422 = fadd fast float %415, %396
  %423 = fmul fast float %367, %422
  %424 = fadd fast float %416, %397
  %425 = fmul fast float %367, %424
  %426 = fmul fast float %421, 5.000000e-01
  %427 = fmul fast float %423, 5.000000e-01
  %428 = fmul fast float %425, 5.000000e-01
  %429 = fsub fast float %426, %417
  %430 = fsub fast float %427, %418
  %431 = fsub fast float %428, %419
  %432 = call float @dx.op.dot3.f32(i32 55, float %429, float %430, float %431, float %429, float %430, float %431)  ; Dot3(ax,ay,az,bx,by,bz)
  %433 = call float @dx.op.unary.f32(i32 25, float %432)  ; Rsqrt(value)
  %434 = fmul fast float %432, 2.000000e+00
  %435 = fmul fast float %434, %433
  %436 = call float @dx.op.binary.f32(i32 35, float %204, float %435)  ; FMax(a,b)
  %437 = xor i1 %245, true
  %438 = and i32 %355, 8
  %439 = icmp ne i32 %438, 0
  %440 = and i1 %439, %437
  br i1 %440, label %441, label %657, !dx.controlflow.hints !72

; <label>:441                                     ; preds = %327
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %445 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %449 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %450 = fsub fast float %194, %447
  %451 = fsub fast float %195, %448
  %452 = fsub fast float %196, %449
  %453 = fmul fast float %450, %443
  %454 = fmul fast float %451, %444
  %455 = fmul fast float %452, %445
  %456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.i32 %456, 3
  %458 = icmp eq i32 %457, 0
  %459 = fcmp fast oge float %455, 0.000000e+00
  %460 = fcmp fast ole float %455, 1.000000e+00
  br i1 %458, label %463, label %461, !dx.controlflow.hints !73

; <label>:461                                     ; preds = %441
  %462 = and i1 %459, %460
  br label %473

; <label>:463                                     ; preds = %441
  %464 = fcmp fast oge float %453, 0.000000e+00
  %465 = fcmp fast oge float %454, 0.000000e+00
  %466 = and i1 %464, %465
  %467 = and i1 %459, %466
  %468 = fcmp fast ole float %453, 1.000000e+00
  %469 = fcmp fast ole float %454, 1.000000e+00
  %470 = and i1 %468, %469
  %471 = and i1 %460, %470
  %472 = and i1 %467, %471
  br label %473

; <label>:473                                     ; preds = %463, %461
  %474 = phi i1 [ %462, %461 ], [ %472, %463 ]
  br i1 %474, label %475, label %650, !dx.controlflow.hints !74

; <label>:475                                     ; preds = %473
  %476 = fcmp fast oeq float %436, 0.000000e+00
  br i1 %476, label %491, label %477, !dx.controlflow.hints !75

; <label>:477                                     ; preds = %475
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 3
  %480 = fmul fast float %479, %436
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %483 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %484 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %485 = fmul fast float %482, %480
  %486 = fmul fast float %483, %480
  %487 = fmul fast float %484, %480
  %488 = call float @dx.op.unary.f32(i32 23, float %485)  ; Log(value)
  %489 = call float @dx.op.unary.f32(i32 23, float %486)  ; Log(value)
  %490 = call float @dx.op.unary.f32(i32 23, float %487)  ; Log(value)
  br label %491

; <label>:491                                     ; preds = %477, %475
  %492 = phi float [ %488, %477 ], [ 0.000000e+00, %475 ]
  %493 = phi float [ %489, %477 ], [ 0.000000e+00, %475 ]
  %494 = phi float [ %490, %477 ], [ 0.000000e+00, %475 ]
  %495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.i32 %495, 0
  %497 = extractvalue %dx.types.CBufRet.i32 %495, 1
  %498 = uitofp i32 %496 to float
  %499 = uitofp i32 %497 to float
  %500 = fmul fast float %453, %498
  %501 = fmul fast float %454, %499
  %502 = fadd fast float %500, 5.000000e-01
  %503 = fadd fast float %501, 5.000000e-01
  %504 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %505 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %506 = call float @dx.op.unary.f32(i32 27, float %502)  ; Round_ni(value)
  %507 = call float @dx.op.unary.f32(i32 27, float %503)  ; Round_ni(value)
  %508 = fadd fast float %506, 1.000000e+00
  %509 = fadd fast float %507, 1.000000e+00
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %513 = fmul fast float %511, %508
  %514 = fmul fast float %512, %509
  %515 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %22, %dx.types.Handle %39, float %513, float %514, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = extractvalue %dx.types.ResRet.f32 %515, 3
  %520 = extractvalue %dx.types.CBufRet.i32 %495, 2
  %521 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %522 = uitofp i32 %520 to float
  %523 = fadd fast float %522, -1.000000e+00
  %524 = fmul fast float %523, %516
  %525 = fmul fast float %523, %517
  %526 = fmul fast float %523, %518
  %527 = fmul fast float %523, %519
  %528 = fadd fast float %524, 5.000000e-01
  %529 = fadd fast float %525, 5.000000e-01
  %530 = fadd fast float %526, 5.000000e-01
  %531 = fadd fast float %527, 5.000000e-01
  %532 = fptoui float %528 to i32
  %533 = fptoui float %529 to i32
  %534 = fptoui float %530 to i32
  %535 = fptoui float %531 to i32
  %536 = uitofp i32 %532 to float
  %537 = uitofp i32 %533 to float
  %538 = uitofp i32 %534 to float
  %539 = uitofp i32 %535 to float
  %540 = fadd fast float %536, 5.000000e-01
  %541 = fadd fast float %537, 5.000000e-01
  %542 = fadd fast float %538, 5.000000e-01
  %543 = fadd fast float %539, 5.000000e-01
  %544 = fmul fast float %540, %521
  %545 = fmul fast float %541, %521
  %546 = fmul fast float %542, %521
  %547 = fmul fast float %543, %521
  %548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %40, float %544, float %455, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %40, float %545, float %455, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %40, float %546, float %455, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %40, float %547, float %455, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = fsub fast float %553, %555
  %557 = fmul fast float %556, %504
  %558 = fadd fast float %557, %555
  %559 = fsub fast float %551, %549
  %560 = fmul fast float %559, %504
  %561 = fadd fast float %560, %549
  %562 = fsub fast float %561, %558
  %563 = fmul fast float %562, %505
  %564 = fadd fast float %563, %558
  %565 = fcmp fast ogt float %564, 0.000000e+00
  br i1 %565, label %566, label %634, !dx.controlflow.hints !76

; <label>:566                                     ; preds = %491
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %575 = fmul fast float %451, %443
  %576 = fmul fast float %452, %443
  %577 = fadd fast float %453, %572
  %578 = fadd fast float %575, %573
  %579 = fadd fast float %576, %574
  %580 = fmul fast float %577, %568
  %581 = fmul fast float %578, %568
  %582 = fmul fast float %579, %568
  %583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %37, float %580, float %581, float %582, float undef, i32 0, i32 0, i32 0, float %492)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = fmul fast float %577, %569
  %586 = fmul fast float %578, %569
  %587 = fmul fast float %579, %569
  %588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %37, float %585, float %586, float %587, float undef, i32 0, i32 0, i32 0, float %493)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 1
  %590 = fmul fast float %577, %570
  %591 = fmul fast float %578, %570
  %592 = fmul fast float %579, %570
  %593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %37, float %590, float %591, float %592, float undef, i32 0, i32 0, i32 0, float %494)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 2
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %597 = fmul fast float %589, %584
  %598 = fmul fast float %597, %594
  %599 = call float @dx.op.unary.f32(i32 23, float %598)  ; Log(value)
  %600 = fmul fast float %599, %596
  %601 = call float @dx.op.unary.f32(i32 21, float %600)  ; Exp(value)
  %602 = extractvalue %dx.types.CBufRet.f32 %595, 2
  %603 = fmul fast float %564, %564
  %604 = fmul fast float %603, %601
  %605 = fmul fast float %604, %602
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 3
  %608 = fmul fast float %607, %605
  %609 = bitcast float %608 to i32
  %610 = sitofp i32 %609 to float
  %611 = fptosi float %610 to i32
  %612 = bitcast i32 %611 to float
  %613 = fsub fast float 1.000000e+00, %605
  %614 = bitcast float %613 to i32
  %615 = sitofp i32 %614 to float
  %616 = fptosi float %615 to i32
  %617 = bitcast i32 %616 to float
  %618 = fadd fast float %612, %617
  %619 = bitcast float %618 to i32
  %620 = sub nsw i32 2129859010, %619
  %621 = bitcast i32 %620 to float
  %622 = fmul fast float %621, %612
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %627 = fmul fast float %622, %626
  %628 = fadd fast float %627, 1.000000e+00
  %629 = bitcast float %628 to i32
  %630 = sub nsw i32 2129859010, %629
  %631 = bitcast i32 %630 to float
  %632 = fmul fast float %622, %624
  %633 = fmul fast float %632, %631
  br label %634

; <label>:634                                     ; preds = %566, %491
  %635 = phi float [ %633, %566 ], [ %564, %491 ]
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 0
  %638 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %639 = extractvalue %dx.types.CBufRet.f32 %636, 2
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 1
  %642 = fmul fast float %637, %635
  %643 = fmul fast float %638, %635
  %644 = fmul fast float %639, %635
  %645 = fadd fast float %642, %344
  %646 = fadd fast float %643, %345
  %647 = fadd fast float %644, %346
  %648 = fmul fast float %641, %635
  %649 = fadd fast float %648, %347
  br label %650

; <label>:650                                     ; preds = %634, %473
  %651 = phi float [ %645, %634 ], [ %344, %473 ]
  %652 = phi float [ %646, %634 ], [ %345, %473 ]
  %653 = phi float [ %647, %634 ], [ %346, %473 ]
  %654 = phi float [ %649, %634 ], [ %347, %473 ]
  %655 = phi float [ %635, %634 ], [ 0.000000e+00, %473 ]
  %656 = fadd fast float %655, %348
  br label %657

; <label>:657                                     ; preds = %650, %327
  %658 = phi float [ %651, %650 ], [ %344, %327 ]
  %659 = phi float [ %652, %650 ], [ %345, %327 ]
  %660 = phi float [ %653, %650 ], [ %346, %327 ]
  %661 = phi float [ %654, %650 ], [ %347, %327 ]
  %662 = phi float [ %656, %650 ], [ %348, %327 ]
  %663 = phi float [ %655, %650 ], [ 0.000000e+00, %327 ]
  br i1 %245, label %1161, label %664, !dx.controlflow.hints !77

; <label>:664                                     ; preds = %657
  %665 = and i32 %355, 2
  %666 = icmp ne i32 %665, 0
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %671 = fadd fast float %670, %668
  %672 = fcmp fast ole float %196, %671
  %673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.i32 %673, 3
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %695, !dx.controlflow.hints !78

; <label>:676                                     ; preds = %664
  %677 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %678 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %679 = fsub fast float %194, %677
  %680 = fsub fast float %195, %678
  %681 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %682 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %683 = fdiv fast float 1.000000e+00, %681
  %684 = fdiv fast float 1.000000e+00, %682
  %685 = fmul fast float %679, %683
  %686 = fmul fast float %684, %680
  %687 = fcmp fast oge float %685, 0.000000e+00
  %688 = fcmp fast oge float %686, 0.000000e+00
  %689 = and i1 %687, %688
  %690 = and i1 %672, %689
  %691 = fcmp fast ole float %685, 1.000000e+00
  %692 = fcmp fast ole float %686, 1.000000e+00
  %693 = and i1 %691, %692
  %694 = and i1 %693, %690
  br label %695

; <label>:695                                     ; preds = %676, %664
  %696 = phi i1 [ %694, %676 ], [ %672, %664 ]
  %697 = and i1 %666, %696
  br i1 %697, label %698, label %877, !dx.controlflow.hints !79

; <label>:698                                     ; preds = %695
  %699 = fcmp fast oeq float %436, 0.000000e+00
  br i1 %699, label %705, label %700, !dx.controlflow.hints !80

; <label>:700                                     ; preds = %698
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 3
  %703 = fmul fast float %702, %436
  %704 = call float @dx.op.unary.f32(i32 23, float %703)  ; Log(value)
  br label %705

; <label>:705                                     ; preds = %700, %698
  %706 = phi float [ %704, %700 ], [ 0.000000e+00, %698 ]
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %710 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %711 = fsub fast float %194, %708
  %712 = fsub fast float %195, %709
  %713 = fsub fast float %196, %710
  %714 = fmul fast float %711, %711
  %715 = fmul fast float %712, %712
  %716 = fadd fast float %714, %715
  %717 = fmul fast float %713, %713
  %718 = fadd fast float %716, %717
  %719 = call float @dx.op.unary.f32(i32 24, float %718)  ; Sqrt(value)
  %720 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %721 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %722 = fsub fast float %194, %720
  %723 = fsub fast float %195, %721
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %726 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %727 = fmul fast float %722, %725
  %728 = fmul fast float %723, %726
  %729 = fsub fast float 1.000000e+00, %728
  br i1 %675, label %736, label %730, !dx.controlflow.hints !81

; <label>:730                                     ; preds = %705
  %731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %727, float %729, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  %734 = extractvalue %dx.types.ResRet.f32 %731, 2
  %735 = extractvalue %dx.types.ResRet.f32 %731, 3
  br label %742

; <label>:736                                     ; preds = %705
  %737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %40, float %727, float %729, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = extractvalue %dx.types.ResRet.f32 %737, 3
  br label %742

; <label>:742                                     ; preds = %736, %730
  %743 = phi float [ %732, %730 ], [ %738, %736 ]
  %744 = phi float [ %733, %730 ], [ %739, %736 ]
  %745 = phi float [ %734, %730 ], [ %740, %736 ]
  %746 = phi float [ %735, %730 ], [ %741, %736 ]
  %747 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %748 = fmul fast float %747, %744
  %749 = fmul fast float %748, %743
  %750 = fsub fast float %748, %749
  %751 = fcmp fast ole float %750, 0.000000e+00
  %752 = fmul fast float %747, %745
  %753 = fadd fast float %752, %668
  %754 = fdiv fast float 1.000000e+00, %750
  %755 = select i1 %751, float 1.000000e+06, float %754
  %756 = fsub fast float %196, %668
  %757 = fsub fast float %756, %749
  %758 = fmul fast float %755, %757
  %759 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %760 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %761 = fmul fast float %760, %759
  %762 = fsub fast float %760, %761
  %763 = fcmp fast olt float %196, %753
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 3
  %766 = select i1 %763, float %765, float 1.000000e+00
  %767 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %768 = fcmp fast oeq float %767, 0.000000e+00
  br i1 %768, label %851, label %769, !dx.controlflow.hints !82

; <label>:769                                     ; preds = %742
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 3
  %772 = fcmp fast ogt float %771, 0.000000e+00
  %773 = extractvalue %dx.types.CBufRet.f32 %764, 2
  br i1 %772, label %774, label %804, !dx.controlflow.hints !83

; <label>:774                                     ; preds = %769
  %775 = fmul fast float %727, %771
  %776 = fmul fast float %728, %771
  %777 = fsub fast float 1.000000e+00, %776
  %778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %37, float %775, float %777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = fmul fast float %779, 2.000000e+00
  %782 = fmul fast float %780, 2.000000e+00
  %783 = fadd fast float %781, -1.000000e+00
  %784 = fadd fast float %782, -1.000000e+00
  %785 = fmul fast float %767, %194
  %786 = fmul fast float %767, %195
  %787 = fmul fast float %767, %196
  %788 = call float @dx.op.unary.f32(i32 22, float %773)  ; Frc(value)
  %789 = fmul fast float %783, %788
  %790 = fmul fast float %784, %788
  %791 = fsub fast float %785, %789
  %792 = fsub fast float %786, %790
  %793 = fadd fast float %773, 5.000000e-01
  %794 = call float @dx.op.unary.f32(i32 22, float %793)  ; Frc(value)
  %795 = fmul fast float %794, %783
  %796 = fmul fast float %794, %784
  %797 = fadd fast float %785, -5.000000e-01
  %798 = fsub fast float %797, %795
  %799 = fadd fast float %786, -5.000000e-01
  %800 = fsub fast float %799, %796
  %801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %37, float %798, float %800, float %787, float undef, i32 0, i32 0, i32 0, float %706)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  br label %817

; <label>:804                                     ; preds = %769
  %805 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %807 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %808 = fmul fast float %773, %805
  %809 = fmul fast float %773, %806
  %810 = fmul fast float %773, %807
  %811 = fsub fast float %194, %808
  %812 = fsub fast float %195, %809
  %813 = fsub fast float %196, %810
  %814 = fmul fast float %811, %767
  %815 = fmul fast float %812, %767
  %816 = fmul fast float %813, %767
  br label %817

; <label>:817                                     ; preds = %804, %774
  %818 = phi float [ %791, %774 ], [ %814, %804 ]
  %819 = phi float [ %792, %774 ], [ %815, %804 ]
  %820 = phi float [ %787, %774 ], [ %816, %804 ]
  %821 = phi float [ %802, %774 ], [ 0.000000e+00, %804 ]
  %822 = phi float [ %803, %774 ], [ 0.000000e+00, %804 ]
  %823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %37, float %818, float %819, float %820, float undef, i32 0, i32 0, i32 0, float %706)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = extractvalue %dx.types.ResRet.f32 %823, 1
  br i1 %772, label %826, label %838, !dx.controlflow.hints !84

; <label>:826                                     ; preds = %817
  %827 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %828 = call float @dx.op.unary.f32(i32 22, float %827)  ; Frc(value)
  %829 = fmul fast float %828, 2.000000e+00
  %830 = fadd fast float %829, -1.000000e+00
  %831 = call float @dx.op.unary.f32(i32 6, float %830)  ; FAbs(value)
  %832 = fsub fast float %821, %824
  %833 = fmul fast float %831, %832
  %834 = fadd fast float %833, %824
  %835 = fsub fast float %822, %825
  %836 = fmul fast float %831, %835
  %837 = fadd fast float %836, %825
  br label %838

; <label>:838                                     ; preds = %826, %817
  %839 = phi float [ %834, %826 ], [ %824, %817 ]
  %840 = phi float [ %837, %826 ], [ %825, %817 ]
  %841 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %842 = fadd fast float %841, %841
  %843 = fdiv fast float 2.000000e+00, %842
  %844 = fmul fast float %841, 2.000000e+00
  %845 = fadd fast float %839, -1.000000e+00
  %846 = fadd fast float %845, %840
  %847 = fadd fast float %846, %844
  %848 = fmul fast float %847, %843
  %849 = fadd fast float %848, -1.000000e+00
  %850 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  br label %851

; <label>:851                                     ; preds = %838, %742
  %852 = phi float [ %850, %838 ], [ 1.000000e+00, %742 ]
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 0
  %855 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %856 = extractvalue %dx.types.CBufRet.f32 %853, 2
  %857 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %860 = fsub fast float %719, %859
  %861 = extractvalue %dx.types.CBufRet.f32 %858, 2
  %862 = fmul fast float %860, %861
  %863 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %864 = fmul fast float %766, %746
  %865 = fmul fast float %864, %762
  %866 = fmul fast float %865, %852
  %867 = fmul fast float %866, %863
  %868 = fmul fast float %867, %854
  %869 = fmul fast float %867, %855
  %870 = fmul fast float %867, %856
  %871 = fadd fast float %868, %658
  %872 = fadd fast float %869, %659
  %873 = fadd fast float %870, %660
  %874 = fmul fast float %867, %857
  %875 = fadd fast float %874, %661
  %876 = fadd fast float %867, %662
  br label %877

; <label>:877                                     ; preds = %851, %695
  %878 = phi float [ %871, %851 ], [ %658, %695 ]
  %879 = phi float [ %872, %851 ], [ %659, %695 ]
  %880 = phi float [ %873, %851 ], [ %660, %695 ]
  %881 = phi float [ %875, %851 ], [ %661, %695 ]
  %882 = phi float [ %876, %851 ], [ %662, %695 ]
  %883 = and i32 %355, 1
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %1161, label %885, !dx.controlflow.hints !85

; <label>:885                                     ; preds = %877
  %886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.i32 %886, 1
  %888 = and i32 %887, 1
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %965, label %890, !dx.controlflow.hints !86

; <label>:890                                     ; preds = %885
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 3
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 0
  %895 = extractvalue %dx.types.CBufRet.f32 %893, 1
  %896 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 3
  %905 = and i32 %887, 2
  %906 = extractvalue %dx.types.CBufRet.i32 %886, 0
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %944, label %908

; <label>:908                                     ; preds = %890
  br label %909

; <label>:909                                     ; preds = %909, %908
  %910 = phi float [ %938, %909 ], [ 0.000000e+00, %908 ]
  %911 = phi float [ %937, %909 ], [ 1.000000e+06, %908 ]
  %912 = phi i32 [ %939, %909 ], [ 0, %908 ]
  %913 = add i32 %912, 171
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %913)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = extractvalue %dx.types.CBufRet.f32 %914, 1
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %919 = extractvalue %dx.types.CBufRet.f32 %914, 2
  %920 = fsub fast float %194, %915
  %921 = fsub fast float %195, %916
  %922 = fmul fast float %920, %920
  %923 = fmul fast float %921, %921
  %924 = fadd fast float %922, %923
  %925 = call float @dx.op.unary.f32(i32 24, float %924)  ; Sqrt(value)
  %926 = fsub fast float %925, %919
  %927 = icmp ne i32 %905, 0
  %928 = fsub fast float -0.000000e+00, %895
  %929 = select i1 %927, float %928, float %895
  %930 = fmul fast float %926, %929
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = fmul fast float %931, %894
  %933 = fsub fast float %918, %196
  %934 = fmul fast float %933, %892
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = fmul fast float %932, %935
  %937 = call float @dx.op.binary.f32(i32 36, float %911, float %926)  ; FMin(a,b)
  %938 = call float @dx.op.binary.f32(i32 35, float %910, float %936)  ; FMax(a,b)
  %939 = add nuw nsw i32 %912, 1
  %940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.i32 %940, 0
  %942 = icmp ult i32 %939, %941
  br i1 %942, label %909, label %943

; <label>:943                                     ; preds = %909
  br label %944

; <label>:944                                     ; preds = %943, %890
  %945 = phi float [ 0.000000e+00, %890 ], [ %938, %943 ]
  %946 = phi float [ 1.000000e+06, %890 ], [ %937, %943 ]
  %947 = fadd fast float %945, %882
  %948 = fmul fast float %946, %904
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = fsub fast float %900, %896
  %951 = fsub fast float %901, %897
  %952 = fsub fast float %902, %898
  %953 = fmul fast float %949, %950
  %954 = fmul fast float %949, %951
  %955 = fmul fast float %949, %952
  %956 = fadd fast float %953, %896
  %957 = fadd fast float %954, %897
  %958 = fadd fast float %955, %898
  %959 = fmul fast float %956, %945
  %960 = fmul fast float %957, %945
  %961 = fmul fast float %958, %945
  %962 = fadd fast float %959, %878
  %963 = fadd fast float %960, %879
  %964 = fadd fast float %961, %880
  br label %1161

; <label>:965                                     ; preds = %885
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 3
  %969 = fmul fast float %967, %194
  %970 = fmul fast float %968, %195
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %974 = fadd fast float %969, %972
  %975 = fadd fast float %970, %973
  %976 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %977 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  %978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 0
  %982 = fmul fast float %981, %979
  %983 = fsub fast float %974, %976
  %984 = fsub fast float %975, %977
  %985 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %986 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %987 = fmul fast float %985, %983
  %988 = fmul fast float %986, %984
  %989 = fmul fast float %987, %987
  %990 = fmul fast float %988, %988
  %991 = fadd fast float %989, %990
  %992 = call float @dx.op.unary.f32(i32 24, float %991)  ; Sqrt(value)
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 3
  %995 = fmul fast float %994, %992
  %996 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %997 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %998 = fsub fast float %997, %982
  %999 = fmul fast float %998, %996
  %1000 = extractvalue %dx.types.CBufRet.f32 %980, 1
  %1001 = fsub fast float %196, %982
  %1002 = fsub fast float %1001, %1000
  %1003 = fsub fast float %1002, %999
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1006 = fsub fast float %1003, %1005
  %1007 = fcmp fast olt float %1006, 0.000000e+00
  %1008 = extractvalue %dx.types.CBufRet.i32 %886, 0
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1060, label %1010

; <label>:1010                                    ; preds = %965
  br label %1011

; <label>:1011                                    ; preds = %1049, %1010
  %1012 = phi i32 [ %1055, %1049 ], [ 1, %1010 ]
  %1013 = phi i32 [ %1056, %1049 ], [ 0, %1010 ]
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.i32 %1016, 1
  %1018 = and i32 %1017, 8
  %1019 = icmp eq i32 %1018, 0
  %1020 = fcmp fast ogt float %1015, %1003
  %1021 = or i1 %1020, %1019
  %1022 = add i32 %1013, 171
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %1022)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  br i1 %1021, label %1027, label %1033, !dx.controlflow.hints !87

; <label>:1027                                    ; preds = %1011
  %1028 = fsub fast float %1024, %194
  %1029 = fsub fast float %1025, %195
  %1030 = fmul fast float %1028, %1028
  %1031 = fmul fast float %1029, %1029
  %1032 = fadd fast float %1030, %1031
  br label %1049

; <label>:1033                                    ; preds = %1011
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1036 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1037 = fmul fast float %1036, %1035
  %1038 = fsub fast float %1037, %1015
  %1039 = fdiv fast float %1026, %1038
  %1040 = fsub fast float %194, %1024
  %1041 = fsub fast float %195, %1025
  %1042 = fsub fast float %1003, %1015
  %1043 = fmul fast float %1039, %1042
  %1044 = fmul fast float %1040, %1040
  %1045 = fmul fast float %1041, %1041
  %1046 = fadd fast float %1044, %1045
  %1047 = fmul fast float %1043, %1043
  %1048 = fadd fast float %1046, %1047
  br label %1049

; <label>:1049                                    ; preds = %1033, %1027
  %1050 = phi float [ %1032, %1027 ], [ %1048, %1033 ]
  %1051 = call float @dx.op.unary.f32(i32 24, float %1050)  ; Sqrt(value)
  %1052 = fsub float %1026, %1051
  %1053 = fcmp fast olt float %1052, 0.000000e+00
  %1054 = zext i1 %1053 to i32
  %1055 = and i32 %1054, %1012
  %1056 = add i32 %1013, 1
  %1057 = extractvalue %dx.types.CBufRet.i32 %1016, 0
  %1058 = icmp ult i32 %1056, %1057
  br i1 %1058, label %1011, label %1059

; <label>:1059                                    ; preds = %1049
  br label %1060

; <label>:1060                                    ; preds = %1059, %965
  %1061 = phi i32 [ 1, %965 ], [ %1055, %1059 ]
  br label %1062

; <label>:1062                                    ; preds = %1062, %1060
  %1063 = phi i32 [ %1099, %1062 ], [ %1061, %1060 ]
  %1064 = phi i32 [ %1100, %1062 ], [ 0, %1060 ]
  %1065 = add nuw nsw i32 %1064, 191
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %1065)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.CBufRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.CBufRet.f32 %1066, 2
  %1070 = add nuw nsw i32 %1064, 195
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %1070)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1075 = fsub fast float %194, %1067
  %1076 = fsub fast float %195, %1068
  %1077 = fsub fast float %1003, %1069
  %1078 = call float @dx.op.unary.f32(i32 6, float %1075)  ; FAbs(value)
  %1079 = call float @dx.op.unary.f32(i32 6, float %1076)  ; FAbs(value)
  %1080 = call float @dx.op.unary.f32(i32 6, float %1077)  ; FAbs(value)
  %1081 = fsub fast float %1078, %1072
  %1082 = fsub fast float %1079, %1073
  %1083 = fsub fast float %1080, %1074
  %1084 = call float @dx.op.binary.f32(i32 35, float %1081, float 0.000000e+00)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 35, float %1082, float 0.000000e+00)  ; FMax(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1083, float 0.000000e+00)  ; FMax(a,b)
  %1087 = fmul fast float %1084, %1084
  %1088 = fmul fast float %1085, %1085
  %1089 = fadd fast float %1088, %1087
  %1090 = fmul fast float %1086, %1086
  %1091 = fadd fast float %1089, %1090
  %1092 = call float @dx.op.unary.f32(i32 24, float %1091)  ; Sqrt(value)
  %1093 = call float @dx.op.binary.f32(i32 35, float %1082, float %1083)  ; FMax(a,b)
  %1094 = call float @dx.op.binary.f32(i32 35, float %1081, float %1093)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 36, float %1094, float 0.000000e+00)  ; FMin(a,b)
  %1096 = fadd fast float %1095, %1092
  %1097 = fcmp ogt float %1096, -0.000000e+00
  %1098 = zext i1 %1097 to i32
  %1099 = and i32 %1098, %1063
  %1100 = add nuw nsw i32 %1064, 1
  %1101 = icmp eq i32 %1100, 4
  br i1 %1101, label %1102, label %1062

; <label>:1102                                    ; preds = %1062
  %1103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.i32 %1103, 1
  %1105 = lshr i32 %1104, 1
  %1106 = xor i32 %1105, %1099
  %1107 = zext i1 %1007 to i32
  %1108 = and i32 %1106, %1107
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1161, label %1110, !dx.controlflow.hints !88

; <label>:1110                                    ; preds = %1102
  %1111 = fmul fast float %187, %187
  %1112 = fmul fast float %188, %188
  %1113 = fadd fast float %1111, %1112
  %1114 = fmul fast float %189, %189
  %1115 = fadd fast float %1113, %1114
  %1116 = call float @dx.op.unary.f32(i32 24, float %1115)  ; Sqrt(value)
  %1117 = and i32 %887, 4
  %1118 = icmp ne i32 %1117, 0
  %1119 = select i1 %1118, float %1116, float 1.000000e+00
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1122 = fsub fast float %1119, %1121
  %1123 = extractvalue %dx.types.CBufRet.f32 %1120, 3
  %1124 = fmul fast float %1122, %1123
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1130 = fsub fast float %1129, %1003
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 3
  %1133 = fmul fast float %1130, %1132
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1135 = fmul fast float %1134, %1127
  %1136 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1137 = fsub fast float %1116, %1136
  %1138 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1139 = fmul fast float %1137, %1138
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1141 = fsub fast float 1.000000e+00, %1125
  %1142 = fmul fast float %1140, %1141
  %1143 = fadd fast float %1142, %1125
  %1144 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1145 = fsub fast float %1135, %1144
  %1146 = fmul fast float %1145, %1143
  %1147 = fadd fast float %1146, %1144
  %1148 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1149 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1150 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1151 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1152 = fadd fast float %1147, %882
  %1153 = fmul fast float %1147, %1148
  %1154 = fmul fast float %1147, %1149
  %1155 = fmul fast float %1147, %1150
  %1156 = fadd fast float %1153, %878
  %1157 = fadd fast float %1154, %879
  %1158 = fadd fast float %1155, %880
  %1159 = fmul fast float %1147, %1151
  %1160 = fadd fast float %1159, %881
  br label %1161

; <label>:1161                                    ; preds = %1110, %1102, %944, %877, %657
  %1162 = phi float [ %658, %657 ], [ %878, %877 ], [ %962, %944 ], [ %1156, %1110 ], [ %878, %1102 ]
  %1163 = phi float [ %659, %657 ], [ %879, %877 ], [ %963, %944 ], [ %1157, %1110 ], [ %879, %1102 ]
  %1164 = phi float [ %660, %657 ], [ %880, %877 ], [ %964, %944 ], [ %1158, %1110 ], [ %880, %1102 ]
  %1165 = phi float [ %661, %657 ], [ %881, %877 ], [ %881, %944 ], [ %1160, %1110 ], [ %881, %1102 ]
  %1166 = phi float [ %662, %657 ], [ %882, %877 ], [ %947, %944 ], [ %1152, %1110 ], [ %882, %1102 ]
  %1167 = and i32 %355, 32
  %1168 = icmp ne i32 %1167, 0
  %1169 = and i1 %245, %1168
  br i1 %1169, label %1170, label %1212, !dx.controlflow.hints !89

; <label>:1170                                    ; preds = %1161
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.CBufRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1175 = fsub fast float %194, %1172
  %1176 = fadd fast float %1175, %1174
  %1177 = fsub fast float %195, %1173
  %1178 = fadd fast float %1177, %1174
  %1179 = extractvalue %dx.types.CBufRet.f32 %1171, 3
  %1180 = fmul fast float %1176, %1179
  %1181 = fmul fast float %1178, %1179
  %1182 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1183 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1184 = fsub fast float 1.000000e+00, %1182
  %1185 = fsub fast float 1.000000e+00, %1183
  %1186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %40, float %1184, float %1185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.ResRet.f32 %1186, 1
  %1189 = extractvalue %dx.types.ResRet.f32 %1186, 2
  %1190 = fmul fast float %1187, 0x3F847AE140000000
  %1191 = fmul fast float %1188, 0x3F847AE140000000
  %1192 = fmul fast float %1189, 0x3F847AE140000000
  %1193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %40, float %1184, float %1185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %40, float %1184, float %1185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1200 = fadd fast float %1194, %1187
  %1201 = fmul fast float %1200, 0x3F847AE140000000
  %1202 = fadd fast float %1195, %1188
  %1203 = fmul fast float %1202, 0x3F847AE140000000
  %1204 = fadd fast float %1196, %1189
  %1205 = fmul fast float %1204, 0x3F847AE140000000
  %1206 = fadd fast float %1199, %1166
  %1207 = fadd fast float %1190, %1162
  %1208 = fadd fast float %1191, %1163
  %1209 = fadd fast float %1192, %1164
  %1210 = fmul fast float %1198, %1199
  %1211 = fadd fast float %1210, %1165
  br label %1212

; <label>:1212                                    ; preds = %1170, %1161
  %1213 = phi float [ %1207, %1170 ], [ %1162, %1161 ]
  %1214 = phi float [ %1208, %1170 ], [ %1163, %1161 ]
  %1215 = phi float [ %1209, %1170 ], [ %1164, %1161 ]
  %1216 = phi float [ %1211, %1170 ], [ %1165, %1161 ]
  %1217 = phi float [ %1206, %1170 ], [ %1166, %1161 ]
  %1218 = phi float [ %1201, %1170 ], [ 0.000000e+00, %1161 ]
  %1219 = phi float [ %1203, %1170 ], [ 0.000000e+00, %1161 ]
  %1220 = phi float [ %1205, %1170 ], [ 0.000000e+00, %1161 ]
  %1221 = and i32 %355, 16
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %2014, label %1223, !dx.controlflow.hints !90

; <label>:1223                                    ; preds = %1212
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.CBufRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 3
  %1234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.i32 %1234, 0
  %1236 = icmp ne i32 %1235, 0
  %1237 = zext i1 %1236 to i32
  %1238 = extractvalue %dx.types.CBufRet.i32 %1234, 1
  %1239 = icmp ne i32 %1238, 0
  %1240 = zext i1 %1239 to i32
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = bitcast float %1242 to i32
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1294, label %1245

; <label>:1245                                    ; preds = %1223
  br label %1246

; <label>:1246                                    ; preds = %1289, %1245
  %1247 = phi i32 [ %1290, %1289 ], [ 0, %1245 ]
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = bitcast float %1249 to i32
  %1251 = call i32 @dx.op.tertiary.i32(i32 49, i32 %353, i32 %1250, i32 %1247)  ; UMad(a,b,c)
  %1252 = shl i32 %1251, 2
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  br label %1255

; <label>:1255                                    ; preds = %1258, %1246
  %1256 = phi i32 [ %1254, %1246 ], [ %1263, %1258 ]
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1289, label %1258

; <label>:1258                                    ; preds = %1255
  %1259 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1256)  ; FirstbitLo(value)
  %1260 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1247, i32 %1259)  ; UMad(a,b,c)
  %1261 = and i32 %1259, 31
  %1262 = shl i32 1, %1261
  %1263 = xor i32 %1262, %1256
  %1264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1260, i32 0)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.ResRet.f32 %1264, 2
  %1268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1260, i32 16)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.ResRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.ResRet.f32 %1268, 2
  %1272 = fsub fast float %1265, %1269
  %1273 = fsub fast float %1266, %1270
  %1274 = fsub fast float %1267, %1271
  %1275 = fadd fast float %1269, %1265
  %1276 = fadd fast float %1270, %1266
  %1277 = fadd fast float %1271, %1267
  %1278 = fcmp fast ogt float %194, %1272
  %1279 = fcmp fast ogt float %195, %1273
  %1280 = fcmp fast ogt float %196, %1274
  %1281 = and i1 %1278, %1279
  %1282 = and i1 %1280, %1281
  %1283 = fcmp fast olt float %194, %1275
  %1284 = fcmp fast olt float %195, %1276
  %1285 = fcmp fast olt float %196, %1277
  %1286 = and i1 %1283, %1284
  %1287 = and i1 %1285, %1286
  %1288 = and i1 %1282, %1287
  br i1 %1288, label %1292, label %1255, !dx.controlflow.hints !91

; <label>:1289                                    ; preds = %1255
  %1290 = add i32 %1247, 1
  %1291 = icmp ult i32 %1290, %1250
  br i1 %1291, label %1246, label %1293, !llvm.loop !92

; <label>:1292                                    ; preds = %1258
  br label %1294

; <label>:1293                                    ; preds = %1289
  br label %1294

; <label>:1294                                    ; preds = %1293, %1292, %1223
  %1295 = phi i32 [ 255, %1223 ], [ %1260, %1292 ], [ 255, %1293 ]
  %1296 = icmp eq i32 %1295, 255
  br i1 %1296, label %1316, label %1297, !dx.controlflow.hints !94

; <label>:1297                                    ; preds = %1294
  %1298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 32)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1298, 2
  %1302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 132)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 136)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 152)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1295, i32 156)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1295, i32 160)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = icmp ne i32 %1309, 0
  %1313 = zext i1 %1312 to i32
  %1314 = icmp ne i32 %1311, 0
  %1315 = zext i1 %1314 to i32
  br label %1316

; <label>:1316                                    ; preds = %1297, %1294
  %1317 = phi float [ %1299, %1297 ], [ %1225, %1294 ]
  %1318 = phi float [ %1300, %1297 ], [ %1226, %1294 ]
  %1319 = phi float [ %1301, %1297 ], [ %1227, %1294 ]
  %1320 = phi float [ %1303, %1297 ], [ %1229, %1294 ]
  %1321 = phi float [ %1305, %1297 ], [ %1231, %1294 ]
  %1322 = phi float [ %1307, %1297 ], [ %1233, %1294 ]
  %1323 = phi i32 [ %1313, %1297 ], [ %1237, %1294 ]
  %1324 = phi i32 [ %1315, %1297 ], [ %1240, %1294 ]
  %1325 = extractvalue %dx.types.CBufRet.f32 %1230, 0
  %1326 = extractvalue %dx.types.CBufRet.f32 %1230, 1
  %1327 = fsub fast float %194, %1325
  %1328 = fsub fast float %195, %1326
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 2
  %1331 = extractvalue %dx.types.CBufRet.f32 %1329, 3
  %1332 = fmul fast float %1327, %1330
  %1333 = fmul fast float %1328, %1331
  %1334 = call float @dx.op.binary.f32(i32 36, float %1332, float %1333)  ; FMin(a,b)
  %1335 = fcmp fast olt float %1334, 0.000000e+00
  %1336 = call float @dx.op.binary.f32(i32 35, float %1332, float %1333)  ; FMax(a,b)
  %1337 = fcmp fast ogt float %1336, 1.000000e+00
  %1338 = or i1 %1335, %1337
  %1339 = extractvalue %dx.types.CBufRet.f32 %1230, 2
  %1340 = fcmp fast olt float %196, %1339
  %1341 = or i1 %1338, %1340
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 3
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 0
  %1346 = fadd fast float %1345, %1343
  %1347 = fcmp fast ogt float %196, %1346
  %1348 = or i1 %1341, %1347
  br i1 %1348, label %1633, label %1349, !dx.controlflow.hints !95

; <label>:1349                                    ; preds = %1316
  %1350 = fsub fast float 1.000000e+00, %1333
  %1351 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 3
  %1354 = extractvalue %dx.types.CBufRet.f32 %1352, 2
  %1355 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1360 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  br i1 %1296, label %1376, label %1361, !dx.controlflow.hints !96

; <label>:1361                                    ; preds = %1349
  %1362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 48)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 104)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 108)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 112)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 116)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 120)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  br label %1376

; <label>:1376                                    ; preds = %1361, %1349
  %1377 = phi float [ %1369, %1361 ], [ %1351, %1349 ]
  %1378 = phi float [ %1373, %1361 ], [ %1353, %1349 ]
  %1379 = phi float [ %1375, %1361 ], [ %1354, %1349 ]
  %1380 = phi float [ %1371, %1361 ], [ %1355, %1349 ]
  %1381 = phi float [ %1363, %1361 ], [ %1357, %1349 ]
  %1382 = phi float [ %1364, %1361 ], [ %1358, %1349 ]
  %1383 = phi float [ %1365, %1361 ], [ %1359, %1349 ]
  %1384 = phi float [ %1367, %1361 ], [ %1360, %1349 ]
  %1385 = fcmp fast oeq float %1377, 0.000000e+00
  br i1 %1385, label %1501, label %1386, !dx.controlflow.hints !97

; <label>:1386                                    ; preds = %1376
  %1387 = fcmp fast ogt float %1378, 0.000000e+00
  %1388 = fcmp fast oeq float %436, 0.000000e+00
  br i1 %1388, label %1393, label %1389, !dx.controlflow.hints !80

; <label>:1389                                    ; preds = %1386
  %1390 = extractvalue %dx.types.CBufRet.f32 %1228, 1
  %1391 = fmul fast float %1390, %436
  %1392 = call float @dx.op.unary.f32(i32 23, float %1391)  ; Log(value)
  br label %1393

; <label>:1393                                    ; preds = %1389, %1386
  %1394 = phi float [ %1392, %1389 ], [ 0.000000e+00, %1386 ]
  br i1 %1388, label %1399, label %1395, !dx.controlflow.hints !80

; <label>:1395                                    ; preds = %1393
  %1396 = extractvalue %dx.types.CBufRet.f32 %1228, 0
  %1397 = fmul fast float %1396, %436
  %1398 = call float @dx.op.unary.f32(i32 23, float %1397)  ; Log(value)
  br label %1399

; <label>:1399                                    ; preds = %1395, %1393
  %1400 = phi float [ %1398, %1395 ], [ 0.000000e+00, %1393 ]
  br i1 %1387, label %1401, label %1463, !dx.controlflow.hints !98

; <label>:1401                                    ; preds = %1399
  %1402 = fcmp fast ogt float %1379, 0.000000e+00
  br i1 %1402, label %1403, label %1413, !dx.controlflow.hints !99

; <label>:1403                                    ; preds = %1401
  %1404 = fmul fast float %1379, %1332
  %1405 = fmul fast float %1379, %1350
  %1406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %37, float %1404, float %1405, float undef, float undef, i32 0, i32 0, i32 undef, float %1400)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.ResRet.f32 %1406, 1
  %1409 = fmul fast float %1407, 2.000000e+00
  %1410 = fmul fast float %1408, 2.000000e+00
  %1411 = fadd fast float %1409, -1.000000e+00
  %1412 = fadd fast float %1410, -1.000000e+00
  br label %1434

; <label>:1413                                    ; preds = %1401
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 3
  %1416 = fmul fast float %1415, %1332
  %1417 = fmul fast float %1415, %1350
  %1418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %39, float %1416, float %1417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.ResRet.f32 %1418, 2
  %1422 = fmul fast float %1419, 2.000000e+00
  %1423 = fmul fast float %1420, 2.000000e+00
  %1424 = fmul fast float %1421, 2.000000e+00
  %1425 = fadd fast float %1422, -1.000000e+00
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = extractvalue %dx.types.CBufRet.f32 %1344, 1
  %1429 = fmul fast float %1425, %1428
  %1430 = fmul fast float %1426, %1428
  %1431 = extractvalue %dx.types.CBufRet.f32 %1344, 2
  %1432 = fmul fast float %1431, 5.000000e-01
  %1433 = fmul fast float %1432, %1427
  br label %1434

; <label>:1434                                    ; preds = %1413, %1403
  %1435 = phi float [ %1411, %1403 ], [ %1429, %1413 ]
  %1436 = phi float [ %1412, %1403 ], [ %1430, %1413 ]
  %1437 = phi float [ 0.000000e+00, %1403 ], [ %1433, %1413 ]
  %1438 = fmul fast float %1377, %194
  %1439 = fmul fast float %1377, %195
  %1440 = fmul fast float %1377, %196
  %1441 = call float @dx.op.unary.f32(i32 22, float %1378)  ; Frc(value)
  %1442 = fmul fast float %1441, %1435
  %1443 = fmul fast float %1441, %1436
  %1444 = fmul fast float %1441, %1437
  %1445 = fsub fast float %1438, %1442
  %1446 = fsub fast float %1439, %1443
  %1447 = fsub fast float %1440, %1444
  %1448 = fadd fast float %1378, 5.000000e-01
  %1449 = call float @dx.op.unary.f32(i32 22, float %1448)  ; Frc(value)
  %1450 = fmul fast float %1449, %1435
  %1451 = fmul fast float %1449, %1436
  %1452 = fmul fast float %1449, %1437
  %1453 = fadd fast float %1438, -5.000000e-01
  %1454 = fsub fast float %1453, %1450
  %1455 = fadd fast float %1439, -5.000000e-01
  %1456 = fsub fast float %1455, %1451
  %1457 = fadd fast float %1440, -5.000000e-01
  %1458 = fsub fast float %1457, %1452
  %1459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %37, float %1454, float %1456, float %1458, float undef, i32 0, i32 0, i32 0, float %1394)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = extractvalue %dx.types.ResRet.f32 %1459, 1
  %1462 = fadd fast float %1460, %1380
  br label %1473

; <label>:1463                                    ; preds = %1399
  %1464 = fmul fast float %1384, %1381
  %1465 = fmul fast float %1384, %1382
  %1466 = fmul fast float %1384, %1383
  %1467 = fsub fast float %194, %1464
  %1468 = fsub fast float %195, %1465
  %1469 = fsub fast float %196, %1466
  %1470 = fmul fast float %1467, %1377
  %1471 = fmul fast float %1468, %1377
  %1472 = fmul fast float %1469, %1377
  br label %1473

; <label>:1473                                    ; preds = %1463, %1434
  %1474 = phi float [ %1445, %1434 ], [ %1470, %1463 ]
  %1475 = phi float [ %1446, %1434 ], [ %1471, %1463 ]
  %1476 = phi float [ %1447, %1434 ], [ %1472, %1463 ]
  %1477 = phi float [ %1462, %1434 ], [ 0.000000e+00, %1463 ]
  %1478 = phi float [ %1461, %1434 ], [ 0.000000e+00, %1463 ]
  %1479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %37, float %1474, float %1475, float %1476, float undef, i32 0, i32 0, i32 0, float %1394)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.ResRet.f32 %1479, 1
  %1482 = fadd fast float %1480, %1380
  br i1 %1387, label %1483, label %1494, !dx.controlflow.hints !100

; <label>:1483                                    ; preds = %1473
  %1484 = call float @dx.op.unary.f32(i32 22, float %1378)  ; Frc(value)
  %1485 = fmul fast float %1484, 2.000000e+00
  %1486 = fadd fast float %1485, -1.000000e+00
  %1487 = call float @dx.op.unary.f32(i32 6, float %1486)  ; FAbs(value)
  %1488 = fsub fast float %1477, %1482
  %1489 = fmul fast float %1487, %1488
  %1490 = fadd fast float %1489, %1482
  %1491 = fsub fast float %1478, %1481
  %1492 = fmul fast float %1487, %1491
  %1493 = fadd fast float %1492, %1481
  br label %1494

; <label>:1494                                    ; preds = %1483, %1473
  %1495 = phi float [ %1490, %1483 ], [ %1482, %1473 ]
  %1496 = phi float [ %1493, %1483 ], [ %1481, %1473 ]
  %1497 = fsub fast float %1495, %1496
  %1498 = fsub fast float 1.000000e+00, %1496
  %1499 = fdiv fast float %1497, %1498
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  br label %1501

; <label>:1501                                    ; preds = %1494, %1376
  %1502 = phi float [ %1500, %1494 ], [ 1.000000e+00, %1376 ]
  %1503 = fcmp fast oeq float %436, 0.000000e+00
  br i1 %1503, label %1508, label %1504, !dx.controlflow.hints !80

; <label>:1504                                    ; preds = %1501
  %1505 = extractvalue %dx.types.CBufRet.f32 %1228, 2
  %1506 = fmul fast float %1505, %436
  %1507 = call float @dx.op.unary.f32(i32 23, float %1506)  ; Log(value)
  br label %1508

; <label>:1508                                    ; preds = %1504, %1501
  %1509 = phi float [ %1507, %1504 ], [ 0.000000e+00, %1501 ]
  %1510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %38, float %1332, float %1350, float undef, float undef, i32 0, i32 0, i32 undef, float %1509)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1511 = extractvalue %dx.types.ResRet.f32 %1510, 0
  %1512 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %40, float %1332, float %1350, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.ResRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.ResRet.f32 %1512, 2
  %1516 = extractvalue %dx.types.ResRet.f32 %1512, 3
  %1517 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %40, float %1332, float %1350, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1518 = extractvalue %dx.types.ResRet.f32 %1517, 0
  %1519 = extractvalue %dx.types.ResRet.f32 %1517, 1
  %1520 = extractvalue %dx.types.ResRet.f32 %1517, 2
  %1521 = extractvalue %dx.types.ResRet.f32 %1517, 3
  %1522 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %40, float %1332, float %1350, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1523 = extractvalue %dx.types.ResRet.f32 %1522, 0
  %1524 = extractvalue %dx.types.ResRet.f32 %1522, 1
  %1525 = extractvalue %dx.types.ResRet.f32 %1522, 2
  %1526 = extractvalue %dx.types.ResRet.f32 %1522, 3
  %1527 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %40, float %1332, float %1350, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = extractvalue %dx.types.ResRet.f32 %1527, 1
  %1530 = extractvalue %dx.types.ResRet.f32 %1527, 2
  %1531 = extractvalue %dx.types.ResRet.f32 %1527, 3
  %1532 = fadd fast float %1513, %1514
  %1533 = fadd fast float %1532, %1515
  %1534 = fadd fast float %1533, %1516
  %1535 = fmul fast float %1518, %1513
  %1536 = fmul fast float %1519, %1514
  %1537 = fadd fast float %1535, %1536
  %1538 = fmul fast float %1520, %1515
  %1539 = fadd fast float %1537, %1538
  %1540 = fmul fast float %1521, %1516
  %1541 = fadd fast float %1539, %1540
  %1542 = fmul fast float %1523, %1513
  %1543 = fmul fast float %1524, %1514
  %1544 = fadd fast float %1542, %1543
  %1545 = fmul fast float %1525, %1515
  %1546 = fadd fast float %1544, %1545
  %1547 = fmul fast float %1526, %1516
  %1548 = fadd fast float %1546, %1547
  %1549 = fmul fast float %1528, %1513
  %1550 = fmul fast float %1529, %1514
  %1551 = fadd fast float %1549, %1550
  %1552 = fmul fast float %1530, %1515
  %1553 = fadd fast float %1551, %1552
  %1554 = fmul fast float %1531, %1516
  %1555 = fadd fast float %1553, %1554
  %1556 = fcmp fast ogt float %1534, 0.000000e+00
  %1557 = fdiv fast float %1541, %1534
  %1558 = select i1 %1556, float %1557, float 0.000000e+00
  %1559 = fdiv fast float %1548, %1534
  %1560 = select i1 %1556, float %1559, float 0.000000e+00
  %1561 = fdiv fast float %1555, %1534
  %1562 = select i1 %1556, float %1561, float 0.000000e+00
  %1563 = fcmp fast ogt float %196, %1560
  %1564 = fcmp fast olt float %196, %1558
  %1565 = and i1 %1564, %1563
  br i1 %1565, label %1566, label %1633, !dx.controlflow.hints !101

; <label>:1566                                    ; preds = %1508
  %1567 = extractvalue %dx.types.CBufRet.f32 %1342, 0
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 2
  %1570 = extractvalue %dx.types.CBufRet.f32 %1568, 3
  br i1 %1296, label %1581, label %1571, !dx.controlflow.hints !102

; <label>:1571                                    ; preds = %1566
  %1572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 60)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 64)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = extractvalue %dx.types.ResRet.f32 %1574, 1
  %1577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 72)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 96)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  br label %1581

; <label>:1581                                    ; preds = %1571, %1566
  %1582 = phi float [ %1573, %1571 ], [ %1345, %1566 ]
  %1583 = phi float [ %1578, %1571 ], [ %1343, %1566 ]
  %1584 = phi float [ %1580, %1571 ], [ %1567, %1566 ]
  %1585 = phi float [ %1575, %1571 ], [ %1569, %1566 ]
  %1586 = phi float [ %1576, %1571 ], [ %1570, %1566 ]
  %1587 = call float @dx.op.binary.f32(i32 35, float %1511, float 0.000000e+00)  ; FMax(a,b)
  %1588 = call float @dx.op.binary.f32(i32 36, float %1587, float 1.000000e+00)  ; FMin(a,b)
  %1589 = call float @dx.op.unary.f32(i32 24, float %1588)  ; Sqrt(value)
  %1590 = call float @dx.op.binary.f32(i32 35, float %1562, float 0x3F847AE140000000)  ; FMax(a,b)
  %1591 = fsub fast float %1558, %196
  %1592 = fsub fast float %196, %1560
  %1593 = call float @dx.op.binary.f32(i32 36, float %1592, float %1591)  ; FMin(a,b)
  %1594 = fdiv fast float %1593, %1590
  %1595 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1596 = fsub fast float %196, %1583
  %1597 = fdiv fast float %1596, %1582
  %1598 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1599 = fsub fast float 1.000000e+00, %1598
  %1600 = fmul float %1595, %1599
  %1601 = fmul float %1600, %1600
  %1602 = fmul fast float %1589, %1502
  %1603 = fmul fast float %1602, %1601
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 2
  %1606 = extractvalue %dx.types.CBufRet.f32 %1604, 1
  %1607 = fsub fast float %1603, %1606
  %1608 = fsub fast float %1605, %1606
  %1609 = fdiv fast float %1607, %1608
  %1610 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1611 = fmul fast float %1610, %1584
  %1612 = fcmp fast ogt float %1586, 0.000000e+00
  br i1 %1612, label %1613, label %1633, !dx.controlflow.hints !103

; <label>:1613                                    ; preds = %1581
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.CBufRet.f32 %1614, 2
  %1618 = fsub fast float %194, %1615
  %1619 = fsub fast float %195, %1616
  %1620 = fsub fast float %196, %1617
  %1621 = fmul fast float %1618, %1618
  %1622 = fmul fast float %1619, %1619
  %1623 = fadd fast float %1621, %1622
  %1624 = fmul fast float %1620, %1620
  %1625 = fadd fast float %1623, %1624
  %1626 = call float @dx.op.unary.f32(i32 24, float %1625)  ; Sqrt(value)
  %1627 = fsub fast float %1626, %1585
  %1628 = fsub fast float %1586, %1585
  %1629 = fdiv fast float %1627, %1628
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = fmul fast float %1630, %1630
  %1632 = fmul fast float %1631, %1611
  br label %1633

; <label>:1633                                    ; preds = %1613, %1581, %1508, %1316
  %1634 = phi float [ 0.000000e+00, %1316 ], [ 0.000000e+00, %1508 ], [ %1632, %1613 ], [ %1611, %1581 ]
  %1635 = fcmp fast oeq float %1634, 0.000000e+00
  br i1 %1635, label %2014, label %1636, !dx.controlflow.hints !104

; <label>:1636                                    ; preds = %1633
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 0
  %1639 = extractvalue %dx.types.CBufRet.f32 %1637, 1
  %1640 = extractvalue %dx.types.CBufRet.f32 %1637, 2
  %1641 = fsub fast float %194, %1638
  %1642 = fadd fast float %1641, %1640
  %1643 = fsub fast float %195, %1639
  %1644 = fadd fast float %1643, %1640
  %1645 = extractvalue %dx.types.CBufRet.f32 %1637, 3
  %1646 = fmul fast float %1642, %1645
  %1647 = fmul fast float %1644, %1645
  %1648 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1649 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1650 = fsub fast float 1.000000e+00, %1648
  %1651 = fsub fast float 1.000000e+00, %1649
  %1652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %40, float %1650, float %1651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1653 = extractvalue %dx.types.ResRet.f32 %1652, 0
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1656 = fmul fast float %1655, %1653
  %1657 = extractvalue %dx.types.CBufRet.f32 %1654, 3
  %1658 = fadd fast float %1657, %1656
  %1659 = fcmp fast ogt float %1653, 0.000000e+00
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = and i32 %1661, 32768
  %1663 = icmp ne i32 %1662, 0
  %1664 = and i1 %1659, %1663
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 3
  %1667 = fadd fast float %1666, %1658
  %1668 = fcmp fast ole float %196, %1667
  %1669 = and i1 %1664, %1668
  %1670 = xor i1 %1669, true
  %1671 = icmp ne i32 %1323, 0
  %1672 = and i1 %1671, %1670
  %1673 = icmp ne i32 %1324, 0
  %1674 = and i1 %1673, %1669
  %1675 = or i1 %1672, %1674
  br i1 %1675, label %2014, label %1676, !dx.controlflow.hints !105

; <label>:1676                                    ; preds = %1636
  %1677 = fsub fast float %196, %1658
  %1678 = call float @dx.op.unary.f32(i32 6, float %1677)  ; FAbs(value)
  %1679 = fdiv fast float %1678, %1322
  %1680 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1681 = fmul fast float %1680, %1634
  %1682 = fcmp fast une float %1320, 0.000000e+00
  br i1 %1682, label %1683, label %2002, !dx.controlflow.hints !106

; <label>:1683                                    ; preds = %1676
  %1684 = fmul fast float %1320, %122
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.CBufRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.CBufRet.f32 %1685, 2
  %1689 = fmul fast float %1686, %1684
  %1690 = fmul fast float %1687, %1684
  %1691 = fmul fast float %1688, %1684
  %1692 = fadd fast float %1689, %194
  %1693 = fadd fast float %1690, %195
  %1694 = fadd fast float %1691, %196
  %1695 = fmul fast float %1320, 2.000000e+00
  %1696 = call float @dx.op.binary.f32(i32 35, float %436, float %1695)  ; FMax(a,b)
  %1697 = fsub fast float %1692, %1325
  %1698 = fsub fast float %1693, %1326
  %1699 = fmul fast float %1697, %1330
  %1700 = fmul fast float %1698, %1331
  %1701 = call float @dx.op.binary.f32(i32 36, float %1699, float %1700)  ; FMin(a,b)
  %1702 = fcmp fast olt float %1701, 0.000000e+00
  %1703 = call float @dx.op.binary.f32(i32 35, float %1699, float %1700)  ; FMax(a,b)
  %1704 = fcmp fast ogt float %1703, 1.000000e+00
  %1705 = or i1 %1702, %1704
  %1706 = fcmp fast olt float %1694, %1339
  %1707 = or i1 %1705, %1706
  %1708 = fcmp fast ogt float %1694, %1346
  %1709 = or i1 %1707, %1708
  br i1 %1709, label %1994, label %1710, !dx.controlflow.hints !95

; <label>:1710                                    ; preds = %1683
  %1711 = fsub fast float 1.000000e+00, %1700
  %1712 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 3
  %1715 = extractvalue %dx.types.CBufRet.f32 %1713, 2
  %1716 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.CBufRet.f32 %1717, 2
  %1721 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  br i1 %1296, label %1737, label %1722, !dx.controlflow.hints !96

; <label>:1722                                    ; preds = %1710
  %1723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 48)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.ResRet.f32 %1723, 2
  %1727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 104)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 108)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 112)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.f32 %1731, 0
  %1733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 116)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 0
  %1735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 120)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.f32 %1735, 0
  br label %1737

; <label>:1737                                    ; preds = %1722, %1710
  %1738 = phi float [ %1730, %1722 ], [ %1712, %1710 ]
  %1739 = phi float [ %1734, %1722 ], [ %1714, %1710 ]
  %1740 = phi float [ %1736, %1722 ], [ %1715, %1710 ]
  %1741 = phi float [ %1732, %1722 ], [ %1716, %1710 ]
  %1742 = phi float [ %1724, %1722 ], [ %1718, %1710 ]
  %1743 = phi float [ %1725, %1722 ], [ %1719, %1710 ]
  %1744 = phi float [ %1726, %1722 ], [ %1720, %1710 ]
  %1745 = phi float [ %1728, %1722 ], [ %1721, %1710 ]
  %1746 = fcmp fast oeq float %1738, 0.000000e+00
  br i1 %1746, label %1862, label %1747, !dx.controlflow.hints !97

; <label>:1747                                    ; preds = %1737
  %1748 = fcmp fast ogt float %1739, 0.000000e+00
  %1749 = fcmp fast oeq float %1696, 0.000000e+00
  br i1 %1749, label %1754, label %1750, !dx.controlflow.hints !80

; <label>:1750                                    ; preds = %1747
  %1751 = extractvalue %dx.types.CBufRet.f32 %1228, 1
  %1752 = fmul fast float %1751, %1696
  %1753 = call float @dx.op.unary.f32(i32 23, float %1752)  ; Log(value)
  br label %1754

; <label>:1754                                    ; preds = %1750, %1747
  %1755 = phi float [ %1753, %1750 ], [ 0.000000e+00, %1747 ]
  br i1 %1749, label %1760, label %1756, !dx.controlflow.hints !80

; <label>:1756                                    ; preds = %1754
  %1757 = extractvalue %dx.types.CBufRet.f32 %1228, 0
  %1758 = fmul fast float %1757, %1696
  %1759 = call float @dx.op.unary.f32(i32 23, float %1758)  ; Log(value)
  br label %1760

; <label>:1760                                    ; preds = %1756, %1754
  %1761 = phi float [ %1759, %1756 ], [ 0.000000e+00, %1754 ]
  br i1 %1748, label %1762, label %1824, !dx.controlflow.hints !98

; <label>:1762                                    ; preds = %1760
  %1763 = fcmp fast ogt float %1740, 0.000000e+00
  br i1 %1763, label %1764, label %1774, !dx.controlflow.hints !99

; <label>:1764                                    ; preds = %1762
  %1765 = fmul fast float %1740, %1699
  %1766 = fmul fast float %1740, %1711
  %1767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %37, float %1765, float %1766, float undef, float undef, i32 0, i32 0, i32 undef, float %1761)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1768 = extractvalue %dx.types.ResRet.f32 %1767, 0
  %1769 = extractvalue %dx.types.ResRet.f32 %1767, 1
  %1770 = fmul fast float %1768, 2.000000e+00
  %1771 = fmul fast float %1769, 2.000000e+00
  %1772 = fadd fast float %1770, -1.000000e+00
  %1773 = fadd fast float %1771, -1.000000e+00
  br label %1795

; <label>:1774                                    ; preds = %1762
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 3
  %1777 = fmul fast float %1776, %1699
  %1778 = fmul fast float %1776, %1711
  %1779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %39, float %1777, float %1778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.ResRet.f32 %1779, 1
  %1782 = extractvalue %dx.types.ResRet.f32 %1779, 2
  %1783 = fmul fast float %1780, 2.000000e+00
  %1784 = fmul fast float %1781, 2.000000e+00
  %1785 = fmul fast float %1782, 2.000000e+00
  %1786 = fadd fast float %1783, -1.000000e+00
  %1787 = fadd fast float %1784, -1.000000e+00
  %1788 = fadd fast float %1785, -1.000000e+00
  %1789 = extractvalue %dx.types.CBufRet.f32 %1344, 1
  %1790 = fmul fast float %1786, %1789
  %1791 = fmul fast float %1787, %1789
  %1792 = extractvalue %dx.types.CBufRet.f32 %1344, 2
  %1793 = fmul fast float %1792, 5.000000e-01
  %1794 = fmul fast float %1793, %1788
  br label %1795

; <label>:1795                                    ; preds = %1774, %1764
  %1796 = phi float [ %1772, %1764 ], [ %1790, %1774 ]
  %1797 = phi float [ %1773, %1764 ], [ %1791, %1774 ]
  %1798 = phi float [ 0.000000e+00, %1764 ], [ %1794, %1774 ]
  %1799 = fmul fast float %1738, %1692
  %1800 = fmul fast float %1738, %1693
  %1801 = fmul fast float %1738, %1694
  %1802 = call float @dx.op.unary.f32(i32 22, float %1739)  ; Frc(value)
  %1803 = fmul fast float %1802, %1796
  %1804 = fmul fast float %1802, %1797
  %1805 = fmul fast float %1802, %1798
  %1806 = fsub fast float %1799, %1803
  %1807 = fsub fast float %1800, %1804
  %1808 = fsub fast float %1801, %1805
  %1809 = fadd fast float %1739, 5.000000e-01
  %1810 = call float @dx.op.unary.f32(i32 22, float %1809)  ; Frc(value)
  %1811 = fmul fast float %1810, %1796
  %1812 = fmul fast float %1810, %1797
  %1813 = fmul fast float %1810, %1798
  %1814 = fadd fast float %1799, -5.000000e-01
  %1815 = fsub fast float %1814, %1811
  %1816 = fadd fast float %1800, -5.000000e-01
  %1817 = fsub fast float %1816, %1812
  %1818 = fadd fast float %1801, -5.000000e-01
  %1819 = fsub fast float %1818, %1813
  %1820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %37, float %1815, float %1817, float %1819, float undef, i32 0, i32 0, i32 0, float %1755)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1821 = extractvalue %dx.types.ResRet.f32 %1820, 0
  %1822 = extractvalue %dx.types.ResRet.f32 %1820, 1
  %1823 = fadd fast float %1821, %1741
  br label %1834

; <label>:1824                                    ; preds = %1760
  %1825 = fmul fast float %1745, %1742
  %1826 = fmul fast float %1745, %1743
  %1827 = fmul fast float %1745, %1744
  %1828 = fsub fast float %1692, %1825
  %1829 = fsub fast float %1693, %1826
  %1830 = fsub fast float %1694, %1827
  %1831 = fmul fast float %1828, %1738
  %1832 = fmul fast float %1829, %1738
  %1833 = fmul fast float %1830, %1738
  br label %1834

; <label>:1834                                    ; preds = %1824, %1795
  %1835 = phi float [ %1806, %1795 ], [ %1831, %1824 ]
  %1836 = phi float [ %1807, %1795 ], [ %1832, %1824 ]
  %1837 = phi float [ %1808, %1795 ], [ %1833, %1824 ]
  %1838 = phi float [ %1823, %1795 ], [ 0.000000e+00, %1824 ]
  %1839 = phi float [ %1822, %1795 ], [ 0.000000e+00, %1824 ]
  %1840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %37, float %1835, float %1836, float %1837, float undef, i32 0, i32 0, i32 0, float %1755)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1841 = extractvalue %dx.types.ResRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.ResRet.f32 %1840, 1
  %1843 = fadd fast float %1841, %1741
  br i1 %1748, label %1844, label %1855, !dx.controlflow.hints !100

; <label>:1844                                    ; preds = %1834
  %1845 = call float @dx.op.unary.f32(i32 22, float %1739)  ; Frc(value)
  %1846 = fmul fast float %1845, 2.000000e+00
  %1847 = fadd fast float %1846, -1.000000e+00
  %1848 = call float @dx.op.unary.f32(i32 6, float %1847)  ; FAbs(value)
  %1849 = fsub fast float %1838, %1843
  %1850 = fmul fast float %1848, %1849
  %1851 = fadd fast float %1850, %1843
  %1852 = fsub fast float %1839, %1842
  %1853 = fmul fast float %1848, %1852
  %1854 = fadd fast float %1853, %1842
  br label %1855

; <label>:1855                                    ; preds = %1844, %1834
  %1856 = phi float [ %1851, %1844 ], [ %1843, %1834 ]
  %1857 = phi float [ %1854, %1844 ], [ %1842, %1834 ]
  %1858 = fsub fast float %1856, %1857
  %1859 = fsub fast float 1.000000e+00, %1857
  %1860 = fdiv fast float %1858, %1859
  %1861 = call float @dx.op.unary.f32(i32 7, float %1860)  ; Saturate(value)
  br label %1862

; <label>:1862                                    ; preds = %1855, %1737
  %1863 = phi float [ %1861, %1855 ], [ 1.000000e+00, %1737 ]
  %1864 = fcmp fast oeq float %1696, 0.000000e+00
  br i1 %1864, label %1869, label %1865, !dx.controlflow.hints !80

; <label>:1865                                    ; preds = %1862
  %1866 = extractvalue %dx.types.CBufRet.f32 %1228, 2
  %1867 = fmul fast float %1866, %1696
  %1868 = call float @dx.op.unary.f32(i32 23, float %1867)  ; Log(value)
  br label %1869

; <label>:1869                                    ; preds = %1865, %1862
  %1870 = phi float [ %1868, %1865 ], [ 0.000000e+00, %1862 ]
  %1871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %38, float %1699, float %1711, float undef, float undef, i32 0, i32 0, i32 undef, float %1870)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %40, float %1699, float %1711, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.ResRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.ResRet.f32 %1873, 2
  %1877 = extractvalue %dx.types.ResRet.f32 %1873, 3
  %1878 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %40, float %1699, float %1711, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = extractvalue %dx.types.ResRet.f32 %1878, 3
  %1883 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %40, float %1699, float %1711, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.ResRet.f32 %1883, 1
  %1886 = extractvalue %dx.types.ResRet.f32 %1883, 2
  %1887 = extractvalue %dx.types.ResRet.f32 %1883, 3
  %1888 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %40, float %1699, float %1711, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.ResRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.ResRet.f32 %1888, 2
  %1892 = extractvalue %dx.types.ResRet.f32 %1888, 3
  %1893 = fadd fast float %1874, %1875
  %1894 = fadd fast float %1893, %1876
  %1895 = fadd fast float %1894, %1877
  %1896 = fmul fast float %1879, %1874
  %1897 = fmul fast float %1880, %1875
  %1898 = fadd fast float %1896, %1897
  %1899 = fmul fast float %1881, %1876
  %1900 = fadd fast float %1898, %1899
  %1901 = fmul fast float %1882, %1877
  %1902 = fadd fast float %1900, %1901
  %1903 = fmul fast float %1884, %1874
  %1904 = fmul fast float %1885, %1875
  %1905 = fadd fast float %1903, %1904
  %1906 = fmul fast float %1886, %1876
  %1907 = fadd fast float %1905, %1906
  %1908 = fmul fast float %1887, %1877
  %1909 = fadd fast float %1907, %1908
  %1910 = fmul fast float %1889, %1874
  %1911 = fmul fast float %1890, %1875
  %1912 = fadd fast float %1910, %1911
  %1913 = fmul fast float %1891, %1876
  %1914 = fadd fast float %1912, %1913
  %1915 = fmul fast float %1892, %1877
  %1916 = fadd fast float %1914, %1915
  %1917 = fcmp fast ogt float %1895, 0.000000e+00
  %1918 = fdiv fast float %1902, %1895
  %1919 = select i1 %1917, float %1918, float 0.000000e+00
  %1920 = fdiv fast float %1909, %1895
  %1921 = select i1 %1917, float %1920, float 0.000000e+00
  %1922 = fdiv fast float %1916, %1895
  %1923 = select i1 %1917, float %1922, float 0.000000e+00
  %1924 = fcmp fast ogt float %1694, %1921
  %1925 = fcmp fast olt float %1694, %1919
  %1926 = and i1 %1925, %1924
  br i1 %1926, label %1927, label %1994, !dx.controlflow.hints !101

; <label>:1927                                    ; preds = %1869
  %1928 = extractvalue %dx.types.CBufRet.f32 %1342, 0
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 2
  %1931 = extractvalue %dx.types.CBufRet.f32 %1929, 3
  br i1 %1296, label %1942, label %1932, !dx.controlflow.hints !102

; <label>:1932                                    ; preds = %1927
  %1933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 60)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.f32 %1933, 0
  %1935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 64)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.ResRet.f32 %1935, 1
  %1938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 72)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  %1940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1295, i32 96)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  br label %1942

; <label>:1942                                    ; preds = %1932, %1927
  %1943 = phi float [ %1934, %1932 ], [ %1345, %1927 ]
  %1944 = phi float [ %1939, %1932 ], [ %1343, %1927 ]
  %1945 = phi float [ %1941, %1932 ], [ %1928, %1927 ]
  %1946 = phi float [ %1936, %1932 ], [ %1930, %1927 ]
  %1947 = phi float [ %1937, %1932 ], [ %1931, %1927 ]
  %1948 = call float @dx.op.binary.f32(i32 35, float %1872, float 0.000000e+00)  ; FMax(a,b)
  %1949 = call float @dx.op.binary.f32(i32 36, float %1948, float 1.000000e+00)  ; FMin(a,b)
  %1950 = call float @dx.op.unary.f32(i32 24, float %1949)  ; Sqrt(value)
  %1951 = call float @dx.op.binary.f32(i32 35, float %1923, float 0x3F847AE140000000)  ; FMax(a,b)
  %1952 = fsub fast float %1919, %1694
  %1953 = fsub fast float %1694, %1921
  %1954 = call float @dx.op.binary.f32(i32 36, float %1953, float %1952)  ; FMin(a,b)
  %1955 = fdiv fast float %1954, %1951
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1957 = fsub fast float %1694, %1944
  %1958 = fdiv fast float %1957, %1943
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = fsub fast float 1.000000e+00, %1959
  %1961 = fmul float %1956, %1960
  %1962 = fmul float %1961, %1961
  %1963 = fmul fast float %1950, %1863
  %1964 = fmul fast float %1963, %1962
  %1965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1966 = extractvalue %dx.types.CBufRet.f32 %1965, 2
  %1967 = extractvalue %dx.types.CBufRet.f32 %1965, 1
  %1968 = fsub fast float %1964, %1967
  %1969 = fsub fast float %1966, %1967
  %1970 = fdiv fast float %1968, %1969
  %1971 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1972 = fmul fast float %1971, %1945
  %1973 = fcmp fast ogt float %1947, 0.000000e+00
  br i1 %1973, label %1974, label %1994, !dx.controlflow.hints !103

; <label>:1974                                    ; preds = %1942
  %1975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1976 = extractvalue %dx.types.CBufRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.CBufRet.f32 %1975, 1
  %1978 = extractvalue %dx.types.CBufRet.f32 %1975, 2
  %1979 = fsub fast float %1692, %1976
  %1980 = fsub fast float %1693, %1977
  %1981 = fsub fast float %1694, %1978
  %1982 = fmul fast float %1979, %1979
  %1983 = fmul fast float %1980, %1980
  %1984 = fadd fast float %1982, %1983
  %1985 = fmul fast float %1981, %1981
  %1986 = fadd fast float %1984, %1985
  %1987 = call float @dx.op.unary.f32(i32 24, float %1986)  ; Sqrt(value)
  %1988 = fsub fast float %1987, %1946
  %1989 = fsub fast float %1947, %1946
  %1990 = fdiv fast float %1988, %1989
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fmul fast float %1991, %1991
  %1993 = fmul fast float %1992, %1972
  br label %1994

; <label>:1994                                    ; preds = %1974, %1942, %1869, %1683
  %1995 = phi float [ 0.000000e+00, %1683 ], [ 0.000000e+00, %1869 ], [ %1993, %1974 ], [ %1972, %1942 ]
  %1996 = fsub fast float %1681, %1995
  %1997 = fdiv fast float %1996, %1681
  %1998 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %1999 = fsub fast float 1.000000e+00, %1321
  %2000 = fmul fast float %1998, %1999
  %2001 = fadd fast float %2000, %1321
  br label %2002

; <label>:2002                                    ; preds = %1994, %1676
  %2003 = phi float [ %2001, %1994 ], [ 1.000000e+00, %1676 ]
  %2004 = fadd fast float %1681, %1217
  %2005 = fmul fast float %1681, %1317
  %2006 = fmul fast float %2005, %2003
  %2007 = fmul fast float %1681, %1318
  %2008 = fmul fast float %2007, %2003
  %2009 = fmul fast float %1681, %1319
  %2010 = fmul fast float %2009, %2003
  %2011 = fadd fast float %2006, %1213
  %2012 = fadd fast float %2008, %1214
  %2013 = fadd fast float %2010, %1215
  br label %2014

; <label>:2014                                    ; preds = %2002, %1636, %1633, %1212
  %2015 = phi float [ %1213, %1212 ], [ %1213, %1633 ], [ %1213, %1636 ], [ %2011, %2002 ]
  %2016 = phi float [ %1214, %1212 ], [ %1214, %1633 ], [ %1214, %1636 ], [ %2012, %2002 ]
  %2017 = phi float [ %1215, %1212 ], [ %1215, %1633 ], [ %1215, %1636 ], [ %2013, %2002 ]
  %2018 = phi float [ %1217, %1212 ], [ %1217, %1633 ], [ %1217, %1636 ], [ %2004, %2002 ]
  %2019 = and i32 %355, 4
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2191, label %2021, !dx.controlflow.hints !107

; <label>:2021                                    ; preds = %2014
  %2022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.i32 %2022, 1
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2191, label %2025

; <label>:2025                                    ; preds = %2021
  br label %2026

; <label>:2026                                    ; preds = %2182, %2025
  %2027 = phi i32 [ %2188, %2182 ], [ 0, %2025 ]
  %2028 = phi float [ %2183, %2182 ], [ %2015, %2025 ]
  %2029 = phi float [ %2184, %2182 ], [ %2016, %2025 ]
  %2030 = phi float [ %2185, %2182 ], [ %2017, %2025 ]
  %2031 = phi float [ %2186, %2182 ], [ %1216, %2025 ]
  %2032 = phi float [ %2187, %2182 ], [ %2018, %2025 ]
  %2033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.i32 %2033, 1
  %2035 = call i32 @dx.op.tertiary.i32(i32 49, i32 %353, i32 %2034, i32 %2027)  ; UMad(a,b,c)
  %2036 = shl i32 %2035, 2
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2182, label %2040

; <label>:2040                                    ; preds = %2026
  br label %2041

; <label>:2041                                    ; preds = %2168, %2040
  %2042 = phi i32 [ %2052, %2168 ], [ %2038, %2040 ]
  %2043 = phi float [ %2174, %2168 ], [ %2028, %2040 ]
  %2044 = phi float [ %2175, %2168 ], [ %2029, %2040 ]
  %2045 = phi float [ %2176, %2168 ], [ %2030, %2040 ]
  %2046 = phi float [ %2178, %2168 ], [ %2031, %2040 ]
  %2047 = phi float [ %2179, %2168 ], [ %2032, %2040 ]
  %2048 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2042)  ; FirstbitLo(value)
  %2049 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %2027, i32 %2048)  ; UMad(a,b,c)
  %2050 = and i32 %2048, 31
  %2051 = shl i32 1, %2050
  %2052 = xor i32 %2051, %2042
  %2053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2049, i32 0)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2049, i32 4)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.f32 %2055, 0
  %2057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2049, i32 16)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.ResRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.ResRet.f32 %2057, 2
  %2061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2049, i32 28)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.f32 %2061, 0
  %2063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2049, i32 32)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  %2065 = extractvalue %dx.types.ResRet.f32 %2063, 1
  %2066 = extractvalue %dx.types.ResRet.f32 %2063, 2
  %2067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2049, i32 44)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.f32 %2067, 0
  %2069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2049, i32 48)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.f32 %2069, 0
  %2071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2049, i32 52)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  %2073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2049, i32 56)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2049, i32 64)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  %2077 = extractvalue %dx.types.ResRet.f32 %2075, 1
  %2078 = extractvalue %dx.types.ResRet.f32 %2075, 2
  %2079 = mul i32 %2049, 60
  %2080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.ResRet.f32 %2080, 1
  %2083 = extractvalue %dx.types.ResRet.f32 %2080, 2
  %2084 = add i32 %2079, 12
  %2085 = add i32 %2079, 48
  %2086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.f32 %2086, 2
  %2088 = fsub fast float %194, %2081
  %2089 = fsub fast float %195, %2082
  %2090 = fsub fast float %196, %2083
  %2091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.f32 %2091, 0
  %2093 = extractvalue %dx.types.ResRet.f32 %2091, 1
  %2094 = extractvalue %dx.types.ResRet.f32 %2091, 2
  %2095 = call float @dx.op.dot3.f32(i32 55, float %2088, float %2089, float %2090, float %2092, float %2093, float %2094)  ; Dot3(ax,ay,az,bx,by,bz)
  %2096 = add i32 %2079, 24
  %2097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  %2099 = extractvalue %dx.types.ResRet.f32 %2097, 1
  %2100 = extractvalue %dx.types.ResRet.f32 %2097, 2
  %2101 = call float @dx.op.dot3.f32(i32 55, float %2088, float %2089, float %2090, float %2098, float %2099, float %2100)  ; Dot3(ax,ay,az,bx,by,bz)
  %2102 = add i32 %2079, 36
  %2103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.ResRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.ResRet.f32 %2103, 2
  %2107 = call float @dx.op.dot3.f32(i32 55, float %2088, float %2089, float %2090, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %2108 = call float @dx.op.unary.f32(i32 6, float %2095)  ; FAbs(value)
  %2109 = call float @dx.op.unary.f32(i32 6, float %2101)  ; FAbs(value)
  %2110 = call float @dx.op.unary.f32(i32 6, float %2107)  ; FAbs(value)
  %2111 = fmul fast float %2108, %2068
  %2112 = fmul fast float %2109, %2068
  %2113 = fmul fast float %2110, %2068
  %2114 = fadd fast float %2111, %2064
  %2115 = fadd fast float %2112, %2065
  %2116 = fadd fast float %2113, %2066
  %2117 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2118 = call float @dx.op.unary.f32(i32 7, float %2115)  ; Saturate(value)
  %2119 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2120 = fmul fast float %2117, %2117
  %2121 = fmul fast float %2118, %2118
  %2122 = fadd fast float %2121, %2120
  %2123 = fmul fast float %2119, %2119
  %2124 = fadd fast float %2122, %2123
  %2125 = call float @dx.op.unary.f32(i32 24, float %2124)  ; Sqrt(value)
  %2126 = fsub fast float 1.000000e+00, %2125
  %2127 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2128 = fmul fast float %2127, %2054
  %2129 = fmul fast float %2087, 2.000000e+00
  %2130 = fadd fast float %2107, %2087
  %2131 = call float @dx.op.binary.f32(i32 35, float %2130, float 0.000000e+00)  ; FMax(a,b)
  %2132 = call float @dx.op.binary.f32(i32 36, float %2131, float %2129)  ; FMin(a,b)
  %2133 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2132)  ; FMax(a,b)
  %2134 = fmul fast float %2056, 0x3FF7154760000000
  %2135 = fmul fast float %2134, %2133
  %2136 = call float @dx.op.unary.f32(i32 21, float %2135)  ; Exp(value)
  %2137 = fmul fast float %2128, %2136
  %2138 = fcmp fast oeq float %436, 0.000000e+00
  br i1 %2138, label %2144, label %2139, !dx.controlflow.hints !80

; <label>:2139                                    ; preds = %2041
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 3
  %2142 = fmul fast float %2141, %436
  %2143 = call float @dx.op.unary.f32(i32 23, float %2142)  ; Log(value)
  br label %2144

; <label>:2144                                    ; preds = %2139, %2041
  %2145 = phi float [ %2143, %2139 ], [ 0.000000e+00, %2041 ]
  %2146 = fcmp fast oeq float %2070, 0.000000e+00
  br i1 %2146, label %2168, label %2147, !dx.controlflow.hints !108

; <label>:2147                                    ; preds = %2144
  %2148 = fmul fast float %2076, %2074
  %2149 = fmul fast float %2077, %2074
  %2150 = fmul fast float %2078, %2074
  %2151 = fsub fast float %194, %2148
  %2152 = fsub fast float %195, %2149
  %2153 = fsub fast float %196, %2150
  %2154 = fmul fast float %2151, %2070
  %2155 = fmul fast float %2152, %2070
  %2156 = fmul fast float %2153, %2070
  %2157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %37, float %2154, float %2155, float %2156, float undef, i32 0, i32 0, i32 0, float %2145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.ResRet.f32 %2157, 1
  %2160 = fdiv fast float 1.000000e+00, %2072
  %2161 = fmul fast float %2072, 2.000000e+00
  %2162 = fadd fast float %2161, -1.000000e+00
  %2163 = fadd fast float %2162, %2159
  %2164 = fadd fast float %2163, %2158
  %2165 = fmul fast float %2164, %2160
  %2166 = fadd fast float %2165, -1.000000e+00
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  br label %2168

; <label>:2168                                    ; preds = %2147, %2144
  %2169 = phi float [ %2167, %2147 ], [ 1.000000e+00, %2144 ]
  %2170 = fmul fast float %2137, %2169
  %2171 = fmul fast float %2170, %2058
  %2172 = fmul fast float %2170, %2059
  %2173 = fmul fast float %2170, %2060
  %2174 = fadd fast float %2171, %2043
  %2175 = fadd fast float %2172, %2044
  %2176 = fadd fast float %2173, %2045
  %2177 = fmul fast float %2170, %2062
  %2178 = fadd fast float %2177, %2046
  %2179 = fadd fast float %2170, %2047
  %2180 = icmp eq i32 %2042, %2051
  br i1 %2180, label %2181, label %2041, !llvm.loop !109

; <label>:2181                                    ; preds = %2168
  br label %2182

; <label>:2182                                    ; preds = %2181, %2026
  %2183 = phi float [ %2028, %2026 ], [ %2174, %2181 ]
  %2184 = phi float [ %2029, %2026 ], [ %2175, %2181 ]
  %2185 = phi float [ %2030, %2026 ], [ %2176, %2181 ]
  %2186 = phi float [ %2031, %2026 ], [ %2178, %2181 ]
  %2187 = phi float [ %2032, %2026 ], [ %2179, %2181 ]
  %2188 = add i32 %2027, 1
  %2189 = icmp ult i32 %2188, %2034
  br i1 %2189, label %2026, label %2190, !llvm.loop !110

; <label>:2190                                    ; preds = %2182
  br label %2191

; <label>:2191                                    ; preds = %2190, %2021, %2014
  %2192 = phi float [ %2015, %2014 ], [ %2015, %2021 ], [ %2183, %2190 ]
  %2193 = phi float [ %2016, %2014 ], [ %2016, %2021 ], [ %2184, %2190 ]
  %2194 = phi float [ %2017, %2014 ], [ %2017, %2021 ], [ %2185, %2190 ]
  %2195 = phi float [ %1216, %2014 ], [ %1216, %2021 ], [ %2186, %2190 ]
  %2196 = phi float [ %2018, %2014 ], [ %2018, %2021 ], [ %2187, %2190 ]
  %2197 = fcmp fast ogt float %2196, 0.000000e+00
  br i1 %2197, label %2198, label %3396, !dx.controlflow.hints !111

; <label>:2198                                    ; preds = %2191
  %2199 = fdiv fast float 1.000000e+00, %2196
  %2200 = fmul fast float %2199, %2192
  %2201 = fmul fast float %2199, %2193
  %2202 = fmul fast float %2199, %2194
  %2203 = fmul fast float %2199, %2195
  %2204 = fmul fast float %2199, %663
  %2205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2205, 0
  %2207 = fadd fast float %2206, -1.000000e+00
  %2208 = fmul fast float %2204, %2207
  %2209 = fadd fast float %2208, 1.000000e+00
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.CBufRet.f32 %2210, 1
  %2213 = extractvalue %dx.types.CBufRet.f32 %2210, 2
  %2214 = fsub fast float %196, %2213
  %2215 = fsub fast float %234, %2213
  %2216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.f32 %2216, 3
  %2218 = fcmp fast oeq float %2217, 0.000000e+00
  br i1 %2218, label %3367, label %2219, !dx.controlflow.hints !112

; <label>:2219                                    ; preds = %2198
  %2220 = fsub fast float %195, %2212
  %2221 = fsub fast float %194, %2211
  %2222 = extractvalue %dx.types.CBufRet.f32 %2216, 0
  %2223 = extractvalue %dx.types.CBufRet.f32 %2216, 1
  %2224 = extractvalue %dx.types.CBufRet.f32 %2216, 2
  %2225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.f32 %2225, 0
  %2227 = extractvalue %dx.types.CBufRet.f32 %2225, 1
  %2228 = extractvalue %dx.types.CBufRet.f32 %2225, 2
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 2
  %2231 = fmul fast float %2230, %2222
  %2232 = fmul fast float %2230, %2223
  %2233 = fmul fast float %2230, %2224
  %2234 = fsub fast float %2221, %2231
  %2235 = fsub fast float %2220, %2232
  %2236 = fsub fast float %2214, %2233
  %2237 = fcmp fast olt float %2217, 0.000000e+00
  br i1 %2237, label %2769, label %2238, !dx.controlflow.hints !113

; <label>:2238                                    ; preds = %2219
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2241 = extractvalue %dx.types.CBufRet.f32 %2239, 1
  %2242 = extractvalue %dx.types.CBufRet.f32 %2239, 2
  %2243 = extractvalue %dx.types.CBufRet.f32 %2239, 3
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.CBufRet.f32 %2244, 1
  %2247 = extractvalue %dx.types.CBufRet.f32 %2244, 2
  %2248 = extractvalue %dx.types.CBufRet.f32 %2244, 3
  %2249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2250 = extractvalue %dx.types.CBufRet.f32 %2249, 0
  %2251 = extractvalue %dx.types.CBufRet.f32 %2249, 1
  %2252 = extractvalue %dx.types.CBufRet.f32 %2249, 2
  %2253 = extractvalue %dx.types.CBufRet.f32 %2249, 3
  %2254 = fmul fast float %2240, %2234
  %2255 = call float @dx.op.tertiary.f32(i32 46, float %2235, float %2241, float %2254)  ; FMad(a,b,c)
  %2256 = call float @dx.op.tertiary.f32(i32 46, float %2236, float %2242, float %2255)  ; FMad(a,b,c)
  %2257 = fadd fast float %2256, %2243
  %2258 = fmul fast float %2245, %2234
  %2259 = call float @dx.op.tertiary.f32(i32 46, float %2235, float %2246, float %2258)  ; FMad(a,b,c)
  %2260 = call float @dx.op.tertiary.f32(i32 46, float %2236, float %2247, float %2259)  ; FMad(a,b,c)
  %2261 = fadd fast float %2260, %2248
  %2262 = fmul fast float %2250, %2234
  %2263 = call float @dx.op.tertiary.f32(i32 46, float %2235, float %2251, float %2262)  ; FMad(a,b,c)
  %2264 = call float @dx.op.tertiary.f32(i32 46, float %2236, float %2252, float %2263)  ; FMad(a,b,c)
  %2265 = fadd fast float %2264, %2253
  %2266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2267 = extractvalue %dx.types.CBufRet.f32 %2266, 0
  %2268 = extractvalue %dx.types.CBufRet.f32 %2266, 1
  %2269 = extractvalue %dx.types.CBufRet.f32 %2266, 3
  %2270 = fmul fast float %2269, %2257
  %2271 = fmul fast float %2269, %2261
  %2272 = fadd fast float %2270, %2267
  %2273 = fadd fast float %2271, %2268
  %2274 = extractvalue %dx.types.CBufRet.f32 %2266, 2
  %2275 = fcmp fast olt float %2274, 0.000000e+00
  %2276 = fsub fast float -0.000000e+00, %2274
  %2277 = select i1 %2275, float %2276, float %2274
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2280 = fadd fast float %2277, %2279
  %2281 = fcmp fast ogt float %2280, 0.000000e+00
  br i1 %2281, label %2282, label %2313, !dx.controlflow.hints !114

; <label>:2282                                    ; preds = %2238
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2285 = fsub fast float %2284, %2265
  %2286 = extractvalue %dx.types.CBufRet.f32 %2283, 2
  %2287 = fmul fast float %2285, %2286
  %2288 = fsub fast float 1.000000e+00, %2287
  %2289 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.CBufRet.f32 %2290, 1
  %2293 = fsub fast float %2272, %2291
  %2294 = fsub fast float %2273, %2292
  %2295 = fcmp fast olt float %2293, 0.000000e+00
  %2296 = fcmp fast olt float %2294, 0.000000e+00
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.CBufRet.f32 %2297, 1
  %2300 = extractvalue %dx.types.CBufRet.f32 %2297, 2
  %2301 = extractvalue %dx.types.CBufRet.f32 %2297, 3
  %2302 = select i1 %2295, float %2298, float %2300
  %2303 = select i1 %2296, float %2299, float %2301
  %2304 = fmul fast float %2302, %2293
  %2305 = fmul fast float %2303, %2294
  %2306 = call float @dx.op.unary.f32(i32 6, float %2304)  ; FAbs(value)
  %2307 = call float @dx.op.unary.f32(i32 6, float %2305)  ; FAbs(value)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2229, 0
  %2309 = call float @dx.op.binary.f32(i32 35, float %2306, float %2307)  ; FMax(a,b)
  %2310 = fsub fast float %2308, %2309
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = fmul fast float %2311, %2289
  br label %2313

; <label>:2313                                    ; preds = %2282, %2238
  %2314 = phi float [ %2312, %2282 ], [ 0.000000e+00, %2238 ]
  %2315 = call float @dx.op.binary.f32(i32 35, float %2314, float 0.000000e+00)  ; FMax(a,b)
  %2316 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2315)  ; FMax(a,b)
  %2317 = fcmp fast olt float %2316, 1.000000e+00
  br i1 %2317, label %2318, label %2716, !dx.controlflow.hints !115

; <label>:2318                                    ; preds = %2313
  %2319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2319, 0
  %2321 = fcmp fast une float %2320, 0.000000e+00
  br i1 %2321, label %2322, label %2716, !dx.controlflow.hints !116

; <label>:2322                                    ; preds = %2318
  %2323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2324 = extractvalue %dx.types.CBufRet.f32 %2323, 0
  %2325 = extractvalue %dx.types.CBufRet.f32 %2323, 1
  %2326 = extractvalue %dx.types.CBufRet.f32 %2323, 2
  %2327 = extractvalue %dx.types.CBufRet.f32 %2323, 3
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 0
  %2330 = extractvalue %dx.types.CBufRet.f32 %2328, 1
  %2331 = extractvalue %dx.types.CBufRet.f32 %2328, 2
  %2332 = extractvalue %dx.types.CBufRet.f32 %2328, 3
  %2333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2334 = extractvalue %dx.types.CBufRet.f32 %2333, 0
  %2335 = extractvalue %dx.types.CBufRet.f32 %2333, 1
  %2336 = extractvalue %dx.types.CBufRet.f32 %2333, 2
  %2337 = extractvalue %dx.types.CBufRet.f32 %2333, 3
  %2338 = fmul fast float %2324, %2234
  %2339 = call float @dx.op.tertiary.f32(i32 46, float %2235, float %2325, float %2338)  ; FMad(a,b,c)
  %2340 = call float @dx.op.tertiary.f32(i32 46, float %2236, float %2326, float %2339)  ; FMad(a,b,c)
  %2341 = fadd fast float %2340, %2327
  %2342 = fmul fast float %2329, %2234
  %2343 = call float @dx.op.tertiary.f32(i32 46, float %2235, float %2330, float %2342)  ; FMad(a,b,c)
  %2344 = call float @dx.op.tertiary.f32(i32 46, float %2236, float %2331, float %2343)  ; FMad(a,b,c)
  %2345 = fadd fast float %2344, %2332
  %2346 = fmul fast float %2334, %2234
  %2347 = call float @dx.op.tertiary.f32(i32 46, float %2235, float %2335, float %2346)  ; FMad(a,b,c)
  %2348 = call float @dx.op.tertiary.f32(i32 46, float %2236, float %2336, float %2347)  ; FMad(a,b,c)
  %2349 = fadd fast float %2348, %2337
  %2350 = fcmp fast oge float %2341, 1.000000e+00
  %2351 = fcmp fast oge float %2345, 1.000000e+00
  %2352 = or i1 %2350, %2351
  %2353 = fcmp fast olt float %2341, 0.000000e+00
  %2354 = fcmp fast olt float %2345, 0.000000e+00
  %2355 = or i1 %2353, %2354
  %2356 = or i1 %2352, %2355
  br i1 %2356, label %2716, label %2357, !dx.controlflow.hints !117

; <label>:2357                                    ; preds = %2322
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.CBufRet.f32 %2358, 1
  %2361 = extractvalue %dx.types.CBufRet.f32 %2358, 2
  %2362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.i32 %2362, 2
  %2364 = uitofp i32 %2363 to float
  %2365 = extractvalue %dx.types.CBufRet.i32 %2362, 3
  %2366 = uitofp i32 %2365 to float
  %2367 = extractvalue %dx.types.CBufRet.f32 %2358, 3
  %2368 = fmul fast float %2367, 2.000000e+00
  %2369 = fsub fast float %2341, %2359
  %2370 = fsub fast float %2345, %2360
  %2371 = fmul fast float %2368, %2369
  %2372 = fmul fast float %2368, %2370
  %2373 = fdiv fast float 1.000000e+00, %2224
  %2374 = fmul fast float %2372, %2373
  %2375 = call float @dx.op.unary.f32(i32 6, float %2374)  ; FAbs(value)
  %2376 = fmul fast float %2361, %2236
  %2377 = fmul fast float %2376, %2368
  %2378 = call float @dx.op.unary.f32(i32 6, float %2377)  ; FAbs(value)
  %2379 = call float @dx.op.unary.f32(i32 6, float %2371)  ; FAbs(value)
  %2380 = call float @dx.op.binary.f32(i32 35, float %2378, float %2375)  ; FMax(a,b)
  %2381 = call float @dx.op.binary.f32(i32 35, float %2379, float %2380)  ; FMax(a,b)
  %2382 = fmul fast float %2381, 2.000000e+00
  %2383 = call float @dx.op.unary.f32(i32 23, float %2382)  ; Log(value)
  %2384 = call float @dx.op.binary.f32(i32 35, float %2383, float %2364)  ; FMax(a,b)
  %2385 = call float @dx.op.unary.f32(i32 22, float %2384)  ; Frc(value)
  %2386 = fadd fast float %2385, 0xBFEA666660000000
  %2387 = fmul fast float %2386, 8.000000e+00
  %2388 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2389 = call float @dx.op.unary.f32(i32 27, float %2384)  ; Round_ni(value)
  %2390 = fadd fast float %2389, %2388
  %2391 = call float @dx.op.binary.f32(i32 36, float %2390, float %2366)  ; FMin(a,b)
  %2392 = call float @dx.op.unary.f32(i32 27, float %2391)  ; Round_ni(value)
  %2393 = fsub fast float -0.000000e+00, %2392
  %2394 = call float @dx.op.unary.f32(i32 21, float %2393)  ; Exp(value)
  %2395 = fmul fast float %2394, %2368
  %2396 = fmul fast float %2395, %2341
  %2397 = fmul fast float %2395, %2345
  %2398 = fmul fast float %2396, 2.500000e-01
  %2399 = fmul fast float %2397, 2.500000e-01
  %2400 = fadd fast float %2398, 5.000000e-01
  %2401 = fadd fast float %2399, 5.000000e-01
  %2402 = fsub fast float %2366, %2364
  %2403 = fptoui float %2402 to i32
  %2404 = add i32 %2403, 320
  %2405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %2404)  ; CBufferLoadLegacy(handle,regIndex)
  %2406 = extractvalue %dx.types.CBufRet.f32 %2405, 0
  %2407 = extractvalue %dx.types.CBufRet.f32 %2405, 1
  %2408 = fcmp fast une float %2391, %2366
  %2409 = fsub fast float %2341, %2406
  %2410 = fsub fast float %2345, %2407
  %2411 = call float @dx.op.unary.f32(i32 6, float %2409)  ; FAbs(value)
  %2412 = call float @dx.op.unary.f32(i32 6, float %2410)  ; FAbs(value)
  %2413 = fmul fast float %2411, %2395
  %2414 = fmul fast float %2412, %2395
  %2415 = fcmp fast olt float %2413, 1.000000e+00
  %2416 = fcmp fast olt float %2414, 1.000000e+00
  %2417 = and i1 %2415, %2416
  %2418 = or i1 %2408, %2417
  br i1 %2418, label %2419, label %2716, !dx.controlflow.hints !118

; <label>:2419                                    ; preds = %2357
  %2420 = fmul fast float %2397, 5.000000e-01
  %2421 = fmul fast float %2396, 5.000000e-01
  %2422 = fadd fast float %2420, 5.000000e-01
  %2423 = fadd fast float %2421, 5.000000e-01
  %2424 = sitofp i32 %2363 to float
  %2425 = fsub fast float %2391, %2424
  %2426 = call float @dx.op.unary.f32(i32 27, float %2425)  ; Round_ni(value)
  %2427 = call float @dx.op.unary.f32(i32 22, float %2391)  ; Frc(value)
  %2428 = call float @dx.op.unary.f32(i32 22, float %2423)  ; Frc(value)
  %2429 = call float @dx.op.unary.f32(i32 22, float %2422)  ; Frc(value)
  %2430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2428, float %2429, float %2426, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2431 = extractvalue %dx.types.ResRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.ResRet.f32 %2430, 1
  %2433 = extractvalue %dx.types.ResRet.f32 %2430, 2
  %2434 = extractvalue %dx.types.ResRet.f32 %2430, 3
  %2435 = fcmp fast ogt float %2427, 0.000000e+00
  br i1 %2435, label %2436, label %2457, !dx.controlflow.hints !119

; <label>:2436                                    ; preds = %2419
  %2437 = fadd fast float %2426, 1.000000e+00
  %2438 = call float @dx.op.unary.f32(i32 22, float %2400)  ; Frc(value)
  %2439 = call float @dx.op.unary.f32(i32 22, float %2401)  ; Frc(value)
  %2440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2438, float %2439, float %2437, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2441 = extractvalue %dx.types.ResRet.f32 %2440, 0
  %2442 = extractvalue %dx.types.ResRet.f32 %2440, 1
  %2443 = extractvalue %dx.types.ResRet.f32 %2440, 2
  %2444 = extractvalue %dx.types.ResRet.f32 %2440, 3
  %2445 = fsub fast float %2441, %2431
  %2446 = fsub fast float %2442, %2432
  %2447 = fsub fast float %2443, %2433
  %2448 = fsub fast float %2444, %2434
  %2449 = fmul fast float %2445, %2427
  %2450 = fmul fast float %2446, %2427
  %2451 = fmul fast float %2447, %2427
  %2452 = fmul fast float %2448, %2427
  %2453 = fadd fast float %2449, %2431
  %2454 = fadd fast float %2450, %2432
  %2455 = fadd fast float %2451, %2433
  %2456 = fadd fast float %2452, %2434
  br label %2457

; <label>:2457                                    ; preds = %2436, %2419
  %2458 = phi float [ %2453, %2436 ], [ %2431, %2419 ]
  %2459 = phi float [ %2454, %2436 ], [ %2432, %2419 ]
  %2460 = phi float [ %2455, %2436 ], [ %2433, %2419 ]
  %2461 = phi float [ %2456, %2436 ], [ %2434, %2419 ]
  %2462 = fadd fast float %2458, -5.000000e-01
  %2463 = fadd fast float %2460, -5.000000e-01
  %2464 = fmul fast float %2462, 0xBFD5555560000000
  %2465 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2463, float %2464)  ; FMad(a,b,c)
  %2466 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2459, float 0.000000e+00)  ; FMad(a,b,c)
  %2467 = fadd fast float %2466, %2461
  %2468 = fmul fast float %2462, -7.500000e-01
  %2469 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2463, float %2468)  ; FMad(a,b,c)
  %2470 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2459, float 0.000000e+00)  ; FMad(a,b,c)
  %2471 = fadd fast float %2470, %2461
  %2472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2473 = extractvalue %dx.types.CBufRet.f32 %2472, 0
  %2474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2475 = extractvalue %dx.types.CBufRet.f32 %2474, 0
  %2476 = extractvalue %dx.types.CBufRet.f32 %2474, 1
  %2477 = extractvalue %dx.types.CBufRet.f32 %2474, 2
  %2478 = extractvalue %dx.types.CBufRet.f32 %2474, 3
  %2479 = fsub fast float %2475, %2465
  %2480 = fsub fast float %2476, %2467
  %2481 = fsub fast float %2477, %2469
  %2482 = fsub fast float %2478, %2471
  %2483 = fmul fast float %2479, %2473
  %2484 = fmul fast float %2480, %2473
  %2485 = fmul fast float %2481, %2473
  %2486 = fmul fast float %2482, %2473
  %2487 = fadd fast float %2483, %2465
  %2488 = fadd fast float %2484, %2467
  %2489 = fadd fast float %2485, %2469
  %2490 = fadd fast float %2486, %2471
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = and i32 %2492, 536870911
  %2494 = uitofp i32 %2493 to float
  %2495 = fmul fast float %2494, %2341
  %2496 = fmul fast float %2494, %2345
  %2497 = fptoui float %2495 to i32
  %2498 = fptoui float %2496 to i32
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = and i32 %2500, 31
  %2502 = lshr i32 %2497, %2501
  %2503 = lshr i32 %2498, %2501
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 31
  %2507 = shl i32 1, %2506
  %2508 = call i32 @dx.op.binary.i32(i32 40, i32 %2507, i32 4)  ; UMin(a,b)
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = extractvalue %dx.types.ResRet.i32 %2509, 1
  %2512 = icmp eq i32 %2508, 0
  br i1 %2512, label %2554, label %2513

; <label>:2513                                    ; preds = %2457
  br label %2514

; <label>:2514                                    ; preds = %2542, %2513
  %2515 = phi i32 [ %2545, %2542 ], [ 0, %2513 ]
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = lshr i32 %2517, 16
  %2519 = and i32 %2518, 31
  %2520 = shl i32 %2503, %2519
  %2521 = add i32 %2520, %2502
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = and i32 %2523, 31
  %2525 = shl i32 %2521, %2524
  %2526 = add i32 %2525, %2515
  %2527 = shl i32 %2526, 2
  %2528 = add i32 %2527, 32
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = icmp slt i32 %2530, 0
  %2532 = getelementptr [12 x float], [12 x float]* %50, i32 0, i32 %2515
  %2533 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2515
  %2534 = bitcast float* %2532 to i32*
  %2535 = bitcast float* %2533 to i32*
  br i1 %2531, label %2536, label %2542, !dx.controlflow.hints !120

; <label>:2536                                    ; preds = %2514
  %2537 = and i32 %2530, 1073741823
  %2538 = add nuw nsw i32 %2537, 20
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = extractvalue %dx.types.ResRet.i32 %2539, 1
  br label %2542

; <label>:2542                                    ; preds = %2536, %2514
  %2543 = phi i32 [ %2540, %2536 ], [ %2510, %2514 ]
  %2544 = phi i32 [ %2541, %2536 ], [ %2511, %2514 ]
  store i32 %2543, i32* %2534, align 4
  store i32 %2544, i32* %2535, align 4
  %2545 = add nuw i32 %2515, 1
  %2546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.i32 %2546, 2
  %2548 = icmp eq i32 %2547, 0
  %2549 = icmp ugt i32 %2530, -1073741825
  %2550 = and i1 %2549, %2548
  %2551 = icmp ult i32 %2545, %2508
  %2552 = and i1 %2550, %2551
  br i1 %2552, label %2514, label %2553, !dx.controlflow.hints !121

; <label>:2553                                    ; preds = %2542
  br label %2554

; <label>:2554                                    ; preds = %2553, %2457
  %2555 = phi i32 [ 0, %2457 ], [ %2545, %2553 ]
  %2556 = extractvalue %dx.types.CBufRet.f32 %2319, 2
  %2557 = fptoui float %2556 to i32
  %2558 = icmp eq i32 %2557, 0
  br i1 %2558, label %2610, label %2559

; <label>:2559                                    ; preds = %2554
  br label %2560

; <label>:2560                                    ; preds = %2605, %2559
  %2561 = phi i32 [ %2606, %2605 ], [ %2555, %2559 ]
  %2562 = phi i32 [ %2607, %2605 ], [ 0, %2559 ]
  %2563 = lshr i32 %2562, 2
  %2564 = and i32 %2562, 3
  %2565 = add nuw nsw i32 %2563, 83
  %2566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 %2565)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.i32 %2566, 0
  %2568 = extractvalue %dx.types.CBufRet.i32 %2566, 1
  %2569 = extractvalue %dx.types.CBufRet.i32 %2566, 2
  %2570 = extractvalue %dx.types.CBufRet.i32 %2566, 3
  %2571 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 0
  store i32 %2567, i32* %2571, align 4
  %2572 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 1
  store i32 %2568, i32* %2572, align 4
  %2573 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 2
  store i32 %2569, i32* %2573, align 4
  %2574 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 3
  store i32 %2570, i32* %2574, align 4
  %2575 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 %2564
  %2576 = load i32, i32* %2575, align 4, !tbaa !122, !noalias !124
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = lshr i32 %2578, 16
  %2580 = and i32 %2579, 31
  %2581 = shl i32 %2503, %2580
  %2582 = add i32 %2581, %2502
  %2583 = shl i32 %2582, 2
  %2584 = add i32 %2583, %2576
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = icmp eq i32 %2586, 0
  br i1 %2587, label %2605, label %2588, !dx.controlflow.hints !131

; <label>:2588                                    ; preds = %2560
  %2589 = icmp slt i32 %2586, 0
  %2590 = getelementptr [12 x float], [12 x float]* %50, i32 0, i32 %2561
  %2591 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2561
  %2592 = bitcast float* %2590 to i32*
  %2593 = bitcast float* %2591 to i32*
  br i1 %2589, label %2594, label %2601, !dx.controlflow.hints !132

; <label>:2594                                    ; preds = %2588
  %2595 = and i32 %2586, 1073741823
  %2596 = add i32 %2576, 20
  %2597 = add i32 %2596, %2595
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = extractvalue %dx.types.ResRet.i32 %2598, 1
  br label %2601

; <label>:2601                                    ; preds = %2594, %2588
  %2602 = phi i32 [ %2599, %2594 ], [ %2510, %2588 ]
  %2603 = phi i32 [ %2600, %2594 ], [ %2511, %2588 ]
  store i32 %2602, i32* %2592, align 4
  store i32 %2603, i32* %2593, align 4
  %2604 = add i32 %2561, 1
  br label %2605

; <label>:2605                                    ; preds = %2601, %2560
  %2606 = phi i32 [ %2561, %2560 ], [ %2604, %2601 ]
  %2607 = add nuw i32 %2562, 1
  %2608 = icmp eq i32 %2607, %2557
  br i1 %2608, label %2609, label %2560

; <label>:2609                                    ; preds = %2605
  br label %2610

; <label>:2610                                    ; preds = %2609, %2554
  %2611 = phi i32 [ %2555, %2554 ], [ %2606, %2609 ]
  %2612 = icmp eq i32 %2611, 1
  %2613 = getelementptr [12 x float], [12 x float]* %50, i32 0, i32 0
  %2614 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 0
  br i1 %2612, label %2615, label %2618, !dx.controlflow.hints !133

; <label>:2615                                    ; preds = %2610
  %2616 = load float, float* %2613, align 4
  %2617 = load float, float* %2614, align 4
  br label %2645

; <label>:2618                                    ; preds = %2610
  %2619 = load float, float* %2613, align 4
  %2620 = load float, float* %2614, align 4
  %2621 = fdiv fast float 1.000000e+00, %2620
  %2622 = fsub fast float %2619, %2621
  %2623 = icmp ugt i32 %2611, 1
  br i1 %2623, label %2624, label %2640

; <label>:2624                                    ; preds = %2618
  br label %2625

; <label>:2625                                    ; preds = %2625, %2624
  %2626 = phi float [ %2635, %2625 ], [ %2622, %2624 ]
  %2627 = phi float [ %2636, %2625 ], [ %2619, %2624 ]
  %2628 = phi i32 [ %2637, %2625 ], [ 1, %2624 ]
  %2629 = getelementptr [12 x float], [12 x float]* %50, i32 0, i32 %2628
  %2630 = load float, float* %2629, align 4
  %2631 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2628
  %2632 = load float, float* %2631, align 4
  %2633 = fdiv fast float 1.000000e+00, %2632
  %2634 = fsub fast float %2630, %2633
  %2635 = call float @dx.op.binary.f32(i32 36, float %2626, float %2634)  ; FMin(a,b)
  %2636 = call float @dx.op.binary.f32(i32 35, float %2627, float %2630)  ; FMax(a,b)
  %2637 = add nuw i32 %2628, 1
  %2638 = icmp eq i32 %2637, %2611
  br i1 %2638, label %2639, label %2625

; <label>:2639                                    ; preds = %2625
  br label %2640

; <label>:2640                                    ; preds = %2639, %2618
  %2641 = phi float [ %2622, %2618 ], [ %2635, %2639 ]
  %2642 = phi float [ %2619, %2618 ], [ %2636, %2639 ]
  %2643 = fsub fast float %2642, %2641
  %2644 = fdiv fast float 1.000000e+00, %2643
  br label %2645

; <label>:2645                                    ; preds = %2640, %2615
  %2646 = phi float [ %2616, %2615 ], [ %2642, %2640 ]
  %2647 = phi float [ %2617, %2615 ], [ %2644, %2640 ]
  %2648 = fadd fast float %2349, %2646
  %2649 = fmul fast float %2648, %2647
  %2650 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  %2651 = fmul fast float %2650, 2.000000e+00
  %2652 = fsub fast float 1.000000e+00, %2651
  %2653 = fmul fast float %2487, %2487
  %2654 = fsub fast float %2488, %2653
  %2655 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2654)  ; FMax(a,b)
  %2656 = fdiv fast float 1.000000e+00, %2655
  %2657 = fmul fast float %2488, %2487
  %2658 = fsub fast float %2489, %2657
  %2659 = fsub fast float %2652, %2487
  %2660 = fmul fast float %2652, %2652
  %2661 = fsub fast float %2660, %2488
  %2662 = fmul fast float %2656, %2658
  %2663 = fmul fast float %2662, %2659
  %2664 = fsub fast float %2661, %2663
  %2665 = fmul fast float %2488, %2488
  %2666 = fsub fast float %2490, %2665
  %2667 = fmul fast float %2658, %2658
  %2668 = fmul fast float %2667, %2656
  %2669 = fsub fast float %2666, %2668
  %2670 = fdiv fast float %2664, %2669
  %2671 = fmul fast float %2670, %2658
  %2672 = fsub fast float %2659, %2671
  %2673 = fmul fast float %2672, %2656
  %2674 = fmul fast float %2673, %2487
  %2675 = fsub fast float 1.000000e+00, %2674
  %2676 = fmul fast float %2670, %2488
  %2677 = fsub fast float %2675, %2676
  %2678 = fmul fast float %2673, %2673
  %2679 = fmul fast float %2670, 4.000000e+00
  %2680 = fmul fast float %2679, %2677
  %2681 = fsub fast float %2678, %2680
  %2682 = call float @dx.op.unary.f32(i32 24, float %2681)  ; Sqrt(value)
  %2683 = fcmp fast oge float %2673, 0.000000e+00
  %2684 = fsub fast float -0.000000e+00, %2682
  %2685 = select i1 %2683, float %2684, float %2682
  %2686 = fsub fast float %2685, %2673
  %2687 = fdiv fast float %2686, %2670
  %2688 = fdiv fast float %2677, %2686
  %2689 = fmul fast float %2687, 5.000000e-01
  %2690 = fmul fast float %2688, 2.000000e+00
  %2691 = select i1 %2683, float %2689, float %2690
  %2692 = select i1 %2683, float %2690, float %2689
  %2693 = call float @dx.op.binary.f32(i32 35, float %2691, float %2692)  ; FMax(a,b)
  %2694 = call float @dx.op.binary.f32(i32 36, float %2691, float %2692)  ; FMin(a,b)
  %2695 = fcmp fast ogt float %2652, %2693
  %2696 = fsub fast float %2652, %2694
  %2697 = fsub fast float %2652, %2693
  %2698 = fsub fast float %2693, %2694
  %2699 = select i1 %2695, float %2697, float %2698
  %2700 = fmul float %2696, %2699
  %2701 = select i1 %2695, float %2694, float %2652
  %2702 = fcmp fast ogt float %2652, %2694
  %2703 = fmul fast float %2701, %2693
  %2704 = fadd fast float %2701, %2693
  %2705 = fmul fast float %2704, %2487
  %2706 = fadd fast float %2703, %2488
  %2707 = fsub fast float %2706, %2705
  %2708 = fdiv fast float %2707, %2700
  %2709 = select i1 %2702, float %2708, float 0.000000e+00
  %2710 = fsub fast float 1.000000e+00, %2709
  %2711 = select i1 %2695, float %2710, float %2709
  %2712 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2472, 3
  %2714 = fmul fast float %2713, %2712
  %2715 = fsub fast float 1.000000e+00, %2714
  br label %2716

; <label>:2716                                    ; preds = %2645, %2357, %2322, %2318, %2313
  %2717 = phi float [ 1.000000e+00, %2313 ], [ %2715, %2645 ], [ 1.000000e+00, %2322 ], [ 1.000000e+00, %2357 ], [ 1.000000e+00, %2318 ]
  %2718 = fcmp fast ogt float %2314, 0.000000e+00
  br i1 %2718, label %2719, label %2725, !dx.controlflow.hints !134

; <label>:2719                                    ; preds = %2716
  %2720 = fadd fast float %2279, %2265
  %2721 = call float @dx.op.binary.f32(i32 35, float %2720, float 0.000000e+00)  ; FMax(a,b)
  %2722 = fadd fast float %2721, 0x3F10000000000000
  %2723 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %41, float %2272, float %2273, float undef, float undef, i32 0, i32 0, i32 undef, float %2722)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2724 = extractvalue %dx.types.ResRet.f32 %2723, 0
  br label %2725

; <label>:2725                                    ; preds = %2719, %2716
  %2726 = phi float [ %2724, %2719 ], [ 1.000000e+00, %2716 ]
  %2727 = fsub fast float %2726, %2717
  %2728 = fmul fast float %2727, %2314
  %2729 = fadd fast float %2728, %2717
  %2730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2731 = extractvalue %dx.types.CBufRet.f32 %2730, 2
  %2732 = fcmp fast ogt float %2731, 0.000000e+00
  br i1 %2732, label %2733, label %2769, !dx.controlflow.hints !135

; <label>:2733                                    ; preds = %2725
  %2734 = fcmp fast ugt float %2731, 0.000000e+00
  br i1 %2734, label %2735, label %2766, !dx.controlflow.hints !136

; <label>:2735                                    ; preds = %2733
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.CBufRet.f32 %2736, 1
  %2739 = extractvalue %dx.types.CBufRet.f32 %2736, 2
  %2740 = extractvalue %dx.types.CBufRet.f32 %2736, 3
  %2741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.CBufRet.f32 %2741, 1
  %2744 = extractvalue %dx.types.CBufRet.f32 %2741, 2
  %2745 = extractvalue %dx.types.CBufRet.f32 %2741, 3
  %2746 = extractvalue %dx.types.CBufRet.f32 %2730, 0
  %2747 = extractvalue %dx.types.CBufRet.f32 %2730, 1
  %2748 = fadd fast float %2211, %2234
  %2749 = fadd fast float %2212, %2235
  %2750 = fadd fast float %2213, %2236
  %2751 = fmul fast float %2748, %2737
  %2752 = call float @dx.op.tertiary.f32(i32 46, float %2738, float %2749, float %2751)  ; FMad(a,b,c)
  %2753 = call float @dx.op.tertiary.f32(i32 46, float %2739, float %2750, float %2752)  ; FMad(a,b,c)
  %2754 = fadd fast float %2753, %2740
  %2755 = fmul fast float %2748, %2742
  %2756 = call float @dx.op.tertiary.f32(i32 46, float %2743, float %2749, float %2755)  ; FMad(a,b,c)
  %2757 = call float @dx.op.tertiary.f32(i32 46, float %2744, float %2750, float %2756)  ; FMad(a,b,c)
  %2758 = fadd fast float %2757, %2745
  %2759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %2754, float %2758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = fmul fast float %2760, %2747
  %2762 = fadd fast float %2761, %2746
  %2763 = call float @dx.op.unary.f32(i32 7, float %2762)  ; Saturate(value)
  %2764 = fmul fast float %2763, %2731
  %2765 = fsub fast float 1.000000e+00, %2764
  br label %2766

; <label>:2766                                    ; preds = %2735, %2733
  %2767 = phi float [ %2765, %2735 ], [ 1.000000e+00, %2733 ]
  %2768 = fmul fast float %2767, %2729
  br label %2769

; <label>:2769                                    ; preds = %2766, %2725, %2219
  %2770 = phi float [ 1.000000e+00, %2219 ], [ %2768, %2766 ], [ %2729, %2725 ]
  %2771 = call float @dx.op.binary.f32(i32 36, float %2770, float %2770)  ; FMin(a,b)
  %2772 = call float @dx.op.binary.f32(i32 36, float %2770, float %2771)  ; FMin(a,b)
  %2773 = fcmp fast ogt float %2772, 0.000000e+00
  br i1 %2773, label %2774, label %2932, !dx.controlflow.hints !137

; <label>:2774                                    ; preds = %2769
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2778 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2779 = extractvalue %dx.types.CBufRet.f32 %2775, 3
  %2780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2780, 0
  %2782 = extractvalue %dx.types.CBufRet.f32 %2780, 1
  %2783 = extractvalue %dx.types.CBufRet.f32 %2780, 2
  %2784 = extractvalue %dx.types.CBufRet.f32 %2780, 3
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2789 = extractvalue %dx.types.CBufRet.f32 %2785, 3
  %2790 = fmul fast float %2776, %2234
  %2791 = call float @dx.op.tertiary.f32(i32 46, float %2235, float %2777, float %2790)  ; FMad(a,b,c)
  %2792 = call float @dx.op.tertiary.f32(i32 46, float %2236, float %2778, float %2791)  ; FMad(a,b,c)
  %2793 = fadd fast float %2792, %2779
  %2794 = fmul fast float %2781, %2234
  %2795 = call float @dx.op.tertiary.f32(i32 46, float %2235, float %2782, float %2794)  ; FMad(a,b,c)
  %2796 = call float @dx.op.tertiary.f32(i32 46, float %2236, float %2783, float %2795)  ; FMad(a,b,c)
  %2797 = fadd fast float %2796, %2784
  %2798 = fmul fast float %2786, %2234
  %2799 = call float @dx.op.tertiary.f32(i32 46, float %2235, float %2787, float %2798)  ; FMad(a,b,c)
  %2800 = call float @dx.op.tertiary.f32(i32 46, float %2236, float %2788, float %2799)  ; FMad(a,b,c)
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2803 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %2804 = extractvalue %dx.types.CBufRet.f32 %2801, 3
  %2805 = fmul fast float %2804, %2793
  %2806 = fmul fast float %2804, %2797
  %2807 = fadd fast float %2805, %2802
  %2808 = fadd fast float %2806, %2803
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2812 = fsub fast float %2807, %2810
  %2813 = fsub fast float %2808, %2811
  %2814 = fcmp fast olt float %2812, 0.000000e+00
  %2815 = fcmp fast olt float %2813, 0.000000e+00
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.CBufRet.f32 %2816, 2
  %2820 = extractvalue %dx.types.CBufRet.f32 %2816, 3
  %2821 = select i1 %2814, float %2817, float %2819
  %2822 = select i1 %2815, float %2818, float %2820
  %2823 = fmul fast float %2821, %2812
  %2824 = fmul fast float %2822, %2813
  %2825 = call float @dx.op.unary.f32(i32 6, float %2823)  ; FAbs(value)
  %2826 = call float @dx.op.unary.f32(i32 6, float %2824)  ; FAbs(value)
  %2827 = extractvalue %dx.types.CBufRet.f32 %2229, 0
  %2828 = call float @dx.op.binary.f32(i32 35, float %2825, float %2826)  ; FMax(a,b)
  %2829 = fsub fast float %2827, %2828
  %2830 = call float @dx.op.unary.f32(i32 7, float %2829)  ; Saturate(value)
  %2831 = fcmp fast ogt float %2830, 0.000000e+00
  br i1 %2831, label %2832, label %2873, !dx.controlflow.hints !138

; <label>:2832                                    ; preds = %2774
  %2833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %40, float %2807, float %2808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 1
  %2835 = fcmp fast ogt float %2834, 0.000000e+00
  br i1 %2835, label %2836, label %2869, !dx.controlflow.hints !139

; <label>:2836                                    ; preds = %2832
  %2837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %2807, float %2808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2838 = extractvalue %dx.types.ResRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.ResRet.f32 %2837, 1
  %2840 = extractvalue %dx.types.ResRet.f32 %2837, 2
  %2841 = extractvalue %dx.types.ResRet.f32 %2837, 3
  %2842 = fsub fast float 1.000000e+00, %2789
  %2843 = fsub fast float %2842, %2800
  %2844 = fmul fast float %2843, 0x400921FB60000000
  %2845 = fadd fast float %2844, 0x3FF921FB60000000
  %2846 = call float @dx.op.unary.f32(i32 13, float %2845)  ; Sin(value)
  %2847 = fadd fast float %2846, -1.000000e+00
  %2848 = fmul fast float %2847, 0x3FD45F3060000000
  %2849 = fmul fast float %2843, 0x401921FB60000000
  %2850 = fadd fast float %2849, 0x400921FB60000000
  %2851 = call float @dx.op.unary.f32(i32 13, float %2850)  ; Sin(value)
  %2852 = fadd fast float %2851, 0x3E7777A5C0000000
  %2853 = fmul fast float %2852, 0x3FC45F3060000000
  %2854 = fmul fast float %2843, 0x4022D97C80000000
  %2855 = fadd fast float %2854, 0x4012D97C80000000
  %2856 = call float @dx.op.unary.f32(i32 13, float %2855)  ; Sin(value)
  %2857 = fadd fast float %2856, 1.000000e+00
  %2858 = fmul fast float %2857, 0x3FBB2995E0000000
  %2859 = fmul fast float %2843, 0x402921FB60000000
  %2860 = fadd fast float %2859, 0x401921FB60000000
  %2861 = call float @dx.op.unary.f32(i32 13, float %2860)  ; Sin(value)
  %2862 = fadd fast float %2861, 0xBE8777A5C0000000
  %2863 = fmul fast float %2862, 0x3FB45F3060000000
  %2864 = call float @dx.op.dot4.f32(i32 56, float %2838, float %2839, float %2840, float %2841, float %2848, float %2853, float %2858, float %2863)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2865 = fmul fast float %2864, 0xBFF7154760000000
  %2866 = call float @dx.op.unary.f32(i32 21, float %2865)  ; Exp(value)
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2868 = fadd float %2867, -1.000000e+00
  br label %2869

; <label>:2869                                    ; preds = %2836, %2832
  %2870 = phi float [ %2868, %2836 ], [ 0.000000e+00, %2832 ]
  %2871 = fmul fast float %2870, %2830
  %2872 = fadd fast float %2871, 1.000000e+00
  br label %2873

; <label>:2873                                    ; preds = %2869, %2774
  %2874 = phi float [ %2872, %2869 ], [ 1.000000e+00, %2774 ]
  %2875 = fmul fast float %2874, %2770
  %2876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2877 = extractvalue %dx.types.CBufRet.f32 %2876, 1
  %2878 = fsub fast float -0.000000e+00, %194
  %2879 = fsub fast float -0.000000e+00, %195
  %2880 = fsub fast float -0.000000e+00, %2214
  %2881 = fsub fast float %2880, %2213
  %2882 = fadd fast float %2881, %2877
  %2883 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2878, float %2879, float %2882)  ; Dot3(ax,ay,az,bx,by,bz)
  %2884 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2222, float %2223, float %2224)  ; Dot3(ax,ay,az,bx,by,bz)
  %2885 = fdiv fast float 1.000000e+00, %2884
  %2886 = fmul fast float %2885, %2883
  %2887 = fmul fast float %2222, %2886
  %2888 = fmul fast float %2223, %2886
  %2889 = fadd fast float %2887, %194
  %2890 = fadd fast float %2888, %195
  %2891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2892 = extractvalue %dx.types.CBufRet.f32 %2891, 0
  %2893 = extractvalue %dx.types.CBufRet.f32 %2891, 1
  %2894 = fsub fast float %2889, %2892
  %2895 = fsub fast float %2890, %2893
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 2
  %2898 = extractvalue %dx.types.CBufRet.f32 %2896, 3
  %2899 = fmul fast float %2894, %2897
  %2900 = fmul fast float %2895, %2898
  %2901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.i32 %2901, 3
  %2903 = icmp eq i32 %2902, 0
  br i1 %2903, label %2909, label %2904, !dx.controlflow.hints !140

; <label>:2904                                    ; preds = %2873
  %2905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %39, float %2899, float %2900, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2906 = extractvalue %dx.types.ResRet.f32 %2905, 0
  %2907 = extractvalue %dx.types.ResRet.f32 %2905, 1
  %2908 = extractvalue %dx.types.ResRet.f32 %2905, 2
  br label %2914

; <label>:2909                                    ; preds = %2873
  %2910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %40, float %2899, float %2900, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2911 = extractvalue %dx.types.ResRet.f32 %2910, 0
  %2912 = extractvalue %dx.types.ResRet.f32 %2910, 1
  %2913 = extractvalue %dx.types.ResRet.f32 %2910, 2
  br label %2914

; <label>:2914                                    ; preds = %2909, %2904
  %2915 = phi float [ %2906, %2904 ], [ %2911, %2909 ]
  %2916 = phi float [ %2907, %2904 ], [ %2912, %2909 ]
  %2917 = phi float [ %2908, %2904 ], [ %2913, %2909 ]
  %2918 = extractvalue %dx.types.CBufRet.f32 %2876, 2
  %2919 = fmul fast float %2918, %2915
  %2920 = extractvalue %dx.types.CBufRet.f32 %2876, 0
  %2921 = fsub fast float %2886, %2920
  %2922 = fsub fast float %2921, %2919
  %2923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2922)  ; FMax(a,b)
  %2924 = fmul fast float %2923, %2916
  %2925 = call float @dx.op.binary.f32(i32 36, float %2917, float %2924)  ; FMin(a,b)
  %2926 = fmul fast float %2925, 0xBFF7154760000000
  %2927 = call float @dx.op.unary.f32(i32 21, float %2926)  ; Exp(value)
  %2928 = fadd fast float %2927, -1.000000e+00
  %2929 = fmul fast float %2928, %2209
  %2930 = fadd fast float %2929, 1.000000e+00
  %2931 = fmul fast float %2875, %2930
  br label %2932

; <label>:2932                                    ; preds = %2914, %2769
  %2933 = phi float [ %2931, %2914 ], [ %2770, %2769 ]
  %2934 = call float @dx.op.binary.f32(i32 36, float %2933, float %2933)  ; FMin(a,b)
  %2935 = call float @dx.op.binary.f32(i32 36, float %2933, float %2934)  ; FMin(a,b)
  %2936 = fcmp fast ogt float %2935, 0.000000e+00
  br i1 %2936, label %2937, label %3367, !dx.controlflow.hints !141

; <label>:2937                                    ; preds = %2932
  br i1 %245, label %2938, label %3340, !dx.controlflow.hints !142

; <label>:2938                                    ; preds = %2937
  %2939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.i32 %2939, 0
  %2941 = and i32 %2940, 64
  %2942 = icmp ne i32 %2941, 0
  %2943 = fsub fast float %196, %234
  %2944 = fcmp fast ogt float %2943, 0.000000e+00
  %2945 = xor i1 %2944, true
  %2946 = fmul fast float %2222, 5.120000e+02
  %2947 = fmul fast float %2223, 5.120000e+02
  %2948 = fmul fast float %2224, 5.120000e+02
  %2949 = fadd fast float %2948, %2214
  %2950 = fsub fast float %2215, %2949
  %2951 = fmul fast float %2950, 2.000000e+00
  %2952 = fadd fast float %2951, %2949
  %2953 = select i1 %2944, float %2952, float %2949
  %2954 = fsub fast float %2953, %2214
  %2955 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2947, float %2954, float %2946, float %2947, float %2954)  ; Dot3(ax,ay,az,bx,by,bz)
  %2956 = call float @dx.op.unary.f32(i32 25, float %2955)  ; Rsqrt(value)
  %2957 = fmul fast float %2956, %2946
  %2958 = fmul fast float %2956, %2947
  %2959 = fmul fast float %2956, %2954
  %2960 = fsub fast float %234, %196
  %2961 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2960)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2957, float %2958, float %2959)  ; Dot3(ax,ay,az,bx,by,bz)
  %2963 = fdiv fast float 1.000000e+00, %2962
  %2964 = fmul fast float %2963, %2961
  %2965 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2943, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = fcmp fast ogt float %2965, 0.000000e+00
  %2967 = fcmp fast olt float %2965, 0.000000e+00
  %2968 = zext i1 %2966 to i32
  %2969 = zext i1 %2967 to i32
  %2970 = sub nsw i32 %2968, %2969
  %2971 = sitofp i32 %2970 to float
  %2972 = fsub fast float %2953, %2215
  %2973 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2947, float %2972, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2974 = fcmp fast ogt float %2973, 0.000000e+00
  %2975 = fcmp fast olt float %2973, 0.000000e+00
  %2976 = zext i1 %2974 to i32
  %2977 = zext i1 %2975 to i32
  %2978 = sub nsw i32 %2976, %2977
  %2979 = sitofp i32 %2978 to float
  %2980 = fcmp fast une float %2971, %2979
  br i1 %2980, label %2981, label %2991, !dx.controlflow.hints !143

; <label>:2981                                    ; preds = %2938
  %2982 = fmul fast float %2964, %2959
  %2983 = fmul fast float %2964, %2958
  %2984 = fmul fast float %2964, %2957
  %2985 = fmul fast float %2984, %2984
  %2986 = fmul fast float %2983, %2983
  %2987 = fadd fast float %2985, %2986
  %2988 = fmul fast float %2982, %2982
  %2989 = fadd fast float %2987, %2988
  %2990 = call float @dx.op.unary.f32(i32 24, float %2989)  ; Sqrt(value)
  br label %3001

; <label>:2991                                    ; preds = %2938
  %2992 = icmp slt i32 %2970, 0
  br i1 %2992, label %2993, label %3001, !dx.controlflow.hints !144

; <label>:2993                                    ; preds = %2991
  %2994 = fsub fast float %2214, %2953
  %2995 = fmul fast float %2946, %2946
  %2996 = fmul fast float %2947, %2947
  %2997 = fadd fast float %2995, %2996
  %2998 = fmul fast float %2994, %2994
  %2999 = fadd fast float %2997, %2998
  %3000 = call float @dx.op.unary.f32(i32 24, float %2999)  ; Sqrt(value)
  br label %3001

; <label>:3001                                    ; preds = %2993, %2991, %2981
  %3002 = phi float [ %2990, %2981 ], [ %3000, %2993 ], [ 0.000000e+00, %2991 ]
  %3003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %3004 = extractvalue %dx.types.CBufRet.i32 %3003, 1
  %3005 = icmp ne i32 %3004, 0
  %3006 = and i1 %3005, %2945
  %3007 = call float @dx.op.dot3.f32(i32 55, float %2957, float %2958, float %2959, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3008 = fmul fast float %3007, %3007
  %3009 = fsub fast float 1.000000e+00, %3008
  %3010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3011 = extractvalue %dx.types.CBufRet.f32 %3010, 0
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 0
  %3014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3015 = extractvalue %dx.types.CBufRet.f32 %3014, 0
  %3016 = extractvalue %dx.types.CBufRet.f32 %3010, 1
  %3017 = extractvalue %dx.types.CBufRet.f32 %3012, 1
  %3018 = extractvalue %dx.types.CBufRet.f32 %3014, 1
  %3019 = extractvalue %dx.types.CBufRet.f32 %3010, 3
  %3020 = extractvalue %dx.types.CBufRet.f32 %3012, 3
  %3021 = extractvalue %dx.types.CBufRet.f32 %3014, 3
  %3022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %3023 = extractvalue %dx.types.CBufRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.CBufRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.CBufRet.f32 %3022, 2
  %3026 = extractvalue %dx.types.CBufRet.f32 %3022, 3
  br i1 %3006, label %3027, label %3220, !dx.controlflow.hints !145

; <label>:3027                                    ; preds = %3001
  %3028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %3029 = extractvalue %dx.types.CBufRet.f32 %3028, 0
  %3030 = fmul fast float %3029, %3029
  %3031 = fmul fast float %3030, %3009
  %3032 = fsub fast float 1.000000e+00, %3031
  %3033 = fcmp fast oge float %3032, 0.000000e+00
  %3034 = fmul fast float %3029, %2957
  %3035 = fmul fast float %3029, %2958
  %3036 = fmul fast float %3029, %2959
  %3037 = call float @dx.op.unary.f32(i32 24, float %3032)  ; Sqrt(value)
  %3038 = fmul fast float %3029, %3007
  %3039 = fsub fast float -0.000000e+00, %3037
  %3040 = fsub fast float %3039, %3038
  %3041 = fadd fast float %3040, %3036
  %3042 = select i1 %3033, float %3034, float 0.000000e+00
  %3043 = select i1 %3033, float %3035, float 0.000000e+00
  %3044 = select i1 %3033, float %3041, float 0.000000e+00
  %3045 = fmul fast float %3042, %3002
  %3046 = fmul fast float %3043, %3002
  %3047 = fmul fast float %3044, %3002
  %3048 = fadd fast float %194, %3045
  %3049 = fadd fast float %3048, %3019
  %3050 = fadd fast float %195, %3046
  %3051 = fadd fast float %3050, %3020
  %3052 = fadd fast float %196, %3047
  %3053 = fadd fast float %3052, %3021
  %3054 = fmul fast float %3049, %3011
  %3055 = call float @dx.op.tertiary.f32(i32 46, float %3051, float %3013, float %3054)  ; FMad(a,b,c)
  %3056 = call float @dx.op.tertiary.f32(i32 46, float %3053, float %3015, float %3055)  ; FMad(a,b,c)
  %3057 = fmul fast float %3049, %3016
  %3058 = call float @dx.op.tertiary.f32(i32 46, float %3051, float %3017, float %3057)  ; FMad(a,b,c)
  %3059 = call float @dx.op.tertiary.f32(i32 46, float %3053, float %3018, float %3058)  ; FMad(a,b,c)
  %3060 = fsub fast float %3056, %3019
  %3061 = fsub fast float %3060, %3023
  %3062 = fadd fast float %3061, %3025
  %3063 = fsub fast float %3059, %3020
  %3064 = fsub fast float %3063, %3024
  %3065 = fadd fast float %3064, %3025
  %3066 = fmul fast float %3062, %3026
  %3067 = fmul fast float %3065, %3026
  %3068 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3069 = call float @dx.op.unary.f32(i32 7, float %3067)  ; Saturate(value)
  %3070 = fsub fast float 1.000000e+00, %3068
  %3071 = fsub fast float 1.000000e+00, %3069
  %3072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %3070, float %3071, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = fmul fast float %3073, 0x3FBC5ABC00000000
  %3075 = extractvalue %dx.types.CBufRet.f32 %3028, 1
  %3076 = fmul fast float %3075, %3075
  %3077 = fmul fast float %3076, %3009
  %3078 = fsub fast float 1.000000e+00, %3077
  %3079 = fcmp fast oge float %3078, 0.000000e+00
  %3080 = fmul fast float %3075, %2957
  %3081 = fmul fast float %3075, %2958
  %3082 = fmul fast float %3075, %2959
  %3083 = call float @dx.op.unary.f32(i32 24, float %3078)  ; Sqrt(value)
  %3084 = fmul fast float %3075, %3007
  %3085 = fsub fast float -0.000000e+00, %3083
  %3086 = fsub fast float %3085, %3084
  %3087 = fadd fast float %3086, %3082
  %3088 = select i1 %3079, float %3080, float 0.000000e+00
  %3089 = select i1 %3079, float %3081, float 0.000000e+00
  %3090 = select i1 %3079, float %3087, float 0.000000e+00
  %3091 = fmul fast float %3088, %3002
  %3092 = fmul fast float %3089, %3002
  %3093 = fmul fast float %3090, %3002
  %3094 = fadd fast float %194, %3091
  %3095 = fadd fast float %3094, %3019
  %3096 = fadd fast float %195, %3092
  %3097 = fadd fast float %3096, %3020
  %3098 = fadd fast float %196, %3093
  %3099 = fadd fast float %3098, %3021
  %3100 = fmul fast float %3095, %3011
  %3101 = call float @dx.op.tertiary.f32(i32 46, float %3097, float %3013, float %3100)  ; FMad(a,b,c)
  %3102 = call float @dx.op.tertiary.f32(i32 46, float %3099, float %3015, float %3101)  ; FMad(a,b,c)
  %3103 = fmul fast float %3095, %3016
  %3104 = call float @dx.op.tertiary.f32(i32 46, float %3097, float %3017, float %3103)  ; FMad(a,b,c)
  %3105 = call float @dx.op.tertiary.f32(i32 46, float %3099, float %3018, float %3104)  ; FMad(a,b,c)
  %3106 = fsub fast float %3102, %3019
  %3107 = fsub fast float %3106, %3023
  %3108 = fadd fast float %3107, %3025
  %3109 = fsub fast float %3105, %3020
  %3110 = fsub fast float %3109, %3024
  %3111 = fadd fast float %3110, %3025
  %3112 = fmul fast float %3108, %3026
  %3113 = fmul fast float %3111, %3026
  %3114 = call float @dx.op.unary.f32(i32 7, float %3112)  ; Saturate(value)
  %3115 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  %3116 = fsub fast float 1.000000e+00, %3114
  %3117 = fsub fast float 1.000000e+00, %3115
  %3118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %3116, float %3117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3119 = extractvalue %dx.types.ResRet.f32 %3118, 0
  %3120 = fmul fast float %3119, 0x3F9E4BBD60000000
  %3121 = extractvalue %dx.types.CBufRet.f32 %3028, 2
  %3122 = fmul fast float %3121, %3121
  %3123 = fmul fast float %3122, %3009
  %3124 = fsub fast float 1.000000e+00, %3123
  %3125 = fcmp fast oge float %3124, 0.000000e+00
  %3126 = fmul fast float %3121, %2957
  %3127 = fmul fast float %3121, %2958
  %3128 = fmul fast float %3121, %2959
  %3129 = call float @dx.op.unary.f32(i32 24, float %3124)  ; Sqrt(value)
  %3130 = fmul fast float %3121, %3007
  %3131 = fsub fast float -0.000000e+00, %3129
  %3132 = fsub fast float %3131, %3130
  %3133 = fadd fast float %3132, %3128
  %3134 = select i1 %3125, float %3126, float 0.000000e+00
  %3135 = select i1 %3125, float %3127, float 0.000000e+00
  %3136 = select i1 %3125, float %3133, float 0.000000e+00
  %3137 = fmul fast float %3134, %3002
  %3138 = fmul fast float %3135, %3002
  %3139 = fmul fast float %3136, %3002
  %3140 = fadd fast float %194, %3137
  %3141 = fadd fast float %3140, %3019
  %3142 = fadd fast float %195, %3138
  %3143 = fadd fast float %3142, %3020
  %3144 = fadd fast float %196, %3139
  %3145 = fadd fast float %3144, %3021
  %3146 = fmul fast float %3141, %3011
  %3147 = call float @dx.op.tertiary.f32(i32 46, float %3143, float %3013, float %3146)  ; FMad(a,b,c)
  %3148 = call float @dx.op.tertiary.f32(i32 46, float %3145, float %3015, float %3147)  ; FMad(a,b,c)
  %3149 = fmul fast float %3141, %3016
  %3150 = call float @dx.op.tertiary.f32(i32 46, float %3143, float %3017, float %3149)  ; FMad(a,b,c)
  %3151 = call float @dx.op.tertiary.f32(i32 46, float %3145, float %3018, float %3150)  ; FMad(a,b,c)
  %3152 = fsub fast float %3148, %3019
  %3153 = fsub fast float %3152, %3023
  %3154 = fadd fast float %3153, %3025
  %3155 = fsub fast float %3151, %3020
  %3156 = fsub fast float %3155, %3024
  %3157 = fadd fast float %3156, %3025
  %3158 = fmul fast float %3154, %3026
  %3159 = fmul fast float %3157, %3026
  %3160 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  %3161 = call float @dx.op.unary.f32(i32 7, float %3159)  ; Saturate(value)
  %3162 = fsub fast float 1.000000e+00, %3160
  %3163 = fsub fast float 1.000000e+00, %3161
  %3164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %3162, float %3163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3165 = extractvalue %dx.types.ResRet.f32 %3164, 0
  %3166 = fmul fast float %3165, 0x3FDDEACB00000000
  %3167 = fadd fast float %3166, %3120
  %3168 = extractvalue %dx.types.CBufRet.f32 %3028, 3
  %3169 = fmul fast float %3168, %3168
  %3170 = fmul fast float %3169, %3009
  %3171 = fsub fast float 1.000000e+00, %3170
  %3172 = fcmp fast oge float %3171, 0.000000e+00
  %3173 = fmul fast float %3168, %2957
  %3174 = fmul fast float %3168, %2958
  %3175 = fmul fast float %3168, %2959
  %3176 = call float @dx.op.unary.f32(i32 24, float %3171)  ; Sqrt(value)
  %3177 = fmul fast float %3168, %3007
  %3178 = fsub fast float -0.000000e+00, %3176
  %3179 = fsub fast float %3178, %3177
  %3180 = fadd fast float %3179, %3175
  %3181 = select i1 %3172, float %3173, float 0.000000e+00
  %3182 = select i1 %3172, float %3174, float 0.000000e+00
  %3183 = select i1 %3172, float %3180, float 0.000000e+00
  %3184 = fmul fast float %3181, %3002
  %3185 = fmul fast float %3182, %3002
  %3186 = fmul fast float %3183, %3002
  %3187 = fadd fast float %194, %3184
  %3188 = fadd fast float %3187, %3019
  %3189 = fadd fast float %195, %3185
  %3190 = fadd fast float %3189, %3020
  %3191 = fadd fast float %196, %3186
  %3192 = fadd fast float %3191, %3021
  %3193 = fmul fast float %3188, %3011
  %3194 = call float @dx.op.tertiary.f32(i32 46, float %3190, float %3013, float %3193)  ; FMad(a,b,c)
  %3195 = call float @dx.op.tertiary.f32(i32 46, float %3192, float %3015, float %3194)  ; FMad(a,b,c)
  %3196 = fmul fast float %3188, %3016
  %3197 = call float @dx.op.tertiary.f32(i32 46, float %3190, float %3017, float %3196)  ; FMad(a,b,c)
  %3198 = call float @dx.op.tertiary.f32(i32 46, float %3192, float %3018, float %3197)  ; FMad(a,b,c)
  %3199 = fsub fast float %3195, %3019
  %3200 = fsub fast float %3199, %3023
  %3201 = fadd fast float %3200, %3025
  %3202 = fsub fast float %3198, %3020
  %3203 = fsub fast float %3202, %3024
  %3204 = fadd fast float %3203, %3025
  %3205 = fmul fast float %3201, %3026
  %3206 = fmul fast float %3204, %3026
  %3207 = call float @dx.op.unary.f32(i32 7, float %3205)  ; Saturate(value)
  %3208 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  %3209 = fsub fast float 1.000000e+00, %3207
  %3210 = fsub fast float 1.000000e+00, %3208
  %3211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %3209, float %3210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3212 = extractvalue %dx.types.ResRet.f32 %3211, 0
  %3213 = fmul fast float %3212, 0x3FE0183CA0000000
  %3214 = fmul fast float %3212, 0x3FB51033E0000000
  %3215 = fadd fast float %3167, %3213
  %3216 = fadd fast float %3165, %3119
  %3217 = fmul fast float %3216, 0x3FD9D2A200000000
  %3218 = fadd fast float %3214, %3074
  %3219 = fadd fast float %3218, %3217
  br label %3266

; <label>:3220                                    ; preds = %3001
  %3221 = fmul fast float %3009, 0x3FE2024E20000000
  %3222 = fsub fast float 1.000000e+00, %3221
  %3223 = fcmp fast oge float %3222, 0.000000e+00
  %3224 = fmul fast float %2957, 0x3FE8018960000000
  %3225 = fmul fast float %2958, 0x3FE8018960000000
  %3226 = fmul fast float %2959, 0x3FE8018960000000
  %3227 = call float @dx.op.unary.f32(i32 24, float %3222)  ; Sqrt(value)
  %3228 = fmul fast float %3007, 0x3FE8018960000000
  %3229 = fsub fast float %3226, %3227
  %3230 = fsub fast float %3229, %3228
  %3231 = select i1 %3223, float %3224, float 0.000000e+00
  %3232 = select i1 %3223, float %3225, float 0.000000e+00
  %3233 = select i1 %3223, float %3230, float 0.000000e+00
  %3234 = select i1 %2944, float %2957, float %3231
  %3235 = select i1 %2944, float %2958, float %3232
  %3236 = select i1 %2944, float %2959, float %3233
  %3237 = fmul fast float %3234, %3002
  %3238 = fmul fast float %3235, %3002
  %3239 = fmul fast float %3236, %3002
  %3240 = fadd fast float %194, %3237
  %3241 = fadd fast float %3240, %3019
  %3242 = fadd fast float %195, %3238
  %3243 = fadd fast float %3242, %3020
  %3244 = fadd fast float %196, %3239
  %3245 = fadd fast float %3244, %3021
  %3246 = fmul fast float %3241, %3011
  %3247 = call float @dx.op.tertiary.f32(i32 46, float %3243, float %3013, float %3246)  ; FMad(a,b,c)
  %3248 = call float @dx.op.tertiary.f32(i32 46, float %3245, float %3015, float %3247)  ; FMad(a,b,c)
  %3249 = fmul fast float %3241, %3016
  %3250 = call float @dx.op.tertiary.f32(i32 46, float %3243, float %3017, float %3249)  ; FMad(a,b,c)
  %3251 = call float @dx.op.tertiary.f32(i32 46, float %3245, float %3018, float %3250)  ; FMad(a,b,c)
  %3252 = fsub fast float %3248, %3019
  %3253 = fsub fast float %3252, %3023
  %3254 = fadd fast float %3253, %3025
  %3255 = fsub fast float %3251, %3020
  %3256 = fsub fast float %3255, %3024
  %3257 = fadd fast float %3256, %3025
  %3258 = fmul fast float %3254, %3026
  %3259 = fmul fast float %3257, %3026
  %3260 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3261 = call float @dx.op.unary.f32(i32 7, float %3259)  ; Saturate(value)
  %3262 = fsub fast float 1.000000e+00, %3260
  %3263 = fsub fast float 1.000000e+00, %3261
  %3264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %3262, float %3263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3265 = extractvalue %dx.types.ResRet.f32 %3264, 0
  br label %3266

; <label>:3266                                    ; preds = %3220, %3027
  %3267 = phi float [ %3265, %3220 ], [ %3215, %3027 ]
  %3268 = phi float [ %3265, %3220 ], [ %3219, %3027 ]
  %3269 = phi float [ %3265, %3220 ], [ %3073, %3027 ]
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 0
  %3272 = call float @dx.op.unary.f32(i32 6, float %3271)  ; FAbs(value)
  %3273 = fmul fast float %3002, %3002
  %3274 = fadd fast float %3273, 1.000000e+00
  %3275 = fdiv fast float %3272, %3274
  %3276 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  %3277 = fsub fast float -0.000000e+00, %3002
  %3278 = select i1 %2944, float -0.000000e+00, float %3277
  %3279 = fmul fast float %1218, 0x3FF7154760000000
  %3280 = fmul fast float %3279, %3278
  %3281 = fmul fast float %1219, 0x3FF7154760000000
  %3282 = fmul fast float %3281, %3278
  %3283 = fmul fast float %1220, 0x3FF7154760000000
  %3284 = fmul fast float %3283, %3278
  %3285 = call float @dx.op.unary.f32(i32 21, float %3280)  ; Exp(value)
  %3286 = call float @dx.op.unary.f32(i32 21, float %3282)  ; Exp(value)
  %3287 = call float @dx.op.unary.f32(i32 21, float %3284)  ; Exp(value)
  %3288 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  %3289 = call float @dx.op.unary.f32(i32 7, float %3286)  ; Saturate(value)
  %3290 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  %3291 = call float @dx.op.unary.f32(i32 6, float %3007)  ; FAbs(value)
  %3292 = fsub fast float 1.000000e+00, %3291
  %3293 = bitcast float %3292 to i32
  %3294 = sitofp i32 %3293 to float
  %3295 = fptosi float %3294 to i32
  %3296 = bitcast i32 %3295 to float
  %3297 = fmul fast float %3296, 0x3FEF333340000000
  %3298 = fadd fast float %3297, 0x3F999999A0000000
  %3299 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  %3300 = fsub fast float 1.000000e+00, %3299
  %3301 = fadd fast float %3267, 1.000000e+00
  %3302 = fadd fast float %3268, 1.000000e+00
  %3303 = fadd fast float %3269, 1.000000e+00
  %3304 = fmul fast float %3288, %3301
  %3305 = fmul fast float %3289, %3302
  %3306 = fmul fast float %3290, %3303
  %3307 = fmul fast float %3304, %3300
  %3308 = fmul fast float %3305, %3300
  %3309 = fmul fast float %3306, %3300
  %3310 = fmul fast float %3276, %3301
  %3311 = fmul fast float %3310, %3288
  %3312 = fmul fast float %3311, %3299
  %3313 = fmul fast float %3276, %3302
  %3314 = fmul fast float %3313, %3289
  %3315 = fmul fast float %3314, %3299
  %3316 = fmul fast float %3276, %3303
  %3317 = fmul fast float %3316, %3290
  %3318 = fmul fast float %3317, %3299
  %3319 = fadd fast float %3312, %3288
  %3320 = fadd fast float %3315, %3289
  %3321 = fadd fast float %3318, %3290
  %3322 = call float @dx.op.unary.f32(i32 6, float %2943)  ; FAbs(value)
  %3323 = call float @dx.op.unary.f32(i32 7, float %3322)  ; Saturate(value)
  %3324 = select i1 %2944, float %3319, float %3307
  %3325 = select i1 %2944, float %3320, float %3308
  %3326 = select i1 %2944, float %3321, float %3309
  %3327 = select i1 %2942, float %3323, float 0.000000e+00
  %3328 = fsub fast float %3324, %3288
  %3329 = fsub fast float %3325, %3289
  %3330 = fsub fast float %3326, %3290
  %3331 = fmul fast float %3328, %3327
  %3332 = fmul fast float %3329, %3327
  %3333 = fmul fast float %3330, %3327
  %3334 = fadd fast float %3331, %3288
  %3335 = fadd fast float %3332, %3289
  %3336 = fadd fast float %3333, %3290
  %3337 = fmul fast float %3334, %2226
  %3338 = fmul fast float %3335, %2227
  %3339 = fmul fast float %3336, %2228
  br label %3340

; <label>:3340                                    ; preds = %3266, %2937
  %3341 = phi float [ %3337, %3266 ], [ %2226, %2937 ]
  %3342 = phi float [ %3338, %3266 ], [ %2227, %2937 ]
  %3343 = phi float [ %3339, %3266 ], [ %2228, %2937 ]
  %3344 = call float @dx.op.dot3.f32(i32 55, float %2222, float %2223, float %2224, float %207, float %208, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %3345 = fcmp fast ogt float %2203, 0.000000e+00
  %3346 = select i1 %3345, float 1.000000e+00, float -1.000000e+00
  %3347 = fmul fast float %122, 7.812500e-03
  %3348 = fmul fast float %122, 3.125000e-02
  %3349 = fadd fast float %3348, -3.125000e-02
  %3350 = fmul fast float %3346, 5.000000e-01
  %3351 = fmul fast float %3350, %3344
  %3352 = fmul fast float %3346, %2203
  %3353 = fadd fast float %3347, 4.921875e-01
  %3354 = fadd fast float %3353, %3351
  %3355 = fadd fast float %3347, 0x3FB25F3060000000
  %3356 = fadd fast float %3349, %3352
  %3357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %40, float %3354, float %3355, float %3356, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3358 = extractvalue %dx.types.ResRet.f32 %3357, 0
  %3359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3360 = extractvalue %dx.types.CBufRet.f32 %3359, 0
  %3361 = fmul fast float %2933, 0x400921FB60000000
  %3362 = fmul fast float %3361, %3358
  %3363 = fmul fast float %3362, %3360
  %3364 = fmul fast float %3363, %3341
  %3365 = fmul fast float %3363, %3342
  %3366 = fmul fast float %3363, %3343
  br label %3367

; <label>:3367                                    ; preds = %3340, %2932, %2198
  %3368 = phi float [ %3364, %3340 ], [ 0.000000e+00, %2198 ], [ 0.000000e+00, %2932 ]
  %3369 = phi float [ %3365, %3340 ], [ 0.000000e+00, %2198 ], [ 0.000000e+00, %2932 ]
  %3370 = phi float [ %3366, %3340 ], [ 0.000000e+00, %2198 ], [ 0.000000e+00, %2932 ]
  %3371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %143, float %144, float %145, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3372)  ; IsNaN(value)
  %3376 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3373)  ; IsNaN(value)
  %3377 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3374)  ; IsNaN(value)
  %3378 = or i1 %3375, %3376
  %3379 = or i1 %3378, %3377
  %3380 = select i1 %3379, float 0.000000e+00, float %3372
  %3381 = select i1 %3379, float 0.000000e+00, float %3373
  %3382 = select i1 %3379, float 0.000000e+00, float %3374
  %3383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3384 = extractvalue %dx.types.CBufRet.f32 %3383, 1
  %3385 = fmul fast float %3380, %3384
  %3386 = fmul fast float %3381, %3384
  %3387 = fmul fast float %3382, %3384
  %3388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3389 = extractvalue %dx.types.CBufRet.f32 %3388, 3
  %3390 = fmul fast float %3385, %3389
  %3391 = fmul fast float %3386, %3389
  %3392 = fmul fast float %3387, %3389
  %3393 = fadd fast float %3390, %3368
  %3394 = fadd fast float %3391, %3369
  %3395 = fadd fast float %3392, %3370
  br label %3396

; <label>:3396                                    ; preds = %3367, %2191
  %3397 = phi float [ %2200, %3367 ], [ %2192, %2191 ]
  %3398 = phi float [ %2201, %3367 ], [ %2193, %2191 ]
  %3399 = phi float [ %2202, %3367 ], [ %2194, %2191 ]
  %3400 = phi float [ %3393, %3367 ], [ 0.000000e+00, %2191 ]
  %3401 = phi float [ %3394, %3367 ], [ 0.000000e+00, %2191 ]
  %3402 = phi float [ %3395, %3367 ], [ 0.000000e+00, %2191 ]
  %3403 = fmul fast float %3397, %2196
  %3404 = fmul fast float %3398, %2196
  %3405 = fmul fast float %3399, %2196
  %3406 = select i1 %245, float %1218, float %2196
  %3407 = select i1 %245, float %1219, float %2196
  %3408 = select i1 %245, float %1220, float %2196
  %3409 = fmul fast float %3403, %3400
  %3410 = fmul fast float %3404, %3401
  %3411 = fmul fast float %3405, %3402
  %3412 = xor i1 %248, true
  %3413 = and i1 %84, %3412
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 0
  %3416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.f32 %3416, 0
  %3418 = select i1 %212, float %3415, float %3417
  %3419 = fmul fast float %3409, %3418
  %3420 = fmul fast float %3410, %3418
  %3421 = fmul fast float %3411, %3418
  %3422 = fmul fast float %3420, 5.000000e-01
  %3423 = fadd fast float %3411, %3409
  %3424 = fmul fast float %3418, %3423
  %3425 = fmul fast float %3424, 2.500000e-01
  %3426 = fadd fast float %3425, %3422
  %3427 = call float @dx.op.unary.f32(i32 23, float %3426)  ; Log(value)
  %3428 = fmul fast float %3427, 0x3FE62E4300000000
  %3429 = fmul fast float %3428, %3428
  %3430 = select i1 %3413, float 1.000000e+00, float 0.000000e+00
  store float %3430, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  %3431 = fmul fast float %3428, %3430
  store float %3431, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  %3432 = fmul fast float %3429, %3430
  store float %3432, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3433 = load float, float addrspace(3)* %259, align 4, !tbaa !60, !noalias !64
  %3434 = fadd fast float %3433, %3430
  %3435 = load float, float addrspace(3)* %262, align 4, !tbaa !60, !noalias !64
  %3436 = fadd fast float %3435, %3428
  %3437 = load float, float addrspace(3)* %265, align 4, !tbaa !60, !noalias !64
  %3438 = fadd fast float %3437, %3429
  store float %3434, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  store float %3436, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  store float %3438, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3439 = load float, float addrspace(3)* %269, align 4, !tbaa !60, !noalias !64
  %3440 = fadd fast float %3439, %3434
  %3441 = load float, float addrspace(3)* %272, align 4, !tbaa !60, !noalias !64
  %3442 = fadd fast float %3441, %3436
  %3443 = load float, float addrspace(3)* %275, align 4, !tbaa !60, !noalias !64
  %3444 = fadd fast float %3443, %3438
  store float %3440, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  store float %3442, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  store float %3444, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3445 = load float, float addrspace(3)* %279, align 4, !tbaa !60, !noalias !64
  %3446 = fadd fast float %3445, %3440
  %3447 = load float, float addrspace(3)* %282, align 4, !tbaa !60, !noalias !64
  %3448 = fadd fast float %3447, %3442
  %3449 = fdiv fast float %3448, %3446
  %3450 = and i1 %3413, %289
  br i1 %3450, label %3451, label %3459, !dx.controlflow.hints !68

; <label>:3451                                    ; preds = %3396
  %3452 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %278
  %3453 = load float, float addrspace(3)* %3452, align 4, !tbaa !60, !noalias !64
  %3454 = fadd fast float %3453, %3444
  %3455 = fdiv fast float %3454, %3446
  %3456 = lshr i32 %72, 1
  %3457 = lshr i32 %73, 1
  %3458 = lshr i32 %247, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3456, i32 %3457, i32 %3458, float %3449, float %3455, float %3449, float %3449, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3459

; <label>:3459                                    ; preds = %3451, %3396
  br i1 %3413, label %3460, label %3494, !dx.controlflow.hints !69

; <label>:3460                                    ; preds = %3459
  %3461 = fadd fast float %122, 0x3FE3C6EF40000000
  %3462 = call float @dx.op.unary.f32(i32 22, float %3461)  ; Frc(value)
  %3463 = call float @dx.op.unary.f32(i32 23, float %3419)  ; Log(value)
  %3464 = fadd fast float %3463, -7.000000e+00
  %3465 = call float @dx.op.unary.f32(i32 21, float %3464)  ; Exp(value)
  %3466 = fmul fast float %3462, 2.000000e+00
  %3467 = fadd fast float %3466, -1.000000e+00
  %3468 = fmul fast float %3465, %3467
  %3469 = fcmp fast ogt float %3419, 0.000000e+00
  %3470 = select i1 %3469, float %3468, float 0.000000e+00
  %3471 = fadd fast float %3470, %3419
  %3472 = fadd fast float %122, 0x3FF3C6EF40000000
  %3473 = call float @dx.op.unary.f32(i32 22, float %3472)  ; Frc(value)
  %3474 = call float @dx.op.unary.f32(i32 23, float %3420)  ; Log(value)
  %3475 = fadd fast float %3474, -7.000000e+00
  %3476 = call float @dx.op.unary.f32(i32 21, float %3475)  ; Exp(value)
  %3477 = fmul fast float %3473, 2.000000e+00
  %3478 = fadd fast float %3477, -1.000000e+00
  %3479 = fmul fast float %3476, %3478
  %3480 = fcmp fast ogt float %3420, 0.000000e+00
  %3481 = select i1 %3480, float %3479, float 0.000000e+00
  %3482 = fadd fast float %3481, %3420
  %3483 = fadd fast float %122, 0x3FFDAA66E0000000
  %3484 = call float @dx.op.unary.f32(i32 22, float %3483)  ; Frc(value)
  %3485 = call float @dx.op.unary.f32(i32 23, float %3421)  ; Log(value)
  %3486 = fadd fast float %3485, -6.000000e+00
  %3487 = call float @dx.op.unary.f32(i32 21, float %3486)  ; Exp(value)
  %3488 = fmul fast float %3484, 2.000000e+00
  %3489 = fadd fast float %3488, -1.000000e+00
  %3490 = fmul fast float %3487, %3489
  %3491 = fcmp fast ogt float %3421, 0.000000e+00
  %3492 = select i1 %3491, float %3490, float 0.000000e+00
  %3493 = fadd fast float %3492, %3421
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %72, i32 %73, i32 %247, float %3471, float %3482, float %3493, float %3471, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3494

; <label>:3494                                    ; preds = %3460, %3459
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %3497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  %3499 = select i1 %212, float %3496, float %3498
  %3500 = fmul fast float %3499, %3406
  %3501 = fmul fast float %3499, %3407
  %3502 = fmul fast float %3499, %3408
  %3503 = fmul fast float %3501, 5.000000e-01
  %3504 = fadd fast float %3408, %3406
  %3505 = fmul fast float %3499, %3504
  %3506 = fmul fast float %3505, 2.500000e-01
  %3507 = fadd fast float %3506, %3503
  %3508 = fmul fast float %3507, %3507
  store float %3430, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  %3509 = fmul fast float %3507, %3430
  store float %3509, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  %3510 = fmul fast float %3508, %3430
  store float %3510, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3511 = load float, float addrspace(3)* %259, align 4, !tbaa !60, !noalias !64
  %3512 = fadd fast float %3511, %3430
  %3513 = load float, float addrspace(3)* %262, align 4, !tbaa !60, !noalias !64
  %3514 = fadd fast float %3507, %3513
  %3515 = load float, float addrspace(3)* %265, align 4, !tbaa !60, !noalias !64
  %3516 = fadd fast float %3508, %3515
  store float %3512, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  store float %3514, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  store float %3516, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3517 = load float, float addrspace(3)* %269, align 4, !tbaa !60, !noalias !64
  %3518 = fadd fast float %3517, %3512
  %3519 = load float, float addrspace(3)* %272, align 4, !tbaa !60, !noalias !64
  %3520 = fadd fast float %3514, %3519
  %3521 = load float, float addrspace(3)* %275, align 4, !tbaa !60, !noalias !64
  %3522 = fadd fast float %3516, %3521
  store float %3518, float addrspace(3)* %253, align 4, !tbaa !60, !noalias !64
  store float %3520, float addrspace(3)* %255, align 4, !tbaa !60, !noalias !64
  store float %3522, float addrspace(3)* %257, align 4, !tbaa !60, !noalias !64
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3523 = load float, float addrspace(3)* %279, align 4, !tbaa !60, !noalias !64
  %3524 = fadd fast float %3523, %3518
  %3525 = load float, float addrspace(3)* %282, align 4, !tbaa !60, !noalias !64
  %3526 = fadd fast float %3525, %3520
  %3527 = fdiv fast float %3526, %3524
  br i1 %3450, label %3528, label %3536, !dx.controlflow.hints !70

; <label>:3528                                    ; preds = %3494
  %3529 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %278
  %3530 = load float, float addrspace(3)* %3529, align 4, !tbaa !60, !noalias !64
  %3531 = fadd fast float %3530, %3522
  %3532 = fdiv fast float %3531, %3524
  %3533 = lshr i32 %72, 1
  %3534 = lshr i32 %73, 1
  %3535 = lshr i32 %247, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3533, i32 %3534, i32 %3535, float %3527, float %3532, float %3527, float %3527, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3536

; <label>:3536                                    ; preds = %3528, %3494
  br i1 %3413, label %3537, label %3571, !dx.controlflow.hints !71

; <label>:3537                                    ; preds = %3536
  %3538 = fadd fast float %122, 0x3FE3C6EF40000000
  %3539 = call float @dx.op.unary.f32(i32 22, float %3538)  ; Frc(value)
  %3540 = call float @dx.op.unary.f32(i32 23, float %3500)  ; Log(value)
  %3541 = fadd fast float %3540, -7.000000e+00
  %3542 = call float @dx.op.unary.f32(i32 21, float %3541)  ; Exp(value)
  %3543 = fmul fast float %3539, 2.000000e+00
  %3544 = fadd fast float %3543, -1.000000e+00
  %3545 = fmul fast float %3542, %3544
  %3546 = fcmp fast ogt float %3500, 0.000000e+00
  %3547 = select i1 %3546, float %3545, float 0.000000e+00
  %3548 = fadd fast float %3547, %3500
  %3549 = fadd fast float %122, 0x3FF3C6EF40000000
  %3550 = call float @dx.op.unary.f32(i32 22, float %3549)  ; Frc(value)
  %3551 = call float @dx.op.unary.f32(i32 23, float %3501)  ; Log(value)
  %3552 = fadd fast float %3551, -7.000000e+00
  %3553 = call float @dx.op.unary.f32(i32 21, float %3552)  ; Exp(value)
  %3554 = fmul fast float %3550, 2.000000e+00
  %3555 = fadd fast float %3554, -1.000000e+00
  %3556 = fmul fast float %3553, %3555
  %3557 = fcmp fast ogt float %3501, 0.000000e+00
  %3558 = select i1 %3557, float %3556, float 0.000000e+00
  %3559 = fadd fast float %3558, %3501
  %3560 = fadd fast float %122, 0x3FFDAA66E0000000
  %3561 = call float @dx.op.unary.f32(i32 22, float %3560)  ; Frc(value)
  %3562 = call float @dx.op.unary.f32(i32 23, float %3502)  ; Log(value)
  %3563 = fadd fast float %3562, -6.000000e+00
  %3564 = call float @dx.op.unary.f32(i32 21, float %3563)  ; Exp(value)
  %3565 = fmul fast float %3561, 2.000000e+00
  %3566 = fadd fast float %3565, -1.000000e+00
  %3567 = fmul fast float %3564, %3566
  %3568 = fcmp fast ogt float %3502, 0.000000e+00
  %3569 = select i1 %3568, float %3567, float 0.000000e+00
  %3570 = fadd fast float %3569, %3502
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %72, i32 %73, i32 %247, float %3548, float %3559, float %3570, float %3548, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3571

; <label>:3571                                    ; preds = %3537, %3536
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
!dx.entryPoints = !{!57}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !43, !48, !51}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !40, !41}
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
!36 = !{i32 27, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!37 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!38 = !{i32 29, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !39}
!39 = !{i32 1, i32 80}
!40 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!41 = !{i32 31, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !42}
!42 = !{i32 1, i32 4}
!43 = !{!44, !45, !46, !47}
!44 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!45 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!46 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!47 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!48 = !{!49, !50}
!49 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!50 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!57 = !{void ()* @cs_volumetric_forwardplus_scatter_local_water, !"cs_volumetric_forwardplus_scatter_local_water", null, !4, !58}
!58 = !{i32 0, i64 272, i32 4, !59}
!59 = !{i32 4, i32 4, i32 4}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!66 = distinct !{!66, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!67 = distinct !{!67, !66, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
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
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !93}
!110 = distinct !{!110, !93}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = !{!123, !123, i64 0}
!123 = !{!"int", !62, i64 0}
!124 = !{!125, !127, !129, !65, !67}
!125 = distinct !{!125, !126, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!126 = distinct !{!126, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!127 = distinct !{!127, !128, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!128 = distinct !{!128, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!129 = distinct !{!129, !130, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!130 = distinct !{!130, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 2}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}

