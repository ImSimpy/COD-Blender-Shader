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
; shader hash: 2e04608e2214e5ab7040cffa3528b242
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
;                                   texture    byte         r/o     T20            t19     1
;                                   texture    byte         r/o     T21            t20     1
;                                   texture     f32          1d     T22             t4     1
;                                   texture     f32     2darray     T23             t3     1
;                                   texture    byte         r/o     T24            t12     1
;                                   texture     f32          3d     T25             t5     1
;                                   texture    byte         r/o     T26            t13     1
;                                   texture  struct         r/o     T27            t14     1
;                                   texture    byte         r/o     T28            t15     1
;                                   texture  struct         r/o     T29            t29     1
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

define void @cs_volumetric_forwardplus_scatter_local_water() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %43 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %44 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %45 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %46 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %47 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.i32 %47, 3
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 1
  %51 = mul i32 %50, %48
  %52 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %40, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.i32 %52, 1
  %54 = mul i32 %51, %53
  %55 = add i32 %54, %45
  %56 = shl i32 %55, 2
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = and i32 %58, 255
  %60 = lshr i32 %58, 8
  %61 = and i32 %60, 255
  %62 = lshr i32 %58, 16
  %63 = and i32 %62, 255
  %64 = shl nuw nsw i32 %59, 2
  %65 = shl nuw nsw i32 %61, 2
  %66 = shl nuw nsw i32 %63, 2
  %67 = add i32 %64, %42
  %68 = add i32 %65, %43
  %69 = add i32 %66, %44
  %70 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.i32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.i32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.i32 %70, 2
  %74 = icmp uge i32 %67, %71
  %75 = icmp uge i32 %68, %72
  %76 = icmp uge i32 %69, %73
  %77 = or i1 %74, %75
  %78 = or i1 %76, %77
  %79 = xor i1 %78, true
  %80 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.i32 %80, 3
  %82 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %68, i32 %81)  ; UMad(a,b,c)
  %83 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %67, i32 %82)  ; UMad(a,b,c)
  %84 = mul i32 %83, -63
  %85 = lshr i32 %84, 17
  %86 = xor i32 %85, %84
  %87 = mul i32 %86, -511
  %88 = mul i32 %86, -8176
  %89 = xor i32 %87, %88
  %90 = mul i32 %89, -7
  %91 = mul i32 %89, -7168
  %92 = xor i32 %90, %91
  %93 = lshr i32 %92, 15
  %94 = xor i32 %93, %90
  %95 = and i32 %94, 127
  %96 = mul i32 %95, 3
  %97 = add i32 0, %96
  %98 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %97
  %99 = load float, float* %98, align 4
  %100 = mul i32 %95, 3
  %101 = add i32 1, %100
  %102 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %101
  %103 = load float, float* %102, align 4
  %104 = mul i32 %95, 3
  %105 = add i32 2, %104
  %106 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %105
  %107 = load float, float* %106, align 4
  %108 = uitofp i32 %81 to float
  %109 = fmul fast float %108, 0x3FEA36A940000000
  %110 = fmul fast float %108, 0x3FE5793080000000
  %111 = fmul fast float %108, 0x3FE1972580000000
  %112 = fadd fast float %99, %109
  %113 = fadd fast float %103, %110
  %114 = fadd fast float %107, %111
  %115 = call float @dx.op.unary.f32(i32 22, float %112)  ; Frc(value)
  %116 = call float @dx.op.unary.f32(i32 22, float %113)  ; Frc(value)
  %117 = call float @dx.op.unary.f32(i32 22, float %114)  ; Frc(value)
  %118 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 0, i32 %67, i32 %68, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = fcmp fast ogt float %119, -1.000000e+00
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %123 = select i1 %120, float %122, float 1.000000e+00
  %124 = fadd fast float %119, 1.000000e+00
  %125 = fmul fast float %123, %124
  %126 = uitofp i32 %67 to float
  %127 = uitofp i32 %68 to float
  %128 = uitofp i32 %69 to float
  %129 = fadd fast float %126, -5.000000e-01
  %130 = fadd fast float %129, %115
  %131 = fadd fast float %127, -5.000000e-01
  %132 = fadd fast float %131, %116
  %133 = fadd fast float %128, -5.000000e-01
  %134 = fadd fast float %133, %117
  %135 = fadd fast float %130, 5.000000e-01
  %136 = fadd fast float %132, 5.000000e-01
  %137 = fadd fast float %134, 5.000000e-01
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fmul fast float %139, %135
  %143 = fmul fast float %140, %136
  %144 = fmul fast float %141, %137
  %145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.i32 %145, 0
  %147 = uitofp i32 %146 to float
  %148 = fmul fast float %147, %144
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = fmul fast float %148, %151
  %153 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %154 = fmul fast float %153, %150
  %155 = fsub fast float 4.000000e+00, %150
  %156 = fadd fast float %155, %154
  %157 = call float @dx.op.binary.f32(i32 36, float %156, float %125)  ; FMin(a,b)
  %158 = fmul fast float %142, 2.000000e+00
  %159 = fmul fast float %143, 2.000000e+00
  %160 = fsub fast float 1.000000e+00, %158
  %161 = fsub fast float 1.000000e+00, %159
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = fmul fast float %163, %160
  %167 = fmul fast float %164, %160
  %168 = fmul fast float %165, %160
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %173 = fmul fast float %170, %161
  %174 = fmul fast float %171, %161
  %175 = fmul fast float %172, %161
  %176 = fadd fast float %173, %166
  %177 = fadd fast float %174, %167
  %178 = fadd fast float %175, %168
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = fadd fast float %176, %180
  %184 = fadd fast float %177, %181
  %185 = fadd fast float %178, %182
  %186 = fmul fast float %183, %157
  %187 = fmul fast float %184, %157
  %188 = fmul fast float %185, %157
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %193 = fadd fast float %186, %190
  %194 = fadd fast float %187, %191
  %195 = fadd fast float %188, %192
  %196 = add i32 %69, 1
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %151, %197
  %199 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %200 = fmul fast float %151, %128
  %201 = call float @dx.op.unary.f32(i32 21, float %200)  ; Exp(value)
  %202 = fsub fast float %199, %201
  %203 = fmul fast float %150, %202
  %204 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %186, float %187, float %188)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call float @dx.op.unary.f32(i32 25, float %204)  ; Rsqrt(value)
  %206 = fmul fast float %205, %186
  %207 = fmul fast float %205, %187
  %208 = fmul fast float %205, %188
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %211 = fcmp fast ogt float %210, 0.000000e+00
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %216 = fsub fast float %193, %213
  %217 = fadd fast float %216, %215
  %218 = fsub fast float %194, %214
  %219 = fadd fast float %218, %215
  %220 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %221 = fmul fast float %217, %220
  %222 = fmul fast float %219, %220
  %223 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %224 = call float @dx.op.unary.f32(i32 7, float %222)  ; Saturate(value)
  %225 = fsub fast float 1.000000e+00, %223
  %226 = fsub fast float 1.000000e+00, %224
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %38, float %225, float %226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fmul fast float %230, %228
  %232 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %233 = fadd fast float %232, %231
  %234 = fcmp fast ogt float %228, 0.000000e+00
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 32768
  %238 = icmp ne i32 %237, 0
  %239 = and i1 %234, %238
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 3
  %242 = fadd fast float %241, %233
  %243 = fcmp fast ole float %195, %242
  %244 = and i1 %239, %243
  %245 = select i1 %211, i32 %146, i32 0
  %246 = add i32 %245, %69
  %247 = xor i1 %211, %244
  %248 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %249 = fmul fast float %248, 0x3FE62E4300000000
  %250 = fmul fast float %249, %249
  %251 = select i1 %78, float 0.000000e+00, float 1.000000e+00
  %252 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %46
  store float %251, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  %253 = fmul fast float %249, %251
  %254 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %46
  store float %253, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  %255 = fmul fast float %250, %251
  %256 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %46
  store float %255, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %257 = xor i32 %46, 4
  %258 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %257
  %259 = load float, float addrspace(3)* %258, align 4, !tbaa !57, !noalias !61
  %260 = fadd fast float %259, %251
  %261 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %257
  %262 = load float, float addrspace(3)* %261, align 4, !tbaa !57, !noalias !61
  %263 = fadd fast float %262, %249
  %264 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %257
  %265 = load float, float addrspace(3)* %264, align 4, !tbaa !57, !noalias !61
  %266 = fadd fast float %265, %250
  store float %260, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  store float %263, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  store float %266, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %267 = xor i32 %46, 16
  %268 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %267
  %269 = load float, float addrspace(3)* %268, align 4, !tbaa !57, !noalias !61
  %270 = fadd fast float %269, %260
  %271 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %267
  %272 = load float, float addrspace(3)* %271, align 4, !tbaa !57, !noalias !61
  %273 = fadd fast float %272, %263
  %274 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %267
  %275 = load float, float addrspace(3)* %274, align 4, !tbaa !57, !noalias !61
  %276 = fadd fast float %275, %266
  store float %270, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  store float %273, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  store float %276, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = xor i32 %46, 1
  %278 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %277
  %279 = load float, float addrspace(3)* %278, align 4, !tbaa !57, !noalias !61
  %280 = fadd fast float %279, %270
  %281 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %277
  %282 = load float, float addrspace(3)* %281, align 4, !tbaa !57, !noalias !61
  %283 = fadd fast float %282, %273
  %284 = fdiv fast float %283, %280
  %285 = and i32 %67, 1
  %286 = and i32 %285, %68
  %287 = and i32 %286, %246
  %288 = icmp ne i32 %287, 0
  %289 = and i1 %288, %79
  br i1 %289, label %290, label %298, !dx.controlflow.hints !65

; <label>:290                                     ; preds = %0
  %291 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %277
  %292 = load float, float addrspace(3)* %291, align 4, !tbaa !57, !noalias !61
  %293 = fadd fast float %292, %276
  %294 = fdiv fast float %293, %280
  %295 = lshr i32 %67, 1
  %296 = lshr i32 %68, 1
  %297 = lshr i32 %246, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %295, i32 %296, i32 %297, float %284, float %294, float %284, float %284, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %298

; <label>:298                                     ; preds = %290, %0
  br i1 %78, label %300, label %299, !dx.controlflow.hints !66

; <label>:299                                     ; preds = %298
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %67, i32 %68, i32 %246, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %300

; <label>:300                                     ; preds = %299, %298
  store float %251, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  store float 0.000000e+00, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  store float 0.000000e+00, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %301 = load float, float addrspace(3)* %258, align 4, !tbaa !57, !noalias !61
  %302 = fadd fast float %301, %251
  %303 = load float, float addrspace(3)* %261, align 4, !tbaa !57, !noalias !61
  %304 = load float, float addrspace(3)* %264, align 4, !tbaa !57, !noalias !61
  store float %302, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  store float %303, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  store float %304, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %305 = load float, float addrspace(3)* %268, align 4, !tbaa !57, !noalias !61
  %306 = fadd fast float %305, %302
  %307 = load float, float addrspace(3)* %271, align 4, !tbaa !57, !noalias !61
  %308 = fadd fast float %307, %303
  %309 = load float, float addrspace(3)* %274, align 4, !tbaa !57, !noalias !61
  %310 = fadd fast float %309, %304
  store float %306, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  store float %308, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  store float %310, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %311 = load float, float addrspace(3)* %278, align 4, !tbaa !57, !noalias !61
  %312 = fadd fast float %311, %306
  %313 = load float, float addrspace(3)* %281, align 4, !tbaa !57, !noalias !61
  %314 = fadd fast float %313, %308
  %315 = fdiv fast float %314, %312
  br i1 %289, label %316, label %324, !dx.controlflow.hints !67

; <label>:316                                     ; preds = %300
  %317 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %277
  %318 = load float, float addrspace(3)* %317, align 4, !tbaa !57, !noalias !61
  %319 = fadd fast float %318, %310
  %320 = fdiv fast float %319, %312
  %321 = lshr i32 %67, 1
  %322 = lshr i32 %68, 1
  %323 = lshr i32 %246, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %321, i32 %322, i32 %323, float %315, float %320, float %315, float %315, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %324

; <label>:324                                     ; preds = %316, %300
  br i1 %78, label %326, label %325, !dx.controlflow.hints !68

; <label>:325                                     ; preds = %324
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %67, i32 %68, i32 %246, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %326

; <label>:326                                     ; preds = %325, %324
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = fsub fast float %195, %328
  %331 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %330)  ; FMax(a,b)
  %332 = fmul fast float %331, 0x3FF7154760000000
  %333 = fmul fast float %332, %329
  %334 = call float @dx.op.unary.f32(i32 21, float %333)  ; Exp(value)
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %338 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = fmul fast float %341, %334
  %343 = fmul fast float %342, %336
  %344 = fmul fast float %342, %337
  %345 = fmul fast float %342, %338
  %346 = fmul fast float %342, %340
  %347 = select i1 %244, float 0.000000e+00, float %342
  %348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.i32 %348, 2
  %350 = extractvalue %dx.types.CBufRet.i32 %348, 3
  %351 = call i32 @dx.op.tertiary.i32(i32 49, i32 %61, i32 %349, i32 %59)  ; UMad(a,b,c)
  %352 = call i32 @dx.op.tertiary.i32(i32 49, i32 %63, i32 %350, i32 %351)  ; UMad(a,b,c)
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %352, i32 0)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = fadd fast float %126, 1.000000e+00
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = fmul fast float %361, %134
  %363 = call float @dx.op.unary.f32(i32 21, float %362)  ; Exp(value)
  %364 = fmul fast float %363, %360
  %365 = fsub fast float 4.000000e+00, %360
  %366 = fadd fast float %365, %364
  %367 = fmul fast float %355, 2.000000e+00
  %368 = fmul fast float %367, %357
  %369 = fmul fast float %127, 2.000000e+00
  %370 = fmul fast float %369, %358
  %371 = fsub fast float 1.000000e+00, %368
  %372 = fsub fast float 1.000000e+00, %370
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %377 = fmul fast float %374, %371
  %378 = fmul fast float %375, %371
  %379 = fmul fast float %376, %371
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %384 = fmul fast float %381, %372
  %385 = fmul fast float %382, %372
  %386 = fmul fast float %383, %372
  %387 = fadd fast float %384, %377
  %388 = fadd fast float %385, %378
  %389 = fadd fast float %386, %379
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %394 = fadd fast float %387, %391
  %395 = fadd fast float %388, %392
  %396 = fadd fast float %389, %393
  %397 = fadd fast float %127, 1.000000e+00
  %398 = fmul fast float %126, 2.000000e+00
  %399 = fmul fast float %398, %357
  %400 = fmul fast float %397, 2.000000e+00
  %401 = fmul fast float %400, %358
  %402 = fsub fast float 1.000000e+00, %399
  %403 = fsub fast float 1.000000e+00, %401
  %404 = fmul fast float %374, %402
  %405 = fmul fast float %375, %402
  %406 = fmul fast float %376, %402
  %407 = fmul fast float %381, %403
  %408 = fmul fast float %382, %403
  %409 = fmul fast float %383, %403
  %410 = fadd fast float %407, %404
  %411 = fadd fast float %408, %405
  %412 = fadd fast float %409, %406
  %413 = fadd fast float %410, %391
  %414 = fadd fast float %411, %392
  %415 = fadd fast float %412, %393
  %416 = fmul fast float %413, %366
  %417 = fmul fast float %414, %366
  %418 = fmul fast float %415, %366
  %419 = fadd fast float %413, %394
  %420 = fmul fast float %366, %419
  %421 = fadd fast float %414, %395
  %422 = fmul fast float %366, %421
  %423 = fadd fast float %415, %396
  %424 = fmul fast float %366, %423
  %425 = fmul fast float %420, 5.000000e-01
  %426 = fmul fast float %422, 5.000000e-01
  %427 = fmul fast float %424, 5.000000e-01
  %428 = fsub fast float %425, %416
  %429 = fsub fast float %426, %417
  %430 = fsub fast float %427, %418
  %431 = call float @dx.op.dot3.f32(i32 55, float %428, float %429, float %430, float %428, float %429, float %430)  ; Dot3(ax,ay,az,bx,by,bz)
  %432 = call float @dx.op.unary.f32(i32 25, float %431)  ; Rsqrt(value)
  %433 = fmul fast float %431, 2.000000e+00
  %434 = fmul fast float %433, %432
  %435 = call float @dx.op.binary.f32(i32 35, float %203, float %434)  ; FMax(a,b)
  %436 = xor i1 %244, true
  %437 = and i32 %354, 8
  %438 = icmp ne i32 %437, 0
  %439 = and i1 %438, %436
  br i1 %439, label %440, label %656, !dx.controlflow.hints !69

; <label>:440                                     ; preds = %326
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %444 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %449 = fsub fast float %193, %446
  %450 = fsub fast float %194, %447
  %451 = fsub fast float %195, %448
  %452 = fmul fast float %449, %442
  %453 = fmul fast float %450, %443
  %454 = fmul fast float %451, %444
  %455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.i32 %455, 3
  %457 = icmp eq i32 %456, 0
  %458 = fcmp fast oge float %454, 0.000000e+00
  %459 = fcmp fast ole float %454, 1.000000e+00
  br i1 %457, label %462, label %460, !dx.controlflow.hints !70

; <label>:460                                     ; preds = %440
  %461 = and i1 %458, %459
  br label %472

; <label>:462                                     ; preds = %440
  %463 = fcmp fast oge float %452, 0.000000e+00
  %464 = fcmp fast oge float %453, 0.000000e+00
  %465 = and i1 %463, %464
  %466 = and i1 %458, %465
  %467 = fcmp fast ole float %452, 1.000000e+00
  %468 = fcmp fast ole float %453, 1.000000e+00
  %469 = and i1 %467, %468
  %470 = and i1 %459, %469
  %471 = and i1 %466, %470
  br label %472

; <label>:472                                     ; preds = %462, %460
  %473 = phi i1 [ %461, %460 ], [ %471, %462 ]
  br i1 %473, label %474, label %649, !dx.controlflow.hints !71

; <label>:474                                     ; preds = %472
  %475 = fcmp fast oeq float %435, 0.000000e+00
  br i1 %475, label %490, label %476, !dx.controlflow.hints !72

; <label>:476                                     ; preds = %474
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 3
  %479 = fmul fast float %478, %435
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %483 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %484 = fmul fast float %481, %479
  %485 = fmul fast float %482, %479
  %486 = fmul fast float %483, %479
  %487 = call float @dx.op.unary.f32(i32 23, float %484)  ; Log(value)
  %488 = call float @dx.op.unary.f32(i32 23, float %485)  ; Log(value)
  %489 = call float @dx.op.unary.f32(i32 23, float %486)  ; Log(value)
  br label %490

; <label>:490                                     ; preds = %476, %474
  %491 = phi float [ %487, %476 ], [ 0.000000e+00, %474 ]
  %492 = phi float [ %488, %476 ], [ 0.000000e+00, %474 ]
  %493 = phi float [ %489, %476 ], [ 0.000000e+00, %474 ]
  %494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.i32 %494, 0
  %496 = extractvalue %dx.types.CBufRet.i32 %494, 1
  %497 = uitofp i32 %495 to float
  %498 = uitofp i32 %496 to float
  %499 = fmul fast float %452, %497
  %500 = fmul fast float %453, %498
  %501 = fadd fast float %499, 5.000000e-01
  %502 = fadd fast float %500, 5.000000e-01
  %503 = call float @dx.op.unary.f32(i32 22, float %501)  ; Frc(value)
  %504 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %505 = call float @dx.op.unary.f32(i32 27, float %501)  ; Round_ni(value)
  %506 = call float @dx.op.unary.f32(i32 27, float %502)  ; Round_ni(value)
  %507 = fadd fast float %505, 1.000000e+00
  %508 = fadd fast float %506, 1.000000e+00
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 0
  %511 = extractvalue %dx.types.CBufRet.f32 %509, 1
  %512 = fmul fast float %510, %507
  %513 = fmul fast float %511, %508
  %514 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %37, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = extractvalue %dx.types.ResRet.f32 %514, 3
  %519 = extractvalue %dx.types.CBufRet.i32 %494, 2
  %520 = extractvalue %dx.types.CBufRet.f32 %509, 2
  %521 = uitofp i32 %519 to float
  %522 = fadd fast float %521, -1.000000e+00
  %523 = fmul fast float %522, %515
  %524 = fmul fast float %522, %516
  %525 = fmul fast float %522, %517
  %526 = fmul fast float %522, %518
  %527 = fadd fast float %523, 5.000000e-01
  %528 = fadd fast float %524, 5.000000e-01
  %529 = fadd fast float %525, 5.000000e-01
  %530 = fadd fast float %526, 5.000000e-01
  %531 = fptoui float %527 to i32
  %532 = fptoui float %528 to i32
  %533 = fptoui float %529 to i32
  %534 = fptoui float %530 to i32
  %535 = uitofp i32 %531 to float
  %536 = uitofp i32 %532 to float
  %537 = uitofp i32 %533 to float
  %538 = uitofp i32 %534 to float
  %539 = fadd fast float %535, 5.000000e-01
  %540 = fadd fast float %536, 5.000000e-01
  %541 = fadd fast float %537, 5.000000e-01
  %542 = fadd fast float %538, 5.000000e-01
  %543 = fmul fast float %539, %520
  %544 = fmul fast float %540, %520
  %545 = fmul fast float %541, %520
  %546 = fmul fast float %542, %520
  %547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %543, float %454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %544, float %454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %545, float %454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %38, float %546, float %454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = fsub fast float %552, %554
  %556 = fmul fast float %555, %503
  %557 = fadd fast float %556, %554
  %558 = fsub fast float %550, %548
  %559 = fmul fast float %558, %503
  %560 = fadd fast float %559, %548
  %561 = fsub fast float %560, %557
  %562 = fmul fast float %561, %504
  %563 = fadd fast float %562, %557
  %564 = fcmp fast ogt float %563, 0.000000e+00
  br i1 %564, label %565, label %633, !dx.controlflow.hints !73

