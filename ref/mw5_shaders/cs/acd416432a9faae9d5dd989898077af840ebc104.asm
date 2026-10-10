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
; shader hash: bd8f04afd91929e3391aa802660f7a84
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 3
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 1
  %57 = mul i32 %56, %54
  %58 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.i32 %58, 1
  %60 = mul i32 %57, %59
  %61 = add i32 %60, %49
  %62 = shl i32 %61, 2
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %62, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 0
  %65 = and i32 %64, 255
  %66 = lshr i32 %64, 8
  %67 = and i32 %66, 255
  %68 = lshr i32 %64, 16
  %69 = and i32 %68, 255
  %70 = shl nuw nsw i32 %65, 2
  %71 = shl nuw nsw i32 %67, 2
  %72 = shl nuw nsw i32 %69, 2
  %73 = add i32 %70, %46
  %74 = add i32 %71, %47
  %75 = add i32 %72, %48
  %76 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.i32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.i32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.i32 %76, 2
  %80 = icmp uge i32 %73, %77
  %81 = icmp uge i32 %74, %78
  %82 = icmp uge i32 %75, %79
  %83 = or i1 %80, %81
  %84 = or i1 %82, %83
  %85 = xor i1 %84, true
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 3
  %88 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %74, i32 %87)  ; UMad(a,b,c)
  %89 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %73, i32 %88)  ; UMad(a,b,c)
  %90 = mul i32 %89, -63
  %91 = lshr i32 %90, 17
  %92 = xor i32 %91, %90
  %93 = mul i32 %92, -511
  %94 = mul i32 %92, -8176
  %95 = xor i32 %93, %94
  %96 = mul i32 %95, -7
  %97 = mul i32 %95, -7168
  %98 = xor i32 %96, %97
  %99 = lshr i32 %98, 15
  %100 = xor i32 %99, %96
  %101 = and i32 %100, 127
  %102 = mul i32 %101, 3
  %103 = add i32 0, %102
  %104 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %103
  %105 = load float, float* %104, align 4
  %106 = mul i32 %101, 3
  %107 = add i32 1, %106
  %108 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %107
  %109 = load float, float* %108, align 4
  %110 = mul i32 %101, 3
  %111 = add i32 2, %110
  %112 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %111
  %113 = load float, float* %112, align 4
  %114 = uitofp i32 %87 to float
  %115 = fmul fast float %114, 0x3FEA36A940000000
  %116 = fmul fast float %114, 0x3FE5793080000000
  %117 = fmul fast float %114, 0x3FE1972580000000
  %118 = fadd fast float %105, %115
  %119 = fadd fast float %109, %116
  %120 = fadd fast float %113, %117
  %121 = call float @dx.op.unary.f32(i32 22, float %118)  ; Frc(value)
  %122 = call float @dx.op.unary.f32(i32 22, float %119)  ; Frc(value)
  %123 = call float @dx.op.unary.f32(i32 22, float %120)  ; Frc(value)
  %124 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %73, i32 %74, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = fcmp fast ogt float %125, -1.000000e+00
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %129 = select i1 %126, float %128, float 1.000000e+00
  %130 = fadd fast float %125, 1.000000e+00
  %131 = fmul fast float %129, %130
  %132 = uitofp i32 %73 to float
  %133 = uitofp i32 %74 to float
  %134 = uitofp i32 %75 to float
  %135 = fadd fast float %132, -5.000000e-01
  %136 = fadd fast float %135, %121
  %137 = fadd fast float %133, -5.000000e-01
  %138 = fadd fast float %137, %122
  %139 = fadd fast float %134, -5.000000e-01
  %140 = fadd fast float %139, %123
  %141 = fadd fast float %136, 5.000000e-01
  %142 = fadd fast float %138, 5.000000e-01
  %143 = fadd fast float %140, 5.000000e-01
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fmul fast float %145, %141
  %149 = fmul fast float %146, %142
  %150 = fmul fast float %147, %143
  %151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.i32 %151, 0
  %153 = uitofp i32 %152 to float
  %154 = fmul fast float %153, %150
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = fmul fast float %154, %157
  %159 = call float @dx.op.unary.f32(i32 21, float %158)  ; Exp(value)
  %160 = fmul fast float %159, %156
  %161 = fsub fast float 4.000000e+00, %156
  %162 = fadd fast float %161, %160
  %163 = call float @dx.op.binary.f32(i32 36, float %162, float %131)  ; FMin(a,b)
  %164 = fmul fast float %148, 2.000000e+00
  %165 = fmul fast float %149, 2.000000e+00
  %166 = fsub fast float 1.000000e+00, %164
  %167 = fsub fast float 1.000000e+00, %165
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = fmul fast float %169, %166
  %173 = fmul fast float %170, %166
  %174 = fmul fast float %171, %166
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = fmul fast float %176, %167
  %180 = fmul fast float %177, %167
  %181 = fmul fast float %178, %167
  %182 = fadd fast float %179, %172
  %183 = fadd fast float %180, %173
  %184 = fadd fast float %181, %174
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = fadd fast float %182, %186
  %190 = fadd fast float %183, %187
  %191 = fadd fast float %184, %188
  %192 = fmul fast float %189, %163
  %193 = fmul fast float %190, %163
  %194 = fmul fast float %191, %163
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = fadd fast float %192, %196
  %200 = fadd fast float %193, %197
  %201 = fadd fast float %194, %198
  %202 = add i32 %75, 1
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %157, %203
  %205 = call float @dx.op.unary.f32(i32 21, float %204)  ; Exp(value)
  %206 = fmul fast float %157, %134
  %207 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %208 = fsub fast float %205, %207
  %209 = fmul fast float %156, %208
  %210 = call float @dx.op.dot3.f32(i32 55, float %192, float %193, float %194, float %192, float %193, float %194)  ; Dot3(ax,ay,az,bx,by,bz)
  %211 = call float @dx.op.unary.f32(i32 25, float %210)  ; Rsqrt(value)
  %212 = fmul fast float %211, %192
  %213 = fmul fast float %211, %193
  %214 = fmul fast float %211, %194
  %215 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %216 = fmul fast float %215, 0x3FE62E4300000000
  %217 = fmul fast float %216, %216
  %218 = select i1 %84, float 0.000000e+00, float 1.000000e+00
  %219 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %50
  store float %218, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  %220 = fmul fast float %216, %218
  %221 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %50
  store float %220, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  %222 = fmul fast float %217, %218
  %223 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %50
  store float %222, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %224 = xor i32 %50, 4
  %225 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %224
  %226 = load float, float addrspace(3)* %225, align 4, !tbaa !61, !noalias !65
  %227 = fadd fast float %226, %218
  %228 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %224
  %229 = load float, float addrspace(3)* %228, align 4, !tbaa !61, !noalias !65
  %230 = fadd fast float %229, %216
  %231 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %224
  %232 = load float, float addrspace(3)* %231, align 4, !tbaa !61, !noalias !65
  %233 = fadd fast float %232, %217
  store float %227, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  store float %230, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  store float %233, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %234 = xor i32 %50, 16
  %235 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %234
  %236 = load float, float addrspace(3)* %235, align 4, !tbaa !61, !noalias !65
  %237 = fadd fast float %236, %227
  %238 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %234
  %239 = load float, float addrspace(3)* %238, align 4, !tbaa !61, !noalias !65
  %240 = fadd fast float %239, %230
  %241 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %234
  %242 = load float, float addrspace(3)* %241, align 4, !tbaa !61, !noalias !65
  %243 = fadd fast float %242, %233
  store float %237, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  store float %240, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  store float %243, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %244 = xor i32 %50, 1
  %245 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %244
  %246 = load float, float addrspace(3)* %245, align 4, !tbaa !61, !noalias !65
  %247 = fadd fast float %246, %237
  %248 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %244
  %249 = load float, float addrspace(3)* %248, align 4, !tbaa !61, !noalias !65
  %250 = fadd fast float %249, %240
  %251 = fdiv fast float %250, %247
  %252 = and i32 %73, 1
  %253 = and i32 %252, %74
  %254 = and i32 %253, %75
  %255 = icmp ne i32 %254, 0
  %256 = and i1 %255, %85
  br i1 %256, label %257, label %265, !dx.controlflow.hints !69

; <label>:257                                     ; preds = %0
  %258 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %244
  %259 = load float, float addrspace(3)* %258, align 4, !tbaa !61, !noalias !65
  %260 = fadd fast float %259, %243
  %261 = fdiv fast float %260, %247
  %262 = lshr i32 %73, 1
  %263 = lshr i32 %74, 1
  %264 = lshr i32 %75, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %262, i32 %263, i32 %264, float %251, float %261, float %251, float %251, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %265

; <label>:265                                     ; preds = %257, %0
  br i1 %84, label %267, label %266, !dx.controlflow.hints !70

; <label>:266                                     ; preds = %265
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %73, i32 %74, i32 %75, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %267

; <label>:267                                     ; preds = %266, %265
  store float %218, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  store float 0.000000e+00, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  store float 0.000000e+00, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %268 = load float, float addrspace(3)* %225, align 4, !tbaa !61, !noalias !65
  %269 = fadd fast float %268, %218
  %270 = load float, float addrspace(3)* %228, align 4, !tbaa !61, !noalias !65
  %271 = load float, float addrspace(3)* %231, align 4, !tbaa !61, !noalias !65
  store float %269, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  store float %270, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  store float %271, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %272 = load float, float addrspace(3)* %235, align 4, !tbaa !61, !noalias !65
  %273 = fadd fast float %272, %269
  %274 = load float, float addrspace(3)* %238, align 4, !tbaa !61, !noalias !65
  %275 = fadd fast float %274, %270
  %276 = load float, float addrspace(3)* %241, align 4, !tbaa !61, !noalias !65
  %277 = fadd fast float %276, %271
  store float %273, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  store float %275, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  store float %277, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = load float, float addrspace(3)* %245, align 4, !tbaa !61, !noalias !65
  %279 = fadd fast float %278, %273
  %280 = load float, float addrspace(3)* %248, align 4, !tbaa !61, !noalias !65
  %281 = fadd fast float %280, %275
  %282 = fdiv fast float %281, %279
  br i1 %256, label %283, label %291, !dx.controlflow.hints !71

; <label>:283                                     ; preds = %267
  %284 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %244
  %285 = load float, float addrspace(3)* %284, align 4, !tbaa !61, !noalias !65
  %286 = fadd fast float %285, %277
  %287 = fdiv fast float %286, %279
  %288 = lshr i32 %73, 1
  %289 = lshr i32 %74, 1
  %290 = lshr i32 %75, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %288, i32 %289, i32 %290, float %282, float %287, float %282, float %282, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %291

; <label>:291                                     ; preds = %283, %267
  br i1 %84, label %293, label %292, !dx.controlflow.hints !72

; <label>:292                                     ; preds = %291
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %73, i32 %74, i32 %75, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %293

; <label>:293                                     ; preds = %292, %291
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %296 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %297 = fsub fast float %201, %295
  %298 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %297)  ; FMax(a,b)
  %299 = fmul fast float %298, 0x3FF7154760000000
  %300 = fmul fast float %299, %296
  %301 = call float @dx.op.unary.f32(i32 21, float %300)  ; Exp(value)
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %308 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %309 = fmul fast float %308, %301
  %310 = fmul fast float %309, %303
  %311 = fmul fast float %309, %304
  %312 = fmul fast float %309, %305
  %313 = fmul fast float %309, %307
  %314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.i32 %314, 2
  %316 = extractvalue %dx.types.CBufRet.i32 %314, 3
  %317 = call i32 @dx.op.tertiary.i32(i32 49, i32 %67, i32 %315, i32 %65)  ; UMad(a,b,c)
  %318 = call i32 @dx.op.tertiary.i32(i32 49, i32 %69, i32 %316, i32 %317)  ; UMad(a,b,c)
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %318, i32 0)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = fadd fast float %132, 1.000000e+00
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = fmul fast float %327, %140
  %329 = call float @dx.op.unary.f32(i32 21, float %328)  ; Exp(value)
  %330 = fmul fast float %329, %326
  %331 = fsub fast float 4.000000e+00, %326
  %332 = fadd fast float %331, %330
  %333 = fmul fast float %321, 2.000000e+00
  %334 = fmul fast float %333, %323
  %335 = fmul fast float %133, 2.000000e+00
  %336 = fmul fast float %335, %324
  %337 = fsub fast float 1.000000e+00, %334
  %338 = fsub fast float 1.000000e+00, %336
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %343 = fmul fast float %340, %337
  %344 = fmul fast float %341, %337
  %345 = fmul fast float %342, %337
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %349 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %350 = fmul fast float %347, %338
  %351 = fmul fast float %348, %338
  %352 = fmul fast float %349, %338
  %353 = fadd fast float %350, %343
  %354 = fadd fast float %351, %344
  %355 = fadd fast float %352, %345
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fadd fast float %353, %357
  %361 = fadd fast float %354, %358
  %362 = fadd fast float %355, %359
  %363 = fadd fast float %133, 1.000000e+00
  %364 = fmul fast float %132, 2.000000e+00
  %365 = fmul fast float %364, %323
  %366 = fmul fast float %363, 2.000000e+00
  %367 = fmul fast float %366, %324
  %368 = fsub fast float 1.000000e+00, %365
  %369 = fsub fast float 1.000000e+00, %367
  %370 = fmul fast float %340, %368
  %371 = fmul fast float %341, %368
  %372 = fmul fast float %342, %368
  %373 = fmul fast float %347, %369
  %374 = fmul fast float %348, %369
  %375 = fmul fast float %349, %369
  %376 = fadd fast float %373, %370
  %377 = fadd fast float %374, %371
  %378 = fadd fast float %375, %372
  %379 = fadd fast float %376, %357
  %380 = fadd fast float %377, %358
  %381 = fadd fast float %378, %359
  %382 = fmul fast float %379, %332
  %383 = fmul fast float %380, %332
  %384 = fmul fast float %381, %332
  %385 = fadd fast float %379, %360
  %386 = fmul fast float %332, %385
  %387 = fadd fast float %380, %361
  %388 = fmul fast float %332, %387
  %389 = fadd fast float %381, %362
  %390 = fmul fast float %332, %389
  %391 = fmul fast float %386, 5.000000e-01
  %392 = fmul fast float %388, 5.000000e-01
  %393 = fmul fast float %390, 5.000000e-01
  %394 = fsub fast float %391, %382
  %395 = fsub fast float %392, %383
  %396 = fsub fast float %393, %384
  %397 = call float @dx.op.dot3.f32(i32 55, float %394, float %395, float %396, float %394, float %395, float %396)  ; Dot3(ax,ay,az,bx,by,bz)
  %398 = call float @dx.op.unary.f32(i32 25, float %397)  ; Rsqrt(value)
  %399 = fmul fast float %397, 2.000000e+00
  %400 = fmul fast float %399, %398
  %401 = call float @dx.op.binary.f32(i32 35, float %209, float %400)  ; FMax(a,b)
  %402 = and i32 %320, 8
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %620, label %404, !dx.controlflow.hints !73

; <label>:404                                     ; preds = %293
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %412 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %413 = fsub fast float %199, %410
  %414 = fsub fast float %200, %411
  %415 = fsub fast float %201, %412
  %416 = fmul fast float %413, %406
  %417 = fmul fast float %414, %407
  %418 = fmul fast float %415, %408
  %419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.i32 %419, 3
  %421 = icmp eq i32 %420, 0
  %422 = fcmp fast oge float %418, 0.000000e+00
  %423 = fcmp fast ole float %418, 1.000000e+00
  br i1 %421, label %426, label %424, !dx.controlflow.hints !74

; <label>:424                                     ; preds = %404
  %425 = and i1 %422, %423
  br label %436

; <label>:426                                     ; preds = %404
  %427 = fcmp fast oge float %416, 0.000000e+00
  %428 = fcmp fast oge float %417, 0.000000e+00
  %429 = and i1 %427, %428
  %430 = and i1 %422, %429
  %431 = fcmp fast ole float %416, 1.000000e+00
  %432 = fcmp fast ole float %417, 1.000000e+00
  %433 = and i1 %431, %432
  %434 = and i1 %423, %433
  %435 = and i1 %430, %434
  br label %436

; <label>:436                                     ; preds = %426, %424
  %437 = phi i1 [ %425, %424 ], [ %435, %426 ]
  br i1 %437, label %438, label %613, !dx.controlflow.hints !75

; <label>:438                                     ; preds = %436
  %439 = fcmp fast oeq float %401, 0.000000e+00
  br i1 %439, label %454, label %440, !dx.controlflow.hints !76

; <label>:440                                     ; preds = %438
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %443 = fmul fast float %442, %401
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %447 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %448 = fmul fast float %445, %443
  %449 = fmul fast float %446, %443
  %450 = fmul fast float %447, %443
  %451 = call float @dx.op.unary.f32(i32 23, float %448)  ; Log(value)
  %452 = call float @dx.op.unary.f32(i32 23, float %449)  ; Log(value)
  %453 = call float @dx.op.unary.f32(i32 23, float %450)  ; Log(value)
  br label %454

; <label>:454                                     ; preds = %440, %438
  %455 = phi float [ %451, %440 ], [ 0.000000e+00, %438 ]
  %456 = phi float [ %452, %440 ], [ 0.000000e+00, %438 ]
  %457 = phi float [ %453, %440 ], [ 0.000000e+00, %438 ]
  %458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.i32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.i32 %458, 1
  %461 = uitofp i32 %459 to float
  %462 = uitofp i32 %460 to float
  %463 = fmul fast float %416, %461
  %464 = fmul fast float %417, %462
  %465 = fadd fast float %463, 5.000000e-01
  %466 = fadd fast float %464, 5.000000e-01
  %467 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %468 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %469 = call float @dx.op.unary.f32(i32 27, float %465)  ; Round_ni(value)
  %470 = call float @dx.op.unary.f32(i32 27, float %466)  ; Round_ni(value)
  %471 = fadd fast float %469, 1.000000e+00
  %472 = fadd fast float %470, 1.000000e+00
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 0
  %475 = extractvalue %dx.types.CBufRet.f32 %473, 1
  %476 = fmul fast float %474, %471
  %477 = fmul fast float %475, %472
  %478 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %27, %dx.types.Handle %40, float %476, float %477, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = extractvalue %dx.types.CBufRet.i32 %458, 2
  %484 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %485 = uitofp i32 %483 to float
  %486 = fadd fast float %485, -1.000000e+00
  %487 = fmul fast float %486, %479
  %488 = fmul fast float %486, %480
  %489 = fmul fast float %486, %481
  %490 = fmul fast float %486, %482
  %491 = fadd fast float %487, 5.000000e-01
  %492 = fadd fast float %488, 5.000000e-01
  %493 = fadd fast float %489, 5.000000e-01
  %494 = fadd fast float %490, 5.000000e-01
  %495 = fptoui float %491 to i32
  %496 = fptoui float %492 to i32
  %497 = fptoui float %493 to i32
  %498 = fptoui float %494 to i32
  %499 = uitofp i32 %495 to float
  %500 = uitofp i32 %496 to float
  %501 = uitofp i32 %497 to float
  %502 = uitofp i32 %498 to float
  %503 = fadd fast float %499, 5.000000e-01
  %504 = fadd fast float %500, 5.000000e-01
  %505 = fadd fast float %501, 5.000000e-01
  %506 = fadd fast float %502, 5.000000e-01
  %507 = fmul fast float %503, %484
  %508 = fmul fast float %504, %484
  %509 = fmul fast float %505, %484
  %510 = fmul fast float %506, %484
  %511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %507, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %508, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %509, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %510, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = fsub fast float %516, %518
  %520 = fmul fast float %519, %467
  %521 = fadd fast float %520, %518
  %522 = fsub fast float %514, %512
  %523 = fmul fast float %522, %467
  %524 = fadd fast float %523, %512
  %525 = fsub fast float %524, %521
  %526 = fmul fast float %525, %468
  %527 = fadd fast float %526, %521
  %528 = fcmp fast ogt float %527, 0.000000e+00
  br i1 %528, label %529, label %597, !dx.controlflow.hints !77

; <label>:529                                     ; preds = %454
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %533 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %537 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %538 = fmul fast float %414, %406
  %539 = fmul fast float %415, %406
  %540 = fadd fast float %416, %535
  %541 = fadd fast float %538, %536
  %542 = fadd fast float %539, %537
  %543 = fmul fast float %540, %531
  %544 = fmul fast float %541, %531
  %545 = fmul fast float %542, %531
  %546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %543, float %544, float %545, float undef, i32 0, i32 0, i32 0, float %455)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = fmul fast float %540, %532
  %549 = fmul fast float %541, %532
  %550 = fmul fast float %542, %532
  %551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %548, float %549, float %550, float undef, i32 0, i32 0, i32 0, float %456)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 1
  %553 = fmul fast float %540, %533
  %554 = fmul fast float %541, %533
  %555 = fmul fast float %542, %533
  %556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %553, float %554, float %555, float undef, i32 0, i32 0, i32 0, float %457)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 2
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %560 = fmul fast float %552, %547
  %561 = fmul fast float %560, %557
  %562 = call float @dx.op.unary.f32(i32 23, float %561)  ; Log(value)
  %563 = fmul fast float %562, %559
  %564 = call float @dx.op.unary.f32(i32 21, float %563)  ; Exp(value)
  %565 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %566 = fmul fast float %527, %527
  %567 = fmul fast float %566, %564
  %568 = fmul fast float %567, %565
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 3
  %571 = fmul fast float %570, %568
  %572 = bitcast float %571 to i32
  %573 = sitofp i32 %572 to float
  %574 = fptosi float %573 to i32
  %575 = bitcast i32 %574 to float
  %576 = fsub fast float 1.000000e+00, %568
  %577 = bitcast float %576 to i32
  %578 = sitofp i32 %577 to float
  %579 = fptosi float %578 to i32
  %580 = bitcast i32 %579 to float
  %581 = fadd fast float %575, %580
  %582 = bitcast float %581 to i32
  %583 = sub nsw i32 2129859010, %582
  %584 = bitcast i32 %583 to float
  %585 = fmul fast float %584, %575
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = fmul fast float %585, %589
  %591 = fadd fast float %590, 1.000000e+00
  %592 = bitcast float %591 to i32
  %593 = sub nsw i32 2129859010, %592
  %594 = bitcast i32 %593 to float
  %595 = fmul fast float %585, %587
  %596 = fmul fast float %595, %594
  br label %597

; <label>:597                                     ; preds = %529, %454
  %598 = phi float [ %596, %529 ], [ %527, %454 ]
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %601 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %602 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %605 = fmul fast float %600, %598
  %606 = fmul fast float %601, %598
  %607 = fmul fast float %602, %598
  %608 = fadd fast float %605, %310
  %609 = fadd fast float %606, %311
  %610 = fadd fast float %607, %312
  %611 = fmul fast float %604, %598
  %612 = fadd fast float %611, %313
  br label %613

; <label>:613                                     ; preds = %597, %436
  %614 = phi float [ %608, %597 ], [ %310, %436 ]
  %615 = phi float [ %609, %597 ], [ %311, %436 ]
  %616 = phi float [ %610, %597 ], [ %312, %436 ]
  %617 = phi float [ %612, %597 ], [ %313, %436 ]
  %618 = phi float [ %598, %597 ], [ 0.000000e+00, %436 ]
  %619 = fadd fast float %618, %309
  br label %620

; <label>:620                                     ; preds = %613, %293
  %621 = phi float [ %614, %613 ], [ %310, %293 ]
  %622 = phi float [ %615, %613 ], [ %311, %293 ]
  %623 = phi float [ %616, %613 ], [ %312, %293 ]
  %624 = phi float [ %617, %613 ], [ %313, %293 ]
  %625 = phi float [ %619, %613 ], [ %309, %293 ]
  %626 = phi float [ %618, %613 ], [ 0.000000e+00, %293 ]
  %627 = and i32 %320, 2
  %628 = icmp ne i32 %627, 0
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 2
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 2
  %633 = fadd fast float %632, %630
  %634 = fcmp fast ole float %201, %633
  %635 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.i32 %635, 3
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %657, !dx.controlflow.hints !78

