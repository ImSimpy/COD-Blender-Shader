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
; shader hash: 8fd7ebe3719b4e2b38d347701d886f6a
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
;                                   texture     f32          2d     T20             t0     1
;                                   textureunorm_f32     2darray     T21            t34     1
;                                   texture    byte         r/o     T22            t28     1
;                                   texture     f32          2d     T23             t1     1
;                                   texture     f32          2d     T24            t23     1
;                                   texture     f32          2d     T25             t2     1
;                                   texture     f32          2d     T26            t18     1
;                                   texture    byte         r/o     T27            t12     1
;                                   texture     f32          1d     T28            t54     1
;                                   texture     f32          3d     T29             t5     1
;                                   texture    byte         r/o     T30            t13     1
;                                   texture  struct         r/o     T31            t14     1
;                                   texture    byte         r/o     T32            t15     1
;                                   texture  struct         r/o     T33            t29     1
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = alloca [4 x i32], align 4
  %47 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %48 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %49 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %50 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %51 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %52 = alloca [12 x float], align 4
  %53 = alloca [12 x float], align 4
  %54 = alloca [3 x float], align 4
  %55 = alloca [3 x float], align 4
  %56 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.i32 %56, 3
  %58 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.i32 %58, 1
  %60 = mul i32 %59, %57
  %61 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.i32 %61, 1
  %63 = mul i32 %60, %62
  %64 = add i32 %63, %50
  %65 = shl i32 %64, 2
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = and i32 %67, 255
  %69 = lshr i32 %67, 8
  %70 = and i32 %69, 255
  %71 = lshr i32 %67, 16
  %72 = and i32 %71, 255
  %73 = shl nuw nsw i32 %68, 2
  %74 = shl nuw nsw i32 %70, 2
  %75 = shl nuw nsw i32 %72, 2
  %76 = add i32 %73, %47
  %77 = add i32 %74, %48
  %78 = add i32 %75, %49
  %79 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.i32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.i32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.i32 %79, 2
  %83 = icmp uge i32 %76, %80
  %84 = icmp uge i32 %77, %81
  %85 = icmp uge i32 %78, %82
  %86 = or i1 %83, %84
  %87 = or i1 %85, %86
  %88 = xor i1 %87, true
  %89 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %91 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %77, i32 %90)  ; UMad(a,b,c)
  %92 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %76, i32 %91)  ; UMad(a,b,c)
  %93 = mul i32 %92, -63
  %94 = lshr i32 %93, 17
  %95 = xor i32 %94, %93
  %96 = mul i32 %95, -511
  %97 = mul i32 %95, -8176
  %98 = xor i32 %96, %97
  %99 = mul i32 %98, -7
  %100 = mul i32 %98, -7168
  %101 = xor i32 %99, %100
  %102 = lshr i32 %101, 15
  %103 = xor i32 %102, %99
  %104 = and i32 %103, 127
  %105 = mul i32 %104, 3
  %106 = add i32 0, %105
  %107 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %106
  %108 = load float, float* %107, align 4
  %109 = mul i32 %104, 3
  %110 = add i32 1, %109
  %111 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %110
  %112 = load float, float* %111, align 4
  %113 = mul i32 %104, 3
  %114 = add i32 2, %113
  %115 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %114
  %116 = load float, float* %115, align 4
  %117 = uitofp i32 %90 to float
  %118 = fmul fast float %117, 0x3FEA36A940000000
  %119 = fmul fast float %117, 0x3FE5793080000000
  %120 = fmul fast float %117, 0x3FE1972580000000
  %121 = fadd fast float %108, %118
  %122 = fadd fast float %112, %119
  %123 = fadd fast float %116, %120
  %124 = call float @dx.op.unary.f32(i32 22, float %121)  ; Frc(value)
  %125 = call float @dx.op.unary.f32(i32 22, float %122)  ; Frc(value)
  %126 = call float @dx.op.unary.f32(i32 22, float %123)  ; Frc(value)
  %127 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %76, i32 %77, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = fcmp fast ogt float %128, -1.000000e+00
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %132 = select i1 %129, float %131, float 1.000000e+00
  %133 = fadd fast float %128, 1.000000e+00
  %134 = fmul fast float %132, %133
  %135 = uitofp i32 %76 to float
  %136 = uitofp i32 %77 to float
  %137 = uitofp i32 %78 to float
  %138 = fadd fast float %135, -5.000000e-01
  %139 = fadd fast float %138, %124
  %140 = fadd fast float %136, -5.000000e-01
  %141 = fadd fast float %140, %125
  %142 = fadd fast float %137, -5.000000e-01
  %143 = fadd fast float %142, %126
  %144 = fadd fast float %139, 5.000000e-01
  %145 = fadd fast float %141, 5.000000e-01
  %146 = fadd fast float %143, 5.000000e-01
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fmul fast float %148, %144
  %152 = fmul fast float %149, %145
  %153 = fmul fast float %150, %146
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 0
  %156 = uitofp i32 %155 to float
  %157 = fmul fast float %156, %153
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = fmul fast float %157, %160
  %162 = call float @dx.op.unary.f32(i32 21, float %161)  ; Exp(value)
  %163 = fmul fast float %162, %159
  %164 = fsub fast float 4.000000e+00, %159
  %165 = fadd fast float %164, %163
  %166 = call float @dx.op.binary.f32(i32 36, float %165, float %134)  ; FMin(a,b)
  %167 = fmul fast float %151, 2.000000e+00
  %168 = fmul fast float %152, 2.000000e+00
  %169 = fsub fast float 1.000000e+00, %167
  %170 = fsub fast float 1.000000e+00, %168
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = fmul fast float %172, %169
  %176 = fmul fast float %173, %169
  %177 = fmul fast float %174, %169
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = fmul fast float %179, %170
  %183 = fmul fast float %180, %170
  %184 = fmul fast float %181, %170
  %185 = fadd fast float %182, %175
  %186 = fadd fast float %183, %176
  %187 = fadd fast float %184, %177
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = fadd fast float %185, %189
  %193 = fadd fast float %186, %190
  %194 = fadd fast float %187, %191
  %195 = fmul fast float %192, %166
  %196 = fmul fast float %193, %166
  %197 = fmul fast float %194, %166
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = extractvalue %dx.types.CBufRet.f32 %198, 1
  %201 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %202 = fadd fast float %195, %199
  %203 = fadd fast float %196, %200
  %204 = fadd fast float %197, %201
  %205 = add i32 %78, 1
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %160, %206
  %208 = call float @dx.op.unary.f32(i32 21, float %207)  ; Exp(value)
  %209 = fmul fast float %160, %137
  %210 = call float @dx.op.unary.f32(i32 21, float %209)  ; Exp(value)
  %211 = fsub fast float %208, %210
  %212 = fmul fast float %159, %211
  %213 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %214 = call float @dx.op.unary.f32(i32 25, float %213)  ; Rsqrt(value)
  %215 = fmul fast float %214, %195
  %216 = fmul fast float %214, %196
  %217 = fmul fast float %214, %197
  %218 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %219 = fmul fast float %218, 0x3FE62E4300000000
  %220 = fmul fast float %219, %219
  %221 = select i1 %87, float 0.000000e+00, float 1.000000e+00
  %222 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %51
  store float %221, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  %223 = fmul fast float %219, %221
  %224 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %51
  store float %223, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  %225 = fmul fast float %220, %221
  %226 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %51
  store float %225, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %227 = xor i32 %51, 4
  %228 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %227
  %229 = load float, float addrspace(3)* %228, align 4, !tbaa !62, !noalias !66
  %230 = fadd fast float %229, %221
  %231 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %227
  %232 = load float, float addrspace(3)* %231, align 4, !tbaa !62, !noalias !66
  %233 = fadd fast float %232, %219
  %234 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %227
  %235 = load float, float addrspace(3)* %234, align 4, !tbaa !62, !noalias !66
  %236 = fadd fast float %235, %220
  store float %230, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  store float %233, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  store float %236, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %237 = xor i32 %51, 16
  %238 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %237
  %239 = load float, float addrspace(3)* %238, align 4, !tbaa !62, !noalias !66
  %240 = fadd fast float %239, %230
  %241 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %237
  %242 = load float, float addrspace(3)* %241, align 4, !tbaa !62, !noalias !66
  %243 = fadd fast float %242, %233
  %244 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %237
  %245 = load float, float addrspace(3)* %244, align 4, !tbaa !62, !noalias !66
  %246 = fadd fast float %245, %236
  store float %240, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  store float %243, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  store float %246, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %247 = xor i32 %51, 1
  %248 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %247
  %249 = load float, float addrspace(3)* %248, align 4, !tbaa !62, !noalias !66
  %250 = fadd fast float %249, %240
  %251 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %247
  %252 = load float, float addrspace(3)* %251, align 4, !tbaa !62, !noalias !66
  %253 = fadd fast float %252, %243
  %254 = fdiv fast float %253, %250
  %255 = and i32 %76, 1
  %256 = and i32 %255, %77
  %257 = and i32 %256, %78
  %258 = icmp ne i32 %257, 0
  %259 = and i1 %258, %88
  br i1 %259, label %260, label %268, !dx.controlflow.hints !70

; <label>:260                                     ; preds = %0
  %261 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %247
  %262 = load float, float addrspace(3)* %261, align 4, !tbaa !62, !noalias !66
  %263 = fadd fast float %262, %246
  %264 = fdiv fast float %263, %250
  %265 = lshr i32 %76, 1
  %266 = lshr i32 %77, 1
  %267 = lshr i32 %78, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %265, i32 %266, i32 %267, float %254, float %264, float %254, float %254, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %268

; <label>:268                                     ; preds = %260, %0
  br i1 %87, label %270, label %269, !dx.controlflow.hints !71

; <label>:269                                     ; preds = %268
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %76, i32 %77, i32 %78, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %270

; <label>:270                                     ; preds = %269, %268
  store float %221, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  store float 0.000000e+00, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  store float 0.000000e+00, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %271 = load float, float addrspace(3)* %228, align 4, !tbaa !62, !noalias !66
  %272 = fadd fast float %271, %221
  %273 = load float, float addrspace(3)* %231, align 4, !tbaa !62, !noalias !66
  %274 = load float, float addrspace(3)* %234, align 4, !tbaa !62, !noalias !66
  store float %272, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  store float %273, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  store float %274, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %275 = load float, float addrspace(3)* %238, align 4, !tbaa !62, !noalias !66
  %276 = fadd fast float %275, %272
  %277 = load float, float addrspace(3)* %241, align 4, !tbaa !62, !noalias !66
  %278 = fadd fast float %277, %273
  %279 = load float, float addrspace(3)* %244, align 4, !tbaa !62, !noalias !66
  %280 = fadd fast float %279, %274
  store float %276, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  store float %278, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  store float %280, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %281 = load float, float addrspace(3)* %248, align 4, !tbaa !62, !noalias !66
  %282 = fadd fast float %281, %276
  %283 = load float, float addrspace(3)* %251, align 4, !tbaa !62, !noalias !66
  %284 = fadd fast float %283, %278
  %285 = fdiv fast float %284, %282
  br i1 %259, label %286, label %294, !dx.controlflow.hints !72

; <label>:286                                     ; preds = %270
  %287 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %247
  %288 = load float, float addrspace(3)* %287, align 4, !tbaa !62, !noalias !66
  %289 = fadd fast float %288, %280
  %290 = fdiv fast float %289, %282
  %291 = lshr i32 %76, 1
  %292 = lshr i32 %77, 1
  %293 = lshr i32 %78, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %291, i32 %292, i32 %293, float %285, float %290, float %285, float %285, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %294

; <label>:294                                     ; preds = %286, %270
  br i1 %87, label %296, label %295, !dx.controlflow.hints !73

; <label>:295                                     ; preds = %294
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %76, i32 %77, i32 %78, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %296

; <label>:296                                     ; preds = %295, %294
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = fsub fast float %204, %298
  %301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %300)  ; FMax(a,b)
  %302 = fmul fast float %301, 0x3FF7154760000000
  %303 = fmul fast float %302, %299
  %304 = call float @dx.op.unary.f32(i32 21, float %303)  ; Exp(value)
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %307 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %308 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = fmul fast float %311, %304
  %313 = fmul fast float %312, %306
  %314 = fmul fast float %312, %307
  %315 = fmul fast float %312, %308
  %316 = fmul fast float %312, %310
  %317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.i32 %317, 2
  %319 = extractvalue %dx.types.CBufRet.i32 %317, 3
  %320 = call i32 @dx.op.tertiary.i32(i32 49, i32 %70, i32 %318, i32 %68)  ; UMad(a,b,c)
  %321 = call i32 @dx.op.tertiary.i32(i32 49, i32 %72, i32 %319, i32 %320)  ; UMad(a,b,c)
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %321, i32 0)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = fadd fast float %135, 1.000000e+00
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = fmul fast float %330, %143
  %332 = call float @dx.op.unary.f32(i32 21, float %331)  ; Exp(value)
  %333 = fmul fast float %332, %329
  %334 = fsub fast float 4.000000e+00, %329
  %335 = fadd fast float %334, %333
  %336 = fmul fast float %324, 2.000000e+00
  %337 = fmul fast float %336, %326
  %338 = fmul fast float %136, 2.000000e+00
  %339 = fmul fast float %338, %327
  %340 = fsub fast float 1.000000e+00, %337
  %341 = fsub fast float 1.000000e+00, %339
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 0
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %346 = fmul fast float %343, %340
  %347 = fmul fast float %344, %340
  %348 = fmul fast float %345, %340
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = fmul fast float %350, %341
  %354 = fmul fast float %351, %341
  %355 = fmul fast float %352, %341
  %356 = fadd fast float %353, %346
  %357 = fadd fast float %354, %347
  %358 = fadd fast float %355, %348
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = fadd fast float %356, %360
  %364 = fadd fast float %357, %361
  %365 = fadd fast float %358, %362
  %366 = fadd fast float %136, 1.000000e+00
  %367 = fmul fast float %135, 2.000000e+00
  %368 = fmul fast float %367, %326
  %369 = fmul fast float %366, 2.000000e+00
  %370 = fmul fast float %369, %327
  %371 = fsub fast float 1.000000e+00, %368
  %372 = fsub fast float 1.000000e+00, %370
  %373 = fmul fast float %343, %371
  %374 = fmul fast float %344, %371
  %375 = fmul fast float %345, %371
  %376 = fmul fast float %350, %372
  %377 = fmul fast float %351, %372
  %378 = fmul fast float %352, %372
  %379 = fadd fast float %376, %373
  %380 = fadd fast float %377, %374
  %381 = fadd fast float %378, %375
  %382 = fadd fast float %379, %360
  %383 = fadd fast float %380, %361
  %384 = fadd fast float %381, %362
  %385 = fmul fast float %382, %335
  %386 = fmul fast float %383, %335
  %387 = fmul fast float %384, %335
  %388 = fadd fast float %382, %363
  %389 = fmul fast float %335, %388
  %390 = fadd fast float %383, %364
  %391 = fmul fast float %335, %390
  %392 = fadd fast float %384, %365
  %393 = fmul fast float %335, %392
  %394 = fmul fast float %389, 5.000000e-01
  %395 = fmul fast float %391, 5.000000e-01
  %396 = fmul fast float %393, 5.000000e-01
  %397 = fsub fast float %394, %385
  %398 = fsub fast float %395, %386
  %399 = fsub fast float %396, %387
  %400 = call float @dx.op.dot3.f32(i32 55, float %397, float %398, float %399, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %401 = call float @dx.op.unary.f32(i32 25, float %400)  ; Rsqrt(value)
  %402 = fmul fast float %400, 2.000000e+00
  %403 = fmul fast float %402, %401
  %404 = call float @dx.op.binary.f32(i32 35, float %212, float %403)  ; FMax(a,b)
  %405 = and i32 %323, 8
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %623, label %407, !dx.controlflow.hints !74

; <label>:407                                     ; preds = %296
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 0
  %414 = extractvalue %dx.types.CBufRet.f32 %412, 1
  %415 = extractvalue %dx.types.CBufRet.f32 %412, 2
  %416 = fsub fast float %202, %413
  %417 = fsub fast float %203, %414
  %418 = fsub fast float %204, %415
  %419 = fmul fast float %416, %409
  %420 = fmul fast float %417, %410
  %421 = fmul fast float %418, %411
  %422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.i32 %422, 3
  %424 = icmp eq i32 %423, 0
  %425 = fcmp fast oge float %421, 0.000000e+00
  %426 = fcmp fast ole float %421, 1.000000e+00
  br i1 %424, label %429, label %427, !dx.controlflow.hints !75

; <label>:427                                     ; preds = %407
  %428 = and i1 %425, %426
  br label %439

; <label>:429                                     ; preds = %407
  %430 = fcmp fast oge float %419, 0.000000e+00
  %431 = fcmp fast oge float %420, 0.000000e+00
  %432 = and i1 %430, %431
  %433 = and i1 %425, %432
  %434 = fcmp fast ole float %419, 1.000000e+00
  %435 = fcmp fast ole float %420, 1.000000e+00
  %436 = and i1 %434, %435
  %437 = and i1 %426, %436
  %438 = and i1 %433, %437
  br label %439

; <label>:439                                     ; preds = %429, %427
  %440 = phi i1 [ %428, %427 ], [ %438, %429 ]
  br i1 %440, label %441, label %616, !dx.controlflow.hints !76

; <label>:441                                     ; preds = %439
  %442 = fcmp fast oeq float %404, 0.000000e+00
  br i1 %442, label %457, label %443, !dx.controlflow.hints !77

; <label>:443                                     ; preds = %441
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %446 = fmul fast float %445, %404
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %449 = extractvalue %dx.types.CBufRet.f32 %447, 1
  %450 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %451 = fmul fast float %448, %446
  %452 = fmul fast float %449, %446
  %453 = fmul fast float %450, %446
  %454 = call float @dx.op.unary.f32(i32 23, float %451)  ; Log(value)
  %455 = call float @dx.op.unary.f32(i32 23, float %452)  ; Log(value)
  %456 = call float @dx.op.unary.f32(i32 23, float %453)  ; Log(value)
  br label %457

; <label>:457                                     ; preds = %443, %441
  %458 = phi float [ %454, %443 ], [ 0.000000e+00, %441 ]
  %459 = phi float [ %455, %443 ], [ 0.000000e+00, %441 ]
  %460 = phi float [ %456, %443 ], [ 0.000000e+00, %441 ]
  %461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.i32 %461, 0
  %463 = extractvalue %dx.types.CBufRet.i32 %461, 1
  %464 = uitofp i32 %462 to float
  %465 = uitofp i32 %463 to float
  %466 = fmul fast float %419, %464
  %467 = fmul fast float %420, %465
  %468 = fadd fast float %466, 5.000000e-01
  %469 = fadd fast float %467, 5.000000e-01
  %470 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %471 = call float @dx.op.unary.f32(i32 22, float %469)  ; Frc(value)
  %472 = call float @dx.op.unary.f32(i32 27, float %468)  ; Round_ni(value)
  %473 = call float @dx.op.unary.f32(i32 27, float %469)  ; Round_ni(value)
  %474 = fadd fast float %472, 1.000000e+00
  %475 = fadd fast float %473, 1.000000e+00
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %479 = fmul fast float %477, %474
  %480 = fmul fast float %478, %475
  %481 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %28, %dx.types.Handle %41, float %479, float %480, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = extractvalue %dx.types.CBufRet.i32 %461, 2
  %487 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %488 = uitofp i32 %486 to float
  %489 = fadd fast float %488, -1.000000e+00
  %490 = fmul fast float %489, %482
  %491 = fmul fast float %489, %483
  %492 = fmul fast float %489, %484
  %493 = fmul fast float %489, %485
  %494 = fadd fast float %490, 5.000000e-01
  %495 = fadd fast float %491, 5.000000e-01
  %496 = fadd fast float %492, 5.000000e-01
  %497 = fadd fast float %493, 5.000000e-01
  %498 = fptoui float %494 to i32
  %499 = fptoui float %495 to i32
  %500 = fptoui float %496 to i32
  %501 = fptoui float %497 to i32
  %502 = uitofp i32 %498 to float
  %503 = uitofp i32 %499 to float
  %504 = uitofp i32 %500 to float
  %505 = uitofp i32 %501 to float
  %506 = fadd fast float %502, 5.000000e-01
  %507 = fadd fast float %503, 5.000000e-01
  %508 = fadd fast float %504, 5.000000e-01
  %509 = fadd fast float %505, 5.000000e-01
  %510 = fmul fast float %506, %487
  %511 = fmul fast float %507, %487
  %512 = fmul fast float %508, %487
  %513 = fmul fast float %509, %487
  %514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %42, float %510, float %421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %42, float %511, float %421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %42, float %512, float %421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %42, float %513, float %421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = fsub fast float %519, %521
  %523 = fmul fast float %522, %470
  %524 = fadd fast float %523, %521
  %525 = fsub fast float %517, %515
  %526 = fmul fast float %525, %470
  %527 = fadd fast float %526, %515
  %528 = fsub fast float %527, %524
  %529 = fmul fast float %528, %471
  %530 = fadd fast float %529, %524
  %531 = fcmp fast ogt float %530, 0.000000e+00
  br i1 %531, label %532, label %600, !dx.controlflow.hints !78

; <label>:532                                     ; preds = %457
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 0
  %535 = extractvalue %dx.types.CBufRet.f32 %533, 1
  %536 = extractvalue %dx.types.CBufRet.f32 %533, 2
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %540 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %541 = fmul fast float %417, %409
  %542 = fmul fast float %418, %409
  %543 = fadd fast float %419, %538
  %544 = fadd fast float %541, %539
  %545 = fadd fast float %542, %540
  %546 = fmul fast float %543, %534
  %547 = fmul fast float %544, %534
  %548 = fmul fast float %545, %534
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %546, float %547, float %548, float undef, i32 0, i32 0, i32 0, float %458)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = fmul fast float %543, %535
  %552 = fmul fast float %544, %535
  %553 = fmul fast float %545, %535
  %554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %551, float %552, float %553, float undef, i32 0, i32 0, i32 0, float %459)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 1
  %556 = fmul fast float %543, %536
  %557 = fmul fast float %544, %536
  %558 = fmul fast float %545, %536
  %559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %556, float %557, float %558, float undef, i32 0, i32 0, i32 0, float %460)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 2
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %563 = fmul fast float %555, %550
  %564 = fmul fast float %563, %560
  %565 = call float @dx.op.unary.f32(i32 23, float %564)  ; Log(value)
  %566 = fmul fast float %565, %562
  %567 = call float @dx.op.unary.f32(i32 21, float %566)  ; Exp(value)
  %568 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %569 = fmul fast float %530, %530
  %570 = fmul fast float %569, %567
  %571 = fmul fast float %570, %568
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 3
  %574 = fmul fast float %573, %571
  %575 = bitcast float %574 to i32
  %576 = sitofp i32 %575 to float
  %577 = fptosi float %576 to i32
  %578 = bitcast i32 %577 to float
  %579 = fsub fast float 1.000000e+00, %571
  %580 = bitcast float %579 to i32
  %581 = sitofp i32 %580 to float
  %582 = fptosi float %581 to i32
  %583 = bitcast i32 %582 to float
  %584 = fadd fast float %578, %583
  %585 = bitcast float %584 to i32
  %586 = sub nsw i32 2129859010, %585
  %587 = bitcast i32 %586 to float
  %588 = fmul fast float %587, %578
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %593 = fmul fast float %588, %592
  %594 = fadd fast float %593, 1.000000e+00
  %595 = bitcast float %594 to i32
  %596 = sub nsw i32 2129859010, %595
  %597 = bitcast i32 %596 to float
  %598 = fmul fast float %588, %590
  %599 = fmul fast float %598, %597
  br label %600

; <label>:600                                     ; preds = %532, %457
  %601 = phi float [ %599, %532 ], [ %530, %457 ]
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %608 = fmul fast float %603, %601
  %609 = fmul fast float %604, %601
  %610 = fmul fast float %605, %601
  %611 = fadd fast float %608, %313
  %612 = fadd fast float %609, %314
  %613 = fadd fast float %610, %315
  %614 = fmul fast float %607, %601
  %615 = fadd fast float %614, %316
  br label %616

; <label>:616                                     ; preds = %600, %439
  %617 = phi float [ %611, %600 ], [ %313, %439 ]
  %618 = phi float [ %612, %600 ], [ %314, %439 ]
  %619 = phi float [ %613, %600 ], [ %315, %439 ]
  %620 = phi float [ %615, %600 ], [ %316, %439 ]
  %621 = phi float [ %601, %600 ], [ 0.000000e+00, %439 ]
  %622 = fadd fast float %621, %312
  br label %623

; <label>:623                                     ; preds = %616, %296
  %624 = phi float [ %617, %616 ], [ %313, %296 ]
  %625 = phi float [ %618, %616 ], [ %314, %296 ]
  %626 = phi float [ %619, %616 ], [ %315, %296 ]
  %627 = phi float [ %620, %616 ], [ %316, %296 ]
  %628 = phi float [ %622, %616 ], [ %312, %296 ]
  %629 = phi float [ %621, %616 ], [ 0.000000e+00, %296 ]
  %630 = and i32 %323, 2
  %631 = icmp ne i32 %630, 0
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 2
  %636 = fadd fast float %635, %633
  %637 = fcmp fast ole float %204, %636
  %638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.i32 %638, 3
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %660, !dx.controlflow.hints !79

; <label>:641                                     ; preds = %623
  %642 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %644 = fsub fast float %202, %642
  %645 = fsub fast float %203, %643
  %646 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %648 = fdiv fast float 1.000000e+00, %646
  %649 = fdiv fast float 1.000000e+00, %647
  %650 = fmul fast float %644, %648
  %651 = fmul fast float %649, %645
  %652 = fcmp fast oge float %650, 0.000000e+00
  %653 = fcmp fast oge float %651, 0.000000e+00
  %654 = and i1 %652, %653
  %655 = and i1 %637, %654
  %656 = fcmp fast ole float %650, 1.000000e+00
  %657 = fcmp fast ole float %651, 1.000000e+00
  %658 = and i1 %656, %657
  %659 = and i1 %658, %655
  br label %660

; <label>:660                                     ; preds = %641, %623
  %661 = phi i1 [ %659, %641 ], [ %637, %623 ]
  %662 = and i1 %631, %661
  br i1 %662, label %663, label %842, !dx.controlflow.hints !80

; <label>:663                                     ; preds = %660
  %664 = fcmp fast oeq float %404, 0.000000e+00
  br i1 %664, label %670, label %665, !dx.controlflow.hints !81

; <label>:665                                     ; preds = %663
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 3
  %668 = fmul fast float %667, %404
  %669 = call float @dx.op.unary.f32(i32 23, float %668)  ; Log(value)
  br label %670

; <label>:670                                     ; preds = %665, %663
  %671 = phi float [ %669, %665 ], [ 0.000000e+00, %663 ]
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 0
  %674 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %675 = extractvalue %dx.types.CBufRet.f32 %672, 2
  %676 = fsub fast float %202, %673
  %677 = fsub fast float %203, %674
  %678 = fsub fast float %204, %675
  %679 = fmul fast float %676, %676
  %680 = fmul fast float %677, %677
  %681 = fadd fast float %679, %680
  %682 = fmul fast float %678, %678
  %683 = fadd fast float %681, %682
  %684 = call float @dx.op.unary.f32(i32 24, float %683)  ; Sqrt(value)
  %685 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %686 = extractvalue %dx.types.CBufRet.f32 %632, 1
  %687 = fsub fast float %202, %685
  %688 = fsub fast float %203, %686
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %691 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %692 = fmul fast float %687, %690
  %693 = fmul fast float %688, %691
  %694 = fsub fast float 1.000000e+00, %693
  br i1 %640, label %701, label %695, !dx.controlflow.hints !82

; <label>:695                                     ; preds = %670
  %696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %41, float %692, float %694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 2
  %700 = extractvalue %dx.types.ResRet.f32 %696, 3
  br label %707

; <label>:701                                     ; preds = %670
  %702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %42, float %692, float %694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = extractvalue %dx.types.ResRet.f32 %702, 1
  %705 = extractvalue %dx.types.ResRet.f32 %702, 2
  %706 = extractvalue %dx.types.ResRet.f32 %702, 3
  br label %707

; <label>:707                                     ; preds = %701, %695
  %708 = phi float [ %697, %695 ], [ %703, %701 ]
  %709 = phi float [ %698, %695 ], [ %704, %701 ]
  %710 = phi float [ %699, %695 ], [ %705, %701 ]
  %711 = phi float [ %700, %695 ], [ %706, %701 ]
  %712 = extractvalue %dx.types.CBufRet.f32 %689, 3
  %713 = fmul fast float %712, %709
  %714 = fmul fast float %713, %708
  %715 = fsub fast float %713, %714
  %716 = fcmp fast ole float %715, 0.000000e+00
  %717 = fmul fast float %712, %710
  %718 = fadd fast float %717, %633
  %719 = fdiv fast float 1.000000e+00, %715
  %720 = select i1 %716, float 1.000000e+06, float %719
  %721 = fsub fast float %204, %633
  %722 = fsub fast float %721, %714
  %723 = fmul fast float %720, %722
  %724 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %725 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %726 = fmul fast float %725, %724
  %727 = fsub fast float %725, %726
  %728 = fcmp fast olt float %204, %718
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 3
  %731 = select i1 %728, float %730, float 1.000000e+00
  %732 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %733 = fcmp fast oeq float %732, 0.000000e+00
  br i1 %733, label %816, label %734, !dx.controlflow.hints !83

; <label>:734                                     ; preds = %707
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %737 = fcmp fast ogt float %736, 0.000000e+00
  %738 = extractvalue %dx.types.CBufRet.f32 %729, 2
  br i1 %737, label %739, label %769, !dx.controlflow.hints !84

; <label>:739                                     ; preds = %734
  %740 = fmul fast float %692, %736
  %741 = fmul fast float %693, %736
  %742 = fsub fast float 1.000000e+00, %741
  %743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %740, float %742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = fmul fast float %744, 2.000000e+00
  %747 = fmul fast float %745, 2.000000e+00
  %748 = fadd fast float %746, -1.000000e+00
  %749 = fadd fast float %747, -1.000000e+00
  %750 = fmul fast float %732, %202
  %751 = fmul fast float %732, %203
  %752 = fmul fast float %732, %204
  %753 = call float @dx.op.unary.f32(i32 22, float %738)  ; Frc(value)
  %754 = fmul fast float %748, %753
  %755 = fmul fast float %749, %753
  %756 = fsub fast float %750, %754
  %757 = fsub fast float %751, %755
  %758 = fadd fast float %738, 5.000000e-01
  %759 = call float @dx.op.unary.f32(i32 22, float %758)  ; Frc(value)
  %760 = fmul fast float %759, %748
  %761 = fmul fast float %759, %749
  %762 = fadd fast float %750, -5.000000e-01
  %763 = fsub fast float %762, %760
  %764 = fadd fast float %751, -5.000000e-01
  %765 = fsub fast float %764, %761
  %766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %763, float %765, float %752, float undef, i32 0, i32 0, i32 0, float %671)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  br label %782

; <label>:769                                     ; preds = %734
  %770 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %771 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %772 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %773 = fmul fast float %738, %770
  %774 = fmul fast float %738, %771
  %775 = fmul fast float %738, %772
  %776 = fsub fast float %202, %773
  %777 = fsub fast float %203, %774
  %778 = fsub fast float %204, %775
  %779 = fmul fast float %776, %732
  %780 = fmul fast float %777, %732
  %781 = fmul fast float %778, %732
  br label %782