; <label>:565                                     ; preds = %490
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %569 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %573 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %574 = fmul fast float %450, %442
  %575 = fmul fast float %451, %442
  %576 = fadd fast float %452, %571
  %577 = fadd fast float %574, %572
  %578 = fadd fast float %575, %573
  %579 = fmul fast float %576, %567
  %580 = fmul fast float %577, %567
  %581 = fmul fast float %578, %567
  %582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %579, float %580, float %581, float undef, i32 0, i32 0, i32 0, float %491)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = fmul fast float %576, %568
  %585 = fmul fast float %577, %568
  %586 = fmul fast float %578, %568
  %587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %584, float %585, float %586, float undef, i32 0, i32 0, i32 0, float %492)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 1
  %589 = fmul fast float %576, %569
  %590 = fmul fast float %577, %569
  %591 = fmul fast float %578, %569
  %592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %35, float %589, float %590, float %591, float undef, i32 0, i32 0, i32 0, float %493)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 2
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 1
  %596 = fmul fast float %588, %583
  %597 = fmul fast float %596, %593
  %598 = call float @dx.op.unary.f32(i32 23, float %597)  ; Log(value)
  %599 = fmul fast float %598, %595
  %600 = call float @dx.op.unary.f32(i32 21, float %599)  ; Exp(value)
  %601 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %602 = fmul fast float %563, %563
  %603 = fmul fast float %602, %600
  %604 = fmul fast float %603, %601
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 3
  %607 = fmul fast float %606, %604
  %608 = bitcast float %607 to i32
  %609 = sitofp i32 %608 to float
  %610 = fptosi float %609 to i32
  %611 = bitcast i32 %610 to float
  %612 = fsub fast float 1.000000e+00, %604
  %613 = bitcast float %612 to i32
  %614 = sitofp i32 %613 to float
  %615 = fptosi float %614 to i32
  %616 = bitcast i32 %615 to float
  %617 = fadd fast float %611, %616
  %618 = bitcast float %617 to i32
  %619 = sub nsw i32 2129859010, %618
  %620 = bitcast i32 %619 to float
  %621 = fmul fast float %620, %611
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = fmul fast float %621, %625
  %627 = fadd fast float %626, 1.000000e+00
  %628 = bitcast float %627 to i32
  %629 = sub nsw i32 2129859010, %628
  %630 = bitcast i32 %629 to float
  %631 = fmul fast float %621, %623
  %632 = fmul fast float %631, %630
  br label %633

; <label>:633                                     ; preds = %565, %490
  %634 = phi float [ %632, %565 ], [ %563, %490 ]
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %641 = fmul fast float %636, %634
  %642 = fmul fast float %637, %634
  %643 = fmul fast float %638, %634
  %644 = fadd fast float %641, %343
  %645 = fadd fast float %642, %344
  %646 = fadd fast float %643, %345
  %647 = fmul fast float %640, %634
  %648 = fadd fast float %647, %346
  br label %649

; <label>:649                                     ; preds = %633, %472
  %650 = phi float [ %644, %633 ], [ %343, %472 ]
  %651 = phi float [ %645, %633 ], [ %344, %472 ]
  %652 = phi float [ %646, %633 ], [ %345, %472 ]
  %653 = phi float [ %648, %633 ], [ %346, %472 ]
  %654 = phi float [ %634, %633 ], [ 0.000000e+00, %472 ]
  %655 = fadd fast float %654, %347
  br label %656

; <label>:656                                     ; preds = %649, %326
  %657 = phi float [ %650, %649 ], [ %343, %326 ]
  %658 = phi float [ %651, %649 ], [ %344, %326 ]
  %659 = phi float [ %652, %649 ], [ %345, %326 ]
  %660 = phi float [ %653, %649 ], [ %346, %326 ]
  %661 = phi float [ %655, %649 ], [ %347, %326 ]
  br i1 %244, label %1159, label %662, !dx.controlflow.hints !74

; <label>:662                                     ; preds = %656
  %663 = and i32 %354, 2
  %664 = icmp ne i32 %663, 0
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 2
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %669 = fadd fast float %668, %666
  %670 = fcmp fast ole float %195, %669
  %671 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.i32 %671, 3
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %693, !dx.controlflow.hints !75

; <label>:674                                     ; preds = %662
  %675 = extractvalue %dx.types.CBufRet.f32 %665, 0
  %676 = extractvalue %dx.types.CBufRet.f32 %665, 1
  %677 = fsub fast float %193, %675
  %678 = fsub fast float %194, %676
  %679 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %681 = fdiv fast float 1.000000e+00, %679
  %682 = fdiv fast float 1.000000e+00, %680
  %683 = fmul fast float %677, %681
  %684 = fmul fast float %682, %678
  %685 = fcmp fast oge float %683, 0.000000e+00
  %686 = fcmp fast oge float %684, 0.000000e+00
  %687 = and i1 %685, %686
  %688 = and i1 %670, %687
  %689 = fcmp fast ole float %683, 1.000000e+00
  %690 = fcmp fast ole float %684, 1.000000e+00
  %691 = and i1 %689, %690
  %692 = and i1 %691, %688
  br label %693

; <label>:693                                     ; preds = %674, %662
  %694 = phi i1 [ %692, %674 ], [ %670, %662 ]
  %695 = and i1 %664, %694
  br i1 %695, label %696, label %875, !dx.controlflow.hints !76

; <label>:696                                     ; preds = %693
  %697 = fcmp fast oeq float %435, 0.000000e+00
  br i1 %697, label %703, label %698, !dx.controlflow.hints !77

; <label>:698                                     ; preds = %696
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 3
  %701 = fmul fast float %700, %435
  %702 = call float @dx.op.unary.f32(i32 23, float %701)  ; Log(value)
  br label %703

; <label>:703                                     ; preds = %698, %696
  %704 = phi float [ %702, %698 ], [ 0.000000e+00, %696 ]
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 0
  %707 = extractvalue %dx.types.CBufRet.f32 %705, 1
  %708 = extractvalue %dx.types.CBufRet.f32 %705, 2
  %709 = fsub fast float %193, %706
  %710 = fsub fast float %194, %707
  %711 = fsub fast float %195, %708
  %712 = fmul fast float %709, %709
  %713 = fmul fast float %710, %710
  %714 = fadd fast float %712, %713
  %715 = fmul fast float %711, %711
  %716 = fadd fast float %714, %715
  %717 = call float @dx.op.unary.f32(i32 24, float %716)  ; Sqrt(value)
  %718 = extractvalue %dx.types.CBufRet.f32 %665, 0
  %719 = extractvalue %dx.types.CBufRet.f32 %665, 1
  %720 = fsub fast float %193, %718
  %721 = fsub fast float %194, %719
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 0
  %724 = extractvalue %dx.types.CBufRet.f32 %722, 1
  %725 = fmul fast float %720, %723
  %726 = fmul fast float %721, %724
  %727 = fsub fast float 1.000000e+00, %726
  br i1 %673, label %734, label %728, !dx.controlflow.hints !78

; <label>:728                                     ; preds = %703
  %729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %37, float %725, float %727, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = extractvalue %dx.types.ResRet.f32 %729, 1
  %732 = extractvalue %dx.types.ResRet.f32 %729, 2
  %733 = extractvalue %dx.types.ResRet.f32 %729, 3
  br label %740

; <label>:734                                     ; preds = %703
  %735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %725, float %727, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  %739 = extractvalue %dx.types.ResRet.f32 %735, 3
  br label %740

; <label>:740                                     ; preds = %734, %728
  %741 = phi float [ %730, %728 ], [ %736, %734 ]
  %742 = phi float [ %731, %728 ], [ %737, %734 ]
  %743 = phi float [ %732, %728 ], [ %738, %734 ]
  %744 = phi float [ %733, %728 ], [ %739, %734 ]
  %745 = extractvalue %dx.types.CBufRet.f32 %722, 3
  %746 = fmul fast float %745, %742
  %747 = fmul fast float %746, %741
  %748 = fsub fast float %746, %747
  %749 = fcmp fast ole float %748, 0.000000e+00
  %750 = fmul fast float %745, %743
  %751 = fadd fast float %750, %666
  %752 = fdiv fast float 1.000000e+00, %748
  %753 = select i1 %749, float 1.000000e+06, float %752
  %754 = fsub fast float %195, %666
  %755 = fsub fast float %754, %747
  %756 = fmul fast float %753, %755
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = extractvalue %dx.types.CBufRet.f32 %722, 2
  %759 = fmul fast float %758, %757
  %760 = fsub fast float %758, %759
  %761 = fcmp fast olt float %195, %751
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 3
  %764 = select i1 %761, float %763, float 1.000000e+00
  %765 = extractvalue %dx.types.CBufRet.f32 %762, 1
  %766 = fcmp fast oeq float %765, 0.000000e+00
  br i1 %766, label %849, label %767, !dx.controlflow.hints !79

; <label>:767                                     ; preds = %740
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %770 = fcmp fast ogt float %769, 0.000000e+00
  %771 = extractvalue %dx.types.CBufRet.f32 %762, 2
  br i1 %770, label %772, label %802, !dx.controlflow.hints !80

; <label>:772                                     ; preds = %767
  %773 = fmul fast float %725, %769
  %774 = fmul fast float %726, %769
  %775 = fsub fast float 1.000000e+00, %774
  %776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %773, float %775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = fmul fast float %777, 2.000000e+00
  %780 = fmul fast float %778, 2.000000e+00
  %781 = fadd fast float %779, -1.000000e+00
  %782 = fadd fast float %780, -1.000000e+00
  %783 = fmul fast float %765, %193
  %784 = fmul fast float %765, %194
  %785 = fmul fast float %765, %195
  %786 = call float @dx.op.unary.f32(i32 22, float %771)  ; Frc(value)
  %787 = fmul fast float %781, %786
  %788 = fmul fast float %782, %786
  %789 = fsub fast float %783, %787
  %790 = fsub fast float %784, %788
  %791 = fadd fast float %771, 5.000000e-01
  %792 = call float @dx.op.unary.f32(i32 22, float %791)  ; Frc(value)
  %793 = fmul fast float %792, %781
  %794 = fmul fast float %792, %782
  %795 = fadd fast float %783, -5.000000e-01
  %796 = fsub fast float %795, %793
  %797 = fadd fast float %784, -5.000000e-01
  %798 = fsub fast float %797, %794
  %799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %796, float %798, float %785, float undef, i32 0, i32 0, i32 0, float %704)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  %801 = extractvalue %dx.types.ResRet.f32 %799, 1
  br label %815

; <label>:802                                     ; preds = %767
  %803 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %804 = extractvalue %dx.types.CBufRet.f32 %768, 1
  %805 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %806 = fmul fast float %771, %803
  %807 = fmul fast float %771, %804
  %808 = fmul fast float %771, %805
  %809 = fsub fast float %193, %806
  %810 = fsub fast float %194, %807
  %811 = fsub fast float %195, %808
  %812 = fmul fast float %809, %765
  %813 = fmul fast float %810, %765
  %814 = fmul fast float %811, %765
  br label %815

; <label>:815                                     ; preds = %802, %772
  %816 = phi float [ %789, %772 ], [ %812, %802 ]
  %817 = phi float [ %790, %772 ], [ %813, %802 ]
  %818 = phi float [ %785, %772 ], [ %814, %802 ]
  %819 = phi float [ %800, %772 ], [ 0.000000e+00, %802 ]
  %820 = phi float [ %801, %772 ], [ 0.000000e+00, %802 ]
  %821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %816, float %817, float %818, float undef, i32 0, i32 0, i32 0, float %704)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = extractvalue %dx.types.ResRet.f32 %821, 1
  br i1 %770, label %824, label %836, !dx.controlflow.hints !81

; <label>:824                                     ; preds = %815
  %825 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %826 = call float @dx.op.unary.f32(i32 22, float %825)  ; Frc(value)
  %827 = fmul fast float %826, 2.000000e+00
  %828 = fadd fast float %827, -1.000000e+00
  %829 = call float @dx.op.unary.f32(i32 6, float %828)  ; FAbs(value)
  %830 = fsub fast float %819, %822
  %831 = fmul fast float %829, %830
  %832 = fadd fast float %831, %822
  %833 = fsub fast float %820, %823
  %834 = fmul fast float %829, %833
  %835 = fadd fast float %834, %823
  br label %836

; <label>:836                                     ; preds = %824, %815
  %837 = phi float [ %832, %824 ], [ %822, %815 ]
  %838 = phi float [ %835, %824 ], [ %823, %815 ]
  %839 = extractvalue %dx.types.CBufRet.f32 %665, 3
  %840 = fadd fast float %839, %839
  %841 = fdiv fast float 2.000000e+00, %840
  %842 = fmul fast float %839, 2.000000e+00
  %843 = fadd fast float %837, -1.000000e+00
  %844 = fadd fast float %843, %838
  %845 = fadd fast float %844, %842
  %846 = fmul fast float %845, %841
  %847 = fadd fast float %846, -1.000000e+00
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  br label %849

; <label>:849                                     ; preds = %836, %740
  %850 = phi float [ %848, %836 ], [ 1.000000e+00, %740 ]
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %854 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %855 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %858 = fsub fast float %717, %857
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %860 = fmul fast float %858, %859
  %861 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %862 = fmul fast float %764, %744
  %863 = fmul fast float %862, %760
  %864 = fmul fast float %863, %850
  %865 = fmul fast float %864, %861
  %866 = fmul fast float %865, %852
  %867 = fmul fast float %865, %853
  %868 = fmul fast float %865, %854
  %869 = fadd fast float %866, %657
  %870 = fadd fast float %867, %658
  %871 = fadd fast float %868, %659
  %872 = fmul fast float %865, %855
  %873 = fadd fast float %872, %660
  %874 = fadd fast float %865, %661
  br label %875

; <label>:875                                     ; preds = %849, %693
  %876 = phi float [ %869, %849 ], [ %657, %693 ]
  %877 = phi float [ %870, %849 ], [ %658, %693 ]
  %878 = phi float [ %871, %849 ], [ %659, %693 ]
  %879 = phi float [ %873, %849 ], [ %660, %693 ]
  %880 = phi float [ %874, %849 ], [ %661, %693 ]
  %881 = and i32 %354, 1
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %1159, label %883, !dx.controlflow.hints !82

; <label>:883                                     ; preds = %875
  %884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.i32 %884, 1
  %886 = and i32 %885, 1
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %963, label %888, !dx.controlflow.hints !83

; <label>:888                                     ; preds = %883
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 3
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %895 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %896 = extractvalue %dx.types.CBufRet.f32 %889, 2
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %899 = extractvalue %dx.types.CBufRet.f32 %897, 1
  %900 = extractvalue %dx.types.CBufRet.f32 %897, 2
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 3
  %903 = and i32 %885, 2
  %904 = extractvalue %dx.types.CBufRet.i32 %884, 0
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %942, label %906

; <label>:906                                     ; preds = %888
  br label %907

; <label>:907                                     ; preds = %907, %906
  %908 = phi float [ %936, %907 ], [ 0.000000e+00, %906 ]
  %909 = phi float [ %935, %907 ], [ 1.000000e+06, %906 ]
  %910 = phi i32 [ %937, %907 ], [ 0, %906 ]
  %911 = add i32 %910, 171
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %911)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %914 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 2
  %917 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %918 = fsub fast float %193, %913
  %919 = fsub fast float %194, %914
  %920 = fmul fast float %918, %918
  %921 = fmul fast float %919, %919
  %922 = fadd fast float %920, %921
  %923 = call float @dx.op.unary.f32(i32 24, float %922)  ; Sqrt(value)
  %924 = fsub fast float %923, %917
  %925 = icmp ne i32 %903, 0
  %926 = fsub fast float -0.000000e+00, %893
  %927 = select i1 %925, float %926, float %893
  %928 = fmul fast float %924, %927
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = fmul fast float %929, %892
  %931 = fsub fast float %916, %195
  %932 = fmul fast float %931, %890
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  %934 = fmul fast float %930, %933
  %935 = call float @dx.op.binary.f32(i32 36, float %909, float %924)  ; FMin(a,b)
  %936 = call float @dx.op.binary.f32(i32 35, float %908, float %934)  ; FMax(a,b)
  %937 = add nuw nsw i32 %910, 1
  %938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.i32 %938, 0
  %940 = icmp ult i32 %937, %939
  br i1 %940, label %907, label %941

; <label>:941                                     ; preds = %907
  br label %942

; <label>:942                                     ; preds = %941, %888
  %943 = phi float [ 0.000000e+00, %888 ], [ %936, %941 ]
  %944 = phi float [ 1.000000e+06, %888 ], [ %935, %941 ]
  %945 = fadd fast float %943, %880
  %946 = fmul fast float %944, %902
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %948 = fsub fast float %898, %894
  %949 = fsub fast float %899, %895
  %950 = fsub fast float %900, %896
  %951 = fmul fast float %947, %948
  %952 = fmul fast float %947, %949
  %953 = fmul fast float %947, %950
  %954 = fadd fast float %951, %894
  %955 = fadd fast float %952, %895
  %956 = fadd fast float %953, %896
  %957 = fmul fast float %954, %943
  %958 = fmul fast float %955, %943
  %959 = fmul fast float %956, %943
  %960 = fadd fast float %957, %876
  %961 = fadd fast float %958, %877
  %962 = fadd fast float %959, %878
  br label %1159

; <label>:963                                     ; preds = %883
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %967 = fmul fast float %965, %193
  %968 = fmul fast float %966, %194
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %971 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %972 = fadd fast float %967, %970
  %973 = fadd fast float %968, %971
  %974 = call float @dx.op.unary.f32(i32 7, float %972)  ; Saturate(value)
  %975 = call float @dx.op.unary.f32(i32 7, float %973)  ; Saturate(value)
  %976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %974, float %975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = fmul fast float %979, %977
  %981 = fsub fast float %972, %974
  %982 = fsub fast float %973, %975
  %983 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %984 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %985 = fmul fast float %983, %981
  %986 = fmul fast float %984, %982
  %987 = fmul fast float %985, %985
  %988 = fmul fast float %986, %986
  %989 = fadd fast float %987, %988
  %990 = call float @dx.op.unary.f32(i32 24, float %989)  ; Sqrt(value)
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %993 = fmul fast float %992, %990
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %995 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %996 = fsub fast float %995, %980
  %997 = fmul fast float %996, %994
  %998 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %999 = fsub fast float %195, %980
  %1000 = fsub fast float %999, %998
  %1001 = fsub fast float %1000, %997
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1004 = fsub fast float %1001, %1003
  %1005 = fcmp fast olt float %1004, 0.000000e+00
  %1006 = extractvalue %dx.types.CBufRet.i32 %884, 0
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1058, label %1008

; <label>:1008                                    ; preds = %963
  br label %1009

; <label>:1009                                    ; preds = %1047, %1008
  %1010 = phi i32 [ %1053, %1047 ], [ 1, %1008 ]
  %1011 = phi i32 [ %1054, %1047 ], [ 0, %1008 ]
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 1
  %1014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.i32 %1014, 1
  %1016 = and i32 %1015, 8
  %1017 = icmp eq i32 %1016, 0
  %1018 = fcmp fast ogt float %1013, %1001
  %1019 = or i1 %1018, %1017
  %1020 = add i32 %1011, 171
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %1020)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  br i1 %1019, label %1025, label %1031, !dx.controlflow.hints !84

; <label>:1025                                    ; preds = %1009
  %1026 = fsub fast float %1022, %193
  %1027 = fsub fast float %1023, %194
  %1028 = fmul fast float %1026, %1026
  %1029 = fmul fast float %1027, %1027
  %1030 = fadd fast float %1028, %1029
  br label %1047

; <label>:1031                                    ; preds = %1009
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1034 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1035 = fmul fast float %1034, %1033
  %1036 = fsub fast float %1035, %1013
  %1037 = fdiv fast float %1024, %1036
  %1038 = fsub fast float %193, %1022
  %1039 = fsub fast float %194, %1023
  %1040 = fsub fast float %1001, %1013
  %1041 = fmul fast float %1037, %1040
  %1042 = fmul fast float %1038, %1038
  %1043 = fmul fast float %1039, %1039
  %1044 = fadd fast float %1042, %1043
  %1045 = fmul fast float %1041, %1041
  %1046 = fadd fast float %1044, %1045
  br label %1047

; <label>:1047                                    ; preds = %1031, %1025
  %1048 = phi float [ %1030, %1025 ], [ %1046, %1031 ]
  %1049 = call float @dx.op.unary.f32(i32 24, float %1048)  ; Sqrt(value)
  %1050 = fsub float %1024, %1049
  %1051 = fcmp fast olt float %1050, 0.000000e+00
  %1052 = zext i1 %1051 to i32
  %1053 = and i32 %1052, %1010
  %1054 = add i32 %1011, 1
  %1055 = extractvalue %dx.types.CBufRet.i32 %1014, 0
  %1056 = icmp ult i32 %1054, %1055
  br i1 %1056, label %1009, label %1057

; <label>:1057                                    ; preds = %1047
  br label %1058

; <label>:1058                                    ; preds = %1057, %963
  %1059 = phi i32 [ 1, %963 ], [ %1053, %1057 ]
  br label %1060

; <label>:1060                                    ; preds = %1060, %1058
  %1061 = phi i32 [ %1097, %1060 ], [ %1059, %1058 ]
  %1062 = phi i32 [ %1098, %1060 ], [ 0, %1058 ]
  %1063 = add nuw nsw i32 %1062, 191
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %1063)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1068 = add nuw nsw i32 %1062, 195
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 %1068)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.CBufRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.CBufRet.f32 %1069, 2
  %1073 = fsub fast float %193, %1065
  %1074 = fsub fast float %194, %1066
  %1075 = fsub fast float %1001, %1067
  %1076 = call float @dx.op.unary.f32(i32 6, float %1073)  ; FAbs(value)
  %1077 = call float @dx.op.unary.f32(i32 6, float %1074)  ; FAbs(value)
  %1078 = call float @dx.op.unary.f32(i32 6, float %1075)  ; FAbs(value)
  %1079 = fsub fast float %1076, %1070
  %1080 = fsub fast float %1077, %1071
  %1081 = fsub fast float %1078, %1072
  %1082 = call float @dx.op.binary.f32(i32 35, float %1079, float 0.000000e+00)  ; FMax(a,b)
  %1083 = call float @dx.op.binary.f32(i32 35, float %1080, float 0.000000e+00)  ; FMax(a,b)
  %1084 = call float @dx.op.binary.f32(i32 35, float %1081, float 0.000000e+00)  ; FMax(a,b)
  %1085 = fmul fast float %1082, %1082
  %1086 = fmul fast float %1083, %1083
  %1087 = fadd fast float %1086, %1085
  %1088 = fmul fast float %1084, %1084
  %1089 = fadd fast float %1087, %1088
  %1090 = call float @dx.op.unary.f32(i32 24, float %1089)  ; Sqrt(value)
  %1091 = call float @dx.op.binary.f32(i32 35, float %1080, float %1081)  ; FMax(a,b)
  %1092 = call float @dx.op.binary.f32(i32 35, float %1079, float %1091)  ; FMax(a,b)
  %1093 = call float @dx.op.binary.f32(i32 36, float %1092, float 0.000000e+00)  ; FMin(a,b)
  %1094 = fadd fast float %1093, %1090
  %1095 = fcmp ogt float %1094, -0.000000e+00
  %1096 = zext i1 %1095 to i32
  %1097 = and i32 %1096, %1061
  %1098 = add nuw nsw i32 %1062, 1
  %1099 = icmp eq i32 %1098, 4
  br i1 %1099, label %1100, label %1060

; <label>:1100                                    ; preds = %1060
  %1101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.i32 %1101, 1
  %1103 = lshr i32 %1102, 1
  %1104 = xor i32 %1103, %1097
  %1105 = zext i1 %1005 to i32
  %1106 = and i32 %1104, %1105
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1159, label %1108, !dx.controlflow.hints !85