; <label>:638                                     ; preds = %620
  %639 = extractvalue %dx.types.CBufRet.f32 %629, 0
  %640 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %641 = fsub fast float %199, %639
  %642 = fsub fast float %200, %640
  %643 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %645 = fdiv fast float 1.000000e+00, %643
  %646 = fdiv fast float 1.000000e+00, %644
  %647 = fmul fast float %641, %645
  %648 = fmul fast float %646, %642
  %649 = fcmp fast oge float %647, 0.000000e+00
  %650 = fcmp fast oge float %648, 0.000000e+00
  %651 = and i1 %649, %650
  %652 = and i1 %634, %651
  %653 = fcmp fast ole float %647, 1.000000e+00
  %654 = fcmp fast ole float %648, 1.000000e+00
  %655 = and i1 %653, %654
  %656 = and i1 %655, %652
  br label %657

; <label>:657                                     ; preds = %638, %620
  %658 = phi i1 [ %656, %638 ], [ %634, %620 ]
  %659 = and i1 %628, %658
  br i1 %659, label %660, label %839, !dx.controlflow.hints !79

; <label>:660                                     ; preds = %657
  %661 = fcmp fast oeq float %401, 0.000000e+00
  br i1 %661, label %667, label %662, !dx.controlflow.hints !80

; <label>:662                                     ; preds = %660
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 3
  %665 = fmul fast float %664, %401
  %666 = call float @dx.op.unary.f32(i32 23, float %665)  ; Log(value)
  br label %667

; <label>:667                                     ; preds = %662, %660
  %668 = phi float [ %666, %662 ], [ 0.000000e+00, %660 ]
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %672 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %673 = fsub fast float %199, %670
  %674 = fsub fast float %200, %671
  %675 = fsub fast float %201, %672
  %676 = fmul fast float %673, %673
  %677 = fmul fast float %674, %674
  %678 = fadd fast float %676, %677
  %679 = fmul fast float %675, %675
  %680 = fadd fast float %678, %679
  %681 = call float @dx.op.unary.f32(i32 24, float %680)  ; Sqrt(value)
  %682 = extractvalue %dx.types.CBufRet.f32 %629, 0
  %683 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %684 = fsub fast float %199, %682
  %685 = fsub fast float %200, %683
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %689 = fmul fast float %684, %687
  %690 = fmul fast float %685, %688
  %691 = fsub fast float 1.000000e+00, %690
  br i1 %637, label %698, label %692, !dx.controlflow.hints !81

; <label>:692                                     ; preds = %667
  %693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %40, float %689, float %691, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.ResRet.f32 %693, 1
  %696 = extractvalue %dx.types.ResRet.f32 %693, 2
  %697 = extractvalue %dx.types.ResRet.f32 %693, 3
  br label %704

; <label>:698                                     ; preds = %667
  %699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %41, float %689, float %691, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = extractvalue %dx.types.ResRet.f32 %699, 1
  %702 = extractvalue %dx.types.ResRet.f32 %699, 2
  %703 = extractvalue %dx.types.ResRet.f32 %699, 3
  br label %704

; <label>:704                                     ; preds = %698, %692
  %705 = phi float [ %694, %692 ], [ %700, %698 ]
  %706 = phi float [ %695, %692 ], [ %701, %698 ]
  %707 = phi float [ %696, %692 ], [ %702, %698 ]
  %708 = phi float [ %697, %692 ], [ %703, %698 ]
  %709 = extractvalue %dx.types.CBufRet.f32 %686, 3
  %710 = fmul fast float %709, %706
  %711 = fmul fast float %710, %705
  %712 = fsub fast float %710, %711
  %713 = fcmp fast ole float %712, 0.000000e+00
  %714 = fmul fast float %709, %707
  %715 = fadd fast float %714, %630
  %716 = fdiv fast float 1.000000e+00, %712
  %717 = select i1 %713, float 1.000000e+06, float %716
  %718 = fsub fast float %201, %630
  %719 = fsub fast float %718, %711
  %720 = fmul fast float %717, %719
  %721 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %722 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %723 = fmul fast float %722, %721
  %724 = fsub fast float %722, %723
  %725 = fcmp fast olt float %201, %715
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 3
  %728 = select i1 %725, float %727, float 1.000000e+00
  %729 = extractvalue %dx.types.CBufRet.f32 %726, 1
  %730 = fcmp fast oeq float %729, 0.000000e+00
  br i1 %730, label %813, label %731, !dx.controlflow.hints !82

; <label>:731                                     ; preds = %704
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 3
  %734 = fcmp fast ogt float %733, 0.000000e+00
  %735 = extractvalue %dx.types.CBufRet.f32 %726, 2
  br i1 %734, label %736, label %766, !dx.controlflow.hints !83

; <label>:736                                     ; preds = %731
  %737 = fmul fast float %689, %733
  %738 = fmul fast float %690, %733
  %739 = fsub fast float 1.000000e+00, %738
  %740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %737, float %739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = fmul fast float %741, 2.000000e+00
  %744 = fmul fast float %742, 2.000000e+00
  %745 = fadd fast float %743, -1.000000e+00
  %746 = fadd fast float %744, -1.000000e+00
  %747 = fmul fast float %729, %199
  %748 = fmul fast float %729, %200
  %749 = fmul fast float %729, %201
  %750 = call float @dx.op.unary.f32(i32 22, float %735)  ; Frc(value)
  %751 = fmul fast float %745, %750
  %752 = fmul fast float %746, %750
  %753 = fsub fast float %747, %751
  %754 = fsub fast float %748, %752
  %755 = fadd fast float %735, 5.000000e-01
  %756 = call float @dx.op.unary.f32(i32 22, float %755)  ; Frc(value)
  %757 = fmul fast float %756, %745
  %758 = fmul fast float %756, %746
  %759 = fadd fast float %747, -5.000000e-01
  %760 = fsub fast float %759, %757
  %761 = fadd fast float %748, -5.000000e-01
  %762 = fsub fast float %761, %758
  %763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %760, float %762, float %749, float undef, i32 0, i32 0, i32 0, float %668)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = extractvalue %dx.types.ResRet.f32 %763, 1
  br label %779

; <label>:766                                     ; preds = %731
  %767 = extractvalue %dx.types.CBufRet.f32 %732, 0
  %768 = extractvalue %dx.types.CBufRet.f32 %732, 1
  %769 = extractvalue %dx.types.CBufRet.f32 %732, 2
  %770 = fmul fast float %735, %767
  %771 = fmul fast float %735, %768
  %772 = fmul fast float %735, %769
  %773 = fsub fast float %199, %770
  %774 = fsub fast float %200, %771
  %775 = fsub fast float %201, %772
  %776 = fmul fast float %773, %729
  %777 = fmul fast float %774, %729
  %778 = fmul fast float %775, %729
  br label %779

; <label>:779                                     ; preds = %766, %736
  %780 = phi float [ %753, %736 ], [ %776, %766 ]
  %781 = phi float [ %754, %736 ], [ %777, %766 ]
  %782 = phi float [ %749, %736 ], [ %778, %766 ]
  %783 = phi float [ %764, %736 ], [ 0.000000e+00, %766 ]
  %784 = phi float [ %765, %736 ], [ 0.000000e+00, %766 ]
  %785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %780, float %781, float %782, float undef, i32 0, i32 0, i32 0, float %668)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  br i1 %734, label %788, label %800, !dx.controlflow.hints !84

; <label>:788                                     ; preds = %779
  %789 = extractvalue %dx.types.CBufRet.f32 %726, 2
  %790 = call float @dx.op.unary.f32(i32 22, float %789)  ; Frc(value)
  %791 = fmul fast float %790, 2.000000e+00
  %792 = fadd fast float %791, -1.000000e+00
  %793 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %794 = fsub fast float %783, %786
  %795 = fmul fast float %793, %794
  %796 = fadd fast float %795, %786
  %797 = fsub fast float %784, %787
  %798 = fmul fast float %793, %797
  %799 = fadd fast float %798, %787
  br label %800

; <label>:800                                     ; preds = %788, %779
  %801 = phi float [ %796, %788 ], [ %786, %779 ]
  %802 = phi float [ %799, %788 ], [ %787, %779 ]
  %803 = extractvalue %dx.types.CBufRet.f32 %629, 3
  %804 = fadd fast float %803, %803
  %805 = fdiv fast float 2.000000e+00, %804
  %806 = fmul fast float %803, 2.000000e+00
  %807 = fadd fast float %801, -1.000000e+00
  %808 = fadd fast float %807, %802
  %809 = fadd fast float %808, %806
  %810 = fmul fast float %809, %805
  %811 = fadd fast float %810, -1.000000e+00
  %812 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  br label %813

; <label>:813                                     ; preds = %800, %704
  %814 = phi float [ %812, %800 ], [ 1.000000e+00, %704 ]
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 0
  %817 = extractvalue %dx.types.CBufRet.f32 %815, 1
  %818 = extractvalue %dx.types.CBufRet.f32 %815, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 1
  %822 = fsub fast float %681, %821
  %823 = extractvalue %dx.types.CBufRet.f32 %820, 2
  %824 = fmul fast float %822, %823
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %826 = fmul fast float %728, %708
  %827 = fmul fast float %826, %724
  %828 = fmul fast float %827, %814
  %829 = fmul fast float %828, %825
  %830 = fmul fast float %829, %816
  %831 = fmul fast float %829, %817
  %832 = fmul fast float %829, %818
  %833 = fadd fast float %830, %621
  %834 = fadd fast float %831, %622
  %835 = fadd fast float %832, %623
  %836 = fmul fast float %829, %819
  %837 = fadd fast float %836, %624
  %838 = fadd fast float %829, %625
  br label %839

; <label>:839                                     ; preds = %813, %657
  %840 = phi float [ %833, %813 ], [ %621, %657 ]
  %841 = phi float [ %834, %813 ], [ %622, %657 ]
  %842 = phi float [ %835, %813 ], [ %623, %657 ]
  %843 = phi float [ %837, %813 ], [ %624, %657 ]
  %844 = phi float [ %838, %813 ], [ %625, %657 ]
  %845 = and i32 %320, 1
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %1123, label %847, !dx.controlflow.hints !85

; <label>:847                                     ; preds = %839
  %848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.i32 %848, 1
  %850 = and i32 %849, 1
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %927, label %852, !dx.controlflow.hints !86

; <label>:852                                     ; preds = %847
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 3
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %853, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %853, 2
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %864 = extractvalue %dx.types.CBufRet.f32 %861, 2
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 3
  %867 = and i32 %849, 2
  %868 = extractvalue %dx.types.CBufRet.i32 %848, 0
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %906, label %870

; <label>:870                                     ; preds = %852
  br label %871

; <label>:871                                     ; preds = %871, %870
  %872 = phi float [ %900, %871 ], [ 0.000000e+00, %870 ]
  %873 = phi float [ %899, %871 ], [ 1.000000e+06, %870 ]
  %874 = phi i32 [ %901, %871 ], [ 0, %870 ]
  %875 = add i32 %874, 171
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %875)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %878 = extractvalue %dx.types.CBufRet.f32 %876, 1
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %881 = extractvalue %dx.types.CBufRet.f32 %876, 2
  %882 = fsub fast float %199, %877
  %883 = fsub fast float %200, %878
  %884 = fmul fast float %882, %882
  %885 = fmul fast float %883, %883
  %886 = fadd fast float %884, %885
  %887 = call float @dx.op.unary.f32(i32 24, float %886)  ; Sqrt(value)
  %888 = fsub fast float %887, %881
  %889 = icmp ne i32 %867, 0
  %890 = fsub fast float -0.000000e+00, %857
  %891 = select i1 %889, float %890, float %857
  %892 = fmul fast float %888, %891
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %894 = fmul fast float %893, %856
  %895 = fsub fast float %880, %201
  %896 = fmul fast float %895, %854
  %897 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %898 = fmul fast float %894, %897
  %899 = call float @dx.op.binary.f32(i32 36, float %873, float %888)  ; FMin(a,b)
  %900 = call float @dx.op.binary.f32(i32 35, float %872, float %898)  ; FMax(a,b)
  %901 = add nuw nsw i32 %874, 1
  %902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.i32 %902, 0
  %904 = icmp ult i32 %901, %903
  br i1 %904, label %871, label %905

; <label>:905                                     ; preds = %871
  br label %906

; <label>:906                                     ; preds = %905, %852
  %907 = phi float [ 0.000000e+00, %852 ], [ %900, %905 ]
  %908 = phi float [ 1.000000e+06, %852 ], [ %899, %905 ]
  %909 = fadd fast float %907, %844
  %910 = fmul fast float %908, %866
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = fsub fast float %862, %858
  %913 = fsub fast float %863, %859
  %914 = fsub fast float %864, %860
  %915 = fmul fast float %911, %912
  %916 = fmul fast float %911, %913
  %917 = fmul fast float %911, %914
  %918 = fadd fast float %915, %858
  %919 = fadd fast float %916, %859
  %920 = fadd fast float %917, %860
  %921 = fmul fast float %918, %907
  %922 = fmul fast float %919, %907
  %923 = fmul fast float %920, %907
  %924 = fadd fast float %921, %840
  %925 = fadd fast float %922, %841
  %926 = fadd fast float %923, %842
  br label %1123

; <label>:927                                     ; preds = %847
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 3
  %931 = fmul fast float %929, %199
  %932 = fmul fast float %930, %200
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %935 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %936 = fadd fast float %931, %934
  %937 = fadd fast float %932, %935
  %938 = call float @dx.op.unary.f32(i32 7, float %936)  ; Saturate(value)
  %939 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %938, float %939, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %941 = extractvalue %dx.types.ResRet.f32 %940, 0
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = fmul fast float %943, %941
  %945 = fsub fast float %936, %938
  %946 = fsub fast float %937, %939
  %947 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %948 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %949 = fmul fast float %947, %945
  %950 = fmul fast float %948, %946
  %951 = fmul fast float %949, %949
  %952 = fmul fast float %950, %950
  %953 = fadd fast float %951, %952
  %954 = call float @dx.op.unary.f32(i32 24, float %953)  ; Sqrt(value)
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 3
  %957 = fmul fast float %956, %954
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  %959 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %960 = fsub fast float %959, %944
  %961 = fmul fast float %960, %958
  %962 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %963 = fsub fast float %201, %944
  %964 = fsub fast float %963, %962
  %965 = fsub fast float %964, %961
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %968 = fsub fast float %965, %967
  %969 = fcmp fast olt float %968, 0.000000e+00
  %970 = extractvalue %dx.types.CBufRet.i32 %848, 0
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %1022, label %972

; <label>:972                                     ; preds = %927
  br label %973

; <label>:973                                     ; preds = %1011, %972
  %974 = phi i32 [ %1017, %1011 ], [ 1, %972 ]
  %975 = phi i32 [ %1018, %1011 ], [ 0, %972 ]
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 1
  %978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.i32 %978, 1
  %980 = and i32 %979, 8
  %981 = icmp eq i32 %980, 0
  %982 = fcmp fast ogt float %977, %965
  %983 = or i1 %982, %981
  %984 = add i32 %975, 171
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %984)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %988 = extractvalue %dx.types.CBufRet.f32 %985, 2
  br i1 %983, label %989, label %995, !dx.controlflow.hints !87

; <label>:989                                     ; preds = %973
  %990 = fsub fast float %986, %199
  %991 = fsub fast float %987, %200
  %992 = fmul fast float %990, %990
  %993 = fmul fast float %991, %991
  %994 = fadd fast float %992, %993
  br label %1011

; <label>:995                                     ; preds = %973
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %998 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %999 = fmul fast float %998, %997
  %1000 = fsub fast float %999, %977
  %1001 = fdiv fast float %988, %1000
  %1002 = fsub fast float %199, %986
  %1003 = fsub fast float %200, %987
  %1004 = fsub fast float %965, %977
  %1005 = fmul fast float %1001, %1004
  %1006 = fmul fast float %1002, %1002
  %1007 = fmul fast float %1003, %1003
  %1008 = fadd fast float %1006, %1007
  %1009 = fmul fast float %1005, %1005
  %1010 = fadd fast float %1008, %1009
  br label %1011

; <label>:1011                                    ; preds = %995, %989
  %1012 = phi float [ %994, %989 ], [ %1010, %995 ]
  %1013 = call float @dx.op.unary.f32(i32 24, float %1012)  ; Sqrt(value)
  %1014 = fsub float %988, %1013
  %1015 = fcmp fast olt float %1014, 0.000000e+00
  %1016 = zext i1 %1015 to i32
  %1017 = and i32 %1016, %974
  %1018 = add i32 %975, 1
  %1019 = extractvalue %dx.types.CBufRet.i32 %978, 0
  %1020 = icmp ult i32 %1018, %1019
  br i1 %1020, label %973, label %1021

; <label>:1021                                    ; preds = %1011
  br label %1022

; <label>:1022                                    ; preds = %1021, %927
  %1023 = phi i32 [ 1, %927 ], [ %1017, %1021 ]
  br label %1024

; <label>:1024                                    ; preds = %1024, %1022
  %1025 = phi i32 [ %1061, %1024 ], [ %1023, %1022 ]
  %1026 = phi i32 [ %1062, %1024 ], [ 0, %1022 ]
  %1027 = add nuw nsw i32 %1026, 191
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %1027)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1032 = add nuw nsw i32 %1026, 195
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %1032)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.CBufRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1037 = fsub fast float %199, %1029
  %1038 = fsub fast float %200, %1030
  %1039 = fsub fast float %965, %1031
  %1040 = call float @dx.op.unary.f32(i32 6, float %1037)  ; FAbs(value)
  %1041 = call float @dx.op.unary.f32(i32 6, float %1038)  ; FAbs(value)
  %1042 = call float @dx.op.unary.f32(i32 6, float %1039)  ; FAbs(value)
  %1043 = fsub fast float %1040, %1034
  %1044 = fsub fast float %1041, %1035
  %1045 = fsub fast float %1042, %1036
  %1046 = call float @dx.op.binary.f32(i32 35, float %1043, float 0.000000e+00)  ; FMax(a,b)
  %1047 = call float @dx.op.binary.f32(i32 35, float %1044, float 0.000000e+00)  ; FMax(a,b)
  %1048 = call float @dx.op.binary.f32(i32 35, float %1045, float 0.000000e+00)  ; FMax(a,b)
  %1049 = fmul fast float %1046, %1046
  %1050 = fmul fast float %1047, %1047
  %1051 = fadd fast float %1050, %1049
  %1052 = fmul fast float %1048, %1048
  %1053 = fadd fast float %1051, %1052
  %1054 = call float @dx.op.unary.f32(i32 24, float %1053)  ; Sqrt(value)
  %1055 = call float @dx.op.binary.f32(i32 35, float %1044, float %1045)  ; FMax(a,b)
  %1056 = call float @dx.op.binary.f32(i32 35, float %1043, float %1055)  ; FMax(a,b)
  %1057 = call float @dx.op.binary.f32(i32 36, float %1056, float 0.000000e+00)  ; FMin(a,b)
  %1058 = fadd fast float %1057, %1054
  %1059 = fcmp ogt float %1058, -0.000000e+00
  %1060 = zext i1 %1059 to i32
  %1061 = and i32 %1060, %1025
  %1062 = add nuw nsw i32 %1026, 1
  %1063 = icmp eq i32 %1062, 4
  br i1 %1063, label %1064, label %1024

; <label>:1064                                    ; preds = %1024
  %1065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.i32 %1065, 1
  %1067 = lshr i32 %1066, 1
  %1068 = xor i32 %1067, %1061
  %1069 = zext i1 %969 to i32
  %1070 = and i32 %1068, %1069
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1123, label %1072, !dx.controlflow.hints !88

; <label>:1072                                    ; preds = %1064
  %1073 = fmul fast float %192, %192
  %1074 = fmul fast float %193, %193
  %1075 = fadd fast float %1073, %1074
  %1076 = fmul fast float %194, %194
  %1077 = fadd fast float %1075, %1076
  %1078 = call float @dx.op.unary.f32(i32 24, float %1077)  ; Sqrt(value)
  %1079 = and i32 %849, 4
  %1080 = icmp ne i32 %1079, 0
  %1081 = select i1 %1080, float %1078, float 1.000000e+00
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1084 = fsub fast float %1081, %1083
  %1085 = extractvalue %dx.types.CBufRet.f32 %1082, 3
  %1086 = fmul fast float %1084, %1085
  %1087 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 3
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1092 = fsub fast float %1091, %965
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 3
  %1095 = fmul fast float %1092, %1094
  %1096 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1097 = fmul fast float %1096, %1089
  %1098 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1099 = fsub fast float %1078, %1098
  %1100 = extractvalue %dx.types.CBufRet.f32 %1093, 1
  %1101 = fmul fast float %1099, %1100
  %1102 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  %1103 = fsub fast float 1.000000e+00, %1087
  %1104 = fmul fast float %1102, %1103
  %1105 = fadd fast float %1104, %1087
  %1106 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1107 = fsub fast float %1097, %1106
  %1108 = fmul fast float %1107, %1105
  %1109 = fadd fast float %1108, %1106
  %1110 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1111 = extractvalue %dx.types.CBufRet.f32 %1088, 1
  %1112 = extractvalue %dx.types.CBufRet.f32 %1088, 2
  %1113 = extractvalue %dx.types.CBufRet.f32 %1093, 2
  %1114 = fadd fast float %1109, %844
  %1115 = fmul fast float %1109, %1110
  %1116 = fmul fast float %1109, %1111
  %1117 = fmul fast float %1109, %1112
  %1118 = fadd fast float %1115, %840
  %1119 = fadd fast float %1116, %841
  %1120 = fadd fast float %1117, %842
  %1121 = fmul fast float %1109, %1113
  %1122 = fadd fast float %1121, %843
  br label %1123

; <label>:1123                                    ; preds = %1072, %1064, %906, %839
  %1124 = phi float [ %840, %839 ], [ %924, %906 ], [ %1118, %1072 ], [ %840, %1064 ]
  %1125 = phi float [ %841, %839 ], [ %925, %906 ], [ %1119, %1072 ], [ %841, %1064 ]
  %1126 = phi float [ %842, %839 ], [ %926, %906 ], [ %1120, %1072 ], [ %842, %1064 ]
  %1127 = phi float [ %843, %839 ], [ %843, %906 ], [ %1122, %1072 ], [ %843, %1064 ]
  %1128 = phi float [ %844, %839 ], [ %909, %906 ], [ %1114, %1072 ], [ %844, %1064 ]
  %1129 = and i32 %320, 16
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1922, label %1131, !dx.controlflow.hints !89

; <label>:1131                                    ; preds = %1123
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 3
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 3
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.i32 %1142, 0
  %1144 = icmp ne i32 %1143, 0
  %1145 = zext i1 %1144 to i32
  %1146 = extractvalue %dx.types.CBufRet.i32 %1142, 1
  %1147 = icmp ne i32 %1146, 0
  %1148 = zext i1 %1147 to i32
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = bitcast float %1150 to i32
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1202, label %1153

; <label>:1153                                    ; preds = %1131
  br label %1154

; <label>:1154                                    ; preds = %1197, %1153
  %1155 = phi i32 [ %1198, %1197 ], [ 0, %1153 ]
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = bitcast float %1157 to i32
  %1159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %318, i32 %1158, i32 %1155)  ; UMad(a,b,c)
  %1160 = shl i32 %1159, 2
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  br label %1163

; <label>:1163                                    ; preds = %1166, %1154
  %1164 = phi i32 [ %1162, %1154 ], [ %1171, %1166 ]
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1197, label %1166

; <label>:1166                                    ; preds = %1163
  %1167 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1164)  ; FirstbitLo(value)
  %1168 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1155, i32 %1167)  ; UMad(a,b,c)
  %1169 = and i32 %1167, 31
  %1170 = shl i32 1, %1169
  %1171 = xor i32 %1170, %1164
  %1172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1168, i32 0)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.ResRet.f32 %1172, 2
  %1176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1168, i32 16)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.ResRet.f32 %1176, 1
  %1179 = extractvalue %dx.types.ResRet.f32 %1176, 2
  %1180 = fsub fast float %1173, %1177
  %1181 = fsub fast float %1174, %1178
  %1182 = fsub fast float %1175, %1179
  %1183 = fadd fast float %1177, %1173
  %1184 = fadd fast float %1178, %1174
  %1185 = fadd fast float %1179, %1175
  %1186 = fcmp fast ogt float %199, %1180
  %1187 = fcmp fast ogt float %200, %1181
  %1188 = fcmp fast ogt float %201, %1182
  %1189 = and i1 %1186, %1187
  %1190 = and i1 %1188, %1189
  %1191 = fcmp fast olt float %199, %1183
  %1192 = fcmp fast olt float %200, %1184
  %1193 = fcmp fast olt float %201, %1185
  %1194 = and i1 %1191, %1192
  %1195 = and i1 %1193, %1194
  %1196 = and i1 %1190, %1195
  br i1 %1196, label %1200, label %1163, !dx.controlflow.hints !90