; <label>:782                                     ; preds = %769, %739
  %783 = phi float [ %756, %739 ], [ %779, %769 ]
  %784 = phi float [ %757, %739 ], [ %780, %769 ]
  %785 = phi float [ %752, %739 ], [ %781, %769 ]
  %786 = phi float [ %767, %739 ], [ 0.000000e+00, %769 ]
  %787 = phi float [ %768, %739 ], [ 0.000000e+00, %769 ]
  %788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %783, float %784, float %785, float undef, i32 0, i32 0, i32 0, float %671)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = extractvalue %dx.types.ResRet.f32 %788, 1
  br i1 %737, label %791, label %803, !dx.controlflow.hints !85

; <label>:791                                     ; preds = %782
  %792 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %793 = call float @dx.op.unary.f32(i32 22, float %792)  ; Frc(value)
  %794 = fmul fast float %793, 2.000000e+00
  %795 = fadd fast float %794, -1.000000e+00
  %796 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %797 = fsub fast float %786, %789
  %798 = fmul fast float %796, %797
  %799 = fadd fast float %798, %789
  %800 = fsub fast float %787, %790
  %801 = fmul fast float %796, %800
  %802 = fadd fast float %801, %790
  br label %803

; <label>:803                                     ; preds = %791, %782
  %804 = phi float [ %799, %791 ], [ %789, %782 ]
  %805 = phi float [ %802, %791 ], [ %790, %782 ]
  %806 = extractvalue %dx.types.CBufRet.f32 %632, 3
  %807 = fadd fast float %806, %806
  %808 = fdiv fast float 2.000000e+00, %807
  %809 = fmul fast float %806, 2.000000e+00
  %810 = fadd fast float %804, -1.000000e+00
  %811 = fadd fast float %810, %805
  %812 = fadd fast float %811, %809
  %813 = fmul fast float %812, %808
  %814 = fadd fast float %813, -1.000000e+00
  %815 = call float @dx.op.unary.f32(i32 7, float %814)  ; Saturate(value)
  br label %816

; <label>:816                                     ; preds = %803, %707
  %817 = phi float [ %815, %803 ], [ 1.000000e+00, %707 ]
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 0
  %820 = extractvalue %dx.types.CBufRet.f32 %818, 1
  %821 = extractvalue %dx.types.CBufRet.f32 %818, 2
  %822 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %825 = fsub fast float %684, %824
  %826 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %827 = fmul fast float %825, %826
  %828 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %829 = fmul fast float %731, %711
  %830 = fmul fast float %829, %727
  %831 = fmul fast float %830, %817
  %832 = fmul fast float %831, %828
  %833 = fmul fast float %832, %819
  %834 = fmul fast float %832, %820
  %835 = fmul fast float %832, %821
  %836 = fadd fast float %833, %624
  %837 = fadd fast float %834, %625
  %838 = fadd fast float %835, %626
  %839 = fmul fast float %832, %822
  %840 = fadd fast float %839, %627
  %841 = fadd fast float %832, %628
  br label %842

; <label>:842                                     ; preds = %816, %660
  %843 = phi float [ %836, %816 ], [ %624, %660 ]
  %844 = phi float [ %837, %816 ], [ %625, %660 ]
  %845 = phi float [ %838, %816 ], [ %626, %660 ]
  %846 = phi float [ %840, %816 ], [ %627, %660 ]
  %847 = phi float [ %841, %816 ], [ %628, %660 ]
  %848 = and i32 %323, 1
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %1126, label %850, !dx.controlflow.hints !86

; <label>:850                                     ; preds = %842
  %851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.i32 %851, 1
  %853 = and i32 %852, 1
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %930, label %855, !dx.controlflow.hints !87

; <label>:855                                     ; preds = %850
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 3
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %861 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %862 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %870 = and i32 %852, 2
  %871 = extractvalue %dx.types.CBufRet.i32 %851, 0
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %909, label %873

; <label>:873                                     ; preds = %855
  br label %874

; <label>:874                                     ; preds = %874, %873
  %875 = phi float [ %903, %874 ], [ 0.000000e+00, %873 ]
  %876 = phi float [ %902, %874 ], [ 1.000000e+06, %873 ]
  %877 = phi i32 [ %904, %874 ], [ 0, %873 ]
  %878 = add i32 %877, 171
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %878)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 0
  %881 = extractvalue %dx.types.CBufRet.f32 %879, 1
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 2
  %884 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %885 = fsub fast float %202, %880
  %886 = fsub fast float %203, %881
  %887 = fmul fast float %885, %885
  %888 = fmul fast float %886, %886
  %889 = fadd fast float %887, %888
  %890 = call float @dx.op.unary.f32(i32 24, float %889)  ; Sqrt(value)
  %891 = fsub fast float %890, %884
  %892 = icmp ne i32 %870, 0
  %893 = fsub fast float -0.000000e+00, %860
  %894 = select i1 %892, float %893, float %860
  %895 = fmul fast float %891, %894
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = fmul fast float %896, %859
  %898 = fsub fast float %883, %204
  %899 = fmul fast float %898, %857
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = fmul fast float %897, %900
  %902 = call float @dx.op.binary.f32(i32 36, float %876, float %891)  ; FMin(a,b)
  %903 = call float @dx.op.binary.f32(i32 35, float %875, float %901)  ; FMax(a,b)
  %904 = add nuw nsw i32 %877, 1
  %905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.i32 %905, 0
  %907 = icmp ult i32 %904, %906
  br i1 %907, label %874, label %908

; <label>:908                                     ; preds = %874
  br label %909

; <label>:909                                     ; preds = %908, %855
  %910 = phi float [ 0.000000e+00, %855 ], [ %903, %908 ]
  %911 = phi float [ 1.000000e+06, %855 ], [ %902, %908 ]
  %912 = fadd fast float %910, %847
  %913 = fmul fast float %911, %869
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = fsub fast float %865, %861
  %916 = fsub fast float %866, %862
  %917 = fsub fast float %867, %863
  %918 = fmul fast float %914, %915
  %919 = fmul fast float %914, %916
  %920 = fmul fast float %914, %917
  %921 = fadd fast float %918, %861
  %922 = fadd fast float %919, %862
  %923 = fadd fast float %920, %863
  %924 = fmul fast float %921, %910
  %925 = fmul fast float %922, %910
  %926 = fmul fast float %923, %910
  %927 = fadd fast float %924, %843
  %928 = fadd fast float %925, %844
  %929 = fadd fast float %926, %845
  br label %1126

; <label>:930                                     ; preds = %850
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %934 = fmul fast float %932, %202
  %935 = fmul fast float %933, %203
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %939 = fadd fast float %934, %937
  %940 = fadd fast float %935, %938
  %941 = call float @dx.op.unary.f32(i32 7, float %939)  ; Saturate(value)
  %942 = call float @dx.op.unary.f32(i32 7, float %940)  ; Saturate(value)
  %943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %42, float %941, float %942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = fmul fast float %946, %944
  %948 = fsub fast float %939, %941
  %949 = fsub fast float %940, %942
  %950 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %952 = fmul fast float %950, %948
  %953 = fmul fast float %951, %949
  %954 = fmul fast float %952, %952
  %955 = fmul fast float %953, %953
  %956 = fadd fast float %954, %955
  %957 = call float @dx.op.unary.f32(i32 24, float %956)  ; Sqrt(value)
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %960 = fmul fast float %959, %957
  %961 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  %962 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %963 = fsub fast float %962, %947
  %964 = fmul fast float %963, %961
  %965 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %966 = fsub fast float %204, %947
  %967 = fsub fast float %966, %965
  %968 = fsub fast float %967, %964
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %971 = fsub fast float %968, %970
  %972 = fcmp fast olt float %971, 0.000000e+00
  %973 = extractvalue %dx.types.CBufRet.i32 %851, 0
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1025, label %975

; <label>:975                                     ; preds = %930
  br label %976

; <label>:976                                     ; preds = %1014, %975
  %977 = phi i32 [ %1020, %1014 ], [ 1, %975 ]
  %978 = phi i32 [ %1021, %1014 ], [ 0, %975 ]
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 1
  %981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.i32 %981, 1
  %983 = and i32 %982, 8
  %984 = icmp eq i32 %983, 0
  %985 = fcmp fast ogt float %980, %968
  %986 = or i1 %985, %984
  %987 = add i32 %978, 171
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %987)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %991 = extractvalue %dx.types.CBufRet.f32 %988, 2
  br i1 %986, label %992, label %998, !dx.controlflow.hints !88

; <label>:992                                     ; preds = %976
  %993 = fsub fast float %989, %202
  %994 = fsub fast float %990, %203
  %995 = fmul fast float %993, %993
  %996 = fmul fast float %994, %994
  %997 = fadd fast float %995, %996
  br label %1014

; <label>:998                                     ; preds = %976
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1001 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %1002 = fmul fast float %1001, %1000
  %1003 = fsub fast float %1002, %980
  %1004 = fdiv fast float %991, %1003
  %1005 = fsub fast float %202, %989
  %1006 = fsub fast float %203, %990
  %1007 = fsub fast float %968, %980
  %1008 = fmul fast float %1004, %1007
  %1009 = fmul fast float %1005, %1005
  %1010 = fmul fast float %1006, %1006
  %1011 = fadd fast float %1009, %1010
  %1012 = fmul fast float %1008, %1008
  %1013 = fadd fast float %1011, %1012
  br label %1014

; <label>:1014                                    ; preds = %998, %992
  %1015 = phi float [ %997, %992 ], [ %1013, %998 ]
  %1016 = call float @dx.op.unary.f32(i32 24, float %1015)  ; Sqrt(value)
  %1017 = fsub float %991, %1016
  %1018 = fcmp fast olt float %1017, 0.000000e+00
  %1019 = zext i1 %1018 to i32
  %1020 = and i32 %1019, %977
  %1021 = add i32 %978, 1
  %1022 = extractvalue %dx.types.CBufRet.i32 %981, 0
  %1023 = icmp ult i32 %1021, %1022
  br i1 %1023, label %976, label %1024

; <label>:1024                                    ; preds = %1014
  br label %1025

; <label>:1025                                    ; preds = %1024, %930
  %1026 = phi i32 [ 1, %930 ], [ %1020, %1024 ]
  br label %1027

; <label>:1027                                    ; preds = %1027, %1025
  %1028 = phi i32 [ %1064, %1027 ], [ %1026, %1025 ]
  %1029 = phi i32 [ %1065, %1027 ], [ 0, %1025 ]
  %1030 = add nuw nsw i32 %1029, 191
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %1030)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1035 = add nuw nsw i32 %1029, 195
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %1035)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1040 = fsub fast float %202, %1032
  %1041 = fsub fast float %203, %1033
  %1042 = fsub fast float %968, %1034
  %1043 = call float @dx.op.unary.f32(i32 6, float %1040)  ; FAbs(value)
  %1044 = call float @dx.op.unary.f32(i32 6, float %1041)  ; FAbs(value)
  %1045 = call float @dx.op.unary.f32(i32 6, float %1042)  ; FAbs(value)
  %1046 = fsub fast float %1043, %1037
  %1047 = fsub fast float %1044, %1038
  %1048 = fsub fast float %1045, %1039
  %1049 = call float @dx.op.binary.f32(i32 35, float %1046, float 0.000000e+00)  ; FMax(a,b)
  %1050 = call float @dx.op.binary.f32(i32 35, float %1047, float 0.000000e+00)  ; FMax(a,b)
  %1051 = call float @dx.op.binary.f32(i32 35, float %1048, float 0.000000e+00)  ; FMax(a,b)
  %1052 = fmul fast float %1049, %1049
  %1053 = fmul fast float %1050, %1050
  %1054 = fadd fast float %1053, %1052
  %1055 = fmul fast float %1051, %1051
  %1056 = fadd fast float %1054, %1055
  %1057 = call float @dx.op.unary.f32(i32 24, float %1056)  ; Sqrt(value)
  %1058 = call float @dx.op.binary.f32(i32 35, float %1047, float %1048)  ; FMax(a,b)
  %1059 = call float @dx.op.binary.f32(i32 35, float %1046, float %1058)  ; FMax(a,b)
  %1060 = call float @dx.op.binary.f32(i32 36, float %1059, float 0.000000e+00)  ; FMin(a,b)
  %1061 = fadd fast float %1060, %1057
  %1062 = fcmp ogt float %1061, -0.000000e+00
  %1063 = zext i1 %1062 to i32
  %1064 = and i32 %1063, %1028
  %1065 = add nuw nsw i32 %1029, 1
  %1066 = icmp eq i32 %1065, 4
  br i1 %1066, label %1067, label %1027

; <label>:1067                                    ; preds = %1027
  %1068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.i32 %1068, 1
  %1070 = lshr i32 %1069, 1
  %1071 = xor i32 %1070, %1064
  %1072 = zext i1 %972 to i32
  %1073 = and i32 %1071, %1072
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1126, label %1075, !dx.controlflow.hints !89

; <label>:1075                                    ; preds = %1067
  %1076 = fmul fast float %195, %195
  %1077 = fmul fast float %196, %196
  %1078 = fadd fast float %1076, %1077
  %1079 = fmul fast float %197, %197
  %1080 = fadd fast float %1078, %1079
  %1081 = call float @dx.op.unary.f32(i32 24, float %1080)  ; Sqrt(value)
  %1082 = and i32 %852, 4
  %1083 = icmp ne i32 %1082, 0
  %1084 = select i1 %1083, float %1081, float 1.000000e+00
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1087 = fsub fast float %1084, %1086
  %1088 = extractvalue %dx.types.CBufRet.f32 %1085, 3
  %1089 = fmul fast float %1087, %1088
  %1090 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 3
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1095 = fsub fast float %1094, %968
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 3
  %1098 = fmul fast float %1095, %1097
  %1099 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  %1100 = fmul fast float %1099, %1092
  %1101 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1102 = fsub fast float %1081, %1101
  %1103 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1104 = fmul fast float %1102, %1103
  %1105 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1106 = fsub fast float 1.000000e+00, %1090
  %1107 = fmul fast float %1105, %1106
  %1108 = fadd fast float %1107, %1090
  %1109 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1110 = fsub fast float %1100, %1109
  %1111 = fmul fast float %1110, %1108
  %1112 = fadd fast float %1111, %1109
  %1113 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1114 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1115 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1116 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1117 = fadd fast float %1112, %847
  %1118 = fmul fast float %1112, %1113
  %1119 = fmul fast float %1112, %1114
  %1120 = fmul fast float %1112, %1115
  %1121 = fadd fast float %1118, %843
  %1122 = fadd fast float %1119, %844
  %1123 = fadd fast float %1120, %845
  %1124 = fmul fast float %1112, %1116
  %1125 = fadd fast float %1124, %846
  br label %1126

; <label>:1126                                    ; preds = %1075, %1067, %909, %842
  %1127 = phi float [ %843, %842 ], [ %927, %909 ], [ %1121, %1075 ], [ %843, %1067 ]
  %1128 = phi float [ %844, %842 ], [ %928, %909 ], [ %1122, %1075 ], [ %844, %1067 ]
  %1129 = phi float [ %845, %842 ], [ %929, %909 ], [ %1123, %1075 ], [ %845, %1067 ]
  %1130 = phi float [ %846, %842 ], [ %846, %909 ], [ %1125, %1075 ], [ %846, %1067 ]
  %1131 = phi float [ %847, %842 ], [ %912, %909 ], [ %1117, %1075 ], [ %847, %1067 ]
  %1132 = and i32 %323, 16
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1925, label %1134, !dx.controlflow.hints !90

; <label>:1134                                    ; preds = %1126
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 3
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 3
  %1145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.i32 %1145, 0
  %1147 = icmp ne i32 %1146, 0
  %1148 = zext i1 %1147 to i32
  %1149 = extractvalue %dx.types.CBufRet.i32 %1145, 1
  %1150 = icmp ne i32 %1149, 0
  %1151 = zext i1 %1150 to i32
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1154 = bitcast float %1153 to i32
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1205, label %1156

; <label>:1156                                    ; preds = %1134
  br label %1157

; <label>:1157                                    ; preds = %1200, %1156
  %1158 = phi i32 [ %1201, %1200 ], [ 0, %1156 ]
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = bitcast float %1160 to i32
  %1162 = call i32 @dx.op.tertiary.i32(i32 49, i32 %321, i32 %1161, i32 %1158)  ; UMad(a,b,c)
  %1163 = shl i32 %1162, 2
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  br label %1166

; <label>:1166                                    ; preds = %1169, %1157
  %1167 = phi i32 [ %1165, %1157 ], [ %1174, %1169 ]
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1200, label %1169

; <label>:1169                                    ; preds = %1166
  %1170 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1167)  ; FirstbitLo(value)
  %1171 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1158, i32 %1170)  ; UMad(a,b,c)
  %1172 = and i32 %1170, 31
  %1173 = shl i32 1, %1172
  %1174 = xor i32 %1173, %1167
  %1175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1171, i32 0)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1171, i32 16)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = fsub fast float %1176, %1180
  %1184 = fsub fast float %1177, %1181
  %1185 = fsub fast float %1178, %1182
  %1186 = fadd fast float %1180, %1176
  %1187 = fadd fast float %1181, %1177
  %1188 = fadd fast float %1182, %1178
  %1189 = fcmp fast ogt float %202, %1183
  %1190 = fcmp fast ogt float %203, %1184
  %1191 = fcmp fast ogt float %204, %1185
  %1192 = and i1 %1189, %1190
  %1193 = and i1 %1191, %1192
  %1194 = fcmp fast olt float %202, %1186
  %1195 = fcmp fast olt float %203, %1187
  %1196 = fcmp fast olt float %204, %1188
  %1197 = and i1 %1194, %1195
  %1198 = and i1 %1196, %1197
  %1199 = and i1 %1193, %1198
  br i1 %1199, label %1203, label %1166, !dx.controlflow.hints !91

; <label>:1200                                    ; preds = %1166
  %1201 = add i32 %1158, 1
  %1202 = icmp ult i32 %1201, %1161
  br i1 %1202, label %1157, label %1204, !llvm.loop !92

; <label>:1203                                    ; preds = %1169
  br label %1205

; <label>:1204                                    ; preds = %1200
  br label %1205

; <label>:1205                                    ; preds = %1204, %1203, %1134
  %1206 = phi i32 [ 255, %1134 ], [ %1171, %1203 ], [ 255, %1204 ]
  %1207 = icmp eq i32 %1206, 255
  br i1 %1207, label %1227, label %1208, !dx.controlflow.hints !94

; <label>:1208                                    ; preds = %1205
  %1209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 32)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 132)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 136)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 152)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1206, i32 156)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1206, i32 160)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = icmp ne i32 %1220, 0
  %1224 = zext i1 %1223 to i32
  %1225 = icmp ne i32 %1222, 0
  %1226 = zext i1 %1225 to i32
  br label %1227

; <label>:1227                                    ; preds = %1208, %1205
  %1228 = phi float [ %1210, %1208 ], [ %1136, %1205 ]
  %1229 = phi float [ %1211, %1208 ], [ %1137, %1205 ]
  %1230 = phi float [ %1212, %1208 ], [ %1138, %1205 ]
  %1231 = phi float [ %1214, %1208 ], [ %1140, %1205 ]
  %1232 = phi float [ %1216, %1208 ], [ %1142, %1205 ]
  %1233 = phi float [ %1218, %1208 ], [ %1144, %1205 ]
  %1234 = phi i32 [ %1224, %1208 ], [ %1148, %1205 ]
  %1235 = phi i32 [ %1226, %1208 ], [ %1151, %1205 ]
  %1236 = extractvalue %dx.types.CBufRet.f32 %1141, 0
  %1237 = extractvalue %dx.types.CBufRet.f32 %1141, 1
  %1238 = fsub fast float %202, %1236
  %1239 = fsub fast float %203, %1237
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1242 = extractvalue %dx.types.CBufRet.f32 %1240, 3
  %1243 = fmul fast float %1238, %1241
  %1244 = fmul fast float %1239, %1242
  %1245 = call float @dx.op.binary.f32(i32 36, float %1243, float %1244)  ; FMin(a,b)
  %1246 = fcmp fast olt float %1245, 0.000000e+00
  %1247 = call float @dx.op.binary.f32(i32 35, float %1243, float %1244)  ; FMax(a,b)
  %1248 = fcmp fast ogt float %1247, 1.000000e+00
  %1249 = or i1 %1246, %1248
  %1250 = extractvalue %dx.types.CBufRet.f32 %1141, 2
  %1251 = fcmp fast olt float %204, %1250
  %1252 = or i1 %1249, %1251
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 3
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = fadd fast float %1256, %1254
  %1258 = fcmp fast ogt float %204, %1257
  %1259 = or i1 %1252, %1258
  br i1 %1259, label %1544, label %1260, !dx.controlflow.hints !95

; <label>:1260                                    ; preds = %1227
  %1261 = fsub fast float 1.000000e+00, %1244
  %1262 = extractvalue %dx.types.CBufRet.f32 %1255, 3
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 3
  %1265 = extractvalue %dx.types.CBufRet.f32 %1263, 2
  %1266 = extractvalue %dx.types.CBufRet.f32 %1263, 1
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1271 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  br i1 %1207, label %1287, label %1272, !dx.controlflow.hints !96

; <label>:1272                                    ; preds = %1260
  %1273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 48)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.ResRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.ResRet.f32 %1273, 2
  %1277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 104)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 108)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 112)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 116)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 120)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  br label %1287

; <label>:1287                                    ; preds = %1272, %1260
  %1288 = phi float [ %1280, %1272 ], [ %1262, %1260 ]
  %1289 = phi float [ %1284, %1272 ], [ %1264, %1260 ]
  %1290 = phi float [ %1286, %1272 ], [ %1265, %1260 ]
  %1291 = phi float [ %1282, %1272 ], [ %1266, %1260 ]
  %1292 = phi float [ %1274, %1272 ], [ %1268, %1260 ]
  %1293 = phi float [ %1275, %1272 ], [ %1269, %1260 ]
  %1294 = phi float [ %1276, %1272 ], [ %1270, %1260 ]
  %1295 = phi float [ %1278, %1272 ], [ %1271, %1260 ]
  %1296 = fcmp fast oeq float %1288, 0.000000e+00
  br i1 %1296, label %1412, label %1297, !dx.controlflow.hints !97

; <label>:1297                                    ; preds = %1287
  %1298 = fcmp fast ogt float %1289, 0.000000e+00
  %1299 = fcmp fast oeq float %404, 0.000000e+00
  br i1 %1299, label %1304, label %1300, !dx.controlflow.hints !81

; <label>:1300                                    ; preds = %1297
  %1301 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1302 = fmul fast float %1301, %404
  %1303 = call float @dx.op.unary.f32(i32 23, float %1302)  ; Log(value)
  br label %1304

; <label>:1304                                    ; preds = %1300, %1297
  %1305 = phi float [ %1303, %1300 ], [ 0.000000e+00, %1297 ]
  br i1 %1299, label %1310, label %1306, !dx.controlflow.hints !81

; <label>:1306                                    ; preds = %1304
  %1307 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1308 = fmul fast float %1307, %404
  %1309 = call float @dx.op.unary.f32(i32 23, float %1308)  ; Log(value)
  br label %1310

; <label>:1310                                    ; preds = %1306, %1304
  %1311 = phi float [ %1309, %1306 ], [ 0.000000e+00, %1304 ]
  br i1 %1298, label %1312, label %1374, !dx.controlflow.hints !98

; <label>:1312                                    ; preds = %1310
  %1313 = fcmp fast ogt float %1290, 0.000000e+00
  br i1 %1313, label %1314, label %1324, !dx.controlflow.hints !99

; <label>:1314                                    ; preds = %1312
  %1315 = fmul fast float %1290, %1243
  %1316 = fmul fast float %1290, %1261
  %1317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %1315, float %1316, float undef, float undef, i32 0, i32 0, i32 undef, float %1311)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1318 = extractvalue %dx.types.ResRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.ResRet.f32 %1317, 1
  %1320 = fmul fast float %1318, 2.000000e+00
  %1321 = fmul fast float %1319, 2.000000e+00
  %1322 = fadd fast float %1320, -1.000000e+00
  %1323 = fadd fast float %1321, -1.000000e+00
  br label %1345

; <label>:1324                                    ; preds = %1312
  %1325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.f32 %1325, 3
  %1327 = fmul fast float %1326, %1243
  %1328 = fmul fast float %1326, %1261
  %1329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %41, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1330 = extractvalue %dx.types.ResRet.f32 %1329, 0
  %1331 = extractvalue %dx.types.ResRet.f32 %1329, 1
  %1332 = extractvalue %dx.types.ResRet.f32 %1329, 2
  %1333 = fmul fast float %1330, 2.000000e+00
  %1334 = fmul fast float %1331, 2.000000e+00
  %1335 = fmul fast float %1332, 2.000000e+00
  %1336 = fadd fast float %1333, -1.000000e+00
  %1337 = fadd fast float %1334, -1.000000e+00
  %1338 = fadd fast float %1335, -1.000000e+00
  %1339 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1340 = fmul fast float %1336, %1339
  %1341 = fmul fast float %1337, %1339
  %1342 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1343 = fmul fast float %1342, 5.000000e-01
  %1344 = fmul fast float %1343, %1338
  br label %1345

; <label>:1345                                    ; preds = %1324, %1314
  %1346 = phi float [ %1322, %1314 ], [ %1340, %1324 ]
  %1347 = phi float [ %1323, %1314 ], [ %1341, %1324 ]
  %1348 = phi float [ 0.000000e+00, %1314 ], [ %1344, %1324 ]
  %1349 = fmul fast float %1288, %202
  %1350 = fmul fast float %1288, %203
  %1351 = fmul fast float %1288, %204
  %1352 = call float @dx.op.unary.f32(i32 22, float %1289)  ; Frc(value)
  %1353 = fmul fast float %1352, %1346
  %1354 = fmul fast float %1352, %1347
  %1355 = fmul fast float %1352, %1348
  %1356 = fsub fast float %1349, %1353
  %1357 = fsub fast float %1350, %1354
  %1358 = fsub fast float %1351, %1355
  %1359 = fadd fast float %1289, 5.000000e-01
  %1360 = call float @dx.op.unary.f32(i32 22, float %1359)  ; Frc(value)
  %1361 = fmul fast float %1360, %1346
  %1362 = fmul fast float %1360, %1347
  %1363 = fmul fast float %1360, %1348
  %1364 = fadd fast float %1349, -5.000000e-01
  %1365 = fsub fast float %1364, %1361
  %1366 = fadd fast float %1350, -5.000000e-01
  %1367 = fsub fast float %1366, %1362
  %1368 = fadd fast float %1351, -5.000000e-01
  %1369 = fsub fast float %1368, %1363
  %1370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %1365, float %1367, float %1369, float undef, i32 0, i32 0, i32 0, float %1305)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.ResRet.f32 %1370, 1
  %1373 = fadd fast float %1371, %1291
  br label %1384

; <label>:1374                                    ; preds = %1310
  %1375 = fmul fast float %1295, %1292
  %1376 = fmul fast float %1295, %1293
  %1377 = fmul fast float %1295, %1294
  %1378 = fsub fast float %202, %1375
  %1379 = fsub fast float %203, %1376
  %1380 = fsub fast float %204, %1377
  %1381 = fmul fast float %1378, %1288
  %1382 = fmul fast float %1379, %1288
  %1383 = fmul fast float %1380, %1288
  br label %1384

; <label>:1384                                    ; preds = %1374, %1345
  %1385 = phi float [ %1356, %1345 ], [ %1381, %1374 ]
  %1386 = phi float [ %1357, %1345 ], [ %1382, %1374 ]
  %1387 = phi float [ %1358, %1345 ], [ %1383, %1374 ]
  %1388 = phi float [ %1373, %1345 ], [ 0.000000e+00, %1374 ]
  %1389 = phi float [ %1372, %1345 ], [ 0.000000e+00, %1374 ]
  %1390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %1385, float %1386, float %1387, float undef, i32 0, i32 0, i32 0, float %1305)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.ResRet.f32 %1390, 1
  %1393 = fadd fast float %1391, %1291
  br i1 %1298, label %1394, label %1405, !dx.controlflow.hints !100

; <label>:1394                                    ; preds = %1384
  %1395 = call float @dx.op.unary.f32(i32 22, float %1289)  ; Frc(value)
  %1396 = fmul fast float %1395, 2.000000e+00
  %1397 = fadd fast float %1396, -1.000000e+00
  %1398 = call float @dx.op.unary.f32(i32 6, float %1397)  ; FAbs(value)
  %1399 = fsub fast float %1388, %1393
  %1400 = fmul fast float %1398, %1399
  %1401 = fadd fast float %1400, %1393
  %1402 = fsub fast float %1389, %1392
  %1403 = fmul fast float %1398, %1402
  %1404 = fadd fast float %1403, %1392
  br label %1405

; <label>:1405                                    ; preds = %1394, %1384
  %1406 = phi float [ %1401, %1394 ], [ %1393, %1384 ]
  %1407 = phi float [ %1404, %1394 ], [ %1392, %1384 ]
  %1408 = fsub fast float %1406, %1407
  %1409 = fsub fast float 1.000000e+00, %1407
  %1410 = fdiv fast float %1408, %1409
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  br label %1412

; <label>:1412                                    ; preds = %1405, %1287
  %1413 = phi float [ %1411, %1405 ], [ 1.000000e+00, %1287 ]
  %1414 = fcmp fast oeq float %404, 0.000000e+00
  br i1 %1414, label %1419, label %1415, !dx.controlflow.hints !81

; <label>:1415                                    ; preds = %1412
  %1416 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1417 = fmul fast float %1416, %404
  %1418 = call float @dx.op.unary.f32(i32 23, float %1417)  ; Log(value)
  br label %1419