; <label>:1108                                    ; preds = %1100
  %1109 = fmul fast float %186, %186
  %1110 = fmul fast float %187, %187
  %1111 = fadd fast float %1109, %1110
  %1112 = fmul fast float %188, %188
  %1113 = fadd fast float %1111, %1112
  %1114 = call float @dx.op.unary.f32(i32 24, float %1113)  ; Sqrt(value)
  %1115 = and i32 %885, 4
  %1116 = icmp ne i32 %1115, 0
  %1117 = select i1 %1116, float %1114, float 1.000000e+00
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1120 = fsub fast float %1117, %1119
  %1121 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1122 = fmul fast float %1120, %1121
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1128 = fsub fast float %1127, %1001
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1131 = fmul fast float %1128, %1130
  %1132 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1133 = fmul fast float %1132, %1125
  %1134 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1135 = fsub fast float %1114, %1134
  %1136 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1137 = fmul fast float %1135, %1136
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1139 = fsub fast float 1.000000e+00, %1123
  %1140 = fmul fast float %1138, %1139
  %1141 = fadd fast float %1140, %1123
  %1142 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1143 = fsub fast float %1133, %1142
  %1144 = fmul fast float %1143, %1141
  %1145 = fadd fast float %1144, %1142
  %1146 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1147 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1148 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1149 = extractvalue %dx.types.CBufRet.f32 %1129, 2
  %1150 = fadd fast float %1145, %880
  %1151 = fmul fast float %1145, %1146
  %1152 = fmul fast float %1145, %1147
  %1153 = fmul fast float %1145, %1148
  %1154 = fadd fast float %1151, %876
  %1155 = fadd fast float %1152, %877
  %1156 = fadd fast float %1153, %878
  %1157 = fmul fast float %1145, %1149
  %1158 = fadd fast float %1157, %879
  br label %1159

; <label>:1159                                    ; preds = %1108, %1100, %942, %875, %656
  %1160 = phi float [ %657, %656 ], [ %876, %875 ], [ %960, %942 ], [ %1154, %1108 ], [ %876, %1100 ]
  %1161 = phi float [ %658, %656 ], [ %877, %875 ], [ %961, %942 ], [ %1155, %1108 ], [ %877, %1100 ]
  %1162 = phi float [ %659, %656 ], [ %878, %875 ], [ %962, %942 ], [ %1156, %1108 ], [ %878, %1100 ]
  %1163 = phi float [ %660, %656 ], [ %879, %875 ], [ %879, %942 ], [ %1158, %1108 ], [ %879, %1100 ]
  %1164 = phi float [ %661, %656 ], [ %880, %875 ], [ %945, %942 ], [ %1150, %1108 ], [ %880, %1100 ]
  %1165 = and i32 %354, 32
  %1166 = icmp ne i32 %1165, 0
  %1167 = and i1 %244, %1166
  br i1 %1167, label %1168, label %1210, !dx.controlflow.hints !86

; <label>:1168                                    ; preds = %1159
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1173 = fsub fast float %193, %1170
  %1174 = fadd fast float %1173, %1172
  %1175 = fsub fast float %194, %1171
  %1176 = fadd fast float %1175, %1172
  %1177 = extractvalue %dx.types.CBufRet.f32 %1169, 3
  %1178 = fmul fast float %1174, %1177
  %1179 = fmul fast float %1176, %1177
  %1180 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1181 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1182 = fsub fast float 1.000000e+00, %1180
  %1183 = fsub fast float 1.000000e+00, %1181
  %1184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %1182, float %1183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.ResRet.f32 %1184, 2
  %1188 = fmul fast float %1185, 0x3F847AE140000000
  %1189 = fmul fast float %1186, 0x3F847AE140000000
  %1190 = fmul fast float %1187, 0x3F847AE140000000
  %1191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %1182, float %1183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.ResRet.f32 %1191, 1
  %1194 = extractvalue %dx.types.ResRet.f32 %1191, 2
  %1195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %1182, float %1183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1188, float %1189, float %1190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = fadd fast float %1192, %1185
  %1199 = fmul fast float %1198, 0x3F847AE140000000
  %1200 = fadd fast float %1193, %1186
  %1201 = fmul fast float %1200, 0x3F847AE140000000
  %1202 = fadd fast float %1194, %1187
  %1203 = fmul fast float %1202, 0x3F847AE140000000
  %1204 = fadd fast float %1197, %1164
  %1205 = fadd fast float %1188, %1160
  %1206 = fadd fast float %1189, %1161
  %1207 = fadd fast float %1190, %1162
  %1208 = fmul fast float %1196, %1197
  %1209 = fadd fast float %1208, %1163
  br label %1210

; <label>:1210                                    ; preds = %1168, %1159
  %1211 = phi float [ %1205, %1168 ], [ %1160, %1159 ]
  %1212 = phi float [ %1206, %1168 ], [ %1161, %1159 ]
  %1213 = phi float [ %1207, %1168 ], [ %1162, %1159 ]
  %1214 = phi float [ %1209, %1168 ], [ %1163, %1159 ]
  %1215 = phi float [ %1204, %1168 ], [ %1164, %1159 ]
  %1216 = phi float [ %1199, %1168 ], [ 0.000000e+00, %1159 ]
  %1217 = phi float [ %1201, %1168 ], [ 0.000000e+00, %1159 ]
  %1218 = phi float [ %1203, %1168 ], [ 0.000000e+00, %1159 ]
  %1219 = and i32 %354, 16
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %2012, label %1221, !dx.controlflow.hints !87

; <label>:1221                                    ; preds = %1210
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 3
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  %1232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.i32 %1232, 0
  %1234 = icmp ne i32 %1233, 0
  %1235 = zext i1 %1234 to i32
  %1236 = extractvalue %dx.types.CBufRet.i32 %1232, 1
  %1237 = icmp ne i32 %1236, 0
  %1238 = zext i1 %1237 to i32
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1241 = bitcast float %1240 to i32
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1292, label %1243

; <label>:1243                                    ; preds = %1221
  br label %1244

; <label>:1244                                    ; preds = %1287, %1243
  %1245 = phi i32 [ %1288, %1287 ], [ 0, %1243 ]
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 0
  %1248 = bitcast float %1247 to i32
  %1249 = call i32 @dx.op.tertiary.i32(i32 49, i32 %352, i32 %1248, i32 %1245)  ; UMad(a,b,c)
  %1250 = shl i32 %1249, 2
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  br label %1253

; <label>:1253                                    ; preds = %1256, %1244
  %1254 = phi i32 [ %1252, %1244 ], [ %1261, %1256 ]
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1287, label %1256

; <label>:1256                                    ; preds = %1253
  %1257 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1254)  ; FirstbitLo(value)
  %1258 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1245, i32 %1257)  ; UMad(a,b,c)
  %1259 = and i32 %1257, 31
  %1260 = shl i32 1, %1259
  %1261 = xor i32 %1260, %1254
  %1262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1258, i32 0)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1258, i32 16)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  %1270 = fsub fast float %1263, %1267
  %1271 = fsub fast float %1264, %1268
  %1272 = fsub fast float %1265, %1269
  %1273 = fadd fast float %1267, %1263
  %1274 = fadd fast float %1268, %1264
  %1275 = fadd fast float %1269, %1265
  %1276 = fcmp fast ogt float %193, %1270
  %1277 = fcmp fast ogt float %194, %1271
  %1278 = fcmp fast ogt float %195, %1272
  %1279 = and i1 %1276, %1277
  %1280 = and i1 %1278, %1279
  %1281 = fcmp fast olt float %193, %1273
  %1282 = fcmp fast olt float %194, %1274
  %1283 = fcmp fast olt float %195, %1275
  %1284 = and i1 %1281, %1282
  %1285 = and i1 %1283, %1284
  %1286 = and i1 %1280, %1285
  br i1 %1286, label %1290, label %1253, !dx.controlflow.hints !88

; <label>:1287                                    ; preds = %1253
  %1288 = add i32 %1245, 1
  %1289 = icmp ult i32 %1288, %1248
  br i1 %1289, label %1244, label %1291, !llvm.loop !89

; <label>:1290                                    ; preds = %1256
  br label %1292

; <label>:1291                                    ; preds = %1287
  br label %1292

; <label>:1292                                    ; preds = %1291, %1290, %1221
  %1293 = phi i32 [ 255, %1221 ], [ %1258, %1290 ], [ 255, %1291 ]
  %1294 = icmp eq i32 %1293, 255
  br i1 %1294, label %1314, label %1295, !dx.controlflow.hints !91

; <label>:1295                                    ; preds = %1292
  %1296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 32)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.ResRet.f32 %1296, 1
  %1299 = extractvalue %dx.types.ResRet.f32 %1296, 2
  %1300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 132)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 136)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 152)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1293, i32 156)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1293, i32 160)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = icmp ne i32 %1307, 0
  %1311 = zext i1 %1310 to i32
  %1312 = icmp ne i32 %1309, 0
  %1313 = zext i1 %1312 to i32
  br label %1314

; <label>:1314                                    ; preds = %1295, %1292
  %1315 = phi float [ %1297, %1295 ], [ %1223, %1292 ]
  %1316 = phi float [ %1298, %1295 ], [ %1224, %1292 ]
  %1317 = phi float [ %1299, %1295 ], [ %1225, %1292 ]
  %1318 = phi float [ %1301, %1295 ], [ %1227, %1292 ]
  %1319 = phi float [ %1303, %1295 ], [ %1229, %1292 ]
  %1320 = phi float [ %1305, %1295 ], [ %1231, %1292 ]
  %1321 = phi i32 [ %1311, %1295 ], [ %1235, %1292 ]
  %1322 = phi i32 [ %1313, %1295 ], [ %1238, %1292 ]
  %1323 = extractvalue %dx.types.CBufRet.f32 %1228, 0
  %1324 = extractvalue %dx.types.CBufRet.f32 %1228, 1
  %1325 = fsub fast float %193, %1323
  %1326 = fsub fast float %194, %1324
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 2
  %1329 = extractvalue %dx.types.CBufRet.f32 %1327, 3
  %1330 = fmul fast float %1325, %1328
  %1331 = fmul fast float %1326, %1329
  %1332 = call float @dx.op.binary.f32(i32 36, float %1330, float %1331)  ; FMin(a,b)
  %1333 = fcmp fast olt float %1332, 0.000000e+00
  %1334 = call float @dx.op.binary.f32(i32 35, float %1330, float %1331)  ; FMax(a,b)
  %1335 = fcmp fast ogt float %1334, 1.000000e+00
  %1336 = or i1 %1333, %1335
  %1337 = extractvalue %dx.types.CBufRet.f32 %1228, 2
  %1338 = fcmp fast olt float %195, %1337
  %1339 = or i1 %1336, %1338
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 3
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 0
  %1344 = fadd fast float %1343, %1341
  %1345 = fcmp fast ogt float %195, %1344
  %1346 = or i1 %1339, %1345
  br i1 %1346, label %1631, label %1347, !dx.controlflow.hints !92

; <label>:1347                                    ; preds = %1314
  %1348 = fsub fast float 1.000000e+00, %1331
  %1349 = extractvalue %dx.types.CBufRet.f32 %1342, 3
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 3
  %1352 = extractvalue %dx.types.CBufRet.f32 %1350, 2
  %1353 = extractvalue %dx.types.CBufRet.f32 %1350, 1
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 0
  %1356 = extractvalue %dx.types.CBufRet.f32 %1354, 1
  %1357 = extractvalue %dx.types.CBufRet.f32 %1354, 2
  %1358 = extractvalue %dx.types.CBufRet.f32 %1350, 0
  br i1 %1294, label %1374, label %1359, !dx.controlflow.hints !93

; <label>:1359                                    ; preds = %1347
  %1360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 48)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 104)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 108)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 112)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 116)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 120)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  br label %1374

; <label>:1374                                    ; preds = %1359, %1347
  %1375 = phi float [ %1367, %1359 ], [ %1349, %1347 ]
  %1376 = phi float [ %1371, %1359 ], [ %1351, %1347 ]
  %1377 = phi float [ %1373, %1359 ], [ %1352, %1347 ]
  %1378 = phi float [ %1369, %1359 ], [ %1353, %1347 ]
  %1379 = phi float [ %1361, %1359 ], [ %1355, %1347 ]
  %1380 = phi float [ %1362, %1359 ], [ %1356, %1347 ]
  %1381 = phi float [ %1363, %1359 ], [ %1357, %1347 ]
  %1382 = phi float [ %1365, %1359 ], [ %1358, %1347 ]
  %1383 = fcmp fast oeq float %1375, 0.000000e+00
  br i1 %1383, label %1499, label %1384, !dx.controlflow.hints !94

; <label>:1384                                    ; preds = %1374
  %1385 = fcmp fast ogt float %1376, 0.000000e+00
  %1386 = fcmp fast oeq float %435, 0.000000e+00
  br i1 %1386, label %1391, label %1387, !dx.controlflow.hints !77

; <label>:1387                                    ; preds = %1384
  %1388 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1389 = fmul fast float %1388, %435
  %1390 = call float @dx.op.unary.f32(i32 23, float %1389)  ; Log(value)
  br label %1391

; <label>:1391                                    ; preds = %1387, %1384
  %1392 = phi float [ %1390, %1387 ], [ 0.000000e+00, %1384 ]
  br i1 %1386, label %1397, label %1393, !dx.controlflow.hints !77

; <label>:1393                                    ; preds = %1391
  %1394 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1395 = fmul fast float %1394, %435
  %1396 = call float @dx.op.unary.f32(i32 23, float %1395)  ; Log(value)
  br label %1397

; <label>:1397                                    ; preds = %1393, %1391
  %1398 = phi float [ %1396, %1393 ], [ 0.000000e+00, %1391 ]
  br i1 %1385, label %1399, label %1461, !dx.controlflow.hints !95

; <label>:1399                                    ; preds = %1397
  %1400 = fcmp fast ogt float %1377, 0.000000e+00
  br i1 %1400, label %1401, label %1411, !dx.controlflow.hints !96

; <label>:1401                                    ; preds = %1399
  %1402 = fmul fast float %1377, %1330
  %1403 = fmul fast float %1377, %1348
  %1404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1402, float %1403, float undef, float undef, i32 0, i32 0, i32 undef, float %1398)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.f32 %1404, 1
  %1407 = fmul fast float %1405, 2.000000e+00
  %1408 = fmul fast float %1406, 2.000000e+00
  %1409 = fadd fast float %1407, -1.000000e+00
  %1410 = fadd fast float %1408, -1.000000e+00
  br label %1432

; <label>:1411                                    ; preds = %1399
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 3
  %1414 = fmul fast float %1413, %1330
  %1415 = fmul fast float %1413, %1348
  %1416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %37, float %1414, float %1415, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.ResRet.f32 %1416, 2
  %1420 = fmul fast float %1417, 2.000000e+00
  %1421 = fmul fast float %1418, 2.000000e+00
  %1422 = fmul fast float %1419, 2.000000e+00
  %1423 = fadd fast float %1420, -1.000000e+00
  %1424 = fadd fast float %1421, -1.000000e+00
  %1425 = fadd fast float %1422, -1.000000e+00
  %1426 = extractvalue %dx.types.CBufRet.f32 %1342, 1
  %1427 = fmul fast float %1423, %1426
  %1428 = fmul fast float %1424, %1426
  %1429 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1430 = fmul fast float %1429, 5.000000e-01
  %1431 = fmul fast float %1430, %1425
  br label %1432

; <label>:1432                                    ; preds = %1411, %1401
  %1433 = phi float [ %1409, %1401 ], [ %1427, %1411 ]
  %1434 = phi float [ %1410, %1401 ], [ %1428, %1411 ]
  %1435 = phi float [ 0.000000e+00, %1401 ], [ %1431, %1411 ]
  %1436 = fmul fast float %1375, %193
  %1437 = fmul fast float %1375, %194
  %1438 = fmul fast float %1375, %195
  %1439 = call float @dx.op.unary.f32(i32 22, float %1376)  ; Frc(value)
  %1440 = fmul fast float %1439, %1433
  %1441 = fmul fast float %1439, %1434
  %1442 = fmul fast float %1439, %1435
  %1443 = fsub fast float %1436, %1440
  %1444 = fsub fast float %1437, %1441
  %1445 = fsub fast float %1438, %1442
  %1446 = fadd fast float %1376, 5.000000e-01
  %1447 = call float @dx.op.unary.f32(i32 22, float %1446)  ; Frc(value)
  %1448 = fmul fast float %1447, %1433
  %1449 = fmul fast float %1447, %1434
  %1450 = fmul fast float %1447, %1435
  %1451 = fadd fast float %1436, -5.000000e-01
  %1452 = fsub fast float %1451, %1448
  %1453 = fadd fast float %1437, -5.000000e-01
  %1454 = fsub fast float %1453, %1449
  %1455 = fadd fast float %1438, -5.000000e-01
  %1456 = fsub fast float %1455, %1450
  %1457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %1452, float %1454, float %1456, float undef, i32 0, i32 0, i32 0, float %1392)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.ResRet.f32 %1457, 1
  %1460 = fadd fast float %1458, %1378
  br label %1471

; <label>:1461                                    ; preds = %1397
  %1462 = fmul fast float %1382, %1379
  %1463 = fmul fast float %1382, %1380
  %1464 = fmul fast float %1382, %1381
  %1465 = fsub fast float %193, %1462
  %1466 = fsub fast float %194, %1463
  %1467 = fsub fast float %195, %1464
  %1468 = fmul fast float %1465, %1375
  %1469 = fmul fast float %1466, %1375
  %1470 = fmul fast float %1467, %1375
  br label %1471

; <label>:1471                                    ; preds = %1461, %1432
  %1472 = phi float [ %1443, %1432 ], [ %1468, %1461 ]
  %1473 = phi float [ %1444, %1432 ], [ %1469, %1461 ]
  %1474 = phi float [ %1445, %1432 ], [ %1470, %1461 ]
  %1475 = phi float [ %1460, %1432 ], [ 0.000000e+00, %1461 ]
  %1476 = phi float [ %1459, %1432 ], [ 0.000000e+00, %1461 ]
  %1477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %1472, float %1473, float %1474, float undef, i32 0, i32 0, i32 0, float %1392)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.ResRet.f32 %1477, 1
  %1480 = fadd fast float %1478, %1378
  br i1 %1385, label %1481, label %1492, !dx.controlflow.hints !97

; <label>:1481                                    ; preds = %1471
  %1482 = call float @dx.op.unary.f32(i32 22, float %1376)  ; Frc(value)
  %1483 = fmul fast float %1482, 2.000000e+00
  %1484 = fadd fast float %1483, -1.000000e+00
  %1485 = call float @dx.op.unary.f32(i32 6, float %1484)  ; FAbs(value)
  %1486 = fsub fast float %1475, %1480
  %1487 = fmul fast float %1485, %1486
  %1488 = fadd fast float %1487, %1480
  %1489 = fsub fast float %1476, %1479
  %1490 = fmul fast float %1485, %1489
  %1491 = fadd fast float %1490, %1479
  br label %1492

; <label>:1492                                    ; preds = %1481, %1471
  %1493 = phi float [ %1488, %1481 ], [ %1480, %1471 ]
  %1494 = phi float [ %1491, %1481 ], [ %1479, %1471 ]
  %1495 = fsub fast float %1493, %1494
  %1496 = fsub fast float 1.000000e+00, %1494
  %1497 = fdiv fast float %1495, %1496
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  br label %1499

; <label>:1499                                    ; preds = %1492, %1374
  %1500 = phi float [ %1498, %1492 ], [ 1.000000e+00, %1374 ]
  %1501 = fcmp fast oeq float %435, 0.000000e+00
  br i1 %1501, label %1506, label %1502, !dx.controlflow.hints !77

; <label>:1502                                    ; preds = %1499
  %1503 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1504 = fmul fast float %1503, %435
  %1505 = call float @dx.op.unary.f32(i32 23, float %1504)  ; Log(value)
  br label %1506

; <label>:1506                                    ; preds = %1502, %1499
  %1507 = phi float [ %1505, %1502 ], [ 0.000000e+00, %1499 ]
  %1508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %1330, float %1348, float undef, float undef, i32 0, i32 0, i32 undef, float %1507)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %38, float %1330, float %1348, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1511 = extractvalue %dx.types.ResRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.ResRet.f32 %1510, 1
  %1513 = extractvalue %dx.types.ResRet.f32 %1510, 2
  %1514 = extractvalue %dx.types.ResRet.f32 %1510, 3
  %1515 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %38, float %1330, float %1348, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.ResRet.f32 %1515, 2
  %1519 = extractvalue %dx.types.ResRet.f32 %1515, 3
  %1520 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %38, float %1330, float %1348, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.ResRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.ResRet.f32 %1520, 2
  %1524 = extractvalue %dx.types.ResRet.f32 %1520, 3
  %1525 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %38, float %1330, float %1348, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = extractvalue %dx.types.ResRet.f32 %1525, 3
  %1530 = fadd fast float %1511, %1512
  %1531 = fadd fast float %1530, %1513
  %1532 = fadd fast float %1531, %1514
  %1533 = fmul fast float %1516, %1511
  %1534 = fmul fast float %1517, %1512
  %1535 = fadd fast float %1533, %1534
  %1536 = fmul fast float %1518, %1513
  %1537 = fadd fast float %1535, %1536
  %1538 = fmul fast float %1519, %1514
  %1539 = fadd fast float %1537, %1538
  %1540 = fmul fast float %1521, %1511
  %1541 = fmul fast float %1522, %1512
  %1542 = fadd fast float %1540, %1541
  %1543 = fmul fast float %1523, %1513
  %1544 = fadd fast float %1542, %1543
  %1545 = fmul fast float %1524, %1514
  %1546 = fadd fast float %1544, %1545
  %1547 = fmul fast float %1526, %1511
  %1548 = fmul fast float %1527, %1512
  %1549 = fadd fast float %1547, %1548
  %1550 = fmul fast float %1528, %1513
  %1551 = fadd fast float %1549, %1550
  %1552 = fmul fast float %1529, %1514
  %1553 = fadd fast float %1551, %1552
  %1554 = fcmp fast ogt float %1532, 0.000000e+00
  %1555 = fdiv fast float %1539, %1532
  %1556 = select i1 %1554, float %1555, float 0.000000e+00
  %1557 = fdiv fast float %1546, %1532
  %1558 = select i1 %1554, float %1557, float 0.000000e+00
  %1559 = fdiv fast float %1553, %1532
  %1560 = select i1 %1554, float %1559, float 0.000000e+00
  %1561 = fcmp fast ogt float %195, %1558
  %1562 = fcmp fast olt float %195, %1556
  %1563 = and i1 %1562, %1561
  br i1 %1563, label %1564, label %1631, !dx.controlflow.hints !98

; <label>:1564                                    ; preds = %1506
  %1565 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 2
  %1568 = extractvalue %dx.types.CBufRet.f32 %1566, 3
  br i1 %1294, label %1579, label %1569, !dx.controlflow.hints !99