; <label>:1197                                    ; preds = %1163
  %1198 = add i32 %1155, 1
  %1199 = icmp ult i32 %1198, %1158
  br i1 %1199, label %1154, label %1201, !llvm.loop !91

; <label>:1200                                    ; preds = %1166
  br label %1202

; <label>:1201                                    ; preds = %1197
  br label %1202

; <label>:1202                                    ; preds = %1201, %1200, %1131
  %1203 = phi i32 [ 255, %1131 ], [ %1168, %1200 ], [ 255, %1201 ]
  %1204 = icmp eq i32 %1203, 255
  br i1 %1204, label %1224, label %1205, !dx.controlflow.hints !93

; <label>:1205                                    ; preds = %1202
  %1206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 32)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 132)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 136)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 152)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1203, i32 156)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1203, i32 160)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = icmp ne i32 %1217, 0
  %1221 = zext i1 %1220 to i32
  %1222 = icmp ne i32 %1219, 0
  %1223 = zext i1 %1222 to i32
  br label %1224

; <label>:1224                                    ; preds = %1205, %1202
  %1225 = phi float [ %1207, %1205 ], [ %1133, %1202 ]
  %1226 = phi float [ %1208, %1205 ], [ %1134, %1202 ]
  %1227 = phi float [ %1209, %1205 ], [ %1135, %1202 ]
  %1228 = phi float [ %1211, %1205 ], [ %1137, %1202 ]
  %1229 = phi float [ %1213, %1205 ], [ %1139, %1202 ]
  %1230 = phi float [ %1215, %1205 ], [ %1141, %1202 ]
  %1231 = phi i32 [ %1221, %1205 ], [ %1145, %1202 ]
  %1232 = phi i32 [ %1223, %1205 ], [ %1148, %1202 ]
  %1233 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1234 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1235 = fsub fast float %199, %1233
  %1236 = fsub fast float %200, %1234
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1239 = extractvalue %dx.types.CBufRet.f32 %1237, 3
  %1240 = fmul fast float %1235, %1238
  %1241 = fmul fast float %1236, %1239
  %1242 = call float @dx.op.binary.f32(i32 36, float %1240, float %1241)  ; FMin(a,b)
  %1243 = fcmp fast olt float %1242, 0.000000e+00
  %1244 = call float @dx.op.binary.f32(i32 35, float %1240, float %1241)  ; FMax(a,b)
  %1245 = fcmp fast ogt float %1244, 1.000000e+00
  %1246 = or i1 %1243, %1245
  %1247 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1248 = fcmp fast olt float %201, %1247
  %1249 = or i1 %1246, %1248
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 3
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1254 = fadd fast float %1253, %1251
  %1255 = fcmp fast ogt float %201, %1254
  %1256 = or i1 %1249, %1255
  br i1 %1256, label %1541, label %1257, !dx.controlflow.hints !94

; <label>:1257                                    ; preds = %1224
  %1258 = fsub fast float 1.000000e+00, %1241
  %1259 = extractvalue %dx.types.CBufRet.f32 %1252, 3
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1262 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1263 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.CBufRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.CBufRet.f32 %1264, 2
  %1268 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  br i1 %1204, label %1284, label %1269, !dx.controlflow.hints !95

; <label>:1269                                    ; preds = %1257
  %1270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 48)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.ResRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.ResRet.f32 %1270, 2
  %1274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 104)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 108)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 112)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  %1280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 116)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 120)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  br label %1284

; <label>:1284                                    ; preds = %1269, %1257
  %1285 = phi float [ %1277, %1269 ], [ %1259, %1257 ]
  %1286 = phi float [ %1281, %1269 ], [ %1261, %1257 ]
  %1287 = phi float [ %1283, %1269 ], [ %1262, %1257 ]
  %1288 = phi float [ %1279, %1269 ], [ %1263, %1257 ]
  %1289 = phi float [ %1271, %1269 ], [ %1265, %1257 ]
  %1290 = phi float [ %1272, %1269 ], [ %1266, %1257 ]
  %1291 = phi float [ %1273, %1269 ], [ %1267, %1257 ]
  %1292 = phi float [ %1275, %1269 ], [ %1268, %1257 ]
  %1293 = fcmp fast oeq float %1285, 0.000000e+00
  br i1 %1293, label %1409, label %1294, !dx.controlflow.hints !96

; <label>:1294                                    ; preds = %1284
  %1295 = fcmp fast ogt float %1286, 0.000000e+00
  %1296 = fcmp fast oeq float %401, 0.000000e+00
  br i1 %1296, label %1301, label %1297, !dx.controlflow.hints !80

; <label>:1297                                    ; preds = %1294
  %1298 = extractvalue %dx.types.CBufRet.f32 %1136, 1
  %1299 = fmul fast float %1298, %401
  %1300 = call float @dx.op.unary.f32(i32 23, float %1299)  ; Log(value)
  br label %1301

; <label>:1301                                    ; preds = %1297, %1294
  %1302 = phi float [ %1300, %1297 ], [ 0.000000e+00, %1294 ]
  br i1 %1296, label %1307, label %1303, !dx.controlflow.hints !80

; <label>:1303                                    ; preds = %1301
  %1304 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1305 = fmul fast float %1304, %401
  %1306 = call float @dx.op.unary.f32(i32 23, float %1305)  ; Log(value)
  br label %1307

; <label>:1307                                    ; preds = %1303, %1301
  %1308 = phi float [ %1306, %1303 ], [ 0.000000e+00, %1301 ]
  br i1 %1295, label %1309, label %1371, !dx.controlflow.hints !97

; <label>:1309                                    ; preds = %1307
  %1310 = fcmp fast ogt float %1287, 0.000000e+00
  br i1 %1310, label %1311, label %1321, !dx.controlflow.hints !98

; <label>:1311                                    ; preds = %1309
  %1312 = fmul fast float %1287, %1240
  %1313 = fmul fast float %1287, %1258
  %1314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float %1308)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.ResRet.f32 %1314, 1
  %1317 = fmul fast float %1315, 2.000000e+00
  %1318 = fmul fast float %1316, 2.000000e+00
  %1319 = fadd fast float %1317, -1.000000e+00
  %1320 = fadd fast float %1318, -1.000000e+00
  br label %1342

; <label>:1321                                    ; preds = %1309
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 3
  %1324 = fmul fast float %1323, %1240
  %1325 = fmul fast float %1323, %1258
  %1326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1324, float %1325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.ResRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.ResRet.f32 %1326, 2
  %1330 = fmul fast float %1327, 2.000000e+00
  %1331 = fmul fast float %1328, 2.000000e+00
  %1332 = fmul fast float %1329, 2.000000e+00
  %1333 = fadd fast float %1330, -1.000000e+00
  %1334 = fadd fast float %1331, -1.000000e+00
  %1335 = fadd fast float %1332, -1.000000e+00
  %1336 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1337 = fmul fast float %1333, %1336
  %1338 = fmul fast float %1334, %1336
  %1339 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1340 = fmul fast float %1339, 5.000000e-01
  %1341 = fmul fast float %1340, %1335
  br label %1342

; <label>:1342                                    ; preds = %1321, %1311
  %1343 = phi float [ %1319, %1311 ], [ %1337, %1321 ]
  %1344 = phi float [ %1320, %1311 ], [ %1338, %1321 ]
  %1345 = phi float [ 0.000000e+00, %1311 ], [ %1341, %1321 ]
  %1346 = fmul fast float %1285, %199
  %1347 = fmul fast float %1285, %200
  %1348 = fmul fast float %1285, %201
  %1349 = call float @dx.op.unary.f32(i32 22, float %1286)  ; Frc(value)
  %1350 = fmul fast float %1349, %1343
  %1351 = fmul fast float %1349, %1344
  %1352 = fmul fast float %1349, %1345
  %1353 = fsub fast float %1346, %1350
  %1354 = fsub fast float %1347, %1351
  %1355 = fsub fast float %1348, %1352
  %1356 = fadd fast float %1286, 5.000000e-01
  %1357 = call float @dx.op.unary.f32(i32 22, float %1356)  ; Frc(value)
  %1358 = fmul fast float %1357, %1343
  %1359 = fmul fast float %1357, %1344
  %1360 = fmul fast float %1357, %1345
  %1361 = fadd fast float %1346, -5.000000e-01
  %1362 = fsub fast float %1361, %1358
  %1363 = fadd fast float %1347, -5.000000e-01
  %1364 = fsub fast float %1363, %1359
  %1365 = fadd fast float %1348, -5.000000e-01
  %1366 = fsub fast float %1365, %1360
  %1367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %1362, float %1364, float %1366, float undef, i32 0, i32 0, i32 0, float %1302)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1370 = fadd fast float %1368, %1288
  br label %1381

; <label>:1371                                    ; preds = %1307
  %1372 = fmul fast float %1292, %1289
  %1373 = fmul fast float %1292, %1290
  %1374 = fmul fast float %1292, %1291
  %1375 = fsub fast float %199, %1372
  %1376 = fsub fast float %200, %1373
  %1377 = fsub fast float %201, %1374
  %1378 = fmul fast float %1375, %1285
  %1379 = fmul fast float %1376, %1285
  %1380 = fmul fast float %1377, %1285
  br label %1381

; <label>:1381                                    ; preds = %1371, %1342
  %1382 = phi float [ %1353, %1342 ], [ %1378, %1371 ]
  %1383 = phi float [ %1354, %1342 ], [ %1379, %1371 ]
  %1384 = phi float [ %1355, %1342 ], [ %1380, %1371 ]
  %1385 = phi float [ %1370, %1342 ], [ 0.000000e+00, %1371 ]
  %1386 = phi float [ %1369, %1342 ], [ 0.000000e+00, %1371 ]
  %1387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %1382, float %1383, float %1384, float undef, i32 0, i32 0, i32 0, float %1302)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = fadd fast float %1388, %1288
  br i1 %1295, label %1391, label %1402, !dx.controlflow.hints !99

; <label>:1391                                    ; preds = %1381
  %1392 = call float @dx.op.unary.f32(i32 22, float %1286)  ; Frc(value)
  %1393 = fmul fast float %1392, 2.000000e+00
  %1394 = fadd fast float %1393, -1.000000e+00
  %1395 = call float @dx.op.unary.f32(i32 6, float %1394)  ; FAbs(value)
  %1396 = fsub fast float %1385, %1390
  %1397 = fmul fast float %1395, %1396
  %1398 = fadd fast float %1397, %1390
  %1399 = fsub fast float %1386, %1389
  %1400 = fmul fast float %1395, %1399
  %1401 = fadd fast float %1400, %1389
  br label %1402

; <label>:1402                                    ; preds = %1391, %1381
  %1403 = phi float [ %1398, %1391 ], [ %1390, %1381 ]
  %1404 = phi float [ %1401, %1391 ], [ %1389, %1381 ]
  %1405 = fsub fast float %1403, %1404
  %1406 = fsub fast float 1.000000e+00, %1404
  %1407 = fdiv fast float %1405, %1406
  %1408 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  br label %1409

; <label>:1409                                    ; preds = %1402, %1284
  %1410 = phi float [ %1408, %1402 ], [ 1.000000e+00, %1284 ]
  %1411 = fcmp fast oeq float %401, 0.000000e+00
  br i1 %1411, label %1416, label %1412, !dx.controlflow.hints !80

; <label>:1412                                    ; preds = %1409
  %1413 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1414 = fmul fast float %1413, %401
  %1415 = call float @dx.op.unary.f32(i32 23, float %1414)  ; Log(value)
  br label %1416

; <label>:1416                                    ; preds = %1412, %1409
  %1417 = phi float [ %1415, %1412 ], [ 0.000000e+00, %1409 ]
  %1418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %39, float %1240, float %1258, float undef, float undef, i32 0, i32 0, i32 undef, float %1417)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1240, float %1258, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.ResRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.ResRet.f32 %1420, 2
  %1424 = extractvalue %dx.types.ResRet.f32 %1420, 3
  %1425 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1240, float %1258, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.ResRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.ResRet.f32 %1425, 2
  %1429 = extractvalue %dx.types.ResRet.f32 %1425, 3
  %1430 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1240, float %1258, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.ResRet.f32 %1430, 2
  %1434 = extractvalue %dx.types.ResRet.f32 %1430, 3
  %1435 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1240, float %1258, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.ResRet.f32 %1435, 1
  %1438 = extractvalue %dx.types.ResRet.f32 %1435, 2
  %1439 = extractvalue %dx.types.ResRet.f32 %1435, 3
  %1440 = fadd fast float %1421, %1422
  %1441 = fadd fast float %1440, %1423
  %1442 = fadd fast float %1441, %1424
  %1443 = fmul fast float %1426, %1421
  %1444 = fmul fast float %1427, %1422
  %1445 = fadd fast float %1443, %1444
  %1446 = fmul fast float %1428, %1423
  %1447 = fadd fast float %1445, %1446
  %1448 = fmul fast float %1429, %1424
  %1449 = fadd fast float %1447, %1448
  %1450 = fmul fast float %1431, %1421
  %1451 = fmul fast float %1432, %1422
  %1452 = fadd fast float %1450, %1451
  %1453 = fmul fast float %1433, %1423
  %1454 = fadd fast float %1452, %1453
  %1455 = fmul fast float %1434, %1424
  %1456 = fadd fast float %1454, %1455
  %1457 = fmul fast float %1436, %1421
  %1458 = fmul fast float %1437, %1422
  %1459 = fadd fast float %1457, %1458
  %1460 = fmul fast float %1438, %1423
  %1461 = fadd fast float %1459, %1460
  %1462 = fmul fast float %1439, %1424
  %1463 = fadd fast float %1461, %1462
  %1464 = fcmp fast ogt float %1442, 0.000000e+00
  %1465 = fdiv fast float %1449, %1442
  %1466 = select i1 %1464, float %1465, float 0.000000e+00
  %1467 = fdiv fast float %1456, %1442
  %1468 = select i1 %1464, float %1467, float 0.000000e+00
  %1469 = fdiv fast float %1463, %1442
  %1470 = select i1 %1464, float %1469, float 0.000000e+00
  %1471 = fcmp fast ogt float %201, %1468
  %1472 = fcmp fast olt float %201, %1466
  %1473 = and i1 %1472, %1471
  br i1 %1473, label %1474, label %1541, !dx.controlflow.hints !100

; <label>:1474                                    ; preds = %1416
  %1475 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 2
  %1478 = extractvalue %dx.types.CBufRet.f32 %1476, 3
  br i1 %1204, label %1489, label %1479, !dx.controlflow.hints !101

; <label>:1479                                    ; preds = %1474
  %1480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 60)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 64)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = extractvalue %dx.types.ResRet.f32 %1482, 1
  %1485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 72)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 96)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 0
  br label %1489

; <label>:1489                                    ; preds = %1479, %1474
  %1490 = phi float [ %1481, %1479 ], [ %1253, %1474 ]
  %1491 = phi float [ %1486, %1479 ], [ %1251, %1474 ]
  %1492 = phi float [ %1488, %1479 ], [ %1475, %1474 ]
  %1493 = phi float [ %1483, %1479 ], [ %1477, %1474 ]
  %1494 = phi float [ %1484, %1479 ], [ %1478, %1474 ]
  %1495 = call float @dx.op.binary.f32(i32 35, float %1419, float 0.000000e+00)  ; FMax(a,b)
  %1496 = call float @dx.op.binary.f32(i32 36, float %1495, float 1.000000e+00)  ; FMin(a,b)
  %1497 = call float @dx.op.unary.f32(i32 24, float %1496)  ; Sqrt(value)
  %1498 = call float @dx.op.binary.f32(i32 35, float %1470, float 0x3F847AE140000000)  ; FMax(a,b)
  %1499 = fsub fast float %1466, %201
  %1500 = fsub fast float %201, %1468
  %1501 = call float @dx.op.binary.f32(i32 36, float %1500, float %1499)  ; FMin(a,b)
  %1502 = fdiv fast float %1501, %1498
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1504 = fsub fast float %201, %1491
  %1505 = fdiv fast float %1504, %1490
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = fsub fast float 1.000000e+00, %1506
  %1508 = fmul float %1503, %1507
  %1509 = fmul float %1508, %1508
  %1510 = fmul fast float %1497, %1410
  %1511 = fmul fast float %1510, %1509
  %1512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.f32 %1512, 2
  %1514 = extractvalue %dx.types.CBufRet.f32 %1512, 1
  %1515 = fsub fast float %1511, %1514
  %1516 = fsub fast float %1513, %1514
  %1517 = fdiv fast float %1515, %1516
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1519 = fmul fast float %1518, %1492
  %1520 = fcmp fast ogt float %1494, 0.000000e+00
  br i1 %1520, label %1521, label %1541, !dx.controlflow.hints !102

; <label>:1521                                    ; preds = %1489
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1525 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1526 = fsub fast float %199, %1523
  %1527 = fsub fast float %200, %1524
  %1528 = fsub fast float %201, %1525
  %1529 = fmul fast float %1526, %1526
  %1530 = fmul fast float %1527, %1527
  %1531 = fadd fast float %1529, %1530
  %1532 = fmul fast float %1528, %1528
  %1533 = fadd fast float %1531, %1532
  %1534 = call float @dx.op.unary.f32(i32 24, float %1533)  ; Sqrt(value)
  %1535 = fsub fast float %1534, %1493
  %1536 = fsub fast float %1494, %1493
  %1537 = fdiv fast float %1535, %1536
  %1538 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1539 = fmul fast float %1538, %1538
  %1540 = fmul fast float %1539, %1519
  br label %1541

; <label>:1541                                    ; preds = %1521, %1489, %1416, %1224
  %1542 = phi float [ 0.000000e+00, %1224 ], [ 0.000000e+00, %1416 ], [ %1540, %1521 ], [ %1519, %1489 ]
  %1543 = fcmp fast oeq float %1542, 0.000000e+00
  br i1 %1543, label %1922, label %1544, !dx.controlflow.hints !103

; <label>:1544                                    ; preds = %1541
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1548 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1549 = fsub fast float %199, %1546
  %1550 = fadd fast float %1549, %1548
  %1551 = fsub fast float %200, %1547
  %1552 = fadd fast float %1551, %1548
  %1553 = extractvalue %dx.types.CBufRet.f32 %1545, 3
  %1554 = fmul fast float %1550, %1553
  %1555 = fmul fast float %1552, %1553
  %1556 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1557 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1558 = fsub fast float 1.000000e+00, %1556
  %1559 = fsub fast float 1.000000e+00, %1557
  %1560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %1558, float %1559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 2
  %1564 = fmul fast float %1563, %1561
  %1565 = extractvalue %dx.types.CBufRet.f32 %1562, 3
  %1566 = fadd fast float %1565, %1564
  %1567 = fcmp fast ogt float %1561, 0.000000e+00
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = and i32 %1569, 32768
  %1571 = icmp ne i32 %1570, 0
  %1572 = and i1 %1567, %1571
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 3
  %1575 = fadd fast float %1574, %1566
  %1576 = fcmp fast ole float %201, %1575
  %1577 = and i1 %1572, %1576
  %1578 = xor i1 %1577, true
  %1579 = icmp ne i32 %1231, 0
  %1580 = and i1 %1579, %1578
  %1581 = icmp ne i32 %1232, 0
  %1582 = and i1 %1581, %1577
  %1583 = or i1 %1580, %1582
  br i1 %1583, label %1922, label %1584, !dx.controlflow.hints !104

; <label>:1584                                    ; preds = %1544
  %1585 = fsub fast float %201, %1566
  %1586 = call float @dx.op.unary.f32(i32 6, float %1585)  ; FAbs(value)
  %1587 = fdiv fast float %1586, %1230
  %1588 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1589 = fmul fast float %1588, %1542
  %1590 = fcmp fast une float %1228, 0.000000e+00
  br i1 %1590, label %1591, label %1910, !dx.controlflow.hints !105

; <label>:1591                                    ; preds = %1584
  %1592 = fmul fast float %1228, %123
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.CBufRet.f32 %1593, 1
  %1596 = extractvalue %dx.types.CBufRet.f32 %1593, 2
  %1597 = fmul fast float %1594, %1592
  %1598 = fmul fast float %1595, %1592
  %1599 = fmul fast float %1596, %1592
  %1600 = fadd fast float %1597, %199
  %1601 = fadd fast float %1598, %200
  %1602 = fadd fast float %1599, %201
  %1603 = fmul fast float %1228, 2.000000e+00
  %1604 = call float @dx.op.binary.f32(i32 35, float %401, float %1603)  ; FMax(a,b)
  %1605 = fsub fast float %1600, %1233
  %1606 = fsub fast float %1601, %1234
  %1607 = fmul fast float %1605, %1238
  %1608 = fmul fast float %1606, %1239
  %1609 = call float @dx.op.binary.f32(i32 36, float %1607, float %1608)  ; FMin(a,b)
  %1610 = fcmp fast olt float %1609, 0.000000e+00
  %1611 = call float @dx.op.binary.f32(i32 35, float %1607, float %1608)  ; FMax(a,b)
  %1612 = fcmp fast ogt float %1611, 1.000000e+00
  %1613 = or i1 %1610, %1612
  %1614 = fcmp fast olt float %1602, %1247
  %1615 = or i1 %1613, %1614
  %1616 = fcmp fast ogt float %1602, %1254
  %1617 = or i1 %1615, %1616
  br i1 %1617, label %1902, label %1618, !dx.controlflow.hints !94

; <label>:1618                                    ; preds = %1591
  %1619 = fsub fast float 1.000000e+00, %1608
  %1620 = extractvalue %dx.types.CBufRet.f32 %1252, 3
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 3
  %1623 = extractvalue %dx.types.CBufRet.f32 %1621, 2
  %1624 = extractvalue %dx.types.CBufRet.f32 %1621, 1
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1628 = extractvalue %dx.types.CBufRet.f32 %1625, 2
  %1629 = extractvalue %dx.types.CBufRet.f32 %1621, 0
  br i1 %1204, label %1645, label %1630, !dx.controlflow.hints !95

; <label>:1630                                    ; preds = %1618
  %1631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 48)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.f32 %1631, 0
  %1633 = extractvalue %dx.types.ResRet.f32 %1631, 1
  %1634 = extractvalue %dx.types.ResRet.f32 %1631, 2
  %1635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 104)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 108)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.f32 %1637, 0
  %1639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 112)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.f32 %1639, 0
  %1641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 116)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.f32 %1641, 0
  %1643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 120)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.f32 %1643, 0
  br label %1645

; <label>:1645                                    ; preds = %1630, %1618
  %1646 = phi float [ %1638, %1630 ], [ %1620, %1618 ]
  %1647 = phi float [ %1642, %1630 ], [ %1622, %1618 ]
  %1648 = phi float [ %1644, %1630 ], [ %1623, %1618 ]
  %1649 = phi float [ %1640, %1630 ], [ %1624, %1618 ]
  %1650 = phi float [ %1632, %1630 ], [ %1626, %1618 ]
  %1651 = phi float [ %1633, %1630 ], [ %1627, %1618 ]
  %1652 = phi float [ %1634, %1630 ], [ %1628, %1618 ]
  %1653 = phi float [ %1636, %1630 ], [ %1629, %1618 ]
  %1654 = fcmp fast oeq float %1646, 0.000000e+00
  br i1 %1654, label %1770, label %1655, !dx.controlflow.hints !96

; <label>:1655                                    ; preds = %1645
  %1656 = fcmp fast ogt float %1647, 0.000000e+00
  %1657 = fcmp fast oeq float %1604, 0.000000e+00
  br i1 %1657, label %1662, label %1658, !dx.controlflow.hints !80

; <label>:1658                                    ; preds = %1655
  %1659 = extractvalue %dx.types.CBufRet.f32 %1136, 1
  %1660 = fmul fast float %1659, %1604
  %1661 = call float @dx.op.unary.f32(i32 23, float %1660)  ; Log(value)
  br label %1662

; <label>:1662                                    ; preds = %1658, %1655
  %1663 = phi float [ %1661, %1658 ], [ 0.000000e+00, %1655 ]
  br i1 %1657, label %1668, label %1664, !dx.controlflow.hints !80