; <label>:1419                                    ; preds = %1415, %1412
  %1420 = phi float [ %1418, %1415 ], [ 0.000000e+00, %1412 ]
  %1421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %40, float %1243, float %1261, float undef, float undef, i32 0, i32 0, i32 undef, float %1420)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1422 = extractvalue %dx.types.ResRet.f32 %1421, 0
  %1423 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %42, float %1243, float %1261, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1424 = extractvalue %dx.types.ResRet.f32 %1423, 0
  %1425 = extractvalue %dx.types.ResRet.f32 %1423, 1
  %1426 = extractvalue %dx.types.ResRet.f32 %1423, 2
  %1427 = extractvalue %dx.types.ResRet.f32 %1423, 3
  %1428 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %42, float %1243, float %1261, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.ResRet.f32 %1428, 2
  %1432 = extractvalue %dx.types.ResRet.f32 %1428, 3
  %1433 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %42, float %1243, float %1261, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.ResRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.ResRet.f32 %1433, 2
  %1437 = extractvalue %dx.types.ResRet.f32 %1433, 3
  %1438 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %42, float %1243, float %1261, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.ResRet.f32 %1438, 2
  %1442 = extractvalue %dx.types.ResRet.f32 %1438, 3
  %1443 = fadd fast float %1424, %1425
  %1444 = fadd fast float %1443, %1426
  %1445 = fadd fast float %1444, %1427
  %1446 = fmul fast float %1429, %1424
  %1447 = fmul fast float %1430, %1425
  %1448 = fadd fast float %1446, %1447
  %1449 = fmul fast float %1431, %1426
  %1450 = fadd fast float %1448, %1449
  %1451 = fmul fast float %1432, %1427
  %1452 = fadd fast float %1450, %1451
  %1453 = fmul fast float %1434, %1424
  %1454 = fmul fast float %1435, %1425
  %1455 = fadd fast float %1453, %1454
  %1456 = fmul fast float %1436, %1426
  %1457 = fadd fast float %1455, %1456
  %1458 = fmul fast float %1437, %1427
  %1459 = fadd fast float %1457, %1458
  %1460 = fmul fast float %1439, %1424
  %1461 = fmul fast float %1440, %1425
  %1462 = fadd fast float %1460, %1461
  %1463 = fmul fast float %1441, %1426
  %1464 = fadd fast float %1462, %1463
  %1465 = fmul fast float %1442, %1427
  %1466 = fadd fast float %1464, %1465
  %1467 = fcmp fast ogt float %1445, 0.000000e+00
  %1468 = fdiv fast float %1452, %1445
  %1469 = select i1 %1467, float %1468, float 0.000000e+00
  %1470 = fdiv fast float %1459, %1445
  %1471 = select i1 %1467, float %1470, float 0.000000e+00
  %1472 = fdiv fast float %1466, %1445
  %1473 = select i1 %1467, float %1472, float 0.000000e+00
  %1474 = fcmp fast ogt float %204, %1471
  %1475 = fcmp fast olt float %204, %1469
  %1476 = and i1 %1475, %1474
  br i1 %1476, label %1477, label %1544, !dx.controlflow.hints !101

; <label>:1477                                    ; preds = %1419
  %1478 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 2
  %1481 = extractvalue %dx.types.CBufRet.f32 %1479, 3
  br i1 %1207, label %1492, label %1482, !dx.controlflow.hints !102

; <label>:1482                                    ; preds = %1477
  %1483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 60)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 64)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = extractvalue %dx.types.ResRet.f32 %1485, 1
  %1488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 72)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 96)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  br label %1492

; <label>:1492                                    ; preds = %1482, %1477
  %1493 = phi float [ %1484, %1482 ], [ %1256, %1477 ]
  %1494 = phi float [ %1489, %1482 ], [ %1254, %1477 ]
  %1495 = phi float [ %1491, %1482 ], [ %1478, %1477 ]
  %1496 = phi float [ %1486, %1482 ], [ %1480, %1477 ]
  %1497 = phi float [ %1487, %1482 ], [ %1481, %1477 ]
  %1498 = call float @dx.op.binary.f32(i32 35, float %1422, float 0.000000e+00)  ; FMax(a,b)
  %1499 = call float @dx.op.binary.f32(i32 36, float %1498, float 1.000000e+00)  ; FMin(a,b)
  %1500 = call float @dx.op.unary.f32(i32 24, float %1499)  ; Sqrt(value)
  %1501 = call float @dx.op.binary.f32(i32 35, float %1473, float 0x3F847AE140000000)  ; FMax(a,b)
  %1502 = fsub fast float %1469, %204
  %1503 = fsub fast float %204, %1471
  %1504 = call float @dx.op.binary.f32(i32 36, float %1503, float %1502)  ; FMin(a,b)
  %1505 = fdiv fast float %1504, %1501
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = fsub fast float %204, %1494
  %1508 = fdiv fast float %1507, %1493
  %1509 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1510 = fsub fast float 1.000000e+00, %1509
  %1511 = fmul float %1506, %1510
  %1512 = fmul float %1511, %1511
  %1513 = fmul fast float %1500, %1413
  %1514 = fmul fast float %1513, %1512
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 2
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1518 = fsub fast float %1514, %1517
  %1519 = fsub fast float %1516, %1517
  %1520 = fdiv fast float %1518, %1519
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1522 = fmul fast float %1521, %1495
  %1523 = fcmp fast ogt float %1497, 0.000000e+00
  br i1 %1523, label %1524, label %1544, !dx.controlflow.hints !103

; <label>:1524                                    ; preds = %1492
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.CBufRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.CBufRet.f32 %1525, 2
  %1529 = fsub fast float %202, %1526
  %1530 = fsub fast float %203, %1527
  %1531 = fsub fast float %204, %1528
  %1532 = fmul fast float %1529, %1529
  %1533 = fmul fast float %1530, %1530
  %1534 = fadd fast float %1532, %1533
  %1535 = fmul fast float %1531, %1531
  %1536 = fadd fast float %1534, %1535
  %1537 = call float @dx.op.unary.f32(i32 24, float %1536)  ; Sqrt(value)
  %1538 = fsub fast float %1537, %1496
  %1539 = fsub fast float %1497, %1496
  %1540 = fdiv fast float %1538, %1539
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1542 = fmul fast float %1541, %1541
  %1543 = fmul fast float %1542, %1522
  br label %1544

; <label>:1544                                    ; preds = %1524, %1492, %1419, %1227
  %1545 = phi float [ 0.000000e+00, %1227 ], [ 0.000000e+00, %1419 ], [ %1543, %1524 ], [ %1522, %1492 ]
  %1546 = fcmp fast oeq float %1545, 0.000000e+00
  br i1 %1546, label %1925, label %1547, !dx.controlflow.hints !104

; <label>:1547                                    ; preds = %1544
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.CBufRet.f32 %1548, 1
  %1551 = extractvalue %dx.types.CBufRet.f32 %1548, 2
  %1552 = fsub fast float %202, %1549
  %1553 = fadd fast float %1552, %1551
  %1554 = fsub fast float %203, %1550
  %1555 = fadd fast float %1554, %1551
  %1556 = extractvalue %dx.types.CBufRet.f32 %1548, 3
  %1557 = fmul fast float %1553, %1556
  %1558 = fmul fast float %1555, %1556
  %1559 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1560 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1561 = fsub fast float 1.000000e+00, %1559
  %1562 = fsub fast float 1.000000e+00, %1560
  %1563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %1561, float %1562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1564 = extractvalue %dx.types.ResRet.f32 %1563, 0
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 2
  %1567 = fmul fast float %1566, %1564
  %1568 = extractvalue %dx.types.CBufRet.f32 %1565, 3
  %1569 = fadd fast float %1568, %1567
  %1570 = fcmp fast ogt float %1564, 0.000000e+00
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 32768
  %1574 = icmp ne i32 %1573, 0
  %1575 = and i1 %1570, %1574
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 3
  %1578 = fadd fast float %1577, %1569
  %1579 = fcmp fast ole float %204, %1578
  %1580 = and i1 %1575, %1579
  %1581 = xor i1 %1580, true
  %1582 = icmp ne i32 %1234, 0
  %1583 = and i1 %1582, %1581
  %1584 = icmp ne i32 %1235, 0
  %1585 = and i1 %1584, %1580
  %1586 = or i1 %1583, %1585
  br i1 %1586, label %1925, label %1587, !dx.controlflow.hints !105

; <label>:1587                                    ; preds = %1547
  %1588 = fsub fast float %204, %1569
  %1589 = call float @dx.op.unary.f32(i32 6, float %1588)  ; FAbs(value)
  %1590 = fdiv fast float %1589, %1233
  %1591 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1592 = fmul fast float %1591, %1545
  %1593 = fcmp fast une float %1231, 0.000000e+00
  br i1 %1593, label %1594, label %1913, !dx.controlflow.hints !106

; <label>:1594                                    ; preds = %1587
  %1595 = fmul fast float %1231, %126
  %1596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1597 = extractvalue %dx.types.CBufRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.CBufRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.CBufRet.f32 %1596, 2
  %1600 = fmul fast float %1597, %1595
  %1601 = fmul fast float %1598, %1595
  %1602 = fmul fast float %1599, %1595
  %1603 = fadd fast float %1600, %202
  %1604 = fadd fast float %1601, %203
  %1605 = fadd fast float %1602, %204
  %1606 = fmul fast float %1231, 2.000000e+00
  %1607 = call float @dx.op.binary.f32(i32 35, float %404, float %1606)  ; FMax(a,b)
  %1608 = fsub fast float %1603, %1236
  %1609 = fsub fast float %1604, %1237
  %1610 = fmul fast float %1608, %1241
  %1611 = fmul fast float %1609, %1242
  %1612 = call float @dx.op.binary.f32(i32 36, float %1610, float %1611)  ; FMin(a,b)
  %1613 = fcmp fast olt float %1612, 0.000000e+00
  %1614 = call float @dx.op.binary.f32(i32 35, float %1610, float %1611)  ; FMax(a,b)
  %1615 = fcmp fast ogt float %1614, 1.000000e+00
  %1616 = or i1 %1613, %1615
  %1617 = fcmp fast olt float %1605, %1250
  %1618 = or i1 %1616, %1617
  %1619 = fcmp fast ogt float %1605, %1257
  %1620 = or i1 %1618, %1619
  br i1 %1620, label %1905, label %1621, !dx.controlflow.hints !95

; <label>:1621                                    ; preds = %1594
  %1622 = fsub fast float 1.000000e+00, %1611
  %1623 = extractvalue %dx.types.CBufRet.f32 %1255, 3
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 3
  %1626 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1627 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1628, 0
  %1630 = extractvalue %dx.types.CBufRet.f32 %1628, 1
  %1631 = extractvalue %dx.types.CBufRet.f32 %1628, 2
  %1632 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  br i1 %1207, label %1648, label %1633, !dx.controlflow.hints !96

; <label>:1633                                    ; preds = %1621
  %1634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 48)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.ResRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.ResRet.f32 %1634, 2
  %1638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 104)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.f32 %1638, 0
  %1640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 108)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.f32 %1640, 0
  %1642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 112)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  %1644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 116)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.f32 %1644, 0
  %1646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 120)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.f32 %1646, 0
  br label %1648

; <label>:1648                                    ; preds = %1633, %1621
  %1649 = phi float [ %1641, %1633 ], [ %1623, %1621 ]
  %1650 = phi float [ %1645, %1633 ], [ %1625, %1621 ]
  %1651 = phi float [ %1647, %1633 ], [ %1626, %1621 ]
  %1652 = phi float [ %1643, %1633 ], [ %1627, %1621 ]
  %1653 = phi float [ %1635, %1633 ], [ %1629, %1621 ]
  %1654 = phi float [ %1636, %1633 ], [ %1630, %1621 ]
  %1655 = phi float [ %1637, %1633 ], [ %1631, %1621 ]
  %1656 = phi float [ %1639, %1633 ], [ %1632, %1621 ]
  %1657 = fcmp fast oeq float %1649, 0.000000e+00
  br i1 %1657, label %1773, label %1658, !dx.controlflow.hints !97

; <label>:1658                                    ; preds = %1648
  %1659 = fcmp fast ogt float %1650, 0.000000e+00
  %1660 = fcmp fast oeq float %1607, 0.000000e+00
  br i1 %1660, label %1665, label %1661, !dx.controlflow.hints !81

; <label>:1661                                    ; preds = %1658
  %1662 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1663 = fmul fast float %1662, %1607
  %1664 = call float @dx.op.unary.f32(i32 23, float %1663)  ; Log(value)
  br label %1665

; <label>:1665                                    ; preds = %1661, %1658
  %1666 = phi float [ %1664, %1661 ], [ 0.000000e+00, %1658 ]
  br i1 %1660, label %1671, label %1667, !dx.controlflow.hints !81

; <label>:1667                                    ; preds = %1665
  %1668 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1669 = fmul fast float %1668, %1607
  %1670 = call float @dx.op.unary.f32(i32 23, float %1669)  ; Log(value)
  br label %1671

; <label>:1671                                    ; preds = %1667, %1665
  %1672 = phi float [ %1670, %1667 ], [ 0.000000e+00, %1665 ]
  br i1 %1659, label %1673, label %1735, !dx.controlflow.hints !98

; <label>:1673                                    ; preds = %1671
  %1674 = fcmp fast ogt float %1651, 0.000000e+00
  br i1 %1674, label %1675, label %1685, !dx.controlflow.hints !99

; <label>:1675                                    ; preds = %1673
  %1676 = fmul fast float %1651, %1610
  %1677 = fmul fast float %1651, %1622
  %1678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %1676, float %1677, float undef, float undef, i32 0, i32 0, i32 undef, float %1672)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = fmul fast float %1679, 2.000000e+00
  %1682 = fmul fast float %1680, 2.000000e+00
  %1683 = fadd fast float %1681, -1.000000e+00
  %1684 = fadd fast float %1682, -1.000000e+00
  br label %1706

; <label>:1685                                    ; preds = %1673
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1688 = fmul fast float %1687, %1610
  %1689 = fmul fast float %1687, %1622
  %1690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %41, float %1688, float %1689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = extractvalue %dx.types.ResRet.f32 %1690, 1
  %1693 = extractvalue %dx.types.ResRet.f32 %1690, 2
  %1694 = fmul fast float %1691, 2.000000e+00
  %1695 = fmul fast float %1692, 2.000000e+00
  %1696 = fmul fast float %1693, 2.000000e+00
  %1697 = fadd fast float %1694, -1.000000e+00
  %1698 = fadd fast float %1695, -1.000000e+00
  %1699 = fadd fast float %1696, -1.000000e+00
  %1700 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1701 = fmul fast float %1697, %1700
  %1702 = fmul fast float %1698, %1700
  %1703 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1704 = fmul fast float %1703, 5.000000e-01
  %1705 = fmul fast float %1704, %1699
  br label %1706

; <label>:1706                                    ; preds = %1685, %1675
  %1707 = phi float [ %1683, %1675 ], [ %1701, %1685 ]
  %1708 = phi float [ %1684, %1675 ], [ %1702, %1685 ]
  %1709 = phi float [ 0.000000e+00, %1675 ], [ %1705, %1685 ]
  %1710 = fmul fast float %1649, %1603
  %1711 = fmul fast float %1649, %1604
  %1712 = fmul fast float %1649, %1605
  %1713 = call float @dx.op.unary.f32(i32 22, float %1650)  ; Frc(value)
  %1714 = fmul fast float %1713, %1707
  %1715 = fmul fast float %1713, %1708
  %1716 = fmul fast float %1713, %1709
  %1717 = fsub fast float %1710, %1714
  %1718 = fsub fast float %1711, %1715
  %1719 = fsub fast float %1712, %1716
  %1720 = fadd fast float %1650, 5.000000e-01
  %1721 = call float @dx.op.unary.f32(i32 22, float %1720)  ; Frc(value)
  %1722 = fmul fast float %1721, %1707
  %1723 = fmul fast float %1721, %1708
  %1724 = fmul fast float %1721, %1709
  %1725 = fadd fast float %1710, -5.000000e-01
  %1726 = fsub fast float %1725, %1722
  %1727 = fadd fast float %1711, -5.000000e-01
  %1728 = fsub fast float %1727, %1723
  %1729 = fadd fast float %1712, -5.000000e-01
  %1730 = fsub fast float %1729, %1724
  %1731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %1726, float %1728, float %1730, float undef, i32 0, i32 0, i32 0, float %1666)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1732 = extractvalue %dx.types.ResRet.f32 %1731, 0
  %1733 = extractvalue %dx.types.ResRet.f32 %1731, 1
  %1734 = fadd fast float %1732, %1652
  br label %1745

; <label>:1735                                    ; preds = %1671
  %1736 = fmul fast float %1656, %1653
  %1737 = fmul fast float %1656, %1654
  %1738 = fmul fast float %1656, %1655
  %1739 = fsub fast float %1603, %1736
  %1740 = fsub fast float %1604, %1737
  %1741 = fsub fast float %1605, %1738
  %1742 = fmul fast float %1739, %1649
  %1743 = fmul fast float %1740, %1649
  %1744 = fmul fast float %1741, %1649
  br label %1745

; <label>:1745                                    ; preds = %1735, %1706
  %1746 = phi float [ %1717, %1706 ], [ %1742, %1735 ]
  %1747 = phi float [ %1718, %1706 ], [ %1743, %1735 ]
  %1748 = phi float [ %1719, %1706 ], [ %1744, %1735 ]
  %1749 = phi float [ %1734, %1706 ], [ 0.000000e+00, %1735 ]
  %1750 = phi float [ %1733, %1706 ], [ 0.000000e+00, %1735 ]
  %1751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %1746, float %1747, float %1748, float undef, i32 0, i32 0, i32 0, float %1666)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.ResRet.f32 %1751, 1
  %1754 = fadd fast float %1752, %1652
  br i1 %1659, label %1755, label %1766, !dx.controlflow.hints !100

; <label>:1755                                    ; preds = %1745
  %1756 = call float @dx.op.unary.f32(i32 22, float %1650)  ; Frc(value)
  %1757 = fmul fast float %1756, 2.000000e+00
  %1758 = fadd fast float %1757, -1.000000e+00
  %1759 = call float @dx.op.unary.f32(i32 6, float %1758)  ; FAbs(value)
  %1760 = fsub fast float %1749, %1754
  %1761 = fmul fast float %1759, %1760
  %1762 = fadd fast float %1761, %1754
  %1763 = fsub fast float %1750, %1753
  %1764 = fmul fast float %1759, %1763
  %1765 = fadd fast float %1764, %1753
  br label %1766

; <label>:1766                                    ; preds = %1755, %1745
  %1767 = phi float [ %1762, %1755 ], [ %1754, %1745 ]
  %1768 = phi float [ %1765, %1755 ], [ %1753, %1745 ]
  %1769 = fsub fast float %1767, %1768
  %1770 = fsub fast float 1.000000e+00, %1768
  %1771 = fdiv fast float %1769, %1770
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  br label %1773

; <label>:1773                                    ; preds = %1766, %1648
  %1774 = phi float [ %1772, %1766 ], [ 1.000000e+00, %1648 ]
  %1775 = fcmp fast oeq float %1607, 0.000000e+00
  br i1 %1775, label %1780, label %1776, !dx.controlflow.hints !81

; <label>:1776                                    ; preds = %1773
  %1777 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1778 = fmul fast float %1777, %1607
  %1779 = call float @dx.op.unary.f32(i32 23, float %1778)  ; Log(value)
  br label %1780

; <label>:1780                                    ; preds = %1776, %1773
  %1781 = phi float [ %1779, %1776 ], [ 0.000000e+00, %1773 ]
  %1782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %40, float %1610, float %1622, float undef, float undef, i32 0, i32 0, i32 undef, float %1781)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %42, float %1610, float %1622, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1785 = extractvalue %dx.types.ResRet.f32 %1784, 0
  %1786 = extractvalue %dx.types.ResRet.f32 %1784, 1
  %1787 = extractvalue %dx.types.ResRet.f32 %1784, 2
  %1788 = extractvalue %dx.types.ResRet.f32 %1784, 3
  %1789 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %42, float %1610, float %1622, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1790 = extractvalue %dx.types.ResRet.f32 %1789, 0
  %1791 = extractvalue %dx.types.ResRet.f32 %1789, 1
  %1792 = extractvalue %dx.types.ResRet.f32 %1789, 2
  %1793 = extractvalue %dx.types.ResRet.f32 %1789, 3
  %1794 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %42, float %1610, float %1622, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1795 = extractvalue %dx.types.ResRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.ResRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.ResRet.f32 %1794, 2
  %1798 = extractvalue %dx.types.ResRet.f32 %1794, 3
  %1799 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %42, float %1610, float %1622, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1800 = extractvalue %dx.types.ResRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.ResRet.f32 %1799, 1
  %1802 = extractvalue %dx.types.ResRet.f32 %1799, 2
  %1803 = extractvalue %dx.types.ResRet.f32 %1799, 3
  %1804 = fadd fast float %1785, %1786
  %1805 = fadd fast float %1804, %1787
  %1806 = fadd fast float %1805, %1788
  %1807 = fmul fast float %1790, %1785
  %1808 = fmul fast float %1791, %1786
  %1809 = fadd fast float %1807, %1808
  %1810 = fmul fast float %1792, %1787
  %1811 = fadd fast float %1809, %1810
  %1812 = fmul fast float %1793, %1788
  %1813 = fadd fast float %1811, %1812
  %1814 = fmul fast float %1795, %1785
  %1815 = fmul fast float %1796, %1786
  %1816 = fadd fast float %1814, %1815
  %1817 = fmul fast float %1797, %1787
  %1818 = fadd fast float %1816, %1817
  %1819 = fmul fast float %1798, %1788
  %1820 = fadd fast float %1818, %1819
  %1821 = fmul fast float %1800, %1785
  %1822 = fmul fast float %1801, %1786
  %1823 = fadd fast float %1821, %1822
  %1824 = fmul fast float %1802, %1787
  %1825 = fadd fast float %1823, %1824
  %1826 = fmul fast float %1803, %1788
  %1827 = fadd fast float %1825, %1826
  %1828 = fcmp fast ogt float %1806, 0.000000e+00
  %1829 = fdiv fast float %1813, %1806
  %1830 = select i1 %1828, float %1829, float 0.000000e+00
  %1831 = fdiv fast float %1820, %1806
  %1832 = select i1 %1828, float %1831, float 0.000000e+00
  %1833 = fdiv fast float %1827, %1806
  %1834 = select i1 %1828, float %1833, float 0.000000e+00
  %1835 = fcmp fast ogt float %1605, %1832
  %1836 = fcmp fast olt float %1605, %1830
  %1837 = and i1 %1836, %1835
  br i1 %1837, label %1838, label %1905, !dx.controlflow.hints !101

; <label>:1838                                    ; preds = %1780
  %1839 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  br i1 %1207, label %1853, label %1843, !dx.controlflow.hints !102

; <label>:1843                                    ; preds = %1838
  %1844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 60)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 64)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.f32 %1846, 0
  %1848 = extractvalue %dx.types.ResRet.f32 %1846, 1
  %1849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 72)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1206, i32 96)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.f32 %1851, 0
  br label %1853

; <label>:1853                                    ; preds = %1843, %1838
  %1854 = phi float [ %1845, %1843 ], [ %1256, %1838 ]
  %1855 = phi float [ %1850, %1843 ], [ %1254, %1838 ]
  %1856 = phi float [ %1852, %1843 ], [ %1839, %1838 ]
  %1857 = phi float [ %1847, %1843 ], [ %1841, %1838 ]
  %1858 = phi float [ %1848, %1843 ], [ %1842, %1838 ]
  %1859 = call float @dx.op.binary.f32(i32 35, float %1783, float 0.000000e+00)  ; FMax(a,b)
  %1860 = call float @dx.op.binary.f32(i32 36, float %1859, float 1.000000e+00)  ; FMin(a,b)
  %1861 = call float @dx.op.unary.f32(i32 24, float %1860)  ; Sqrt(value)
  %1862 = call float @dx.op.binary.f32(i32 35, float %1834, float 0x3F847AE140000000)  ; FMax(a,b)
  %1863 = fsub fast float %1830, %1605
  %1864 = fsub fast float %1605, %1832
  %1865 = call float @dx.op.binary.f32(i32 36, float %1864, float %1863)  ; FMin(a,b)
  %1866 = fdiv fast float %1865, %1862
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  %1868 = fsub fast float %1605, %1855
  %1869 = fdiv fast float %1868, %1854
  %1870 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  %1871 = fsub fast float 1.000000e+00, %1870
  %1872 = fmul float %1867, %1871
  %1873 = fmul float %1872, %1872
  %1874 = fmul fast float %1861, %1774
  %1875 = fmul fast float %1874, %1873
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 2
  %1878 = extractvalue %dx.types.CBufRet.f32 %1876, 1
  %1879 = fsub fast float %1875, %1878
  %1880 = fsub fast float %1877, %1878
  %1881 = fdiv fast float %1879, %1880
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1883 = fmul fast float %1882, %1856
  %1884 = fcmp fast ogt float %1858, 0.000000e+00
  br i1 %1884, label %1885, label %1905, !dx.controlflow.hints !103

; <label>:1885                                    ; preds = %1853
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.CBufRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.CBufRet.f32 %1886, 2
  %1890 = fsub fast float %1603, %1887
  %1891 = fsub fast float %1604, %1888
  %1892 = fsub fast float %1605, %1889
  %1893 = fmul fast float %1890, %1890
  %1894 = fmul fast float %1891, %1891
  %1895 = fadd fast float %1893, %1894
  %1896 = fmul fast float %1892, %1892
  %1897 = fadd fast float %1895, %1896
  %1898 = call float @dx.op.unary.f32(i32 24, float %1897)  ; Sqrt(value)
  %1899 = fsub fast float %1898, %1857
  %1900 = fsub fast float %1858, %1857
  %1901 = fdiv fast float %1899, %1900
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = fmul fast float %1902, %1902
  %1904 = fmul fast float %1903, %1883
  br label %1905

; <label>:1905                                    ; preds = %1885, %1853, %1780, %1594
  %1906 = phi float [ 0.000000e+00, %1594 ], [ 0.000000e+00, %1780 ], [ %1904, %1885 ], [ %1883, %1853 ]
  %1907 = fsub fast float %1592, %1906
  %1908 = fdiv fast float %1907, %1592
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = fsub fast float 1.000000e+00, %1232
  %1911 = fmul fast float %1909, %1910
  %1912 = fadd fast float %1911, %1232
  br label %1913

; <label>:1913                                    ; preds = %1905, %1587
  %1914 = phi float [ %1912, %1905 ], [ 1.000000e+00, %1587 ]
  %1915 = fadd fast float %1592, %1131
  %1916 = fmul fast float %1592, %1228
  %1917 = fmul fast float %1916, %1914
  %1918 = fmul fast float %1592, %1229
  %1919 = fmul fast float %1918, %1914
  %1920 = fmul fast float %1592, %1230
  %1921 = fmul fast float %1920, %1914
  %1922 = fadd fast float %1917, %1127
  %1923 = fadd fast float %1919, %1128
  %1924 = fadd fast float %1921, %1129
  br label %1925

; <label>:1925                                    ; preds = %1913, %1547, %1544, %1126
  %1926 = phi float [ %1127, %1126 ], [ %1127, %1544 ], [ %1127, %1547 ], [ %1922, %1913 ]
  %1927 = phi float [ %1128, %1126 ], [ %1128, %1544 ], [ %1128, %1547 ], [ %1923, %1913 ]
  %1928 = phi float [ %1129, %1126 ], [ %1129, %1544 ], [ %1129, %1547 ], [ %1924, %1913 ]
  %1929 = phi float [ %1131, %1126 ], [ %1131, %1544 ], [ %1131, %1547 ], [ %1915, %1913 ]
  %1930 = and i32 %323, 4
  %1931 = icmp eq i32 %1930, 0
  br i1 %1931, label %2102, label %1932, !dx.controlflow.hints !107

; <label>:1932                                    ; preds = %1925
  %1933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.i32 %1933, 1
  %1935 = icmp eq i32 %1934, 0
  br i1 %1935, label %2102, label %1936

; <label>:1936                                    ; preds = %1932
  br label %1937

; <label>:1937                                    ; preds = %2093, %1936
  %1938 = phi i32 [ %2099, %2093 ], [ 0, %1936 ]
  %1939 = phi float [ %2094, %2093 ], [ %1926, %1936 ]
  %1940 = phi float [ %2095, %2093 ], [ %1927, %1936 ]
  %1941 = phi float [ %2096, %2093 ], [ %1928, %1936 ]
  %1942 = phi float [ %2097, %2093 ], [ %1130, %1936 ]
  %1943 = phi float [ %2098, %2093 ], [ %1929, %1936 ]
  %1944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.i32 %1944, 1
  %1946 = call i32 @dx.op.tertiary.i32(i32 49, i32 %321, i32 %1945, i32 %1938)  ; UMad(a,b,c)
  %1947 = shl i32 %1946, 2
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = icmp eq i32 %1949, 0
  br i1 %1950, label %2093, label %1951

; <label>:1951                                    ; preds = %1937
  br label %1952

; <label>:1952                                    ; preds = %2079, %1951
  %1953 = phi i32 [ %1963, %2079 ], [ %1949, %1951 ]
  %1954 = phi float [ %2085, %2079 ], [ %1939, %1951 ]
  %1955 = phi float [ %2086, %2079 ], [ %1940, %1951 ]
  %1956 = phi float [ %2087, %2079 ], [ %1941, %1951 ]
  %1957 = phi float [ %2089, %2079 ], [ %1942, %1951 ]
  %1958 = phi float [ %2090, %2079 ], [ %1943, %1951 ]
  %1959 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1953)  ; FirstbitLo(value)
  %1960 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1938, i32 %1959)  ; UMad(a,b,c)
  %1961 = and i32 %1959, 31
  %1962 = shl i32 1, %1961
  %1963 = xor i32 %1962, %1953
  %1964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1960, i32 0)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1960, i32 4)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1960, i32 16)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1970 = extractvalue %dx.types.ResRet.f32 %1968, 1
  %1971 = extractvalue %dx.types.ResRet.f32 %1968, 2
  %1972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1960, i32 28)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1960, i32 32)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = extractvalue %dx.types.ResRet.f32 %1974, 1
  %1977 = extractvalue %dx.types.ResRet.f32 %1974, 2
  %1978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1960, i32 44)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.f32 %1978, 0
  %1980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1960, i32 48)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1960, i32 52)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1960, i32 56)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.f32 %1984, 0
  %1986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1960, i32 64)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.ResRet.f32 %1986, 1
  %1989 = extractvalue %dx.types.ResRet.f32 %1986, 2
  %1990 = mul i32 %1960, 60
  %1991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  %1993 = extractvalue %dx.types.ResRet.f32 %1991, 1
  %1994 = extractvalue %dx.types.ResRet.f32 %1991, 2
  %1995 = add i32 %1990, 12
  %1996 = add i32 %1990, 48
  %1997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.f32 %1997, 2
  %1999 = fsub fast float %202, %1992
  %2000 = fsub fast float %203, %1993
  %2001 = fsub fast float %204, %1994
  %2002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.ResRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.ResRet.f32 %2002, 2
  %2006 = call float @dx.op.dot3.f32(i32 55, float %1999, float %2000, float %2001, float %2003, float %2004, float %2005)  ; Dot3(ax,ay,az,bx,by,bz)
  %2007 = add i32 %1990, 24
  %2008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.f32 %2008, 0
  %2010 = extractvalue %dx.types.ResRet.f32 %2008, 1
  %2011 = extractvalue %dx.types.ResRet.f32 %2008, 2
  %2012 = call float @dx.op.dot3.f32(i32 55, float %1999, float %2000, float %2001, float %2009, float %2010, float %2011)  ; Dot3(ax,ay,az,bx,by,bz)
  %2013 = add i32 %1990, 36
  %2014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.f32 %2014, 0
  %2016 = extractvalue %dx.types.ResRet.f32 %2014, 1
  %2017 = extractvalue %dx.types.ResRet.f32 %2014, 2
  %2018 = call float @dx.op.dot3.f32(i32 55, float %1999, float %2000, float %2001, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2019 = call float @dx.op.unary.f32(i32 6, float %2006)  ; FAbs(value)
  %2020 = call float @dx.op.unary.f32(i32 6, float %2012)  ; FAbs(value)
  %2021 = call float @dx.op.unary.f32(i32 6, float %2018)  ; FAbs(value)
  %2022 = fmul fast float %2019, %1979
  %2023 = fmul fast float %2020, %1979
  %2024 = fmul fast float %2021, %1979
  %2025 = fadd fast float %2022, %1975
  %2026 = fadd fast float %2023, %1976
  %2027 = fadd fast float %2024, %1977
  %2028 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2029 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2030 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  %2031 = fmul fast float %2028, %2028
  %2032 = fmul fast float %2029, %2029
  %2033 = fadd fast float %2032, %2031
  %2034 = fmul fast float %2030, %2030
  %2035 = fadd fast float %2033, %2034
  %2036 = call float @dx.op.unary.f32(i32 24, float %2035)  ; Sqrt(value)
  %2037 = fsub fast float 1.000000e+00, %2036
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = fmul fast float %2038, %1965
  %2040 = fmul fast float %1998, 2.000000e+00
  %2041 = fadd fast float %2018, %1998
  %2042 = call float @dx.op.binary.f32(i32 35, float %2041, float 0.000000e+00)  ; FMax(a,b)
  %2043 = call float @dx.op.binary.f32(i32 36, float %2042, float %2040)  ; FMin(a,b)
  %2044 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2043)  ; FMax(a,b)
  %2045 = fmul fast float %1967, 0x3FF7154760000000
  %2046 = fmul fast float %2045, %2044
  %2047 = call float @dx.op.unary.f32(i32 21, float %2046)  ; Exp(value)
  %2048 = fmul fast float %2039, %2047
  %2049 = fcmp fast oeq float %404, 0.000000e+00
  br i1 %2049, label %2055, label %2050, !dx.controlflow.hints !81