; <label>:1569                                    ; preds = %1564
  %1570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 60)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 64)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 72)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.f32 %1575, 0
  %1577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 96)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  br label %1579

; <label>:1579                                    ; preds = %1569, %1564
  %1580 = phi float [ %1571, %1569 ], [ %1343, %1564 ]
  %1581 = phi float [ %1576, %1569 ], [ %1341, %1564 ]
  %1582 = phi float [ %1578, %1569 ], [ %1565, %1564 ]
  %1583 = phi float [ %1573, %1569 ], [ %1567, %1564 ]
  %1584 = phi float [ %1574, %1569 ], [ %1568, %1564 ]
  %1585 = call float @dx.op.binary.f32(i32 35, float %1509, float 0.000000e+00)  ; FMax(a,b)
  %1586 = call float @dx.op.binary.f32(i32 36, float %1585, float 1.000000e+00)  ; FMin(a,b)
  %1587 = call float @dx.op.unary.f32(i32 24, float %1586)  ; Sqrt(value)
  %1588 = call float @dx.op.binary.f32(i32 35, float %1560, float 0x3F847AE140000000)  ; FMax(a,b)
  %1589 = fsub fast float %1556, %195
  %1590 = fsub fast float %195, %1558
  %1591 = call float @dx.op.binary.f32(i32 36, float %1590, float %1589)  ; FMin(a,b)
  %1592 = fdiv fast float %1591, %1588
  %1593 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1594 = fsub fast float %195, %1581
  %1595 = fdiv fast float %1594, %1580
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = fsub fast float 1.000000e+00, %1596
  %1598 = fmul float %1593, %1597
  %1599 = fmul float %1598, %1598
  %1600 = fmul fast float %1587, %1500
  %1601 = fmul fast float %1600, %1599
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 1
  %1605 = fsub fast float %1601, %1604
  %1606 = fsub fast float %1603, %1604
  %1607 = fdiv fast float %1605, %1606
  %1608 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1609 = fmul fast float %1608, %1582
  %1610 = fcmp fast ogt float %1584, 0.000000e+00
  br i1 %1610, label %1611, label %1631, !dx.controlflow.hints !100

; <label>:1611                                    ; preds = %1579
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1616 = fsub fast float %193, %1613
  %1617 = fsub fast float %194, %1614
  %1618 = fsub fast float %195, %1615
  %1619 = fmul fast float %1616, %1616
  %1620 = fmul fast float %1617, %1617
  %1621 = fadd fast float %1619, %1620
  %1622 = fmul fast float %1618, %1618
  %1623 = fadd fast float %1621, %1622
  %1624 = call float @dx.op.unary.f32(i32 24, float %1623)  ; Sqrt(value)
  %1625 = fsub fast float %1624, %1583
  %1626 = fsub fast float %1584, %1583
  %1627 = fdiv fast float %1625, %1626
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1629 = fmul fast float %1628, %1628
  %1630 = fmul fast float %1629, %1609
  br label %1631

; <label>:1631                                    ; preds = %1611, %1579, %1506, %1314
  %1632 = phi float [ 0.000000e+00, %1314 ], [ 0.000000e+00, %1506 ], [ %1630, %1611 ], [ %1609, %1579 ]
  %1633 = fcmp fast oeq float %1632, 0.000000e+00
  br i1 %1633, label %2012, label %1634, !dx.controlflow.hints !101

; <label>:1634                                    ; preds = %1631
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1639 = fsub fast float %193, %1636
  %1640 = fadd fast float %1639, %1638
  %1641 = fsub fast float %194, %1637
  %1642 = fadd fast float %1641, %1638
  %1643 = extractvalue %dx.types.CBufRet.f32 %1635, 3
  %1644 = fmul fast float %1640, %1643
  %1645 = fmul fast float %1642, %1643
  %1646 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1647 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1648 = fsub fast float 1.000000e+00, %1646
  %1649 = fsub fast float 1.000000e+00, %1647
  %1650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %38, float %1648, float %1649, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1654 = fmul fast float %1653, %1651
  %1655 = extractvalue %dx.types.CBufRet.f32 %1652, 3
  %1656 = fadd fast float %1655, %1654
  %1657 = fcmp fast ogt float %1651, 0.000000e+00
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = and i32 %1659, 32768
  %1661 = icmp ne i32 %1660, 0
  %1662 = and i1 %1657, %1661
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 3
  %1665 = fadd fast float %1664, %1656
  %1666 = fcmp fast ole float %195, %1665
  %1667 = and i1 %1662, %1666
  %1668 = xor i1 %1667, true
  %1669 = icmp ne i32 %1321, 0
  %1670 = and i1 %1669, %1668
  %1671 = icmp ne i32 %1322, 0
  %1672 = and i1 %1671, %1667
  %1673 = or i1 %1670, %1672
  br i1 %1673, label %2012, label %1674, !dx.controlflow.hints !102

; <label>:1674                                    ; preds = %1634
  %1675 = fsub fast float %195, %1656
  %1676 = call float @dx.op.unary.f32(i32 6, float %1675)  ; FAbs(value)
  %1677 = fdiv fast float %1676, %1320
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = fmul fast float %1678, %1632
  %1680 = fcmp fast une float %1318, 0.000000e+00
  br i1 %1680, label %1681, label %2000, !dx.controlflow.hints !103

; <label>:1681                                    ; preds = %1674
  %1682 = fmul fast float %1318, %117
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.CBufRet.f32 %1683, 1
  %1686 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %1687 = fmul fast float %1684, %1682
  %1688 = fmul fast float %1685, %1682
  %1689 = fmul fast float %1686, %1682
  %1690 = fadd fast float %1687, %193
  %1691 = fadd fast float %1688, %194
  %1692 = fadd fast float %1689, %195
  %1693 = fmul fast float %1318, 2.000000e+00
  %1694 = call float @dx.op.binary.f32(i32 35, float %435, float %1693)  ; FMax(a,b)
  %1695 = fsub fast float %1690, %1323
  %1696 = fsub fast float %1691, %1324
  %1697 = fmul fast float %1695, %1328
  %1698 = fmul fast float %1696, %1329
  %1699 = call float @dx.op.binary.f32(i32 36, float %1697, float %1698)  ; FMin(a,b)
  %1700 = fcmp fast olt float %1699, 0.000000e+00
  %1701 = call float @dx.op.binary.f32(i32 35, float %1697, float %1698)  ; FMax(a,b)
  %1702 = fcmp fast ogt float %1701, 1.000000e+00
  %1703 = or i1 %1700, %1702
  %1704 = fcmp fast olt float %1692, %1337
  %1705 = or i1 %1703, %1704
  %1706 = fcmp fast ogt float %1692, %1344
  %1707 = or i1 %1705, %1706
  br i1 %1707, label %1992, label %1708, !dx.controlflow.hints !92

; <label>:1708                                    ; preds = %1681
  %1709 = fsub fast float 1.000000e+00, %1698
  %1710 = extractvalue %dx.types.CBufRet.f32 %1342, 3
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 3
  %1713 = extractvalue %dx.types.CBufRet.f32 %1711, 2
  %1714 = extractvalue %dx.types.CBufRet.f32 %1711, 1
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1719 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  br i1 %1294, label %1735, label %1720, !dx.controlflow.hints !93

; <label>:1720                                    ; preds = %1708
  %1721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 48)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.ResRet.f32 %1721, 1
  %1724 = extractvalue %dx.types.ResRet.f32 %1721, 2
  %1725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 104)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.f32 %1725, 0
  %1727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 108)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 112)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 116)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.f32 %1731, 0
  %1733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 120)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.f32 %1733, 0
  br label %1735

; <label>:1735                                    ; preds = %1720, %1708
  %1736 = phi float [ %1728, %1720 ], [ %1710, %1708 ]
  %1737 = phi float [ %1732, %1720 ], [ %1712, %1708 ]
  %1738 = phi float [ %1734, %1720 ], [ %1713, %1708 ]
  %1739 = phi float [ %1730, %1720 ], [ %1714, %1708 ]
  %1740 = phi float [ %1722, %1720 ], [ %1716, %1708 ]
  %1741 = phi float [ %1723, %1720 ], [ %1717, %1708 ]
  %1742 = phi float [ %1724, %1720 ], [ %1718, %1708 ]
  %1743 = phi float [ %1726, %1720 ], [ %1719, %1708 ]
  %1744 = fcmp fast oeq float %1736, 0.000000e+00
  br i1 %1744, label %1860, label %1745, !dx.controlflow.hints !94

; <label>:1745                                    ; preds = %1735
  %1746 = fcmp fast ogt float %1737, 0.000000e+00
  %1747 = fcmp fast oeq float %1694, 0.000000e+00
  br i1 %1747, label %1752, label %1748, !dx.controlflow.hints !77

; <label>:1748                                    ; preds = %1745
  %1749 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1750 = fmul fast float %1749, %1694
  %1751 = call float @dx.op.unary.f32(i32 23, float %1750)  ; Log(value)
  br label %1752

; <label>:1752                                    ; preds = %1748, %1745
  %1753 = phi float [ %1751, %1748 ], [ 0.000000e+00, %1745 ]
  br i1 %1747, label %1758, label %1754, !dx.controlflow.hints !77

; <label>:1754                                    ; preds = %1752
  %1755 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1756 = fmul fast float %1755, %1694
  %1757 = call float @dx.op.unary.f32(i32 23, float %1756)  ; Log(value)
  br label %1758

; <label>:1758                                    ; preds = %1754, %1752
  %1759 = phi float [ %1757, %1754 ], [ 0.000000e+00, %1752 ]
  br i1 %1746, label %1760, label %1822, !dx.controlflow.hints !95

; <label>:1760                                    ; preds = %1758
  %1761 = fcmp fast ogt float %1738, 0.000000e+00
  br i1 %1761, label %1762, label %1772, !dx.controlflow.hints !96

; <label>:1762                                    ; preds = %1760
  %1763 = fmul fast float %1738, %1697
  %1764 = fmul fast float %1738, %1709
  %1765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %35, float %1763, float %1764, float undef, float undef, i32 0, i32 0, i32 undef, float %1759)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1766 = extractvalue %dx.types.ResRet.f32 %1765, 0
  %1767 = extractvalue %dx.types.ResRet.f32 %1765, 1
  %1768 = fmul fast float %1766, 2.000000e+00
  %1769 = fmul fast float %1767, 2.000000e+00
  %1770 = fadd fast float %1768, -1.000000e+00
  %1771 = fadd fast float %1769, -1.000000e+00
  br label %1793

; <label>:1772                                    ; preds = %1760
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 3
  %1775 = fmul fast float %1774, %1697
  %1776 = fmul fast float %1774, %1709
  %1777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %37, float %1775, float %1776, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.ResRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.ResRet.f32 %1777, 2
  %1781 = fmul fast float %1778, 2.000000e+00
  %1782 = fmul fast float %1779, 2.000000e+00
  %1783 = fmul fast float %1780, 2.000000e+00
  %1784 = fadd fast float %1781, -1.000000e+00
  %1785 = fadd fast float %1782, -1.000000e+00
  %1786 = fadd fast float %1783, -1.000000e+00
  %1787 = extractvalue %dx.types.CBufRet.f32 %1342, 1
  %1788 = fmul fast float %1784, %1787
  %1789 = fmul fast float %1785, %1787
  %1790 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1791 = fmul fast float %1790, 5.000000e-01
  %1792 = fmul fast float %1791, %1786
  br label %1793

; <label>:1793                                    ; preds = %1772, %1762
  %1794 = phi float [ %1770, %1762 ], [ %1788, %1772 ]
  %1795 = phi float [ %1771, %1762 ], [ %1789, %1772 ]
  %1796 = phi float [ 0.000000e+00, %1762 ], [ %1792, %1772 ]
  %1797 = fmul fast float %1736, %1690
  %1798 = fmul fast float %1736, %1691
  %1799 = fmul fast float %1736, %1692
  %1800 = call float @dx.op.unary.f32(i32 22, float %1737)  ; Frc(value)
  %1801 = fmul fast float %1800, %1794
  %1802 = fmul fast float %1800, %1795
  %1803 = fmul fast float %1800, %1796
  %1804 = fsub fast float %1797, %1801
  %1805 = fsub fast float %1798, %1802
  %1806 = fsub fast float %1799, %1803
  %1807 = fadd fast float %1737, 5.000000e-01
  %1808 = call float @dx.op.unary.f32(i32 22, float %1807)  ; Frc(value)
  %1809 = fmul fast float %1808, %1794
  %1810 = fmul fast float %1808, %1795
  %1811 = fmul fast float %1808, %1796
  %1812 = fadd fast float %1797, -5.000000e-01
  %1813 = fsub fast float %1812, %1809
  %1814 = fadd fast float %1798, -5.000000e-01
  %1815 = fsub fast float %1814, %1810
  %1816 = fadd fast float %1799, -5.000000e-01
  %1817 = fsub fast float %1816, %1811
  %1818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %1813, float %1815, float %1817, float undef, i32 0, i32 0, i32 0, float %1753)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.ResRet.f32 %1818, 1
  %1821 = fadd fast float %1819, %1739
  br label %1832

; <label>:1822                                    ; preds = %1758
  %1823 = fmul fast float %1743, %1740
  %1824 = fmul fast float %1743, %1741
  %1825 = fmul fast float %1743, %1742
  %1826 = fsub fast float %1690, %1823
  %1827 = fsub fast float %1691, %1824
  %1828 = fsub fast float %1692, %1825
  %1829 = fmul fast float %1826, %1736
  %1830 = fmul fast float %1827, %1736
  %1831 = fmul fast float %1828, %1736
  br label %1832

; <label>:1832                                    ; preds = %1822, %1793
  %1833 = phi float [ %1804, %1793 ], [ %1829, %1822 ]
  %1834 = phi float [ %1805, %1793 ], [ %1830, %1822 ]
  %1835 = phi float [ %1806, %1793 ], [ %1831, %1822 ]
  %1836 = phi float [ %1821, %1793 ], [ 0.000000e+00, %1822 ]
  %1837 = phi float [ %1820, %1793 ], [ 0.000000e+00, %1822 ]
  %1838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %1833, float %1834, float %1835, float undef, i32 0, i32 0, i32 0, float %1753)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.ResRet.f32 %1838, 1
  %1841 = fadd fast float %1839, %1739
  br i1 %1746, label %1842, label %1853, !dx.controlflow.hints !97

; <label>:1842                                    ; preds = %1832
  %1843 = call float @dx.op.unary.f32(i32 22, float %1737)  ; Frc(value)
  %1844 = fmul fast float %1843, 2.000000e+00
  %1845 = fadd fast float %1844, -1.000000e+00
  %1846 = call float @dx.op.unary.f32(i32 6, float %1845)  ; FAbs(value)
  %1847 = fsub fast float %1836, %1841
  %1848 = fmul fast float %1846, %1847
  %1849 = fadd fast float %1848, %1841
  %1850 = fsub fast float %1837, %1840
  %1851 = fmul fast float %1846, %1850
  %1852 = fadd fast float %1851, %1840
  br label %1853

; <label>:1853                                    ; preds = %1842, %1832
  %1854 = phi float [ %1849, %1842 ], [ %1841, %1832 ]
  %1855 = phi float [ %1852, %1842 ], [ %1840, %1832 ]
  %1856 = fsub fast float %1854, %1855
  %1857 = fsub fast float 1.000000e+00, %1855
  %1858 = fdiv fast float %1856, %1857
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  br label %1860

; <label>:1860                                    ; preds = %1853, %1735
  %1861 = phi float [ %1859, %1853 ], [ 1.000000e+00, %1735 ]
  %1862 = fcmp fast oeq float %1694, 0.000000e+00
  br i1 %1862, label %1867, label %1863, !dx.controlflow.hints !77

; <label>:1863                                    ; preds = %1860
  %1864 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1865 = fmul fast float %1864, %1694
  %1866 = call float @dx.op.unary.f32(i32 23, float %1865)  ; Log(value)
  br label %1867

; <label>:1867                                    ; preds = %1863, %1860
  %1868 = phi float [ %1866, %1863 ], [ 0.000000e+00, %1860 ]
  %1869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %36, float %1697, float %1709, float undef, float undef, i32 0, i32 0, i32 undef, float %1868)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %38, float %1697, float %1709, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = extractvalue %dx.types.ResRet.f32 %1871, 3
  %1876 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %38, float %1697, float %1709, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = extractvalue %dx.types.ResRet.f32 %1876, 3
  %1881 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %38, float %1697, float %1709, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.ResRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.ResRet.f32 %1881, 2
  %1885 = extractvalue %dx.types.ResRet.f32 %1881, 3
  %1886 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %38, float %1697, float %1709, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.ResRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.ResRet.f32 %1886, 2
  %1890 = extractvalue %dx.types.ResRet.f32 %1886, 3
  %1891 = fadd fast float %1872, %1873
  %1892 = fadd fast float %1891, %1874
  %1893 = fadd fast float %1892, %1875
  %1894 = fmul fast float %1877, %1872
  %1895 = fmul fast float %1878, %1873
  %1896 = fadd fast float %1894, %1895
  %1897 = fmul fast float %1879, %1874
  %1898 = fadd fast float %1896, %1897
  %1899 = fmul fast float %1880, %1875
  %1900 = fadd fast float %1898, %1899
  %1901 = fmul fast float %1882, %1872
  %1902 = fmul fast float %1883, %1873
  %1903 = fadd fast float %1901, %1902
  %1904 = fmul fast float %1884, %1874
  %1905 = fadd fast float %1903, %1904
  %1906 = fmul fast float %1885, %1875
  %1907 = fadd fast float %1905, %1906
  %1908 = fmul fast float %1887, %1872
  %1909 = fmul fast float %1888, %1873
  %1910 = fadd fast float %1908, %1909
  %1911 = fmul fast float %1889, %1874
  %1912 = fadd fast float %1910, %1911
  %1913 = fmul fast float %1890, %1875
  %1914 = fadd fast float %1912, %1913
  %1915 = fcmp fast ogt float %1893, 0.000000e+00
  %1916 = fdiv fast float %1900, %1893
  %1917 = select i1 %1915, float %1916, float 0.000000e+00
  %1918 = fdiv fast float %1907, %1893
  %1919 = select i1 %1915, float %1918, float 0.000000e+00
  %1920 = fdiv fast float %1914, %1893
  %1921 = select i1 %1915, float %1920, float 0.000000e+00
  %1922 = fcmp fast ogt float %1692, %1919
  %1923 = fcmp fast olt float %1692, %1917
  %1924 = and i1 %1923, %1922
  br i1 %1924, label %1925, label %1992, !dx.controlflow.hints !98

; <label>:1925                                    ; preds = %1867
  %1926 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 2
  %1929 = extractvalue %dx.types.CBufRet.f32 %1927, 3
  br i1 %1294, label %1940, label %1930, !dx.controlflow.hints !99

; <label>:1930                                    ; preds = %1925
  %1931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 60)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.f32 %1931, 0
  %1933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 64)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.f32 %1933, 0
  %1935 = extractvalue %dx.types.ResRet.f32 %1933, 1
  %1936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 72)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %1293, i32 96)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  br label %1940

; <label>:1940                                    ; preds = %1930, %1925
  %1941 = phi float [ %1932, %1930 ], [ %1343, %1925 ]
  %1942 = phi float [ %1937, %1930 ], [ %1341, %1925 ]
  %1943 = phi float [ %1939, %1930 ], [ %1926, %1925 ]
  %1944 = phi float [ %1934, %1930 ], [ %1928, %1925 ]
  %1945 = phi float [ %1935, %1930 ], [ %1929, %1925 ]
  %1946 = call float @dx.op.binary.f32(i32 35, float %1870, float 0.000000e+00)  ; FMax(a,b)
  %1947 = call float @dx.op.binary.f32(i32 36, float %1946, float 1.000000e+00)  ; FMin(a,b)
  %1948 = call float @dx.op.unary.f32(i32 24, float %1947)  ; Sqrt(value)
  %1949 = call float @dx.op.binary.f32(i32 35, float %1921, float 0x3F847AE140000000)  ; FMax(a,b)
  %1950 = fsub fast float %1917, %1692
  %1951 = fsub fast float %1692, %1919
  %1952 = call float @dx.op.binary.f32(i32 36, float %1951, float %1950)  ; FMin(a,b)
  %1953 = fdiv fast float %1952, %1949
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1955 = fsub fast float %1692, %1942
  %1956 = fdiv fast float %1955, %1941
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = fsub fast float 1.000000e+00, %1957
  %1959 = fmul float %1954, %1958
  %1960 = fmul float %1959, %1959
  %1961 = fmul fast float %1948, %1861
  %1962 = fmul fast float %1961, %1960
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 2
  %1965 = extractvalue %dx.types.CBufRet.f32 %1963, 1
  %1966 = fsub fast float %1962, %1965
  %1967 = fsub fast float %1964, %1965
  %1968 = fdiv fast float %1966, %1967
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1970 = fmul fast float %1969, %1943
  %1971 = fcmp fast ogt float %1945, 0.000000e+00
  br i1 %1971, label %1972, label %1992, !dx.controlflow.hints !100

; <label>:1972                                    ; preds = %1940
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 0
  %1975 = extractvalue %dx.types.CBufRet.f32 %1973, 1
  %1976 = extractvalue %dx.types.CBufRet.f32 %1973, 2
  %1977 = fsub fast float %1690, %1974
  %1978 = fsub fast float %1691, %1975
  %1979 = fsub fast float %1692, %1976
  %1980 = fmul fast float %1977, %1977
  %1981 = fmul fast float %1978, %1978
  %1982 = fadd fast float %1980, %1981
  %1983 = fmul fast float %1979, %1979
  %1984 = fadd fast float %1982, %1983
  %1985 = call float @dx.op.unary.f32(i32 24, float %1984)  ; Sqrt(value)
  %1986 = fsub fast float %1985, %1944
  %1987 = fsub fast float %1945, %1944
  %1988 = fdiv fast float %1986, %1987
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = fmul fast float %1989, %1989
  %1991 = fmul fast float %1990, %1970
  br label %1992

; <label>:1992                                    ; preds = %1972, %1940, %1867, %1681
  %1993 = phi float [ 0.000000e+00, %1681 ], [ 0.000000e+00, %1867 ], [ %1991, %1972 ], [ %1970, %1940 ]
  %1994 = fsub fast float %1679, %1993
  %1995 = fdiv fast float %1994, %1679
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1997 = fsub fast float 1.000000e+00, %1319
  %1998 = fmul fast float %1996, %1997
  %1999 = fadd fast float %1998, %1319
  br label %2000

; <label>:2000                                    ; preds = %1992, %1674
  %2001 = phi float [ %1999, %1992 ], [ 1.000000e+00, %1674 ]
  %2002 = fadd fast float %1679, %1215
  %2003 = fmul fast float %1679, %1315
  %2004 = fmul fast float %2003, %2001
  %2005 = fmul fast float %1679, %1316
  %2006 = fmul fast float %2005, %2001
  %2007 = fmul fast float %1679, %1317
  %2008 = fmul fast float %2007, %2001
  %2009 = fadd fast float %2004, %1211
  %2010 = fadd fast float %2006, %1212
  %2011 = fadd fast float %2008, %1213
  br label %2012