; <label>:1664                                    ; preds = %1662
  %1665 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1666 = fmul fast float %1665, %1604
  %1667 = call float @dx.op.unary.f32(i32 23, float %1666)  ; Log(value)
  br label %1668

; <label>:1668                                    ; preds = %1664, %1662
  %1669 = phi float [ %1667, %1664 ], [ 0.000000e+00, %1662 ]
  br i1 %1656, label %1670, label %1732, !dx.controlflow.hints !97

; <label>:1670                                    ; preds = %1668
  %1671 = fcmp fast ogt float %1648, 0.000000e+00
  br i1 %1671, label %1672, label %1682, !dx.controlflow.hints !98

; <label>:1672                                    ; preds = %1670
  %1673 = fmul fast float %1648, %1607
  %1674 = fmul fast float %1648, %1619
  %1675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %1673, float %1674, float undef, float undef, i32 0, i32 0, i32 undef, float %1669)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1676 = extractvalue %dx.types.ResRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.ResRet.f32 %1675, 1
  %1678 = fmul fast float %1676, 2.000000e+00
  %1679 = fmul fast float %1677, 2.000000e+00
  %1680 = fadd fast float %1678, -1.000000e+00
  %1681 = fadd fast float %1679, -1.000000e+00
  br label %1703

; <label>:1682                                    ; preds = %1670
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 3
  %1685 = fmul fast float %1684, %1607
  %1686 = fmul fast float %1684, %1619
  %1687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1685, float %1686, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.ResRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1687, 2
  %1691 = fmul fast float %1688, 2.000000e+00
  %1692 = fmul fast float %1689, 2.000000e+00
  %1693 = fmul fast float %1690, 2.000000e+00
  %1694 = fadd fast float %1691, -1.000000e+00
  %1695 = fadd fast float %1692, -1.000000e+00
  %1696 = fadd fast float %1693, -1.000000e+00
  %1697 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1698 = fmul fast float %1694, %1697
  %1699 = fmul fast float %1695, %1697
  %1700 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1701 = fmul fast float %1700, 5.000000e-01
  %1702 = fmul fast float %1701, %1696
  br label %1703

; <label>:1703                                    ; preds = %1682, %1672
  %1704 = phi float [ %1680, %1672 ], [ %1698, %1682 ]
  %1705 = phi float [ %1681, %1672 ], [ %1699, %1682 ]
  %1706 = phi float [ 0.000000e+00, %1672 ], [ %1702, %1682 ]
  %1707 = fmul fast float %1646, %1600
  %1708 = fmul fast float %1646, %1601
  %1709 = fmul fast float %1646, %1602
  %1710 = call float @dx.op.unary.f32(i32 22, float %1647)  ; Frc(value)
  %1711 = fmul fast float %1710, %1704
  %1712 = fmul fast float %1710, %1705
  %1713 = fmul fast float %1710, %1706
  %1714 = fsub fast float %1707, %1711
  %1715 = fsub fast float %1708, %1712
  %1716 = fsub fast float %1709, %1713
  %1717 = fadd fast float %1647, 5.000000e-01
  %1718 = call float @dx.op.unary.f32(i32 22, float %1717)  ; Frc(value)
  %1719 = fmul fast float %1718, %1704
  %1720 = fmul fast float %1718, %1705
  %1721 = fmul fast float %1718, %1706
  %1722 = fadd fast float %1707, -5.000000e-01
  %1723 = fsub fast float %1722, %1719
  %1724 = fadd fast float %1708, -5.000000e-01
  %1725 = fsub fast float %1724, %1720
  %1726 = fadd fast float %1709, -5.000000e-01
  %1727 = fsub fast float %1726, %1721
  %1728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %1723, float %1725, float %1727, float undef, i32 0, i32 0, i32 0, float %1663)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1729 = extractvalue %dx.types.ResRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.ResRet.f32 %1728, 1
  %1731 = fadd fast float %1729, %1649
  br label %1742

; <label>:1732                                    ; preds = %1668
  %1733 = fmul fast float %1653, %1650
  %1734 = fmul fast float %1653, %1651
  %1735 = fmul fast float %1653, %1652
  %1736 = fsub fast float %1600, %1733
  %1737 = fsub fast float %1601, %1734
  %1738 = fsub fast float %1602, %1735
  %1739 = fmul fast float %1736, %1646
  %1740 = fmul fast float %1737, %1646
  %1741 = fmul fast float %1738, %1646
  br label %1742

; <label>:1742                                    ; preds = %1732, %1703
  %1743 = phi float [ %1714, %1703 ], [ %1739, %1732 ]
  %1744 = phi float [ %1715, %1703 ], [ %1740, %1732 ]
  %1745 = phi float [ %1716, %1703 ], [ %1741, %1732 ]
  %1746 = phi float [ %1731, %1703 ], [ 0.000000e+00, %1732 ]
  %1747 = phi float [ %1730, %1703 ], [ 0.000000e+00, %1732 ]
  %1748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %1743, float %1744, float %1745, float undef, i32 0, i32 0, i32 0, float %1663)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.ResRet.f32 %1748, 1
  %1751 = fadd fast float %1749, %1649
  br i1 %1656, label %1752, label %1763, !dx.controlflow.hints !99

; <label>:1752                                    ; preds = %1742
  %1753 = call float @dx.op.unary.f32(i32 22, float %1647)  ; Frc(value)
  %1754 = fmul fast float %1753, 2.000000e+00
  %1755 = fadd fast float %1754, -1.000000e+00
  %1756 = call float @dx.op.unary.f32(i32 6, float %1755)  ; FAbs(value)
  %1757 = fsub fast float %1746, %1751
  %1758 = fmul fast float %1756, %1757
  %1759 = fadd fast float %1758, %1751
  %1760 = fsub fast float %1747, %1750
  %1761 = fmul fast float %1756, %1760
  %1762 = fadd fast float %1761, %1750
  br label %1763

; <label>:1763                                    ; preds = %1752, %1742
  %1764 = phi float [ %1759, %1752 ], [ %1751, %1742 ]
  %1765 = phi float [ %1762, %1752 ], [ %1750, %1742 ]
  %1766 = fsub fast float %1764, %1765
  %1767 = fsub fast float 1.000000e+00, %1765
  %1768 = fdiv fast float %1766, %1767
  %1769 = call float @dx.op.unary.f32(i32 7, float %1768)  ; Saturate(value)
  br label %1770

; <label>:1770                                    ; preds = %1763, %1645
  %1771 = phi float [ %1769, %1763 ], [ 1.000000e+00, %1645 ]
  %1772 = fcmp fast oeq float %1604, 0.000000e+00
  br i1 %1772, label %1777, label %1773, !dx.controlflow.hints !80

; <label>:1773                                    ; preds = %1770
  %1774 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1775 = fmul fast float %1774, %1604
  %1776 = call float @dx.op.unary.f32(i32 23, float %1775)  ; Log(value)
  br label %1777

; <label>:1777                                    ; preds = %1773, %1770
  %1778 = phi float [ %1776, %1773 ], [ 0.000000e+00, %1770 ]
  %1779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %39, float %1607, float %1619, float undef, float undef, i32 0, i32 0, i32 undef, float %1778)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1607, float %1619, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1782 = extractvalue %dx.types.ResRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.ResRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.ResRet.f32 %1781, 2
  %1785 = extractvalue %dx.types.ResRet.f32 %1781, 3
  %1786 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1607, float %1619, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1787 = extractvalue %dx.types.ResRet.f32 %1786, 0
  %1788 = extractvalue %dx.types.ResRet.f32 %1786, 1
  %1789 = extractvalue %dx.types.ResRet.f32 %1786, 2
  %1790 = extractvalue %dx.types.ResRet.f32 %1786, 3
  %1791 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1607, float %1619, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1792 = extractvalue %dx.types.ResRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.ResRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.ResRet.f32 %1791, 2
  %1795 = extractvalue %dx.types.ResRet.f32 %1791, 3
  %1796 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1607, float %1619, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = extractvalue %dx.types.ResRet.f32 %1796, 3
  %1801 = fadd fast float %1782, %1783
  %1802 = fadd fast float %1801, %1784
  %1803 = fadd fast float %1802, %1785
  %1804 = fmul fast float %1787, %1782
  %1805 = fmul fast float %1788, %1783
  %1806 = fadd fast float %1804, %1805
  %1807 = fmul fast float %1789, %1784
  %1808 = fadd fast float %1806, %1807
  %1809 = fmul fast float %1790, %1785
  %1810 = fadd fast float %1808, %1809
  %1811 = fmul fast float %1792, %1782
  %1812 = fmul fast float %1793, %1783
  %1813 = fadd fast float %1811, %1812
  %1814 = fmul fast float %1794, %1784
  %1815 = fadd fast float %1813, %1814
  %1816 = fmul fast float %1795, %1785
  %1817 = fadd fast float %1815, %1816
  %1818 = fmul fast float %1797, %1782
  %1819 = fmul fast float %1798, %1783
  %1820 = fadd fast float %1818, %1819
  %1821 = fmul fast float %1799, %1784
  %1822 = fadd fast float %1820, %1821
  %1823 = fmul fast float %1800, %1785
  %1824 = fadd fast float %1822, %1823
  %1825 = fcmp fast ogt float %1803, 0.000000e+00
  %1826 = fdiv fast float %1810, %1803
  %1827 = select i1 %1825, float %1826, float 0.000000e+00
  %1828 = fdiv fast float %1817, %1803
  %1829 = select i1 %1825, float %1828, float 0.000000e+00
  %1830 = fdiv fast float %1824, %1803
  %1831 = select i1 %1825, float %1830, float 0.000000e+00
  %1832 = fcmp fast ogt float %1602, %1829
  %1833 = fcmp fast olt float %1602, %1827
  %1834 = and i1 %1833, %1832
  br i1 %1834, label %1835, label %1902, !dx.controlflow.hints !100

; <label>:1835                                    ; preds = %1777
  %1836 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 2
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 3
  br i1 %1204, label %1850, label %1840, !dx.controlflow.hints !101

; <label>:1840                                    ; preds = %1835
  %1841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 60)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 64)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.ResRet.f32 %1843, 1
  %1846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 72)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.f32 %1846, 0
  %1848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1203, i32 96)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  br label %1850

; <label>:1850                                    ; preds = %1840, %1835
  %1851 = phi float [ %1842, %1840 ], [ %1253, %1835 ]
  %1852 = phi float [ %1847, %1840 ], [ %1251, %1835 ]
  %1853 = phi float [ %1849, %1840 ], [ %1836, %1835 ]
  %1854 = phi float [ %1844, %1840 ], [ %1838, %1835 ]
  %1855 = phi float [ %1845, %1840 ], [ %1839, %1835 ]
  %1856 = call float @dx.op.binary.f32(i32 35, float %1780, float 0.000000e+00)  ; FMax(a,b)
  %1857 = call float @dx.op.binary.f32(i32 36, float %1856, float 1.000000e+00)  ; FMin(a,b)
  %1858 = call float @dx.op.unary.f32(i32 24, float %1857)  ; Sqrt(value)
  %1859 = call float @dx.op.binary.f32(i32 35, float %1831, float 0x3F847AE140000000)  ; FMax(a,b)
  %1860 = fsub fast float %1827, %1602
  %1861 = fsub fast float %1602, %1829
  %1862 = call float @dx.op.binary.f32(i32 36, float %1861, float %1860)  ; FMin(a,b)
  %1863 = fdiv fast float %1862, %1859
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  %1865 = fsub fast float %1602, %1852
  %1866 = fdiv fast float %1865, %1851
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  %1868 = fsub fast float 1.000000e+00, %1867
  %1869 = fmul float %1864, %1868
  %1870 = fmul float %1869, %1869
  %1871 = fmul fast float %1858, %1771
  %1872 = fmul fast float %1871, %1870
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 2
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = fsub fast float %1872, %1875
  %1877 = fsub fast float %1874, %1875
  %1878 = fdiv fast float %1876, %1877
  %1879 = call float @dx.op.unary.f32(i32 7, float %1878)  ; Saturate(value)
  %1880 = fmul fast float %1879, %1853
  %1881 = fcmp fast ogt float %1855, 0.000000e+00
  br i1 %1881, label %1882, label %1902, !dx.controlflow.hints !102

; <label>:1882                                    ; preds = %1850
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.CBufRet.f32 %1883, 1
  %1886 = extractvalue %dx.types.CBufRet.f32 %1883, 2
  %1887 = fsub fast float %1600, %1884
  %1888 = fsub fast float %1601, %1885
  %1889 = fsub fast float %1602, %1886
  %1890 = fmul fast float %1887, %1887
  %1891 = fmul fast float %1888, %1888
  %1892 = fadd fast float %1890, %1891
  %1893 = fmul fast float %1889, %1889
  %1894 = fadd fast float %1892, %1893
  %1895 = call float @dx.op.unary.f32(i32 24, float %1894)  ; Sqrt(value)
  %1896 = fsub fast float %1895, %1854
  %1897 = fsub fast float %1855, %1854
  %1898 = fdiv fast float %1896, %1897
  %1899 = call float @dx.op.unary.f32(i32 7, float %1898)  ; Saturate(value)
  %1900 = fmul fast float %1899, %1899
  %1901 = fmul fast float %1900, %1880
  br label %1902

; <label>:1902                                    ; preds = %1882, %1850, %1777, %1591
  %1903 = phi float [ 0.000000e+00, %1591 ], [ 0.000000e+00, %1777 ], [ %1901, %1882 ], [ %1880, %1850 ]
  %1904 = fsub fast float %1589, %1903
  %1905 = fdiv fast float %1904, %1589
  %1906 = call float @dx.op.unary.f32(i32 7, float %1905)  ; Saturate(value)
  %1907 = fsub fast float 1.000000e+00, %1229
  %1908 = fmul fast float %1906, %1907
  %1909 = fadd fast float %1908, %1229
  br label %1910

; <label>:1910                                    ; preds = %1902, %1584
  %1911 = phi float [ %1909, %1902 ], [ 1.000000e+00, %1584 ]
  %1912 = fadd fast float %1589, %1128
  %1913 = fmul fast float %1589, %1225
  %1914 = fmul fast float %1913, %1911
  %1915 = fmul fast float %1589, %1226
  %1916 = fmul fast float %1915, %1911
  %1917 = fmul fast float %1589, %1227
  %1918 = fmul fast float %1917, %1911
  %1919 = fadd fast float %1914, %1124
  %1920 = fadd fast float %1916, %1125
  %1921 = fadd fast float %1918, %1126
  br label %1922

; <label>:1922                                    ; preds = %1910, %1544, %1541, %1123
  %1923 = phi float [ %1124, %1123 ], [ %1124, %1541 ], [ %1124, %1544 ], [ %1919, %1910 ]
  %1924 = phi float [ %1125, %1123 ], [ %1125, %1541 ], [ %1125, %1544 ], [ %1920, %1910 ]
  %1925 = phi float [ %1126, %1123 ], [ %1126, %1541 ], [ %1126, %1544 ], [ %1921, %1910 ]
  %1926 = phi float [ %1128, %1123 ], [ %1128, %1541 ], [ %1128, %1544 ], [ %1912, %1910 ]
  %1927 = and i32 %320, 4
  %1928 = icmp eq i32 %1927, 0
  br i1 %1928, label %2099, label %1929, !dx.controlflow.hints !106

; <label>:1929                                    ; preds = %1922
  %1930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.i32 %1930, 1
  %1932 = icmp eq i32 %1931, 0
  br i1 %1932, label %2099, label %1933

; <label>:1933                                    ; preds = %1929
  br label %1934

; <label>:1934                                    ; preds = %2090, %1933
  %1935 = phi i32 [ %2096, %2090 ], [ 0, %1933 ]
  %1936 = phi float [ %2091, %2090 ], [ %1923, %1933 ]
  %1937 = phi float [ %2092, %2090 ], [ %1924, %1933 ]
  %1938 = phi float [ %2093, %2090 ], [ %1925, %1933 ]
  %1939 = phi float [ %2094, %2090 ], [ %1127, %1933 ]
  %1940 = phi float [ %2095, %2090 ], [ %1926, %1933 ]
  %1941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1942 = extractvalue %dx.types.CBufRet.i32 %1941, 1
  %1943 = call i32 @dx.op.tertiary.i32(i32 49, i32 %318, i32 %1942, i32 %1935)  ; UMad(a,b,c)
  %1944 = shl i32 %1943, 2
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = icmp eq i32 %1946, 0
  br i1 %1947, label %2090, label %1948

; <label>:1948                                    ; preds = %1934
  br label %1949

; <label>:1949                                    ; preds = %2076, %1948
  %1950 = phi i32 [ %1960, %2076 ], [ %1946, %1948 ]
  %1951 = phi float [ %2082, %2076 ], [ %1936, %1948 ]
  %1952 = phi float [ %2083, %2076 ], [ %1937, %1948 ]
  %1953 = phi float [ %2084, %2076 ], [ %1938, %1948 ]
  %1954 = phi float [ %2086, %2076 ], [ %1939, %1948 ]
  %1955 = phi float [ %2087, %2076 ], [ %1940, %1948 ]
  %1956 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1950)  ; FirstbitLo(value)
  %1957 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1935, i32 %1956)  ; UMad(a,b,c)
  %1958 = and i32 %1956, 31
  %1959 = shl i32 1, %1958
  %1960 = xor i32 %1959, %1950
  %1961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1957, i32 0)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1957, i32 4)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.f32 %1963, 0
  %1965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1957, i32 16)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1967 = extractvalue %dx.types.ResRet.f32 %1965, 1
  %1968 = extractvalue %dx.types.ResRet.f32 %1965, 2
  %1969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1957, i32 28)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  %1971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1957, i32 32)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = extractvalue %dx.types.ResRet.f32 %1971, 1
  %1974 = extractvalue %dx.types.ResRet.f32 %1971, 2
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1957, i32 44)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1957, i32 48)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1957, i32 52)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.f32 %1979, 0
  %1981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1957, i32 56)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1957, i32 64)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.ResRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1987 = mul i32 %1957, 60
  %1988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.ResRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.ResRet.f32 %1988, 2
  %1992 = add i32 %1987, 12
  %1993 = add i32 %1987, 48
  %1994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 2
  %1996 = fsub fast float %199, %1989
  %1997 = fsub fast float %200, %1990
  %1998 = fsub fast float %201, %1991
  %1999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.f32 %1999, 0
  %2001 = extractvalue %dx.types.ResRet.f32 %1999, 1
  %2002 = extractvalue %dx.types.ResRet.f32 %1999, 2
  %2003 = call float @dx.op.dot3.f32(i32 55, float %1996, float %1997, float %1998, float %2000, float %2001, float %2002)  ; Dot3(ax,ay,az,bx,by,bz)
  %2004 = add i32 %1987, 24
  %2005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = extractvalue %dx.types.ResRet.f32 %2005, 1
  %2008 = extractvalue %dx.types.ResRet.f32 %2005, 2
  %2009 = call float @dx.op.dot3.f32(i32 55, float %1996, float %1997, float %1998, float %2006, float %2007, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2010 = add i32 %1987, 36
  %2011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = extractvalue %dx.types.ResRet.f32 %2011, 1
  %2014 = extractvalue %dx.types.ResRet.f32 %2011, 2
  %2015 = call float @dx.op.dot3.f32(i32 55, float %1996, float %1997, float %1998, float %2012, float %2013, float %2014)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = call float @dx.op.unary.f32(i32 6, float %2003)  ; FAbs(value)
  %2017 = call float @dx.op.unary.f32(i32 6, float %2009)  ; FAbs(value)
  %2018 = call float @dx.op.unary.f32(i32 6, float %2015)  ; FAbs(value)
  %2019 = fmul fast float %2016, %1976
  %2020 = fmul fast float %2017, %1976
  %2021 = fmul fast float %2018, %1976
  %2022 = fadd fast float %2019, %1972
  %2023 = fadd fast float %2020, %1973
  %2024 = fadd fast float %2021, %1974
  %2025 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2026 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2027 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2028 = fmul fast float %2025, %2025
  %2029 = fmul fast float %2026, %2026
  %2030 = fadd fast float %2029, %2028
  %2031 = fmul fast float %2027, %2027
  %2032 = fadd fast float %2030, %2031
  %2033 = call float @dx.op.unary.f32(i32 24, float %2032)  ; Sqrt(value)
  %2034 = fsub fast float 1.000000e+00, %2033
  %2035 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2036 = fmul fast float %2035, %1962
  %2037 = fmul fast float %1995, 2.000000e+00
  %2038 = fadd fast float %2015, %1995
  %2039 = call float @dx.op.binary.f32(i32 35, float %2038, float 0.000000e+00)  ; FMax(a,b)
  %2040 = call float @dx.op.binary.f32(i32 36, float %2039, float %2037)  ; FMin(a,b)
  %2041 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2040)  ; FMax(a,b)
  %2042 = fmul fast float %1964, 0x3FF7154760000000
  %2043 = fmul fast float %2042, %2041
  %2044 = call float @dx.op.unary.f32(i32 21, float %2043)  ; Exp(value)
  %2045 = fmul fast float %2036, %2044
  %2046 = fcmp fast oeq float %401, 0.000000e+00
  br i1 %2046, label %2052, label %2047, !dx.controlflow.hints !80

; <label>:2047                                    ; preds = %1949
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 3
  %2050 = fmul fast float %2049, %401
  %2051 = call float @dx.op.unary.f32(i32 23, float %2050)  ; Log(value)
  br label %2052

; <label>:2052                                    ; preds = %2047, %1949
  %2053 = phi float [ %2051, %2047 ], [ 0.000000e+00, %1949 ]
  %2054 = fcmp fast oeq float %1978, 0.000000e+00
  br i1 %2054, label %2076, label %2055, !dx.controlflow.hints !107

; <label>:2055                                    ; preds = %2052
  %2056 = fmul fast float %1984, %1982
  %2057 = fmul fast float %1985, %1982
  %2058 = fmul fast float %1986, %1982
  %2059 = fsub fast float %199, %2056
  %2060 = fsub fast float %200, %2057
  %2061 = fsub fast float %201, %2058
  %2062 = fmul fast float %2059, %1978
  %2063 = fmul fast float %2060, %1978
  %2064 = fmul fast float %2061, %1978
  %2065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %2062, float %2063, float %2064, float undef, i32 0, i32 0, i32 0, float %2053)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.ResRet.f32 %2065, 1
  %2068 = fdiv fast float 1.000000e+00, %1980
  %2069 = fmul fast float %1980, 2.000000e+00
  %2070 = fadd fast float %2069, -1.000000e+00
  %2071 = fadd fast float %2070, %2067
  %2072 = fadd fast float %2071, %2066
  %2073 = fmul fast float %2072, %2068
  %2074 = fadd fast float %2073, -1.000000e+00
  %2075 = call float @dx.op.unary.f32(i32 7, float %2074)  ; Saturate(value)
  br label %2076

; <label>:2076                                    ; preds = %2055, %2052
  %2077 = phi float [ %2075, %2055 ], [ 1.000000e+00, %2052 ]
  %2078 = fmul fast float %2045, %2077
  %2079 = fmul fast float %2078, %1966
  %2080 = fmul fast float %2078, %1967
  %2081 = fmul fast float %2078, %1968
  %2082 = fadd fast float %2079, %1951
  %2083 = fadd fast float %2080, %1952
  %2084 = fadd fast float %2081, %1953
  %2085 = fmul fast float %2078, %1970
  %2086 = fadd fast float %2085, %1954
  %2087 = fadd fast float %2078, %1955
  %2088 = icmp eq i32 %1950, %1959
  br i1 %2088, label %2089, label %1949, !llvm.loop !108

; <label>:2089                                    ; preds = %2076
  br label %2090

; <label>:2090                                    ; preds = %2089, %1934
  %2091 = phi float [ %1936, %1934 ], [ %2082, %2089 ]
  %2092 = phi float [ %1937, %1934 ], [ %2083, %2089 ]
  %2093 = phi float [ %1938, %1934 ], [ %2084, %2089 ]
  %2094 = phi float [ %1939, %1934 ], [ %2086, %2089 ]
  %2095 = phi float [ %1940, %1934 ], [ %2087, %2089 ]
  %2096 = add i32 %1935, 1
  %2097 = icmp ult i32 %2096, %1942
  br i1 %2097, label %1934, label %2098, !llvm.loop !109

; <label>:2098                                    ; preds = %2090
  br label %2099