; <label>:2050                                    ; preds = %1952
  %2051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2052 = extractvalue %dx.types.CBufRet.f32 %2051, 3
  %2053 = fmul fast float %2052, %404
  %2054 = call float @dx.op.unary.f32(i32 23, float %2053)  ; Log(value)
  br label %2055

; <label>:2055                                    ; preds = %2050, %1952
  %2056 = phi float [ %2054, %2050 ], [ 0.000000e+00, %1952 ]
  %2057 = fcmp fast oeq float %1981, 0.000000e+00
  br i1 %2057, label %2079, label %2058, !dx.controlflow.hints !108

; <label>:2058                                    ; preds = %2055
  %2059 = fmul fast float %1987, %1985
  %2060 = fmul fast float %1988, %1985
  %2061 = fmul fast float %1989, %1985
  %2062 = fsub fast float %202, %2059
  %2063 = fsub fast float %203, %2060
  %2064 = fsub fast float %204, %2061
  %2065 = fmul fast float %2062, %1981
  %2066 = fmul fast float %2063, %1981
  %2067 = fmul fast float %2064, %1981
  %2068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2065, float %2066, float %2067, float undef, i32 0, i32 0, i32 0, float %2056)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.ResRet.f32 %2068, 1
  %2071 = fdiv fast float 1.000000e+00, %1983
  %2072 = fmul fast float %1983, 2.000000e+00
  %2073 = fadd fast float %2072, -1.000000e+00
  %2074 = fadd fast float %2073, %2070
  %2075 = fadd fast float %2074, %2069
  %2076 = fmul fast float %2075, %2071
  %2077 = fadd fast float %2076, -1.000000e+00
  %2078 = call float @dx.op.unary.f32(i32 7, float %2077)  ; Saturate(value)
  br label %2079

; <label>:2079                                    ; preds = %2058, %2055
  %2080 = phi float [ %2078, %2058 ], [ 1.000000e+00, %2055 ]
  %2081 = fmul fast float %2048, %2080
  %2082 = fmul fast float %2081, %1969
  %2083 = fmul fast float %2081, %1970
  %2084 = fmul fast float %2081, %1971
  %2085 = fadd fast float %2082, %1954
  %2086 = fadd fast float %2083, %1955
  %2087 = fadd fast float %2084, %1956
  %2088 = fmul fast float %2081, %1973
  %2089 = fadd fast float %2088, %1957
  %2090 = fadd fast float %2081, %1958
  %2091 = icmp eq i32 %1953, %1962
  br i1 %2091, label %2092, label %1952, !llvm.loop !109

; <label>:2092                                    ; preds = %2079
  br label %2093

; <label>:2093                                    ; preds = %2092, %1937
  %2094 = phi float [ %1939, %1937 ], [ %2085, %2092 ]
  %2095 = phi float [ %1940, %1937 ], [ %2086, %2092 ]
  %2096 = phi float [ %1941, %1937 ], [ %2087, %2092 ]
  %2097 = phi float [ %1942, %1937 ], [ %2089, %2092 ]
  %2098 = phi float [ %1943, %1937 ], [ %2090, %2092 ]
  %2099 = add i32 %1938, 1
  %2100 = icmp ult i32 %2099, %1945
  br i1 %2100, label %1937, label %2101, !llvm.loop !110

; <label>:2101                                    ; preds = %2093
  br label %2102

; <label>:2102                                    ; preds = %2101, %1932, %1925
  %2103 = phi float [ %1926, %1925 ], [ %1926, %1932 ], [ %2094, %2101 ]
  %2104 = phi float [ %1927, %1925 ], [ %1927, %1932 ], [ %2095, %2101 ]
  %2105 = phi float [ %1928, %1925 ], [ %1928, %1932 ], [ %2096, %2101 ]
  %2106 = phi float [ %1130, %1925 ], [ %1130, %1932 ], [ %2097, %2101 ]
  %2107 = phi float [ %1929, %1925 ], [ %1929, %1932 ], [ %2098, %2101 ]
  %2108 = fcmp fast ogt float %2107, 0.000000e+00
  br i1 %2108, label %2109, label %3545, !dx.controlflow.hints !111

; <label>:2109                                    ; preds = %2102
  %2110 = fdiv fast float 1.000000e+00, %2107
  %2111 = fmul fast float %2110, %2103
  %2112 = fmul fast float %2110, %2104
  %2113 = fmul fast float %2110, %2105
  %2114 = fmul fast float %2110, %2106
  %2115 = fmul fast float %2110, %629
  %2116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2117 = extractvalue %dx.types.CBufRet.f32 %2116, 0
  %2118 = fadd fast float %2117, -1.000000e+00
  %2119 = fmul fast float %2115, %2118
  %2120 = fadd fast float %2119, 1.000000e+00
  %2121 = fmul fast float %401, %400
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 0
  %2124 = extractvalue %dx.types.CBufRet.f32 %2122, 1
  %2125 = extractvalue %dx.types.CBufRet.f32 %2122, 2
  %2126 = fsub fast float %204, %2125
  %2127 = fmul fast float %330, %137
  %2128 = call float @dx.op.unary.f32(i32 21, float %2127)  ; Exp(value)
  %2129 = fmul fast float %2128, %329
  %2130 = fadd fast float %334, %2129
  %2131 = fmul fast float %144, 2.000000e+00
  %2132 = fmul fast float %2131, %326
  %2133 = fmul fast float %145, 2.000000e+00
  %2134 = fmul fast float %2133, %327
  %2135 = fsub fast float 1.000000e+00, %2132
  %2136 = fsub fast float 1.000000e+00, %2134
  %2137 = fmul fast float %343, %2135
  %2138 = fmul fast float %344, %2135
  %2139 = fmul fast float %345, %2135
  %2140 = fmul fast float %350, %2136
  %2141 = fmul fast float %351, %2136
  %2142 = fmul fast float %352, %2136
  %2143 = fadd fast float %2140, %2137
  %2144 = fadd fast float %2141, %2138
  %2145 = fadd fast float %2142, %2139
  %2146 = fadd fast float %2143, %360
  %2147 = fadd fast float %2144, %361
  %2148 = fadd fast float %2145, %362
  %2149 = fmul fast float %2146, %2130
  %2150 = fmul fast float %2147, %2130
  %2151 = fmul fast float %2148, %2130
  %2152 = fadd fast float %137, 1.000000e+00
  %2153 = fmul fast float %330, %2152
  %2154 = call float @dx.op.unary.f32(i32 21, float %2153)  ; Exp(value)
  %2155 = fsub fast float %2154, %2128
  %2156 = fmul fast float %329, %2155
  %2157 = fmul fast float %2146, %2156
  %2158 = fsub fast float %2154, %2128
  %2159 = fmul fast float %329, %2158
  %2160 = fmul fast float %2147, %2159
  %2161 = fsub fast float %2154, %2128
  %2162 = fmul fast float %329, %2161
  %2163 = fmul fast float %2148, %2162
  %2164 = call float @dx.op.dot3.f32(i32 55, float %2157, float %2160, float %2163, float %2157, float %2160, float %2163)  ; Dot3(ax,ay,az,bx,by,bz)
  %2165 = call float @dx.op.unary.f32(i32 25, float %2164)  ; Rsqrt(value)
  %2166 = fmul fast float %2165, %2164
  %2167 = fmul fast float %2157, %2165
  %2168 = fmul fast float %2160, %2165
  %2169 = fmul fast float %2163, %2165
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 3
  %2172 = fcmp fast oeq float %2171, 0.000000e+00
  br i1 %2172, label %2915, label %2173, !dx.controlflow.hints !112

; <label>:2173                                    ; preds = %2109
  %2174 = fsub fast float %203, %2124
  %2175 = fsub fast float %202, %2123
  %2176 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2177 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2178 = extractvalue %dx.types.CBufRet.f32 %2170, 2
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 0
  %2181 = extractvalue %dx.types.CBufRet.f32 %2179, 1
  %2182 = extractvalue %dx.types.CBufRet.f32 %2179, 2
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 2
  %2185 = fmul fast float %2184, %2176
  %2186 = fmul fast float %2184, %2177
  %2187 = fmul fast float %2184, %2178
  %2188 = fsub fast float %2175, %2185
  %2189 = fsub fast float %2174, %2186
  %2190 = fsub fast float %2126, %2187
  %2191 = fcmp fast olt float %2171, 0.000000e+00
  br i1 %2191, label %2723, label %2192, !dx.controlflow.hints !113

; <label>:2192                                    ; preds = %2173
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.CBufRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.CBufRet.f32 %2193, 2
  %2197 = extractvalue %dx.types.CBufRet.f32 %2193, 3
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.CBufRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.CBufRet.f32 %2198, 2
  %2202 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2206 = extractvalue %dx.types.CBufRet.f32 %2203, 2
  %2207 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2208 = fmul fast float %2194, %2188
  %2209 = call float @dx.op.tertiary.f32(i32 46, float %2189, float %2195, float %2208)  ; FMad(a,b,c)
  %2210 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2196, float %2209)  ; FMad(a,b,c)
  %2211 = fadd fast float %2210, %2197
  %2212 = fmul fast float %2199, %2188
  %2213 = call float @dx.op.tertiary.f32(i32 46, float %2189, float %2200, float %2212)  ; FMad(a,b,c)
  %2214 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2201, float %2213)  ; FMad(a,b,c)
  %2215 = fadd fast float %2214, %2202
  %2216 = fmul fast float %2204, %2188
  %2217 = call float @dx.op.tertiary.f32(i32 46, float %2189, float %2205, float %2216)  ; FMad(a,b,c)
  %2218 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2206, float %2217)  ; FMad(a,b,c)
  %2219 = fadd fast float %2218, %2207
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 0
  %2222 = extractvalue %dx.types.CBufRet.f32 %2220, 1
  %2223 = extractvalue %dx.types.CBufRet.f32 %2220, 3
  %2224 = fmul fast float %2223, %2211
  %2225 = fmul fast float %2223, %2215
  %2226 = fadd fast float %2224, %2221
  %2227 = fadd fast float %2225, %2222
  %2228 = extractvalue %dx.types.CBufRet.f32 %2220, 2
  %2229 = fcmp fast olt float %2228, 0.000000e+00
  %2230 = fsub fast float -0.000000e+00, %2228
  %2231 = select i1 %2229, float %2230, float %2228
  %2232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.f32 %2232, 1
  %2234 = fadd fast float %2231, %2233
  %2235 = fcmp fast ogt float %2234, 0.000000e+00
  br i1 %2235, label %2236, label %2267, !dx.controlflow.hints !114

; <label>:2236                                    ; preds = %2192
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2239 = fsub fast float %2238, %2219
  %2240 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2241 = fmul fast float %2239, %2240
  %2242 = fsub fast float 1.000000e+00, %2241
  %2243 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.CBufRet.f32 %2244, 1
  %2247 = fsub fast float %2226, %2245
  %2248 = fsub fast float %2227, %2246
  %2249 = fcmp fast olt float %2247, 0.000000e+00
  %2250 = fcmp fast olt float %2248, 0.000000e+00
  %2251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2251, 0
  %2253 = extractvalue %dx.types.CBufRet.f32 %2251, 1
  %2254 = extractvalue %dx.types.CBufRet.f32 %2251, 2
  %2255 = extractvalue %dx.types.CBufRet.f32 %2251, 3
  %2256 = select i1 %2249, float %2252, float %2254
  %2257 = select i1 %2250, float %2253, float %2255
  %2258 = fmul fast float %2256, %2247
  %2259 = fmul fast float %2257, %2248
  %2260 = call float @dx.op.unary.f32(i32 6, float %2258)  ; FAbs(value)
  %2261 = call float @dx.op.unary.f32(i32 6, float %2259)  ; FAbs(value)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2183, 0
  %2263 = call float @dx.op.binary.f32(i32 35, float %2260, float %2261)  ; FMax(a,b)
  %2264 = fsub fast float %2262, %2263
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2266 = fmul fast float %2265, %2243
  br label %2267

; <label>:2267                                    ; preds = %2236, %2192
  %2268 = phi float [ %2266, %2236 ], [ 0.000000e+00, %2192 ]
  %2269 = call float @dx.op.binary.f32(i32 35, float %2268, float 0.000000e+00)  ; FMax(a,b)
  %2270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2269)  ; FMax(a,b)
  %2271 = fcmp fast olt float %2270, 1.000000e+00
  br i1 %2271, label %2272, label %2670, !dx.controlflow.hints !115

; <label>:2272                                    ; preds = %2267
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2275 = fcmp fast une float %2274, 0.000000e+00
  br i1 %2275, label %2276, label %2670, !dx.controlflow.hints !116

; <label>:2276                                    ; preds = %2272
  %2277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.CBufRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.CBufRet.f32 %2277, 2
  %2281 = extractvalue %dx.types.CBufRet.f32 %2277, 3
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.CBufRet.f32 %2282, 1
  %2285 = extractvalue %dx.types.CBufRet.f32 %2282, 2
  %2286 = extractvalue %dx.types.CBufRet.f32 %2282, 3
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 0
  %2289 = extractvalue %dx.types.CBufRet.f32 %2287, 1
  %2290 = extractvalue %dx.types.CBufRet.f32 %2287, 2
  %2291 = extractvalue %dx.types.CBufRet.f32 %2287, 3
  %2292 = fmul fast float %2278, %2188
  %2293 = call float @dx.op.tertiary.f32(i32 46, float %2189, float %2279, float %2292)  ; FMad(a,b,c)
  %2294 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2280, float %2293)  ; FMad(a,b,c)
  %2295 = fadd fast float %2294, %2281
  %2296 = fmul fast float %2283, %2188
  %2297 = call float @dx.op.tertiary.f32(i32 46, float %2189, float %2284, float %2296)  ; FMad(a,b,c)
  %2298 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2285, float %2297)  ; FMad(a,b,c)
  %2299 = fadd fast float %2298, %2286
  %2300 = fmul fast float %2288, %2188
  %2301 = call float @dx.op.tertiary.f32(i32 46, float %2189, float %2289, float %2300)  ; FMad(a,b,c)
  %2302 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2290, float %2301)  ; FMad(a,b,c)
  %2303 = fadd fast float %2302, %2291
  %2304 = fcmp fast oge float %2295, 1.000000e+00
  %2305 = fcmp fast oge float %2299, 1.000000e+00
  %2306 = or i1 %2304, %2305
  %2307 = fcmp fast olt float %2295, 0.000000e+00
  %2308 = fcmp fast olt float %2299, 0.000000e+00
  %2309 = or i1 %2307, %2308
  %2310 = or i1 %2306, %2309
  br i1 %2310, label %2670, label %2311, !dx.controlflow.hints !117

; <label>:2311                                    ; preds = %2276
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 0
  %2314 = extractvalue %dx.types.CBufRet.f32 %2312, 1
  %2315 = extractvalue %dx.types.CBufRet.f32 %2312, 2
  %2316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.i32 %2316, 2
  %2318 = uitofp i32 %2317 to float
  %2319 = extractvalue %dx.types.CBufRet.i32 %2316, 3
  %2320 = uitofp i32 %2319 to float
  %2321 = extractvalue %dx.types.CBufRet.f32 %2312, 3
  %2322 = fmul fast float %2321, 2.000000e+00
  %2323 = fsub fast float %2295, %2313
  %2324 = fsub fast float %2299, %2314
  %2325 = fmul fast float %2322, %2323
  %2326 = fmul fast float %2322, %2324
  %2327 = fdiv fast float 1.000000e+00, %2178
  %2328 = fmul fast float %2326, %2327
  %2329 = call float @dx.op.unary.f32(i32 6, float %2328)  ; FAbs(value)
  %2330 = fmul fast float %2315, %2190
  %2331 = fmul fast float %2330, %2322
  %2332 = call float @dx.op.unary.f32(i32 6, float %2331)  ; FAbs(value)
  %2333 = call float @dx.op.unary.f32(i32 6, float %2325)  ; FAbs(value)
  %2334 = call float @dx.op.binary.f32(i32 35, float %2332, float %2329)  ; FMax(a,b)
  %2335 = call float @dx.op.binary.f32(i32 35, float %2333, float %2334)  ; FMax(a,b)
  %2336 = fmul fast float %2335, 2.000000e+00
  %2337 = call float @dx.op.unary.f32(i32 23, float %2336)  ; Log(value)
  %2338 = call float @dx.op.binary.f32(i32 35, float %2337, float %2318)  ; FMax(a,b)
  %2339 = call float @dx.op.unary.f32(i32 22, float %2338)  ; Frc(value)
  %2340 = fadd fast float %2339, 0xBFEA666660000000
  %2341 = fmul fast float %2340, 8.000000e+00
  %2342 = call float @dx.op.unary.f32(i32 7, float %2341)  ; Saturate(value)
  %2343 = call float @dx.op.unary.f32(i32 27, float %2338)  ; Round_ni(value)
  %2344 = fadd fast float %2343, %2342
  %2345 = call float @dx.op.binary.f32(i32 36, float %2344, float %2320)  ; FMin(a,b)
  %2346 = call float @dx.op.unary.f32(i32 27, float %2345)  ; Round_ni(value)
  %2347 = fsub fast float -0.000000e+00, %2346
  %2348 = call float @dx.op.unary.f32(i32 21, float %2347)  ; Exp(value)
  %2349 = fmul fast float %2348, %2322
  %2350 = fmul fast float %2349, %2295
  %2351 = fmul fast float %2349, %2299
  %2352 = fmul fast float %2350, 2.500000e-01
  %2353 = fmul fast float %2351, 2.500000e-01
  %2354 = fadd fast float %2352, 5.000000e-01
  %2355 = fadd fast float %2353, 5.000000e-01
  %2356 = fsub fast float %2320, %2318
  %2357 = fptoui float %2356 to i32
  %2358 = add i32 %2357, 320
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %2358)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2362 = fcmp fast une float %2345, %2320
  %2363 = fsub fast float %2295, %2360
  %2364 = fsub fast float %2299, %2361
  %2365 = call float @dx.op.unary.f32(i32 6, float %2363)  ; FAbs(value)
  %2366 = call float @dx.op.unary.f32(i32 6, float %2364)  ; FAbs(value)
  %2367 = fmul fast float %2365, %2349
  %2368 = fmul fast float %2366, %2349
  %2369 = fcmp fast olt float %2367, 1.000000e+00
  %2370 = fcmp fast olt float %2368, 1.000000e+00
  %2371 = and i1 %2369, %2370
  %2372 = or i1 %2362, %2371
  br i1 %2372, label %2373, label %2670, !dx.controlflow.hints !118

; <label>:2373                                    ; preds = %2311
  %2374 = fmul fast float %2351, 5.000000e-01
  %2375 = fmul fast float %2350, 5.000000e-01
  %2376 = fadd fast float %2374, 5.000000e-01
  %2377 = fadd fast float %2375, 5.000000e-01
  %2378 = sitofp i32 %2317 to float
  %2379 = fsub fast float %2345, %2378
  %2380 = call float @dx.op.unary.f32(i32 27, float %2379)  ; Round_ni(value)
  %2381 = call float @dx.op.unary.f32(i32 22, float %2345)  ; Frc(value)
  %2382 = call float @dx.op.unary.f32(i32 22, float %2377)  ; Frc(value)
  %2383 = call float @dx.op.unary.f32(i32 22, float %2376)  ; Frc(value)
  %2384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %41, float %2382, float %2383, float %2380, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.ResRet.f32 %2384, 2
  %2388 = extractvalue %dx.types.ResRet.f32 %2384, 3
  %2389 = fcmp fast ogt float %2381, 0.000000e+00
  br i1 %2389, label %2390, label %2411, !dx.controlflow.hints !119

; <label>:2390                                    ; preds = %2373
  %2391 = fadd fast float %2380, 1.000000e+00
  %2392 = call float @dx.op.unary.f32(i32 22, float %2354)  ; Frc(value)
  %2393 = call float @dx.op.unary.f32(i32 22, float %2355)  ; Frc(value)
  %2394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %41, float %2392, float %2393, float %2391, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2395 = extractvalue %dx.types.ResRet.f32 %2394, 0
  %2396 = extractvalue %dx.types.ResRet.f32 %2394, 1
  %2397 = extractvalue %dx.types.ResRet.f32 %2394, 2
  %2398 = extractvalue %dx.types.ResRet.f32 %2394, 3
  %2399 = fsub fast float %2395, %2385
  %2400 = fsub fast float %2396, %2386
  %2401 = fsub fast float %2397, %2387
  %2402 = fsub fast float %2398, %2388
  %2403 = fmul fast float %2399, %2381
  %2404 = fmul fast float %2400, %2381
  %2405 = fmul fast float %2401, %2381
  %2406 = fmul fast float %2402, %2381
  %2407 = fadd fast float %2403, %2385
  %2408 = fadd fast float %2404, %2386
  %2409 = fadd fast float %2405, %2387
  %2410 = fadd fast float %2406, %2388
  br label %2411

; <label>:2411                                    ; preds = %2390, %2373
  %2412 = phi float [ %2407, %2390 ], [ %2385, %2373 ]
  %2413 = phi float [ %2408, %2390 ], [ %2386, %2373 ]
  %2414 = phi float [ %2409, %2390 ], [ %2387, %2373 ]
  %2415 = phi float [ %2410, %2390 ], [ %2388, %2373 ]
  %2416 = fadd fast float %2412, -5.000000e-01
  %2417 = fadd fast float %2414, -5.000000e-01
  %2418 = fmul fast float %2416, 0xBFD5555560000000
  %2419 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2417, float %2418)  ; FMad(a,b,c)
  %2420 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2413, float 0.000000e+00)  ; FMad(a,b,c)
  %2421 = fadd fast float %2420, %2415
  %2422 = fmul fast float %2416, -7.500000e-01
  %2423 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2417, float %2422)  ; FMad(a,b,c)
  %2424 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2413, float 0.000000e+00)  ; FMad(a,b,c)
  %2425 = fadd fast float %2424, %2415
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2430 = extractvalue %dx.types.CBufRet.f32 %2428, 1
  %2431 = extractvalue %dx.types.CBufRet.f32 %2428, 2
  %2432 = extractvalue %dx.types.CBufRet.f32 %2428, 3
  %2433 = fsub fast float %2429, %2419
  %2434 = fsub fast float %2430, %2421
  %2435 = fsub fast float %2431, %2423
  %2436 = fsub fast float %2432, %2425
  %2437 = fmul fast float %2433, %2427
  %2438 = fmul fast float %2434, %2427
  %2439 = fmul fast float %2435, %2427
  %2440 = fmul fast float %2436, %2427
  %2441 = fadd fast float %2437, %2419
  %2442 = fadd fast float %2438, %2421
  %2443 = fadd fast float %2439, %2423
  %2444 = fadd fast float %2440, %2425
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 536870911
  %2448 = uitofp i32 %2447 to float
  %2449 = fmul fast float %2448, %2295
  %2450 = fmul fast float %2448, %2299
  %2451 = fptoui float %2449 to i32
  %2452 = fptoui float %2450 to i32
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 31
  %2456 = lshr i32 %2451, %2455
  %2457 = lshr i32 %2452, %2455
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = and i32 %2459, 31
  %2461 = shl i32 1, %2460
  %2462 = call i32 @dx.op.binary.i32(i32 40, i32 %2461, i32 4)  ; UMin(a,b)
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = extractvalue %dx.types.ResRet.i32 %2463, 1
  %2466 = icmp eq i32 %2462, 0
  br i1 %2466, label %2508, label %2467

; <label>:2467                                    ; preds = %2411
  br label %2468

; <label>:2468                                    ; preds = %2496, %2467
  %2469 = phi i32 [ %2499, %2496 ], [ 0, %2467 ]
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = lshr i32 %2471, 16
  %2473 = and i32 %2472, 31
  %2474 = shl i32 %2457, %2473
  %2475 = add i32 %2474, %2456
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 31
  %2479 = shl i32 %2475, %2478
  %2480 = add i32 %2479, %2469
  %2481 = shl i32 %2480, 2
  %2482 = add i32 %2481, 32
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = icmp slt i32 %2484, 0
  %2486 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2469
  %2487 = getelementptr [12 x float], [12 x float]* %53, i32 0, i32 %2469
  %2488 = bitcast float* %2486 to i32*
  %2489 = bitcast float* %2487 to i32*
  br i1 %2485, label %2490, label %2496, !dx.controlflow.hints !120

; <label>:2490                                    ; preds = %2468
  %2491 = and i32 %2484, 1073741823
  %2492 = add nuw nsw i32 %2491, 20
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = extractvalue %dx.types.ResRet.i32 %2493, 1
  br label %2496

; <label>:2496                                    ; preds = %2490, %2468
  %2497 = phi i32 [ %2494, %2490 ], [ %2464, %2468 ]
  %2498 = phi i32 [ %2495, %2490 ], [ %2465, %2468 ]
  store i32 %2497, i32* %2488, align 4
  store i32 %2498, i32* %2489, align 4
  %2499 = add nuw i32 %2469, 1
  %2500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.i32 %2500, 2
  %2502 = icmp eq i32 %2501, 0
  %2503 = icmp ugt i32 %2484, -1073741825
  %2504 = and i1 %2503, %2502
  %2505 = icmp ult i32 %2499, %2462
  %2506 = and i1 %2504, %2505
  br i1 %2506, label %2468, label %2507, !dx.controlflow.hints !121

; <label>:2507                                    ; preds = %2496
  br label %2508

; <label>:2508                                    ; preds = %2507, %2411
  %2509 = phi i32 [ 0, %2411 ], [ %2499, %2507 ]
  %2510 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2511 = fptoui float %2510 to i32
  %2512 = icmp eq i32 %2511, 0
  br i1 %2512, label %2564, label %2513

; <label>:2513                                    ; preds = %2508
  br label %2514

; <label>:2514                                    ; preds = %2559, %2513
  %2515 = phi i32 [ %2560, %2559 ], [ %2509, %2513 ]
  %2516 = phi i32 [ %2561, %2559 ], [ 0, %2513 ]
  %2517 = lshr i32 %2516, 2
  %2518 = and i32 %2516, 3
  %2519 = add nuw nsw i32 %2517, 83
  %2520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 %2519)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.i32 %2520, 0
  %2522 = extractvalue %dx.types.CBufRet.i32 %2520, 1
  %2523 = extractvalue %dx.types.CBufRet.i32 %2520, 2
  %2524 = extractvalue %dx.types.CBufRet.i32 %2520, 3
  %2525 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 0
  store i32 %2521, i32* %2525, align 4
  %2526 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 1
  store i32 %2522, i32* %2526, align 4
  %2527 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 2
  store i32 %2523, i32* %2527, align 4
  %2528 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 3
  store i32 %2524, i32* %2528, align 4
  %2529 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 %2518
  %2530 = load i32, i32* %2529, align 4, !tbaa !122, !noalias !124
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = lshr i32 %2532, 16
  %2534 = and i32 %2533, 31
  %2535 = shl i32 %2457, %2534
  %2536 = add i32 %2535, %2456
  %2537 = shl i32 %2536, 2
  %2538 = add i32 %2537, %2530
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = icmp eq i32 %2540, 0
  br i1 %2541, label %2559, label %2542, !dx.controlflow.hints !131

; <label>:2542                                    ; preds = %2514
  %2543 = icmp slt i32 %2540, 0
  %2544 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2515
  %2545 = getelementptr [12 x float], [12 x float]* %53, i32 0, i32 %2515
  %2546 = bitcast float* %2544 to i32*
  %2547 = bitcast float* %2545 to i32*
  br i1 %2543, label %2548, label %2555, !dx.controlflow.hints !132

; <label>:2548                                    ; preds = %2542
  %2549 = and i32 %2540, 1073741823
  %2550 = add i32 %2530, 20
  %2551 = add i32 %2550, %2549
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = extractvalue %dx.types.ResRet.i32 %2552, 1
  br label %2555

; <label>:2555                                    ; preds = %2548, %2542
  %2556 = phi i32 [ %2553, %2548 ], [ %2464, %2542 ]
  %2557 = phi i32 [ %2554, %2548 ], [ %2465, %2542 ]
  store i32 %2556, i32* %2546, align 4
  store i32 %2557, i32* %2547, align 4
  %2558 = add i32 %2515, 1
  br label %2559

; <label>:2559                                    ; preds = %2555, %2514
  %2560 = phi i32 [ %2515, %2514 ], [ %2558, %2555 ]
  %2561 = add nuw i32 %2516, 1
  %2562 = icmp eq i32 %2561, %2511
  br i1 %2562, label %2563, label %2514

; <label>:2563                                    ; preds = %2559
  br label %2564

; <label>:2564                                    ; preds = %2563, %2508
  %2565 = phi i32 [ %2509, %2508 ], [ %2560, %2563 ]
  %2566 = icmp eq i32 %2565, 1
  %2567 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 0
  %2568 = getelementptr [12 x float], [12 x float]* %53, i32 0, i32 0
  br i1 %2566, label %2569, label %2572, !dx.controlflow.hints !133

; <label>:2569                                    ; preds = %2564
  %2570 = load float, float* %2567, align 4
  %2571 = load float, float* %2568, align 4
  br label %2599

; <label>:2572                                    ; preds = %2564
  %2573 = load float, float* %2567, align 4
  %2574 = load float, float* %2568, align 4
  %2575 = fdiv fast float 1.000000e+00, %2574
  %2576 = fsub fast float %2573, %2575
  %2577 = icmp ugt i32 %2565, 1
  br i1 %2577, label %2578, label %2594

; <label>:2578                                    ; preds = %2572
  br label %2579

; <label>:2579                                    ; preds = %2579, %2578
  %2580 = phi float [ %2589, %2579 ], [ %2576, %2578 ]
  %2581 = phi float [ %2590, %2579 ], [ %2573, %2578 ]
  %2582 = phi i32 [ %2591, %2579 ], [ 1, %2578 ]
  %2583 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2582
  %2584 = load float, float* %2583, align 4
  %2585 = getelementptr [12 x float], [12 x float]* %53, i32 0, i32 %2582
  %2586 = load float, float* %2585, align 4
  %2587 = fdiv fast float 1.000000e+00, %2586
  %2588 = fsub fast float %2584, %2587
  %2589 = call float @dx.op.binary.f32(i32 36, float %2580, float %2588)  ; FMin(a,b)
  %2590 = call float @dx.op.binary.f32(i32 35, float %2581, float %2584)  ; FMax(a,b)
  %2591 = add nuw i32 %2582, 1
  %2592 = icmp eq i32 %2591, %2565
  br i1 %2592, label %2593, label %2579