; <label>:2012                                    ; preds = %2000, %1634, %1631, %1210
  %2013 = phi float [ %1211, %1210 ], [ %1211, %1631 ], [ %1211, %1634 ], [ %2009, %2000 ]
  %2014 = phi float [ %1212, %1210 ], [ %1212, %1631 ], [ %1212, %1634 ], [ %2010, %2000 ]
  %2015 = phi float [ %1213, %1210 ], [ %1213, %1631 ], [ %1213, %1634 ], [ %2011, %2000 ]
  %2016 = phi float [ %1215, %1210 ], [ %1215, %1631 ], [ %1215, %1634 ], [ %2002, %2000 ]
  %2017 = and i32 %354, 4
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2189, label %2019, !dx.controlflow.hints !104

; <label>:2019                                    ; preds = %2012
  %2020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.i32 %2020, 1
  %2022 = icmp eq i32 %2021, 0
  br i1 %2022, label %2189, label %2023

; <label>:2023                                    ; preds = %2019
  br label %2024

; <label>:2024                                    ; preds = %2180, %2023
  %2025 = phi i32 [ %2186, %2180 ], [ 0, %2023 ]
  %2026 = phi float [ %2181, %2180 ], [ %2013, %2023 ]
  %2027 = phi float [ %2182, %2180 ], [ %2014, %2023 ]
  %2028 = phi float [ %2183, %2180 ], [ %2015, %2023 ]
  %2029 = phi float [ %2184, %2180 ], [ %1214, %2023 ]
  %2030 = phi float [ %2185, %2180 ], [ %2016, %2023 ]
  %2031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.i32 %2031, 1
  %2033 = call i32 @dx.op.tertiary.i32(i32 49, i32 %352, i32 %2032, i32 %2025)  ; UMad(a,b,c)
  %2034 = shl i32 %2033, 2
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = icmp eq i32 %2036, 0
  br i1 %2037, label %2180, label %2038

; <label>:2038                                    ; preds = %2024
  br label %2039

; <label>:2039                                    ; preds = %2166, %2038
  %2040 = phi i32 [ %2050, %2166 ], [ %2036, %2038 ]
  %2041 = phi float [ %2172, %2166 ], [ %2026, %2038 ]
  %2042 = phi float [ %2173, %2166 ], [ %2027, %2038 ]
  %2043 = phi float [ %2174, %2166 ], [ %2028, %2038 ]
  %2044 = phi float [ %2176, %2166 ], [ %2029, %2038 ]
  %2045 = phi float [ %2177, %2166 ], [ %2030, %2038 ]
  %2046 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2040)  ; FirstbitLo(value)
  %2047 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %2025, i32 %2046)  ; UMad(a,b,c)
  %2048 = and i32 %2046, 31
  %2049 = shl i32 1, %2048
  %2050 = xor i32 %2049, %2040
  %2051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2047, i32 0)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 0
  %2053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2047, i32 4)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2047, i32 16)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.ResRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.ResRet.f32 %2055, 2
  %2059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2047, i32 28)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  %2061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2047, i32 32)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.f32 %2061, 0
  %2063 = extractvalue %dx.types.ResRet.f32 %2061, 1
  %2064 = extractvalue %dx.types.ResRet.f32 %2061, 2
  %2065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2047, i32 44)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2047, i32 48)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.f32 %2067, 0
  %2069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2047, i32 52)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.f32 %2069, 0
  %2071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2047, i32 56)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  %2073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2047, i32 64)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.ResRet.f32 %2073, 1
  %2076 = extractvalue %dx.types.ResRet.f32 %2073, 2
  %2077 = mul i32 %2047, 60
  %2078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = extractvalue %dx.types.ResRet.f32 %2078, 1
  %2081 = extractvalue %dx.types.ResRet.f32 %2078, 2
  %2082 = add i32 %2077, 12
  %2083 = add i32 %2077, 48
  %2084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 2
  %2086 = fsub fast float %193, %2079
  %2087 = fsub fast float %194, %2080
  %2088 = fsub fast float %195, %2081
  %2089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.ResRet.f32 %2089, 1
  %2092 = extractvalue %dx.types.ResRet.f32 %2089, 2
  %2093 = call float @dx.op.dot3.f32(i32 55, float %2086, float %2087, float %2088, float %2090, float %2091, float %2092)  ; Dot3(ax,ay,az,bx,by,bz)
  %2094 = add i32 %2077, 24
  %2095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  %2097 = extractvalue %dx.types.ResRet.f32 %2095, 1
  %2098 = extractvalue %dx.types.ResRet.f32 %2095, 2
  %2099 = call float @dx.op.dot3.f32(i32 55, float %2086, float %2087, float %2088, float %2096, float %2097, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2100 = add i32 %2077, 36
  %2101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.f32 %2101, 0
  %2103 = extractvalue %dx.types.ResRet.f32 %2101, 1
  %2104 = extractvalue %dx.types.ResRet.f32 %2101, 2
  %2105 = call float @dx.op.dot3.f32(i32 55, float %2086, float %2087, float %2088, float %2102, float %2103, float %2104)  ; Dot3(ax,ay,az,bx,by,bz)
  %2106 = call float @dx.op.unary.f32(i32 6, float %2093)  ; FAbs(value)
  %2107 = call float @dx.op.unary.f32(i32 6, float %2099)  ; FAbs(value)
  %2108 = call float @dx.op.unary.f32(i32 6, float %2105)  ; FAbs(value)
  %2109 = fmul fast float %2106, %2066
  %2110 = fmul fast float %2107, %2066
  %2111 = fmul fast float %2108, %2066
  %2112 = fadd fast float %2109, %2062
  %2113 = fadd fast float %2110, %2063
  %2114 = fadd fast float %2111, %2064
  %2115 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2116 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2117 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2118 = fmul fast float %2115, %2115
  %2119 = fmul fast float %2116, %2116
  %2120 = fadd fast float %2119, %2118
  %2121 = fmul fast float %2117, %2117
  %2122 = fadd fast float %2120, %2121
  %2123 = call float @dx.op.unary.f32(i32 24, float %2122)  ; Sqrt(value)
  %2124 = fsub fast float 1.000000e+00, %2123
  %2125 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2126 = fmul fast float %2125, %2052
  %2127 = fmul fast float %2085, 2.000000e+00
  %2128 = fadd fast float %2105, %2085
  %2129 = call float @dx.op.binary.f32(i32 35, float %2128, float 0.000000e+00)  ; FMax(a,b)
  %2130 = call float @dx.op.binary.f32(i32 36, float %2129, float %2127)  ; FMin(a,b)
  %2131 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2130)  ; FMax(a,b)
  %2132 = fmul fast float %2054, 0x3FF7154760000000
  %2133 = fmul fast float %2132, %2131
  %2134 = call float @dx.op.unary.f32(i32 21, float %2133)  ; Exp(value)
  %2135 = fmul fast float %2126, %2134
  %2136 = fcmp fast oeq float %435, 0.000000e+00
  br i1 %2136, label %2142, label %2137, !dx.controlflow.hints !77

; <label>:2137                                    ; preds = %2039
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 3
  %2140 = fmul fast float %2139, %435
  %2141 = call float @dx.op.unary.f32(i32 23, float %2140)  ; Log(value)
  br label %2142

; <label>:2142                                    ; preds = %2137, %2039
  %2143 = phi float [ %2141, %2137 ], [ 0.000000e+00, %2039 ]
  %2144 = fcmp fast oeq float %2068, 0.000000e+00
  br i1 %2144, label %2166, label %2145, !dx.controlflow.hints !105

; <label>:2145                                    ; preds = %2142
  %2146 = fmul fast float %2074, %2072
  %2147 = fmul fast float %2075, %2072
  %2148 = fmul fast float %2076, %2072
  %2149 = fsub fast float %193, %2146
  %2150 = fsub fast float %194, %2147
  %2151 = fsub fast float %195, %2148
  %2152 = fmul fast float %2149, %2068
  %2153 = fmul fast float %2150, %2068
  %2154 = fmul fast float %2151, %2068
  %2155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %2152, float %2153, float %2154, float undef, i32 0, i32 0, i32 0, float %2143)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2156 = extractvalue %dx.types.ResRet.f32 %2155, 0
  %2157 = extractvalue %dx.types.ResRet.f32 %2155, 1
  %2158 = fdiv fast float 1.000000e+00, %2070
  %2159 = fmul fast float %2070, 2.000000e+00
  %2160 = fadd fast float %2159, -1.000000e+00
  %2161 = fadd fast float %2160, %2157
  %2162 = fadd fast float %2161, %2156
  %2163 = fmul fast float %2162, %2158
  %2164 = fadd fast float %2163, -1.000000e+00
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  br label %2166

; <label>:2166                                    ; preds = %2145, %2142
  %2167 = phi float [ %2165, %2145 ], [ 1.000000e+00, %2142 ]
  %2168 = fmul fast float %2135, %2167
  %2169 = fmul fast float %2168, %2056
  %2170 = fmul fast float %2168, %2057
  %2171 = fmul fast float %2168, %2058
  %2172 = fadd fast float %2169, %2041
  %2173 = fadd fast float %2170, %2042
  %2174 = fadd fast float %2171, %2043
  %2175 = fmul fast float %2168, %2060
  %2176 = fadd fast float %2175, %2044
  %2177 = fadd fast float %2168, %2045
  %2178 = icmp eq i32 %2040, %2049
  br i1 %2178, label %2179, label %2039, !llvm.loop !106

; <label>:2179                                    ; preds = %2166
  br label %2180

; <label>:2180                                    ; preds = %2179, %2024
  %2181 = phi float [ %2026, %2024 ], [ %2172, %2179 ]
  %2182 = phi float [ %2027, %2024 ], [ %2173, %2179 ]
  %2183 = phi float [ %2028, %2024 ], [ %2174, %2179 ]
  %2184 = phi float [ %2029, %2024 ], [ %2176, %2179 ]
  %2185 = phi float [ %2030, %2024 ], [ %2177, %2179 ]
  %2186 = add i32 %2025, 1
  %2187 = icmp ult i32 %2186, %2032
  br i1 %2187, label %2024, label %2188, !llvm.loop !107

; <label>:2188                                    ; preds = %2180
  br label %2189

; <label>:2189                                    ; preds = %2188, %2019, %2012
  %2190 = phi float [ %2013, %2012 ], [ %2013, %2019 ], [ %2181, %2188 ]
  %2191 = phi float [ %2014, %2012 ], [ %2014, %2019 ], [ %2182, %2188 ]
  %2192 = phi float [ %2015, %2012 ], [ %2015, %2019 ], [ %2183, %2188 ]
  %2193 = phi float [ %1214, %2012 ], [ %1214, %2019 ], [ %2184, %2188 ]
  %2194 = phi float [ %2016, %2012 ], [ %2016, %2019 ], [ %2185, %2188 ]
  %2195 = fcmp fast ogt float %2194, 0.000000e+00
  br i1 %2195, label %2196, label %3314, !dx.controlflow.hints !108

; <label>:2196                                    ; preds = %2189
  %2197 = fdiv fast float 1.000000e+00, %2194
  %2198 = fmul fast float %2197, %2190
  %2199 = fmul fast float %2197, %2191
  %2200 = fmul fast float %2197, %2192
  %2201 = fmul fast float %2197, %2193
  %2202 = fmul fast float %432, %431
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2206 = extractvalue %dx.types.CBufRet.f32 %2203, 2
  %2207 = fsub fast float %193, %2204
  %2208 = fsub fast float %194, %2205
  %2209 = fsub fast float %195, %2206
  %2210 = fmul fast float %361, %128
  %2211 = call float @dx.op.unary.f32(i32 21, float %2210)  ; Exp(value)
  %2212 = fmul fast float %2211, %360
  %2213 = fadd fast float %365, %2212
  %2214 = fmul fast float %135, 2.000000e+00
  %2215 = fmul fast float %2214, %357
  %2216 = fmul fast float %136, 2.000000e+00
  %2217 = fmul fast float %2216, %358
  %2218 = fsub fast float 1.000000e+00, %2215
  %2219 = fsub fast float 1.000000e+00, %2217
  %2220 = fmul fast float %374, %2218
  %2221 = fmul fast float %375, %2218
  %2222 = fmul fast float %376, %2218
  %2223 = fmul fast float %381, %2219
  %2224 = fmul fast float %382, %2219
  %2225 = fmul fast float %383, %2219
  %2226 = fadd fast float %2223, %2220
  %2227 = fadd fast float %2224, %2221
  %2228 = fadd fast float %2225, %2222
  %2229 = fadd fast float %2226, %391
  %2230 = fadd fast float %2227, %392
  %2231 = fadd fast float %2228, %393
  %2232 = fmul fast float %2229, %2213
  %2233 = fmul fast float %2230, %2213
  %2234 = fmul fast float %2231, %2213
  %2235 = fadd fast float %128, 1.000000e+00
  %2236 = fmul fast float %361, %2235
  %2237 = call float @dx.op.unary.f32(i32 21, float %2236)  ; Exp(value)
  %2238 = fsub fast float %2237, %2211
  %2239 = fmul fast float %360, %2238
  %2240 = fmul fast float %2229, %2239
  %2241 = fsub fast float %2237, %2211
  %2242 = fmul fast float %360, %2241
  %2243 = fmul fast float %2230, %2242
  %2244 = fsub fast float %2237, %2211
  %2245 = fmul fast float %360, %2244
  %2246 = fmul fast float %2231, %2245
  %2247 = call float @dx.op.dot3.f32(i32 55, float %2240, float %2243, float %2246, float %2240, float %2243, float %2246)  ; Dot3(ax,ay,az,bx,by,bz)
  %2248 = call float @dx.op.unary.f32(i32 25, float %2247)  ; Rsqrt(value)
  %2249 = fmul fast float %2248, %2247
  %2250 = fmul fast float %2240, %2248
  %2251 = fmul fast float %2243, %2248
  %2252 = fmul fast float %2246, %2248
  %2253 = fsub fast float %233, %2206
  %2254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.i32 %2254, 0
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %3285, label %2257, !dx.controlflow.hints !109

; <label>:2257                                    ; preds = %2196
  %2258 = add nsw i32 %2255, -1
  %2259 = call i32 @dx.op.binary.i32(i32 37, i32 %2258, i32 0)  ; IMax(a,b)
  br label %2260

; <label>:2260                                    ; preds = %3278, %2257
  %2261 = phi i32 [ 0, %2257 ], [ %3282, %3278 ]
  %2262 = phi float [ 0.000000e+00, %2257 ], [ %3279, %3278 ]
  %2263 = phi float [ 0.000000e+00, %2257 ], [ %3280, %3278 ]
  %2264 = phi float [ 0.000000e+00, %2257 ], [ %3281, %3278 ]
  %2265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.i32 %2265, 0
  %2267 = call i32 @dx.op.tertiary.i32(i32 49, i32 %352, i32 %2266, i32 %2261)  ; UMad(a,b,c)
  %2268 = shl i32 %2267, 2
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %3278, label %2272

; <label>:2272                                    ; preds = %2260
  br label %2273

; <label>:2273                                    ; preds = %2712, %2272
  %2274 = phi i32 [ %2283, %2712 ], [ %2270, %2272 ]
  %2275 = phi float [ %2713, %2712 ], [ %2262, %2272 ]
  %2276 = phi float [ %2714, %2712 ], [ %2263, %2272 ]
  %2277 = phi float [ %2715, %2712 ], [ %2264, %2272 ]
  %2278 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2274)  ; FirstbitLo(value)
  %2279 = shl i32 %2261, 5
  %2280 = add i32 %2278, %2279
  %2281 = and i32 %2278, 31
  %2282 = shl i32 1, %2281
  %2283 = xor i32 %2282, %2274
  %2284 = mul i32 %2280, 112
  %2285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = extractvalue %dx.types.ResRet.f32 %2285, 1
  %2288 = extractvalue %dx.types.ResRet.f32 %2285, 2
  %2289 = or i32 %2284, 12
  %2290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  %2292 = add i32 %2284, 16
  %2293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  %2295 = extractvalue %dx.types.ResRet.f32 %2293, 1
  %2296 = extractvalue %dx.types.ResRet.f32 %2293, 2
  %2297 = add i32 %2284, 28
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = add i32 %2284, 32
  %2301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.f32 %2301, 0
  %2303 = extractvalue %dx.types.ResRet.f32 %2301, 1
  %2304 = extractvalue %dx.types.ResRet.f32 %2301, 2
  %2305 = add i32 %2284, 44
  %2306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.f32 %2306, 0
  %2308 = add i32 %2284, 48
  %2309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.ResRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.ResRet.f32 %2309, 2
  %2313 = extractvalue %dx.types.ResRet.f32 %2309, 3
  %2314 = add i32 %2284, 64
  %2315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.f32 %2315, 0
  %2317 = extractvalue %dx.types.ResRet.f32 %2315, 1
  %2318 = extractvalue %dx.types.ResRet.f32 %2315, 2
  %2319 = extractvalue %dx.types.ResRet.f32 %2315, 3
  %2320 = add i32 %2284, 92
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 65535
  %2324 = uitofp i32 %2323 to float
  %2325 = lshr i32 %2322, 16
  %2326 = uitofp i32 %2325 to float
  %2327 = and i32 %2299, 65535
  %2328 = and i32 %2299, 50331648
  %2329 = icmp eq i32 %2328, 33554432
  %2330 = fdiv fast float 1.000000e+00, %2249
  br i1 %2329, label %2331, label %2523, !dx.controlflow.hints !110