; <label>:2099                                    ; preds = %2098, %1929, %1922
  %2100 = phi float [ %1923, %1922 ], [ %1923, %1929 ], [ %2091, %2098 ]
  %2101 = phi float [ %1924, %1922 ], [ %1924, %1929 ], [ %2092, %2098 ]
  %2102 = phi float [ %1925, %1922 ], [ %1925, %1929 ], [ %2093, %2098 ]
  %2103 = phi float [ %1127, %1922 ], [ %1127, %1929 ], [ %2094, %2098 ]
  %2104 = phi float [ %1926, %1922 ], [ %1926, %1929 ], [ %2095, %2098 ]
  %2105 = fcmp fast ogt float %2104, 0.000000e+00
  br i1 %2105, label %2106, label %3542, !dx.controlflow.hints !110

; <label>:2106                                    ; preds = %2099
  %2107 = fdiv fast float 1.000000e+00, %2104
  %2108 = fmul fast float %2107, %2100
  %2109 = fmul fast float %2107, %2101
  %2110 = fmul fast float %2107, %2102
  %2111 = fmul fast float %2107, %2103
  %2112 = fmul fast float %2107, %626
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = fadd fast float %2114, -1.000000e+00
  %2116 = fmul fast float %2112, %2115
  %2117 = fadd fast float %2116, 1.000000e+00
  %2118 = fmul fast float %398, %397
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 0
  %2121 = extractvalue %dx.types.CBufRet.f32 %2119, 1
  %2122 = extractvalue %dx.types.CBufRet.f32 %2119, 2
  %2123 = fsub fast float %201, %2122
  %2124 = fmul fast float %327, %134
  %2125 = call float @dx.op.unary.f32(i32 21, float %2124)  ; Exp(value)
  %2126 = fmul fast float %2125, %326
  %2127 = fadd fast float %331, %2126
  %2128 = fmul fast float %141, 2.000000e+00
  %2129 = fmul fast float %2128, %323
  %2130 = fmul fast float %142, 2.000000e+00
  %2131 = fmul fast float %2130, %324
  %2132 = fsub fast float 1.000000e+00, %2129
  %2133 = fsub fast float 1.000000e+00, %2131
  %2134 = fmul fast float %340, %2132
  %2135 = fmul fast float %341, %2132
  %2136 = fmul fast float %342, %2132
  %2137 = fmul fast float %347, %2133
  %2138 = fmul fast float %348, %2133
  %2139 = fmul fast float %349, %2133
  %2140 = fadd fast float %2137, %2134
  %2141 = fadd fast float %2138, %2135
  %2142 = fadd fast float %2139, %2136
  %2143 = fadd fast float %2140, %357
  %2144 = fadd fast float %2141, %358
  %2145 = fadd fast float %2142, %359
  %2146 = fmul fast float %2143, %2127
  %2147 = fmul fast float %2144, %2127
  %2148 = fmul fast float %2145, %2127
  %2149 = fadd fast float %134, 1.000000e+00
  %2150 = fmul fast float %327, %2149
  %2151 = call float @dx.op.unary.f32(i32 21, float %2150)  ; Exp(value)
  %2152 = fsub fast float %2151, %2125
  %2153 = fmul fast float %326, %2152
  %2154 = fmul fast float %2143, %2153
  %2155 = fsub fast float %2151, %2125
  %2156 = fmul fast float %326, %2155
  %2157 = fmul fast float %2144, %2156
  %2158 = fsub fast float %2151, %2125
  %2159 = fmul fast float %326, %2158
  %2160 = fmul fast float %2145, %2159
  %2161 = call float @dx.op.dot3.f32(i32 55, float %2154, float %2157, float %2160, float %2154, float %2157, float %2160)  ; Dot3(ax,ay,az,bx,by,bz)
  %2162 = call float @dx.op.unary.f32(i32 25, float %2161)  ; Rsqrt(value)
  %2163 = fmul fast float %2162, %2161
  %2164 = fmul fast float %2154, %2162
  %2165 = fmul fast float %2157, %2162
  %2166 = fmul fast float %2160, %2162
  %2167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.f32 %2167, 3
  %2169 = fcmp fast oeq float %2168, 0.000000e+00
  br i1 %2169, label %2912, label %2170, !dx.controlflow.hints !111

; <label>:2170                                    ; preds = %2106
  %2171 = fsub fast float %200, %2121
  %2172 = fsub fast float %199, %2120
  %2173 = extractvalue %dx.types.CBufRet.f32 %2167, 0
  %2174 = extractvalue %dx.types.CBufRet.f32 %2167, 1
  %2175 = extractvalue %dx.types.CBufRet.f32 %2167, 2
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.CBufRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.CBufRet.f32 %2176, 2
  %2180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.f32 %2180, 2
  %2182 = fmul fast float %2181, %2173
  %2183 = fmul fast float %2181, %2174
  %2184 = fmul fast float %2181, %2175
  %2185 = fsub fast float %2172, %2182
  %2186 = fsub fast float %2171, %2183
  %2187 = fsub fast float %2123, %2184
  %2188 = fcmp fast olt float %2168, 0.000000e+00
  br i1 %2188, label %2720, label %2189, !dx.controlflow.hints !112

; <label>:2189                                    ; preds = %2170
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 0
  %2192 = extractvalue %dx.types.CBufRet.f32 %2190, 1
  %2193 = extractvalue %dx.types.CBufRet.f32 %2190, 2
  %2194 = extractvalue %dx.types.CBufRet.f32 %2190, 3
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.CBufRet.f32 %2195, 1
  %2198 = extractvalue %dx.types.CBufRet.f32 %2195, 2
  %2199 = extractvalue %dx.types.CBufRet.f32 %2195, 3
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.CBufRet.f32 %2200, 1
  %2203 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2204 = extractvalue %dx.types.CBufRet.f32 %2200, 3
  %2205 = fmul fast float %2191, %2185
  %2206 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2192, float %2205)  ; FMad(a,b,c)
  %2207 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2193, float %2206)  ; FMad(a,b,c)
  %2208 = fadd fast float %2207, %2194
  %2209 = fmul fast float %2196, %2185
  %2210 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2197, float %2209)  ; FMad(a,b,c)
  %2211 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2198, float %2210)  ; FMad(a,b,c)
  %2212 = fadd fast float %2211, %2199
  %2213 = fmul fast float %2201, %2185
  %2214 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2202, float %2213)  ; FMad(a,b,c)
  %2215 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2203, float %2214)  ; FMad(a,b,c)
  %2216 = fadd fast float %2215, %2204
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.CBufRet.f32 %2217, 1
  %2220 = extractvalue %dx.types.CBufRet.f32 %2217, 3
  %2221 = fmul fast float %2220, %2208
  %2222 = fmul fast float %2220, %2212
  %2223 = fadd fast float %2221, %2218
  %2224 = fadd fast float %2222, %2219
  %2225 = extractvalue %dx.types.CBufRet.f32 %2217, 2
  %2226 = fcmp fast olt float %2225, 0.000000e+00
  %2227 = fsub fast float -0.000000e+00, %2225
  %2228 = select i1 %2226, float %2227, float %2225
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 1
  %2231 = fadd fast float %2228, %2230
  %2232 = fcmp fast ogt float %2231, 0.000000e+00
  br i1 %2232, label %2233, label %2264, !dx.controlflow.hints !113

; <label>:2233                                    ; preds = %2189
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 1
  %2236 = fsub fast float %2235, %2216
  %2237 = extractvalue %dx.types.CBufRet.f32 %2234, 2
  %2238 = fmul fast float %2236, %2237
  %2239 = fsub fast float 1.000000e+00, %2238
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2241, 0
  %2243 = extractvalue %dx.types.CBufRet.f32 %2241, 1
  %2244 = fsub fast float %2223, %2242
  %2245 = fsub fast float %2224, %2243
  %2246 = fcmp fast olt float %2244, 0.000000e+00
  %2247 = fcmp fast olt float %2245, 0.000000e+00
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.CBufRet.f32 %2248, 1
  %2251 = extractvalue %dx.types.CBufRet.f32 %2248, 2
  %2252 = extractvalue %dx.types.CBufRet.f32 %2248, 3
  %2253 = select i1 %2246, float %2249, float %2251
  %2254 = select i1 %2247, float %2250, float %2252
  %2255 = fmul fast float %2253, %2244
  %2256 = fmul fast float %2254, %2245
  %2257 = call float @dx.op.unary.f32(i32 6, float %2255)  ; FAbs(value)
  %2258 = call float @dx.op.unary.f32(i32 6, float %2256)  ; FAbs(value)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2180, 0
  %2260 = call float @dx.op.binary.f32(i32 35, float %2257, float %2258)  ; FMax(a,b)
  %2261 = fsub fast float %2259, %2260
  %2262 = call float @dx.op.unary.f32(i32 7, float %2261)  ; Saturate(value)
  %2263 = fmul fast float %2262, %2240
  br label %2264

; <label>:2264                                    ; preds = %2233, %2189
  %2265 = phi float [ %2263, %2233 ], [ 0.000000e+00, %2189 ]
  %2266 = call float @dx.op.binary.f32(i32 35, float %2265, float 0.000000e+00)  ; FMax(a,b)
  %2267 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2266)  ; FMax(a,b)
  %2268 = fcmp fast olt float %2267, 1.000000e+00
  br i1 %2268, label %2269, label %2667, !dx.controlflow.hints !114

; <label>:2269                                    ; preds = %2264
  %2270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2271 = extractvalue %dx.types.CBufRet.f32 %2270, 0
  %2272 = fcmp fast une float %2271, 0.000000e+00
  br i1 %2272, label %2273, label %2667, !dx.controlflow.hints !115

; <label>:2273                                    ; preds = %2269
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.CBufRet.f32 %2274, 1
  %2277 = extractvalue %dx.types.CBufRet.f32 %2274, 2
  %2278 = extractvalue %dx.types.CBufRet.f32 %2274, 3
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2282 = extractvalue %dx.types.CBufRet.f32 %2279, 2
  %2283 = extractvalue %dx.types.CBufRet.f32 %2279, 3
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.CBufRet.f32 %2284, 2
  %2288 = extractvalue %dx.types.CBufRet.f32 %2284, 3
  %2289 = fmul fast float %2275, %2185
  %2290 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2276, float %2289)  ; FMad(a,b,c)
  %2291 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2277, float %2290)  ; FMad(a,b,c)
  %2292 = fadd fast float %2291, %2278
  %2293 = fmul fast float %2280, %2185
  %2294 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2281, float %2293)  ; FMad(a,b,c)
  %2295 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2282, float %2294)  ; FMad(a,b,c)
  %2296 = fadd fast float %2295, %2283
  %2297 = fmul fast float %2285, %2185
  %2298 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2286, float %2297)  ; FMad(a,b,c)
  %2299 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2287, float %2298)  ; FMad(a,b,c)
  %2300 = fadd fast float %2299, %2288
  %2301 = fcmp fast oge float %2292, 1.000000e+00
  %2302 = fcmp fast oge float %2296, 1.000000e+00
  %2303 = or i1 %2301, %2302
  %2304 = fcmp fast olt float %2292, 0.000000e+00
  %2305 = fcmp fast olt float %2296, 0.000000e+00
  %2306 = or i1 %2304, %2305
  %2307 = or i1 %2303, %2306
  br i1 %2307, label %2667, label %2308, !dx.controlflow.hints !116

; <label>:2308                                    ; preds = %2273
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.CBufRet.f32 %2309, 2
  %2313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.i32 %2313, 2
  %2315 = uitofp i32 %2314 to float
  %2316 = extractvalue %dx.types.CBufRet.i32 %2313, 3
  %2317 = uitofp i32 %2316 to float
  %2318 = extractvalue %dx.types.CBufRet.f32 %2309, 3
  %2319 = fmul fast float %2318, 2.000000e+00
  %2320 = fsub fast float %2292, %2310
  %2321 = fsub fast float %2296, %2311
  %2322 = fmul fast float %2319, %2320
  %2323 = fmul fast float %2319, %2321
  %2324 = fdiv fast float 1.000000e+00, %2175
  %2325 = fmul fast float %2323, %2324
  %2326 = call float @dx.op.unary.f32(i32 6, float %2325)  ; FAbs(value)
  %2327 = fmul fast float %2312, %2187
  %2328 = fmul fast float %2327, %2319
  %2329 = call float @dx.op.unary.f32(i32 6, float %2328)  ; FAbs(value)
  %2330 = call float @dx.op.unary.f32(i32 6, float %2322)  ; FAbs(value)
  %2331 = call float @dx.op.binary.f32(i32 35, float %2329, float %2326)  ; FMax(a,b)
  %2332 = call float @dx.op.binary.f32(i32 35, float %2330, float %2331)  ; FMax(a,b)
  %2333 = fmul fast float %2332, 2.000000e+00
  %2334 = call float @dx.op.unary.f32(i32 23, float %2333)  ; Log(value)
  %2335 = call float @dx.op.binary.f32(i32 35, float %2334, float %2315)  ; FMax(a,b)
  %2336 = call float @dx.op.unary.f32(i32 22, float %2335)  ; Frc(value)
  %2337 = fadd fast float %2336, 0xBFEA666660000000
  %2338 = fmul fast float %2337, 8.000000e+00
  %2339 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  %2340 = call float @dx.op.unary.f32(i32 27, float %2335)  ; Round_ni(value)
  %2341 = fadd fast float %2340, %2339
  %2342 = call float @dx.op.binary.f32(i32 36, float %2341, float %2317)  ; FMin(a,b)
  %2343 = call float @dx.op.unary.f32(i32 27, float %2342)  ; Round_ni(value)
  %2344 = fsub fast float -0.000000e+00, %2343
  %2345 = call float @dx.op.unary.f32(i32 21, float %2344)  ; Exp(value)
  %2346 = fmul fast float %2345, %2319
  %2347 = fmul fast float %2346, %2292
  %2348 = fmul fast float %2346, %2296
  %2349 = fmul fast float %2347, 2.500000e-01
  %2350 = fmul fast float %2348, 2.500000e-01
  %2351 = fadd fast float %2349, 5.000000e-01
  %2352 = fadd fast float %2350, 5.000000e-01
  %2353 = fsub fast float %2317, %2315
  %2354 = fptoui float %2353 to i32
  %2355 = add i32 %2354, 320
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %2355)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.CBufRet.f32 %2356, 1
  %2359 = fcmp fast une float %2342, %2317
  %2360 = fsub fast float %2292, %2357
  %2361 = fsub fast float %2296, %2358
  %2362 = call float @dx.op.unary.f32(i32 6, float %2360)  ; FAbs(value)
  %2363 = call float @dx.op.unary.f32(i32 6, float %2361)  ; FAbs(value)
  %2364 = fmul fast float %2362, %2346
  %2365 = fmul fast float %2363, %2346
  %2366 = fcmp fast olt float %2364, 1.000000e+00
  %2367 = fcmp fast olt float %2365, 1.000000e+00
  %2368 = and i1 %2366, %2367
  %2369 = or i1 %2359, %2368
  br i1 %2369, label %2370, label %2667, !dx.controlflow.hints !117

; <label>:2370                                    ; preds = %2308
  %2371 = fmul fast float %2348, 5.000000e-01
  %2372 = fmul fast float %2347, 5.000000e-01
  %2373 = fadd fast float %2371, 5.000000e-01
  %2374 = fadd fast float %2372, 5.000000e-01
  %2375 = sitofp i32 %2314 to float
  %2376 = fsub fast float %2342, %2375
  %2377 = call float @dx.op.unary.f32(i32 27, float %2376)  ; Round_ni(value)
  %2378 = call float @dx.op.unary.f32(i32 22, float %2342)  ; Frc(value)
  %2379 = call float @dx.op.unary.f32(i32 22, float %2374)  ; Frc(value)
  %2380 = call float @dx.op.unary.f32(i32 22, float %2373)  ; Frc(value)
  %2381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %40, float %2379, float %2380, float %2377, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.ResRet.f32 %2381, 1
  %2384 = extractvalue %dx.types.ResRet.f32 %2381, 2
  %2385 = extractvalue %dx.types.ResRet.f32 %2381, 3
  %2386 = fcmp fast ogt float %2378, 0.000000e+00
  br i1 %2386, label %2387, label %2408, !dx.controlflow.hints !118

; <label>:2387                                    ; preds = %2370
  %2388 = fadd fast float %2377, 1.000000e+00
  %2389 = call float @dx.op.unary.f32(i32 22, float %2351)  ; Frc(value)
  %2390 = call float @dx.op.unary.f32(i32 22, float %2352)  ; Frc(value)
  %2391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %40, float %2389, float %2390, float %2388, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2392 = extractvalue %dx.types.ResRet.f32 %2391, 0
  %2393 = extractvalue %dx.types.ResRet.f32 %2391, 1
  %2394 = extractvalue %dx.types.ResRet.f32 %2391, 2
  %2395 = extractvalue %dx.types.ResRet.f32 %2391, 3
  %2396 = fsub fast float %2392, %2382
  %2397 = fsub fast float %2393, %2383
  %2398 = fsub fast float %2394, %2384
  %2399 = fsub fast float %2395, %2385
  %2400 = fmul fast float %2396, %2378
  %2401 = fmul fast float %2397, %2378
  %2402 = fmul fast float %2398, %2378
  %2403 = fmul fast float %2399, %2378
  %2404 = fadd fast float %2400, %2382
  %2405 = fadd fast float %2401, %2383
  %2406 = fadd fast float %2402, %2384
  %2407 = fadd fast float %2403, %2385
  br label %2408

; <label>:2408                                    ; preds = %2387, %2370
  %2409 = phi float [ %2404, %2387 ], [ %2382, %2370 ]
  %2410 = phi float [ %2405, %2387 ], [ %2383, %2370 ]
  %2411 = phi float [ %2406, %2387 ], [ %2384, %2370 ]
  %2412 = phi float [ %2407, %2387 ], [ %2385, %2370 ]
  %2413 = fadd fast float %2409, -5.000000e-01
  %2414 = fadd fast float %2411, -5.000000e-01
  %2415 = fmul fast float %2413, 0xBFD5555560000000
  %2416 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2414, float %2415)  ; FMad(a,b,c)
  %2417 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2410, float 0.000000e+00)  ; FMad(a,b,c)
  %2418 = fadd fast float %2417, %2412
  %2419 = fmul fast float %2413, -7.500000e-01
  %2420 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2414, float %2419)  ; FMad(a,b,c)
  %2421 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2410, float 0.000000e+00)  ; FMad(a,b,c)
  %2422 = fadd fast float %2421, %2412
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 0
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 0
  %2427 = extractvalue %dx.types.CBufRet.f32 %2425, 1
  %2428 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2429 = extractvalue %dx.types.CBufRet.f32 %2425, 3
  %2430 = fsub fast float %2426, %2416
  %2431 = fsub fast float %2427, %2418
  %2432 = fsub fast float %2428, %2420
  %2433 = fsub fast float %2429, %2422
  %2434 = fmul fast float %2430, %2424
  %2435 = fmul fast float %2431, %2424
  %2436 = fmul fast float %2432, %2424
  %2437 = fmul fast float %2433, %2424
  %2438 = fadd fast float %2434, %2416
  %2439 = fadd fast float %2435, %2418
  %2440 = fadd fast float %2436, %2420
  %2441 = fadd fast float %2437, %2422
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = and i32 %2443, 536870911
  %2445 = uitofp i32 %2444 to float
  %2446 = fmul fast float %2445, %2292
  %2447 = fmul fast float %2445, %2296
  %2448 = fptoui float %2446 to i32
  %2449 = fptoui float %2447 to i32
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 31
  %2453 = lshr i32 %2448, %2452
  %2454 = lshr i32 %2449, %2452
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = and i32 %2456, 31
  %2458 = shl i32 1, %2457
  %2459 = call i32 @dx.op.binary.i32(i32 40, i32 %2458, i32 4)  ; UMin(a,b)
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.i32 %2460, 1
  %2463 = icmp eq i32 %2459, 0
  br i1 %2463, label %2505, label %2464

; <label>:2464                                    ; preds = %2408
  br label %2465

; <label>:2465                                    ; preds = %2493, %2464
  %2466 = phi i32 [ %2496, %2493 ], [ 0, %2464 ]
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = lshr i32 %2468, 16
  %2470 = and i32 %2469, 31
  %2471 = shl i32 %2454, %2470
  %2472 = add i32 %2471, %2453
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = and i32 %2474, 31
  %2476 = shl i32 %2472, %2475
  %2477 = add i32 %2476, %2466
  %2478 = shl i32 %2477, 2
  %2479 = add i32 %2478, 32
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = icmp slt i32 %2481, 0
  %2483 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2466
  %2484 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2466
  %2485 = bitcast float* %2483 to i32*
  %2486 = bitcast float* %2484 to i32*
  br i1 %2482, label %2487, label %2493, !dx.controlflow.hints !119

; <label>:2487                                    ; preds = %2465
  %2488 = and i32 %2481, 1073741823
  %2489 = add nuw nsw i32 %2488, 20
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.i32 %2490, 1
  br label %2493

; <label>:2493                                    ; preds = %2487, %2465
  %2494 = phi i32 [ %2491, %2487 ], [ %2461, %2465 ]
  %2495 = phi i32 [ %2492, %2487 ], [ %2462, %2465 ]
  store i32 %2494, i32* %2485, align 4
  store i32 %2495, i32* %2486, align 4
  %2496 = add nuw i32 %2466, 1
  %2497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.i32 %2497, 2
  %2499 = icmp eq i32 %2498, 0
  %2500 = icmp ugt i32 %2481, -1073741825
  %2501 = and i1 %2500, %2499
  %2502 = icmp ult i32 %2496, %2459
  %2503 = and i1 %2501, %2502
  br i1 %2503, label %2465, label %2504, !dx.controlflow.hints !120

; <label>:2504                                    ; preds = %2493
  br label %2505

; <label>:2505                                    ; preds = %2504, %2408
  %2506 = phi i32 [ 0, %2408 ], [ %2496, %2504 ]
  %2507 = extractvalue %dx.types.CBufRet.f32 %2270, 2
  %2508 = fptoui float %2507 to i32
  %2509 = icmp eq i32 %2508, 0
  br i1 %2509, label %2561, label %2510

; <label>:2510                                    ; preds = %2505
  br label %2511

; <label>:2511                                    ; preds = %2556, %2510
  %2512 = phi i32 [ %2557, %2556 ], [ %2506, %2510 ]
  %2513 = phi i32 [ %2558, %2556 ], [ 0, %2510 ]
  %2514 = lshr i32 %2513, 2
  %2515 = and i32 %2513, 3
  %2516 = add nuw nsw i32 %2514, 83
  %2517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 %2516)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.i32 %2517, 0
  %2519 = extractvalue %dx.types.CBufRet.i32 %2517, 1
  %2520 = extractvalue %dx.types.CBufRet.i32 %2517, 2
  %2521 = extractvalue %dx.types.CBufRet.i32 %2517, 3
  %2522 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 0
  store i32 %2518, i32* %2522, align 4
  %2523 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 1
  store i32 %2519, i32* %2523, align 4
  %2524 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 2
  store i32 %2520, i32* %2524, align 4
  %2525 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 3
  store i32 %2521, i32* %2525, align 4
  %2526 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 %2515
  %2527 = load i32, i32* %2526, align 4, !tbaa !121, !noalias !123
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = lshr i32 %2529, 16
  %2531 = and i32 %2530, 31
  %2532 = shl i32 %2454, %2531
  %2533 = add i32 %2532, %2453
  %2534 = shl i32 %2533, 2
  %2535 = add i32 %2534, %2527
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = icmp eq i32 %2537, 0
  br i1 %2538, label %2556, label %2539, !dx.controlflow.hints !130

; <label>:2539                                    ; preds = %2511
  %2540 = icmp slt i32 %2537, 0
  %2541 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2512
  %2542 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2512
  %2543 = bitcast float* %2541 to i32*
  %2544 = bitcast float* %2542 to i32*
  br i1 %2540, label %2545, label %2552, !dx.controlflow.hints !131

; <label>:2545                                    ; preds = %2539
  %2546 = and i32 %2537, 1073741823
  %2547 = add i32 %2527, 20
  %2548 = add i32 %2547, %2546
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = extractvalue %dx.types.ResRet.i32 %2549, 1
  br label %2552

; <label>:2552                                    ; preds = %2545, %2539
  %2553 = phi i32 [ %2550, %2545 ], [ %2461, %2539 ]
  %2554 = phi i32 [ %2551, %2545 ], [ %2462, %2539 ]
  store i32 %2553, i32* %2543, align 4
  store i32 %2554, i32* %2544, align 4
  %2555 = add i32 %2512, 1
  br label %2556