; <label>:2593                                    ; preds = %2579
  br label %2594

; <label>:2594                                    ; preds = %2593, %2572
  %2595 = phi float [ %2576, %2572 ], [ %2589, %2593 ]
  %2596 = phi float [ %2573, %2572 ], [ %2590, %2593 ]
  %2597 = fsub fast float %2596, %2595
  %2598 = fdiv fast float 1.000000e+00, %2597
  br label %2599

; <label>:2599                                    ; preds = %2594, %2569
  %2600 = phi float [ %2570, %2569 ], [ %2596, %2594 ]
  %2601 = phi float [ %2571, %2569 ], [ %2598, %2594 ]
  %2602 = fadd fast float %2303, %2600
  %2603 = fmul fast float %2602, %2601
  %2604 = call float @dx.op.unary.f32(i32 7, float %2603)  ; Saturate(value)
  %2605 = fmul fast float %2604, 2.000000e+00
  %2606 = fsub fast float 1.000000e+00, %2605
  %2607 = fmul fast float %2441, %2441
  %2608 = fsub fast float %2442, %2607
  %2609 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2608)  ; FMax(a,b)
  %2610 = fdiv fast float 1.000000e+00, %2609
  %2611 = fmul fast float %2442, %2441
  %2612 = fsub fast float %2443, %2611
  %2613 = fsub fast float %2606, %2441
  %2614 = fmul fast float %2606, %2606
  %2615 = fsub fast float %2614, %2442
  %2616 = fmul fast float %2610, %2612
  %2617 = fmul fast float %2616, %2613
  %2618 = fsub fast float %2615, %2617
  %2619 = fmul fast float %2442, %2442
  %2620 = fsub fast float %2444, %2619
  %2621 = fmul fast float %2612, %2612
  %2622 = fmul fast float %2621, %2610
  %2623 = fsub fast float %2620, %2622
  %2624 = fdiv fast float %2618, %2623
  %2625 = fmul fast float %2624, %2612
  %2626 = fsub fast float %2613, %2625
  %2627 = fmul fast float %2626, %2610
  %2628 = fmul fast float %2627, %2441
  %2629 = fsub fast float 1.000000e+00, %2628
  %2630 = fmul fast float %2624, %2442
  %2631 = fsub fast float %2629, %2630
  %2632 = fmul fast float %2627, %2627
  %2633 = fmul fast float %2624, 4.000000e+00
  %2634 = fmul fast float %2633, %2631
  %2635 = fsub fast float %2632, %2634
  %2636 = call float @dx.op.unary.f32(i32 24, float %2635)  ; Sqrt(value)
  %2637 = fcmp fast oge float %2627, 0.000000e+00
  %2638 = fsub fast float -0.000000e+00, %2636
  %2639 = select i1 %2637, float %2638, float %2636
  %2640 = fsub fast float %2639, %2627
  %2641 = fdiv fast float %2640, %2624
  %2642 = fdiv fast float %2631, %2640
  %2643 = fmul fast float %2641, 5.000000e-01
  %2644 = fmul fast float %2642, 2.000000e+00
  %2645 = select i1 %2637, float %2643, float %2644
  %2646 = select i1 %2637, float %2644, float %2643
  %2647 = call float @dx.op.binary.f32(i32 35, float %2645, float %2646)  ; FMax(a,b)
  %2648 = call float @dx.op.binary.f32(i32 36, float %2645, float %2646)  ; FMin(a,b)
  %2649 = fcmp fast ogt float %2606, %2647
  %2650 = fsub fast float %2606, %2648
  %2651 = fsub fast float %2606, %2647
  %2652 = fsub fast float %2647, %2648
  %2653 = select i1 %2649, float %2651, float %2652
  %2654 = fmul float %2650, %2653
  %2655 = select i1 %2649, float %2648, float %2606
  %2656 = fcmp fast ogt float %2606, %2648
  %2657 = fmul fast float %2655, %2647
  %2658 = fadd fast float %2655, %2647
  %2659 = fmul fast float %2658, %2441
  %2660 = fadd fast float %2657, %2442
  %2661 = fsub fast float %2660, %2659
  %2662 = fdiv fast float %2661, %2654
  %2663 = select i1 %2656, float %2662, float 0.000000e+00
  %2664 = fsub fast float 1.000000e+00, %2663
  %2665 = select i1 %2649, float %2664, float %2663
  %2666 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2426, 3
  %2668 = fmul fast float %2667, %2666
  %2669 = fsub fast float 1.000000e+00, %2668
  br label %2670

; <label>:2670                                    ; preds = %2599, %2311, %2276, %2272, %2267
  %2671 = phi float [ 1.000000e+00, %2267 ], [ %2669, %2599 ], [ 1.000000e+00, %2276 ], [ 1.000000e+00, %2311 ], [ 1.000000e+00, %2272 ]
  %2672 = fcmp fast ogt float %2268, 0.000000e+00
  br i1 %2672, label %2673, label %2679, !dx.controlflow.hints !134

; <label>:2673                                    ; preds = %2670
  %2674 = fadd fast float %2233, %2219
  %2675 = call float @dx.op.binary.f32(i32 35, float %2674, float 0.000000e+00)  ; FMax(a,b)
  %2676 = fadd fast float %2675, 0x3F10000000000000
  %2677 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %43, float %2226, float %2227, float undef, float undef, i32 0, i32 0, i32 undef, float %2676)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2678 = extractvalue %dx.types.ResRet.f32 %2677, 0
  br label %2679

; <label>:2679                                    ; preds = %2673, %2670
  %2680 = phi float [ %2678, %2673 ], [ 1.000000e+00, %2670 ]
  %2681 = fsub fast float %2680, %2671
  %2682 = fmul fast float %2681, %2268
  %2683 = fadd fast float %2682, %2671
  %2684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2684, 2
  %2686 = fcmp fast ogt float %2685, 0.000000e+00
  br i1 %2686, label %2687, label %2723, !dx.controlflow.hints !135

; <label>:2687                                    ; preds = %2679
  %2688 = fcmp fast ugt float %2685, 0.000000e+00
  br i1 %2688, label %2689, label %2720, !dx.controlflow.hints !136

; <label>:2689                                    ; preds = %2687
  %2690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2691 = extractvalue %dx.types.CBufRet.f32 %2690, 0
  %2692 = extractvalue %dx.types.CBufRet.f32 %2690, 1
  %2693 = extractvalue %dx.types.CBufRet.f32 %2690, 2
  %2694 = extractvalue %dx.types.CBufRet.f32 %2690, 3
  %2695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2695, 0
  %2697 = extractvalue %dx.types.CBufRet.f32 %2695, 1
  %2698 = extractvalue %dx.types.CBufRet.f32 %2695, 2
  %2699 = extractvalue %dx.types.CBufRet.f32 %2695, 3
  %2700 = extractvalue %dx.types.CBufRet.f32 %2684, 0
  %2701 = extractvalue %dx.types.CBufRet.f32 %2684, 1
  %2702 = fadd fast float %2123, %2188
  %2703 = fadd fast float %2124, %2189
  %2704 = fadd fast float %2125, %2190
  %2705 = fmul fast float %2702, %2691
  %2706 = call float @dx.op.tertiary.f32(i32 46, float %2692, float %2703, float %2705)  ; FMad(a,b,c)
  %2707 = call float @dx.op.tertiary.f32(i32 46, float %2693, float %2704, float %2706)  ; FMad(a,b,c)
  %2708 = fadd fast float %2707, %2694
  %2709 = fmul fast float %2702, %2696
  %2710 = call float @dx.op.tertiary.f32(i32 46, float %2697, float %2703, float %2709)  ; FMad(a,b,c)
  %2711 = call float @dx.op.tertiary.f32(i32 46, float %2698, float %2704, float %2710)  ; FMad(a,b,c)
  %2712 = fadd fast float %2711, %2699
  %2713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2708, float %2712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = fmul fast float %2714, %2701
  %2716 = fadd fast float %2715, %2700
  %2717 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2718 = fmul fast float %2717, %2685
  %2719 = fsub fast float 1.000000e+00, %2718
  br label %2720

; <label>:2720                                    ; preds = %2689, %2687
  %2721 = phi float [ %2719, %2689 ], [ 1.000000e+00, %2687 ]
  %2722 = fmul fast float %2721, %2683
  br label %2723

; <label>:2723                                    ; preds = %2720, %2679, %2173
  %2724 = phi float [ 1.000000e+00, %2173 ], [ %2722, %2720 ], [ %2683, %2679 ]
  %2725 = call float @dx.op.binary.f32(i32 36, float %2724, float %2724)  ; FMin(a,b)
  %2726 = call float @dx.op.binary.f32(i32 36, float %2724, float %2725)  ; FMin(a,b)
  %2727 = fcmp fast ogt float %2726, 0.000000e+00
  br i1 %2727, label %2728, label %2886, !dx.controlflow.hints !137

; <label>:2728                                    ; preds = %2723
  %2729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2730 = extractvalue %dx.types.CBufRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.CBufRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.CBufRet.f32 %2729, 2
  %2733 = extractvalue %dx.types.CBufRet.f32 %2729, 3
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.CBufRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.CBufRet.f32 %2734, 2
  %2738 = extractvalue %dx.types.CBufRet.f32 %2734, 3
  %2739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2740 = extractvalue %dx.types.CBufRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.CBufRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.CBufRet.f32 %2739, 2
  %2743 = extractvalue %dx.types.CBufRet.f32 %2739, 3
  %2744 = fmul fast float %2730, %2188
  %2745 = call float @dx.op.tertiary.f32(i32 46, float %2189, float %2731, float %2744)  ; FMad(a,b,c)
  %2746 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2732, float %2745)  ; FMad(a,b,c)
  %2747 = fadd fast float %2746, %2733
  %2748 = fmul fast float %2735, %2188
  %2749 = call float @dx.op.tertiary.f32(i32 46, float %2189, float %2736, float %2748)  ; FMad(a,b,c)
  %2750 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2737, float %2749)  ; FMad(a,b,c)
  %2751 = fadd fast float %2750, %2738
  %2752 = fmul fast float %2740, %2188
  %2753 = call float @dx.op.tertiary.f32(i32 46, float %2189, float %2741, float %2752)  ; FMad(a,b,c)
  %2754 = call float @dx.op.tertiary.f32(i32 46, float %2190, float %2742, float %2753)  ; FMad(a,b,c)
  %2755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2756 = extractvalue %dx.types.CBufRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.CBufRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.CBufRet.f32 %2755, 3
  %2759 = fmul fast float %2758, %2747
  %2760 = fmul fast float %2758, %2751
  %2761 = fadd fast float %2759, %2756
  %2762 = fadd fast float %2760, %2757
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 0
  %2765 = extractvalue %dx.types.CBufRet.f32 %2763, 1
  %2766 = fsub fast float %2761, %2764
  %2767 = fsub fast float %2762, %2765
  %2768 = fcmp fast olt float %2766, 0.000000e+00
  %2769 = fcmp fast olt float %2767, 0.000000e+00
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.CBufRet.f32 %2770, 2
  %2774 = extractvalue %dx.types.CBufRet.f32 %2770, 3
  %2775 = select i1 %2768, float %2771, float %2773
  %2776 = select i1 %2769, float %2772, float %2774
  %2777 = fmul fast float %2775, %2766
  %2778 = fmul fast float %2776, %2767
  %2779 = call float @dx.op.unary.f32(i32 6, float %2777)  ; FAbs(value)
  %2780 = call float @dx.op.unary.f32(i32 6, float %2778)  ; FAbs(value)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2183, 0
  %2782 = call float @dx.op.binary.f32(i32 35, float %2779, float %2780)  ; FMax(a,b)
  %2783 = fsub fast float %2781, %2782
  %2784 = call float @dx.op.unary.f32(i32 7, float %2783)  ; Saturate(value)
  %2785 = fcmp fast ogt float %2784, 0.000000e+00
  br i1 %2785, label %2786, label %2827, !dx.controlflow.hints !138

; <label>:2786                                    ; preds = %2728
  %2787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %42, float %2761, float %2762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2788 = extractvalue %dx.types.ResRet.f32 %2787, 1
  %2789 = fcmp fast ogt float %2788, 0.000000e+00
  br i1 %2789, label %2790, label %2822, !dx.controlflow.hints !139

; <label>:2790                                    ; preds = %2786
  %2791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %2761, float %2762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2792 = extractvalue %dx.types.ResRet.f32 %2791, 0
  %2793 = extractvalue %dx.types.ResRet.f32 %2791, 1
  %2794 = extractvalue %dx.types.ResRet.f32 %2791, 2
  %2795 = extractvalue %dx.types.ResRet.f32 %2791, 3
  %2796 = fsub fast float 1.000000e+00, %2743
  %2797 = fsub fast float %2796, %2754
  %2798 = fmul fast float %2797, 0x400921FB60000000
  %2799 = fadd fast float %2798, 0x3FF921FB60000000
  %2800 = call float @dx.op.unary.f32(i32 13, float %2799)  ; Sin(value)
  %2801 = fadd fast float %2800, -1.000000e+00
  %2802 = fmul fast float %2801, 0x3FD45F3060000000
  %2803 = fmul fast float %2797, 0x401921FB60000000
  %2804 = fadd fast float %2803, 0x400921FB60000000
  %2805 = call float @dx.op.unary.f32(i32 13, float %2804)  ; Sin(value)
  %2806 = fadd fast float %2805, 0x3E7777A5C0000000
  %2807 = fmul fast float %2806, 0x3FC45F3060000000
  %2808 = fmul fast float %2797, 0x4022D97C80000000
  %2809 = fadd fast float %2808, 0x4012D97C80000000
  %2810 = call float @dx.op.unary.f32(i32 13, float %2809)  ; Sin(value)
  %2811 = fadd fast float %2810, 1.000000e+00
  %2812 = fmul fast float %2811, 0x3FBB2995E0000000
  %2813 = fmul fast float %2797, 0x402921FB60000000
  %2814 = fadd fast float %2813, 0x401921FB60000000
  %2815 = call float @dx.op.unary.f32(i32 13, float %2814)  ; Sin(value)
  %2816 = fadd fast float %2815, 0xBE8777A5C0000000
  %2817 = fmul fast float %2816, 0x3FB45F3060000000
  %2818 = call float @dx.op.dot4.f32(i32 56, float %2792, float %2793, float %2794, float %2795, float %2802, float %2807, float %2812, float %2817)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2819 = fmul fast float %2818, 0xBFF7154760000000
  %2820 = call float @dx.op.unary.f32(i32 21, float %2819)  ; Exp(value)
  %2821 = call float @dx.op.unary.f32(i32 7, float %2820)  ; Saturate(value)
  br label %2822

; <label>:2822                                    ; preds = %2790, %2786
  %2823 = phi float [ %2821, %2790 ], [ 1.000000e+00, %2786 ]
  %2824 = fadd fast float %2823, -1.000000e+00
  %2825 = fmul fast float %2824, %2784
  %2826 = fadd fast float %2825, 1.000000e+00
  br label %2827

; <label>:2827                                    ; preds = %2822, %2728
  %2828 = phi float [ %2826, %2822 ], [ 1.000000e+00, %2728 ]
  %2829 = fmul fast float %2828, %2724
  %2830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2831 = extractvalue %dx.types.CBufRet.f32 %2830, 1
  %2832 = fsub fast float -0.000000e+00, %202
  %2833 = fsub fast float -0.000000e+00, %203
  %2834 = fsub fast float -0.000000e+00, %2126
  %2835 = fsub fast float %2834, %2125
  %2836 = fadd fast float %2835, %2831
  %2837 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2832, float %2833, float %2836)  ; Dot3(ax,ay,az,bx,by,bz)
  %2838 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2839 = fdiv fast float 1.000000e+00, %2838
  %2840 = fmul fast float %2839, %2837
  %2841 = fmul fast float %2176, %2840
  %2842 = fmul fast float %2177, %2840
  %2843 = fadd fast float %2841, %202
  %2844 = fadd fast float %2842, %203
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.CBufRet.f32 %2845, 1
  %2848 = fsub fast float %2843, %2846
  %2849 = fsub fast float %2844, %2847
  %2850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2850, 2
  %2852 = extractvalue %dx.types.CBufRet.f32 %2850, 3
  %2853 = fmul fast float %2848, %2851
  %2854 = fmul fast float %2849, %2852
  %2855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.i32 %2855, 3
  %2857 = icmp eq i32 %2856, 0
  br i1 %2857, label %2863, label %2858, !dx.controlflow.hints !140

; <label>:2858                                    ; preds = %2827
  %2859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %41, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  %2861 = extractvalue %dx.types.ResRet.f32 %2859, 1
  %2862 = extractvalue %dx.types.ResRet.f32 %2859, 2
  br label %2868

; <label>:2863                                    ; preds = %2827
  %2864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %42, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2865 = extractvalue %dx.types.ResRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.ResRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.ResRet.f32 %2864, 2
  br label %2868

; <label>:2868                                    ; preds = %2863, %2858
  %2869 = phi float [ %2860, %2858 ], [ %2865, %2863 ]
  %2870 = phi float [ %2861, %2858 ], [ %2866, %2863 ]
  %2871 = phi float [ %2862, %2858 ], [ %2867, %2863 ]
  %2872 = extractvalue %dx.types.CBufRet.f32 %2830, 2
  %2873 = fmul fast float %2872, %2869
  %2874 = extractvalue %dx.types.CBufRet.f32 %2830, 0
  %2875 = fsub fast float %2840, %2874
  %2876 = fsub fast float %2875, %2873
  %2877 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2876)  ; FMax(a,b)
  %2878 = fmul fast float %2877, %2870
  %2879 = call float @dx.op.binary.f32(i32 36, float %2871, float %2878)  ; FMin(a,b)
  %2880 = fmul fast float %2879, 0xBFF7154760000000
  %2881 = call float @dx.op.unary.f32(i32 21, float %2880)  ; Exp(value)
  %2882 = fadd fast float %2881, -1.000000e+00
  %2883 = fmul fast float %2882, %2120
  %2884 = fadd fast float %2883, 1.000000e+00
  %2885 = fmul fast float %2829, %2884
  br label %2886

; <label>:2886                                    ; preds = %2868, %2723
  %2887 = phi float [ %2885, %2868 ], [ %2724, %2723 ]
  %2888 = call float @dx.op.binary.f32(i32 36, float %2887, float %2887)  ; FMin(a,b)
  %2889 = call float @dx.op.binary.f32(i32 36, float %2887, float %2888)  ; FMin(a,b)
  %2890 = fcmp fast ogt float %2889, 0.000000e+00
  br i1 %2890, label %2891, label %2915, !dx.controlflow.hints !141

; <label>:2891                                    ; preds = %2886
  %2892 = call float @dx.op.dot3.f32(i32 55, float %2176, float %2177, float %2178, float %215, float %216, float %217)  ; Dot3(ax,ay,az,bx,by,bz)
  %2893 = fcmp fast ogt float %2114, 0.000000e+00
  %2894 = select i1 %2893, float 1.000000e+00, float -1.000000e+00
  %2895 = fmul fast float %126, 7.812500e-03
  %2896 = fmul fast float %126, 3.125000e-02
  %2897 = fadd fast float %2896, -3.125000e-02
  %2898 = fmul fast float %2894, 5.000000e-01
  %2899 = fmul fast float %2898, %2892
  %2900 = fmul fast float %2894, %2114
  %2901 = fadd fast float %2895, 4.921875e-01
  %2902 = fadd fast float %2901, %2899
  %2903 = fadd fast float %2895, 0x3FB25F3060000000
  %2904 = fadd fast float %2897, %2900
  %2905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %42, float %2902, float %2903, float %2904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2906 = extractvalue %dx.types.ResRet.f32 %2905, 0
  %2907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2908 = extractvalue %dx.types.CBufRet.f32 %2907, 0
  %2909 = fmul fast float %2887, 0x400921FB60000000
  %2910 = fmul fast float %2909, %2906
  %2911 = fmul fast float %2910, %2908
  %2912 = fmul fast float %2911, %2180
  %2913 = fmul fast float %2911, %2181
  %2914 = fmul fast float %2911, %2182
  br label %2915

; <label>:2915                                    ; preds = %2891, %2886, %2109
  %2916 = phi float [ %2912, %2891 ], [ 0.000000e+00, %2109 ], [ 0.000000e+00, %2886 ]
  %2917 = phi float [ %2913, %2891 ], [ 0.000000e+00, %2109 ], [ 0.000000e+00, %2886 ]
  %2918 = phi float [ %2914, %2891 ], [ 0.000000e+00, %2109 ], [ 0.000000e+00, %2886 ]
  %2919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.i32 %2919, 0
  %2921 = icmp eq i32 %2920, 0
  br i1 %2921, label %3516, label %2922, !dx.controlflow.hints !142

; <label>:2922                                    ; preds = %2915
  %2923 = add nsw i32 %2920, -1
  %2924 = call i32 @dx.op.binary.i32(i32 37, i32 %2923, i32 0)  ; IMax(a,b)
  br label %2925

; <label>:2925                                    ; preds = %3509, %2922
  %2926 = phi i32 [ 0, %2922 ], [ %3513, %3509 ]
  %2927 = phi float [ %2916, %2922 ], [ %3510, %3509 ]
  %2928 = phi float [ %2917, %2922 ], [ %3511, %3509 ]
  %2929 = phi float [ %2918, %2922 ], [ %3512, %3509 ]
  %2930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.i32 %2930, 0
  %2932 = call i32 @dx.op.tertiary.i32(i32 49, i32 %321, i32 %2931, i32 %2926)  ; UMad(a,b,c)
  %2933 = shl i32 %2932, 2
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %3509, label %2937

; <label>:2937                                    ; preds = %2925
  br label %2938

; <label>:2938                                    ; preds = %3377, %2937
  %2939 = phi i32 [ %2948, %3377 ], [ %2935, %2937 ]
  %2940 = phi float [ %3378, %3377 ], [ %2927, %2937 ]
  %2941 = phi float [ %3379, %3377 ], [ %2928, %2937 ]
  %2942 = phi float [ %3380, %3377 ], [ %2929, %2937 ]
  %2943 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2939)  ; FirstbitLo(value)
  %2944 = shl i32 %2926, 5
  %2945 = add i32 %2943, %2944
  %2946 = and i32 %2943, 31
  %2947 = shl i32 1, %2946
  %2948 = xor i32 %2947, %2939
  %2949 = mul i32 %2945, 112
  %2950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.f32 %2950, 0
  %2952 = extractvalue %dx.types.ResRet.f32 %2950, 1
  %2953 = extractvalue %dx.types.ResRet.f32 %2950, 2
  %2954 = or i32 %2949, 12
  %2955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  %2957 = add i32 %2949, 16
  %2958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2962 = add i32 %2949, 28
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = add i32 %2949, 32
  %2966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.f32 %2966, 0
  %2968 = extractvalue %dx.types.ResRet.f32 %2966, 1
  %2969 = extractvalue %dx.types.ResRet.f32 %2966, 2
  %2970 = add i32 %2949, 44
  %2971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.f32 %2971, 0
  %2973 = add i32 %2949, 48
  %2974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.f32 %2974, 0
  %2976 = extractvalue %dx.types.ResRet.f32 %2974, 1
  %2977 = extractvalue %dx.types.ResRet.f32 %2974, 2
  %2978 = extractvalue %dx.types.ResRet.f32 %2974, 3
  %2979 = add i32 %2949, 64
  %2980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.ResRet.f32 %2980, 2
  %2984 = extractvalue %dx.types.ResRet.f32 %2980, 3
  %2985 = add i32 %2949, 92
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = and i32 %2987, 65535
  %2989 = uitofp i32 %2988 to float
  %2990 = lshr i32 %2987, 16
  %2991 = uitofp i32 %2990 to float
  %2992 = and i32 %2964, 65535
  %2993 = and i32 %2964, 50331648
  %2994 = icmp eq i32 %2993, 33554432
  %2995 = fdiv fast float 1.000000e+00, %2166
  br i1 %2994, label %2996, label %3188, !dx.controlflow.hints !143

; <label>:2996                                    ; preds = %2938
  %2997 = fsub fast float %2975, %2967
  %2998 = fsub fast float %2976, %2968
  %2999 = fsub fast float %2977, %2969
  %3000 = fmul fast float %2167, %2166
  %3001 = fmul fast float %2168, %2166
  %3002 = fmul fast float %2169, %2166
  %3003 = fadd fast float %3000, %2149
  %3004 = fadd fast float %3001, %2150
  %3005 = fadd fast float %3002, %2151
  %3006 = fmul fast float %2967, 2.000000e+00
  %3007 = fmul fast float %2968, 2.000000e+00
  %3008 = fmul fast float %2969, 2.000000e+00
  %3009 = call float @dx.op.dot3.f32(i32 55, float %3006, float %3007, float %3008, float %3006, float %3007, float %3008)  ; Dot3(ax,ay,az,bx,by,bz)
  %3010 = fdiv fast float %3006, %3009
  %3011 = fdiv fast float %3007, %3009
  %3012 = fdiv fast float %3008, %3009
  %3013 = fsub fast float %2149, %2997
  %3014 = fsub fast float %2150, %2998
  %3015 = fsub fast float %2151, %2999
  %3016 = call float @dx.op.dot3.f32(i32 55, float %3013, float %3014, float %3015, float %3006, float %3007, float %3008)  ; Dot3(ax,ay,az,bx,by,bz)
  %3017 = fmul fast float %3016, %3010
  %3018 = fmul fast float %3016, %3011
  %3019 = fmul fast float %3016, %3012
  %3020 = fsub fast float %2149, %3017
  %3021 = fsub fast float %2150, %3018
  %3022 = fsub fast float %2151, %3019
  %3023 = fsub fast float %3003, %2997
  %3024 = fsub fast float %3004, %2998
  %3025 = fsub fast float %3005, %2999
  %3026 = call float @dx.op.dot3.f32(i32 55, float %3023, float %3024, float %3025, float %3006, float %3007, float %3008)  ; Dot3(ax,ay,az,bx,by,bz)
  %3027 = fmul fast float %3026, %3010
  %3028 = fmul fast float %3026, %3011
  %3029 = fmul fast float %3026, %3012
  %3030 = fsub fast float %3003, %3027
  %3031 = fsub fast float %3004, %3028
  %3032 = fsub fast float %3005, %3029
  %3033 = fsub fast float %3030, %3020
  %3034 = fsub fast float %3031, %3021
  %3035 = fsub fast float %3032, %3022
  %3036 = fsub fast float %2997, %3020
  %3037 = fsub fast float %2998, %3021
  %3038 = fsub fast float %2999, %3022
  %3039 = call float @dx.op.dot3.f32(i32 55, float %3036, float %3037, float %3038, float %3033, float %3034, float %3035)  ; Dot3(ax,ay,az,bx,by,bz)
  %3040 = call float @dx.op.dot3.f32(i32 55, float %3033, float %3034, float %3035, float %3033, float %3034, float %3035)  ; Dot3(ax,ay,az,bx,by,bz)
  %3041 = fdiv fast float %3039, %3040
  %3042 = fcmp fast une float %3020, %3030
  %3043 = fcmp fast une float %3021, %3031
  %3044 = fcmp fast une float %3022, %3032
  %3045 = or i1 %3042, %3043
  %3046 = or i1 %3044, %3045
  %3047 = select i1 %3046, float %3041, float 0.000000e+00
  %3048 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  %3049 = fmul fast float %3048, %3000
  %3050 = fmul fast float %3048, %3001
  %3051 = fmul fast float %3048, %3002
  %3052 = fadd fast float %3013, %3049
  %3053 = fadd fast float %3014, %3050
  %3054 = fadd fast float %3015, %3051
  %3055 = call float @dx.op.dot3.f32(i32 55, float %3052, float %3053, float %3054, float %3006, float %3007, float %3008)  ; Dot3(ax,ay,az,bx,by,bz)
  %3056 = fdiv fast float %3055, %3009
  %3057 = call float @dx.op.unary.f32(i32 7, float %3056)  ; Saturate(value)
  %3058 = fmul fast float %3006, %3057
  %3059 = fmul fast float %3007, %3057
  %3060 = fmul fast float %3008, %3057
  %3061 = fadd fast float %3058, %2997
  %3062 = fadd fast float %3059, %2998
  %3063 = fadd fast float %3060, %2999
  %3064 = fmul fast float %2983, %2959
  %3065 = fmul fast float %2983, %2960
  %3066 = fmul fast float %2983, %2961
  %3067 = fadd fast float %3061, %3064
  %3068 = fadd fast float %3062, %3065
  %3069 = fadd fast float %3063, %3066
  %3070 = fsub fast float -0.000000e+00, %2982
  %3071 = fdiv fast float %3070, %2981
  %3072 = fmul fast float %3071, %3071
  %3073 = call float @dx.op.dot3.f32(i32 55, float %2167, float %2168, float %2169, float %2959, float %2960, float %2961)  ; Dot3(ax,ay,az,bx,by,bz)
  %3074 = fsub fast float %2149, %3067
  %3075 = fsub fast float %2150, %3068
  %3076 = fsub fast float %2151, %3069
  %3077 = call float @dx.op.dot3.f32(i32 55, float %3074, float %3075, float %3076, float %2959, float %2960, float %2961)  ; Dot3(ax,ay,az,bx,by,bz)
  %3078 = fsub fast float %3067, %2149
  %3079 = fsub fast float %3068, %2150
  %3080 = fsub fast float %3069, %2151
  %3081 = fmul fast float %3073, %3073
  %3082 = fsub fast float %3081, %3072
  %3083 = fmul fast float %3077, %3073
  %3084 = call float @dx.op.dot3.f32(i32 55, float %3078, float %3079, float %3080, float %2167, float %2168, float %2169)  ; Dot3(ax,ay,az,bx,by,bz)
  %3085 = fmul fast float %3084, %3072
  %3086 = fadd fast float %3085, %3083
  %3087 = fmul fast float %3086, 2.000000e+00
  %3088 = fmul fast float %3077, %3077
  %3089 = call float @dx.op.dot3.f32(i32 55, float %3078, float %3079, float %3080, float %3078, float %3079, float %3080)  ; Dot3(ax,ay,az,bx,by,bz)
  %3090 = fmul fast float %3089, %3072
  %3091 = fsub fast float %3088, %3090
  %3092 = fmul fast float %3087, %3087
  %3093 = fmul fast float %3082, 4.000000e+00
  %3094 = fmul fast float %3093, %3091
  %3095 = fsub fast float %3092, %3094
  %3096 = fcmp fast ogt float %3095, 0.000000e+00
  br i1 %3096, label %3097, label %3188, !dx.controlflow.hints !144