; <label>:2331                                    ; preds = %2273
  %2332 = fsub fast float %2310, %2302
  %2333 = fsub fast float %2311, %2303
  %2334 = fsub fast float %2312, %2304
  %2335 = fmul fast float %2250, %2249
  %2336 = fmul fast float %2251, %2249
  %2337 = fmul fast float %2252, %2249
  %2338 = fadd fast float %2335, %2232
  %2339 = fadd fast float %2336, %2233
  %2340 = fadd fast float %2337, %2234
  %2341 = fmul fast float %2302, 2.000000e+00
  %2342 = fmul fast float %2303, 2.000000e+00
  %2343 = fmul fast float %2304, 2.000000e+00
  %2344 = call float @dx.op.dot3.f32(i32 55, float %2341, float %2342, float %2343, float %2341, float %2342, float %2343)  ; Dot3(ax,ay,az,bx,by,bz)
  %2345 = fdiv fast float %2341, %2344
  %2346 = fdiv fast float %2342, %2344
  %2347 = fdiv fast float %2343, %2344
  %2348 = fsub fast float %2232, %2332
  %2349 = fsub fast float %2233, %2333
  %2350 = fsub fast float %2234, %2334
  %2351 = call float @dx.op.dot3.f32(i32 55, float %2348, float %2349, float %2350, float %2341, float %2342, float %2343)  ; Dot3(ax,ay,az,bx,by,bz)
  %2352 = fmul fast float %2351, %2345
  %2353 = fmul fast float %2351, %2346
  %2354 = fmul fast float %2351, %2347
  %2355 = fsub fast float %2232, %2352
  %2356 = fsub fast float %2233, %2353
  %2357 = fsub fast float %2234, %2354
  %2358 = fsub fast float %2338, %2332
  %2359 = fsub fast float %2339, %2333
  %2360 = fsub fast float %2340, %2334
  %2361 = call float @dx.op.dot3.f32(i32 55, float %2358, float %2359, float %2360, float %2341, float %2342, float %2343)  ; Dot3(ax,ay,az,bx,by,bz)
  %2362 = fmul fast float %2361, %2345
  %2363 = fmul fast float %2361, %2346
  %2364 = fmul fast float %2361, %2347
  %2365 = fsub fast float %2338, %2362
  %2366 = fsub fast float %2339, %2363
  %2367 = fsub fast float %2340, %2364
  %2368 = fsub fast float %2365, %2355
  %2369 = fsub fast float %2366, %2356
  %2370 = fsub fast float %2367, %2357
  %2371 = fsub fast float %2332, %2355
  %2372 = fsub fast float %2333, %2356
  %2373 = fsub fast float %2334, %2357
  %2374 = call float @dx.op.dot3.f32(i32 55, float %2371, float %2372, float %2373, float %2368, float %2369, float %2370)  ; Dot3(ax,ay,az,bx,by,bz)
  %2375 = call float @dx.op.dot3.f32(i32 55, float %2368, float %2369, float %2370, float %2368, float %2369, float %2370)  ; Dot3(ax,ay,az,bx,by,bz)
  %2376 = fdiv fast float %2374, %2375
  %2377 = fcmp fast une float %2355, %2365
  %2378 = fcmp fast une float %2356, %2366
  %2379 = fcmp fast une float %2357, %2367
  %2380 = or i1 %2377, %2378
  %2381 = or i1 %2379, %2380
  %2382 = select i1 %2381, float %2376, float 0.000000e+00
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  %2384 = fmul fast float %2383, %2335
  %2385 = fmul fast float %2383, %2336
  %2386 = fmul fast float %2383, %2337
  %2387 = fadd fast float %2348, %2384
  %2388 = fadd fast float %2349, %2385
  %2389 = fadd fast float %2350, %2386
  %2390 = call float @dx.op.dot3.f32(i32 55, float %2387, float %2388, float %2389, float %2341, float %2342, float %2343)  ; Dot3(ax,ay,az,bx,by,bz)
  %2391 = fdiv fast float %2390, %2344
  %2392 = call float @dx.op.unary.f32(i32 7, float %2391)  ; Saturate(value)
  %2393 = fmul fast float %2341, %2392
  %2394 = fmul fast float %2342, %2392
  %2395 = fmul fast float %2343, %2392
  %2396 = fadd fast float %2393, %2332
  %2397 = fadd fast float %2394, %2333
  %2398 = fadd fast float %2395, %2334
  %2399 = fmul fast float %2318, %2294
  %2400 = fmul fast float %2318, %2295
  %2401 = fmul fast float %2318, %2296
  %2402 = fadd fast float %2396, %2399
  %2403 = fadd fast float %2397, %2400
  %2404 = fadd fast float %2398, %2401
  %2405 = fsub fast float -0.000000e+00, %2317
  %2406 = fdiv fast float %2405, %2316
  %2407 = fmul fast float %2406, %2406
  %2408 = call float @dx.op.dot3.f32(i32 55, float %2250, float %2251, float %2252, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2409 = fsub fast float %2232, %2402
  %2410 = fsub fast float %2233, %2403
  %2411 = fsub fast float %2234, %2404
  %2412 = call float @dx.op.dot3.f32(i32 55, float %2409, float %2410, float %2411, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2413 = fsub fast float %2402, %2232
  %2414 = fsub fast float %2403, %2233
  %2415 = fsub fast float %2404, %2234
  %2416 = fmul fast float %2408, %2408
  %2417 = fsub fast float %2416, %2407
  %2418 = fmul fast float %2412, %2408
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2413, float %2414, float %2415, float %2250, float %2251, float %2252)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = fmul fast float %2419, %2407
  %2421 = fadd fast float %2420, %2418
  %2422 = fmul fast float %2421, 2.000000e+00
  %2423 = fmul fast float %2412, %2412
  %2424 = call float @dx.op.dot3.f32(i32 55, float %2413, float %2414, float %2415, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %2425 = fmul fast float %2424, %2407
  %2426 = fsub fast float %2423, %2425
  %2427 = fmul fast float %2422, %2422
  %2428 = fmul fast float %2417, 4.000000e+00
  %2429 = fmul fast float %2428, %2426
  %2430 = fsub fast float %2427, %2429
  %2431 = fcmp fast ogt float %2430, 0.000000e+00
  br i1 %2431, label %2432, label %2523, !dx.controlflow.hints !111

; <label>:2432                                    ; preds = %2331
  %2433 = call float @dx.op.unary.f32(i32 24, float %2430)  ; Sqrt(value)
  %2434 = fdiv fast float 5.000000e-01, %2417
  %2435 = fsub fast float -0.000000e+00, %2422
  %2436 = fsub fast float %2435, %2433
  %2437 = fmul fast float %2436, %2434
  %2438 = fsub fast float %2433, %2422
  %2439 = fmul fast float %2438, %2434
  %2440 = call float @dx.op.binary.f32(i32 35, float %2437, float %2439)  ; FMax(a,b)
  %2441 = call float @dx.op.binary.f32(i32 36, float %2437, float %2439)  ; FMin(a,b)
  %2442 = fsub fast float %2396, %2232
  %2443 = fsub fast float %2397, %2233
  %2444 = fsub fast float %2398, %2234
  %2445 = call float @dx.op.dot3.f32(i32 55, float %2442, float %2443, float %2444, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2446 = fdiv fast float %2445, %2408
  %2447 = fcmp fast ogt float %2408, 0.000000e+00
  br i1 %2447, label %2448, label %2451, !dx.controlflow.hints !112

; <label>:2448                                    ; preds = %2432
  %2449 = call float @dx.op.binary.f32(i32 36, float %2441, float %2446)  ; FMin(a,b)
  %2450 = call float @dx.op.binary.f32(i32 36, float %2440, float %2446)  ; FMin(a,b)
  br label %2454

; <label>:2451                                    ; preds = %2432
  %2452 = call float @dx.op.binary.f32(i32 35, float %2441, float %2446)  ; FMax(a,b)
  %2453 = call float @dx.op.binary.f32(i32 35, float %2440, float %2446)  ; FMax(a,b)
  br label %2454

; <label>:2454                                    ; preds = %2451, %2448
  %2455 = phi float [ %2449, %2448 ], [ %2452, %2451 ]
  %2456 = phi float [ %2450, %2448 ], [ %2453, %2451 ]
  %2457 = fcmp fast oge float %2455, 0.000000e+00
  %2458 = fcmp fast olt float %2455, %2249
  %2459 = and i1 %2457, %2458
  %2460 = fcmp fast ogt float %2456, 0.000000e+00
  %2461 = fcmp fast ole float %2456, %2249
  %2462 = and i1 %2460, %2461
  %2463 = or i1 %2459, %2462
  br i1 %2463, label %2464, label %2523, !dx.controlflow.hints !113

; <label>:2464                                    ; preds = %2454
  %2465 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2455)  ; FMax(a,b)
  %2466 = call float @dx.op.binary.f32(i32 36, float %2249, float %2456)  ; FMin(a,b)
  br i1 %2447, label %2467, label %2489, !dx.controlflow.hints !114

; <label>:2467                                    ; preds = %2464
  %2468 = fmul fast float %2466, %2250
  %2469 = fmul fast float %2466, %2251
  %2470 = fmul fast float %2466, %2252
  %2471 = fsub fast float %2413, %2468
  %2472 = fsub fast float %2414, %2469
  %2473 = fsub fast float %2415, %2470
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2472, float %2473, float %2471, float %2472, float %2473)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = call float @dx.op.unary.f32(i32 25, float %2474)  ; Rsqrt(value)
  %2476 = fmul fast float %2475, %2471
  %2477 = fmul fast float %2475, %2472
  %2478 = fmul fast float %2475, %2473
  %2479 = call float @dx.op.dot3.f32(i32 55, float %2476, float %2477, float %2478, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2480 = fmul fast float %2479, %2316
  %2481 = fadd fast float %2480, %2317
  %2482 = fcmp fast olt float %2481, 0xBF1A36E2E0000000
  %2483 = select i1 %2482, float 0.000000e+00, float %2465
  %2484 = select i1 %2482, float %2465, float %2466
  %2485 = fsub fast float %2483, %2484
  %2486 = call float @dx.op.unary.f32(i32 6, float %2485)  ; FAbs(value)
  %2487 = fcmp fast olt float %2486, 0x3F1A36E2E0000000
  br i1 %2487, label %2488, label %2511, !dx.controlflow.hints !115

; <label>:2488                                    ; preds = %2467
  br label %2511

; <label>:2489                                    ; preds = %2464
  %2490 = fmul fast float %2465, %2250
  %2491 = fmul fast float %2465, %2251
  %2492 = fmul fast float %2465, %2252
  %2493 = fsub fast float %2413, %2490
  %2494 = fsub fast float %2414, %2491
  %2495 = fsub fast float %2415, %2492
  %2496 = call float @dx.op.dot3.f32(i32 55, float %2493, float %2494, float %2495, float %2493, float %2494, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %2497 = call float @dx.op.unary.f32(i32 25, float %2496)  ; Rsqrt(value)
  %2498 = fmul fast float %2497, %2493
  %2499 = fmul fast float %2497, %2494
  %2500 = fmul fast float %2497, %2495
  %2501 = call float @dx.op.dot3.f32(i32 55, float %2498, float %2499, float %2500, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2502 = fmul fast float %2501, %2316
  %2503 = fadd fast float %2502, %2317
  %2504 = fcmp fast olt float %2503, 0xBF1A36E2E0000000
  %2505 = select i1 %2504, float %2466, float %2465
  %2506 = select i1 %2504, float %2249, float %2466
  %2507 = fsub fast float %2505, %2506
  %2508 = call float @dx.op.unary.f32(i32 6, float %2507)  ; FAbs(value)
  %2509 = fcmp fast olt float %2508, 0x3F1A36E2E0000000
  br i1 %2509, label %2510, label %2511, !dx.controlflow.hints !116

; <label>:2510                                    ; preds = %2489
  br label %2511

; <label>:2511                                    ; preds = %2510, %2489, %2488, %2467
  %2512 = phi float [ 0.000000e+00, %2488 ], [ %2483, %2467 ], [ %2505, %2510 ], [ %2505, %2489 ]
  %2513 = phi float [ %2484, %2488 ], [ %2484, %2467 ], [ %2249, %2510 ], [ %2506, %2489 ]
  %2514 = fmul fast float %2512, %2250
  %2515 = fmul fast float %2512, %2251
  %2516 = fmul fast float %2512, %2252
  %2517 = fadd fast float %2514, %2232
  %2518 = fadd fast float %2515, %2233
  %2519 = fadd fast float %2516, %2234
  %2520 = fsub fast float %2513, %2512
  %2521 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2520)  ; FMax(a,b)
  %2522 = fmul fast float %2521, %2330
  br label %2523

; <label>:2523                                    ; preds = %2511, %2454, %2331, %2273
  %2524 = phi float [ %2402, %2511 ], [ %2402, %2454 ], [ %2402, %2331 ], [ %2310, %2273 ]
  %2525 = phi float [ %2403, %2511 ], [ %2403, %2454 ], [ %2403, %2331 ], [ %2311, %2273 ]
  %2526 = phi float [ %2404, %2511 ], [ %2404, %2454 ], [ %2404, %2331 ], [ %2312, %2273 ]
  %2527 = phi float [ %2517, %2511 ], [ %2232, %2454 ], [ %2232, %2331 ], [ %2232, %2273 ]
  %2528 = phi float [ %2518, %2511 ], [ %2233, %2454 ], [ %2233, %2331 ], [ %2233, %2273 ]
  %2529 = phi float [ %2519, %2511 ], [ %2234, %2454 ], [ %2234, %2331 ], [ %2234, %2273 ]
  %2530 = phi float [ %2521, %2511 ], [ %2249, %2454 ], [ %2249, %2331 ], [ %2249, %2273 ]
  %2531 = phi float [ %2522, %2511 ], [ 1.000000e+00, %2454 ], [ 1.000000e+00, %2331 ], [ 1.000000e+00, %2273 ]
  %2532 = fsub fast float %2524, %2527
  %2533 = fsub fast float %2525, %2528
  %2534 = fsub fast float %2526, %2529
  %2535 = call float @dx.op.dot3.f32(i32 55, float %2532, float %2533, float %2534, float %2250, float %2251, float %2252)  ; Dot3(ax,ay,az,bx,by,bz)
  %2536 = call float @dx.op.binary.f32(i32 35, float %2535, float 0.000000e+00)  ; FMax(a,b)
  %2537 = call float @dx.op.binary.f32(i32 36, float %2536, float %2530)  ; FMin(a,b)
  %2538 = fmul fast float %2537, %2250
  %2539 = fmul fast float %2537, %2251
  %2540 = fmul fast float %2537, %2252
  %2541 = fsub fast float %2527, %2524
  %2542 = fadd fast float %2541, %2538
  %2543 = fsub fast float %2528, %2525
  %2544 = fadd fast float %2543, %2539
  %2545 = fsub fast float %2529, %2526
  %2546 = fadd fast float %2545, %2540
  %2547 = fmul fast float %2542, %2542
  %2548 = fmul fast float %2544, %2544
  %2549 = fadd fast float %2547, %2548
  %2550 = fmul fast float %2546, %2546
  %2551 = fadd fast float %2549, %2550
  %2552 = call float @dx.op.unary.f32(i32 24, float %2551)  ; Sqrt(value)
  %2553 = fsub fast float -0.000000e+00, %2537
  %2554 = call float @dx.op.unary.f32(i32 6, float %2553)  ; FAbs(value)
  %2555 = fadd fast float %2554, 0x3DDB7CDFE0000000
  %2556 = fcmp fast oge float %2552, 0.000000e+00
  %2557 = fsub fast float -0.000000e+00, %2555
  %2558 = select i1 %2556, float %2557, float %2555
  %2559 = fadd fast float %2558, %2552
  %2560 = fsub fast float -0.000000e+00, %2552
  %2561 = select i1 %2556, float %2552, float %2560
  %2562 = fadd fast float %2555, %2561
  %2563 = fdiv fast float %2559, %2562
  %2564 = select i1 %2556, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %2565 = fmul fast float %2563, %2563
  %2566 = fmul fast float %2565, 0x3FC9205BC0000000
  %2567 = fadd fast float %2566, 0xBFEF6A1620000000
  %2568 = fmul fast float %2567, %2563
  %2569 = fadd fast float %2568, %2564
  %2570 = fcmp ole float %2537, -0.000000e+00
  %2571 = fsub fast float -0.000000e+00, %2569
  %2572 = select i1 %2570, float %2569, float %2571
  %2573 = fsub fast float %2530, %2537
  %2574 = call float @dx.op.unary.f32(i32 6, float %2573)  ; FAbs(value)
  %2575 = fadd fast float %2574, 0x3DDB7CDFE0000000
  %2576 = fsub fast float -0.000000e+00, %2575
  %2577 = select i1 %2556, float %2576, float %2575
  %2578 = fadd fast float %2577, %2552
  %2579 = fadd fast float %2575, %2561
  %2580 = fdiv fast float %2578, %2579
  %2581 = fmul fast float %2580, %2580
  %2582 = fmul fast float %2581, 0x3FC9205BC0000000
  %2583 = fadd fast float %2582, 0xBFEF6A1620000000
  %2584 = fmul fast float %2583, %2580
  %2585 = fadd fast float %2584, %2564
  %2586 = fcmp fast oge float %2573, 0.000000e+00
  %2587 = fsub fast float -0.000000e+00, %2585
  %2588 = select i1 %2586, float %2585, float %2587
  %2589 = fsub fast float %2588, %2572
  %2590 = fmul fast float %2589, %117
  %2591 = fadd fast float %2590, %2572
  %2592 = call float @dx.op.unary.f32(i32 14, float %2591)  ; Tan(value)
  %2593 = fmul fast float %2592, %2552
  %2594 = fadd fast float %2593, %2537
  %2595 = fmul fast float %2552, %2552
  %2596 = fmul fast float %2593, %2593
  %2597 = fadd fast float %2596, %2595
  %2598 = fmul fast float %2589, %2597
  %2599 = fdiv fast float %2552, %2598
  %2600 = fdiv fast float 1.000000e+00, %2599
  %2601 = fmul fast float %2531, %2330
  %2602 = fmul fast float %2601, %2600
  %2603 = fmul fast float %2594, %2250
  %2604 = fmul fast float %2594, %2251
  %2605 = fmul fast float %2594, %2252
  %2606 = fadd fast float %2603, %2527
  %2607 = fadd fast float %2604, %2528
  %2608 = fadd fast float %2605, %2529
  %2609 = call float @dx.op.dot3.f32(i32 55, float %2302, float %2303, float %2304, float %2302, float %2303, float %2304)  ; Dot3(ax,ay,az,bx,by,bz)
  %2610 = fsub fast float %2606, %2310
  %2611 = fsub fast float %2607, %2311
  %2612 = fsub fast float %2608, %2312
  %2613 = call float @dx.op.dot3.f32(i32 55, float %2610, float %2611, float %2612, float %2302, float %2303, float %2304)  ; Dot3(ax,ay,az,bx,by,bz)
  %2614 = fdiv fast float %2613, %2609
  %2615 = call float @dx.op.binary.f32(i32 35, float %2614, float -1.000000e+00)  ; FMax(a,b)
  %2616 = call float @dx.op.binary.f32(i32 36, float %2615, float 1.000000e+00)  ; FMin(a,b)
  %2617 = fmul fast float %2616, %2302
  %2618 = fmul fast float %2616, %2303
  %2619 = fmul fast float %2616, %2304
  %2620 = fadd fast float %2617, %2310
  %2621 = fadd fast float %2618, %2311
  %2622 = fadd fast float %2619, %2312
  %2623 = fsub fast float %2620, %2606
  %2624 = fsub fast float %2621, %2607
  %2625 = fsub fast float %2622, %2608
  %2626 = call float @dx.op.dot3.f32(i32 55, float %2623, float %2624, float %2625, float %2623, float %2624, float %2625)  ; Dot3(ax,ay,az,bx,by,bz)
  %2627 = call float @dx.op.unary.f32(i32 24, float %2626)  ; Sqrt(value)
  %2628 = fdiv fast float 1.000000e+00, %2627
  %2629 = fmul fast float %2623, %2628
  %2630 = fmul fast float %2624, %2628
  %2631 = fmul fast float %2625, %2628
  %2632 = fadd fast float %2627, %2291
  %2633 = fdiv fast float 1.000000e+00, %2632
  %2634 = fmul float %2307, %2633
  %2635 = fmul float %2634, %2634
  %2636 = call float @dx.op.unary.f32(i32 7, float %2635)  ; Saturate(value)
  br i1 %2329, label %2637, label %2661, !dx.controlflow.hints !117

; <label>:2637                                    ; preds = %2523
  %2638 = fmul fast float %2318, %2294
  %2639 = fmul fast float %2318, %2295
  %2640 = fmul fast float %2318, %2296
  %2641 = fsub fast float %2638, %2606
  %2642 = fadd fast float %2641, %2620
  %2643 = fsub fast float %2639, %2607
  %2644 = fadd fast float %2643, %2621
  %2645 = fsub fast float %2640, %2608
  %2646 = fadd fast float %2645, %2622
  %2647 = call float @dx.op.dot3.f32(i32 55, float %2642, float %2644, float %2646, float %2642, float %2644, float %2646)  ; Dot3(ax,ay,az,bx,by,bz)
  %2648 = call float @dx.op.unary.f32(i32 25, float %2647)  ; Rsqrt(value)
  %2649 = fmul fast float %2648, %2642
  %2650 = fmul fast float %2648, %2644
  %2651 = fmul fast float %2648, %2646
  %2652 = fsub fast float %2606, %2620
  %2653 = fsub fast float %2607, %2621
  %2654 = fsub fast float %2608, %2622
  %2655 = fsub fast float -0.000000e+00, %2652
  %2656 = fsub fast float -0.000000e+00, %2653
  %2657 = fsub fast float -0.000000e+00, %2654
  %2658 = call float @dx.op.dot3.f32(i32 55, float %2655, float %2656, float %2657, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2659 = fcmp fast ogt float %2658, 0.000000e+00
  %2660 = uitofp i1 %2659 to float
  br label %2661

; <label>:2661                                    ; preds = %2637, %2523
  %2662 = phi float [ %2660, %2637 ], [ 1.000000e+00, %2523 ]
  %2663 = phi float [ %2649, %2637 ], [ %2629, %2523 ]
  %2664 = phi float [ %2650, %2637 ], [ %2630, %2523 ]
  %2665 = phi float [ %2651, %2637 ], [ %2631, %2523 ]
  %2666 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2663, float %2664, float %2665)  ; Dot3(ax,ay,az,bx,by,bz)
  %2667 = fmul fast float %2666, %2666
  %2668 = call float @dx.op.unary.f32(i32 7, float %2667)  ; Saturate(value)
  %2669 = fsub fast float 1.000000e+00, %2668
  %2670 = fmul fast float %2669, 5.000000e-01
  %2671 = fcmp fast ogt float %2666, 0.000000e+00
  %2672 = fsub fast float 1.000000e+00, %2670
  %2673 = select i1 %2671, float %2670, float %2672
  %2674 = fmul fast float %2673, %2326
  %2675 = fadd fast float %2674, %2324
  %2676 = fmul fast float %2675, 0x3EF0001000000000
  %2677 = fsub fast float %2620, %425
  %2678 = fsub fast float %2621, %426
  %2679 = fsub fast float %2622, %427
  %2680 = call float @dx.op.dot3.f32(i32 55, float %2677, float %2678, float %2679, float %2677, float %2678, float %2679)  ; Dot3(ax,ay,az,bx,by,bz)
  %2681 = fmul fast float %2202, %2202
  %2682 = fsub fast float %2680, %2681
  %2683 = fdiv fast float %2682, %2680
  %2684 = call float @dx.op.unary.f32(i32 24, float %2683)  ; Sqrt(value)
  %2685 = fsub fast float 1.000000e+00, %2684
  %2686 = fcmp fast olt float %2680, %2681
  %2687 = fmul fast float %2685, 2.560000e+02
  %2688 = select i1 %2686, float 2.560000e+02, float %2687
  %2689 = call float @dx.op.unary.f32(i32 23, float %2688)  ; Log(value)
  %2690 = call float @dx.op.binary.f32(i32 36, float %2689, float 7.000000e+00)  ; FMin(a,b)
  %2691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %36, float %2676, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %2690)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2692 = extractvalue %dx.types.ResRet.f32 %2691, 0
  %2693 = fmul fast float %2666, %2316
  %2694 = fadd fast float %2693, %2317
  %2695 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2696 = select i1 %2329, float 1.000000e+00, float %2695
  %2697 = select i1 %2329, float %2695, float 1.000000e+00
  %2698 = fmul fast float %2627, %2313
  %2699 = fsub fast float 1.000000e+00, %2698
  %2700 = fmul fast float %2699, %2319
  %2701 = call float @dx.op.unary.f32(i32 7, float %2700)  ; Saturate(value)
  %2702 = fmul fast float %2701, %2697
  %2703 = fmul fast float %2702, 2.000000e+00
  %2704 = fsub fast float 3.000000e+00, %2703
  %2705 = fmul fast float %2692, %2662
  %2706 = fmul fast float %2702, %2702
  %2707 = fmul fast float %2706, %2705
  %2708 = fmul fast float %2707, %2704
  %2709 = call float @dx.op.binary.f32(i32 36, float %2708, float %2708)  ; FMin(a,b)
  %2710 = call float @dx.op.binary.f32(i32 36, float %2708, float %2709)  ; FMin(a,b)
  %2711 = fcmp fast ogt float %2710, 0.000000e+00
  br i1 %2711, label %2717, label %2712, !dx.controlflow.hints !118

; <label>:2712                                    ; preds = %3241, %2805, %2661
  %2713 = phi float [ %3274, %3241 ], [ %2275, %2805 ], [ %2275, %2661 ]
  %2714 = phi float [ %3275, %3241 ], [ %2276, %2805 ], [ %2276, %2661 ]
  %2715 = phi float [ %3276, %3241 ], [ %2277, %2805 ], [ %2277, %2661 ]
  %2716 = icmp eq i32 %2274, %2282
  br i1 %2716, label %3277, label %2273

; <label>:2717                                    ; preds = %2661
  %2718 = icmp eq i32 %2327, 255
  br i1 %2718, label %2805, label %2719, !dx.controlflow.hints !119

; <label>:2719                                    ; preds = %2717
  %2720 = mul nuw nsw i32 %2327, 176
  %2721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.ResRet.f32 %2721, 1
  %2724 = extractvalue %dx.types.ResRet.f32 %2721, 2
  %2725 = extractvalue %dx.types.ResRet.f32 %2721, 3
  %2726 = add nuw nsw i32 %2720, 16
  %2727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.ResRet.f32 %2727, 1
  %2730 = add nuw nsw i32 %2720, 32
  %2731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.ResRet.f32 %2731, 2
  %2734 = add nuw nsw i32 %2720, 48
  %2735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.ResRet.f32 %2735, 1
  %2738 = extractvalue %dx.types.ResRet.f32 %2735, 2
  %2739 = extractvalue %dx.types.ResRet.f32 %2735, 3
  %2740 = add nuw nsw i32 %2720, 64
  %2741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.ResRet.f32 %2741, 1
  %2744 = extractvalue %dx.types.ResRet.f32 %2741, 2
  %2745 = extractvalue %dx.types.ResRet.f32 %2741, 3
  %2746 = add nuw nsw i32 %2720, 80
  %2747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.ResRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.ResRet.f32 %2747, 2
  %2751 = extractvalue %dx.types.ResRet.f32 %2747, 3
  %2752 = add nuw nsw i32 %2720, 96
  %2753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.ResRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.ResRet.f32 %2753, 2
  %2757 = extractvalue %dx.types.ResRet.f32 %2753, 3
  %2758 = bitcast float %2729 to i32
  %2759 = fmul fast float %2733, %2629
  %2760 = fmul fast float %2733, %2630
  %2761 = fmul fast float %2733, %2631
  %2762 = fsub fast float %2606, %2759
  %2763 = fsub fast float %2607, %2760
  %2764 = fsub fast float %2608, %2761
  %2765 = fmul fast float %2762, %2736
  %2766 = call float @dx.op.tertiary.f32(i32 46, float %2763, float %2742, float %2765)  ; FMad(a,b,c)
  %2767 = call float @dx.op.tertiary.f32(i32 46, float %2764, float %2748, float %2766)  ; FMad(a,b,c)
  %2768 = fadd fast float %2767, %2754
  %2769 = fmul fast float %2762, %2737
  %2770 = call float @dx.op.tertiary.f32(i32 46, float %2763, float %2743, float %2769)  ; FMad(a,b,c)
  %2771 = call float @dx.op.tertiary.f32(i32 46, float %2764, float %2749, float %2770)  ; FMad(a,b,c)
  %2772 = fadd fast float %2771, %2755
  %2773 = fmul fast float %2762, %2738
  %2774 = call float @dx.op.tertiary.f32(i32 46, float %2763, float %2744, float %2773)  ; FMad(a,b,c)
  %2775 = call float @dx.op.tertiary.f32(i32 46, float %2764, float %2750, float %2774)  ; FMad(a,b,c)
  %2776 = fadd fast float %2775, %2756
  %2777 = fmul fast float %2762, %2739
  %2778 = call float @dx.op.tertiary.f32(i32 46, float %2763, float %2745, float %2777)  ; FMad(a,b,c)
  %2779 = call float @dx.op.tertiary.f32(i32 46, float %2764, float %2751, float %2778)  ; FMad(a,b,c)
  %2780 = fadd fast float %2779, %2757
  %2781 = fdiv fast float %2768, %2780
  %2782 = fdiv fast float %2772, %2780
  %2783 = fdiv fast float %2776, %2780
  %2784 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %2783)  ; FMax(a,b)
  %2785 = fmul fast float %2724, 5.000000e-01
  %2786 = call float @dx.op.tertiary.f32(i32 46, float %2785, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %2787 = fadd fast float %2786, %2781
  %2788 = fadd fast float %2782, %2785
  %2789 = fmul fast float %2787, %2728
  %2790 = fmul fast float %2788, %2728
  %2791 = call float @dx.op.binary.f32(i32 35, float %2789, float %2724)  ; FMax(a,b)
  %2792 = call float @dx.op.binary.f32(i32 35, float %2790, float %2724)  ; FMax(a,b)
  %2793 = call float @dx.op.binary.f32(i32 36, float %2791, float %2725)  ; FMin(a,b)
  %2794 = call float @dx.op.binary.f32(i32 36, float %2792, float %2725)  ; FMin(a,b)
  %2795 = fadd fast float %2793, %2722
  %2796 = fadd fast float %2794, %2723
  %2797 = uitofp i32 %2758 to float
  %2798 = fadd fast float %2784, %2732
  %2799 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %39, float %2795, float %2796, float %2797, float undef, i32 0, i32 0, i32 undef, float %2798)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2800 = extractvalue %dx.types.ResRet.f32 %2799, 0
  %2801 = fadd fast float %2800, -1.000000e+00
  %2802 = fmul fast float %2801, %2696
  %2803 = fadd fast float %2802, 1.000000e+00
  %2804 = fmul fast float %2803, %2708
  br label %2805

; <label>:2805                                    ; preds = %2719, %2717
  %2806 = phi float [ %2804, %2719 ], [ %2708, %2717 ]
  %2807 = call float @dx.op.binary.f32(i32 36, float %2806, float %2806)  ; FMin(a,b)
  %2808 = call float @dx.op.binary.f32(i32 36, float %2806, float %2807)  ; FMin(a,b)
  %2809 = fcmp fast ogt float %2808, 0.000000e+00
  br i1 %2809, label %2810, label %2712, !dx.controlflow.hints !120

; <label>:2810                                    ; preds = %2805
  br i1 %244, label %2811, label %3241, !dx.controlflow.hints !121

; <label>:2811                                    ; preds = %2810
  %2812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.i32 %2812, 0
  %2814 = and i32 %2813, 64
  %2815 = icmp ne i32 %2814, 0
  %2816 = fsub fast float %2312, %2253
  %2817 = fcmp fast ogt float %2816, 0.000000e+00
  %2818 = fsub fast float %195, %233
  %2819 = fcmp fast ogt float %2818, 0.000000e+00
  %2820 = xor i1 %2819, %2817
  %2821 = fsub fast float %2253, %2312
  %2822 = fmul fast float %2821, 2.000000e+00
  %2823 = fadd fast float %2822, %2312
  %2824 = select i1 %2820, float %2312, float %2823
  %2825 = fsub fast float %2310, %2207
  %2826 = fsub fast float %2311, %2208
  %2827 = fsub fast float %2824, %2209
  %2828 = call float @dx.op.dot3.f32(i32 55, float %2825, float %2826, float %2827, float %2825, float %2826, float %2827)  ; Dot3(ax,ay,az,bx,by,bz)
  %2829 = call float @dx.op.unary.f32(i32 25, float %2828)  ; Rsqrt(value)
  %2830 = fmul fast float %2829, %2825
  %2831 = fmul fast float %2829, %2826
  %2832 = fmul fast float %2829, %2827
  %2833 = fsub fast float %233, %195
  %2834 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2835 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2830, float %2831, float %2832)  ; Dot3(ax,ay,az,bx,by,bz)
  %2836 = fdiv fast float 1.000000e+00, %2835
  %2837 = fmul fast float %2836, %2834
  %2838 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2818, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2839 = fcmp fast ogt float %2838, 0.000000e+00
  %2840 = fcmp fast olt float %2838, 0.000000e+00
  %2841 = zext i1 %2839 to i32
  %2842 = zext i1 %2840 to i32
  %2843 = sub nsw i32 %2841, %2842
  %2844 = sitofp i32 %2843 to float
  %2845 = fsub fast float %2824, %2253
  %2846 = call float @dx.op.dot3.f32(i32 55, float %2825, float %2826, float %2845, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2847 = fcmp fast ogt float %2846, 0.000000e+00
  %2848 = fcmp fast olt float %2846, 0.000000e+00
  %2849 = zext i1 %2847 to i32
  %2850 = zext i1 %2848 to i32
  %2851 = sub nsw i32 %2849, %2850
  %2852 = sitofp i32 %2851 to float
  %2853 = fcmp fast une float %2844, %2852
  br i1 %2853, label %2854, label %2864, !dx.controlflow.hints !122

; <label>:2854                                    ; preds = %2811
  %2855 = fmul fast float %2837, %2832
  %2856 = fmul fast float %2837, %2831
  %2857 = fmul fast float %2837, %2830
  %2858 = fmul fast float %2857, %2857
  %2859 = fmul fast float %2856, %2856
  %2860 = fadd fast float %2858, %2859
  %2861 = fmul fast float %2855, %2855
  %2862 = fadd fast float %2860, %2861
  %2863 = call float @dx.op.unary.f32(i32 24, float %2862)  ; Sqrt(value)
  br label %2876

; <label>:2864                                    ; preds = %2811
  %2865 = icmp slt i32 %2843, 0
  br i1 %2865, label %2866, label %2876, !dx.controlflow.hints !123

; <label>:2866                                    ; preds = %2864
  %2867 = fsub fast float %2207, %2310
  %2868 = fsub fast float %2208, %2311
  %2869 = fsub fast float %2209, %2824
  %2870 = fmul fast float %2867, %2867
  %2871 = fmul fast float %2868, %2868
  %2872 = fadd fast float %2870, %2871
  %2873 = fmul fast float %2869, %2869
  %2874 = fadd fast float %2872, %2873
  %2875 = call float @dx.op.unary.f32(i32 24, float %2874)  ; Sqrt(value)
  br label %2876

; <label>:2876                                    ; preds = %2866, %2864, %2854
  %2877 = phi float [ %2863, %2854 ], [ %2875, %2866 ], [ 0.000000e+00, %2864 ]
  %2878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.i32 %2878, 1
  %2880 = icmp ne i32 %2879, 0
  %2881 = and i1 %2820, %2880
  %2882 = call float @dx.op.dot3.f32(i32 55, float %2830, float %2831, float %2832, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2883 = fmul fast float %2882, %2882
  %2884 = fsub fast float 1.000000e+00, %2883
  %2885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2886 = extractvalue %dx.types.CBufRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.CBufRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.CBufRet.f32 %2885, 2
  %2889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2890 = extractvalue %dx.types.CBufRet.f32 %2889, 0
  %2891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2892 = extractvalue %dx.types.CBufRet.f32 %2891, 0
  %2893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2894 = extractvalue %dx.types.CBufRet.f32 %2893, 0
  %2895 = extractvalue %dx.types.CBufRet.f32 %2889, 1
  %2896 = extractvalue %dx.types.CBufRet.f32 %2891, 1
  %2897 = extractvalue %dx.types.CBufRet.f32 %2893, 1
  %2898 = extractvalue %dx.types.CBufRet.f32 %2889, 3
  %2899 = extractvalue %dx.types.CBufRet.f32 %2891, 3
  %2900 = extractvalue %dx.types.CBufRet.f32 %2893, 3
  %2901 = fadd fast float %2886, %2207
  %2902 = fadd fast float %2887, %2208
  %2903 = fadd fast float %2888, %2209
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.CBufRet.f32 %2904, 2
  %2908 = extractvalue %dx.types.CBufRet.f32 %2904, 3
  br i1 %2881, label %2909, label %3102, !dx.controlflow.hints !124

; <label>:2909                                    ; preds = %2876
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 0
  %2912 = fmul fast float %2911, %2911
  %2913 = fmul fast float %2912, %2884
  %2914 = fsub fast float 1.000000e+00, %2913
  %2915 = fcmp fast oge float %2914, 0.000000e+00
  %2916 = fmul fast float %2911, %2830
  %2917 = fmul fast float %2911, %2831
  %2918 = fmul fast float %2911, %2832
  %2919 = call float @dx.op.unary.f32(i32 24, float %2914)  ; Sqrt(value)
  %2920 = fmul fast float %2911, %2882
  %2921 = fsub fast float -0.000000e+00, %2919
  %2922 = fsub fast float %2921, %2920
  %2923 = fadd fast float %2922, %2918
  %2924 = select i1 %2915, float %2916, float 0.000000e+00
  %2925 = select i1 %2915, float %2917, float 0.000000e+00
  %2926 = select i1 %2915, float %2923, float 0.000000e+00
  %2927 = fmul fast float %2924, %2877
  %2928 = fmul fast float %2925, %2877
  %2929 = fmul fast float %2926, %2877
  %2930 = fadd fast float %2901, %2927
  %2931 = fadd fast float %2930, %2898
  %2932 = fadd fast float %2902, %2928
  %2933 = fadd fast float %2932, %2899
  %2934 = fadd fast float %2903, %2929
  %2935 = fadd fast float %2934, %2900
  %2936 = fmul fast float %2931, %2890
  %2937 = call float @dx.op.tertiary.f32(i32 46, float %2933, float %2892, float %2936)  ; FMad(a,b,c)
  %2938 = call float @dx.op.tertiary.f32(i32 46, float %2935, float %2894, float %2937)  ; FMad(a,b,c)
  %2939 = fmul fast float %2931, %2895
  %2940 = call float @dx.op.tertiary.f32(i32 46, float %2933, float %2896, float %2939)  ; FMad(a,b,c)
  %2941 = call float @dx.op.tertiary.f32(i32 46, float %2935, float %2897, float %2940)  ; FMad(a,b,c)
  %2942 = fsub fast float %2938, %2898
  %2943 = fsub fast float %2942, %2905
  %2944 = fadd fast float %2943, %2907
  %2945 = fsub fast float %2941, %2899
  %2946 = fsub fast float %2945, %2906
  %2947 = fadd fast float %2946, %2907
  %2948 = fmul fast float %2944, %2908
  %2949 = fmul fast float %2947, %2908
  %2950 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  %2951 = call float @dx.op.unary.f32(i32 7, float %2949)  ; Saturate(value)
  %2952 = fsub fast float 1.000000e+00, %2950
  %2953 = fsub fast float 1.000000e+00, %2951
  %2954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %2952, float %2953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2955 = extractvalue %dx.types.ResRet.f32 %2954, 0
  %2956 = fmul fast float %2955, 0x3FBC5ABC00000000
  %2957 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %2958 = fmul fast float %2957, %2957
  %2959 = fmul fast float %2958, %2884
  %2960 = fsub fast float 1.000000e+00, %2959
  %2961 = fcmp fast oge float %2960, 0.000000e+00
  %2962 = fmul fast float %2957, %2830
  %2963 = fmul fast float %2957, %2831
  %2964 = fmul fast float %2957, %2832
  %2965 = call float @dx.op.unary.f32(i32 24, float %2960)  ; Sqrt(value)
  %2966 = fmul fast float %2957, %2882
  %2967 = fsub fast float -0.000000e+00, %2965
  %2968 = fsub fast float %2967, %2966
  %2969 = fadd fast float %2968, %2964
  %2970 = select i1 %2961, float %2962, float 0.000000e+00
  %2971 = select i1 %2961, float %2963, float 0.000000e+00
  %2972 = select i1 %2961, float %2969, float 0.000000e+00
  %2973 = fmul fast float %2970, %2877
  %2974 = fmul fast float %2971, %2877
  %2975 = fmul fast float %2972, %2877
  %2976 = fadd fast float %2901, %2973
  %2977 = fadd fast float %2976, %2898
  %2978 = fadd fast float %2902, %2974
  %2979 = fadd fast float %2978, %2899
  %2980 = fadd fast float %2903, %2975
  %2981 = fadd fast float %2980, %2900
  %2982 = fmul fast float %2977, %2890
  %2983 = call float @dx.op.tertiary.f32(i32 46, float %2979, float %2892, float %2982)  ; FMad(a,b,c)
  %2984 = call float @dx.op.tertiary.f32(i32 46, float %2981, float %2894, float %2983)  ; FMad(a,b,c)
  %2985 = fmul fast float %2977, %2895
  %2986 = call float @dx.op.tertiary.f32(i32 46, float %2979, float %2896, float %2985)  ; FMad(a,b,c)
  %2987 = call float @dx.op.tertiary.f32(i32 46, float %2981, float %2897, float %2986)  ; FMad(a,b,c)
  %2988 = fsub fast float %2984, %2898
  %2989 = fsub fast float %2988, %2905
  %2990 = fadd fast float %2989, %2907
  %2991 = fsub fast float %2987, %2899
  %2992 = fsub fast float %2991, %2906
  %2993 = fadd fast float %2992, %2907
  %2994 = fmul fast float %2990, %2908
  %2995 = fmul fast float %2993, %2908
  %2996 = call float @dx.op.unary.f32(i32 7, float %2994)  ; Saturate(value)
  %2997 = call float @dx.op.unary.f32(i32 7, float %2995)  ; Saturate(value)
  %2998 = fsub fast float 1.000000e+00, %2996
  %2999 = fsub fast float 1.000000e+00, %2997
  %3000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %2998, float %2999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3001 = extractvalue %dx.types.ResRet.f32 %3000, 0
  %3002 = fmul fast float %3001, 0x3F9E4BBD60000000
  %3003 = extractvalue %dx.types.CBufRet.f32 %2910, 2
  %3004 = fmul fast float %3003, %3003
  %3005 = fmul fast float %3004, %2884
  %3006 = fsub fast float 1.000000e+00, %3005
  %3007 = fcmp fast oge float %3006, 0.000000e+00
  %3008 = fmul fast float %3003, %2830
  %3009 = fmul fast float %3003, %2831
  %3010 = fmul fast float %3003, %2832
  %3011 = call float @dx.op.unary.f32(i32 24, float %3006)  ; Sqrt(value)
  %3012 = fmul fast float %3003, %2882
  %3013 = fsub fast float -0.000000e+00, %3011
  %3014 = fsub fast float %3013, %3012
  %3015 = fadd fast float %3014, %3010
  %3016 = select i1 %3007, float %3008, float 0.000000e+00
  %3017 = select i1 %3007, float %3009, float 0.000000e+00
  %3018 = select i1 %3007, float %3015, float 0.000000e+00
  %3019 = fmul fast float %3016, %2877
  %3020 = fmul fast float %3017, %2877
  %3021 = fmul fast float %3018, %2877
  %3022 = fadd fast float %2901, %3019
  %3023 = fadd fast float %3022, %2898
  %3024 = fadd fast float %2902, %3020
  %3025 = fadd fast float %3024, %2899
  %3026 = fadd fast float %2903, %3021
  %3027 = fadd fast float %3026, %2900
  %3028 = fmul fast float %3023, %2890
  %3029 = call float @dx.op.tertiary.f32(i32 46, float %3025, float %2892, float %3028)  ; FMad(a,b,c)
  %3030 = call float @dx.op.tertiary.f32(i32 46, float %3027, float %2894, float %3029)  ; FMad(a,b,c)
  %3031 = fmul fast float %3023, %2895
  %3032 = call float @dx.op.tertiary.f32(i32 46, float %3025, float %2896, float %3031)  ; FMad(a,b,c)
  %3033 = call float @dx.op.tertiary.f32(i32 46, float %3027, float %2897, float %3032)  ; FMad(a,b,c)
  %3034 = fsub fast float %3030, %2898
  %3035 = fsub fast float %3034, %2905
  %3036 = fadd fast float %3035, %2907
  %3037 = fsub fast float %3033, %2899
  %3038 = fsub fast float %3037, %2906
  %3039 = fadd fast float %3038, %2907
  %3040 = fmul fast float %3036, %2908
  %3041 = fmul fast float %3039, %2908
  %3042 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3043 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3044 = fsub fast float 1.000000e+00, %3042
  %3045 = fsub fast float 1.000000e+00, %3043
  %3046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %3044, float %3045, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3047 = extractvalue %dx.types.ResRet.f32 %3046, 0
  %3048 = fmul fast float %3047, 0x3FDDEACB00000000
  %3049 = fadd fast float %3048, %3002
  %3050 = extractvalue %dx.types.CBufRet.f32 %2910, 3
  %3051 = fmul fast float %3050, %3050
  %3052 = fmul fast float %3051, %2884
  %3053 = fsub fast float 1.000000e+00, %3052
  %3054 = fcmp fast oge float %3053, 0.000000e+00
  %3055 = fmul fast float %3050, %2830
  %3056 = fmul fast float %3050, %2831
  %3057 = fmul fast float %3050, %2832
  %3058 = call float @dx.op.unary.f32(i32 24, float %3053)  ; Sqrt(value)
  %3059 = fmul fast float %3050, %2882
  %3060 = fsub fast float -0.000000e+00, %3058
  %3061 = fsub fast float %3060, %3059
  %3062 = fadd fast float %3061, %3057
  %3063 = select i1 %3054, float %3055, float 0.000000e+00
  %3064 = select i1 %3054, float %3056, float 0.000000e+00
  %3065 = select i1 %3054, float %3062, float 0.000000e+00
  %3066 = fmul fast float %3063, %2877
  %3067 = fmul fast float %3064, %2877
  %3068 = fmul fast float %3065, %2877
  %3069 = fadd fast float %2901, %3066
  %3070 = fadd fast float %3069, %2898
  %3071 = fadd fast float %2902, %3067
  %3072 = fadd fast float %3071, %2899
  %3073 = fadd fast float %2903, %3068
  %3074 = fadd fast float %3073, %2900
  %3075 = fmul fast float %3070, %2890
  %3076 = call float @dx.op.tertiary.f32(i32 46, float %3072, float %2892, float %3075)  ; FMad(a,b,c)
  %3077 = call float @dx.op.tertiary.f32(i32 46, float %3074, float %2894, float %3076)  ; FMad(a,b,c)
  %3078 = fmul fast float %3070, %2895
  %3079 = call float @dx.op.tertiary.f32(i32 46, float %3072, float %2896, float %3078)  ; FMad(a,b,c)
  %3080 = call float @dx.op.tertiary.f32(i32 46, float %3074, float %2897, float %3079)  ; FMad(a,b,c)
  %3081 = fsub fast float %3077, %2898
  %3082 = fsub fast float %3081, %2905
  %3083 = fadd fast float %3082, %2907
  %3084 = fsub fast float %3080, %2899
  %3085 = fsub fast float %3084, %2906
  %3086 = fadd fast float %3085, %2907
  %3087 = fmul fast float %3083, %2908
  %3088 = fmul fast float %3086, %2908
  %3089 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  %3090 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  %3091 = fsub fast float 1.000000e+00, %3089
  %3092 = fsub fast float 1.000000e+00, %3090
  %3093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %3091, float %3092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3094 = extractvalue %dx.types.ResRet.f32 %3093, 0
  %3095 = fmul fast float %3094, 0x3FE0183CA0000000
  %3096 = fmul fast float %3094, 0x3FB51033E0000000
  %3097 = fadd fast float %3049, %3095
  %3098 = fadd fast float %3047, %3001
  %3099 = fmul fast float %3098, 0x3FD9D2A200000000
  %3100 = fadd fast float %3096, %2956
  %3101 = fadd fast float %3100, %3099
  br label %3148

; <label>:3102                                    ; preds = %2876
  %3103 = fmul fast float %2884, 0x3FE2024E20000000
  %3104 = fsub fast float 1.000000e+00, %3103
  %3105 = fcmp fast oge float %3104, 0.000000e+00
  %3106 = fmul fast float %2830, 0x3FE8018960000000
  %3107 = fmul fast float %2831, 0x3FE8018960000000
  %3108 = fmul fast float %2832, 0x3FE8018960000000
  %3109 = call float @dx.op.unary.f32(i32 24, float %3104)  ; Sqrt(value)
  %3110 = fmul fast float %2882, 0x3FE8018960000000
  %3111 = fsub fast float %3108, %3109
  %3112 = fsub fast float %3111, %3110
  %3113 = select i1 %3105, float %3106, float 0.000000e+00
  %3114 = select i1 %3105, float %3107, float 0.000000e+00
  %3115 = select i1 %3105, float %3112, float 0.000000e+00
  %3116 = select i1 %2820, float %3113, float %2830
  %3117 = select i1 %2820, float %3114, float %2831
  %3118 = select i1 %2820, float %3115, float %2832
  %3119 = fmul fast float %3116, %2877
  %3120 = fmul fast float %3117, %2877
  %3121 = fmul fast float %3118, %2877
  %3122 = fadd fast float %2901, %3119
  %3123 = fadd fast float %3122, %2898
  %3124 = fadd fast float %2902, %3120
  %3125 = fadd fast float %3124, %2899
  %3126 = fadd fast float %2903, %3121
  %3127 = fadd fast float %3126, %2900
  %3128 = fmul fast float %3123, %2890
  %3129 = call float @dx.op.tertiary.f32(i32 46, float %3125, float %2892, float %3128)  ; FMad(a,b,c)
  %3130 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %2894, float %3129)  ; FMad(a,b,c)
  %3131 = fmul fast float %3123, %2895
  %3132 = call float @dx.op.tertiary.f32(i32 46, float %3125, float %2896, float %3131)  ; FMad(a,b,c)
  %3133 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %2897, float %3132)  ; FMad(a,b,c)
  %3134 = fsub fast float %3130, %2898
  %3135 = fsub fast float %3134, %2905
  %3136 = fadd fast float %3135, %2907
  %3137 = fsub fast float %3133, %2899
  %3138 = fsub fast float %3137, %2906
  %3139 = fadd fast float %3138, %2907
  %3140 = fmul fast float %3136, %2908
  %3141 = fmul fast float %3139, %2908
  %3142 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3143 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  %3144 = fsub fast float 1.000000e+00, %3142
  %3145 = fsub fast float 1.000000e+00, %3143
  %3146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %3144, float %3145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3147 = extractvalue %dx.types.ResRet.f32 %3146, 0
  br label %3148