; <label>:2556                                    ; preds = %2552, %2511
  %2557 = phi i32 [ %2512, %2511 ], [ %2555, %2552 ]
  %2558 = add nuw i32 %2513, 1
  %2559 = icmp eq i32 %2558, %2508
  br i1 %2559, label %2560, label %2511

; <label>:2560                                    ; preds = %2556
  br label %2561

; <label>:2561                                    ; preds = %2560, %2505
  %2562 = phi i32 [ %2506, %2505 ], [ %2557, %2560 ]
  %2563 = icmp eq i32 %2562, 1
  %2564 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 0
  %2565 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 0
  br i1 %2563, label %2566, label %2569, !dx.controlflow.hints !132

; <label>:2566                                    ; preds = %2561
  %2567 = load float, float* %2564, align 4
  %2568 = load float, float* %2565, align 4
  br label %2596

; <label>:2569                                    ; preds = %2561
  %2570 = load float, float* %2564, align 4
  %2571 = load float, float* %2565, align 4
  %2572 = fdiv fast float 1.000000e+00, %2571
  %2573 = fsub fast float %2570, %2572
  %2574 = icmp ugt i32 %2562, 1
  br i1 %2574, label %2575, label %2591

; <label>:2575                                    ; preds = %2569
  br label %2576

; <label>:2576                                    ; preds = %2576, %2575
  %2577 = phi float [ %2586, %2576 ], [ %2573, %2575 ]
  %2578 = phi float [ %2587, %2576 ], [ %2570, %2575 ]
  %2579 = phi i32 [ %2588, %2576 ], [ 1, %2575 ]
  %2580 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2579
  %2581 = load float, float* %2580, align 4
  %2582 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2579
  %2583 = load float, float* %2582, align 4
  %2584 = fdiv fast float 1.000000e+00, %2583
  %2585 = fsub fast float %2581, %2584
  %2586 = call float @dx.op.binary.f32(i32 36, float %2577, float %2585)  ; FMin(a,b)
  %2587 = call float @dx.op.binary.f32(i32 35, float %2578, float %2581)  ; FMax(a,b)
  %2588 = add nuw i32 %2579, 1
  %2589 = icmp eq i32 %2588, %2562
  br i1 %2589, label %2590, label %2576

; <label>:2590                                    ; preds = %2576
  br label %2591

; <label>:2591                                    ; preds = %2590, %2569
  %2592 = phi float [ %2573, %2569 ], [ %2586, %2590 ]
  %2593 = phi float [ %2570, %2569 ], [ %2587, %2590 ]
  %2594 = fsub fast float %2593, %2592
  %2595 = fdiv fast float 1.000000e+00, %2594
  br label %2596

; <label>:2596                                    ; preds = %2591, %2566
  %2597 = phi float [ %2567, %2566 ], [ %2593, %2591 ]
  %2598 = phi float [ %2568, %2566 ], [ %2595, %2591 ]
  %2599 = fadd fast float %2300, %2597
  %2600 = fmul fast float %2599, %2598
  %2601 = call float @dx.op.unary.f32(i32 7, float %2600)  ; Saturate(value)
  %2602 = fmul fast float %2601, 2.000000e+00
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2438, %2438
  %2605 = fsub fast float %2439, %2604
  %2606 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2605)  ; FMax(a,b)
  %2607 = fdiv fast float 1.000000e+00, %2606
  %2608 = fmul fast float %2439, %2438
  %2609 = fsub fast float %2440, %2608
  %2610 = fsub fast float %2603, %2438
  %2611 = fmul fast float %2603, %2603
  %2612 = fsub fast float %2611, %2439
  %2613 = fmul fast float %2607, %2609
  %2614 = fmul fast float %2613, %2610
  %2615 = fsub fast float %2612, %2614
  %2616 = fmul fast float %2439, %2439
  %2617 = fsub fast float %2441, %2616
  %2618 = fmul fast float %2609, %2609
  %2619 = fmul fast float %2618, %2607
  %2620 = fsub fast float %2617, %2619
  %2621 = fdiv fast float %2615, %2620
  %2622 = fmul fast float %2621, %2609
  %2623 = fsub fast float %2610, %2622
  %2624 = fmul fast float %2623, %2607
  %2625 = fmul fast float %2624, %2438
  %2626 = fsub fast float 1.000000e+00, %2625
  %2627 = fmul fast float %2621, %2439
  %2628 = fsub fast float %2626, %2627
  %2629 = fmul fast float %2624, %2624
  %2630 = fmul fast float %2621, 4.000000e+00
  %2631 = fmul fast float %2630, %2628
  %2632 = fsub fast float %2629, %2631
  %2633 = call float @dx.op.unary.f32(i32 24, float %2632)  ; Sqrt(value)
  %2634 = fcmp fast oge float %2624, 0.000000e+00
  %2635 = fsub fast float -0.000000e+00, %2633
  %2636 = select i1 %2634, float %2635, float %2633
  %2637 = fsub fast float %2636, %2624
  %2638 = fdiv fast float %2637, %2621
  %2639 = fdiv fast float %2628, %2637
  %2640 = fmul fast float %2638, 5.000000e-01
  %2641 = fmul fast float %2639, 2.000000e+00
  %2642 = select i1 %2634, float %2640, float %2641
  %2643 = select i1 %2634, float %2641, float %2640
  %2644 = call float @dx.op.binary.f32(i32 35, float %2642, float %2643)  ; FMax(a,b)
  %2645 = call float @dx.op.binary.f32(i32 36, float %2642, float %2643)  ; FMin(a,b)
  %2646 = fcmp fast ogt float %2603, %2644
  %2647 = fsub fast float %2603, %2645
  %2648 = fsub fast float %2603, %2644
  %2649 = fsub fast float %2644, %2645
  %2650 = select i1 %2646, float %2648, float %2649
  %2651 = fmul float %2647, %2650
  %2652 = select i1 %2646, float %2645, float %2603
  %2653 = fcmp fast ogt float %2603, %2645
  %2654 = fmul fast float %2652, %2644
  %2655 = fadd fast float %2652, %2644
  %2656 = fmul fast float %2655, %2438
  %2657 = fadd fast float %2654, %2439
  %2658 = fsub fast float %2657, %2656
  %2659 = fdiv fast float %2658, %2651
  %2660 = select i1 %2653, float %2659, float 0.000000e+00
  %2661 = fsub fast float 1.000000e+00, %2660
  %2662 = select i1 %2646, float %2661, float %2660
  %2663 = call float @dx.op.unary.f32(i32 7, float %2662)  ; Saturate(value)
  %2664 = extractvalue %dx.types.CBufRet.f32 %2423, 3
  %2665 = fmul fast float %2664, %2663
  %2666 = fsub fast float 1.000000e+00, %2665
  br label %2667

; <label>:2667                                    ; preds = %2596, %2308, %2273, %2269, %2264
  %2668 = phi float [ 1.000000e+00, %2264 ], [ %2666, %2596 ], [ 1.000000e+00, %2273 ], [ 1.000000e+00, %2308 ], [ 1.000000e+00, %2269 ]
  %2669 = fcmp fast ogt float %2265, 0.000000e+00
  br i1 %2669, label %2670, label %2676, !dx.controlflow.hints !133

; <label>:2670                                    ; preds = %2667
  %2671 = fadd fast float %2230, %2216
  %2672 = call float @dx.op.binary.f32(i32 35, float %2671, float 0.000000e+00)  ; FMax(a,b)
  %2673 = fadd fast float %2672, 0x3F10000000000000
  %2674 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %2223, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float %2673)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2675 = extractvalue %dx.types.ResRet.f32 %2674, 0
  br label %2676

; <label>:2676                                    ; preds = %2670, %2667
  %2677 = phi float [ %2675, %2670 ], [ 1.000000e+00, %2667 ]
  %2678 = fsub fast float %2677, %2668
  %2679 = fmul fast float %2678, %2265
  %2680 = fadd fast float %2679, %2668
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 2
  %2683 = fcmp fast ogt float %2682, 0.000000e+00
  br i1 %2683, label %2684, label %2720, !dx.controlflow.hints !134

; <label>:2684                                    ; preds = %2676
  %2685 = fcmp fast ugt float %2682, 0.000000e+00
  br i1 %2685, label %2686, label %2717, !dx.controlflow.hints !135

; <label>:2686                                    ; preds = %2684
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.CBufRet.f32 %2687, 1
  %2690 = extractvalue %dx.types.CBufRet.f32 %2687, 2
  %2691 = extractvalue %dx.types.CBufRet.f32 %2687, 3
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.CBufRet.f32 %2692, 1
  %2695 = extractvalue %dx.types.CBufRet.f32 %2692, 2
  %2696 = extractvalue %dx.types.CBufRet.f32 %2692, 3
  %2697 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2698 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2699 = fadd fast float %2120, %2185
  %2700 = fadd fast float %2121, %2186
  %2701 = fadd fast float %2122, %2187
  %2702 = fmul fast float %2699, %2688
  %2703 = call float @dx.op.tertiary.f32(i32 46, float %2689, float %2700, float %2702)  ; FMad(a,b,c)
  %2704 = call float @dx.op.tertiary.f32(i32 46, float %2690, float %2701, float %2703)  ; FMad(a,b,c)
  %2705 = fadd fast float %2704, %2691
  %2706 = fmul fast float %2699, %2693
  %2707 = call float @dx.op.tertiary.f32(i32 46, float %2694, float %2700, float %2706)  ; FMad(a,b,c)
  %2708 = call float @dx.op.tertiary.f32(i32 46, float %2695, float %2701, float %2707)  ; FMad(a,b,c)
  %2709 = fadd fast float %2708, %2696
  %2710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %38, float %2705, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2711 = extractvalue %dx.types.ResRet.f32 %2710, 0
  %2712 = fmul fast float %2711, %2698
  %2713 = fadd fast float %2712, %2697
  %2714 = call float @dx.op.unary.f32(i32 7, float %2713)  ; Saturate(value)
  %2715 = fmul fast float %2714, %2682
  %2716 = fsub fast float 1.000000e+00, %2715
  br label %2717

; <label>:2717                                    ; preds = %2686, %2684
  %2718 = phi float [ %2716, %2686 ], [ 1.000000e+00, %2684 ]
  %2719 = fmul fast float %2718, %2680
  br label %2720

; <label>:2720                                    ; preds = %2717, %2676, %2170
  %2721 = phi float [ 1.000000e+00, %2170 ], [ %2719, %2717 ], [ %2680, %2676 ]
  %2722 = call float @dx.op.binary.f32(i32 36, float %2721, float %2721)  ; FMin(a,b)
  %2723 = call float @dx.op.binary.f32(i32 36, float %2721, float %2722)  ; FMin(a,b)
  %2724 = fcmp fast ogt float %2723, 0.000000e+00
  br i1 %2724, label %2725, label %2883, !dx.controlflow.hints !136

; <label>:2725                                    ; preds = %2720
  %2726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.CBufRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.CBufRet.f32 %2726, 2
  %2730 = extractvalue %dx.types.CBufRet.f32 %2726, 3
  %2731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.CBufRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.CBufRet.f32 %2731, 2
  %2735 = extractvalue %dx.types.CBufRet.f32 %2731, 3
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.CBufRet.f32 %2736, 1
  %2739 = extractvalue %dx.types.CBufRet.f32 %2736, 2
  %2740 = extractvalue %dx.types.CBufRet.f32 %2736, 3
  %2741 = fmul fast float %2727, %2185
  %2742 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2728, float %2741)  ; FMad(a,b,c)
  %2743 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2729, float %2742)  ; FMad(a,b,c)
  %2744 = fadd fast float %2743, %2730
  %2745 = fmul fast float %2732, %2185
  %2746 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2733, float %2745)  ; FMad(a,b,c)
  %2747 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2734, float %2746)  ; FMad(a,b,c)
  %2748 = fadd fast float %2747, %2735
  %2749 = fmul fast float %2737, %2185
  %2750 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2738, float %2749)  ; FMad(a,b,c)
  %2751 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2739, float %2750)  ; FMad(a,b,c)
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.CBufRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.CBufRet.f32 %2752, 3
  %2756 = fmul fast float %2755, %2744
  %2757 = fmul fast float %2755, %2748
  %2758 = fadd fast float %2756, %2753
  %2759 = fadd fast float %2757, %2754
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.CBufRet.f32 %2760, 1
  %2763 = fsub fast float %2758, %2761
  %2764 = fsub fast float %2759, %2762
  %2765 = fcmp fast olt float %2763, 0.000000e+00
  %2766 = fcmp fast olt float %2764, 0.000000e+00
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.CBufRet.f32 %2767, 1
  %2770 = extractvalue %dx.types.CBufRet.f32 %2767, 2
  %2771 = extractvalue %dx.types.CBufRet.f32 %2767, 3
  %2772 = select i1 %2765, float %2768, float %2770
  %2773 = select i1 %2766, float %2769, float %2771
  %2774 = fmul fast float %2772, %2763
  %2775 = fmul fast float %2773, %2764
  %2776 = call float @dx.op.unary.f32(i32 6, float %2774)  ; FAbs(value)
  %2777 = call float @dx.op.unary.f32(i32 6, float %2775)  ; FAbs(value)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2180, 0
  %2779 = call float @dx.op.binary.f32(i32 35, float %2776, float %2777)  ; FMax(a,b)
  %2780 = fsub fast float %2778, %2779
  %2781 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2782 = fcmp fast ogt float %2781, 0.000000e+00
  br i1 %2782, label %2783, label %2824, !dx.controlflow.hints !137

; <label>:2783                                    ; preds = %2725
  %2784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %2758, float %2759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2785 = extractvalue %dx.types.ResRet.f32 %2784, 1
  %2786 = fcmp fast ogt float %2785, 0.000000e+00
  br i1 %2786, label %2787, label %2820, !dx.controlflow.hints !138

; <label>:2787                                    ; preds = %2783
  %2788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %41, float %2758, float %2759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2789 = extractvalue %dx.types.ResRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.ResRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.ResRet.f32 %2788, 2
  %2792 = extractvalue %dx.types.ResRet.f32 %2788, 3
  %2793 = fsub fast float 1.000000e+00, %2740
  %2794 = fsub fast float %2793, %2751
  %2795 = fmul fast float %2794, 0x400921FB60000000
  %2796 = fadd fast float %2795, 0x3FF921FB60000000
  %2797 = call float @dx.op.unary.f32(i32 13, float %2796)  ; Sin(value)
  %2798 = fadd fast float %2797, -1.000000e+00
  %2799 = fmul fast float %2798, 0x3FD45F3060000000
  %2800 = fmul fast float %2794, 0x401921FB60000000
  %2801 = fadd fast float %2800, 0x400921FB60000000
  %2802 = call float @dx.op.unary.f32(i32 13, float %2801)  ; Sin(value)
  %2803 = fadd fast float %2802, 0x3E7777A5C0000000
  %2804 = fmul fast float %2803, 0x3FC45F3060000000
  %2805 = fmul fast float %2794, 0x4022D97C80000000
  %2806 = fadd fast float %2805, 0x4012D97C80000000
  %2807 = call float @dx.op.unary.f32(i32 13, float %2806)  ; Sin(value)
  %2808 = fadd fast float %2807, 1.000000e+00
  %2809 = fmul fast float %2808, 0x3FBB2995E0000000
  %2810 = fmul fast float %2794, 0x402921FB60000000
  %2811 = fadd fast float %2810, 0x401921FB60000000
  %2812 = call float @dx.op.unary.f32(i32 13, float %2811)  ; Sin(value)
  %2813 = fadd fast float %2812, 0xBE8777A5C0000000
  %2814 = fmul fast float %2813, 0x3FB45F3060000000
  %2815 = call float @dx.op.dot4.f32(i32 56, float %2789, float %2790, float %2791, float %2792, float %2799, float %2804, float %2809, float %2814)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2816 = fmul fast float %2815, 0xBFF7154760000000
  %2817 = call float @dx.op.unary.f32(i32 21, float %2816)  ; Exp(value)
  %2818 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2819 = fadd float %2818, -1.000000e+00
  br label %2820

; <label>:2820                                    ; preds = %2787, %2783
  %2821 = phi float [ %2819, %2787 ], [ 0.000000e+00, %2783 ]
  %2822 = fmul fast float %2821, %2781
  %2823 = fadd fast float %2822, 1.000000e+00
  br label %2824

; <label>:2824                                    ; preds = %2820, %2725
  %2825 = phi float [ %2823, %2820 ], [ 1.000000e+00, %2725 ]
  %2826 = fmul fast float %2825, %2721
  %2827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2828 = extractvalue %dx.types.CBufRet.f32 %2827, 1
  %2829 = fsub fast float -0.000000e+00, %199
  %2830 = fsub fast float -0.000000e+00, %200
  %2831 = fsub fast float -0.000000e+00, %2123
  %2832 = fsub fast float %2831, %2122
  %2833 = fadd fast float %2832, %2828
  %2834 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2829, float %2830, float %2833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2835 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2173, float %2174, float %2175)  ; Dot3(ax,ay,az,bx,by,bz)
  %2836 = fdiv fast float 1.000000e+00, %2835
  %2837 = fmul fast float %2836, %2834
  %2838 = fmul fast float %2173, %2837
  %2839 = fmul fast float %2174, %2837
  %2840 = fadd fast float %2838, %199
  %2841 = fadd fast float %2839, %200
  %2842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2843 = extractvalue %dx.types.CBufRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.CBufRet.f32 %2842, 1
  %2845 = fsub fast float %2840, %2843
  %2846 = fsub fast float %2841, %2844
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 2
  %2849 = extractvalue %dx.types.CBufRet.f32 %2847, 3
  %2850 = fmul fast float %2845, %2848
  %2851 = fmul fast float %2846, %2849
  %2852 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.i32 %2852, 3
  %2854 = icmp eq i32 %2853, 0
  br i1 %2854, label %2860, label %2855, !dx.controlflow.hints !139

; <label>:2855                                    ; preds = %2824
  %2856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %2850, float %2851, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.ResRet.f32 %2856, 1
  %2859 = extractvalue %dx.types.ResRet.f32 %2856, 2
  br label %2865

; <label>:2860                                    ; preds = %2824
  %2861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %41, float %2850, float %2851, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2862 = extractvalue %dx.types.ResRet.f32 %2861, 0
  %2863 = extractvalue %dx.types.ResRet.f32 %2861, 1
  %2864 = extractvalue %dx.types.ResRet.f32 %2861, 2
  br label %2865

; <label>:2865                                    ; preds = %2860, %2855
  %2866 = phi float [ %2857, %2855 ], [ %2862, %2860 ]
  %2867 = phi float [ %2858, %2855 ], [ %2863, %2860 ]
  %2868 = phi float [ %2859, %2855 ], [ %2864, %2860 ]
  %2869 = extractvalue %dx.types.CBufRet.f32 %2827, 2
  %2870 = fmul fast float %2869, %2866
  %2871 = extractvalue %dx.types.CBufRet.f32 %2827, 0
  %2872 = fsub fast float %2837, %2871
  %2873 = fsub fast float %2872, %2870
  %2874 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2873)  ; FMax(a,b)
  %2875 = fmul fast float %2874, %2867
  %2876 = call float @dx.op.binary.f32(i32 36, float %2868, float %2875)  ; FMin(a,b)
  %2877 = fmul fast float %2876, 0xBFF7154760000000
  %2878 = call float @dx.op.unary.f32(i32 21, float %2877)  ; Exp(value)
  %2879 = fadd fast float %2878, -1.000000e+00
  %2880 = fmul fast float %2879, %2117
  %2881 = fadd fast float %2880, 1.000000e+00
  %2882 = fmul fast float %2826, %2881
  br label %2883

; <label>:2883                                    ; preds = %2865, %2720
  %2884 = phi float [ %2882, %2865 ], [ %2721, %2720 ]
  %2885 = call float @dx.op.binary.f32(i32 36, float %2884, float %2884)  ; FMin(a,b)
  %2886 = call float @dx.op.binary.f32(i32 36, float %2884, float %2885)  ; FMin(a,b)
  %2887 = fcmp fast ogt float %2886, 0.000000e+00
  br i1 %2887, label %2888, label %2912, !dx.controlflow.hints !140

; <label>:2888                                    ; preds = %2883
  %2889 = call float @dx.op.dot3.f32(i32 55, float %2173, float %2174, float %2175, float %212, float %213, float %214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2890 = fcmp fast ogt float %2111, 0.000000e+00
  %2891 = select i1 %2890, float 1.000000e+00, float -1.000000e+00
  %2892 = fmul fast float %123, 7.812500e-03
  %2893 = fmul fast float %123, 3.125000e-02
  %2894 = fadd fast float %2893, -3.125000e-02
  %2895 = fmul fast float %2891, 5.000000e-01
  %2896 = fmul fast float %2895, %2889
  %2897 = fmul fast float %2891, %2111
  %2898 = fadd fast float %2892, 4.921875e-01
  %2899 = fadd fast float %2898, %2896
  %2900 = fadd fast float %2892, 0x3FB25F3060000000
  %2901 = fadd fast float %2894, %2897
  %2902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %41, float %2899, float %2900, float %2901, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 0
  %2906 = fmul fast float %2884, 0x400921FB60000000
  %2907 = fmul fast float %2906, %2903
  %2908 = fmul fast float %2907, %2905
  %2909 = fmul fast float %2908, %2177
  %2910 = fmul fast float %2908, %2178
  %2911 = fmul fast float %2908, %2179
  br label %2912

; <label>:2912                                    ; preds = %2888, %2883, %2106
  %2913 = phi float [ %2909, %2888 ], [ 0.000000e+00, %2106 ], [ 0.000000e+00, %2883 ]
  %2914 = phi float [ %2910, %2888 ], [ 0.000000e+00, %2106 ], [ 0.000000e+00, %2883 ]
  %2915 = phi float [ %2911, %2888 ], [ 0.000000e+00, %2106 ], [ 0.000000e+00, %2883 ]
  %2916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.i32 %2916, 0
  %2918 = icmp eq i32 %2917, 0
  br i1 %2918, label %3513, label %2919, !dx.controlflow.hints !141

; <label>:2919                                    ; preds = %2912
  %2920 = add nsw i32 %2917, -1
  %2921 = call i32 @dx.op.binary.i32(i32 37, i32 %2920, i32 0)  ; IMax(a,b)
  br label %2922

; <label>:2922                                    ; preds = %3506, %2919
  %2923 = phi i32 [ 0, %2919 ], [ %3510, %3506 ]
  %2924 = phi float [ %2913, %2919 ], [ %3507, %3506 ]
  %2925 = phi float [ %2914, %2919 ], [ %3508, %3506 ]
  %2926 = phi float [ %2915, %2919 ], [ %3509, %3506 ]
  %2927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2928 = extractvalue %dx.types.CBufRet.i32 %2927, 0
  %2929 = call i32 @dx.op.tertiary.i32(i32 49, i32 %318, i32 %2928, i32 %2923)  ; UMad(a,b,c)
  %2930 = shl i32 %2929, 2
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = icmp eq i32 %2932, 0
  br i1 %2933, label %3506, label %2934

; <label>:2934                                    ; preds = %2922
  br label %2935

; <label>:2935                                    ; preds = %3374, %2934
  %2936 = phi i32 [ %2945, %3374 ], [ %2932, %2934 ]
  %2937 = phi float [ %3375, %3374 ], [ %2924, %2934 ]
  %2938 = phi float [ %3376, %3374 ], [ %2925, %2934 ]
  %2939 = phi float [ %3377, %3374 ], [ %2926, %2934 ]
  %2940 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2936)  ; FirstbitLo(value)
  %2941 = shl i32 %2923, 5
  %2942 = add i32 %2940, %2941
  %2943 = and i32 %2940, 31
  %2944 = shl i32 1, %2943
  %2945 = xor i32 %2944, %2936
  %2946 = mul i32 %2942, 112
  %2947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.ResRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.ResRet.f32 %2947, 2
  %2951 = or i32 %2946, 12
  %2952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.f32 %2952, 0
  %2954 = add i32 %2946, 16
  %2955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.ResRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.ResRet.f32 %2955, 2
  %2959 = add i32 %2946, 28
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = add i32 %2946, 32
  %2963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.ResRet.f32 %2963, 1
  %2966 = extractvalue %dx.types.ResRet.f32 %2963, 2
  %2967 = add i32 %2946, 44
  %2968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = add i32 %2946, 48
  %2971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.f32 %2971, 0
  %2973 = extractvalue %dx.types.ResRet.f32 %2971, 1
  %2974 = extractvalue %dx.types.ResRet.f32 %2971, 2
  %2975 = extractvalue %dx.types.ResRet.f32 %2971, 3
  %2976 = add i32 %2946, 64
  %2977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 1
  %2980 = extractvalue %dx.types.ResRet.f32 %2977, 2
  %2981 = extractvalue %dx.types.ResRet.f32 %2977, 3
  %2982 = add i32 %2946, 92
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %2984, 65535
  %2986 = uitofp i32 %2985 to float
  %2987 = lshr i32 %2984, 16
  %2988 = uitofp i32 %2987 to float
  %2989 = and i32 %2961, 65535
  %2990 = and i32 %2961, 50331648
  %2991 = icmp eq i32 %2990, 33554432
  %2992 = fdiv fast float 1.000000e+00, %2163
  br i1 %2991, label %2993, label %3185, !dx.controlflow.hints !142