; <label>:3097                                    ; preds = %2996
  %3098 = call float @dx.op.unary.f32(i32 24, float %3095)  ; Sqrt(value)
  %3099 = fdiv fast float 5.000000e-01, %3082
  %3100 = fsub fast float -0.000000e+00, %3087
  %3101 = fsub fast float %3100, %3098
  %3102 = fmul fast float %3101, %3099
  %3103 = fsub fast float %3098, %3087
  %3104 = fmul fast float %3103, %3099
  %3105 = call float @dx.op.binary.f32(i32 35, float %3102, float %3104)  ; FMax(a,b)
  %3106 = call float @dx.op.binary.f32(i32 36, float %3102, float %3104)  ; FMin(a,b)
  %3107 = fsub fast float %3061, %2149
  %3108 = fsub fast float %3062, %2150
  %3109 = fsub fast float %3063, %2151
  %3110 = call float @dx.op.dot3.f32(i32 55, float %3107, float %3108, float %3109, float %2959, float %2960, float %2961)  ; Dot3(ax,ay,az,bx,by,bz)
  %3111 = fdiv fast float %3110, %3073
  %3112 = fcmp fast ogt float %3073, 0.000000e+00
  br i1 %3112, label %3113, label %3116, !dx.controlflow.hints !145

; <label>:3113                                    ; preds = %3097
  %3114 = call float @dx.op.binary.f32(i32 36, float %3106, float %3111)  ; FMin(a,b)
  %3115 = call float @dx.op.binary.f32(i32 36, float %3105, float %3111)  ; FMin(a,b)
  br label %3119

; <label>:3116                                    ; preds = %3097
  %3117 = call float @dx.op.binary.f32(i32 35, float %3106, float %3111)  ; FMax(a,b)
  %3118 = call float @dx.op.binary.f32(i32 35, float %3105, float %3111)  ; FMax(a,b)
  br label %3119

; <label>:3119                                    ; preds = %3116, %3113
  %3120 = phi float [ %3114, %3113 ], [ %3117, %3116 ]
  %3121 = phi float [ %3115, %3113 ], [ %3118, %3116 ]
  %3122 = fcmp fast oge float %3120, 0.000000e+00
  %3123 = fcmp fast olt float %3120, %2166
  %3124 = and i1 %3122, %3123
  %3125 = fcmp fast ogt float %3121, 0.000000e+00
  %3126 = fcmp fast ole float %3121, %2166
  %3127 = and i1 %3125, %3126
  %3128 = or i1 %3124, %3127
  br i1 %3128, label %3129, label %3188, !dx.controlflow.hints !146

; <label>:3129                                    ; preds = %3119
  %3130 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3120)  ; FMax(a,b)
  %3131 = call float @dx.op.binary.f32(i32 36, float %2166, float %3121)  ; FMin(a,b)
  br i1 %3112, label %3132, label %3154, !dx.controlflow.hints !147

; <label>:3132                                    ; preds = %3129
  %3133 = fmul fast float %3131, %2167
  %3134 = fmul fast float %3131, %2168
  %3135 = fmul fast float %3131, %2169
  %3136 = fsub fast float %3078, %3133
  %3137 = fsub fast float %3079, %3134
  %3138 = fsub fast float %3080, %3135
  %3139 = call float @dx.op.dot3.f32(i32 55, float %3136, float %3137, float %3138, float %3136, float %3137, float %3138)  ; Dot3(ax,ay,az,bx,by,bz)
  %3140 = call float @dx.op.unary.f32(i32 25, float %3139)  ; Rsqrt(value)
  %3141 = fmul fast float %3140, %3136
  %3142 = fmul fast float %3140, %3137
  %3143 = fmul fast float %3140, %3138
  %3144 = call float @dx.op.dot3.f32(i32 55, float %3141, float %3142, float %3143, float %2959, float %2960, float %2961)  ; Dot3(ax,ay,az,bx,by,bz)
  %3145 = fmul fast float %3144, %2981
  %3146 = fadd fast float %3145, %2982
  %3147 = fcmp fast olt float %3146, 0xBF1A36E2E0000000
  %3148 = select i1 %3147, float 0.000000e+00, float %3130
  %3149 = select i1 %3147, float %3130, float %3131
  %3150 = fsub fast float %3148, %3149
  %3151 = call float @dx.op.unary.f32(i32 6, float %3150)  ; FAbs(value)
  %3152 = fcmp fast olt float %3151, 0x3F1A36E2E0000000
  br i1 %3152, label %3153, label %3176, !dx.controlflow.hints !148

; <label>:3153                                    ; preds = %3132
  br label %3176

; <label>:3154                                    ; preds = %3129
  %3155 = fmul fast float %3130, %2167
  %3156 = fmul fast float %3130, %2168
  %3157 = fmul fast float %3130, %2169
  %3158 = fsub fast float %3078, %3155
  %3159 = fsub fast float %3079, %3156
  %3160 = fsub fast float %3080, %3157
  %3161 = call float @dx.op.dot3.f32(i32 55, float %3158, float %3159, float %3160, float %3158, float %3159, float %3160)  ; Dot3(ax,ay,az,bx,by,bz)
  %3162 = call float @dx.op.unary.f32(i32 25, float %3161)  ; Rsqrt(value)
  %3163 = fmul fast float %3162, %3158
  %3164 = fmul fast float %3162, %3159
  %3165 = fmul fast float %3162, %3160
  %3166 = call float @dx.op.dot3.f32(i32 55, float %3163, float %3164, float %3165, float %2959, float %2960, float %2961)  ; Dot3(ax,ay,az,bx,by,bz)
  %3167 = fmul fast float %3166, %2981
  %3168 = fadd fast float %3167, %2982
  %3169 = fcmp fast olt float %3168, 0xBF1A36E2E0000000
  %3170 = select i1 %3169, float %3131, float %3130
  %3171 = select i1 %3169, float %2166, float %3131
  %3172 = fsub fast float %3170, %3171
  %3173 = call float @dx.op.unary.f32(i32 6, float %3172)  ; FAbs(value)
  %3174 = fcmp fast olt float %3173, 0x3F1A36E2E0000000
  br i1 %3174, label %3175, label %3176, !dx.controlflow.hints !149

; <label>:3175                                    ; preds = %3154
  br label %3176

; <label>:3176                                    ; preds = %3175, %3154, %3153, %3132
  %3177 = phi float [ 0.000000e+00, %3153 ], [ %3148, %3132 ], [ %3170, %3175 ], [ %3170, %3154 ]
  %3178 = phi float [ %3149, %3153 ], [ %3149, %3132 ], [ %2166, %3175 ], [ %3171, %3154 ]
  %3179 = fmul fast float %3177, %2167
  %3180 = fmul fast float %3177, %2168
  %3181 = fmul fast float %3177, %2169
  %3182 = fadd fast float %3179, %2149
  %3183 = fadd fast float %3180, %2150
  %3184 = fadd fast float %3181, %2151
  %3185 = fsub fast float %3178, %3177
  %3186 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3185)  ; FMax(a,b)
  %3187 = fmul fast float %3186, %2995
  br label %3188

; <label>:3188                                    ; preds = %3176, %3119, %2996, %2938
  %3189 = phi float [ %3067, %3176 ], [ %3067, %3119 ], [ %3067, %2996 ], [ %2975, %2938 ]
  %3190 = phi float [ %3068, %3176 ], [ %3068, %3119 ], [ %3068, %2996 ], [ %2976, %2938 ]
  %3191 = phi float [ %3069, %3176 ], [ %3069, %3119 ], [ %3069, %2996 ], [ %2977, %2938 ]
  %3192 = phi float [ %3182, %3176 ], [ %2149, %3119 ], [ %2149, %2996 ], [ %2149, %2938 ]
  %3193 = phi float [ %3183, %3176 ], [ %2150, %3119 ], [ %2150, %2996 ], [ %2150, %2938 ]
  %3194 = phi float [ %3184, %3176 ], [ %2151, %3119 ], [ %2151, %2996 ], [ %2151, %2938 ]
  %3195 = phi float [ %3186, %3176 ], [ %2166, %3119 ], [ %2166, %2996 ], [ %2166, %2938 ]
  %3196 = phi float [ %3187, %3176 ], [ 1.000000e+00, %3119 ], [ 1.000000e+00, %2996 ], [ 1.000000e+00, %2938 ]
  %3197 = fsub fast float %3189, %3192
  %3198 = fsub fast float %3190, %3193
  %3199 = fsub fast float %3191, %3194
  %3200 = call float @dx.op.dot3.f32(i32 55, float %3197, float %3198, float %3199, float %2167, float %2168, float %2169)  ; Dot3(ax,ay,az,bx,by,bz)
  %3201 = call float @dx.op.binary.f32(i32 35, float %3200, float 0.000000e+00)  ; FMax(a,b)
  %3202 = call float @dx.op.binary.f32(i32 36, float %3201, float %3195)  ; FMin(a,b)
  %3203 = fmul fast float %3202, %2167
  %3204 = fmul fast float %3202, %2168
  %3205 = fmul fast float %3202, %2169
  %3206 = fsub fast float %3192, %3189
  %3207 = fadd fast float %3206, %3203
  %3208 = fsub fast float %3193, %3190
  %3209 = fadd fast float %3208, %3204
  %3210 = fsub fast float %3194, %3191
  %3211 = fadd fast float %3210, %3205
  %3212 = fmul fast float %3207, %3207
  %3213 = fmul fast float %3209, %3209
  %3214 = fadd fast float %3212, %3213
  %3215 = fmul fast float %3211, %3211
  %3216 = fadd fast float %3214, %3215
  %3217 = call float @dx.op.unary.f32(i32 24, float %3216)  ; Sqrt(value)
  %3218 = fsub fast float -0.000000e+00, %3202
  %3219 = call float @dx.op.unary.f32(i32 6, float %3218)  ; FAbs(value)
  %3220 = fadd fast float %3219, 0x3DDB7CDFE0000000
  %3221 = fcmp fast oge float %3217, 0.000000e+00
  %3222 = fsub fast float -0.000000e+00, %3220
  %3223 = select i1 %3221, float %3222, float %3220
  %3224 = fadd fast float %3223, %3217
  %3225 = fsub fast float -0.000000e+00, %3217
  %3226 = select i1 %3221, float %3217, float %3225
  %3227 = fadd fast float %3220, %3226
  %3228 = fdiv fast float %3224, %3227
  %3229 = select i1 %3221, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %3230 = fmul fast float %3228, %3228
  %3231 = fmul fast float %3230, 0x3FC9205BC0000000
  %3232 = fadd fast float %3231, 0xBFEF6A1620000000
  %3233 = fmul fast float %3232, %3228
  %3234 = fadd fast float %3233, %3229
  %3235 = fcmp ole float %3202, -0.000000e+00
  %3236 = fsub fast float -0.000000e+00, %3234
  %3237 = select i1 %3235, float %3234, float %3236
  %3238 = fsub fast float %3195, %3202
  %3239 = call float @dx.op.unary.f32(i32 6, float %3238)  ; FAbs(value)
  %3240 = fadd fast float %3239, 0x3DDB7CDFE0000000
  %3241 = fsub fast float -0.000000e+00, %3240
  %3242 = select i1 %3221, float %3241, float %3240
  %3243 = fadd fast float %3242, %3217
  %3244 = fadd fast float %3240, %3226
  %3245 = fdiv fast float %3243, %3244
  %3246 = fmul fast float %3245, %3245
  %3247 = fmul fast float %3246, 0x3FC9205BC0000000
  %3248 = fadd fast float %3247, 0xBFEF6A1620000000
  %3249 = fmul fast float %3248, %3245
  %3250 = fadd fast float %3249, %3229
  %3251 = fcmp fast oge float %3238, 0.000000e+00
  %3252 = fsub fast float -0.000000e+00, %3250
  %3253 = select i1 %3251, float %3250, float %3252
  %3254 = fsub fast float %3253, %3237
  %3255 = fmul fast float %3254, %126
  %3256 = fadd fast float %3255, %3237
  %3257 = call float @dx.op.unary.f32(i32 14, float %3256)  ; Tan(value)
  %3258 = fmul fast float %3257, %3217
  %3259 = fadd fast float %3258, %3202
  %3260 = fmul fast float %3217, %3217
  %3261 = fmul fast float %3258, %3258
  %3262 = fadd fast float %3261, %3260
  %3263 = fmul fast float %3254, %3262
  %3264 = fdiv fast float %3217, %3263
  %3265 = fdiv fast float 1.000000e+00, %3264
  %3266 = fmul fast float %3196, %2995
  %3267 = fmul fast float %3266, %3265
  %3268 = fmul fast float %3259, %2167
  %3269 = fmul fast float %3259, %2168
  %3270 = fmul fast float %3259, %2169
  %3271 = fadd fast float %3268, %3192
  %3272 = fadd fast float %3269, %3193
  %3273 = fadd fast float %3270, %3194
  %3274 = call float @dx.op.dot3.f32(i32 55, float %2967, float %2968, float %2969, float %2967, float %2968, float %2969)  ; Dot3(ax,ay,az,bx,by,bz)
  %3275 = fsub fast float %3271, %2975
  %3276 = fsub fast float %3272, %2976
  %3277 = fsub fast float %3273, %2977
  %3278 = call float @dx.op.dot3.f32(i32 55, float %3275, float %3276, float %3277, float %2967, float %2968, float %2969)  ; Dot3(ax,ay,az,bx,by,bz)
  %3279 = fdiv fast float %3278, %3274
  %3280 = call float @dx.op.binary.f32(i32 35, float %3279, float -1.000000e+00)  ; FMax(a,b)
  %3281 = call float @dx.op.binary.f32(i32 36, float %3280, float 1.000000e+00)  ; FMin(a,b)
  %3282 = fmul fast float %3281, %2967
  %3283 = fmul fast float %3281, %2968
  %3284 = fmul fast float %3281, %2969
  %3285 = fadd fast float %3282, %2975
  %3286 = fadd fast float %3283, %2976
  %3287 = fadd fast float %3284, %2977
  %3288 = fsub fast float %3285, %3271
  %3289 = fsub fast float %3286, %3272
  %3290 = fsub fast float %3287, %3273
  %3291 = call float @dx.op.dot3.f32(i32 55, float %3288, float %3289, float %3290, float %3288, float %3289, float %3290)  ; Dot3(ax,ay,az,bx,by,bz)
  %3292 = call float @dx.op.unary.f32(i32 24, float %3291)  ; Sqrt(value)
  %3293 = fdiv fast float 1.000000e+00, %3292
  %3294 = fmul fast float %3288, %3293
  %3295 = fmul fast float %3289, %3293
  %3296 = fmul fast float %3290, %3293
  %3297 = fadd fast float %3292, %2956
  %3298 = fdiv fast float 1.000000e+00, %3297
  %3299 = fmul float %2972, %3298
  %3300 = fmul float %3299, %3299
  %3301 = call float @dx.op.unary.f32(i32 7, float %3300)  ; Saturate(value)
  br i1 %2994, label %3302, label %3326, !dx.controlflow.hints !150

; <label>:3302                                    ; preds = %3188
  %3303 = fmul fast float %2983, %2959
  %3304 = fmul fast float %2983, %2960
  %3305 = fmul fast float %2983, %2961
  %3306 = fsub fast float %3303, %3271
  %3307 = fadd fast float %3306, %3285
  %3308 = fsub fast float %3304, %3272
  %3309 = fadd fast float %3308, %3286
  %3310 = fsub fast float %3305, %3273
  %3311 = fadd fast float %3310, %3287
  %3312 = call float @dx.op.dot3.f32(i32 55, float %3307, float %3309, float %3311, float %3307, float %3309, float %3311)  ; Dot3(ax,ay,az,bx,by,bz)
  %3313 = call float @dx.op.unary.f32(i32 25, float %3312)  ; Rsqrt(value)
  %3314 = fmul fast float %3313, %3307
  %3315 = fmul fast float %3313, %3309
  %3316 = fmul fast float %3313, %3311
  %3317 = fsub fast float %3271, %3285
  %3318 = fsub fast float %3272, %3286
  %3319 = fsub fast float %3273, %3287
  %3320 = fsub fast float -0.000000e+00, %3317
  %3321 = fsub fast float -0.000000e+00, %3318
  %3322 = fsub fast float -0.000000e+00, %3319
  %3323 = call float @dx.op.dot3.f32(i32 55, float %3320, float %3321, float %3322, float %2959, float %2960, float %2961)  ; Dot3(ax,ay,az,bx,by,bz)
  %3324 = fcmp fast ogt float %3323, 0.000000e+00
  %3325 = uitofp i1 %3324 to float
  br label %3326

; <label>:3326                                    ; preds = %3302, %3188
  %3327 = phi float [ %3325, %3302 ], [ 1.000000e+00, %3188 ]
  %3328 = phi float [ %3314, %3302 ], [ %3294, %3188 ]
  %3329 = phi float [ %3315, %3302 ], [ %3295, %3188 ]
  %3330 = phi float [ %3316, %3302 ], [ %3296, %3188 ]
  %3331 = call float @dx.op.dot3.f32(i32 55, float %2959, float %2960, float %2961, float %3328, float %3329, float %3330)  ; Dot3(ax,ay,az,bx,by,bz)
  %3332 = fmul fast float %3331, %3331
  %3333 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = fmul fast float %3334, 5.000000e-01
  %3336 = fcmp fast ogt float %3331, 0.000000e+00
  %3337 = fsub fast float 1.000000e+00, %3335
  %3338 = select i1 %3336, float %3335, float %3337
  %3339 = fmul fast float %3338, %2991
  %3340 = fadd fast float %3339, %2989
  %3341 = fmul fast float %3340, 0x3EF0001000000000
  %3342 = fsub fast float %3285, %394
  %3343 = fsub fast float %3286, %395
  %3344 = fsub fast float %3287, %396
  %3345 = call float @dx.op.dot3.f32(i32 55, float %3342, float %3343, float %3344, float %3342, float %3343, float %3344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3346 = fmul fast float %2121, %2121
  %3347 = fsub fast float %3345, %3346
  %3348 = fdiv fast float %3347, %3345
  %3349 = call float @dx.op.unary.f32(i32 24, float %3348)  ; Sqrt(value)
  %3350 = fsub fast float 1.000000e+00, %3349
  %3351 = fcmp fast olt float %3345, %3346
  %3352 = fmul fast float %3350, 2.560000e+02
  %3353 = select i1 %3351, float 2.560000e+02, float %3352
  %3354 = call float @dx.op.unary.f32(i32 23, float %3353)  ; Log(value)
  %3355 = call float @dx.op.binary.f32(i32 36, float %3354, float 7.000000e+00)  ; FMin(a,b)
  %3356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %3341, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %3355)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = fmul fast float %3331, %2981
  %3359 = fadd fast float %3358, %2982
  %3360 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3361 = select i1 %2994, float 1.000000e+00, float %3360
  %3362 = select i1 %2994, float %3360, float 1.000000e+00
  %3363 = fmul fast float %3292, %2978
  %3364 = fsub fast float 1.000000e+00, %3363
  %3365 = fmul fast float %3364, %2984
  %3366 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3367 = fmul fast float %3366, %3362
  %3368 = fmul fast float %3367, 2.000000e+00
  %3369 = fsub fast float 3.000000e+00, %3368
  %3370 = fmul fast float %3357, %3327
  %3371 = fmul fast float %3367, %3367
  %3372 = fmul fast float %3371, %3370
  %3373 = fmul fast float %3372, %3369
  %3374 = call float @dx.op.binary.f32(i32 36, float %3373, float %3373)  ; FMin(a,b)
  %3375 = call float @dx.op.binary.f32(i32 36, float %3373, float %3374)  ; FMin(a,b)
  %3376 = fcmp fast ogt float %3375, 0.000000e+00
  br i1 %3376, label %3382, label %3377, !dx.controlflow.hints !151

; <label>:3377                                    ; preds = %3475, %3470, %3326
  %3378 = phi float [ %3505, %3475 ], [ %2940, %3470 ], [ %2940, %3326 ]
  %3379 = phi float [ %3506, %3475 ], [ %2941, %3470 ], [ %2941, %3326 ]
  %3380 = phi float [ %3507, %3475 ], [ %2942, %3470 ], [ %2942, %3326 ]
  %3381 = icmp eq i32 %2939, %2947
  br i1 %3381, label %3508, label %2938

; <label>:3382                                    ; preds = %3326
  %3383 = icmp eq i32 %2992, 255
  br i1 %3383, label %3470, label %3384, !dx.controlflow.hints !152

; <label>:3384                                    ; preds = %3382
  %3385 = mul nuw nsw i32 %2992, 176
  %3386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.ResRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.ResRet.f32 %3386, 2
  %3390 = extractvalue %dx.types.ResRet.f32 %3386, 3
  %3391 = add nuw nsw i32 %3385, 16
  %3392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.f32 %3392, 0
  %3394 = extractvalue %dx.types.ResRet.f32 %3392, 1
  %3395 = add nuw nsw i32 %3385, 32
  %3396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.f32 %3396, 0
  %3398 = extractvalue %dx.types.ResRet.f32 %3396, 2
  %3399 = add nuw nsw i32 %3385, 48
  %3400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 0
  %3402 = extractvalue %dx.types.ResRet.f32 %3400, 1
  %3403 = extractvalue %dx.types.ResRet.f32 %3400, 2
  %3404 = extractvalue %dx.types.ResRet.f32 %3400, 3
  %3405 = add nuw nsw i32 %3385, 64
  %3406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.f32 %3406, 0
  %3408 = extractvalue %dx.types.ResRet.f32 %3406, 1
  %3409 = extractvalue %dx.types.ResRet.f32 %3406, 2
  %3410 = extractvalue %dx.types.ResRet.f32 %3406, 3
  %3411 = add nuw nsw i32 %3385, 80
  %3412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.f32 %3412, 0
  %3414 = extractvalue %dx.types.ResRet.f32 %3412, 1
  %3415 = extractvalue %dx.types.ResRet.f32 %3412, 2
  %3416 = extractvalue %dx.types.ResRet.f32 %3412, 3
  %3417 = add nuw nsw i32 %3385, 96
  %3418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.ResRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.ResRet.f32 %3418, 2
  %3422 = extractvalue %dx.types.ResRet.f32 %3418, 3
  %3423 = bitcast float %3394 to i32
  %3424 = fmul fast float %3398, %3294
  %3425 = fmul fast float %3398, %3295
  %3426 = fmul fast float %3398, %3296
  %3427 = fsub fast float %3271, %3424
  %3428 = fsub fast float %3272, %3425
  %3429 = fsub fast float %3273, %3426
  %3430 = fmul fast float %3427, %3401
  %3431 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3407, float %3430)  ; FMad(a,b,c)
  %3432 = call float @dx.op.tertiary.f32(i32 46, float %3429, float %3413, float %3431)  ; FMad(a,b,c)
  %3433 = fadd fast float %3432, %3419
  %3434 = fmul fast float %3427, %3402
  %3435 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3408, float %3434)  ; FMad(a,b,c)
  %3436 = call float @dx.op.tertiary.f32(i32 46, float %3429, float %3414, float %3435)  ; FMad(a,b,c)
  %3437 = fadd fast float %3436, %3420
  %3438 = fmul fast float %3427, %3403
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3409, float %3438)  ; FMad(a,b,c)
  %3440 = call float @dx.op.tertiary.f32(i32 46, float %3429, float %3415, float %3439)  ; FMad(a,b,c)
  %3441 = fadd fast float %3440, %3421
  %3442 = fmul fast float %3427, %3404
  %3443 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3410, float %3442)  ; FMad(a,b,c)
  %3444 = call float @dx.op.tertiary.f32(i32 46, float %3429, float %3416, float %3443)  ; FMad(a,b,c)
  %3445 = fadd fast float %3444, %3422
  %3446 = fdiv fast float %3433, %3445
  %3447 = fdiv fast float %3437, %3445
  %3448 = fdiv fast float %3441, %3445
  %3449 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3448)  ; FMax(a,b)
  %3450 = fmul fast float %3389, 5.000000e-01
  %3451 = call float @dx.op.tertiary.f32(i32 46, float %3450, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %3452 = fadd fast float %3451, %3446
  %3453 = fadd fast float %3447, %3450
  %3454 = fmul fast float %3452, %3393
  %3455 = fmul fast float %3453, %3393
  %3456 = call float @dx.op.binary.f32(i32 35, float %3454, float %3389)  ; FMax(a,b)
  %3457 = call float @dx.op.binary.f32(i32 35, float %3455, float %3389)  ; FMax(a,b)
  %3458 = call float @dx.op.binary.f32(i32 36, float %3456, float %3390)  ; FMin(a,b)
  %3459 = call float @dx.op.binary.f32(i32 36, float %3457, float %3390)  ; FMin(a,b)
  %3460 = fadd fast float %3458, %3387
  %3461 = fadd fast float %3459, %3388
  %3462 = uitofp i32 %3423 to float
  %3463 = fadd fast float %3449, %3397
  %3464 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %43, float %3460, float %3461, float %3462, float undef, i32 0, i32 0, i32 undef, float %3463)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3465 = extractvalue %dx.types.ResRet.f32 %3464, 0
  %3466 = fadd fast float %3465, -1.000000e+00
  %3467 = fmul fast float %3466, %3361
  %3468 = fadd fast float %3467, 1.000000e+00
  %3469 = fmul fast float %3468, %3373
  br label %3470

; <label>:3470                                    ; preds = %3384, %3382
  %3471 = phi float [ %3469, %3384 ], [ %3373, %3382 ]
  %3472 = call float @dx.op.binary.f32(i32 36, float %3471, float %3471)  ; FMin(a,b)
  %3473 = call float @dx.op.binary.f32(i32 36, float %3471, float %3472)  ; FMin(a,b)
  %3474 = fcmp fast ogt float %3473, 0.000000e+00
  br i1 %3474, label %3475, label %3377, !dx.controlflow.hints !153

; <label>:3475                                    ; preds = %3470
  %3476 = call float @dx.op.dot3.f32(i32 55, float %3294, float %3295, float %3296, float %215, float %216, float %217)  ; Dot3(ax,ay,az,bx,by,bz)
  %3477 = fcmp fast ogt float %2114, 0.000000e+00
  %3478 = select i1 %3477, float 1.000000e+00, float -1.000000e+00
  %3479 = fmul fast float %126, 7.812500e-03
  %3480 = fmul fast float %126, 3.125000e-02
  %3481 = fadd fast float %3480, -3.125000e-02
  %3482 = fmul fast float %3478, 5.000000e-01
  %3483 = fmul fast float %3482, %3476
  %3484 = fmul fast float %3478, %2114
  %3485 = fadd fast float %3479, 4.921875e-01
  %3486 = fadd fast float %3485, %3483
  %3487 = fadd fast float %3479, 0x3FB25F3060000000
  %3488 = fadd fast float %3481, %3484
  %3489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %42, float %3486, float %3487, float %3488, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.f32 %3491, 1
  %3493 = extractvalue %dx.types.CBufRet.f32 %3491, 2
  %3494 = select i1 %2994, float %3492, float %3493
  %3495 = fmul fast float %3301, 0x400921FB60000000
  %3496 = fmul fast float %3495, %3471
  %3497 = fmul fast float %3496, %3490
  %3498 = fmul fast float %3497, %3494
  %3499 = fmul fast float %3267, %2951
  %3500 = fmul fast float %3499, %3498
  %3501 = fmul fast float %3267, %2952
  %3502 = fmul fast float %3501, %3498
  %3503 = fmul fast float %3267, %2953
  %3504 = fmul fast float %3503, %3498
  %3505 = fadd fast float %3500, %2940
  %3506 = fadd fast float %3502, %2941
  %3507 = fadd fast float %3504, %2942
  br label %3377

; <label>:3508                                    ; preds = %3377
  br label %3509

; <label>:3509                                    ; preds = %3508, %2925
  %3510 = phi float [ %2927, %2925 ], [ %3378, %3508 ]
  %3511 = phi float [ %2928, %2925 ], [ %3379, %3508 ]
  %3512 = phi float [ %2929, %2925 ], [ %3380, %3508 ]
  %3513 = add i32 %2926, 1
  %3514 = icmp ugt i32 %3513, %2924
  br i1 %3514, label %3515, label %2925

; <label>:3515                                    ; preds = %3509
  br label %3516

; <label>:3516                                    ; preds = %3515, %2915
  %3517 = phi float [ %2916, %2915 ], [ %3510, %3515 ]
  %3518 = phi float [ %2917, %2915 ], [ %3511, %3515 ]
  %3519 = phi float [ %2918, %2915 ], [ %3512, %3515 ]
  %3520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %40, float %151, float %152, float %153, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3524 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3521)  ; IsNaN(value)
  %3525 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3522)  ; IsNaN(value)
  %3526 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3523)  ; IsNaN(value)
  %3527 = or i1 %3524, %3525
  %3528 = or i1 %3527, %3526
  %3529 = select i1 %3528, float 0.000000e+00, float %3521
  %3530 = select i1 %3528, float 0.000000e+00, float %3522
  %3531 = select i1 %3528, float 0.000000e+00, float %3523
  %3532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3533 = extractvalue %dx.types.CBufRet.f32 %3532, 1
  %3534 = fmul fast float %3529, %3533
  %3535 = fmul fast float %3530, %3533
  %3536 = fmul fast float %3531, %3533
  %3537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3538 = extractvalue %dx.types.CBufRet.f32 %3537, 3
  %3539 = fmul fast float %3534, %3538
  %3540 = fmul fast float %3535, %3538
  %3541 = fmul fast float %3536, %3538
  %3542 = fadd fast float %3539, %3517
  %3543 = fadd fast float %3540, %3518
  %3544 = fadd fast float %3541, %3519
  br label %3545

; <label>:3545                                    ; preds = %3516, %2102
  %3546 = phi float [ %2111, %3516 ], [ %2103, %2102 ]
  %3547 = phi float [ %2112, %3516 ], [ %2104, %2102 ]
  %3548 = phi float [ %2113, %3516 ], [ %2105, %2102 ]
  %3549 = phi float [ %3542, %3516 ], [ 0.000000e+00, %2102 ]
  %3550 = phi float [ %3543, %3516 ], [ 0.000000e+00, %2102 ]
  %3551 = phi float [ %3544, %3516 ], [ 0.000000e+00, %2102 ]
  %3552 = fmul fast float %3546, %2107
  %3553 = fmul fast float %3547, %2107
  %3554 = fmul fast float %3548, %2107
  %3555 = fmul fast float %3552, %3549
  %3556 = fmul fast float %3553, %3550
  %3557 = fmul fast float %3554, %3551
  %3558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3559 = extractvalue %dx.types.CBufRet.f32 %3558, 0
  %3560 = extractvalue %dx.types.CBufRet.f32 %3558, 1
  %3561 = extractvalue %dx.types.CBufRet.f32 %3558, 2
  %3562 = extractvalue %dx.types.CBufRet.f32 %3558, 3
  %3563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3564 = extractvalue %dx.types.CBufRet.f32 %3563, 0
  %3565 = extractvalue %dx.types.CBufRet.f32 %3563, 1
  %3566 = extractvalue %dx.types.CBufRet.f32 %3563, 2
  %3567 = extractvalue %dx.types.CBufRet.f32 %3563, 3
  %3568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3569 = extractvalue %dx.types.CBufRet.f32 %3568, 0
  %3570 = extractvalue %dx.types.CBufRet.f32 %3568, 1
  %3571 = extractvalue %dx.types.CBufRet.f32 %3568, 2
  %3572 = extractvalue %dx.types.CBufRet.f32 %3568, 3
  %3573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3574 = extractvalue %dx.types.CBufRet.f32 %3573, 0
  %3575 = extractvalue %dx.types.CBufRet.f32 %3573, 1
  %3576 = extractvalue %dx.types.CBufRet.f32 %3573, 2
  %3577 = extractvalue %dx.types.CBufRet.f32 %3573, 3
  %3578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3579 = extractvalue %dx.types.CBufRet.f32 %3578, 3
  %3580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3580, 3
  %3582 = extractvalue %dx.types.CBufRet.f32 %3580, 0
  %3583 = extractvalue %dx.types.CBufRet.f32 %3580, 1
  %3584 = extractvalue %dx.types.CBufRet.f32 %3580, 2
  %3585 = fcmp fast olt float %3584, -5.000000e-01
  %3586 = fmul fast float %214, %213
  %3587 = fadd fast float %3586, %3562
  %3588 = call float @dx.op.dot3.f32(i32 55, float %215, float %216, float %217, float %3559, float %3560, float %3561)  ; Dot3(ax,ay,az,bx,by,bz)
  %3589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3590 = extractvalue %dx.types.CBufRet.i32 %3589, 1
  %3591 = and i32 %3590, 1
  %3592 = icmp ne i32 %3591, 0
  %3593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3594 = extractvalue %dx.types.CBufRet.f32 %3593, 2
  %3595 = fcmp fast ogt float %3594, 0.000000e+00
  %3596 = and i1 %3592, %3595
  br i1 %3596, label %3597, label %4003, !dx.controlflow.hints !154