; <label>:3148                                    ; preds = %3102, %2909
  %3149 = phi float [ %3147, %3102 ], [ %3097, %2909 ]
  %3150 = phi float [ %3147, %3102 ], [ %3101, %2909 ]
  %3151 = phi float [ %3147, %3102 ], [ %2955, %2909 ]
  %3152 = fmul fast float %2825, %2825
  %3153 = fmul fast float %2826, %2826
  %3154 = fadd fast float %3152, %3153
  %3155 = fmul fast float %2827, %2827
  %3156 = fadd fast float %3154, %3155
  %3157 = call float @dx.op.unary.f32(i32 24, float %3156)  ; Sqrt(value)
  %3158 = fsub fast float %2207, %2310
  %3159 = fsub fast float %2208, %2311
  %3160 = fsub fast float %2209, %2312
  %3161 = fmul fast float %3158, %3158
  %3162 = fmul fast float %3159, %3159
  %3163 = fadd fast float %3161, %3162
  %3164 = fmul fast float %3160, %3160
  %3165 = fadd fast float %3163, %3164
  %3166 = call float @dx.op.unary.f32(i32 24, float %3165)  ; Sqrt(value)
  %3167 = fsub fast float %3157, %3166
  %3168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3169 = extractvalue %dx.types.CBufRet.f32 %3168, 0
  %3170 = call float @dx.op.unary.f32(i32 6, float %3169)  ; FAbs(value)
  %3171 = fmul fast float %3166, %3166
  %3172 = fmul fast float %3171, %3170
  %3173 = fmul fast float %3167, %3167
  %3174 = fadd fast float %3173, %3171
  %3175 = fdiv fast float %3172, %3174
  %3176 = call float @dx.op.unary.f32(i32 7, float %3175)  ; Saturate(value)
  %3177 = and i1 %2819, %2817
  %3178 = fsub fast float -0.000000e+00, %2877
  %3179 = select i1 %3177, float -0.000000e+00, float %3178
  %3180 = fmul fast float %1216, 0x3FF7154760000000
  %3181 = fmul fast float %3180, %3179
  %3182 = fmul fast float %1217, 0x3FF7154760000000
  %3183 = fmul fast float %3182, %3179
  %3184 = fmul fast float %1218, 0x3FF7154760000000
  %3185 = fmul fast float %3184, %3179
  %3186 = call float @dx.op.unary.f32(i32 21, float %3181)  ; Exp(value)
  %3187 = call float @dx.op.unary.f32(i32 21, float %3183)  ; Exp(value)
  %3188 = call float @dx.op.unary.f32(i32 21, float %3185)  ; Exp(value)
  %3189 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  %3190 = call float @dx.op.unary.f32(i32 7, float %3187)  ; Saturate(value)
  %3191 = call float @dx.op.unary.f32(i32 7, float %3188)  ; Saturate(value)
  %3192 = call float @dx.op.unary.f32(i32 6, float %2882)  ; FAbs(value)
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = bitcast float %3193 to i32
  %3195 = sitofp i32 %3194 to float
  %3196 = fptosi float %3195 to i32
  %3197 = bitcast i32 %3196 to float
  %3198 = fmul fast float %3197, 0x3FEF333340000000
  %3199 = fadd fast float %3198, 0x3F999999A0000000
  %3200 = call float @dx.op.unary.f32(i32 7, float %3199)  ; Saturate(value)
  %3201 = fsub fast float 1.000000e+00, %3200
  %3202 = fadd fast float %3149, 1.000000e+00
  %3203 = fadd fast float %3150, 1.000000e+00
  %3204 = fadd fast float %3151, 1.000000e+00
  %3205 = fmul fast float %3189, %3202
  %3206 = fmul fast float %3190, %3203
  %3207 = fmul fast float %3191, %3204
  %3208 = fmul fast float %3205, %3201
  %3209 = fmul fast float %3206, %3201
  %3210 = fmul fast float %3207, %3201
  %3211 = fmul fast float %3176, %3202
  %3212 = fmul fast float %3211, %3189
  %3213 = fmul fast float %3212, %3200
  %3214 = fmul fast float %3176, %3203
  %3215 = fmul fast float %3214, %3190
  %3216 = fmul fast float %3215, %3200
  %3217 = fmul fast float %3176, %3204
  %3218 = fmul fast float %3217, %3191
  %3219 = fmul fast float %3218, %3200
  %3220 = fadd fast float %3213, %3189
  %3221 = fadd fast float %3216, %3190
  %3222 = fadd fast float %3219, %3191
  %3223 = call float @dx.op.unary.f32(i32 6, float %2818)  ; FAbs(value)
  %3224 = call float @dx.op.unary.f32(i32 7, float %3223)  ; Saturate(value)
  %3225 = select i1 %2820, float %3208, float %3220
  %3226 = select i1 %2820, float %3209, float %3221
  %3227 = select i1 %2820, float %3210, float %3222
  %3228 = select i1 %2815, float %3224, float 0.000000e+00
  %3229 = fsub fast float %3225, %3189
  %3230 = fsub fast float %3226, %3190
  %3231 = fsub fast float %3227, %3191
  %3232 = fmul fast float %3229, %3228
  %3233 = fmul fast float %3230, %3228
  %3234 = fmul fast float %3231, %3228
  %3235 = fadd fast float %3232, %3189
  %3236 = fadd fast float %3233, %3190
  %3237 = fadd fast float %3234, %3191
  %3238 = fmul fast float %3235, %2286
  %3239 = fmul fast float %3236, %2287
  %3240 = fmul fast float %3237, %2288
  br label %3241