; <label>:2993                                    ; preds = %2935
  %2994 = fsub fast float %2972, %2964
  %2995 = fsub fast float %2973, %2965
  %2996 = fsub fast float %2974, %2966
  %2997 = fmul fast float %2164, %2163
  %2998 = fmul fast float %2165, %2163
  %2999 = fmul fast float %2166, %2163
  %3000 = fadd fast float %2997, %2146
  %3001 = fadd fast float %2998, %2147
  %3002 = fadd fast float %2999, %2148
  %3003 = fmul fast float %2964, 2.000000e+00
  %3004 = fmul fast float %2965, 2.000000e+00
  %3005 = fmul fast float %2966, 2.000000e+00
  %3006 = call float @dx.op.dot3.f32(i32 55, float %3003, float %3004, float %3005, float %3003, float %3004, float %3005)  ; Dot3(ax,ay,az,bx,by,bz)
  %3007 = fdiv fast float %3003, %3006
  %3008 = fdiv fast float %3004, %3006
  %3009 = fdiv fast float %3005, %3006
  %3010 = fsub fast float %2146, %2994
  %3011 = fsub fast float %2147, %2995
  %3012 = fsub fast float %2148, %2996
  %3013 = call float @dx.op.dot3.f32(i32 55, float %3010, float %3011, float %3012, float %3003, float %3004, float %3005)  ; Dot3(ax,ay,az,bx,by,bz)
  %3014 = fmul fast float %3013, %3007
  %3015 = fmul fast float %3013, %3008
  %3016 = fmul fast float %3013, %3009
  %3017 = fsub fast float %2146, %3014
  %3018 = fsub fast float %2147, %3015
  %3019 = fsub fast float %2148, %3016
  %3020 = fsub fast float %3000, %2994
  %3021 = fsub fast float %3001, %2995
  %3022 = fsub fast float %3002, %2996
  %3023 = call float @dx.op.dot3.f32(i32 55, float %3020, float %3021, float %3022, float %3003, float %3004, float %3005)  ; Dot3(ax,ay,az,bx,by,bz)
  %3024 = fmul fast float %3023, %3007
  %3025 = fmul fast float %3023, %3008
  %3026 = fmul fast float %3023, %3009
  %3027 = fsub fast float %3000, %3024
  %3028 = fsub fast float %3001, %3025
  %3029 = fsub fast float %3002, %3026
  %3030 = fsub fast float %3027, %3017
  %3031 = fsub fast float %3028, %3018
  %3032 = fsub fast float %3029, %3019
  %3033 = fsub fast float %2994, %3017
  %3034 = fsub fast float %2995, %3018
  %3035 = fsub fast float %2996, %3019
  %3036 = call float @dx.op.dot3.f32(i32 55, float %3033, float %3034, float %3035, float %3030, float %3031, float %3032)  ; Dot3(ax,ay,az,bx,by,bz)
  %3037 = call float @dx.op.dot3.f32(i32 55, float %3030, float %3031, float %3032, float %3030, float %3031, float %3032)  ; Dot3(ax,ay,az,bx,by,bz)
  %3038 = fdiv fast float %3036, %3037
  %3039 = fcmp fast une float %3017, %3027
  %3040 = fcmp fast une float %3018, %3028
  %3041 = fcmp fast une float %3019, %3029
  %3042 = or i1 %3039, %3040
  %3043 = or i1 %3041, %3042
  %3044 = select i1 %3043, float %3038, float 0.000000e+00
  %3045 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3046 = fmul fast float %3045, %2997
  %3047 = fmul fast float %3045, %2998
  %3048 = fmul fast float %3045, %2999
  %3049 = fadd fast float %3010, %3046
  %3050 = fadd fast float %3011, %3047
  %3051 = fadd fast float %3012, %3048
  %3052 = call float @dx.op.dot3.f32(i32 55, float %3049, float %3050, float %3051, float %3003, float %3004, float %3005)  ; Dot3(ax,ay,az,bx,by,bz)
  %3053 = fdiv fast float %3052, %3006
  %3054 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3055 = fmul fast float %3003, %3054
  %3056 = fmul fast float %3004, %3054
  %3057 = fmul fast float %3005, %3054
  %3058 = fadd fast float %3055, %2994
  %3059 = fadd fast float %3056, %2995
  %3060 = fadd fast float %3057, %2996
  %3061 = fmul fast float %2980, %2956
  %3062 = fmul fast float %2980, %2957
  %3063 = fmul fast float %2980, %2958
  %3064 = fadd fast float %3058, %3061
  %3065 = fadd fast float %3059, %3062
  %3066 = fadd fast float %3060, %3063
  %3067 = fsub fast float -0.000000e+00, %2979
  %3068 = fdiv fast float %3067, %2978
  %3069 = fmul fast float %3068, %3068
  %3070 = call float @dx.op.dot3.f32(i32 55, float %2164, float %2165, float %2166, float %2956, float %2957, float %2958)  ; Dot3(ax,ay,az,bx,by,bz)
  %3071 = fsub fast float %2146, %3064
  %3072 = fsub fast float %2147, %3065
  %3073 = fsub fast float %2148, %3066
  %3074 = call float @dx.op.dot3.f32(i32 55, float %3071, float %3072, float %3073, float %2956, float %2957, float %2958)  ; Dot3(ax,ay,az,bx,by,bz)
  %3075 = fsub fast float %3064, %2146
  %3076 = fsub fast float %3065, %2147
  %3077 = fsub fast float %3066, %2148
  %3078 = fmul fast float %3070, %3070
  %3079 = fsub fast float %3078, %3069
  %3080 = fmul fast float %3074, %3070
  %3081 = call float @dx.op.dot3.f32(i32 55, float %3075, float %3076, float %3077, float %2164, float %2165, float %2166)  ; Dot3(ax,ay,az,bx,by,bz)
  %3082 = fmul fast float %3081, %3069
  %3083 = fadd fast float %3082, %3080
  %3084 = fmul fast float %3083, 2.000000e+00
  %3085 = fmul fast float %3074, %3074
  %3086 = call float @dx.op.dot3.f32(i32 55, float %3075, float %3076, float %3077, float %3075, float %3076, float %3077)  ; Dot3(ax,ay,az,bx,by,bz)
  %3087 = fmul fast float %3086, %3069
  %3088 = fsub fast float %3085, %3087
  %3089 = fmul fast float %3084, %3084
  %3090 = fmul fast float %3079, 4.000000e+00
  %3091 = fmul fast float %3090, %3088
  %3092 = fsub fast float %3089, %3091
  %3093 = fcmp fast ogt float %3092, 0.000000e+00
  br i1 %3093, label %3094, label %3185, !dx.controlflow.hints !143

; <label>:3094                                    ; preds = %2993
  %3095 = call float @dx.op.unary.f32(i32 24, float %3092)  ; Sqrt(value)
  %3096 = fdiv fast float 5.000000e-01, %3079
  %3097 = fsub fast float -0.000000e+00, %3084
  %3098 = fsub fast float %3097, %3095
  %3099 = fmul fast float %3098, %3096
  %3100 = fsub fast float %3095, %3084
  %3101 = fmul fast float %3100, %3096
  %3102 = call float @dx.op.binary.f32(i32 35, float %3099, float %3101)  ; FMax(a,b)
  %3103 = call float @dx.op.binary.f32(i32 36, float %3099, float %3101)  ; FMin(a,b)
  %3104 = fsub fast float %3058, %2146
  %3105 = fsub fast float %3059, %2147
  %3106 = fsub fast float %3060, %2148
  %3107 = call float @dx.op.dot3.f32(i32 55, float %3104, float %3105, float %3106, float %2956, float %2957, float %2958)  ; Dot3(ax,ay,az,bx,by,bz)
  %3108 = fdiv fast float %3107, %3070
  %3109 = fcmp fast ogt float %3070, 0.000000e+00
  br i1 %3109, label %3110, label %3113, !dx.controlflow.hints !144

; <label>:3110                                    ; preds = %3094
  %3111 = call float @dx.op.binary.f32(i32 36, float %3103, float %3108)  ; FMin(a,b)
  %3112 = call float @dx.op.binary.f32(i32 36, float %3102, float %3108)  ; FMin(a,b)
  br label %3116

; <label>:3113                                    ; preds = %3094
  %3114 = call float @dx.op.binary.f32(i32 35, float %3103, float %3108)  ; FMax(a,b)
  %3115 = call float @dx.op.binary.f32(i32 35, float %3102, float %3108)  ; FMax(a,b)
  br label %3116

; <label>:3116                                    ; preds = %3113, %3110
  %3117 = phi float [ %3111, %3110 ], [ %3114, %3113 ]
  %3118 = phi float [ %3112, %3110 ], [ %3115, %3113 ]
  %3119 = fcmp fast oge float %3117, 0.000000e+00
  %3120 = fcmp fast olt float %3117, %2163
  %3121 = and i1 %3119, %3120
  %3122 = fcmp fast ogt float %3118, 0.000000e+00
  %3123 = fcmp fast ole float %3118, %2163
  %3124 = and i1 %3122, %3123
  %3125 = or i1 %3121, %3124
  br i1 %3125, label %3126, label %3185, !dx.controlflow.hints !145

; <label>:3126                                    ; preds = %3116
  %3127 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3117)  ; FMax(a,b)
  %3128 = call float @dx.op.binary.f32(i32 36, float %2163, float %3118)  ; FMin(a,b)
  br i1 %3109, label %3129, label %3151, !dx.controlflow.hints !146

; <label>:3129                                    ; preds = %3126
  %3130 = fmul fast float %3128, %2164
  %3131 = fmul fast float %3128, %2165
  %3132 = fmul fast float %3128, %2166
  %3133 = fsub fast float %3075, %3130
  %3134 = fsub fast float %3076, %3131
  %3135 = fsub fast float %3077, %3132
  %3136 = call float @dx.op.dot3.f32(i32 55, float %3133, float %3134, float %3135, float %3133, float %3134, float %3135)  ; Dot3(ax,ay,az,bx,by,bz)
  %3137 = call float @dx.op.unary.f32(i32 25, float %3136)  ; Rsqrt(value)
  %3138 = fmul fast float %3137, %3133
  %3139 = fmul fast float %3137, %3134
  %3140 = fmul fast float %3137, %3135
  %3141 = call float @dx.op.dot3.f32(i32 55, float %3138, float %3139, float %3140, float %2956, float %2957, float %2958)  ; Dot3(ax,ay,az,bx,by,bz)
  %3142 = fmul fast float %3141, %2978
  %3143 = fadd fast float %3142, %2979
  %3144 = fcmp fast olt float %3143, 0xBF1A36E2E0000000
  %3145 = select i1 %3144, float 0.000000e+00, float %3127
  %3146 = select i1 %3144, float %3127, float %3128
  %3147 = fsub fast float %3145, %3146
  %3148 = call float @dx.op.unary.f32(i32 6, float %3147)  ; FAbs(value)
  %3149 = fcmp fast olt float %3148, 0x3F1A36E2E0000000
  br i1 %3149, label %3150, label %3173, !dx.controlflow.hints !147

; <label>:3150                                    ; preds = %3129
  br label %3173

; <label>:3151                                    ; preds = %3126
  %3152 = fmul fast float %3127, %2164
  %3153 = fmul fast float %3127, %2165
  %3154 = fmul fast float %3127, %2166
  %3155 = fsub fast float %3075, %3152
  %3156 = fsub fast float %3076, %3153
  %3157 = fsub fast float %3077, %3154
  %3158 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3156, float %3157, float %3155, float %3156, float %3157)  ; Dot3(ax,ay,az,bx,by,bz)
  %3159 = call float @dx.op.unary.f32(i32 25, float %3158)  ; Rsqrt(value)
  %3160 = fmul fast float %3159, %3155
  %3161 = fmul fast float %3159, %3156
  %3162 = fmul fast float %3159, %3157
  %3163 = call float @dx.op.dot3.f32(i32 55, float %3160, float %3161, float %3162, float %2956, float %2957, float %2958)  ; Dot3(ax,ay,az,bx,by,bz)
  %3164 = fmul fast float %3163, %2978
  %3165 = fadd fast float %3164, %2979
  %3166 = fcmp fast olt float %3165, 0xBF1A36E2E0000000
  %3167 = select i1 %3166, float %3128, float %3127
  %3168 = select i1 %3166, float %2163, float %3128
  %3169 = fsub fast float %3167, %3168
  %3170 = call float @dx.op.unary.f32(i32 6, float %3169)  ; FAbs(value)
  %3171 = fcmp fast olt float %3170, 0x3F1A36E2E0000000
  br i1 %3171, label %3172, label %3173, !dx.controlflow.hints !148

; <label>:3172                                    ; preds = %3151
  br label %3173

; <label>:3173                                    ; preds = %3172, %3151, %3150, %3129
  %3174 = phi float [ 0.000000e+00, %3150 ], [ %3145, %3129 ], [ %3167, %3172 ], [ %3167, %3151 ]
  %3175 = phi float [ %3146, %3150 ], [ %3146, %3129 ], [ %2163, %3172 ], [ %3168, %3151 ]
  %3176 = fmul fast float %3174, %2164
  %3177 = fmul fast float %3174, %2165
  %3178 = fmul fast float %3174, %2166
  %3179 = fadd fast float %3176, %2146
  %3180 = fadd fast float %3177, %2147
  %3181 = fadd fast float %3178, %2148
  %3182 = fsub fast float %3175, %3174
  %3183 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3182)  ; FMax(a,b)
  %3184 = fmul fast float %3183, %2992
  br label %3185

; <label>:3185                                    ; preds = %3173, %3116, %2993, %2935
  %3186 = phi float [ %3064, %3173 ], [ %3064, %3116 ], [ %3064, %2993 ], [ %2972, %2935 ]
  %3187 = phi float [ %3065, %3173 ], [ %3065, %3116 ], [ %3065, %2993 ], [ %2973, %2935 ]
  %3188 = phi float [ %3066, %3173 ], [ %3066, %3116 ], [ %3066, %2993 ], [ %2974, %2935 ]
  %3189 = phi float [ %3179, %3173 ], [ %2146, %3116 ], [ %2146, %2993 ], [ %2146, %2935 ]
  %3190 = phi float [ %3180, %3173 ], [ %2147, %3116 ], [ %2147, %2993 ], [ %2147, %2935 ]
  %3191 = phi float [ %3181, %3173 ], [ %2148, %3116 ], [ %2148, %2993 ], [ %2148, %2935 ]
  %3192 = phi float [ %3183, %3173 ], [ %2163, %3116 ], [ %2163, %2993 ], [ %2163, %2935 ]
  %3193 = phi float [ %3184, %3173 ], [ 1.000000e+00, %3116 ], [ 1.000000e+00, %2993 ], [ 1.000000e+00, %2935 ]
  %3194 = fsub fast float %3186, %3189
  %3195 = fsub fast float %3187, %3190
  %3196 = fsub fast float %3188, %3191
  %3197 = call float @dx.op.dot3.f32(i32 55, float %3194, float %3195, float %3196, float %2164, float %2165, float %2166)  ; Dot3(ax,ay,az,bx,by,bz)
  %3198 = call float @dx.op.binary.f32(i32 35, float %3197, float 0.000000e+00)  ; FMax(a,b)
  %3199 = call float @dx.op.binary.f32(i32 36, float %3198, float %3192)  ; FMin(a,b)
  %3200 = fmul fast float %3199, %2164
  %3201 = fmul fast float %3199, %2165
  %3202 = fmul fast float %3199, %2166
  %3203 = fsub fast float %3189, %3186
  %3204 = fadd fast float %3203, %3200
  %3205 = fsub fast float %3190, %3187
  %3206 = fadd fast float %3205, %3201
  %3207 = fsub fast float %3191, %3188
  %3208 = fadd fast float %3207, %3202
  %3209 = fmul fast float %3204, %3204
  %3210 = fmul fast float %3206, %3206
  %3211 = fadd fast float %3209, %3210
  %3212 = fmul fast float %3208, %3208
  %3213 = fadd fast float %3211, %3212
  %3214 = call float @dx.op.unary.f32(i32 24, float %3213)  ; Sqrt(value)
  %3215 = fsub fast float -0.000000e+00, %3199
  %3216 = call float @dx.op.unary.f32(i32 6, float %3215)  ; FAbs(value)
  %3217 = fadd fast float %3216, 0x3DDB7CDFE0000000
  %3218 = fcmp fast oge float %3214, 0.000000e+00
  %3219 = fsub fast float -0.000000e+00, %3217
  %3220 = select i1 %3218, float %3219, float %3217
  %3221 = fadd fast float %3220, %3214
  %3222 = fsub fast float -0.000000e+00, %3214
  %3223 = select i1 %3218, float %3214, float %3222
  %3224 = fadd fast float %3217, %3223
  %3225 = fdiv fast float %3221, %3224
  %3226 = select i1 %3218, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %3227 = fmul fast float %3225, %3225
  %3228 = fmul fast float %3227, 0x3FC9205BC0000000
  %3229 = fadd fast float %3228, 0xBFEF6A1620000000
  %3230 = fmul fast float %3229, %3225
  %3231 = fadd fast float %3230, %3226
  %3232 = fcmp ole float %3199, -0.000000e+00
  %3233 = fsub fast float -0.000000e+00, %3231
  %3234 = select i1 %3232, float %3231, float %3233
  %3235 = fsub fast float %3192, %3199
  %3236 = call float @dx.op.unary.f32(i32 6, float %3235)  ; FAbs(value)
  %3237 = fadd fast float %3236, 0x3DDB7CDFE0000000
  %3238 = fsub fast float -0.000000e+00, %3237
  %3239 = select i1 %3218, float %3238, float %3237
  %3240 = fadd fast float %3239, %3214
  %3241 = fadd fast float %3237, %3223
  %3242 = fdiv fast float %3240, %3241
  %3243 = fmul fast float %3242, %3242
  %3244 = fmul fast float %3243, 0x3FC9205BC0000000
  %3245 = fadd fast float %3244, 0xBFEF6A1620000000
  %3246 = fmul fast float %3245, %3242
  %3247 = fadd fast float %3246, %3226
  %3248 = fcmp fast oge float %3235, 0.000000e+00
  %3249 = fsub fast float -0.000000e+00, %3247
  %3250 = select i1 %3248, float %3247, float %3249
  %3251 = fsub fast float %3250, %3234
  %3252 = fmul fast float %3251, %123
  %3253 = fadd fast float %3252, %3234
  %3254 = call float @dx.op.unary.f32(i32 14, float %3253)  ; Tan(value)
  %3255 = fmul fast float %3254, %3214
  %3256 = fadd fast float %3255, %3199
  %3257 = fmul fast float %3214, %3214
  %3258 = fmul fast float %3255, %3255
  %3259 = fadd fast float %3258, %3257
  %3260 = fmul fast float %3251, %3259
  %3261 = fdiv fast float %3214, %3260
  %3262 = fdiv fast float 1.000000e+00, %3261
  %3263 = fmul fast float %3193, %2992
  %3264 = fmul fast float %3263, %3262
  %3265 = fmul fast float %3256, %2164
  %3266 = fmul fast float %3256, %2165
  %3267 = fmul fast float %3256, %2166
  %3268 = fadd fast float %3265, %3189
  %3269 = fadd fast float %3266, %3190
  %3270 = fadd fast float %3267, %3191
  %3271 = call float @dx.op.dot3.f32(i32 55, float %2964, float %2965, float %2966, float %2964, float %2965, float %2966)  ; Dot3(ax,ay,az,bx,by,bz)
  %3272 = fsub fast float %3268, %2972
  %3273 = fsub fast float %3269, %2973
  %3274 = fsub fast float %3270, %2974
  %3275 = call float @dx.op.dot3.f32(i32 55, float %3272, float %3273, float %3274, float %2964, float %2965, float %2966)  ; Dot3(ax,ay,az,bx,by,bz)
  %3276 = fdiv fast float %3275, %3271
  %3277 = call float @dx.op.binary.f32(i32 35, float %3276, float -1.000000e+00)  ; FMax(a,b)
  %3278 = call float @dx.op.binary.f32(i32 36, float %3277, float 1.000000e+00)  ; FMin(a,b)
  %3279 = fmul fast float %3278, %2964
  %3280 = fmul fast float %3278, %2965
  %3281 = fmul fast float %3278, %2966
  %3282 = fadd fast float %3279, %2972
  %3283 = fadd fast float %3280, %2973
  %3284 = fadd fast float %3281, %2974
  %3285 = fsub fast float %3282, %3268
  %3286 = fsub fast float %3283, %3269
  %3287 = fsub fast float %3284, %3270
  %3288 = call float @dx.op.dot3.f32(i32 55, float %3285, float %3286, float %3287, float %3285, float %3286, float %3287)  ; Dot3(ax,ay,az,bx,by,bz)
  %3289 = call float @dx.op.unary.f32(i32 24, float %3288)  ; Sqrt(value)
  %3290 = fdiv fast float 1.000000e+00, %3289
  %3291 = fmul fast float %3285, %3290
  %3292 = fmul fast float %3286, %3290
  %3293 = fmul fast float %3287, %3290
  %3294 = fadd fast float %3289, %2953
  %3295 = fdiv fast float 1.000000e+00, %3294
  %3296 = fmul float %2969, %3295
  %3297 = fmul float %3296, %3296
  %3298 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  br i1 %2991, label %3299, label %3323, !dx.controlflow.hints !149

; <label>:3299                                    ; preds = %3185
  %3300 = fmul fast float %2980, %2956
  %3301 = fmul fast float %2980, %2957
  %3302 = fmul fast float %2980, %2958
  %3303 = fsub fast float %3300, %3268
  %3304 = fadd fast float %3303, %3282
  %3305 = fsub fast float %3301, %3269
  %3306 = fadd fast float %3305, %3283
  %3307 = fsub fast float %3302, %3270
  %3308 = fadd fast float %3307, %3284
  %3309 = call float @dx.op.dot3.f32(i32 55, float %3304, float %3306, float %3308, float %3304, float %3306, float %3308)  ; Dot3(ax,ay,az,bx,by,bz)
  %3310 = call float @dx.op.unary.f32(i32 25, float %3309)  ; Rsqrt(value)
  %3311 = fmul fast float %3310, %3304
  %3312 = fmul fast float %3310, %3306
  %3313 = fmul fast float %3310, %3308
  %3314 = fsub fast float %3268, %3282
  %3315 = fsub fast float %3269, %3283
  %3316 = fsub fast float %3270, %3284
  %3317 = fsub fast float -0.000000e+00, %3314
  %3318 = fsub fast float -0.000000e+00, %3315
  %3319 = fsub fast float -0.000000e+00, %3316
  %3320 = call float @dx.op.dot3.f32(i32 55, float %3317, float %3318, float %3319, float %2956, float %2957, float %2958)  ; Dot3(ax,ay,az,bx,by,bz)
  %3321 = fcmp fast ogt float %3320, 0.000000e+00
  %3322 = uitofp i1 %3321 to float
  br label %3323