; <label>:3597                                    ; preds = %3545
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 3
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 2
  %3602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3603 = extractvalue %dx.types.CBufRet.f32 %3602, 2
  %3604 = fsub fast float %3601, %3603
  %3605 = and i32 %3590, 2
  %3606 = extractvalue %dx.types.CBufRet.i32 %3589, 0
  %3607 = call i32 @dx.op.binary.i32(i32 40, i32 %3606, i32 3)  ; UMin(a,b)
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.CBufRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.CBufRet.f32 %3602, 0
  %3612 = extractvalue %dx.types.CBufRet.f32 %3602, 1
  %3613 = fsub fast float %3609, %3611
  %3614 = fsub fast float %3610, %3612
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = fcmp fast ogt float %3616, 0.000000e+00
  %3618 = fsub fast float -0.000000e+00, %3613
  %3619 = fsub fast float -0.000000e+00, %3614
  %3620 = call float @dx.op.dot2.f32(i32 54, float %215, float %216, float %215, float %216)  ; Dot2(ax,ay,bx,by)
  %3621 = call float @dx.op.dot2.f32(i32 54, float %215, float %216, float %3618, float %3619)  ; Dot2(ax,ay,bx,by)
  %3622 = fmul fast float %3621, 2.000000e+00
  %3623 = call float @dx.op.dot2.f32(i32 54, float %3618, float %3619, float %3618, float %3619)  ; Dot2(ax,ay,bx,by)
  %3624 = fmul fast float %3616, %3616
  %3625 = fsub fast float %3623, %3624
  %3626 = fmul fast float %3622, %3622
  %3627 = fmul fast float %3620, 4.000000e+00
  %3628 = fmul fast float %3627, %3625
  %3629 = fsub fast float %3626, %3628
  %3630 = fcmp fast ogt float %3629, 0.000000e+00
  br i1 %3630, label %3631, label %3646, !dx.controlflow.hints !155

; <label>:3631                                    ; preds = %3597
  %3632 = fcmp fast ogt float %3622, 0.000000e+00
  %3633 = call float @dx.op.unary.f32(i32 24, float %3629)  ; Sqrt(value)
  %3634 = fsub fast float -0.000000e+00, %3633
  %3635 = select i1 %3632, float %3633, float %3634
  %3636 = fadd fast float %3635, %3622
  %3637 = fmul float %3636, -5.000000e-01
  %3638 = fdiv fast float %3637, %3620
  %3639 = call float @dx.op.binary.f32(i32 35, float %3638, float 0.000000e+00)  ; FMax(a,b)
  %3640 = call float @dx.op.binary.f32(i32 36, float %3586, float %3639)  ; FMin(a,b)
  %3641 = fdiv fast float %3625, %3637
  %3642 = call float @dx.op.binary.f32(i32 35, float %3641, float 0.000000e+00)  ; FMax(a,b)
  %3643 = call float @dx.op.binary.f32(i32 36, float %3586, float %3642)  ; FMin(a,b)
  %3644 = call float @dx.op.binary.f32(i32 36, float %3640, float %3643)  ; FMin(a,b)
  %3645 = call float @dx.op.binary.f32(i32 35, float %3640, float %3643)  ; FMax(a,b)
  br label %3646

; <label>:3646                                    ; preds = %3631, %3597
  %3647 = phi float [ %3645, %3631 ], [ -1.000000e+00, %3597 ]
  %3648 = phi float [ %3644, %3631 ], [ -1.000000e+00, %3597 ]
  %3649 = phi i1 [ true, %3631 ], [ false, %3597 ]
  %3650 = and i1 %3617, %3649
  br i1 %3650, label %3651, label %3653, !dx.controlflow.hints !156

; <label>:3651                                    ; preds = %3646
  %3652 = fcmp fast oeq float %3648, %3647
  br i1 %3652, label %3956, label %3654, !dx.controlflow.hints !157

; <label>:3653                                    ; preds = %3646
  br i1 %3617, label %3956, label %3654, !dx.controlflow.hints !158

; <label>:3654                                    ; preds = %3653, %3651
  %3655 = phi float [ %3586, %3653 ], [ %3647, %3651 ]
  %3656 = phi float [ 0.000000e+00, %3653 ], [ %3648, %3651 ]
  %3657 = icmp ne i32 %3605, 0
  %3658 = fmul fast float %3655, %217
  %3659 = fadd fast float %3658, %3599
  %3660 = fmul fast float %3659, %3655
  %3661 = select i1 %3657, float 0.000000e+00, float %3660
  %3662 = fcmp fast oeq float %217, 0.000000e+00
  %3663 = fdiv fast float %3604, %217
  %3664 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3663)  ; FMax(a,b)
  %3665 = select i1 %3662, float %3655, float %3664
  %3666 = call float @dx.op.binary.f32(i32 36, float %3655, float %3665)  ; FMin(a,b)
  %3667 = fcmp fast ogt float %217, 0.000000e+00
  %3668 = fcmp fast olt float %3604, 0.000000e+00
  br i1 %3667, label %3669, label %3726, !dx.controlflow.hints !159

; <label>:3669                                    ; preds = %3654
  %3670 = icmp eq i32 %3605, 0
  br i1 %3668, label %3671, label %3715, !dx.controlflow.hints !160

; <label>:3671                                    ; preds = %3669
  %3672 = select i1 %3670, float %3655, float 0.000000e+00
  %3673 = fsub fast float -0.000000e+00, %3672
  %3674 = call float @dx.op.unary.f32(i32 6, float %3673)  ; FAbs(value)
  %3675 = fmul fast float %3672, %217
  %3676 = fadd fast float %3675, %3599
  %3677 = fmul fast float %3674, %3676
  %3678 = fsub fast float %3661, %3677
  %3679 = fsub fast float %3655, %3674
  %3680 = select i1 %3670, float %3679, float 0.000000e+00
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.CBufRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.CBufRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.CBufRet.f32 %3685, 2
  %3689 = extractvalue %dx.types.CBufRet.f32 %3685, 3
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 3
  %3692 = call float @dx.op.binary.f32(i32 36, float %3678, float %3691)  ; FMin(a,b)
  %3693 = fmul fast float %3689, %3680
  %3694 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3695 = fsub fast float %3686, %3682
  %3696 = fsub fast float %3687, %3683
  %3697 = fsub fast float %3688, %3684
  %3698 = fmul fast float %3694, %3695
  %3699 = fmul fast float %3694, %3696
  %3700 = fmul fast float %3694, %3697
  %3701 = fadd fast float %3698, %3682
  %3702 = fadd fast float %3699, %3683
  %3703 = fadd fast float %3700, %3684
  %3704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3705 = extractvalue %dx.types.CBufRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.CBufRet.f32 %3704, 1
  %3707 = fadd fast float %3706, %3705
  %3708 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3704, 2
  %3710 = extractvalue %dx.types.CBufRet.f32 %3704, 3
  %3711 = fadd fast float %3710, %3709
  %3712 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3713 = fmul fast float %3708, %3692
  %3714 = fmul fast float %3713, %3712
  br label %3956

; <label>:3715                                    ; preds = %3669
  br i1 %3670, label %3716, label %3737, !dx.controlflow.hints !161

; <label>:3716                                    ; preds = %3715
  %3717 = call float @dx.op.binary.f32(i32 36, float %3666, float %3656)  ; FMin(a,b)
  %3718 = fsub fast float %3666, %3717
  %3719 = fsub fast float %3718, %3655
  %3720 = call float @dx.op.unary.f32(i32 6, float %3719)  ; FAbs(value)
  %3721 = fadd fast float %3718, %3655
  %3722 = fmul fast float %3721, %217
  %3723 = fadd fast float %3722, %3599
  %3724 = fmul fast float %3723, %3720
  %3725 = fsub fast float %3661, %3724
  br label %3737

; <label>:3726                                    ; preds = %3654
  br i1 %3668, label %3727, label %3737, !dx.controlflow.hints !162

; <label>:3727                                    ; preds = %3726
  %3728 = call float @dx.op.binary.f32(i32 35, float %3656, float %3666)  ; FMax(a,b)
  %3729 = icmp eq i32 %3605, 0
  %3730 = select i1 %3729, float %3666, float 0.000000e+00
  %3731 = fsub fast float -0.000000e+00, %3730
  %3732 = call float @dx.op.unary.f32(i32 6, float %3731)  ; FAbs(value)
  %3733 = fmul fast float %3730, %217
  %3734 = fadd fast float %3733, %3599
  %3735 = fmul fast float %3732, %3734
  %3736 = fsub fast float %3661, %3735
  br label %3737

; <label>:3737                                    ; preds = %3727, %3726, %3716, %3715
  %3738 = phi float [ %3656, %3715 ], [ %3656, %3716 ], [ %3728, %3727 ], [ %3656, %3726 ]
  %3739 = phi float [ 0.000000e+00, %3715 ], [ %3720, %3716 ], [ %3732, %3727 ], [ 0.000000e+00, %3726 ]
  %3740 = phi float [ %3661, %3715 ], [ %3725, %3716 ], [ %3736, %3727 ], [ %3661, %3726 ]
  %3741 = phi float [ %3666, %3715 ], [ %3666, %3716 ], [ %3655, %3727 ], [ %3655, %3726 ]
  %3742 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 0
  store float -1.000000e+00, float* %3742, align 4, !tbaa !62, !noalias !163
  %3743 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 1
  store float -1.000000e+00, float* %3743, align 4, !tbaa !62, !noalias !163
  %3744 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 2
  store float -1.000000e+00, float* %3744, align 4, !tbaa !62, !noalias !163
  %3745 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 0
  store float -1.000000e+00, float* %3745, align 4, !tbaa !62, !noalias !163
  %3746 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 1
  store float -1.000000e+00, float* %3746, align 4, !tbaa !62, !noalias !163
  %3747 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 2
  store float -1.000000e+00, float* %3747, align 4, !tbaa !62, !noalias !163
  %3748 = icmp sgt i32 %3607, 0
  br i1 %3748, label %3749, label %3810

; <label>:3749                                    ; preds = %3737
  br label %3750

; <label>:3750                                    ; preds = %3799, %3749
  %3751 = phi i32 [ %3800, %3799 ], [ 0, %3749 ]
  %3752 = phi i32 [ %3801, %3799 ], [ 0, %3749 ]
  %3753 = add nuw i32 %3752, 171
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %3753)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 0
  %3756 = extractvalue %dx.types.CBufRet.f32 %3754, 1
  %3757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3758 = extractvalue %dx.types.CBufRet.f32 %3757, 0
  %3759 = extractvalue %dx.types.CBufRet.f32 %3757, 1
  %3760 = fsub fast float %3755, %3758
  %3761 = fsub fast float %3756, %3759
  %3762 = extractvalue %dx.types.CBufRet.f32 %3754, 2
  %3763 = fsub fast float -0.000000e+00, %3760
  %3764 = fsub fast float -0.000000e+00, %3761
  %3765 = call float @dx.op.dot2.f32(i32 54, float %215, float %216, float %3763, float %3764)  ; Dot2(ax,ay,bx,by)
  %3766 = fmul fast float %3765, 2.000000e+00
  %3767 = call float @dx.op.dot2.f32(i32 54, float %3763, float %3764, float %3763, float %3764)  ; Dot2(ax,ay,bx,by)
  %3768 = fmul fast float %3762, %3762
  %3769 = fsub fast float %3767, %3768
  %3770 = fmul fast float %3766, %3766
  %3771 = fmul fast float %3627, %3769
  %3772 = fsub fast float %3770, %3771
  %3773 = fcmp fast ogt float %3772, 0.000000e+00
  br i1 %3773, label %3774, label %3789, !dx.controlflow.hints !155

; <label>:3774                                    ; preds = %3750
  %3775 = fcmp fast ogt float %3766, 0.000000e+00
  %3776 = call float @dx.op.unary.f32(i32 24, float %3772)  ; Sqrt(value)
  %3777 = fsub fast float -0.000000e+00, %3776
  %3778 = select i1 %3775, float %3776, float %3777
  %3779 = fadd fast float %3778, %3766
  %3780 = fmul float %3779, -5.000000e-01
  %3781 = fdiv fast float %3780, %3620
  %3782 = call float @dx.op.binary.f32(i32 35, float %3781, float 0.000000e+00)  ; FMax(a,b)
  %3783 = call float @dx.op.binary.f32(i32 36, float %3655, float %3782)  ; FMin(a,b)
  %3784 = fdiv fast float %3769, %3780
  %3785 = call float @dx.op.binary.f32(i32 35, float %3784, float 0.000000e+00)  ; FMax(a,b)
  %3786 = call float @dx.op.binary.f32(i32 36, float %3655, float %3785)  ; FMin(a,b)
  %3787 = call float @dx.op.binary.f32(i32 36, float %3783, float %3786)  ; FMin(a,b)
  %3788 = call float @dx.op.binary.f32(i32 35, float %3783, float %3786)  ; FMax(a,b)
  br label %3789

; <label>:3789                                    ; preds = %3774, %3750
  %3790 = phi float [ %3788, %3774 ], [ -1.000000e+00, %3750 ]
  %3791 = phi float [ %3787, %3774 ], [ -1.000000e+00, %3750 ]
  %3792 = phi i1 [ true, %3774 ], [ false, %3750 ]
  br i1 %3792, label %3793, label %3799, !dx.controlflow.hints !169

; <label>:3793                                    ; preds = %3789
  %3794 = call float @dx.op.binary.f32(i32 35, float %3738, float %3791)  ; FMax(a,b)
  %3795 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 %3752
  store float %3794, float* %3795, align 4, !tbaa !62, !noalias !163
  %3796 = call float @dx.op.binary.f32(i32 35, float %3738, float %3790)  ; FMax(a,b)
  %3797 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %3752
  store float %3796, float* %3797, align 4, !tbaa !62, !noalias !163
  %3798 = add nsw i32 %3751, 1
  br label %3799

; <label>:3799                                    ; preds = %3793, %3789
  %3800 = phi i32 [ %3798, %3793 ], [ %3751, %3789 ]
  %3801 = add nuw nsw i32 %3752, 1
  %3802 = icmp eq i32 %3801, %3607
  br i1 %3802, label %3803, label %3750

; <label>:3803                                    ; preds = %3799
  %3804 = load float, float* %3744, align 4, !tbaa !62, !alias.scope !170, !noalias !173
  %3805 = load float, float* %3743, align 4, !tbaa !62, !alias.scope !176, !noalias !177
  %3806 = load float, float* %3742, align 4, !tbaa !62, !alias.scope !178, !noalias !179
  %3807 = load float, float* %3747, align 4, !tbaa !62, !alias.scope !180, !noalias !183
  %3808 = load float, float* %3746, align 4, !tbaa !62, !alias.scope !186, !noalias !187
  %3809 = load float, float* %3745, align 4, !tbaa !62, !alias.scope !188, !noalias !189
  br label %3810

; <label>:3810                                    ; preds = %3803, %3737
  %3811 = phi float [ -1.000000e+00, %3737 ], [ %3809, %3803 ]
  %3812 = phi float [ -1.000000e+00, %3737 ], [ %3808, %3803 ]
  %3813 = phi float [ -1.000000e+00, %3737 ], [ %3807, %3803 ]
  %3814 = phi float [ -1.000000e+00, %3737 ], [ %3806, %3803 ]
  %3815 = phi float [ -1.000000e+00, %3737 ], [ %3805, %3803 ]
  %3816 = phi float [ -1.000000e+00, %3737 ], [ %3804, %3803 ]
  %3817 = phi i32 [ 0, %3737 ], [ %3800, %3803 ]
  %3818 = call float @dx.op.binary.f32(i32 36, float %3815, float %3816)  ; FMin(a,b)
  %3819 = call float @dx.op.binary.f32(i32 36, float %3814, float %3818)  ; FMin(a,b)
  %3820 = call float @dx.op.binary.f32(i32 35, float %3814, float %3815)  ; FMax(a,b)
  %3821 = call float @dx.op.binary.f32(i32 36, float %3820, float %3816)  ; FMin(a,b)
  %3822 = call float @dx.op.binary.f32(i32 36, float %3814, float %3815)  ; FMin(a,b)
  %3823 = call float @dx.op.binary.f32(i32 35, float %3822, float %3821)  ; FMax(a,b)
  %3824 = call float @dx.op.binary.f32(i32 35, float %3815, float %3816)  ; FMax(a,b)
  %3825 = call float @dx.op.binary.f32(i32 35, float %3814, float %3824)  ; FMax(a,b)
  store float %3819, float* %3742, align 4, !tbaa !62, !alias.scope !178, !noalias !179
  store float %3823, float* %3743, align 4, !tbaa !62, !alias.scope !176, !noalias !177
  store float %3825, float* %3744, align 4, !tbaa !62, !alias.scope !170, !noalias !173
  %3826 = call float @dx.op.binary.f32(i32 36, float %3812, float %3813)  ; FMin(a,b)
  %3827 = call float @dx.op.binary.f32(i32 36, float %3811, float %3826)  ; FMin(a,b)
  %3828 = call float @dx.op.binary.f32(i32 35, float %3811, float %3812)  ; FMax(a,b)
  %3829 = call float @dx.op.binary.f32(i32 36, float %3828, float %3813)  ; FMin(a,b)
  %3830 = call float @dx.op.binary.f32(i32 36, float %3811, float %3812)  ; FMin(a,b)
  %3831 = call float @dx.op.binary.f32(i32 35, float %3830, float %3829)  ; FMax(a,b)
  %3832 = call float @dx.op.binary.f32(i32 35, float %3812, float %3813)  ; FMax(a,b)
  %3833 = call float @dx.op.binary.f32(i32 35, float %3811, float %3832)  ; FMax(a,b)
  store float %3827, float* %3745, align 4, !tbaa !62, !alias.scope !188, !noalias !189
  store float %3831, float* %3746, align 4, !tbaa !62, !alias.scope !186, !noalias !187
  store float %3833, float* %3747, align 4, !tbaa !62, !alias.scope !180, !noalias !183
  %3834 = sub nsw i32 3, %3817
  %3835 = icmp sgt i32 %3834, 2
  br i1 %3835, label %3836, label %3874, !dx.controlflow.hints !190

; <label>:3836                                    ; preds = %3810
  %3837 = icmp eq i32 %3605, 0
  %3838 = fsub fast float %3655, %3739
  %3839 = select i1 %3837, float %3838, float %3739
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.CBufRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.CBufRet.f32 %3840, 2
  %3844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3845 = extractvalue %dx.types.CBufRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.CBufRet.f32 %3844, 1
  %3847 = extractvalue %dx.types.CBufRet.f32 %3844, 2
  %3848 = extractvalue %dx.types.CBufRet.f32 %3844, 3
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 3
  %3851 = call float @dx.op.binary.f32(i32 36, float %3740, float %3850)  ; FMin(a,b)
  %3852 = fmul fast float %3848, %3839
  %3853 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3854 = fsub fast float %3845, %3841
  %3855 = fsub fast float %3846, %3842
  %3856 = fsub fast float %3847, %3843
  %3857 = fmul fast float %3853, %3854
  %3858 = fmul fast float %3853, %3855
  %3859 = fmul fast float %3853, %3856
  %3860 = fadd fast float %3857, %3841
  %3861 = fadd fast float %3858, %3842
  %3862 = fadd fast float %3859, %3843
  %3863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.CBufRet.f32 %3863, 1
  %3866 = fadd fast float %3865, %3864
  %3867 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3863, 2
  %3869 = extractvalue %dx.types.CBufRet.f32 %3863, 3
  %3870 = fadd fast float %3869, %3868
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = fmul fast float %3867, %3851
  %3873 = fmul fast float %3872, %3871
  br label %3956

; <label>:3874                                    ; preds = %3810
  %3875 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 %3834
  %3876 = load float, float* %3875, align 4, !tbaa !62, !noalias !163
  %3877 = fcmp fast olt float %3876, %3741
  %3878 = icmp sgt i32 %3817, 0
  %3879 = and i1 %3878, %3877
  br i1 %3879, label %3880, label %3917

; <label>:3880                                    ; preds = %3874
  br label %3881

; <label>:3881                                    ; preds = %3910, %3880
  %3882 = phi float [ %3911, %3910 ], [ %3739, %3880 ]
  %3883 = phi float [ %3912, %3910 ], [ %3740, %3880 ]
  %3884 = phi float [ %3892, %3910 ], [ %3876, %3880 ]
  %3885 = phi i32 [ %3889, %3910 ], [ %3834, %3880 ]
  %3886 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %3885
  %3887 = load float, float* %3886, align 4, !tbaa !62, !noalias !163
  %3888 = icmp slt i32 %3885, 2
  %3889 = add nsw i32 %3885, 1
  %3890 = getelementptr inbounds [3 x float], [3 x float]* %54, i32 0, i32 %3889
  %3891 = load float, float* %3890, align 4, !tbaa !62, !noalias !163
  %3892 = select i1 %3888, float %3891, float %3655
  %3893 = call float @dx.op.binary.f32(i32 36, float %3892, float %3887)  ; FMin(a,b)
  %3894 = call float @dx.op.binary.f32(i32 36, float %3741, float %3893)  ; FMin(a,b)
  %3895 = icmp eq i32 %3605, 0
  %3896 = fadd fast float %3894, %3884
  %3897 = fmul fast float %3896, %217
  %3898 = fadd fast float %3897, %3599
  br i1 %3895, label %3904, label %3899, !dx.controlflow.hints !191

; <label>:3899                                    ; preds = %3881
  %3900 = fsub fast float %3894, %3884
  %3901 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3900)  ; FMax(a,b)
  %3902 = fmul fast float %3901, %3898
  %3903 = fadd fast float %3902, %3883
  br label %3910

; <label>:3904                                    ; preds = %3881
  %3905 = fsub fast float %3884, %3894
  %3906 = call float @dx.op.unary.f32(i32 6, float %3905)  ; FAbs(value)
  %3907 = fadd fast float %3906, %3882
  %3908 = fmul fast float %3906, %3898
  %3909 = fsub fast float %3883, %3908
  br label %3910

; <label>:3910                                    ; preds = %3904, %3899
  %3911 = phi float [ %3901, %3899 ], [ %3907, %3904 ]
  %3912 = phi float [ %3903, %3899 ], [ %3909, %3904 ]
  %3913 = fcmp fast olt float %3892, %3741
  %3914 = icmp slt i32 %3889, 3
  %3915 = and i1 %3914, %3913
  br i1 %3915, label %3881, label %3916

; <label>:3916                                    ; preds = %3910
  br label %3917

; <label>:3917                                    ; preds = %3916, %3874
  %3918 = phi float [ %3739, %3874 ], [ %3911, %3916 ]
  %3919 = phi float [ %3740, %3874 ], [ %3912, %3916 ]
  %3920 = fsub fast float %3655, %3918
  %3921 = select i1 %3657, float %3918, float %3920
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.CBufRet.f32 %3922, 2
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.CBufRet.f32 %3926, 1
  %3929 = extractvalue %dx.types.CBufRet.f32 %3926, 2
  %3930 = extractvalue %dx.types.CBufRet.f32 %3926, 3
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 3
  %3933 = call float @dx.op.binary.f32(i32 36, float %3919, float %3932)  ; FMin(a,b)
  %3934 = fmul fast float %3930, %3921
  %3935 = call float @dx.op.unary.f32(i32 7, float %3934)  ; Saturate(value)
  %3936 = fsub fast float %3927, %3923
  %3937 = fsub fast float %3928, %3924
  %3938 = fsub fast float %3929, %3925
  %3939 = fmul fast float %3935, %3936
  %3940 = fmul fast float %3935, %3937
  %3941 = fmul fast float %3935, %3938
  %3942 = fadd fast float %3939, %3923
  %3943 = fadd fast float %3940, %3924
  %3944 = fadd fast float %3941, %3925
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.CBufRet.f32 %3945, 1
  %3948 = fadd fast float %3947, %3946
  %3949 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %3951 = extractvalue %dx.types.CBufRet.f32 %3945, 3
  %3952 = fadd fast float %3951, %3950
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3954 = fmul fast float %3949, %3933
  %3955 = fmul fast float %3954, %3953
  br label %3956

; <label>:3956                                    ; preds = %3917, %3836, %3671, %3653, %3651
  %3957 = phi float [ %3680, %3671 ], [ %3839, %3836 ], [ %3921, %3917 ], [ 0.000000e+00, %3651 ], [ 0.000000e+00, %3653 ]
  %3958 = phi float [ %3714, %3671 ], [ %3873, %3836 ], [ %3955, %3917 ], [ 0.000000e+00, %3651 ], [ 0.000000e+00, %3653 ]
  %3959 = phi float [ %3701, %3671 ], [ %3860, %3836 ], [ %3942, %3917 ], [ 0.000000e+00, %3651 ], [ 0.000000e+00, %3653 ]
  %3960 = phi float [ %3702, %3671 ], [ %3861, %3836 ], [ %3943, %3917 ], [ 0.000000e+00, %3651 ], [ 0.000000e+00, %3653 ]
  %3961 = phi float [ %3703, %3671 ], [ %3862, %3836 ], [ %3944, %3917 ], [ 0.000000e+00, %3651 ], [ 0.000000e+00, %3653 ]
  %3962 = fmul fast float %3594, %3958
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %3965 = fsub fast float %3601, %3964
  %3966 = fcmp fast olt float %3962, -2.000000e+01
  %3967 = call float @dx.op.unary.f32(i32 21, float %3962)  ; Exp(value)
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 2
  %3970 = extractvalue %dx.types.CBufRet.f32 %3968, 3
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 2
  %3973 = fmul fast float %3970, %3965
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = fsub fast float 1.000000e+00, %3974
  %3976 = fmul fast float %217, 5.000000e-01
  %3977 = fadd fast float %3976, 5.000000e-01
  %3978 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  %3979 = fsub fast float 1.000000e+00, %3978
  %3980 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3975)  ; FMax(a,b)
  %3981 = fdiv fast float %3979, %3980
  %3982 = fsub fast float %3965, %197
  %3983 = call float @dx.op.unary.f32(i32 6, float %3982)  ; FAbs(value)
  %3984 = fmul fast float %3983, %3969
  %3985 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3986 = fsub fast float 1.000000e+00, %3984
  %3987 = fmul fast float %3986, %3985
  %3988 = fadd fast float %3987, %3984
  %3989 = fmul fast float %3972, %3965
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = fsub fast float 1.000000e+00, %3988
  %3992 = fmul fast float %3991, %3990
  %3993 = fadd fast float %3992, %3988
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3995 = fadd fast float %3967, -1.000000e+00
  %3996 = select i1 %3966, float -1.000000e+00, float %3995
  %3997 = fmul fast float %3994, %3996
  %3998 = fadd fast float %3997, 1.000000e+00
  %3999 = fsub fast float -0.000000e+00, %3997
  %4000 = fmul fast float %3959, %3999
  %4001 = fmul fast float %3960, %3999
  %4002 = fmul fast float %3961, %3999
  br label %4003

; <label>:4003                                    ; preds = %3956, %3545
  %4004 = phi float [ %3957, %3956 ], [ 0.000000e+00, %3545 ]
  %4005 = phi float [ %3998, %3956 ], [ 1.000000e+00, %3545 ]
  %4006 = phi float [ %4000, %3956 ], [ 0.000000e+00, %3545 ]
  %4007 = phi float [ %4001, %3956 ], [ 0.000000e+00, %3545 ]
  %4008 = phi float [ %4002, %3956 ], [ 0.000000e+00, %3545 ]
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4011 = fsub fast float 1.000000e+00, %4005
  %4012 = fmul fast float %4011, %3587
  %4013 = fmul fast float %4012, %4010
  %4014 = fsub fast float %3587, %4013
  br i1 %3585, label %4015, label %4044, !dx.controlflow.hints !192

; <label>:4015                                    ; preds = %4003
  %4016 = fmul fast float %3588, %3582
  %4017 = fadd fast float %4016, %3583
  %4018 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4019 = fmul fast float %3564, %4014
  %4020 = fsub fast float -0.000000e+00, %4019
  %4021 = fmul fast float %3565, %4014
  %4022 = fsub fast float -0.000000e+00, %4021
  %4023 = call float @dx.op.unary.f32(i32 21, float %4020)  ; Exp(value)
  %4024 = call float @dx.op.unary.f32(i32 21, float %4022)  ; Exp(value)
  %4025 = call float @dx.op.binary.f32(i32 35, float %3572, float %4023)  ; FMax(a,b)
  %4026 = call float @dx.op.binary.f32(i32 35, float %3572, float %4024)  ; FMax(a,b)
  %4027 = fsub fast float %4026, %4025
  %4028 = fmul fast float %4027, %4018
  %4029 = fadd fast float %4028, %4025
  %4030 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4031 = fsub fast float %3569, %3574
  %4032 = fsub fast float %3570, %3575
  %4033 = fsub fast float %3571, %3576
  %4034 = fmul fast float %4018, %4031
  %4035 = fmul fast float %4018, %4032
  %4036 = fmul fast float %4018, %4033
  %4037 = fadd fast float %4034, %3574
  %4038 = fadd fast float %4035, %3575
  %4039 = fadd fast float %4036, %3576
  %4040 = fsub fast float 1.000000e+00, %4030
  %4041 = fmul fast float %4040, %4037
  %4042 = fmul fast float %4040, %4038
  %4043 = fmul fast float %4040, %4039
  br label %4103

; <label>:4044                                    ; preds = %4003
  %4045 = fmul fast float %4014, %3581
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4047 = fsub fast float 2.000000e+00, %4046
  %4048 = fmul fast float %4046, 9.921875e-01
  %4049 = fmul fast float %4048, %4047
  %4050 = fadd fast float %4049, 3.906250e-03
  %4051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %4050, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  %4053 = fsub fast float %4046, %4052
  %4054 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4053)  ; FMax(a,b)
  %4055 = fmul fast float %3567, %197
  %4056 = call float @dx.op.unary.f32(i32 6, float %4055)  ; FAbs(value)
  %4057 = fcmp fast ogt float %4056, 0x3EB0C6F7A0000000
  br i1 %4057, label %4058, label %4064, !dx.controlflow.hints !193

; <label>:4058                                    ; preds = %4044
  %4059 = fmul fast float %4055, 0xBFF7154760000000
  %4060 = call float @dx.op.unary.f32(i32 21, float %4059)  ; Exp(value)
  %4061 = fsub fast float 1.000000e+00, %4060
  %4062 = fdiv fast float %4061, %4055
  %4063 = fmul fast float %4062, %3577
  br label %4064