; <label>:3241                                    ; preds = %3148, %2810
  %3242 = phi float [ %3238, %3148 ], [ %2286, %2810 ]
  %3243 = phi float [ %3239, %3148 ], [ %2287, %2810 ]
  %3244 = phi float [ %3240, %3148 ], [ %2288, %2810 ]
  %3245 = call float @dx.op.dot3.f32(i32 55, float %2629, float %2630, float %2631, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = fcmp fast ogt float %2201, 0.000000e+00
  %3247 = select i1 %3246, float 1.000000e+00, float -1.000000e+00
  %3248 = fmul fast float %117, 7.812500e-03
  %3249 = fmul fast float %117, 3.125000e-02
  %3250 = fadd fast float %3249, -3.125000e-02
  %3251 = fmul fast float %3247, 5.000000e-01
  %3252 = fmul fast float %3251, %3245
  %3253 = fmul fast float %3247, %2201
  %3254 = fadd fast float %3248, 4.921875e-01
  %3255 = fadd fast float %3254, %3252
  %3256 = fadd fast float %3248, 0x3FB25F3060000000
  %3257 = fadd fast float %3250, %3253
  %3258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %38, float %3255, float %3256, float %3257, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 1
  %3262 = extractvalue %dx.types.CBufRet.f32 %3260, 2
  %3263 = select i1 %2329, float %3261, float %3262
  %3264 = fmul fast float %2636, 0x400921FB60000000
  %3265 = fmul fast float %3264, %2806
  %3266 = fmul fast float %3265, %3259
  %3267 = fmul fast float %3266, %3263
  %3268 = fmul fast float %3242, %2602
  %3269 = fmul fast float %3268, %3267
  %3270 = fmul fast float %3243, %2602
  %3271 = fmul fast float %3270, %3267
  %3272 = fmul fast float %3244, %2602
  %3273 = fmul fast float %3272, %3267
  %3274 = fadd fast float %3269, %2275
  %3275 = fadd fast float %3271, %2276
  %3276 = fadd fast float %3273, %2277
  br label %2712

; <label>:3277                                    ; preds = %2712
  br label %3278

; <label>:3278                                    ; preds = %3277, %2260
  %3279 = phi float [ %2262, %2260 ], [ %2713, %3277 ]
  %3280 = phi float [ %2263, %2260 ], [ %2714, %3277 ]
  %3281 = phi float [ %2264, %2260 ], [ %2715, %3277 ]
  %3282 = add i32 %2261, 1
  %3283 = icmp ugt i32 %3282, %2259
  br i1 %3283, label %3284, label %2260

; <label>:3284                                    ; preds = %3278
  br label %3285

; <label>:3285                                    ; preds = %3284, %2196
  %3286 = phi float [ 0.000000e+00, %2196 ], [ %3279, %3284 ]
  %3287 = phi float [ 0.000000e+00, %2196 ], [ %3280, %3284 ]
  %3288 = phi float [ 0.000000e+00, %2196 ], [ %3281, %3284 ]
  %3289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %36, float %142, float %143, float %144, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3290 = extractvalue %dx.types.ResRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.ResRet.f32 %3289, 1
  %3292 = extractvalue %dx.types.ResRet.f32 %3289, 2
  %3293 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3290)  ; IsNaN(value)
  %3294 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3291)  ; IsNaN(value)
  %3295 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3292)  ; IsNaN(value)
  %3296 = or i1 %3293, %3294
  %3297 = or i1 %3296, %3295
  %3298 = select i1 %3297, float 0.000000e+00, float %3290
  %3299 = select i1 %3297, float 0.000000e+00, float %3291
  %3300 = select i1 %3297, float 0.000000e+00, float %3292
  %3301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3301, 1
  %3303 = fmul fast float %3298, %3302
  %3304 = fmul fast float %3299, %3302
  %3305 = fmul fast float %3300, %3302
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 3
  %3308 = fmul fast float %3303, %3307
  %3309 = fmul fast float %3304, %3307
  %3310 = fmul fast float %3305, %3307
  %3311 = fadd fast float %3308, %3286
  %3312 = fadd fast float %3309, %3287
  %3313 = fadd fast float %3310, %3288
  br label %3314

; <label>:3314                                    ; preds = %3285, %2189
  %3315 = phi float [ %2198, %3285 ], [ %2190, %2189 ]
  %3316 = phi float [ %2199, %3285 ], [ %2191, %2189 ]
  %3317 = phi float [ %2200, %3285 ], [ %2192, %2189 ]
  %3318 = phi float [ %3311, %3285 ], [ 0.000000e+00, %2189 ]
  %3319 = phi float [ %3312, %3285 ], [ 0.000000e+00, %2189 ]
  %3320 = phi float [ %3313, %3285 ], [ 0.000000e+00, %2189 ]
  %3321 = fmul fast float %3315, %2194
  %3322 = fmul fast float %3316, %2194
  %3323 = fmul fast float %3317, %2194
  %3324 = select i1 %244, float %1216, float %2194
  %3325 = select i1 %244, float %1217, float %2194
  %3326 = select i1 %244, float %1218, float %2194
  %3327 = fmul fast float %3321, %3318
  %3328 = fmul fast float %3322, %3319
  %3329 = fmul fast float %3323, %3320
  %3330 = xor i1 %247, true
  %3331 = and i1 %79, %3330
  %3332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %3333 = extractvalue %dx.types.CBufRet.f32 %3332, 0
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 0
  %3336 = select i1 %211, float %3333, float %3335
  %3337 = fmul fast float %3327, %3336
  %3338 = fmul fast float %3328, %3336
  %3339 = fmul fast float %3329, %3336
  %3340 = fmul fast float %3338, 5.000000e-01
  %3341 = fadd fast float %3329, %3327
  %3342 = fmul fast float %3336, %3341
  %3343 = fmul fast float %3342, 2.500000e-01
  %3344 = fadd fast float %3343, %3340
  %3345 = call float @dx.op.unary.f32(i32 23, float %3344)  ; Log(value)
  %3346 = fmul fast float %3345, 0x3FE62E4300000000
  %3347 = fmul fast float %3346, %3346
  %3348 = select i1 %3331, float 1.000000e+00, float 0.000000e+00
  store float %3348, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  %3349 = fmul fast float %3346, %3348
  store float %3349, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  %3350 = fmul fast float %3347, %3348
  store float %3350, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3351 = load float, float addrspace(3)* %258, align 4, !tbaa !57, !noalias !61
  %3352 = fadd fast float %3351, %3348
  %3353 = load float, float addrspace(3)* %261, align 4, !tbaa !57, !noalias !61
  %3354 = fadd fast float %3353, %3346
  %3355 = load float, float addrspace(3)* %264, align 4, !tbaa !57, !noalias !61
  %3356 = fadd fast float %3355, %3347
  store float %3352, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  store float %3354, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  store float %3356, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3357 = load float, float addrspace(3)* %268, align 4, !tbaa !57, !noalias !61
  %3358 = fadd fast float %3357, %3352
  %3359 = load float, float addrspace(3)* %271, align 4, !tbaa !57, !noalias !61
  %3360 = fadd fast float %3359, %3354
  %3361 = load float, float addrspace(3)* %274, align 4, !tbaa !57, !noalias !61
  %3362 = fadd fast float %3361, %3356
  store float %3358, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  store float %3360, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  store float %3362, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3363 = load float, float addrspace(3)* %278, align 4, !tbaa !57, !noalias !61
  %3364 = fadd fast float %3363, %3358
  %3365 = load float, float addrspace(3)* %281, align 4, !tbaa !57, !noalias !61
  %3366 = fadd fast float %3365, %3360
  %3367 = fdiv fast float %3366, %3364
  %3368 = and i1 %3331, %288
  br i1 %3368, label %3369, label %3377, !dx.controlflow.hints !65

; <label>:3369                                    ; preds = %3314
  %3370 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %277
  %3371 = load float, float addrspace(3)* %3370, align 4, !tbaa !57, !noalias !61
  %3372 = fadd fast float %3371, %3362
  %3373 = fdiv fast float %3372, %3364
  %3374 = lshr i32 %67, 1
  %3375 = lshr i32 %68, 1
  %3376 = lshr i32 %246, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3374, i32 %3375, i32 %3376, float %3367, float %3373, float %3367, float %3367, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3377

; <label>:3377                                    ; preds = %3369, %3314
  br i1 %3331, label %3378, label %3412, !dx.controlflow.hints !66

; <label>:3378                                    ; preds = %3377
  %3379 = fadd fast float %117, 0x3FE3C6EF40000000
  %3380 = call float @dx.op.unary.f32(i32 22, float %3379)  ; Frc(value)
  %3381 = call float @dx.op.unary.f32(i32 23, float %3337)  ; Log(value)
  %3382 = fadd fast float %3381, -7.000000e+00
  %3383 = call float @dx.op.unary.f32(i32 21, float %3382)  ; Exp(value)
  %3384 = fmul fast float %3380, 2.000000e+00
  %3385 = fadd fast float %3384, -1.000000e+00
  %3386 = fmul fast float %3383, %3385
  %3387 = fcmp fast ogt float %3337, 0.000000e+00
  %3388 = select i1 %3387, float %3386, float 0.000000e+00
  %3389 = fadd fast float %3388, %3337
  %3390 = fadd fast float %117, 0x3FF3C6EF40000000
  %3391 = call float @dx.op.unary.f32(i32 22, float %3390)  ; Frc(value)
  %3392 = call float @dx.op.unary.f32(i32 23, float %3338)  ; Log(value)
  %3393 = fadd fast float %3392, -7.000000e+00
  %3394 = call float @dx.op.unary.f32(i32 21, float %3393)  ; Exp(value)
  %3395 = fmul fast float %3391, 2.000000e+00
  %3396 = fadd fast float %3395, -1.000000e+00
  %3397 = fmul fast float %3394, %3396
  %3398 = fcmp fast ogt float %3338, 0.000000e+00
  %3399 = select i1 %3398, float %3397, float 0.000000e+00
  %3400 = fadd fast float %3399, %3338
  %3401 = fadd fast float %117, 0x3FFDAA66E0000000
  %3402 = call float @dx.op.unary.f32(i32 22, float %3401)  ; Frc(value)
  %3403 = call float @dx.op.unary.f32(i32 23, float %3339)  ; Log(value)
  %3404 = fadd fast float %3403, -6.000000e+00
  %3405 = call float @dx.op.unary.f32(i32 21, float %3404)  ; Exp(value)
  %3406 = fmul fast float %3402, 2.000000e+00
  %3407 = fadd fast float %3406, -1.000000e+00
  %3408 = fmul fast float %3405, %3407
  %3409 = fcmp fast ogt float %3339, 0.000000e+00
  %3410 = select i1 %3409, float %3408, float 0.000000e+00
  %3411 = fadd fast float %3410, %3339
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %67, i32 %68, i32 %246, float %3389, float %3400, float %3411, float %3389, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3412

; <label>:3412                                    ; preds = %3378, %3377
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 0
  %3415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %3416 = extractvalue %dx.types.CBufRet.f32 %3415, 0
  %3417 = select i1 %211, float %3414, float %3416
  %3418 = fmul fast float %3417, %3324
  %3419 = fmul fast float %3417, %3325
  %3420 = fmul fast float %3417, %3326
  %3421 = fmul fast float %3419, 5.000000e-01
  %3422 = fadd fast float %3326, %3324
  %3423 = fmul fast float %3417, %3422
  %3424 = fmul fast float %3423, 2.500000e-01
  %3425 = fadd fast float %3424, %3421
  %3426 = fmul fast float %3425, %3425
  store float %3348, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  %3427 = fmul fast float %3425, %3348
  store float %3427, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  %3428 = fmul fast float %3426, %3348
  store float %3428, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3429 = load float, float addrspace(3)* %258, align 4, !tbaa !57, !noalias !61
  %3430 = fadd fast float %3429, %3348
  %3431 = load float, float addrspace(3)* %261, align 4, !tbaa !57, !noalias !61
  %3432 = fadd fast float %3425, %3431
  %3433 = load float, float addrspace(3)* %264, align 4, !tbaa !57, !noalias !61
  %3434 = fadd fast float %3426, %3433
  store float %3430, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  store float %3432, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  store float %3434, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3435 = load float, float addrspace(3)* %268, align 4, !tbaa !57, !noalias !61
  %3436 = fadd fast float %3435, %3430
  %3437 = load float, float addrspace(3)* %271, align 4, !tbaa !57, !noalias !61
  %3438 = fadd fast float %3432, %3437
  %3439 = load float, float addrspace(3)* %274, align 4, !tbaa !57, !noalias !61
  %3440 = fadd fast float %3434, %3439
  store float %3436, float addrspace(3)* %252, align 4, !tbaa !57, !noalias !61
  store float %3438, float addrspace(3)* %254, align 4, !tbaa !57, !noalias !61
  store float %3440, float addrspace(3)* %256, align 4, !tbaa !57, !noalias !61
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3441 = load float, float addrspace(3)* %278, align 4, !tbaa !57, !noalias !61
  %3442 = fadd fast float %3441, %3436
  %3443 = load float, float addrspace(3)* %281, align 4, !tbaa !57, !noalias !61
  %3444 = fadd fast float %3443, %3438
  %3445 = fdiv fast float %3444, %3442
  br i1 %3368, label %3446, label %3454, !dx.controlflow.hints !67

; <label>:3446                                    ; preds = %3412
  %3447 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %277
  %3448 = load float, float addrspace(3)* %3447, align 4, !tbaa !57, !noalias !61
  %3449 = fadd fast float %3448, %3440
  %3450 = fdiv fast float %3449, %3442
  %3451 = lshr i32 %67, 1
  %3452 = lshr i32 %68, 1
  %3453 = lshr i32 %246, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3451, i32 %3452, i32 %3453, float %3445, float %3450, float %3445, float %3445, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3454

; <label>:3454                                    ; preds = %3446, %3412
  br i1 %3331, label %3455, label %3489, !dx.controlflow.hints !68

; <label>:3455                                    ; preds = %3454
  %3456 = fadd fast float %117, 0x3FE3C6EF40000000
  %3457 = call float @dx.op.unary.f32(i32 22, float %3456)  ; Frc(value)
  %3458 = call float @dx.op.unary.f32(i32 23, float %3418)  ; Log(value)
  %3459 = fadd fast float %3458, -7.000000e+00
  %3460 = call float @dx.op.unary.f32(i32 21, float %3459)  ; Exp(value)
  %3461 = fmul fast float %3457, 2.000000e+00
  %3462 = fadd fast float %3461, -1.000000e+00
  %3463 = fmul fast float %3460, %3462
  %3464 = fcmp fast ogt float %3418, 0.000000e+00
  %3465 = select i1 %3464, float %3463, float 0.000000e+00
  %3466 = fadd fast float %3465, %3418
  %3467 = fadd fast float %117, 0x3FF3C6EF40000000
  %3468 = call float @dx.op.unary.f32(i32 22, float %3467)  ; Frc(value)
  %3469 = call float @dx.op.unary.f32(i32 23, float %3419)  ; Log(value)
  %3470 = fadd fast float %3469, -7.000000e+00
  %3471 = call float @dx.op.unary.f32(i32 21, float %3470)  ; Exp(value)
  %3472 = fmul fast float %3468, 2.000000e+00
  %3473 = fadd fast float %3472, -1.000000e+00
  %3474 = fmul fast float %3471, %3473
  %3475 = fcmp fast ogt float %3419, 0.000000e+00
  %3476 = select i1 %3475, float %3474, float 0.000000e+00
  %3477 = fadd fast float %3476, %3419
  %3478 = fadd fast float %117, 0x3FFDAA66E0000000
  %3479 = call float @dx.op.unary.f32(i32 22, float %3478)  ; Frc(value)
  %3480 = call float @dx.op.unary.f32(i32 23, float %3420)  ; Log(value)
  %3481 = fadd fast float %3480, -6.000000e+00
  %3482 = call float @dx.op.unary.f32(i32 21, float %3481)  ; Exp(value)
  %3483 = fmul fast float %3479, 2.000000e+00
  %3484 = fadd fast float %3483, -1.000000e+00
  %3485 = fmul fast float %3482, %3484
  %3486 = fcmp fast ogt float %3420, 0.000000e+00
  %3487 = select i1 %3486, float %3485, float 0.000000e+00
  %3488 = fadd fast float %3487, %3420
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %67, i32 %68, i32 %246, float %3466, float %3477, float %3488, float %3466, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3489

; <label>:3489                                    ; preds = %3455, %3454
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
!dx.entryPoints = !{!54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !40, !45, !48}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38}
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
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture1D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 1, i32 0, !7}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 7, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !36}
!36 = !{i32 1, i32 80}
!37 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!38 = !{i32 29, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !39}
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
!54 = !{void ()* @cs_volumetric_forwardplus_scatter_local_water, !"cs_volumetric_forwardplus_scatter_local_water", null, !4, !55}
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
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !90}
!107 = distinct !{!107, !90}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 2}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}