; <label>:3323                                    ; preds = %3299, %3185
  %3324 = phi float [ %3322, %3299 ], [ 1.000000e+00, %3185 ]
  %3325 = phi float [ %3311, %3299 ], [ %3291, %3185 ]
  %3326 = phi float [ %3312, %3299 ], [ %3292, %3185 ]
  %3327 = phi float [ %3313, %3299 ], [ %3293, %3185 ]
  %3328 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2957, float %2958, float %3325, float %3326, float %3327)  ; Dot3(ax,ay,az,bx,by,bz)
  %3329 = fmul fast float %3328, %3328
  %3330 = call float @dx.op.unary.f32(i32 7, float %3329)  ; Saturate(value)
  %3331 = fsub fast float 1.000000e+00, %3330
  %3332 = fmul fast float %3331, 5.000000e-01
  %3333 = fcmp fast ogt float %3328, 0.000000e+00
  %3334 = fsub fast float 1.000000e+00, %3332
  %3335 = select i1 %3333, float %3332, float %3334
  %3336 = fmul fast float %3335, %2988
  %3337 = fadd fast float %3336, %2986
  %3338 = fmul fast float %3337, 0x3EF0001000000000
  %3339 = fsub fast float %3282, %391
  %3340 = fsub fast float %3283, %392
  %3341 = fsub fast float %3284, %393
  %3342 = call float @dx.op.dot3.f32(i32 55, float %3339, float %3340, float %3341, float %3339, float %3340, float %3341)  ; Dot3(ax,ay,az,bx,by,bz)
  %3343 = fmul fast float %2118, %2118
  %3344 = fsub fast float %3342, %3343
  %3345 = fdiv fast float %3344, %3342
  %3346 = call float @dx.op.unary.f32(i32 24, float %3345)  ; Sqrt(value)
  %3347 = fsub fast float 1.000000e+00, %3346
  %3348 = fcmp fast olt float %3342, %3343
  %3349 = fmul fast float %3347, 2.560000e+02
  %3350 = select i1 %3348, float 2.560000e+02, float %3349
  %3351 = call float @dx.op.unary.f32(i32 23, float %3350)  ; Log(value)
  %3352 = call float @dx.op.binary.f32(i32 36, float %3351, float 7.000000e+00)  ; FMin(a,b)
  %3353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %39, float %3338, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %3352)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = fmul fast float %3328, %2978
  %3356 = fadd fast float %3355, %2979
  %3357 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3358 = select i1 %2991, float 1.000000e+00, float %3357
  %3359 = select i1 %2991, float %3357, float 1.000000e+00
  %3360 = fmul fast float %3289, %2975
  %3361 = fsub fast float 1.000000e+00, %3360
  %3362 = fmul fast float %3361, %2981
  %3363 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3364 = fmul fast float %3363, %3359
  %3365 = fmul fast float %3364, 2.000000e+00
  %3366 = fsub fast float 3.000000e+00, %3365
  %3367 = fmul fast float %3354, %3324
  %3368 = fmul fast float %3364, %3364
  %3369 = fmul fast float %3368, %3367
  %3370 = fmul fast float %3369, %3366
  %3371 = call float @dx.op.binary.f32(i32 36, float %3370, float %3370)  ; FMin(a,b)
  %3372 = call float @dx.op.binary.f32(i32 36, float %3370, float %3371)  ; FMin(a,b)
  %3373 = fcmp fast ogt float %3372, 0.000000e+00
  br i1 %3373, label %3379, label %3374, !dx.controlflow.hints !150

; <label>:3374                                    ; preds = %3472, %3467, %3323
  %3375 = phi float [ %3502, %3472 ], [ %2937, %3467 ], [ %2937, %3323 ]
  %3376 = phi float [ %3503, %3472 ], [ %2938, %3467 ], [ %2938, %3323 ]
  %3377 = phi float [ %3504, %3472 ], [ %2939, %3467 ], [ %2939, %3323 ]
  %3378 = icmp eq i32 %2936, %2944
  br i1 %3378, label %3505, label %2935

; <label>:3379                                    ; preds = %3323
  %3380 = icmp eq i32 %2989, 255
  br i1 %3380, label %3467, label %3381, !dx.controlflow.hints !151

; <label>:3381                                    ; preds = %3379
  %3382 = mul nuw nsw i32 %2989, 176
  %3383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3387 = extractvalue %dx.types.ResRet.f32 %3383, 3
  %3388 = add nuw nsw i32 %3382, 16
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = add nuw nsw i32 %3382, 32
  %3393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = extractvalue %dx.types.ResRet.f32 %3393, 2
  %3396 = add nuw nsw i32 %3382, 48
  %3397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3399 = extractvalue %dx.types.ResRet.f32 %3397, 1
  %3400 = extractvalue %dx.types.ResRet.f32 %3397, 2
  %3401 = extractvalue %dx.types.ResRet.f32 %3397, 3
  %3402 = add nuw nsw i32 %3382, 64
  %3403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.f32 %3403, 0
  %3405 = extractvalue %dx.types.ResRet.f32 %3403, 1
  %3406 = extractvalue %dx.types.ResRet.f32 %3403, 2
  %3407 = extractvalue %dx.types.ResRet.f32 %3403, 3
  %3408 = add nuw nsw i32 %3382, 80
  %3409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3412 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3413 = extractvalue %dx.types.ResRet.f32 %3409, 3
  %3414 = add nuw nsw i32 %3382, 96
  %3415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.f32 %3415, 0
  %3417 = extractvalue %dx.types.ResRet.f32 %3415, 1
  %3418 = extractvalue %dx.types.ResRet.f32 %3415, 2
  %3419 = extractvalue %dx.types.ResRet.f32 %3415, 3
  %3420 = bitcast float %3391 to i32
  %3421 = fmul fast float %3395, %3291
  %3422 = fmul fast float %3395, %3292
  %3423 = fmul fast float %3395, %3293
  %3424 = fsub fast float %3268, %3421
  %3425 = fsub fast float %3269, %3422
  %3426 = fsub fast float %3270, %3423
  %3427 = fmul fast float %3424, %3398
  %3428 = call float @dx.op.tertiary.f32(i32 46, float %3425, float %3404, float %3427)  ; FMad(a,b,c)
  %3429 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3410, float %3428)  ; FMad(a,b,c)
  %3430 = fadd fast float %3429, %3416
  %3431 = fmul fast float %3424, %3399
  %3432 = call float @dx.op.tertiary.f32(i32 46, float %3425, float %3405, float %3431)  ; FMad(a,b,c)
  %3433 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3411, float %3432)  ; FMad(a,b,c)
  %3434 = fadd fast float %3433, %3417
  %3435 = fmul fast float %3424, %3400
  %3436 = call float @dx.op.tertiary.f32(i32 46, float %3425, float %3406, float %3435)  ; FMad(a,b,c)
  %3437 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3412, float %3436)  ; FMad(a,b,c)
  %3438 = fadd fast float %3437, %3418
  %3439 = fmul fast float %3424, %3401
  %3440 = call float @dx.op.tertiary.f32(i32 46, float %3425, float %3407, float %3439)  ; FMad(a,b,c)
  %3441 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3413, float %3440)  ; FMad(a,b,c)
  %3442 = fadd fast float %3441, %3419
  %3443 = fdiv fast float %3430, %3442
  %3444 = fdiv fast float %3434, %3442
  %3445 = fdiv fast float %3438, %3442
  %3446 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3445)  ; FMax(a,b)
  %3447 = fmul fast float %3386, 5.000000e-01
  %3448 = call float @dx.op.tertiary.f32(i32 46, float %3447, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %3449 = fadd fast float %3448, %3443
  %3450 = fadd fast float %3444, %3447
  %3451 = fmul fast float %3449, %3390
  %3452 = fmul fast float %3450, %3390
  %3453 = call float @dx.op.binary.f32(i32 35, float %3451, float %3386)  ; FMax(a,b)
  %3454 = call float @dx.op.binary.f32(i32 35, float %3452, float %3386)  ; FMax(a,b)
  %3455 = call float @dx.op.binary.f32(i32 36, float %3453, float %3387)  ; FMin(a,b)
  %3456 = call float @dx.op.binary.f32(i32 36, float %3454, float %3387)  ; FMin(a,b)
  %3457 = fadd fast float %3455, %3384
  %3458 = fadd fast float %3456, %3385
  %3459 = uitofp i32 %3420 to float
  %3460 = fadd fast float %3446, %3394
  %3461 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %3457, float %3458, float %3459, float undef, i32 0, i32 0, i32 undef, float %3460)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = fadd fast float %3462, -1.000000e+00
  %3464 = fmul fast float %3463, %3358
  %3465 = fadd fast float %3464, 1.000000e+00
  %3466 = fmul fast float %3465, %3370
  br label %3467

; <label>:3467                                    ; preds = %3381, %3379
  %3468 = phi float [ %3466, %3381 ], [ %3370, %3379 ]
  %3469 = call float @dx.op.binary.f32(i32 36, float %3468, float %3468)  ; FMin(a,b)
  %3470 = call float @dx.op.binary.f32(i32 36, float %3468, float %3469)  ; FMin(a,b)
  %3471 = fcmp fast ogt float %3470, 0.000000e+00
  br i1 %3471, label %3472, label %3374, !dx.controlflow.hints !152

; <label>:3472                                    ; preds = %3467
  %3473 = call float @dx.op.dot3.f32(i32 55, float %3291, float %3292, float %3293, float %212, float %213, float %214)  ; Dot3(ax,ay,az,bx,by,bz)
  %3474 = fcmp fast ogt float %2111, 0.000000e+00
  %3475 = select i1 %3474, float 1.000000e+00, float -1.000000e+00
  %3476 = fmul fast float %123, 7.812500e-03
  %3477 = fmul fast float %123, 3.125000e-02
  %3478 = fadd fast float %3477, -3.125000e-02
  %3479 = fmul fast float %3475, 5.000000e-01
  %3480 = fmul fast float %3479, %3473
  %3481 = fmul fast float %3475, %2111
  %3482 = fadd fast float %3476, 4.921875e-01
  %3483 = fadd fast float %3482, %3480
  %3484 = fadd fast float %3476, 0x3FB25F3060000000
  %3485 = fadd fast float %3478, %3481
  %3486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %41, float %3483, float %3484, float %3485, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3489 = extractvalue %dx.types.CBufRet.f32 %3488, 1
  %3490 = extractvalue %dx.types.CBufRet.f32 %3488, 2
  %3491 = select i1 %2991, float %3489, float %3490
  %3492 = fmul fast float %3298, 0x400921FB60000000
  %3493 = fmul fast float %3492, %3468
  %3494 = fmul fast float %3493, %3487
  %3495 = fmul fast float %3494, %3491
  %3496 = fmul fast float %3264, %2948
  %3497 = fmul fast float %3496, %3495
  %3498 = fmul fast float %3264, %2949
  %3499 = fmul fast float %3498, %3495
  %3500 = fmul fast float %3264, %2950
  %3501 = fmul fast float %3500, %3495
  %3502 = fadd fast float %3497, %2937
  %3503 = fadd fast float %3499, %2938
  %3504 = fadd fast float %3501, %2939
  br label %3374

; <label>:3505                                    ; preds = %3374
  br label %3506

; <label>:3506                                    ; preds = %3505, %2922
  %3507 = phi float [ %2924, %2922 ], [ %3375, %3505 ]
  %3508 = phi float [ %2925, %2922 ], [ %3376, %3505 ]
  %3509 = phi float [ %2926, %2922 ], [ %3377, %3505 ]
  %3510 = add i32 %2923, 1
  %3511 = icmp ugt i32 %3510, %2921
  br i1 %3511, label %3512, label %2922

; <label>:3512                                    ; preds = %3506
  br label %3513

; <label>:3513                                    ; preds = %3512, %2912
  %3514 = phi float [ %2913, %2912 ], [ %3507, %3512 ]
  %3515 = phi float [ %2914, %2912 ], [ %3508, %3512 ]
  %3516 = phi float [ %2915, %2912 ], [ %3509, %3512 ]
  %3517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %39, float %148, float %149, float %150, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.ResRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3517, 2
  %3521 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3518)  ; IsNaN(value)
  %3522 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3519)  ; IsNaN(value)
  %3523 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3520)  ; IsNaN(value)
  %3524 = or i1 %3521, %3522
  %3525 = or i1 %3524, %3523
  %3526 = select i1 %3525, float 0.000000e+00, float %3518
  %3527 = select i1 %3525, float 0.000000e+00, float %3519
  %3528 = select i1 %3525, float 0.000000e+00, float %3520
  %3529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3530 = extractvalue %dx.types.CBufRet.f32 %3529, 1
  %3531 = fmul fast float %3526, %3530
  %3532 = fmul fast float %3527, %3530
  %3533 = fmul fast float %3528, %3530
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 3
  %3536 = fmul fast float %3531, %3535
  %3537 = fmul fast float %3532, %3535
  %3538 = fmul fast float %3533, %3535
  %3539 = fadd fast float %3536, %3514
  %3540 = fadd fast float %3537, %3515
  %3541 = fadd fast float %3538, %3516
  br label %3542

; <label>:3542                                    ; preds = %3513, %2099
  %3543 = phi float [ %2108, %3513 ], [ %2100, %2099 ]
  %3544 = phi float [ %2109, %3513 ], [ %2101, %2099 ]
  %3545 = phi float [ %2110, %3513 ], [ %2102, %2099 ]
  %3546 = phi float [ %3539, %3513 ], [ 0.000000e+00, %2099 ]
  %3547 = phi float [ %3540, %3513 ], [ 0.000000e+00, %2099 ]
  %3548 = phi float [ %3541, %3513 ], [ 0.000000e+00, %2099 ]
  %3549 = fmul fast float %3543, %2104
  %3550 = fmul fast float %3544, %2104
  %3551 = fmul fast float %3545, %2104
  %3552 = fmul fast float %3549, %3546
  %3553 = fmul fast float %3550, %3547
  %3554 = fmul fast float %3551, %3548
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 0
  %3557 = fmul fast float %3552, %3556
  %3558 = fmul fast float %3553, %3556
  %3559 = fmul fast float %3554, %3556
  %3560 = fmul fast float %3558, 5.000000e-01
  %3561 = fadd fast float %3554, %3552
  %3562 = fmul fast float %3556, %3561
  %3563 = fmul fast float %3562, 2.500000e-01
  %3564 = fadd fast float %3563, %3560
  %3565 = call float @dx.op.unary.f32(i32 23, float %3564)  ; Log(value)
  %3566 = fmul fast float %3565, 0x3FE62E4300000000
  %3567 = fmul fast float %3566, %3566
  store float %218, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  %3568 = fmul fast float %3566, %218
  store float %3568, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  %3569 = fmul fast float %3567, %218
  store float %3569, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3570 = load float, float addrspace(3)* %225, align 4, !tbaa !61, !noalias !65
  %3571 = fadd fast float %3570, %218
  %3572 = load float, float addrspace(3)* %228, align 4, !tbaa !61, !noalias !65
  %3573 = fadd fast float %3572, %3566
  %3574 = load float, float addrspace(3)* %231, align 4, !tbaa !61, !noalias !65
  %3575 = fadd fast float %3574, %3567
  store float %3571, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  store float %3573, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  store float %3575, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3576 = load float, float addrspace(3)* %235, align 4, !tbaa !61, !noalias !65
  %3577 = fadd fast float %3576, %3571
  %3578 = load float, float addrspace(3)* %238, align 4, !tbaa !61, !noalias !65
  %3579 = fadd fast float %3578, %3573
  %3580 = load float, float addrspace(3)* %241, align 4, !tbaa !61, !noalias !65
  %3581 = fadd fast float %3580, %3575
  store float %3577, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  store float %3579, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  store float %3581, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3582 = load float, float addrspace(3)* %245, align 4, !tbaa !61, !noalias !65
  %3583 = fadd fast float %3582, %3577
  %3584 = load float, float addrspace(3)* %248, align 4, !tbaa !61, !noalias !65
  %3585 = fadd fast float %3584, %3579
  %3586 = fdiv fast float %3585, %3583
  br i1 %256, label %3587, label %3595, !dx.controlflow.hints !69

; <label>:3587                                    ; preds = %3542
  %3588 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %244
  %3589 = load float, float addrspace(3)* %3588, align 4, !tbaa !61, !noalias !65
  %3590 = fadd fast float %3589, %3581
  %3591 = fdiv fast float %3590, %3583
  %3592 = lshr i32 %73, 1
  %3593 = lshr i32 %74, 1
  %3594 = lshr i32 %75, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3592, i32 %3593, i32 %3594, float %3586, float %3591, float %3586, float %3586, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3595

; <label>:3595                                    ; preds = %3587, %3542
  br i1 %84, label %3630, label %3596, !dx.controlflow.hints !70

; <label>:3596                                    ; preds = %3595
  %3597 = fadd fast float %123, 0x3FE3C6EF40000000
  %3598 = call float @dx.op.unary.f32(i32 22, float %3597)  ; Frc(value)
  %3599 = call float @dx.op.unary.f32(i32 23, float %3557)  ; Log(value)
  %3600 = fadd fast float %3599, -7.000000e+00
  %3601 = call float @dx.op.unary.f32(i32 21, float %3600)  ; Exp(value)
  %3602 = fmul fast float %3598, 2.000000e+00
  %3603 = fadd fast float %3602, -1.000000e+00
  %3604 = fmul fast float %3601, %3603
  %3605 = fcmp fast ogt float %3557, 0.000000e+00
  %3606 = select i1 %3605, float %3604, float 0.000000e+00
  %3607 = fadd fast float %3606, %3557
  %3608 = fadd fast float %123, 0x3FF3C6EF40000000
  %3609 = call float @dx.op.unary.f32(i32 22, float %3608)  ; Frc(value)
  %3610 = call float @dx.op.unary.f32(i32 23, float %3558)  ; Log(value)
  %3611 = fadd fast float %3610, -7.000000e+00
  %3612 = call float @dx.op.unary.f32(i32 21, float %3611)  ; Exp(value)
  %3613 = fmul fast float %3609, 2.000000e+00
  %3614 = fadd fast float %3613, -1.000000e+00
  %3615 = fmul fast float %3612, %3614
  %3616 = fcmp fast ogt float %3558, 0.000000e+00
  %3617 = select i1 %3616, float %3615, float 0.000000e+00
  %3618 = fadd fast float %3617, %3558
  %3619 = fadd fast float %123, 0x3FFDAA66E0000000
  %3620 = call float @dx.op.unary.f32(i32 22, float %3619)  ; Frc(value)
  %3621 = call float @dx.op.unary.f32(i32 23, float %3559)  ; Log(value)
  %3622 = fadd fast float %3621, -6.000000e+00
  %3623 = call float @dx.op.unary.f32(i32 21, float %3622)  ; Exp(value)
  %3624 = fmul fast float %3620, 2.000000e+00
  %3625 = fadd fast float %3624, -1.000000e+00
  %3626 = fmul fast float %3623, %3625
  %3627 = fcmp fast ogt float %3559, 0.000000e+00
  %3628 = select i1 %3627, float %3626, float 0.000000e+00
  %3629 = fadd fast float %3628, %3559
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %73, i32 %74, i32 %75, float %3607, float %3618, float %3629, float %3607, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3630

; <label>:3630                                    ; preds = %3596, %3595
  %3631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %3632 = extractvalue %dx.types.CBufRet.f32 %3631, 0
  %3633 = fmul fast float %3632, %2104
  %3634 = fmul fast float %3633, 5.000000e-01
  %3635 = fadd fast float %2104, %2104
  %3636 = fmul fast float %3632, %3635
  %3637 = fmul fast float %3636, 2.500000e-01
  %3638 = fadd fast float %3637, %3634
  %3639 = fmul fast float %3638, %3638
  store float %218, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  %3640 = fmul fast float %3638, %218
  store float %3640, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  %3641 = fmul fast float %3639, %218
  store float %3641, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3642 = load float, float addrspace(3)* %225, align 4, !tbaa !61, !noalias !65
  %3643 = fadd fast float %3642, %218
  %3644 = load float, float addrspace(3)* %228, align 4, !tbaa !61, !noalias !65
  %3645 = fadd fast float %3638, %3644
  %3646 = load float, float addrspace(3)* %231, align 4, !tbaa !61, !noalias !65
  %3647 = fadd fast float %3639, %3646
  store float %3643, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  store float %3645, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  store float %3647, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3648 = load float, float addrspace(3)* %235, align 4, !tbaa !61, !noalias !65
  %3649 = fadd fast float %3648, %3643
  %3650 = load float, float addrspace(3)* %238, align 4, !tbaa !61, !noalias !65
  %3651 = fadd fast float %3650, %3645
  %3652 = load float, float addrspace(3)* %241, align 4, !tbaa !61, !noalias !65
  %3653 = fadd fast float %3652, %3647
  store float %3649, float addrspace(3)* %219, align 4, !tbaa !61, !noalias !65
  store float %3651, float addrspace(3)* %221, align 4, !tbaa !61, !noalias !65
  store float %3653, float addrspace(3)* %223, align 4, !tbaa !61, !noalias !65
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3654 = load float, float addrspace(3)* %245, align 4, !tbaa !61, !noalias !65
  %3655 = fadd fast float %3654, %3649
  %3656 = load float, float addrspace(3)* %248, align 4, !tbaa !61, !noalias !65
  %3657 = fadd fast float %3656, %3651
  %3658 = fdiv fast float %3657, %3655
  br i1 %256, label %3659, label %3667, !dx.controlflow.hints !71

; <label>:3659                                    ; preds = %3630
  %3660 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %244
  %3661 = load float, float addrspace(3)* %3660, align 4, !tbaa !61, !noalias !65
  %3662 = fadd fast float %3661, %3653
  %3663 = fdiv fast float %3662, %3655
  %3664 = lshr i32 %73, 1
  %3665 = lshr i32 %74, 1
  %3666 = lshr i32 %75, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3664, i32 %3665, i32 %3666, float %3658, float %3663, float %3658, float %3658, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3667

; <label>:3667                                    ; preds = %3659, %3630
  br i1 %84, label %3696, label %3668, !dx.controlflow.hints !72

; <label>:3668                                    ; preds = %3667
  %3669 = fadd fast float %123, 0x3FE3C6EF40000000
  %3670 = call float @dx.op.unary.f32(i32 22, float %3669)  ; Frc(value)
  %3671 = call float @dx.op.unary.f32(i32 23, float %3633)  ; Log(value)
  %3672 = fadd fast float %3671, -7.000000e+00
  %3673 = call float @dx.op.unary.f32(i32 21, float %3672)  ; Exp(value)
  %3674 = fmul fast float %3670, 2.000000e+00
  %3675 = fadd fast float %3674, -1.000000e+00
  %3676 = fmul fast float %3673, %3675
  %3677 = fcmp fast ogt float %3633, 0.000000e+00
  %3678 = select i1 %3677, float %3676, float 0.000000e+00
  %3679 = fadd fast float %3678, %3633
  %3680 = fadd fast float %123, 0x3FF3C6EF40000000
  %3681 = call float @dx.op.unary.f32(i32 22, float %3680)  ; Frc(value)
  %3682 = fmul fast float %3681, 2.000000e+00
  %3683 = fadd fast float %3682, -1.000000e+00
  %3684 = fmul fast float %3673, %3683
  %3685 = select i1 %3677, float %3684, float 0.000000e+00
  %3686 = fadd fast float %3685, %3633
  %3687 = fadd fast float %123, 0x3FFDAA66E0000000
  %3688 = call float @dx.op.unary.f32(i32 22, float %3687)  ; Frc(value)
  %3689 = fadd fast float %3671, -6.000000e+00
  %3690 = call float @dx.op.unary.f32(i32 21, float %3689)  ; Exp(value)
  %3691 = fmul fast float %3688, 2.000000e+00
  %3692 = fadd fast float %3691, -1.000000e+00
  %3693 = fmul fast float %3690, %3692
  %3694 = select i1 %3677, float %3693, float 0.000000e+00
  %3695 = fadd fast float %3694, %3633
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %73, i32 %74, i32 %75, float %3679, float %3686, float %3695, float %3679, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3696

; <label>:3696                                    ; preds = %3668, %3667
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
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !44, !49, !52}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !42}
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
!58 = !{void ()* @cs_volumetric_forwardplus_scatter_local, !"cs_volumetric_forwardplus_scatter_local", null, !4, !59}
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
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !92}
!109 = distinct !{!109, !92}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = !{!122, !122, i64 0}
!122 = !{!"int", !63, i64 0}
!123 = !{!124, !126, !128, !66, !68}
!124 = distinct !{!124, !125, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!125 = distinct !{!125, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!126 = distinct !{!126, !127, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!127 = distinct !{!127, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!128 = distinct !{!128, !129, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!129 = distinct !{!129, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 2}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 2}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 2}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}