; <label>:4064                                    ; preds = %4058, %4044
  %4065 = phi float [ %4063, %4058 ], [ %3577, %4044 ]
  %4066 = fadd fast float %4065, %3579
  %4067 = fmul fast float %4066, %4054
  %4068 = fmul fast float %3564, %4067
  %4069 = fsub fast float -0.000000e+00, %4068
  %4070 = fmul fast float %3565, %4067
  %4071 = fsub fast float -0.000000e+00, %4070
  %4072 = fmul fast float %3566, %4067
  %4073 = fsub fast float -0.000000e+00, %4072
  %4074 = call float @dx.op.unary.f32(i32 21, float %4069)  ; Exp(value)
  %4075 = call float @dx.op.unary.f32(i32 21, float %4071)  ; Exp(value)
  %4076 = call float @dx.op.unary.f32(i32 21, float %4073)  ; Exp(value)
  %4077 = fmul fast float %3588, %3588
  %4078 = fadd fast float %4077, 1.000000e+00
  %4079 = fmul fast float %4078, 0x3FAE8EC8A0000000
  %4080 = fmul fast float %4079, %3574
  %4081 = fmul fast float %4079, %3575
  %4082 = fmul fast float %4079, %3576
  %4083 = fmul fast float %3588, %3572
  %4084 = fsub fast float 1.000000e+00, %4083
  %4085 = fmul fast float %3572, %3572
  %4086 = fsub fast float 1.000000e+00, %4085
  %4087 = fmul fast float %4086, 0x3FB45F3060000000
  %4088 = fmul fast float %4084, %4084
  %4089 = fdiv fast float 1.000000e+00, %4088
  %4090 = fmul fast float %4087, %4089
  %4091 = fmul fast float %4090, %3569
  %4092 = fmul fast float %4090, %3570
  %4093 = fmul fast float %4090, %3571
  %4094 = fadd fast float %4091, %4080
  %4095 = fadd fast float %4092, %4081
  %4096 = fadd fast float %4093, %4082
  %4097 = fsub fast float 1.000000e+00, %4074
  %4098 = fsub fast float 1.000000e+00, %4075
  %4099 = fsub fast float 1.000000e+00, %4076
  %4100 = fmul fast float %4094, %4097
  %4101 = fmul fast float %4095, %4098
  %4102 = fmul fast float %4096, %4099
  br label %4103

; <label>:4103                                    ; preds = %4064, %4015
  %4104 = phi float [ %4041, %4015 ], [ %4100, %4064 ]
  %4105 = phi float [ %4042, %4015 ], [ %4101, %4064 ]
  %4106 = phi float [ %4043, %4015 ], [ %4102, %4064 ]
  %4107 = phi float [ %4030, %4015 ], [ %4074, %4064 ]
  %4108 = phi float [ %4030, %4015 ], [ %4075, %4064 ]
  %4109 = phi float [ %4030, %4015 ], [ %4076, %4064 ]
  br i1 %3596, label %4110, label %4308, !dx.controlflow.hints !194

; <label>:4110                                    ; preds = %4103
  %4111 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4112 = fmul fast float %4111, %4011
  %4113 = fsub fast float %4006, %4104
  %4114 = fsub fast float %4007, %4105
  %4115 = fsub fast float %4008, %4106
  %4116 = fmul fast float %4112, %4113
  %4117 = fmul fast float %4112, %4114
  %4118 = fmul fast float %4112, %4115
  %4119 = fadd fast float %4116, %4104
  %4120 = fadd fast float %4117, %4105
  %4121 = fadd fast float %4118, %4106
  %4122 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4107)  ; FMax(a,b)
  %4123 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4108)  ; FMax(a,b)
  %4124 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4109)  ; FMax(a,b)
  %4125 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4005)  ; FMax(a,b)
  %4126 = call float @dx.op.binary.f32(i32 35, float %4004, float %4014)  ; FMax(a,b)
  %4127 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4126)  ; FMax(a,b)
  %4128 = fdiv fast float %4004, %4127
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = fdiv fast float %4014, %4127
  %4131 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4132 = fcmp fast une float %4125, 1.000000e+00
  br i1 %4132, label %4133, label %4146, !dx.controlflow.hints !195

; <label>:4133                                    ; preds = %4110
  %4134 = call float @dx.op.unary.f32(i32 23, float %4125)  ; Log(value)
  %4135 = fmul fast float %4134, 0x3FE62E4300000000
  %4136 = fmul fast float %4006, %4135
  %4137 = fsub fast float -0.000000e+00, %4136
  %4138 = fmul fast float %4007, %4135
  %4139 = fsub fast float -0.000000e+00, %4138
  %4140 = fmul fast float %4008, %4135
  %4141 = fsub fast float -0.000000e+00, %4140
  %4142 = fsub fast float 1.000000e+00, %4125
  %4143 = fdiv fast float %4137, %4142
  %4144 = fdiv fast float %4139, %4142
  %4145 = fdiv fast float %4141, %4142
  br label %4146

; <label>:4146                                    ; preds = %4133, %4110
  %4147 = phi float [ %4143, %4133 ], [ %4006, %4110 ]
  %4148 = phi float [ %4144, %4133 ], [ %4007, %4110 ]
  %4149 = phi float [ %4145, %4133 ], [ %4008, %4110 ]
  %4150 = phi float [ %4135, %4133 ], [ 0.000000e+00, %4110 ]
  %4151 = fcmp fast une float %4122, 1.000000e+00
  br i1 %4151, label %4152, label %4159, !dx.controlflow.hints !196

; <label>:4152                                    ; preds = %4146
  %4153 = call float @dx.op.unary.f32(i32 23, float %4122)  ; Log(value)
  %4154 = fmul fast float %4153, 0x3FE62E4300000000
  %4155 = fmul fast float %4119, %4154
  %4156 = fsub fast float -0.000000e+00, %4155
  %4157 = fsub fast float 1.000000e+00, %4122
  %4158 = fdiv fast float %4156, %4157
  br label %4159

; <label>:4159                                    ; preds = %4152, %4146
  %4160 = phi float [ %4158, %4152 ], [ %4119, %4146 ]
  %4161 = phi float [ %4154, %4152 ], [ 0.000000e+00, %4146 ]
  %4162 = fcmp fast une float %4123, 1.000000e+00
  br i1 %4162, label %4163, label %4170, !dx.controlflow.hints !196

; <label>:4163                                    ; preds = %4159
  %4164 = call float @dx.op.unary.f32(i32 23, float %4123)  ; Log(value)
  %4165 = fmul fast float %4164, 0x3FE62E4300000000
  %4166 = fmul fast float %4120, %4165
  %4167 = fsub fast float -0.000000e+00, %4166
  %4168 = fsub fast float 1.000000e+00, %4123
  %4169 = fdiv fast float %4167, %4168
  br label %4170

; <label>:4170                                    ; preds = %4163, %4159
  %4171 = phi float [ %4169, %4163 ], [ %4120, %4159 ]
  %4172 = phi float [ %4165, %4163 ], [ 0.000000e+00, %4159 ]
  %4173 = fcmp fast une float %4124, 1.000000e+00
  br i1 %4173, label %4174, label %4181, !dx.controlflow.hints !196

; <label>:4174                                    ; preds = %4170
  %4175 = call float @dx.op.unary.f32(i32 23, float %4124)  ; Log(value)
  %4176 = fmul fast float %4175, 0x3FE62E4300000000
  %4177 = fmul fast float %4121, %4176
  %4178 = fsub fast float -0.000000e+00, %4177
  %4179 = fsub fast float 1.000000e+00, %4124
  %4180 = fdiv fast float %4178, %4179
  br label %4181

; <label>:4181                                    ; preds = %4174, %4170
  %4182 = phi float [ %4180, %4174 ], [ %4121, %4170 ]
  %4183 = phi float [ %4176, %4174 ], [ 0.000000e+00, %4170 ]
  %4184 = fmul fast float %4147, %4131
  %4185 = fmul fast float %4148, %4131
  %4186 = fmul fast float %4149, %4131
  %4187 = fmul fast float %4150, %4131
  %4188 = fmul fast float %4160, %4129
  %4189 = fmul fast float %4171, %4129
  %4190 = fmul fast float %4182, %4129
  %4191 = fmul fast float %4161, %4129
  %4192 = fmul fast float %4172, %4129
  %4193 = fmul fast float %4183, %4129
  %4194 = fadd fast float %4188, %4184
  %4195 = fadd fast float %4189, %4185
  %4196 = fadd fast float %4190, %4186
  %4197 = fadd fast float %4191, %4187
  %4198 = fadd fast float %4192, %4187
  %4199 = fadd fast float %4193, %4187
  %4200 = fcmp fast une float %4197, 0.000000e+00
  br i1 %4200, label %4201, label %4208, !dx.controlflow.hints !197

; <label>:4201                                    ; preds = %4181
  %4202 = fmul fast float %4197, 0x3FF7154760000000
  %4203 = call float @dx.op.unary.f32(i32 21, float %4202)  ; Exp(value)
  %4204 = fsub fast float 1.000000e+00, %4203
  %4205 = fmul fast float %4194, %4204
  %4206 = fsub fast float -0.000000e+00, %4205
  %4207 = fdiv fast float %4206, %4197
  br label %4208

; <label>:4208                                    ; preds = %4201, %4181
  %4209 = phi float [ %4203, %4201 ], [ 1.000000e+00, %4181 ]
  %4210 = phi float [ %4207, %4201 ], [ %4194, %4181 ]
  %4211 = fcmp fast une float %4198, 0.000000e+00
  br i1 %4211, label %4212, label %4219, !dx.controlflow.hints !197

; <label>:4212                                    ; preds = %4208
  %4213 = fmul fast float %4198, 0x3FF7154760000000
  %4214 = call float @dx.op.unary.f32(i32 21, float %4213)  ; Exp(value)
  %4215 = fsub fast float 1.000000e+00, %4214
  %4216 = fmul fast float %4195, %4215
  %4217 = fsub fast float -0.000000e+00, %4216
  %4218 = fdiv fast float %4217, %4198
  br label %4219

; <label>:4219                                    ; preds = %4212, %4208
  %4220 = phi float [ %4214, %4212 ], [ 1.000000e+00, %4208 ]
  %4221 = phi float [ %4218, %4212 ], [ %4195, %4208 ]
  %4222 = fcmp fast une float %4199, 0.000000e+00
  br i1 %4222, label %4223, label %4230, !dx.controlflow.hints !197

; <label>:4223                                    ; preds = %4219
  %4224 = fmul fast float %4199, 0x3FF7154760000000
  %4225 = call float @dx.op.unary.f32(i32 21, float %4224)  ; Exp(value)
  %4226 = fsub fast float 1.000000e+00, %4225
  %4227 = fmul fast float %4196, %4226
  %4228 = fsub fast float -0.000000e+00, %4227
  %4229 = fdiv fast float %4228, %4199
  br label %4230

; <label>:4230                                    ; preds = %4223, %4219
  %4231 = phi float [ %4225, %4223 ], [ 1.000000e+00, %4219 ]
  %4232 = phi float [ %4229, %4223 ], [ %4196, %4219 ]
  %4233 = fcmp fast ogt float %4129, %4131
  br i1 %4233, label %4234, label %4254, !dx.controlflow.hints !198

; <label>:4234                                    ; preds = %4230
  %4235 = fsub fast float 1.000000e+00, %4131
  %4236 = fmul fast float %4147, %4235
  %4237 = fmul fast float %4148, %4235
  %4238 = fmul fast float %4149, %4235
  %4239 = fmul fast float %4150, %4235
  %4240 = fcmp fast une float %4239, 0.000000e+00
  br i1 %4240, label %4241, label %4292, !dx.controlflow.hints !199

; <label>:4241                                    ; preds = %4234
  %4242 = fmul fast float %4239, 0x3FF7154760000000
  %4243 = call float @dx.op.unary.f32(i32 21, float %4242)  ; Exp(value)
  %4244 = fsub fast float 1.000000e+00, %4243
  %4245 = fmul fast float %4236, %4244
  %4246 = fsub fast float -0.000000e+00, %4245
  %4247 = fmul fast float %4237, %4244
  %4248 = fsub fast float -0.000000e+00, %4247
  %4249 = fmul fast float %4238, %4244
  %4250 = fsub fast float -0.000000e+00, %4249
  %4251 = fdiv fast float %4246, %4239
  %4252 = fdiv fast float %4248, %4239
  %4253 = fdiv fast float %4250, %4239
  br label %4292

; <label>:4254                                    ; preds = %4230
  %4255 = fsub fast float 1.000000e+00, %4129
  %4256 = fmul fast float %4160, %4255
  %4257 = fmul fast float %4171, %4255
  %4258 = fmul fast float %4182, %4255
  %4259 = fmul fast float %4161, %4255
  %4260 = fmul fast float %4172, %4255
  %4261 = fmul fast float %4183, %4255
  %4262 = fcmp fast une float %4259, 0.000000e+00
  br i1 %4262, label %4263, label %4270, !dx.controlflow.hints !197

; <label>:4263                                    ; preds = %4254
  %4264 = fmul fast float %4259, 0x3FF7154760000000
  %4265 = call float @dx.op.unary.f32(i32 21, float %4264)  ; Exp(value)
  %4266 = fsub fast float 1.000000e+00, %4265
  %4267 = fmul fast float %4256, %4266
  %4268 = fsub fast float -0.000000e+00, %4267
  %4269 = fdiv fast float %4268, %4259
  br label %4270

; <label>:4270                                    ; preds = %4263, %4254
  %4271 = phi float [ %4269, %4263 ], [ %4256, %4254 ]
  %4272 = phi float [ %4265, %4263 ], [ 1.000000e+00, %4254 ]
  %4273 = fcmp fast une float %4260, 0.000000e+00
  br i1 %4273, label %4274, label %4281, !dx.controlflow.hints !197

; <label>:4274                                    ; preds = %4270
  %4275 = fmul fast float %4260, 0x3FF7154760000000
  %4276 = call float @dx.op.unary.f32(i32 21, float %4275)  ; Exp(value)
  %4277 = fsub fast float 1.000000e+00, %4276
  %4278 = fmul fast float %4257, %4277
  %4279 = fsub fast float -0.000000e+00, %4278
  %4280 = fdiv fast float %4279, %4260
  br label %4281

; <label>:4281                                    ; preds = %4274, %4270
  %4282 = phi float [ %4280, %4274 ], [ %4257, %4270 ]
  %4283 = phi float [ %4276, %4274 ], [ 1.000000e+00, %4270 ]
  %4284 = fcmp fast une float %4261, 0.000000e+00
  br i1 %4284, label %4285, label %4292, !dx.controlflow.hints !197

; <label>:4285                                    ; preds = %4281
  %4286 = fmul fast float %4261, 0x3FF7154760000000
  %4287 = call float @dx.op.unary.f32(i32 21, float %4286)  ; Exp(value)
  %4288 = fsub fast float 1.000000e+00, %4287
  %4289 = fmul fast float %4258, %4288
  %4290 = fsub fast float -0.000000e+00, %4289
  %4291 = fdiv fast float %4290, %4261
  br label %4292

; <label>:4292                                    ; preds = %4285, %4281, %4241, %4234
  %4293 = phi float [ %4291, %4285 ], [ %4253, %4241 ], [ %4238, %4234 ], [ %4258, %4281 ]
  %4294 = phi float [ %4282, %4285 ], [ %4252, %4241 ], [ %4237, %4234 ], [ %4282, %4281 ]
  %4295 = phi float [ %4271, %4285 ], [ %4251, %4241 ], [ %4236, %4234 ], [ %4271, %4281 ]
  %4296 = phi float [ %4287, %4285 ], [ %4243, %4241 ], [ 1.000000e+00, %4234 ], [ 1.000000e+00, %4281 ]
  %4297 = phi float [ %4283, %4285 ], [ %4243, %4241 ], [ 1.000000e+00, %4234 ], [ %4283, %4281 ]
  %4298 = phi float [ %4272, %4285 ], [ %4243, %4241 ], [ 1.000000e+00, %4234 ], [ %4272, %4281 ]
  %4299 = fmul fast float %4298, %4210
  %4300 = fmul fast float %4297, %4221
  %4301 = fmul fast float %4296, %4232
  %4302 = fadd fast float %4299, %4295
  %4303 = fadd fast float %4300, %4294
  %4304 = fadd fast float %4301, %4293
  %4305 = fmul fast float %4298, %4209
  %4306 = fmul fast float %4297, %4220
  %4307 = fmul fast float %4296, %4231
  br label %4308

; <label>:4308                                    ; preds = %4292, %4103
  %4309 = phi float [ %4307, %4292 ], [ %4109, %4103 ]
  %4310 = phi float [ %4306, %4292 ], [ %4108, %4103 ]
  %4311 = phi float [ %4305, %4292 ], [ %4107, %4103 ]
  %4312 = phi float [ %4304, %4292 ], [ %4106, %4103 ]
  %4313 = phi float [ %4303, %4292 ], [ %4105, %4103 ]
  %4314 = phi float [ %4302, %4292 ], [ %4104, %4103 ]
  %4315 = fmul fast float %3555, %4311
  %4316 = fmul fast float %3556, %4310
  %4317 = fmul fast float %3557, %4309
  %4318 = fmul fast float %2107, 0xBFF7154760000000
  %4319 = call float @dx.op.unary.f32(i32 21, float %4318)  ; Exp(value)
  %4320 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4321 = fsub fast float 1.000000e+00, %4320
  %4322 = fmul fast float %4321, %4314
  %4323 = fmul fast float %4321, %4313
  %4324 = fmul fast float %4321, %4312
  %4325 = fadd fast float %4322, %4315
  %4326 = fadd fast float %4323, %4316
  %4327 = fadd fast float %4324, %4317
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 0
  %4330 = fmul fast float %4329, %4325
  %4331 = fmul fast float %4326, %4329
  %4332 = fmul fast float %4327, %4329
  %4333 = fmul fast float %4331, 5.000000e-01
  %4334 = fadd fast float %4327, %4325
  %4335 = fmul fast float %4329, %4334
  %4336 = fmul fast float %4335, 2.500000e-01
  %4337 = fadd fast float %4336, %4333
  %4338 = call float @dx.op.unary.f32(i32 23, float %4337)  ; Log(value)
  %4339 = fmul fast float %4338, 0x3FE62E4300000000
  %4340 = fmul fast float %4339, %4339
  store float %221, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  %4341 = fmul fast float %4339, %221
  store float %4341, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  %4342 = fmul fast float %4340, %221
  store float %4342, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4343 = load float, float addrspace(3)* %228, align 4, !tbaa !62, !noalias !66
  %4344 = fadd fast float %4343, %221
  %4345 = load float, float addrspace(3)* %231, align 4, !tbaa !62, !noalias !66
  %4346 = fadd fast float %4345, %4339
  %4347 = load float, float addrspace(3)* %234, align 4, !tbaa !62, !noalias !66
  %4348 = fadd fast float %4347, %4340
  store float %4344, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  store float %4346, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  store float %4348, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4349 = load float, float addrspace(3)* %238, align 4, !tbaa !62, !noalias !66
  %4350 = fadd fast float %4349, %4344
  %4351 = load float, float addrspace(3)* %241, align 4, !tbaa !62, !noalias !66
  %4352 = fadd fast float %4351, %4346
  %4353 = load float, float addrspace(3)* %244, align 4, !tbaa !62, !noalias !66
  %4354 = fadd fast float %4353, %4348
  store float %4350, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  store float %4352, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  store float %4354, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4355 = load float, float addrspace(3)* %248, align 4, !tbaa !62, !noalias !66
  %4356 = fadd fast float %4355, %4350
  %4357 = load float, float addrspace(3)* %251, align 4, !tbaa !62, !noalias !66
  %4358 = fadd fast float %4357, %4352
  %4359 = fdiv fast float %4358, %4356
  br i1 %259, label %4360, label %4368, !dx.controlflow.hints !70

; <label>:4360                                    ; preds = %4308
  %4361 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %247
  %4362 = load float, float addrspace(3)* %4361, align 4, !tbaa !62, !noalias !66
  %4363 = fadd fast float %4362, %4354
  %4364 = fdiv fast float %4363, %4356
  %4365 = lshr i32 %76, 1
  %4366 = lshr i32 %77, 1
  %4367 = lshr i32 %78, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %4365, i32 %4366, i32 %4367, float %4359, float %4364, float %4359, float %4359, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4368

; <label>:4368                                    ; preds = %4360, %4308
  br i1 %87, label %4403, label %4369, !dx.controlflow.hints !71

; <label>:4369                                    ; preds = %4368
  %4370 = fadd fast float %126, 0x3FE3C6EF40000000
  %4371 = call float @dx.op.unary.f32(i32 22, float %4370)  ; Frc(value)
  %4372 = call float @dx.op.unary.f32(i32 23, float %4330)  ; Log(value)
  %4373 = fadd fast float %4372, -7.000000e+00
  %4374 = call float @dx.op.unary.f32(i32 21, float %4373)  ; Exp(value)
  %4375 = fmul fast float %4371, 2.000000e+00
  %4376 = fadd fast float %4375, -1.000000e+00
  %4377 = fmul fast float %4374, %4376
  %4378 = fcmp fast ogt float %4330, 0.000000e+00
  %4379 = select i1 %4378, float %4377, float 0.000000e+00
  %4380 = fadd fast float %4379, %4330
  %4381 = fadd fast float %126, 0x3FF3C6EF40000000
  %4382 = call float @dx.op.unary.f32(i32 22, float %4381)  ; Frc(value)
  %4383 = call float @dx.op.unary.f32(i32 23, float %4331)  ; Log(value)
  %4384 = fadd fast float %4383, -7.000000e+00
  %4385 = call float @dx.op.unary.f32(i32 21, float %4384)  ; Exp(value)
  %4386 = fmul fast float %4382, 2.000000e+00
  %4387 = fadd fast float %4386, -1.000000e+00
  %4388 = fmul fast float %4385, %4387
  %4389 = fcmp fast ogt float %4331, 0.000000e+00
  %4390 = select i1 %4389, float %4388, float 0.000000e+00
  %4391 = fadd fast float %4390, %4331
  %4392 = fadd fast float %126, 0x3FFDAA66E0000000
  %4393 = call float @dx.op.unary.f32(i32 22, float %4392)  ; Frc(value)
  %4394 = call float @dx.op.unary.f32(i32 23, float %4332)  ; Log(value)
  %4395 = fadd fast float %4394, -6.000000e+00
  %4396 = call float @dx.op.unary.f32(i32 21, float %4395)  ; Exp(value)
  %4397 = fmul fast float %4393, 2.000000e+00
  %4398 = fadd fast float %4397, -1.000000e+00
  %4399 = fmul fast float %4396, %4398
  %4400 = fcmp fast ogt float %4332, 0.000000e+00
  %4401 = select i1 %4400, float %4399, float 0.000000e+00
  %4402 = fadd fast float %4401, %4332
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %76, i32 %77, i32 %78, float %4380, float %4391, float %4402, float %4380, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4403

; <label>:4403                                    ; preds = %4369, %4368
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 0
  %4406 = fmul fast float %4405, %2107
  %4407 = fmul fast float %4406, 5.000000e-01
  %4408 = fadd fast float %2107, %2107
  %4409 = fmul fast float %4405, %4408
  %4410 = fmul fast float %4409, 2.500000e-01
  %4411 = fadd fast float %4410, %4407
  %4412 = fmul fast float %4411, %4411
  store float %221, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  %4413 = fmul fast float %4411, %221
  store float %4413, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  %4414 = fmul fast float %4412, %221
  store float %4414, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4415 = load float, float addrspace(3)* %228, align 4, !tbaa !62, !noalias !66
  %4416 = fadd fast float %4415, %221
  %4417 = load float, float addrspace(3)* %231, align 4, !tbaa !62, !noalias !66
  %4418 = fadd fast float %4411, %4417
  %4419 = load float, float addrspace(3)* %234, align 4, !tbaa !62, !noalias !66
  %4420 = fadd fast float %4412, %4419
  store float %4416, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  store float %4418, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  store float %4420, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4421 = load float, float addrspace(3)* %238, align 4, !tbaa !62, !noalias !66
  %4422 = fadd fast float %4421, %4416
  %4423 = load float, float addrspace(3)* %241, align 4, !tbaa !62, !noalias !66
  %4424 = fadd fast float %4423, %4418
  %4425 = load float, float addrspace(3)* %244, align 4, !tbaa !62, !noalias !66
  %4426 = fadd fast float %4425, %4420
  store float %4422, float addrspace(3)* %222, align 4, !tbaa !62, !noalias !66
  store float %4424, float addrspace(3)* %224, align 4, !tbaa !62, !noalias !66
  store float %4426, float addrspace(3)* %226, align 4, !tbaa !62, !noalias !66
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4427 = load float, float addrspace(3)* %248, align 4, !tbaa !62, !noalias !66
  %4428 = fadd fast float %4427, %4422
  %4429 = load float, float addrspace(3)* %251, align 4, !tbaa !62, !noalias !66
  %4430 = fadd fast float %4429, %4424
  %4431 = fdiv fast float %4430, %4428
  br i1 %259, label %4432, label %4440, !dx.controlflow.hints !72

; <label>:4432                                    ; preds = %4403
  %4433 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %247
  %4434 = load float, float addrspace(3)* %4433, align 4, !tbaa !62, !noalias !66
  %4435 = fadd fast float %4434, %4426
  %4436 = fdiv fast float %4435, %4428
  %4437 = lshr i32 %76, 1
  %4438 = lshr i32 %77, 1
  %4439 = lshr i32 %78, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4437, i32 %4438, i32 %4439, float %4431, float %4436, float %4431, float %4431, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4440

; <label>:4440                                    ; preds = %4432, %4403
  br i1 %87, label %4469, label %4441, !dx.controlflow.hints !73

; <label>:4441                                    ; preds = %4440
  %4442 = fadd fast float %126, 0x3FE3C6EF40000000
  %4443 = call float @dx.op.unary.f32(i32 22, float %4442)  ; Frc(value)
  %4444 = call float @dx.op.unary.f32(i32 23, float %4406)  ; Log(value)
  %4445 = fadd fast float %4444, -7.000000e+00
  %4446 = call float @dx.op.unary.f32(i32 21, float %4445)  ; Exp(value)
  %4447 = fmul fast float %4443, 2.000000e+00
  %4448 = fadd fast float %4447, -1.000000e+00
  %4449 = fmul fast float %4446, %4448
  %4450 = fcmp fast ogt float %4406, 0.000000e+00
  %4451 = select i1 %4450, float %4449, float 0.000000e+00
  %4452 = fadd fast float %4451, %4406
  %4453 = fadd fast float %126, 0x3FF3C6EF40000000
  %4454 = call float @dx.op.unary.f32(i32 22, float %4453)  ; Frc(value)
  %4455 = fmul fast float %4454, 2.000000e+00
  %4456 = fadd fast float %4455, -1.000000e+00
  %4457 = fmul fast float %4446, %4456
  %4458 = select i1 %4450, float %4457, float 0.000000e+00
  %4459 = fadd fast float %4458, %4406
  %4460 = fadd fast float %126, 0x3FFDAA66E0000000
  %4461 = call float @dx.op.unary.f32(i32 22, float %4460)  ; Frc(value)
  %4462 = fadd fast float %4444, -6.000000e+00
  %4463 = call float @dx.op.unary.f32(i32 21, float %4462)  ; Exp(value)
  %4464 = fmul fast float %4461, 2.000000e+00
  %4465 = fadd fast float %4464, -1.000000e+00
  %4466 = fmul fast float %4463, %4465
  %4467 = select i1 %4450, float %4466, float 0.000000e+00
  %4468 = fadd fast float %4467, %4406
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %76, i32 %77, i32 %78, float %4452, float %4459, float %4468, float %4452, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4469

; <label>:4469                                    ; preds = %4441, %4440
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
!dx.entryPoints = !{!59}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !45, !50, !53}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43}
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
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 34, i32 1, i32 7, i32 0, !30}
!30 = !{i32 0, i32 14}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!37 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!38 = !{i32 29, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !41}
!41 = !{i32 1, i32 80}
!42 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!43 = !{i32 33, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !44}
!44 = !{i32 1, i32 4}
!45 = !{!46, !47, !48, !49}
!46 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!47 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!48 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!49 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!50 = !{!51, !52}
!51 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!52 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!53 = !{!54, !55, !56, !57, !58}
!54 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!55 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!56 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!57 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!58 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!59 = !{void ()* @cs_volumetric_forwardplus_scatter_local_afog, !"cs_volumetric_forwardplus_scatter_local_afog", null, !4, !60}
!60 = !{i32 0, i64 272, i32 4, !61}
!61 = !{i32 4, i32 4, i32 4}
!62 = !{!63, !63, i64 0}
!63 = !{!"float", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !{!67, !69}
!67 = distinct !{!67, !68, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!68 = distinct !{!68, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!69 = distinct !{!69, !68, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
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
!123 = !{!"int", !64, i64 0}
!124 = !{!125, !127, !129, !67, !69}
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
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 2}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 2}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 2}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 2}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 2}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 2}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 2}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 2}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 2}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 2}
!163 = !{!164, !166, !168, !67, !69}
!164 = distinct !{!164, !165, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!165 = distinct !{!165, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!166 = distinct !{!166, !167, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!167 = distinct !{!167, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!168 = distinct !{!168, !167, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 2}
!170 = !{!171}
!171 = distinct !{!171, !172, !"\01?sort@@YAXAIAM00@Z: %c"}
!172 = distinct !{!172, !"\01?sort@@YAXAIAM00@Z"}
!173 = !{!174, !175, !164, !166, !168, !67, !69}
!174 = distinct !{!174, !172, !"\01?sort@@YAXAIAM00@Z: %a"}
!175 = distinct !{!175, !172, !"\01?sort@@YAXAIAM00@Z: %b"}
!176 = !{!175}
!177 = !{!174, !171, !164, !166, !168, !67, !69}
!178 = !{!174}
!179 = !{!175, !171, !164, !166, !168, !67, !69}
!180 = !{!181}
!181 = distinct !{!181, !182, !"\01?sort@@YAXAIAM00@Z: %c"}
!182 = distinct !{!182, !"\01?sort@@YAXAIAM00@Z"}
!183 = !{!184, !185, !164, !166, !168, !67, !69}
!184 = distinct !{!184, !182, !"\01?sort@@YAXAIAM00@Z: %a"}
!185 = distinct !{!185, !182, !"\01?sort@@YAXAIAM00@Z: %b"}
!186 = !{!185}
!187 = !{!184, !181, !164, !166, !168, !67, !69}
!188 = !{!184}
!189 = !{!185, !181, !164, !166, !168, !67, !69}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 2}
!191 = distinct !{!191, !"dx.controlflow.hints", i32 2}
!192 = distinct !{!192, !"dx.controlflow.hints", i32 1}
!193 = distinct !{!193, !"dx.controlflow.hints", i32 2}
!194 = distinct !{!194, !"dx.controlflow.hints", i32 1}
!195 = distinct !{!195, !"dx.controlflow.hints", i32 1}
!196 = distinct !{!196, !"dx.controlflow.hints", i32 1}
!197 = distinct !{!197, !"dx.controlflow.hints", i32 1}
!198 = distinct !{!198, !"dx.controlflow.hints", i32 2}
!199 = distinct !{!199, !"dx.controlflow.hints", i32 1}

