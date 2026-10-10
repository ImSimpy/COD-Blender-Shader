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
; shader hash: 8dc5f489451e3fd526abd498c517aa88
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
;                                   texture     f32          1d     T25            t54     1
;                                   texture     f32          3d     T26             t5     1
;                                   texture    byte         r/o     T27            t13     1
;                                   texture  struct         r/o     T28            t14     1
;                                   texture    byte         r/o     T29            t15     1
;                                   texture  struct         r/o     T30            t29     1
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

define void @cs_volumetric_forwardplus_scatter_local_water_afog() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %44 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %45 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %46 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %47 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %48 = alloca [3 x float], align 4
  %49 = alloca [3 x float], align 4
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 3
  %52 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.i32 %52, 1
  %54 = mul i32 %53, %51
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 1
  %57 = mul i32 %54, %56
  %58 = add i32 %57, %46
  %59 = shl i32 %58, 2
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = and i32 %61, 255
  %63 = lshr i32 %61, 8
  %64 = and i32 %63, 255
  %65 = lshr i32 %61, 16
  %66 = and i32 %65, 255
  %67 = shl nuw nsw i32 %62, 2
  %68 = shl nuw nsw i32 %64, 2
  %69 = shl nuw nsw i32 %66, 2
  %70 = add i32 %67, %43
  %71 = add i32 %68, %44
  %72 = add i32 %69, %45
  %73 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.i32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.i32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.i32 %73, 2
  %77 = icmp uge i32 %70, %74
  %78 = icmp uge i32 %71, %75
  %79 = icmp uge i32 %72, %76
  %80 = or i1 %77, %78
  %81 = or i1 %79, %80
  %82 = xor i1 %81, true
  %83 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.i32 %83, 3
  %85 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %71, i32 %84)  ; UMad(a,b,c)
  %86 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %70, i32 %85)  ; UMad(a,b,c)
  %87 = mul i32 %86, -63
  %88 = lshr i32 %87, 17
  %89 = xor i32 %88, %87
  %90 = mul i32 %89, -511
  %91 = mul i32 %89, -8176
  %92 = xor i32 %90, %91
  %93 = mul i32 %92, -7
  %94 = mul i32 %92, -7168
  %95 = xor i32 %93, %94
  %96 = lshr i32 %95, 15
  %97 = xor i32 %96, %93
  %98 = and i32 %97, 127
  %99 = mul i32 %98, 3
  %100 = add i32 0, %99
  %101 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %100
  %102 = load float, float* %101, align 4
  %103 = mul i32 %98, 3
  %104 = add i32 1, %103
  %105 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %104
  %106 = load float, float* %105, align 4
  %107 = mul i32 %98, 3
  %108 = add i32 2, %107
  %109 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %108
  %110 = load float, float* %109, align 4
  %111 = uitofp i32 %84 to float
  %112 = fmul fast float %111, 0x3FEA36A940000000
  %113 = fmul fast float %111, 0x3FE5793080000000
  %114 = fmul fast float %111, 0x3FE1972580000000
  %115 = fadd fast float %102, %112
  %116 = fadd fast float %106, %113
  %117 = fadd fast float %110, %114
  %118 = call float @dx.op.unary.f32(i32 22, float %115)  ; Frc(value)
  %119 = call float @dx.op.unary.f32(i32 22, float %116)  ; Frc(value)
  %120 = call float @dx.op.unary.f32(i32 22, float %117)  ; Frc(value)
  %121 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %70, i32 %71, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = fcmp fast ogt float %122, -1.000000e+00
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %126 = select i1 %123, float %125, float 1.000000e+00
  %127 = fadd fast float %122, 1.000000e+00
  %128 = fmul fast float %126, %127
  %129 = uitofp i32 %70 to float
  %130 = uitofp i32 %71 to float
  %131 = uitofp i32 %72 to float
  %132 = fadd fast float %129, -5.000000e-01
  %133 = fadd fast float %132, %118
  %134 = fadd fast float %130, -5.000000e-01
  %135 = fadd fast float %134, %119
  %136 = fadd fast float %131, -5.000000e-01
  %137 = fadd fast float %136, %120
  %138 = fadd fast float %133, 5.000000e-01
  %139 = fadd fast float %135, 5.000000e-01
  %140 = fadd fast float %137, 5.000000e-01
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = fmul fast float %142, %138
  %146 = fmul fast float %143, %139
  %147 = fmul fast float %144, %140
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 0
  %150 = uitofp i32 %149 to float
  %151 = fmul fast float %150, %147
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = fmul fast float %151, %154
  %156 = call float @dx.op.unary.f32(i32 21, float %155)  ; Exp(value)
  %157 = fmul fast float %156, %153
  %158 = fsub fast float 4.000000e+00, %153
  %159 = fadd fast float %158, %157
  %160 = call float @dx.op.binary.f32(i32 36, float %159, float %128)  ; FMin(a,b)
  %161 = fmul fast float %145, 2.000000e+00
  %162 = fmul fast float %146, 2.000000e+00
  %163 = fsub fast float 1.000000e+00, %161
  %164 = fsub fast float 1.000000e+00, %162
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = fmul fast float %166, %163
  %170 = fmul fast float %167, %163
  %171 = fmul fast float %168, %163
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = fmul fast float %173, %164
  %177 = fmul fast float %174, %164
  %178 = fmul fast float %175, %164
  %179 = fadd fast float %176, %169
  %180 = fadd fast float %177, %170
  %181 = fadd fast float %178, %171
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %186 = fadd fast float %179, %183
  %187 = fadd fast float %180, %184
  %188 = fadd fast float %181, %185
  %189 = fmul fast float %186, %160
  %190 = fmul fast float %187, %160
  %191 = fmul fast float %188, %160
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = fadd fast float %189, %193
  %197 = fadd fast float %190, %194
  %198 = fadd fast float %191, %195
  %199 = add i32 %72, 1
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %154, %200
  %202 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %203 = fmul fast float %154, %131
  %204 = call float @dx.op.unary.f32(i32 21, float %203)  ; Exp(value)
  %205 = fsub fast float %202, %204
  %206 = fmul fast float %153, %205
  %207 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %189, float %190, float %191)  ; Dot3(ax,ay,az,bx,by,bz)
  %208 = call float @dx.op.unary.f32(i32 25, float %207)  ; Rsqrt(value)
  %209 = fmul fast float %208, %189
  %210 = fmul fast float %208, %190
  %211 = fmul fast float %208, %191
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = fcmp fast ogt float %213, 0.000000e+00
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %218 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %219 = fsub fast float %196, %216
  %220 = fadd fast float %219, %218
  %221 = fsub fast float %197, %217
  %222 = fadd fast float %221, %218
  %223 = extractvalue %dx.types.CBufRet.f32 %215, 3
  %224 = fmul fast float %220, %223
  %225 = fmul fast float %222, %223
  %226 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %227 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %228 = fsub fast float 1.000000e+00, %226
  %229 = fsub fast float 1.000000e+00, %227
  %230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %39, float %228, float %229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = fmul fast float %233, %231
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %236 = fadd fast float %235, %234
  %237 = fcmp fast ogt float %231, 0.000000e+00
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 32768
  %241 = icmp ne i32 %240, 0
  %242 = and i1 %237, %241
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 3
  %245 = fadd fast float %244, %236
  %246 = fcmp fast ole float %198, %245
  %247 = and i1 %242, %246
  %248 = select i1 %214, i32 %149, i32 0
  %249 = add i32 %248, %72
  %250 = xor i1 %214, %247
  %251 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %252 = fmul fast float %251, 0x3FE62E4300000000
  %253 = fmul fast float %252, %252
  %254 = select i1 %81, float 0.000000e+00, float 1.000000e+00
  %255 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %47
  store float %254, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  %256 = fmul fast float %252, %254
  %257 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %47
  store float %256, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  %258 = fmul fast float %253, %254
  %259 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %47
  store float %258, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %260 = xor i32 %47, 4
  %261 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %260
  %262 = load float, float addrspace(3)* %261, align 4, !tbaa !58, !noalias !62
  %263 = fadd fast float %262, %254
  %264 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %260
  %265 = load float, float addrspace(3)* %264, align 4, !tbaa !58, !noalias !62
  %266 = fadd fast float %265, %252
  %267 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %260
  %268 = load float, float addrspace(3)* %267, align 4, !tbaa !58, !noalias !62
  %269 = fadd fast float %268, %253
  store float %263, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  store float %266, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  store float %269, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %270 = xor i32 %47, 16
  %271 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %270
  %272 = load float, float addrspace(3)* %271, align 4, !tbaa !58, !noalias !62
  %273 = fadd fast float %272, %263
  %274 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %270
  %275 = load float, float addrspace(3)* %274, align 4, !tbaa !58, !noalias !62
  %276 = fadd fast float %275, %266
  %277 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %270
  %278 = load float, float addrspace(3)* %277, align 4, !tbaa !58, !noalias !62
  %279 = fadd fast float %278, %269
  store float %273, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  store float %276, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  store float %279, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %280 = xor i32 %47, 1
  %281 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %280
  %282 = load float, float addrspace(3)* %281, align 4, !tbaa !58, !noalias !62
  %283 = fadd fast float %282, %273
  %284 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %280
  %285 = load float, float addrspace(3)* %284, align 4, !tbaa !58, !noalias !62
  %286 = fadd fast float %285, %276
  %287 = fdiv fast float %286, %283
  %288 = and i32 %70, 1
  %289 = and i32 %288, %71
  %290 = and i32 %289, %249
  %291 = icmp ne i32 %290, 0
  %292 = and i1 %291, %82
  br i1 %292, label %293, label %301, !dx.controlflow.hints !66

; <label>:293                                     ; preds = %0
  %294 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %280
  %295 = load float, float addrspace(3)* %294, align 4, !tbaa !58, !noalias !62
  %296 = fadd fast float %295, %279
  %297 = fdiv fast float %296, %283
  %298 = lshr i32 %70, 1
  %299 = lshr i32 %71, 1
  %300 = lshr i32 %249, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %298, i32 %299, i32 %300, float %287, float %297, float %287, float %287, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %301

; <label>:301                                     ; preds = %293, %0
  br i1 %81, label %303, label %302, !dx.controlflow.hints !67

; <label>:302                                     ; preds = %301
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %70, i32 %71, i32 %249, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %303

; <label>:303                                     ; preds = %302, %301
  store float %254, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  store float 0.000000e+00, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  store float 0.000000e+00, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %304 = load float, float addrspace(3)* %261, align 4, !tbaa !58, !noalias !62
  %305 = fadd fast float %304, %254
  %306 = load float, float addrspace(3)* %264, align 4, !tbaa !58, !noalias !62
  %307 = load float, float addrspace(3)* %267, align 4, !tbaa !58, !noalias !62
  store float %305, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  store float %306, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  store float %307, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %308 = load float, float addrspace(3)* %271, align 4, !tbaa !58, !noalias !62
  %309 = fadd fast float %308, %305
  %310 = load float, float addrspace(3)* %274, align 4, !tbaa !58, !noalias !62
  %311 = fadd fast float %310, %306
  %312 = load float, float addrspace(3)* %277, align 4, !tbaa !58, !noalias !62
  %313 = fadd fast float %312, %307
  store float %309, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  store float %311, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  store float %313, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %314 = load float, float addrspace(3)* %281, align 4, !tbaa !58, !noalias !62
  %315 = fadd fast float %314, %309
  %316 = load float, float addrspace(3)* %284, align 4, !tbaa !58, !noalias !62
  %317 = fadd fast float %316, %311
  %318 = fdiv fast float %317, %315
  br i1 %292, label %319, label %327, !dx.controlflow.hints !68

; <label>:319                                     ; preds = %303
  %320 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %280
  %321 = load float, float addrspace(3)* %320, align 4, !tbaa !58, !noalias !62
  %322 = fadd fast float %321, %313
  %323 = fdiv fast float %322, %315
  %324 = lshr i32 %70, 1
  %325 = lshr i32 %71, 1
  %326 = lshr i32 %249, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %324, i32 %325, i32 %326, float %318, float %323, float %318, float %318, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %327

; <label>:327                                     ; preds = %319, %303
  br i1 %81, label %329, label %328, !dx.controlflow.hints !69

; <label>:328                                     ; preds = %327
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %70, i32 %71, i32 %249, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %329

; <label>:329                                     ; preds = %328, %327
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = fsub fast float %198, %331
  %334 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %333)  ; FMax(a,b)
  %335 = fmul fast float %334, 0x3FF7154760000000
  %336 = fmul fast float %335, %332
  %337 = call float @dx.op.unary.f32(i32 21, float %336)  ; Exp(value)
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = fmul fast float %344, %337
  %346 = fmul fast float %345, %339
  %347 = fmul fast float %345, %340
  %348 = fmul fast float %345, %341
  %349 = fmul fast float %345, %343
  %350 = select i1 %247, float 0.000000e+00, float %345
  %351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.i32 %351, 2
  %353 = extractvalue %dx.types.CBufRet.i32 %351, 3
  %354 = call i32 @dx.op.tertiary.i32(i32 49, i32 %64, i32 %352, i32 %62)  ; UMad(a,b,c)
  %355 = call i32 @dx.op.tertiary.i32(i32 49, i32 %66, i32 %353, i32 %354)  ; UMad(a,b,c)
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %355, i32 0)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = fadd fast float %129, 1.000000e+00
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = fmul fast float %364, %137
  %366 = call float @dx.op.unary.f32(i32 21, float %365)  ; Exp(value)
  %367 = fmul fast float %366, %363
  %368 = fsub fast float 4.000000e+00, %363
  %369 = fadd fast float %368, %367
  %370 = fmul fast float %358, 2.000000e+00
  %371 = fmul fast float %370, %360
  %372 = fmul fast float %130, 2.000000e+00
  %373 = fmul fast float %372, %361
  %374 = fsub fast float 1.000000e+00, %371
  %375 = fsub fast float 1.000000e+00, %373
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %380 = fmul fast float %377, %374
  %381 = fmul fast float %378, %374
  %382 = fmul fast float %379, %374
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %386 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %387 = fmul fast float %384, %375
  %388 = fmul fast float %385, %375
  %389 = fmul fast float %386, %375
  %390 = fadd fast float %387, %380
  %391 = fadd fast float %388, %381
  %392 = fadd fast float %389, %382
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %396 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %397 = fadd fast float %390, %394
  %398 = fadd fast float %391, %395
  %399 = fadd fast float %392, %396
  %400 = fadd fast float %130, 1.000000e+00
  %401 = fmul fast float %129, 2.000000e+00
  %402 = fmul fast float %401, %360
  %403 = fmul fast float %400, 2.000000e+00
  %404 = fmul fast float %403, %361
  %405 = fsub fast float 1.000000e+00, %402
  %406 = fsub fast float 1.000000e+00, %404
  %407 = fmul fast float %377, %405
  %408 = fmul fast float %378, %405
  %409 = fmul fast float %379, %405
  %410 = fmul fast float %384, %406
  %411 = fmul fast float %385, %406
  %412 = fmul fast float %386, %406
  %413 = fadd fast float %410, %407
  %414 = fadd fast float %411, %408
  %415 = fadd fast float %412, %409
  %416 = fadd fast float %413, %394
  %417 = fadd fast float %414, %395
  %418 = fadd fast float %415, %396
  %419 = fmul fast float %416, %369
  %420 = fmul fast float %417, %369
  %421 = fmul fast float %418, %369
  %422 = fadd fast float %416, %397
  %423 = fmul fast float %369, %422
  %424 = fadd fast float %417, %398
  %425 = fmul fast float %369, %424
  %426 = fadd fast float %418, %399
  %427 = fmul fast float %369, %426
  %428 = fmul fast float %423, 5.000000e-01
  %429 = fmul fast float %425, 5.000000e-01
  %430 = fmul fast float %427, 5.000000e-01
  %431 = fsub fast float %428, %419
  %432 = fsub fast float %429, %420
  %433 = fsub fast float %430, %421
  %434 = call float @dx.op.dot3.f32(i32 55, float %431, float %432, float %433, float %431, float %432, float %433)  ; Dot3(ax,ay,az,bx,by,bz)
  %435 = call float @dx.op.unary.f32(i32 25, float %434)  ; Rsqrt(value)
  %436 = fmul fast float %434, 2.000000e+00
  %437 = fmul fast float %436, %435
  %438 = call float @dx.op.binary.f32(i32 35, float %206, float %437)  ; FMax(a,b)
  %439 = xor i1 %247, true
  %440 = and i32 %357, 8
  %441 = icmp ne i32 %440, 0
  %442 = and i1 %441, %439
  br i1 %442, label %443, label %659, !dx.controlflow.hints !70

; <label>:443                                     ; preds = %329
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %447 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %451 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %452 = fsub fast float %196, %449
  %453 = fsub fast float %197, %450
  %454 = fsub fast float %198, %451
  %455 = fmul fast float %452, %445
  %456 = fmul fast float %453, %446
  %457 = fmul fast float %454, %447
  %458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.i32 %458, 3
  %460 = icmp eq i32 %459, 0
  %461 = fcmp fast oge float %457, 0.000000e+00
  %462 = fcmp fast ole float %457, 1.000000e+00
  br i1 %460, label %465, label %463, !dx.controlflow.hints !71

; <label>:463                                     ; preds = %443
  %464 = and i1 %461, %462
  br label %475

; <label>:465                                     ; preds = %443
  %466 = fcmp fast oge float %455, 0.000000e+00
  %467 = fcmp fast oge float %456, 0.000000e+00
  %468 = and i1 %466, %467
  %469 = and i1 %461, %468
  %470 = fcmp fast ole float %455, 1.000000e+00
  %471 = fcmp fast ole float %456, 1.000000e+00
  %472 = and i1 %470, %471
  %473 = and i1 %462, %472
  %474 = and i1 %469, %473
  br label %475

; <label>:475                                     ; preds = %465, %463
  %476 = phi i1 [ %464, %463 ], [ %474, %465 ]
  br i1 %476, label %477, label %652, !dx.controlflow.hints !72

; <label>:477                                     ; preds = %475
  %478 = fcmp fast oeq float %438, 0.000000e+00
  br i1 %478, label %493, label %479, !dx.controlflow.hints !73

; <label>:479                                     ; preds = %477
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 3
  %482 = fmul fast float %481, %438
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 0
  %485 = extractvalue %dx.types.CBufRet.f32 %483, 1
  %486 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %487 = fmul fast float %484, %482
  %488 = fmul fast float %485, %482
  %489 = fmul fast float %486, %482
  %490 = call float @dx.op.unary.f32(i32 23, float %487)  ; Log(value)
  %491 = call float @dx.op.unary.f32(i32 23, float %488)  ; Log(value)
  %492 = call float @dx.op.unary.f32(i32 23, float %489)  ; Log(value)
  br label %493

; <label>:493                                     ; preds = %479, %477
  %494 = phi float [ %490, %479 ], [ 0.000000e+00, %477 ]
  %495 = phi float [ %491, %479 ], [ 0.000000e+00, %477 ]
  %496 = phi float [ %492, %479 ], [ 0.000000e+00, %477 ]
  %497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.i32 %497, 0
  %499 = extractvalue %dx.types.CBufRet.i32 %497, 1
  %500 = uitofp i32 %498 to float
  %501 = uitofp i32 %499 to float
  %502 = fmul fast float %455, %500
  %503 = fmul fast float %456, %501
  %504 = fadd fast float %502, 5.000000e-01
  %505 = fadd fast float %503, 5.000000e-01
  %506 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %507 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %508 = call float @dx.op.unary.f32(i32 27, float %504)  ; Round_ni(value)
  %509 = call float @dx.op.unary.f32(i32 27, float %505)  ; Round_ni(value)
  %510 = fadd fast float %508, 1.000000e+00
  %511 = fadd fast float %509, 1.000000e+00
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = fmul fast float %513, %510
  %516 = fmul fast float %514, %511
  %517 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %38, float %515, float %516, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 2
  %521 = extractvalue %dx.types.ResRet.f32 %517, 3
  %522 = extractvalue %dx.types.CBufRet.i32 %497, 2
  %523 = extractvalue %dx.types.CBufRet.f32 %512, 2
  %524 = uitofp i32 %522 to float
  %525 = fadd fast float %524, -1.000000e+00
  %526 = fmul fast float %525, %518
  %527 = fmul fast float %525, %519
  %528 = fmul fast float %525, %520
  %529 = fmul fast float %525, %521
  %530 = fadd fast float %526, 5.000000e-01
  %531 = fadd fast float %527, 5.000000e-01
  %532 = fadd fast float %528, 5.000000e-01
  %533 = fadd fast float %529, 5.000000e-01
  %534 = fptoui float %530 to i32
  %535 = fptoui float %531 to i32
  %536 = fptoui float %532 to i32
  %537 = fptoui float %533 to i32
  %538 = uitofp i32 %534 to float
  %539 = uitofp i32 %535 to float
  %540 = uitofp i32 %536 to float
  %541 = uitofp i32 %537 to float
  %542 = fadd fast float %538, 5.000000e-01
  %543 = fadd fast float %539, 5.000000e-01
  %544 = fadd fast float %540, 5.000000e-01
  %545 = fadd fast float %541, 5.000000e-01
  %546 = fmul fast float %542, %523
  %547 = fmul fast float %543, %523
  %548 = fmul fast float %544, %523
  %549 = fmul fast float %545, %523
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %546, float %457, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %547, float %457, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %548, float %457, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %549, float %457, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = fsub fast float %555, %557
  %559 = fmul fast float %558, %506
  %560 = fadd fast float %559, %557
  %561 = fsub fast float %553, %551
  %562 = fmul fast float %561, %506
  %563 = fadd fast float %562, %551
  %564 = fsub fast float %563, %560
  %565 = fmul fast float %564, %507
  %566 = fadd fast float %565, %560
  %567 = fcmp fast ogt float %566, 0.000000e+00
  br i1 %567, label %568, label %636, !dx.controlflow.hints !74

; <label>:568                                     ; preds = %493
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %571 = extractvalue %dx.types.CBufRet.f32 %569, 1
  %572 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %575 = extractvalue %dx.types.CBufRet.f32 %573, 1
  %576 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %577 = fmul fast float %453, %445
  %578 = fmul fast float %454, %445
  %579 = fadd fast float %455, %574
  %580 = fadd fast float %577, %575
  %581 = fadd fast float %578, %576
  %582 = fmul fast float %579, %570
  %583 = fmul fast float %580, %570
  %584 = fmul fast float %581, %570
  %585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %582, float %583, float %584, float undef, i32 0, i32 0, i32 0, float %494)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = fmul fast float %579, %571
  %588 = fmul fast float %580, %571
  %589 = fmul fast float %581, %571
  %590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %587, float %588, float %589, float undef, i32 0, i32 0, i32 0, float %495)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %591 = extractvalue %dx.types.ResRet.f32 %590, 1
  %592 = fmul fast float %579, %572
  %593 = fmul fast float %580, %572
  %594 = fmul fast float %581, %572
  %595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %592, float %593, float %594, float undef, i32 0, i32 0, i32 0, float %496)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 2
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %599 = fmul fast float %591, %586
  %600 = fmul fast float %599, %596
  %601 = call float @dx.op.unary.f32(i32 23, float %600)  ; Log(value)
  %602 = fmul fast float %601, %598
  %603 = call float @dx.op.unary.f32(i32 21, float %602)  ; Exp(value)
  %604 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %605 = fmul fast float %566, %566
  %606 = fmul fast float %605, %603
  %607 = fmul fast float %606, %604
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 3
  %610 = fmul fast float %609, %607
  %611 = bitcast float %610 to i32
  %612 = sitofp i32 %611 to float
  %613 = fptosi float %612 to i32
  %614 = bitcast i32 %613 to float
  %615 = fsub fast float 1.000000e+00, %607
  %616 = bitcast float %615 to i32
  %617 = sitofp i32 %616 to float
  %618 = fptosi float %617 to i32
  %619 = bitcast i32 %618 to float
  %620 = fadd fast float %614, %619
  %621 = bitcast float %620 to i32
  %622 = sub nsw i32 2129859010, %621
  %623 = bitcast i32 %622 to float
  %624 = fmul fast float %623, %614
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %629 = fmul fast float %624, %628
  %630 = fadd fast float %629, 1.000000e+00
  %631 = bitcast float %630 to i32
  %632 = sub nsw i32 2129859010, %631
  %633 = bitcast i32 %632 to float
  %634 = fmul fast float %624, %626
  %635 = fmul fast float %634, %633
  br label %636

; <label>:636                                     ; preds = %568, %493
  %637 = phi float [ %635, %568 ], [ %566, %493 ]
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 0
  %640 = extractvalue %dx.types.CBufRet.f32 %638, 1
  %641 = extractvalue %dx.types.CBufRet.f32 %638, 2
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %644 = fmul fast float %639, %637
  %645 = fmul fast float %640, %637
  %646 = fmul fast float %641, %637
  %647 = fadd fast float %644, %346
  %648 = fadd fast float %645, %347
  %649 = fadd fast float %646, %348
  %650 = fmul fast float %643, %637
  %651 = fadd fast float %650, %349
  br label %652

; <label>:652                                     ; preds = %636, %475
  %653 = phi float [ %647, %636 ], [ %346, %475 ]
  %654 = phi float [ %648, %636 ], [ %347, %475 ]
  %655 = phi float [ %649, %636 ], [ %348, %475 ]
  %656 = phi float [ %651, %636 ], [ %349, %475 ]
  %657 = phi float [ %637, %636 ], [ 0.000000e+00, %475 ]
  %658 = fadd fast float %657, %350
  br label %659

; <label>:659                                     ; preds = %652, %329
  %660 = phi float [ %653, %652 ], [ %346, %329 ]
  %661 = phi float [ %654, %652 ], [ %347, %329 ]
  %662 = phi float [ %655, %652 ], [ %348, %329 ]
  %663 = phi float [ %656, %652 ], [ %349, %329 ]
  %664 = phi float [ %658, %652 ], [ %350, %329 ]
  br i1 %247, label %1162, label %665, !dx.controlflow.hints !75

; <label>:665                                     ; preds = %659
  %666 = and i32 %357, 2
  %667 = icmp ne i32 %666, 0
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 2
  %672 = fadd fast float %671, %669
  %673 = fcmp fast ole float %198, %672
  %674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.i32 %674, 3
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %696, !dx.controlflow.hints !76

; <label>:677                                     ; preds = %665
  %678 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %679 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %680 = fsub fast float %196, %678
  %681 = fsub fast float %197, %679
  %682 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %683 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %684 = fdiv fast float 1.000000e+00, %682
  %685 = fdiv fast float 1.000000e+00, %683
  %686 = fmul fast float %680, %684
  %687 = fmul fast float %685, %681
  %688 = fcmp fast oge float %686, 0.000000e+00
  %689 = fcmp fast oge float %687, 0.000000e+00
  %690 = and i1 %688, %689
  %691 = and i1 %673, %690
  %692 = fcmp fast ole float %686, 1.000000e+00
  %693 = fcmp fast ole float %687, 1.000000e+00
  %694 = and i1 %692, %693
  %695 = and i1 %694, %691
  br label %696

; <label>:696                                     ; preds = %677, %665
  %697 = phi i1 [ %695, %677 ], [ %673, %665 ]
  %698 = and i1 %667, %697
  br i1 %698, label %699, label %878, !dx.controlflow.hints !77

; <label>:699                                     ; preds = %696
  %700 = fcmp fast oeq float %438, 0.000000e+00
  br i1 %700, label %706, label %701, !dx.controlflow.hints !78

; <label>:701                                     ; preds = %699
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 3
  %704 = fmul fast float %703, %438
  %705 = call float @dx.op.unary.f32(i32 23, float %704)  ; Log(value)
  br label %706

; <label>:706                                     ; preds = %701, %699
  %707 = phi float [ %705, %701 ], [ 0.000000e+00, %699 ]
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 0
  %710 = extractvalue %dx.types.CBufRet.f32 %708, 1
  %711 = extractvalue %dx.types.CBufRet.f32 %708, 2
  %712 = fsub fast float %196, %709
  %713 = fsub fast float %197, %710
  %714 = fsub fast float %198, %711
  %715 = fmul fast float %712, %712
  %716 = fmul fast float %713, %713
  %717 = fadd fast float %715, %716
  %718 = fmul fast float %714, %714
  %719 = fadd fast float %717, %718
  %720 = call float @dx.op.unary.f32(i32 24, float %719)  ; Sqrt(value)
  %721 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %722 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %723 = fsub fast float %196, %721
  %724 = fsub fast float %197, %722
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 0
  %727 = extractvalue %dx.types.CBufRet.f32 %725, 1
  %728 = fmul fast float %723, %726
  %729 = fmul fast float %724, %727
  %730 = fsub fast float 1.000000e+00, %729
  br i1 %676, label %737, label %731, !dx.controlflow.hints !79

; <label>:731                                     ; preds = %706
  %732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %38, float %728, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = extractvalue %dx.types.ResRet.f32 %732, 3
  br label %743

; <label>:737                                     ; preds = %706
  %738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %728, float %730, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  br label %743

; <label>:743                                     ; preds = %737, %731
  %744 = phi float [ %733, %731 ], [ %739, %737 ]
  %745 = phi float [ %734, %731 ], [ %740, %737 ]
  %746 = phi float [ %735, %731 ], [ %741, %737 ]
  %747 = phi float [ %736, %731 ], [ %742, %737 ]
  %748 = extractvalue %dx.types.CBufRet.f32 %725, 3
  %749 = fmul fast float %748, %745
  %750 = fmul fast float %749, %744
  %751 = fsub fast float %749, %750
  %752 = fcmp fast ole float %751, 0.000000e+00
  %753 = fmul fast float %748, %746
  %754 = fadd fast float %753, %669
  %755 = fdiv fast float 1.000000e+00, %751
  %756 = select i1 %752, float 1.000000e+06, float %755
  %757 = fsub fast float %198, %669
  %758 = fsub fast float %757, %750
  %759 = fmul fast float %756, %758
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = extractvalue %dx.types.CBufRet.f32 %725, 2
  %762 = fmul fast float %761, %760
  %763 = fsub fast float %761, %762
  %764 = fcmp fast olt float %198, %754
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 3
  %767 = select i1 %764, float %766, float 1.000000e+00
  %768 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %769 = fcmp fast oeq float %768, 0.000000e+00
  br i1 %769, label %852, label %770, !dx.controlflow.hints !80

; <label>:770                                     ; preds = %743
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 3
  %773 = fcmp fast ogt float %772, 0.000000e+00
  %774 = extractvalue %dx.types.CBufRet.f32 %765, 2
  br i1 %773, label %775, label %805, !dx.controlflow.hints !81

; <label>:775                                     ; preds = %770
  %776 = fmul fast float %728, %772
  %777 = fmul fast float %729, %772
  %778 = fsub fast float 1.000000e+00, %777
  %779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %36, float %776, float %778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = extractvalue %dx.types.ResRet.f32 %779, 1
  %782 = fmul fast float %780, 2.000000e+00
  %783 = fmul fast float %781, 2.000000e+00
  %784 = fadd fast float %782, -1.000000e+00
  %785 = fadd fast float %783, -1.000000e+00
  %786 = fmul fast float %768, %196
  %787 = fmul fast float %768, %197
  %788 = fmul fast float %768, %198
  %789 = call float @dx.op.unary.f32(i32 22, float %774)  ; Frc(value)
  %790 = fmul fast float %784, %789
  %791 = fmul fast float %785, %789
  %792 = fsub fast float %786, %790
  %793 = fsub fast float %787, %791
  %794 = fadd fast float %774, 5.000000e-01
  %795 = call float @dx.op.unary.f32(i32 22, float %794)  ; Frc(value)
  %796 = fmul fast float %795, %784
  %797 = fmul fast float %795, %785
  %798 = fadd fast float %786, -5.000000e-01
  %799 = fsub fast float %798, %796
  %800 = fadd fast float %787, -5.000000e-01
  %801 = fsub fast float %800, %797
  %802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %799, float %801, float %788, float undef, i32 0, i32 0, i32 0, float %707)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  %804 = extractvalue %dx.types.ResRet.f32 %802, 1
  br label %818

; <label>:805                                     ; preds = %770
  %806 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %807 = extractvalue %dx.types.CBufRet.f32 %771, 1
  %808 = extractvalue %dx.types.CBufRet.f32 %771, 2
  %809 = fmul fast float %774, %806
  %810 = fmul fast float %774, %807
  %811 = fmul fast float %774, %808
  %812 = fsub fast float %196, %809
  %813 = fsub fast float %197, %810
  %814 = fsub fast float %198, %811
  %815 = fmul fast float %812, %768
  %816 = fmul fast float %813, %768
  %817 = fmul fast float %814, %768
  br label %818

; <label>:818                                     ; preds = %805, %775
  %819 = phi float [ %792, %775 ], [ %815, %805 ]
  %820 = phi float [ %793, %775 ], [ %816, %805 ]
  %821 = phi float [ %788, %775 ], [ %817, %805 ]
  %822 = phi float [ %803, %775 ], [ 0.000000e+00, %805 ]
  %823 = phi float [ %804, %775 ], [ 0.000000e+00, %805 ]
  %824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %819, float %820, float %821, float undef, i32 0, i32 0, i32 0, float %707)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  br i1 %773, label %827, label %839, !dx.controlflow.hints !82

; <label>:827                                     ; preds = %818
  %828 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %829 = call float @dx.op.unary.f32(i32 22, float %828)  ; Frc(value)
  %830 = fmul fast float %829, 2.000000e+00
  %831 = fadd fast float %830, -1.000000e+00
  %832 = call float @dx.op.unary.f32(i32 6, float %831)  ; FAbs(value)
  %833 = fsub fast float %822, %825
  %834 = fmul fast float %832, %833
  %835 = fadd fast float %834, %825
  %836 = fsub fast float %823, %826
  %837 = fmul fast float %832, %836
  %838 = fadd fast float %837, %826
  br label %839

; <label>:839                                     ; preds = %827, %818
  %840 = phi float [ %835, %827 ], [ %825, %818 ]
  %841 = phi float [ %838, %827 ], [ %826, %818 ]
  %842 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %843 = fadd fast float %842, %842
  %844 = fdiv fast float 2.000000e+00, %843
  %845 = fmul fast float %842, 2.000000e+00
  %846 = fadd fast float %840, -1.000000e+00
  %847 = fadd fast float %846, %841
  %848 = fadd fast float %847, %845
  %849 = fmul fast float %848, %844
  %850 = fadd fast float %849, -1.000000e+00
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  br label %852

; <label>:852                                     ; preds = %839, %743
  %853 = phi float [ %851, %839 ], [ 1.000000e+00, %743 ]
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 0
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 1
  %857 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %858 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %861 = fsub fast float %720, %860
  %862 = extractvalue %dx.types.CBufRet.f32 %859, 2
  %863 = fmul fast float %861, %862
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  %865 = fmul fast float %767, %747
  %866 = fmul fast float %865, %763
  %867 = fmul fast float %866, %853
  %868 = fmul fast float %867, %864
  %869 = fmul fast float %868, %855
  %870 = fmul fast float %868, %856
  %871 = fmul fast float %868, %857
  %872 = fadd fast float %869, %660
  %873 = fadd fast float %870, %661
  %874 = fadd fast float %871, %662
  %875 = fmul fast float %868, %858
  %876 = fadd fast float %875, %663
  %877 = fadd fast float %868, %664
  br label %878

; <label>:878                                     ; preds = %852, %696
  %879 = phi float [ %872, %852 ], [ %660, %696 ]
  %880 = phi float [ %873, %852 ], [ %661, %696 ]
  %881 = phi float [ %874, %852 ], [ %662, %696 ]
  %882 = phi float [ %876, %852 ], [ %663, %696 ]
  %883 = phi float [ %877, %852 ], [ %664, %696 ]
  %884 = and i32 %357, 1
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %1162, label %886, !dx.controlflow.hints !83

; <label>:886                                     ; preds = %878
  %887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.i32 %887, 1
  %889 = and i32 %888, 1
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %966, label %891, !dx.controlflow.hints !84

; <label>:891                                     ; preds = %886
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 3
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %898 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %899 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %902 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %903 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 3
  %906 = and i32 %888, 2
  %907 = extractvalue %dx.types.CBufRet.i32 %887, 0
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %945, label %909

; <label>:909                                     ; preds = %891
  br label %910

; <label>:910                                     ; preds = %910, %909
  %911 = phi float [ %939, %910 ], [ 0.000000e+00, %909 ]
  %912 = phi float [ %938, %910 ], [ 1.000000e+06, %909 ]
  %913 = phi i32 [ %940, %910 ], [ 0, %909 ]
  %914 = add i32 %913, 171
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %914)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 0
  %917 = extractvalue %dx.types.CBufRet.f32 %915, 1
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %920 = extractvalue %dx.types.CBufRet.f32 %915, 2
  %921 = fsub fast float %196, %916
  %922 = fsub fast float %197, %917
  %923 = fmul fast float %921, %921
  %924 = fmul fast float %922, %922
  %925 = fadd fast float %923, %924
  %926 = call float @dx.op.unary.f32(i32 24, float %925)  ; Sqrt(value)
  %927 = fsub fast float %926, %920
  %928 = icmp ne i32 %906, 0
  %929 = fsub fast float -0.000000e+00, %896
  %930 = select i1 %928, float %929, float %896
  %931 = fmul fast float %927, %930
  %932 = call float @dx.op.unary.f32(i32 7, float %931)  ; Saturate(value)
  %933 = fmul fast float %932, %895
  %934 = fsub fast float %919, %198
  %935 = fmul fast float %934, %893
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %937 = fmul fast float %933, %936
  %938 = call float @dx.op.binary.f32(i32 36, float %912, float %927)  ; FMin(a,b)
  %939 = call float @dx.op.binary.f32(i32 35, float %911, float %937)  ; FMax(a,b)
  %940 = add nuw nsw i32 %913, 1
  %941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.i32 %941, 0
  %943 = icmp ult i32 %940, %942
  br i1 %943, label %910, label %944

; <label>:944                                     ; preds = %910
  br label %945

; <label>:945                                     ; preds = %944, %891
  %946 = phi float [ 0.000000e+00, %891 ], [ %939, %944 ]
  %947 = phi float [ 1.000000e+06, %891 ], [ %938, %944 ]
  %948 = fadd fast float %946, %883
  %949 = fmul fast float %947, %905
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  %951 = fsub fast float %901, %897
  %952 = fsub fast float %902, %898
  %953 = fsub fast float %903, %899
  %954 = fmul fast float %950, %951
  %955 = fmul fast float %950, %952
  %956 = fmul fast float %950, %953
  %957 = fadd fast float %954, %897
  %958 = fadd fast float %955, %898
  %959 = fadd fast float %956, %899
  %960 = fmul fast float %957, %946
  %961 = fmul fast float %958, %946
  %962 = fmul fast float %959, %946
  %963 = fadd fast float %960, %879
  %964 = fadd fast float %961, %880
  %965 = fadd fast float %962, %881
  br label %1162

; <label>:966                                     ; preds = %886
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %970 = fmul fast float %968, %196
  %971 = fmul fast float %969, %197
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = extractvalue %dx.types.CBufRet.f32 %972, 1
  %975 = fadd fast float %970, %973
  %976 = fadd fast float %971, %974
  %977 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  %978 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %39, float %977, float %978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %980 = extractvalue %dx.types.ResRet.f32 %979, 0
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = fmul fast float %982, %980
  %984 = fsub fast float %975, %977
  %985 = fsub fast float %976, %978
  %986 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %987 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %988 = fmul fast float %986, %984
  %989 = fmul fast float %987, %985
  %990 = fmul fast float %988, %988
  %991 = fmul fast float %989, %989
  %992 = fadd fast float %990, %991
  %993 = call float @dx.op.unary.f32(i32 24, float %992)  ; Sqrt(value)
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 3
  %996 = fmul fast float %995, %993
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %998 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %999 = fsub fast float %998, %983
  %1000 = fmul fast float %999, %997
  %1001 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %1002 = fsub fast float %198, %983
  %1003 = fsub fast float %1002, %1001
  %1004 = fsub fast float %1003, %1000
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1007 = fsub fast float %1004, %1006
  %1008 = fcmp fast olt float %1007, 0.000000e+00
  %1009 = extractvalue %dx.types.CBufRet.i32 %887, 0
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1061, label %1011

; <label>:1011                                    ; preds = %966
  br label %1012

; <label>:1012                                    ; preds = %1050, %1011
  %1013 = phi i32 [ %1056, %1050 ], [ 1, %1011 ]
  %1014 = phi i32 [ %1057, %1050 ], [ 0, %1011 ]
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 1
  %1017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.i32 %1017, 1
  %1019 = and i32 %1018, 8
  %1020 = icmp eq i32 %1019, 0
  %1021 = fcmp fast ogt float %1016, %1004
  %1022 = or i1 %1021, %1020
  %1023 = add i32 %1014, 171
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %1023)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.CBufRet.f32 %1024, 2
  br i1 %1022, label %1028, label %1034, !dx.controlflow.hints !85

; <label>:1028                                    ; preds = %1012
  %1029 = fsub fast float %1025, %196
  %1030 = fsub fast float %1026, %197
  %1031 = fmul fast float %1029, %1029
  %1032 = fmul fast float %1030, %1030
  %1033 = fadd fast float %1031, %1032
  br label %1050

; <label>:1034                                    ; preds = %1012
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1037 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1038 = fmul fast float %1037, %1036
  %1039 = fsub fast float %1038, %1016
  %1040 = fdiv fast float %1027, %1039
  %1041 = fsub fast float %196, %1025
  %1042 = fsub fast float %197, %1026
  %1043 = fsub fast float %1004, %1016
  %1044 = fmul fast float %1040, %1043
  %1045 = fmul fast float %1041, %1041
  %1046 = fmul fast float %1042, %1042
  %1047 = fadd fast float %1045, %1046
  %1048 = fmul fast float %1044, %1044
  %1049 = fadd fast float %1047, %1048
  br label %1050

; <label>:1050                                    ; preds = %1034, %1028
  %1051 = phi float [ %1033, %1028 ], [ %1049, %1034 ]
  %1052 = call float @dx.op.unary.f32(i32 24, float %1051)  ; Sqrt(value)
  %1053 = fsub float %1027, %1052
  %1054 = fcmp fast olt float %1053, 0.000000e+00
  %1055 = zext i1 %1054 to i32
  %1056 = and i32 %1055, %1013
  %1057 = add i32 %1014, 1
  %1058 = extractvalue %dx.types.CBufRet.i32 %1017, 0
  %1059 = icmp ult i32 %1057, %1058
  br i1 %1059, label %1012, label %1060

; <label>:1060                                    ; preds = %1050
  br label %1061

; <label>:1061                                    ; preds = %1060, %966
  %1062 = phi i32 [ 1, %966 ], [ %1056, %1060 ]
  br label %1063

; <label>:1063                                    ; preds = %1063, %1061
  %1064 = phi i32 [ %1100, %1063 ], [ %1062, %1061 ]
  %1065 = phi i32 [ %1101, %1063 ], [ 0, %1061 ]
  %1066 = add nuw nsw i32 %1065, 191
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %1066)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.CBufRet.f32 %1067, 1
  %1070 = extractvalue %dx.types.CBufRet.f32 %1067, 2
  %1071 = add nuw nsw i32 %1065, 195
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %1071)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.CBufRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.CBufRet.f32 %1072, 2
  %1076 = fsub fast float %196, %1068
  %1077 = fsub fast float %197, %1069
  %1078 = fsub fast float %1004, %1070
  %1079 = call float @dx.op.unary.f32(i32 6, float %1076)  ; FAbs(value)
  %1080 = call float @dx.op.unary.f32(i32 6, float %1077)  ; FAbs(value)
  %1081 = call float @dx.op.unary.f32(i32 6, float %1078)  ; FAbs(value)
  %1082 = fsub fast float %1079, %1073
  %1083 = fsub fast float %1080, %1074
  %1084 = fsub fast float %1081, %1075
  %1085 = call float @dx.op.binary.f32(i32 35, float %1082, float 0.000000e+00)  ; FMax(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1083, float 0.000000e+00)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 35, float %1084, float 0.000000e+00)  ; FMax(a,b)
  %1088 = fmul fast float %1085, %1085
  %1089 = fmul fast float %1086, %1086
  %1090 = fadd fast float %1089, %1088
  %1091 = fmul fast float %1087, %1087
  %1092 = fadd fast float %1090, %1091
  %1093 = call float @dx.op.unary.f32(i32 24, float %1092)  ; Sqrt(value)
  %1094 = call float @dx.op.binary.f32(i32 35, float %1083, float %1084)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float %1082, float %1094)  ; FMax(a,b)
  %1096 = call float @dx.op.binary.f32(i32 36, float %1095, float 0.000000e+00)  ; FMin(a,b)
  %1097 = fadd fast float %1096, %1093
  %1098 = fcmp ogt float %1097, -0.000000e+00
  %1099 = zext i1 %1098 to i32
  %1100 = and i32 %1099, %1064
  %1101 = add nuw nsw i32 %1065, 1
  %1102 = icmp eq i32 %1101, 4
  br i1 %1102, label %1103, label %1063

; <label>:1103                                    ; preds = %1063
  %1104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.i32 %1104, 1
  %1106 = lshr i32 %1105, 1
  %1107 = xor i32 %1106, %1100
  %1108 = zext i1 %1008 to i32
  %1109 = and i32 %1107, %1108
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1162, label %1111, !dx.controlflow.hints !86

; <label>:1111                                    ; preds = %1103
  %1112 = fmul fast float %189, %189
  %1113 = fmul fast float %190, %190
  %1114 = fadd fast float %1112, %1113
  %1115 = fmul fast float %191, %191
  %1116 = fadd fast float %1114, %1115
  %1117 = call float @dx.op.unary.f32(i32 24, float %1116)  ; Sqrt(value)
  %1118 = and i32 %888, 4
  %1119 = icmp ne i32 %1118, 0
  %1120 = select i1 %1119, float %1117, float 1.000000e+00
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1123 = fsub fast float %1120, %1122
  %1124 = extractvalue %dx.types.CBufRet.f32 %1121, 3
  %1125 = fmul fast float %1123, %1124
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 2
  %1131 = fsub fast float %1130, %1004
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 3
  %1134 = fmul fast float %1131, %1133
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fmul fast float %1135, %1128
  %1137 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1138 = fsub fast float %1117, %1137
  %1139 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1140 = fmul fast float %1138, %1139
  %1141 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1142 = fsub fast float 1.000000e+00, %1126
  %1143 = fmul fast float %1141, %1142
  %1144 = fadd fast float %1143, %1126
  %1145 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1146 = fsub fast float %1136, %1145
  %1147 = fmul fast float %1146, %1144
  %1148 = fadd fast float %1147, %1145
  %1149 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1150 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1151 = extractvalue %dx.types.CBufRet.f32 %1127, 2
  %1152 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1153 = fadd fast float %1148, %883
  %1154 = fmul fast float %1148, %1149
  %1155 = fmul fast float %1148, %1150
  %1156 = fmul fast float %1148, %1151
  %1157 = fadd fast float %1154, %879
  %1158 = fadd fast float %1155, %880
  %1159 = fadd fast float %1156, %881
  %1160 = fmul fast float %1148, %1152
  %1161 = fadd fast float %1160, %882
  br label %1162

; <label>:1162                                    ; preds = %1111, %1103, %945, %878, %659
  %1163 = phi float [ %660, %659 ], [ %879, %878 ], [ %963, %945 ], [ %1157, %1111 ], [ %879, %1103 ]
  %1164 = phi float [ %661, %659 ], [ %880, %878 ], [ %964, %945 ], [ %1158, %1111 ], [ %880, %1103 ]
  %1165 = phi float [ %662, %659 ], [ %881, %878 ], [ %965, %945 ], [ %1159, %1111 ], [ %881, %1103 ]
  %1166 = phi float [ %663, %659 ], [ %882, %878 ], [ %882, %945 ], [ %1161, %1111 ], [ %882, %1103 ]
  %1167 = phi float [ %664, %659 ], [ %883, %878 ], [ %948, %945 ], [ %1153, %1111 ], [ %883, %1103 ]
  %1168 = and i32 %357, 32
  %1169 = icmp ne i32 %1168, 0
  %1170 = and i1 %247, %1169
  br i1 %1170, label %1171, label %1213, !dx.controlflow.hints !87

; <label>:1171                                    ; preds = %1162
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1176 = fsub fast float %196, %1173
  %1177 = fadd fast float %1176, %1175
  %1178 = fsub fast float %197, %1174
  %1179 = fadd fast float %1178, %1175
  %1180 = extractvalue %dx.types.CBufRet.f32 %1172, 3
  %1181 = fmul fast float %1177, %1180
  %1182 = fmul fast float %1179, %1180
  %1183 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1184 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1185 = fsub fast float 1.000000e+00, %1183
  %1186 = fsub fast float 1.000000e+00, %1184
  %1187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %1185, float %1186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.ResRet.f32 %1187, 1
  %1190 = extractvalue %dx.types.ResRet.f32 %1187, 2
  %1191 = fmul fast float %1188, 0x3F847AE140000000
  %1192 = fmul fast float %1189, 0x3F847AE140000000
  %1193 = fmul fast float %1190, 0x3F847AE140000000
  %1194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %1185, float %1186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %1185, float %1186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = call float @dx.op.dot3.f32(i32 55, float %1191, float %1192, float %1193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1201 = fadd fast float %1195, %1188
  %1202 = fmul fast float %1201, 0x3F847AE140000000
  %1203 = fadd fast float %1196, %1189
  %1204 = fmul fast float %1203, 0x3F847AE140000000
  %1205 = fadd fast float %1197, %1190
  %1206 = fmul fast float %1205, 0x3F847AE140000000
  %1207 = fadd fast float %1200, %1167
  %1208 = fadd fast float %1191, %1163
  %1209 = fadd fast float %1192, %1164
  %1210 = fadd fast float %1193, %1165
  %1211 = fmul fast float %1199, %1200
  %1212 = fadd fast float %1211, %1166
  br label %1213

; <label>:1213                                    ; preds = %1171, %1162
  %1214 = phi float [ %1208, %1171 ], [ %1163, %1162 ]
  %1215 = phi float [ %1209, %1171 ], [ %1164, %1162 ]
  %1216 = phi float [ %1210, %1171 ], [ %1165, %1162 ]
  %1217 = phi float [ %1212, %1171 ], [ %1166, %1162 ]
  %1218 = phi float [ %1207, %1171 ], [ %1167, %1162 ]
  %1219 = phi float [ %1202, %1171 ], [ 0.000000e+00, %1162 ]
  %1220 = phi float [ %1204, %1171 ], [ 0.000000e+00, %1162 ]
  %1221 = phi float [ %1206, %1171 ], [ 0.000000e+00, %1162 ]
  %1222 = and i32 %357, 16
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %2015, label %1224, !dx.controlflow.hints !88

; <label>:1224                                    ; preds = %1213
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.CBufRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.CBufRet.f32 %1225, 2
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 3
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 3
  %1235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.i32 %1235, 0
  %1237 = icmp ne i32 %1236, 0
  %1238 = zext i1 %1237 to i32
  %1239 = extractvalue %dx.types.CBufRet.i32 %1235, 1
  %1240 = icmp ne i32 %1239, 0
  %1241 = zext i1 %1240 to i32
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1244 = bitcast float %1243 to i32
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1295, label %1246

; <label>:1246                                    ; preds = %1224
  br label %1247

; <label>:1247                                    ; preds = %1290, %1246
  %1248 = phi i32 [ %1291, %1290 ], [ 0, %1246 ]
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1251 = bitcast float %1250 to i32
  %1252 = call i32 @dx.op.tertiary.i32(i32 49, i32 %355, i32 %1251, i32 %1248)  ; UMad(a,b,c)
  %1253 = shl i32 %1252, 2
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  br label %1256

; <label>:1256                                    ; preds = %1259, %1247
  %1257 = phi i32 [ %1255, %1247 ], [ %1264, %1259 ]
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %1290, label %1259

; <label>:1259                                    ; preds = %1256
  %1260 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1257)  ; FirstbitLo(value)
  %1261 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1248, i32 %1260)  ; UMad(a,b,c)
  %1262 = and i32 %1260, 31
  %1263 = shl i32 1, %1262
  %1264 = xor i32 %1263, %1257
  %1265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1261, i32 0)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.ResRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.ResRet.f32 %1265, 2
  %1269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1261, i32 16)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = fsub fast float %1266, %1270
  %1274 = fsub fast float %1267, %1271
  %1275 = fsub fast float %1268, %1272
  %1276 = fadd fast float %1270, %1266
  %1277 = fadd fast float %1271, %1267
  %1278 = fadd fast float %1272, %1268
  %1279 = fcmp fast ogt float %196, %1273
  %1280 = fcmp fast ogt float %197, %1274
  %1281 = fcmp fast ogt float %198, %1275
  %1282 = and i1 %1279, %1280
  %1283 = and i1 %1281, %1282
  %1284 = fcmp fast olt float %196, %1276
  %1285 = fcmp fast olt float %197, %1277
  %1286 = fcmp fast olt float %198, %1278
  %1287 = and i1 %1284, %1285
  %1288 = and i1 %1286, %1287
  %1289 = and i1 %1283, %1288
  br i1 %1289, label %1293, label %1256, !dx.controlflow.hints !89

; <label>:1290                                    ; preds = %1256
  %1291 = add i32 %1248, 1
  %1292 = icmp ult i32 %1291, %1251
  br i1 %1292, label %1247, label %1294, !llvm.loop !90

; <label>:1293                                    ; preds = %1259
  br label %1295

; <label>:1294                                    ; preds = %1290
  br label %1295

; <label>:1295                                    ; preds = %1294, %1293, %1224
  %1296 = phi i32 [ 255, %1224 ], [ %1261, %1293 ], [ 255, %1294 ]
  %1297 = icmp eq i32 %1296, 255
  br i1 %1297, label %1317, label %1298, !dx.controlflow.hints !92

; <label>:1298                                    ; preds = %1295
  %1299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 32)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 132)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.f32 %1303, 0
  %1305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 136)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 152)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1296, i32 156)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1296, i32 160)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = icmp ne i32 %1310, 0
  %1314 = zext i1 %1313 to i32
  %1315 = icmp ne i32 %1312, 0
  %1316 = zext i1 %1315 to i32
  br label %1317

; <label>:1317                                    ; preds = %1298, %1295
  %1318 = phi float [ %1300, %1298 ], [ %1226, %1295 ]
  %1319 = phi float [ %1301, %1298 ], [ %1227, %1295 ]
  %1320 = phi float [ %1302, %1298 ], [ %1228, %1295 ]
  %1321 = phi float [ %1304, %1298 ], [ %1230, %1295 ]
  %1322 = phi float [ %1306, %1298 ], [ %1232, %1295 ]
  %1323 = phi float [ %1308, %1298 ], [ %1234, %1295 ]
  %1324 = phi i32 [ %1314, %1298 ], [ %1238, %1295 ]
  %1325 = phi i32 [ %1316, %1298 ], [ %1241, %1295 ]
  %1326 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1327 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1328 = fsub fast float %196, %1326
  %1329 = fsub fast float %197, %1327
  %1330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1331 = extractvalue %dx.types.CBufRet.f32 %1330, 2
  %1332 = extractvalue %dx.types.CBufRet.f32 %1330, 3
  %1333 = fmul fast float %1328, %1331
  %1334 = fmul fast float %1329, %1332
  %1335 = call float @dx.op.binary.f32(i32 36, float %1333, float %1334)  ; FMin(a,b)
  %1336 = fcmp fast olt float %1335, 0.000000e+00
  %1337 = call float @dx.op.binary.f32(i32 35, float %1333, float %1334)  ; FMax(a,b)
  %1338 = fcmp fast ogt float %1337, 1.000000e+00
  %1339 = or i1 %1336, %1338
  %1340 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1341 = fcmp fast olt float %198, %1340
  %1342 = or i1 %1339, %1341
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 3
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  %1347 = fadd fast float %1346, %1344
  %1348 = fcmp fast ogt float %198, %1347
  %1349 = or i1 %1342, %1348
  br i1 %1349, label %1634, label %1350, !dx.controlflow.hints !93

; <label>:1350                                    ; preds = %1317
  %1351 = fsub fast float 1.000000e+00, %1334
  %1352 = extractvalue %dx.types.CBufRet.f32 %1345, 3
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 3
  %1355 = extractvalue %dx.types.CBufRet.f32 %1353, 2
  %1356 = extractvalue %dx.types.CBufRet.f32 %1353, 1
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.CBufRet.f32 %1357, 2
  %1361 = extractvalue %dx.types.CBufRet.f32 %1353, 0
  br i1 %1297, label %1377, label %1362, !dx.controlflow.hints !94

; <label>:1362                                    ; preds = %1350
  %1363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 48)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.ResRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1363, 2
  %1367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 104)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 108)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.f32 %1369, 0
  %1371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 112)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 116)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 120)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  br label %1377

; <label>:1377                                    ; preds = %1362, %1350
  %1378 = phi float [ %1370, %1362 ], [ %1352, %1350 ]
  %1379 = phi float [ %1374, %1362 ], [ %1354, %1350 ]
  %1380 = phi float [ %1376, %1362 ], [ %1355, %1350 ]
  %1381 = phi float [ %1372, %1362 ], [ %1356, %1350 ]
  %1382 = phi float [ %1364, %1362 ], [ %1358, %1350 ]
  %1383 = phi float [ %1365, %1362 ], [ %1359, %1350 ]
  %1384 = phi float [ %1366, %1362 ], [ %1360, %1350 ]
  %1385 = phi float [ %1368, %1362 ], [ %1361, %1350 ]
  %1386 = fcmp fast oeq float %1378, 0.000000e+00
  br i1 %1386, label %1502, label %1387, !dx.controlflow.hints !95

; <label>:1387                                    ; preds = %1377
  %1388 = fcmp fast ogt float %1379, 0.000000e+00
  %1389 = fcmp fast oeq float %438, 0.000000e+00
  br i1 %1389, label %1394, label %1390, !dx.controlflow.hints !78

; <label>:1390                                    ; preds = %1387
  %1391 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1392 = fmul fast float %1391, %438
  %1393 = call float @dx.op.unary.f32(i32 23, float %1392)  ; Log(value)
  br label %1394

; <label>:1394                                    ; preds = %1390, %1387
  %1395 = phi float [ %1393, %1390 ], [ 0.000000e+00, %1387 ]
  br i1 %1389, label %1400, label %1396, !dx.controlflow.hints !78

; <label>:1396                                    ; preds = %1394
  %1397 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1398 = fmul fast float %1397, %438
  %1399 = call float @dx.op.unary.f32(i32 23, float %1398)  ; Log(value)
  br label %1400

; <label>:1400                                    ; preds = %1396, %1394
  %1401 = phi float [ %1399, %1396 ], [ 0.000000e+00, %1394 ]
  br i1 %1388, label %1402, label %1464, !dx.controlflow.hints !96

; <label>:1402                                    ; preds = %1400
  %1403 = fcmp fast ogt float %1380, 0.000000e+00
  br i1 %1403, label %1404, label %1414, !dx.controlflow.hints !97

; <label>:1404                                    ; preds = %1402
  %1405 = fmul fast float %1380, %1333
  %1406 = fmul fast float %1380, %1351
  %1407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %36, float %1405, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float %1401)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.ResRet.f32 %1407, 1
  %1410 = fmul fast float %1408, 2.000000e+00
  %1411 = fmul fast float %1409, 2.000000e+00
  %1412 = fadd fast float %1410, -1.000000e+00
  %1413 = fadd fast float %1411, -1.000000e+00
  br label %1435

; <label>:1414                                    ; preds = %1402
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 3
  %1417 = fmul fast float %1416, %1333
  %1418 = fmul fast float %1416, %1351
  %1419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1417, float %1418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.ResRet.f32 %1419, 2
  %1423 = fmul fast float %1420, 2.000000e+00
  %1424 = fmul fast float %1421, 2.000000e+00
  %1425 = fmul fast float %1422, 2.000000e+00
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = extractvalue %dx.types.CBufRet.f32 %1345, 1
  %1430 = fmul fast float %1426, %1429
  %1431 = fmul fast float %1427, %1429
  %1432 = extractvalue %dx.types.CBufRet.f32 %1345, 2
  %1433 = fmul fast float %1432, 5.000000e-01
  %1434 = fmul fast float %1433, %1428
  br label %1435

; <label>:1435                                    ; preds = %1414, %1404
  %1436 = phi float [ %1412, %1404 ], [ %1430, %1414 ]
  %1437 = phi float [ %1413, %1404 ], [ %1431, %1414 ]
  %1438 = phi float [ 0.000000e+00, %1404 ], [ %1434, %1414 ]
  %1439 = fmul fast float %1378, %196
  %1440 = fmul fast float %1378, %197
  %1441 = fmul fast float %1378, %198
  %1442 = call float @dx.op.unary.f32(i32 22, float %1379)  ; Frc(value)
  %1443 = fmul fast float %1442, %1436
  %1444 = fmul fast float %1442, %1437
  %1445 = fmul fast float %1442, %1438
  %1446 = fsub fast float %1439, %1443
  %1447 = fsub fast float %1440, %1444
  %1448 = fsub fast float %1441, %1445
  %1449 = fadd fast float %1379, 5.000000e-01
  %1450 = call float @dx.op.unary.f32(i32 22, float %1449)  ; Frc(value)
  %1451 = fmul fast float %1450, %1436
  %1452 = fmul fast float %1450, %1437
  %1453 = fmul fast float %1450, %1438
  %1454 = fadd fast float %1439, -5.000000e-01
  %1455 = fsub fast float %1454, %1451
  %1456 = fadd fast float %1440, -5.000000e-01
  %1457 = fsub fast float %1456, %1452
  %1458 = fadd fast float %1441, -5.000000e-01
  %1459 = fsub fast float %1458, %1453
  %1460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %1455, float %1457, float %1459, float undef, i32 0, i32 0, i32 0, float %1395)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.ResRet.f32 %1460, 1
  %1463 = fadd fast float %1461, %1381
  br label %1474

; <label>:1464                                    ; preds = %1400
  %1465 = fmul fast float %1385, %1382
  %1466 = fmul fast float %1385, %1383
  %1467 = fmul fast float %1385, %1384
  %1468 = fsub fast float %196, %1465
  %1469 = fsub fast float %197, %1466
  %1470 = fsub fast float %198, %1467
  %1471 = fmul fast float %1468, %1378
  %1472 = fmul fast float %1469, %1378
  %1473 = fmul fast float %1470, %1378
  br label %1474

; <label>:1474                                    ; preds = %1464, %1435
  %1475 = phi float [ %1446, %1435 ], [ %1471, %1464 ]
  %1476 = phi float [ %1447, %1435 ], [ %1472, %1464 ]
  %1477 = phi float [ %1448, %1435 ], [ %1473, %1464 ]
  %1478 = phi float [ %1463, %1435 ], [ 0.000000e+00, %1464 ]
  %1479 = phi float [ %1462, %1435 ], [ 0.000000e+00, %1464 ]
  %1480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %1475, float %1476, float %1477, float undef, i32 0, i32 0, i32 0, float %1395)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = extractvalue %dx.types.ResRet.f32 %1480, 1
  %1483 = fadd fast float %1481, %1381
  br i1 %1388, label %1484, label %1495, !dx.controlflow.hints !98

; <label>:1484                                    ; preds = %1474
  %1485 = call float @dx.op.unary.f32(i32 22, float %1379)  ; Frc(value)
  %1486 = fmul fast float %1485, 2.000000e+00
  %1487 = fadd fast float %1486, -1.000000e+00
  %1488 = call float @dx.op.unary.f32(i32 6, float %1487)  ; FAbs(value)
  %1489 = fsub fast float %1478, %1483
  %1490 = fmul fast float %1488, %1489
  %1491 = fadd fast float %1490, %1483
  %1492 = fsub fast float %1479, %1482
  %1493 = fmul fast float %1488, %1492
  %1494 = fadd fast float %1493, %1482
  br label %1495

; <label>:1495                                    ; preds = %1484, %1474
  %1496 = phi float [ %1491, %1484 ], [ %1483, %1474 ]
  %1497 = phi float [ %1494, %1484 ], [ %1482, %1474 ]
  %1498 = fsub fast float %1496, %1497
  %1499 = fsub fast float 1.000000e+00, %1497
  %1500 = fdiv fast float %1498, %1499
  %1501 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  br label %1502

; <label>:1502                                    ; preds = %1495, %1377
  %1503 = phi float [ %1501, %1495 ], [ 1.000000e+00, %1377 ]
  %1504 = fcmp fast oeq float %438, 0.000000e+00
  br i1 %1504, label %1509, label %1505, !dx.controlflow.hints !78

; <label>:1505                                    ; preds = %1502
  %1506 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1507 = fmul fast float %1506, %438
  %1508 = call float @dx.op.unary.f32(i32 23, float %1507)  ; Log(value)
  br label %1509

; <label>:1509                                    ; preds = %1505, %1502
  %1510 = phi float [ %1508, %1505 ], [ 0.000000e+00, %1502 ]
  %1511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %37, float %1333, float %1351, float undef, float undef, i32 0, i32 0, i32 undef, float %1510)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %39, float %1333, float %1351, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.ResRet.f32 %1513, 2
  %1517 = extractvalue %dx.types.ResRet.f32 %1513, 3
  %1518 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %39, float %1333, float %1351, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.ResRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.ResRet.f32 %1518, 2
  %1522 = extractvalue %dx.types.ResRet.f32 %1518, 3
  %1523 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %39, float %1333, float %1351, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1524 = extractvalue %dx.types.ResRet.f32 %1523, 0
  %1525 = extractvalue %dx.types.ResRet.f32 %1523, 1
  %1526 = extractvalue %dx.types.ResRet.f32 %1523, 2
  %1527 = extractvalue %dx.types.ResRet.f32 %1523, 3
  %1528 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %39, float %1333, float %1351, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 0
  %1530 = extractvalue %dx.types.ResRet.f32 %1528, 1
  %1531 = extractvalue %dx.types.ResRet.f32 %1528, 2
  %1532 = extractvalue %dx.types.ResRet.f32 %1528, 3
  %1533 = fadd fast float %1514, %1515
  %1534 = fadd fast float %1533, %1516
  %1535 = fadd fast float %1534, %1517
  %1536 = fmul fast float %1519, %1514
  %1537 = fmul fast float %1520, %1515
  %1538 = fadd fast float %1536, %1537
  %1539 = fmul fast float %1521, %1516
  %1540 = fadd fast float %1538, %1539
  %1541 = fmul fast float %1522, %1517
  %1542 = fadd fast float %1540, %1541
  %1543 = fmul fast float %1524, %1514
  %1544 = fmul fast float %1525, %1515
  %1545 = fadd fast float %1543, %1544
  %1546 = fmul fast float %1526, %1516
  %1547 = fadd fast float %1545, %1546
  %1548 = fmul fast float %1527, %1517
  %1549 = fadd fast float %1547, %1548
  %1550 = fmul fast float %1529, %1514
  %1551 = fmul fast float %1530, %1515
  %1552 = fadd fast float %1550, %1551
  %1553 = fmul fast float %1531, %1516
  %1554 = fadd fast float %1552, %1553
  %1555 = fmul fast float %1532, %1517
  %1556 = fadd fast float %1554, %1555
  %1557 = fcmp fast ogt float %1535, 0.000000e+00
  %1558 = fdiv fast float %1542, %1535
  %1559 = select i1 %1557, float %1558, float 0.000000e+00
  %1560 = fdiv fast float %1549, %1535
  %1561 = select i1 %1557, float %1560, float 0.000000e+00
  %1562 = fdiv fast float %1556, %1535
  %1563 = select i1 %1557, float %1562, float 0.000000e+00
  %1564 = fcmp fast ogt float %198, %1561
  %1565 = fcmp fast olt float %198, %1559
  %1566 = and i1 %1565, %1564
  br i1 %1566, label %1567, label %1634, !dx.controlflow.hints !99

; <label>:1567                                    ; preds = %1509
  %1568 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 2
  %1571 = extractvalue %dx.types.CBufRet.f32 %1569, 3
  br i1 %1297, label %1582, label %1572, !dx.controlflow.hints !100

; <label>:1572                                    ; preds = %1567
  %1573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 60)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 64)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.f32 %1575, 0
  %1577 = extractvalue %dx.types.ResRet.f32 %1575, 1
  %1578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 72)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.f32 %1578, 0
  %1580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 96)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.f32 %1580, 0
  br label %1582

; <label>:1582                                    ; preds = %1572, %1567
  %1583 = phi float [ %1574, %1572 ], [ %1346, %1567 ]
  %1584 = phi float [ %1579, %1572 ], [ %1344, %1567 ]
  %1585 = phi float [ %1581, %1572 ], [ %1568, %1567 ]
  %1586 = phi float [ %1576, %1572 ], [ %1570, %1567 ]
  %1587 = phi float [ %1577, %1572 ], [ %1571, %1567 ]
  %1588 = call float @dx.op.binary.f32(i32 35, float %1512, float 0.000000e+00)  ; FMax(a,b)
  %1589 = call float @dx.op.binary.f32(i32 36, float %1588, float 1.000000e+00)  ; FMin(a,b)
  %1590 = call float @dx.op.unary.f32(i32 24, float %1589)  ; Sqrt(value)
  %1591 = call float @dx.op.binary.f32(i32 35, float %1563, float 0x3F847AE140000000)  ; FMax(a,b)
  %1592 = fsub fast float %1559, %198
  %1593 = fsub fast float %198, %1561
  %1594 = call float @dx.op.binary.f32(i32 36, float %1593, float %1592)  ; FMin(a,b)
  %1595 = fdiv fast float %1594, %1591
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = fsub fast float %198, %1584
  %1598 = fdiv fast float %1597, %1583
  %1599 = call float @dx.op.unary.f32(i32 7, float %1598)  ; Saturate(value)
  %1600 = fsub fast float 1.000000e+00, %1599
  %1601 = fmul float %1596, %1600
  %1602 = fmul float %1601, %1601
  %1603 = fmul fast float %1590, %1503
  %1604 = fmul fast float %1603, %1602
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 2
  %1607 = extractvalue %dx.types.CBufRet.f32 %1605, 1
  %1608 = fsub fast float %1604, %1607
  %1609 = fsub fast float %1606, %1607
  %1610 = fdiv fast float %1608, %1609
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1612 = fmul fast float %1611, %1585
  %1613 = fcmp fast ogt float %1587, 0.000000e+00
  br i1 %1613, label %1614, label %1634, !dx.controlflow.hints !101

; <label>:1614                                    ; preds = %1582
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 0
  %1617 = extractvalue %dx.types.CBufRet.f32 %1615, 1
  %1618 = extractvalue %dx.types.CBufRet.f32 %1615, 2
  %1619 = fsub fast float %196, %1616
  %1620 = fsub fast float %197, %1617
  %1621 = fsub fast float %198, %1618
  %1622 = fmul fast float %1619, %1619
  %1623 = fmul fast float %1620, %1620
  %1624 = fadd fast float %1622, %1623
  %1625 = fmul fast float %1621, %1621
  %1626 = fadd fast float %1624, %1625
  %1627 = call float @dx.op.unary.f32(i32 24, float %1626)  ; Sqrt(value)
  %1628 = fsub fast float %1627, %1586
  %1629 = fsub fast float %1587, %1586
  %1630 = fdiv fast float %1628, %1629
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = fmul fast float %1631, %1631
  %1633 = fmul fast float %1632, %1612
  br label %1634

; <label>:1634                                    ; preds = %1614, %1582, %1509, %1317
  %1635 = phi float [ 0.000000e+00, %1317 ], [ 0.000000e+00, %1509 ], [ %1633, %1614 ], [ %1612, %1582 ]
  %1636 = fcmp fast oeq float %1635, 0.000000e+00
  br i1 %1636, label %2015, label %1637, !dx.controlflow.hints !102

; <label>:1637                                    ; preds = %1634
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1641 = extractvalue %dx.types.CBufRet.f32 %1638, 2
  %1642 = fsub fast float %196, %1639
  %1643 = fadd fast float %1642, %1641
  %1644 = fsub fast float %197, %1640
  %1645 = fadd fast float %1644, %1641
  %1646 = extractvalue %dx.types.CBufRet.f32 %1638, 3
  %1647 = fmul fast float %1643, %1646
  %1648 = fmul fast float %1645, %1646
  %1649 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1650 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1651 = fsub fast float 1.000000e+00, %1649
  %1652 = fsub fast float 1.000000e+00, %1650
  %1653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %39, float %1651, float %1652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1654 = extractvalue %dx.types.ResRet.f32 %1653, 0
  %1655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1655, 2
  %1657 = fmul fast float %1656, %1654
  %1658 = extractvalue %dx.types.CBufRet.f32 %1655, 3
  %1659 = fadd fast float %1658, %1657
  %1660 = fcmp fast ogt float %1654, 0.000000e+00
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = and i32 %1662, 32768
  %1664 = icmp ne i32 %1663, 0
  %1665 = and i1 %1660, %1664
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 3
  %1668 = fadd fast float %1667, %1659
  %1669 = fcmp fast ole float %198, %1668
  %1670 = and i1 %1665, %1669
  %1671 = xor i1 %1670, true
  %1672 = icmp ne i32 %1324, 0
  %1673 = and i1 %1672, %1671
  %1674 = icmp ne i32 %1325, 0
  %1675 = and i1 %1674, %1670
  %1676 = or i1 %1673, %1675
  br i1 %1676, label %2015, label %1677, !dx.controlflow.hints !103

; <label>:1677                                    ; preds = %1637
  %1678 = fsub fast float %198, %1659
  %1679 = call float @dx.op.unary.f32(i32 6, float %1678)  ; FAbs(value)
  %1680 = fdiv fast float %1679, %1323
  %1681 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1682 = fmul fast float %1681, %1635
  %1683 = fcmp fast une float %1321, 0.000000e+00
  br i1 %1683, label %1684, label %2003, !dx.controlflow.hints !104

; <label>:1684                                    ; preds = %1677
  %1685 = fmul fast float %1321, %120
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1689 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1690 = fmul fast float %1687, %1685
  %1691 = fmul fast float %1688, %1685
  %1692 = fmul fast float %1689, %1685
  %1693 = fadd fast float %1690, %196
  %1694 = fadd fast float %1691, %197
  %1695 = fadd fast float %1692, %198
  %1696 = fmul fast float %1321, 2.000000e+00
  %1697 = call float @dx.op.binary.f32(i32 35, float %438, float %1696)  ; FMax(a,b)
  %1698 = fsub fast float %1693, %1326
  %1699 = fsub fast float %1694, %1327
  %1700 = fmul fast float %1698, %1331
  %1701 = fmul fast float %1699, %1332
  %1702 = call float @dx.op.binary.f32(i32 36, float %1700, float %1701)  ; FMin(a,b)
  %1703 = fcmp fast olt float %1702, 0.000000e+00
  %1704 = call float @dx.op.binary.f32(i32 35, float %1700, float %1701)  ; FMax(a,b)
  %1705 = fcmp fast ogt float %1704, 1.000000e+00
  %1706 = or i1 %1703, %1705
  %1707 = fcmp fast olt float %1695, %1340
  %1708 = or i1 %1706, %1707
  %1709 = fcmp fast ogt float %1695, %1347
  %1710 = or i1 %1708, %1709
  br i1 %1710, label %1995, label %1711, !dx.controlflow.hints !93

; <label>:1711                                    ; preds = %1684
  %1712 = fsub fast float 1.000000e+00, %1701
  %1713 = extractvalue %dx.types.CBufRet.f32 %1345, 3
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 3
  %1716 = extractvalue %dx.types.CBufRet.f32 %1714, 2
  %1717 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.CBufRet.f32 %1718, 2
  %1722 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  br i1 %1297, label %1738, label %1723, !dx.controlflow.hints !94

; <label>:1723                                    ; preds = %1711
  %1724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 48)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.ResRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.ResRet.f32 %1724, 2
  %1728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 104)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.f32 %1728, 0
  %1730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 108)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 112)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.f32 %1732, 0
  %1734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 116)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.f32 %1734, 0
  %1736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 120)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  br label %1738

; <label>:1738                                    ; preds = %1723, %1711
  %1739 = phi float [ %1731, %1723 ], [ %1713, %1711 ]
  %1740 = phi float [ %1735, %1723 ], [ %1715, %1711 ]
  %1741 = phi float [ %1737, %1723 ], [ %1716, %1711 ]
  %1742 = phi float [ %1733, %1723 ], [ %1717, %1711 ]
  %1743 = phi float [ %1725, %1723 ], [ %1719, %1711 ]
  %1744 = phi float [ %1726, %1723 ], [ %1720, %1711 ]
  %1745 = phi float [ %1727, %1723 ], [ %1721, %1711 ]
  %1746 = phi float [ %1729, %1723 ], [ %1722, %1711 ]
  %1747 = fcmp fast oeq float %1739, 0.000000e+00
  br i1 %1747, label %1863, label %1748, !dx.controlflow.hints !95

; <label>:1748                                    ; preds = %1738
  %1749 = fcmp fast ogt float %1740, 0.000000e+00
  %1750 = fcmp fast oeq float %1697, 0.000000e+00
  br i1 %1750, label %1755, label %1751, !dx.controlflow.hints !78

; <label>:1751                                    ; preds = %1748
  %1752 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1753 = fmul fast float %1752, %1697
  %1754 = call float @dx.op.unary.f32(i32 23, float %1753)  ; Log(value)
  br label %1755

; <label>:1755                                    ; preds = %1751, %1748
  %1756 = phi float [ %1754, %1751 ], [ 0.000000e+00, %1748 ]
  br i1 %1750, label %1761, label %1757, !dx.controlflow.hints !78

; <label>:1757                                    ; preds = %1755
  %1758 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1759 = fmul fast float %1758, %1697
  %1760 = call float @dx.op.unary.f32(i32 23, float %1759)  ; Log(value)
  br label %1761

; <label>:1761                                    ; preds = %1757, %1755
  %1762 = phi float [ %1760, %1757 ], [ 0.000000e+00, %1755 ]
  br i1 %1749, label %1763, label %1825, !dx.controlflow.hints !96

; <label>:1763                                    ; preds = %1761
  %1764 = fcmp fast ogt float %1741, 0.000000e+00
  br i1 %1764, label %1765, label %1775, !dx.controlflow.hints !97

; <label>:1765                                    ; preds = %1763
  %1766 = fmul fast float %1741, %1700
  %1767 = fmul fast float %1741, %1712
  %1768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %36, float %1766, float %1767, float undef, float undef, i32 0, i32 0, i32 undef, float %1762)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = extractvalue %dx.types.ResRet.f32 %1768, 1
  %1771 = fmul fast float %1769, 2.000000e+00
  %1772 = fmul fast float %1770, 2.000000e+00
  %1773 = fadd fast float %1771, -1.000000e+00
  %1774 = fadd fast float %1772, -1.000000e+00
  br label %1796

; <label>:1775                                    ; preds = %1763
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 3
  %1778 = fmul fast float %1777, %1700
  %1779 = fmul fast float %1777, %1712
  %1780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1778, float %1779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = fmul fast float %1781, 2.000000e+00
  %1785 = fmul fast float %1782, 2.000000e+00
  %1786 = fmul fast float %1783, 2.000000e+00
  %1787 = fadd fast float %1784, -1.000000e+00
  %1788 = fadd fast float %1785, -1.000000e+00
  %1789 = fadd fast float %1786, -1.000000e+00
  %1790 = extractvalue %dx.types.CBufRet.f32 %1345, 1
  %1791 = fmul fast float %1787, %1790
  %1792 = fmul fast float %1788, %1790
  %1793 = extractvalue %dx.types.CBufRet.f32 %1345, 2
  %1794 = fmul fast float %1793, 5.000000e-01
  %1795 = fmul fast float %1794, %1789
  br label %1796

; <label>:1796                                    ; preds = %1775, %1765
  %1797 = phi float [ %1773, %1765 ], [ %1791, %1775 ]
  %1798 = phi float [ %1774, %1765 ], [ %1792, %1775 ]
  %1799 = phi float [ 0.000000e+00, %1765 ], [ %1795, %1775 ]
  %1800 = fmul fast float %1739, %1693
  %1801 = fmul fast float %1739, %1694
  %1802 = fmul fast float %1739, %1695
  %1803 = call float @dx.op.unary.f32(i32 22, float %1740)  ; Frc(value)
  %1804 = fmul fast float %1803, %1797
  %1805 = fmul fast float %1803, %1798
  %1806 = fmul fast float %1803, %1799
  %1807 = fsub fast float %1800, %1804
  %1808 = fsub fast float %1801, %1805
  %1809 = fsub fast float %1802, %1806
  %1810 = fadd fast float %1740, 5.000000e-01
  %1811 = call float @dx.op.unary.f32(i32 22, float %1810)  ; Frc(value)
  %1812 = fmul fast float %1811, %1797
  %1813 = fmul fast float %1811, %1798
  %1814 = fmul fast float %1811, %1799
  %1815 = fadd fast float %1800, -5.000000e-01
  %1816 = fsub fast float %1815, %1812
  %1817 = fadd fast float %1801, -5.000000e-01
  %1818 = fsub fast float %1817, %1813
  %1819 = fadd fast float %1802, -5.000000e-01
  %1820 = fsub fast float %1819, %1814
  %1821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %1816, float %1818, float %1820, float undef, i32 0, i32 0, i32 0, float %1756)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1822 = extractvalue %dx.types.ResRet.f32 %1821, 0
  %1823 = extractvalue %dx.types.ResRet.f32 %1821, 1
  %1824 = fadd fast float %1822, %1742
  br label %1835

; <label>:1825                                    ; preds = %1761
  %1826 = fmul fast float %1746, %1743
  %1827 = fmul fast float %1746, %1744
  %1828 = fmul fast float %1746, %1745
  %1829 = fsub fast float %1693, %1826
  %1830 = fsub fast float %1694, %1827
  %1831 = fsub fast float %1695, %1828
  %1832 = fmul fast float %1829, %1739
  %1833 = fmul fast float %1830, %1739
  %1834 = fmul fast float %1831, %1739
  br label %1835

; <label>:1835                                    ; preds = %1825, %1796
  %1836 = phi float [ %1807, %1796 ], [ %1832, %1825 ]
  %1837 = phi float [ %1808, %1796 ], [ %1833, %1825 ]
  %1838 = phi float [ %1809, %1796 ], [ %1834, %1825 ]
  %1839 = phi float [ %1824, %1796 ], [ 0.000000e+00, %1825 ]
  %1840 = phi float [ %1823, %1796 ], [ 0.000000e+00, %1825 ]
  %1841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %1836, float %1837, float %1838, float undef, i32 0, i32 0, i32 0, float %1756)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = fadd fast float %1842, %1742
  br i1 %1749, label %1845, label %1856, !dx.controlflow.hints !98

; <label>:1845                                    ; preds = %1835
  %1846 = call float @dx.op.unary.f32(i32 22, float %1740)  ; Frc(value)
  %1847 = fmul fast float %1846, 2.000000e+00
  %1848 = fadd fast float %1847, -1.000000e+00
  %1849 = call float @dx.op.unary.f32(i32 6, float %1848)  ; FAbs(value)
  %1850 = fsub fast float %1839, %1844
  %1851 = fmul fast float %1849, %1850
  %1852 = fadd fast float %1851, %1844
  %1853 = fsub fast float %1840, %1843
  %1854 = fmul fast float %1849, %1853
  %1855 = fadd fast float %1854, %1843
  br label %1856

; <label>:1856                                    ; preds = %1845, %1835
  %1857 = phi float [ %1852, %1845 ], [ %1844, %1835 ]
  %1858 = phi float [ %1855, %1845 ], [ %1843, %1835 ]
  %1859 = fsub fast float %1857, %1858
  %1860 = fsub fast float 1.000000e+00, %1858
  %1861 = fdiv fast float %1859, %1860
  %1862 = call float @dx.op.unary.f32(i32 7, float %1861)  ; Saturate(value)
  br label %1863

; <label>:1863                                    ; preds = %1856, %1738
  %1864 = phi float [ %1862, %1856 ], [ 1.000000e+00, %1738 ]
  %1865 = fcmp fast oeq float %1697, 0.000000e+00
  br i1 %1865, label %1870, label %1866, !dx.controlflow.hints !78

; <label>:1866                                    ; preds = %1863
  %1867 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1868 = fmul fast float %1867, %1697
  %1869 = call float @dx.op.unary.f32(i32 23, float %1868)  ; Log(value)
  br label %1870

; <label>:1870                                    ; preds = %1866, %1863
  %1871 = phi float [ %1869, %1866 ], [ 0.000000e+00, %1863 ]
  %1872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %37, float %1700, float %1712, float undef, float undef, i32 0, i32 0, i32 undef, float %1871)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  %1874 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %39, float %1700, float %1712, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.ResRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.ResRet.f32 %1874, 2
  %1878 = extractvalue %dx.types.ResRet.f32 %1874, 3
  %1879 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %39, float %1700, float %1712, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.ResRet.f32 %1879, 1
  %1882 = extractvalue %dx.types.ResRet.f32 %1879, 2
  %1883 = extractvalue %dx.types.ResRet.f32 %1879, 3
  %1884 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %39, float %1700, float %1712, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = extractvalue %dx.types.ResRet.f32 %1884, 1
  %1887 = extractvalue %dx.types.ResRet.f32 %1884, 2
  %1888 = extractvalue %dx.types.ResRet.f32 %1884, 3
  %1889 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %39, float %1700, float %1712, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1890 = extractvalue %dx.types.ResRet.f32 %1889, 0
  %1891 = extractvalue %dx.types.ResRet.f32 %1889, 1
  %1892 = extractvalue %dx.types.ResRet.f32 %1889, 2
  %1893 = extractvalue %dx.types.ResRet.f32 %1889, 3
  %1894 = fadd fast float %1875, %1876
  %1895 = fadd fast float %1894, %1877
  %1896 = fadd fast float %1895, %1878
  %1897 = fmul fast float %1880, %1875
  %1898 = fmul fast float %1881, %1876
  %1899 = fadd fast float %1897, %1898
  %1900 = fmul fast float %1882, %1877
  %1901 = fadd fast float %1899, %1900
  %1902 = fmul fast float %1883, %1878
  %1903 = fadd fast float %1901, %1902
  %1904 = fmul fast float %1885, %1875
  %1905 = fmul fast float %1886, %1876
  %1906 = fadd fast float %1904, %1905
  %1907 = fmul fast float %1887, %1877
  %1908 = fadd fast float %1906, %1907
  %1909 = fmul fast float %1888, %1878
  %1910 = fadd fast float %1908, %1909
  %1911 = fmul fast float %1890, %1875
  %1912 = fmul fast float %1891, %1876
  %1913 = fadd fast float %1911, %1912
  %1914 = fmul fast float %1892, %1877
  %1915 = fadd fast float %1913, %1914
  %1916 = fmul fast float %1893, %1878
  %1917 = fadd fast float %1915, %1916
  %1918 = fcmp fast ogt float %1896, 0.000000e+00
  %1919 = fdiv fast float %1903, %1896
  %1920 = select i1 %1918, float %1919, float 0.000000e+00
  %1921 = fdiv fast float %1910, %1896
  %1922 = select i1 %1918, float %1921, float 0.000000e+00
  %1923 = fdiv fast float %1917, %1896
  %1924 = select i1 %1918, float %1923, float 0.000000e+00
  %1925 = fcmp fast ogt float %1695, %1922
  %1926 = fcmp fast olt float %1695, %1920
  %1927 = and i1 %1926, %1925
  br i1 %1927, label %1928, label %1995, !dx.controlflow.hints !99

; <label>:1928                                    ; preds = %1870
  %1929 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 2
  %1932 = extractvalue %dx.types.CBufRet.f32 %1930, 3
  br i1 %1297, label %1943, label %1933, !dx.controlflow.hints !100

; <label>:1933                                    ; preds = %1928
  %1934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 60)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 64)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.ResRet.f32 %1936, 1
  %1939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 72)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  %1941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1296, i32 96)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.f32 %1941, 0
  br label %1943

; <label>:1943                                    ; preds = %1933, %1928
  %1944 = phi float [ %1935, %1933 ], [ %1346, %1928 ]
  %1945 = phi float [ %1940, %1933 ], [ %1344, %1928 ]
  %1946 = phi float [ %1942, %1933 ], [ %1929, %1928 ]
  %1947 = phi float [ %1937, %1933 ], [ %1931, %1928 ]
  %1948 = phi float [ %1938, %1933 ], [ %1932, %1928 ]
  %1949 = call float @dx.op.binary.f32(i32 35, float %1873, float 0.000000e+00)  ; FMax(a,b)
  %1950 = call float @dx.op.binary.f32(i32 36, float %1949, float 1.000000e+00)  ; FMin(a,b)
  %1951 = call float @dx.op.unary.f32(i32 24, float %1950)  ; Sqrt(value)
  %1952 = call float @dx.op.binary.f32(i32 35, float %1924, float 0x3F847AE140000000)  ; FMax(a,b)
  %1953 = fsub fast float %1920, %1695
  %1954 = fsub fast float %1695, %1922
  %1955 = call float @dx.op.binary.f32(i32 36, float %1954, float %1953)  ; FMin(a,b)
  %1956 = fdiv fast float %1955, %1952
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = fsub fast float %1695, %1945
  %1959 = fdiv fast float %1958, %1944
  %1960 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1961 = fsub fast float 1.000000e+00, %1960
  %1962 = fmul float %1957, %1961
  %1963 = fmul float %1962, %1962
  %1964 = fmul fast float %1951, %1864
  %1965 = fmul fast float %1964, %1963
  %1966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1967 = extractvalue %dx.types.CBufRet.f32 %1966, 2
  %1968 = extractvalue %dx.types.CBufRet.f32 %1966, 1
  %1969 = fsub fast float %1965, %1968
  %1970 = fsub fast float %1967, %1968
  %1971 = fdiv fast float %1969, %1970
  %1972 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1973 = fmul fast float %1972, %1946
  %1974 = fcmp fast ogt float %1948, 0.000000e+00
  br i1 %1974, label %1975, label %1995, !dx.controlflow.hints !101

; <label>:1975                                    ; preds = %1943
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %1979 = extractvalue %dx.types.CBufRet.f32 %1976, 2
  %1980 = fsub fast float %1693, %1977
  %1981 = fsub fast float %1694, %1978
  %1982 = fsub fast float %1695, %1979
  %1983 = fmul fast float %1980, %1980
  %1984 = fmul fast float %1981, %1981
  %1985 = fadd fast float %1983, %1984
  %1986 = fmul fast float %1982, %1982
  %1987 = fadd fast float %1985, %1986
  %1988 = call float @dx.op.unary.f32(i32 24, float %1987)  ; Sqrt(value)
  %1989 = fsub fast float %1988, %1947
  %1990 = fsub fast float %1948, %1947
  %1991 = fdiv fast float %1989, %1990
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = fmul fast float %1992, %1992
  %1994 = fmul fast float %1993, %1973
  br label %1995

; <label>:1995                                    ; preds = %1975, %1943, %1870, %1684
  %1996 = phi float [ 0.000000e+00, %1684 ], [ 0.000000e+00, %1870 ], [ %1994, %1975 ], [ %1973, %1943 ]
  %1997 = fsub fast float %1682, %1996
  %1998 = fdiv fast float %1997, %1682
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = fsub fast float 1.000000e+00, %1322
  %2001 = fmul fast float %1999, %2000
  %2002 = fadd fast float %2001, %1322
  br label %2003

; <label>:2003                                    ; preds = %1995, %1677
  %2004 = phi float [ %2002, %1995 ], [ 1.000000e+00, %1677 ]
  %2005 = fadd fast float %1682, %1218
  %2006 = fmul fast float %1682, %1318
  %2007 = fmul fast float %2006, %2004
  %2008 = fmul fast float %1682, %1319
  %2009 = fmul fast float %2008, %2004
  %2010 = fmul fast float %1682, %1320
  %2011 = fmul fast float %2010, %2004
  %2012 = fadd fast float %2007, %1214
  %2013 = fadd fast float %2009, %1215
  %2014 = fadd fast float %2011, %1216
  br label %2015

; <label>:2015                                    ; preds = %2003, %1637, %1634, %1213
  %2016 = phi float [ %1214, %1213 ], [ %1214, %1634 ], [ %1214, %1637 ], [ %2012, %2003 ]
  %2017 = phi float [ %1215, %1213 ], [ %1215, %1634 ], [ %1215, %1637 ], [ %2013, %2003 ]
  %2018 = phi float [ %1216, %1213 ], [ %1216, %1634 ], [ %1216, %1637 ], [ %2014, %2003 ]
  %2019 = phi float [ %1218, %1213 ], [ %1218, %1634 ], [ %1218, %1637 ], [ %2005, %2003 ]
  %2020 = and i32 %357, 4
  %2021 = icmp eq i32 %2020, 0
  br i1 %2021, label %2192, label %2022, !dx.controlflow.hints !105

; <label>:2022                                    ; preds = %2015
  %2023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.i32 %2023, 1
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2192, label %2026

; <label>:2026                                    ; preds = %2022
  br label %2027

; <label>:2027                                    ; preds = %2183, %2026
  %2028 = phi i32 [ %2189, %2183 ], [ 0, %2026 ]
  %2029 = phi float [ %2184, %2183 ], [ %2016, %2026 ]
  %2030 = phi float [ %2185, %2183 ], [ %2017, %2026 ]
  %2031 = phi float [ %2186, %2183 ], [ %2018, %2026 ]
  %2032 = phi float [ %2187, %2183 ], [ %1217, %2026 ]
  %2033 = phi float [ %2188, %2183 ], [ %2019, %2026 ]
  %2034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.i32 %2034, 1
  %2036 = call i32 @dx.op.tertiary.i32(i32 49, i32 %355, i32 %2035, i32 %2028)  ; UMad(a,b,c)
  %2037 = shl i32 %2036, 2
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = icmp eq i32 %2039, 0
  br i1 %2040, label %2183, label %2041

; <label>:2041                                    ; preds = %2027
  br label %2042

; <label>:2042                                    ; preds = %2169, %2041
  %2043 = phi i32 [ %2053, %2169 ], [ %2039, %2041 ]
  %2044 = phi float [ %2175, %2169 ], [ %2029, %2041 ]
  %2045 = phi float [ %2176, %2169 ], [ %2030, %2041 ]
  %2046 = phi float [ %2177, %2169 ], [ %2031, %2041 ]
  %2047 = phi float [ %2179, %2169 ], [ %2032, %2041 ]
  %2048 = phi float [ %2180, %2169 ], [ %2033, %2041 ]
  %2049 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2043)  ; FirstbitLo(value)
  %2050 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %2028, i32 %2049)  ; UMad(a,b,c)
  %2051 = and i32 %2049, 31
  %2052 = shl i32 1, %2051
  %2053 = xor i32 %2052, %2043
  %2054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 0)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 4)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.f32 %2056, 0
  %2058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 16)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.ResRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.ResRet.f32 %2058, 2
  %2062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 28)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  %2064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 32)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = extractvalue %dx.types.ResRet.f32 %2064, 1
  %2067 = extractvalue %dx.types.ResRet.f32 %2064, 2
  %2068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 44)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 48)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 52)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 56)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2050, i32 64)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = extractvalue %dx.types.ResRet.f32 %2076, 1
  %2079 = extractvalue %dx.types.ResRet.f32 %2076, 2
  %2080 = mul i32 %2050, 60
  %2081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.ResRet.f32 %2081, 1
  %2084 = extractvalue %dx.types.ResRet.f32 %2081, 2
  %2085 = add i32 %2080, 12
  %2086 = add i32 %2080, 48
  %2087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.f32 %2087, 2
  %2089 = fsub fast float %196, %2082
  %2090 = fsub fast float %197, %2083
  %2091 = fsub fast float %198, %2084
  %2092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.ResRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.ResRet.f32 %2092, 2
  %2096 = call float @dx.op.dot3.f32(i32 55, float %2089, float %2090, float %2091, float %2093, float %2094, float %2095)  ; Dot3(ax,ay,az,bx,by,bz)
  %2097 = add i32 %2080, 24
  %2098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.ResRet.f32 %2098, 1
  %2101 = extractvalue %dx.types.ResRet.f32 %2098, 2
  %2102 = call float @dx.op.dot3.f32(i32 55, float %2089, float %2090, float %2091, float %2099, float %2100, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %2103 = add i32 %2080, 36
  %2104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.ResRet.f32 %2104, 1
  %2107 = extractvalue %dx.types.ResRet.f32 %2104, 2
  %2108 = call float @dx.op.dot3.f32(i32 55, float %2089, float %2090, float %2091, float %2105, float %2106, float %2107)  ; Dot3(ax,ay,az,bx,by,bz)
  %2109 = call float @dx.op.unary.f32(i32 6, float %2096)  ; FAbs(value)
  %2110 = call float @dx.op.unary.f32(i32 6, float %2102)  ; FAbs(value)
  %2111 = call float @dx.op.unary.f32(i32 6, float %2108)  ; FAbs(value)
  %2112 = fmul fast float %2109, %2069
  %2113 = fmul fast float %2110, %2069
  %2114 = fmul fast float %2111, %2069
  %2115 = fadd fast float %2112, %2065
  %2116 = fadd fast float %2113, %2066
  %2117 = fadd fast float %2114, %2067
  %2118 = call float @dx.op.unary.f32(i32 7, float %2115)  ; Saturate(value)
  %2119 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2120 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2121 = fmul fast float %2118, %2118
  %2122 = fmul fast float %2119, %2119
  %2123 = fadd fast float %2122, %2121
  %2124 = fmul fast float %2120, %2120
  %2125 = fadd fast float %2123, %2124
  %2126 = call float @dx.op.unary.f32(i32 24, float %2125)  ; Sqrt(value)
  %2127 = fsub fast float 1.000000e+00, %2126
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2129 = fmul fast float %2128, %2055
  %2130 = fmul fast float %2088, 2.000000e+00
  %2131 = fadd fast float %2108, %2088
  %2132 = call float @dx.op.binary.f32(i32 35, float %2131, float 0.000000e+00)  ; FMax(a,b)
  %2133 = call float @dx.op.binary.f32(i32 36, float %2132, float %2130)  ; FMin(a,b)
  %2134 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2133)  ; FMax(a,b)
  %2135 = fmul fast float %2057, 0x3FF7154760000000
  %2136 = fmul fast float %2135, %2134
  %2137 = call float @dx.op.unary.f32(i32 21, float %2136)  ; Exp(value)
  %2138 = fmul fast float %2129, %2137
  %2139 = fcmp fast oeq float %438, 0.000000e+00
  br i1 %2139, label %2145, label %2140, !dx.controlflow.hints !78

; <label>:2140                                    ; preds = %2042
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 3
  %2143 = fmul fast float %2142, %438
  %2144 = call float @dx.op.unary.f32(i32 23, float %2143)  ; Log(value)
  br label %2145

; <label>:2145                                    ; preds = %2140, %2042
  %2146 = phi float [ %2144, %2140 ], [ 0.000000e+00, %2042 ]
  %2147 = fcmp fast oeq float %2071, 0.000000e+00
  br i1 %2147, label %2169, label %2148, !dx.controlflow.hints !106

; <label>:2148                                    ; preds = %2145
  %2149 = fmul fast float %2077, %2075
  %2150 = fmul fast float %2078, %2075
  %2151 = fmul fast float %2079, %2075
  %2152 = fsub fast float %196, %2149
  %2153 = fsub fast float %197, %2150
  %2154 = fsub fast float %198, %2151
  %2155 = fmul fast float %2152, %2071
  %2156 = fmul fast float %2153, %2071
  %2157 = fmul fast float %2154, %2071
  %2158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %2155, float %2156, float %2157, float undef, i32 0, i32 0, i32 0, float %2146)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 0
  %2160 = extractvalue %dx.types.ResRet.f32 %2158, 1
  %2161 = fdiv fast float 1.000000e+00, %2073
  %2162 = fmul fast float %2073, 2.000000e+00
  %2163 = fadd fast float %2162, -1.000000e+00
  %2164 = fadd fast float %2163, %2160
  %2165 = fadd fast float %2164, %2159
  %2166 = fmul fast float %2165, %2161
  %2167 = fadd fast float %2166, -1.000000e+00
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  br label %2169

; <label>:2169                                    ; preds = %2148, %2145
  %2170 = phi float [ %2168, %2148 ], [ 1.000000e+00, %2145 ]
  %2171 = fmul fast float %2138, %2170
  %2172 = fmul fast float %2171, %2059
  %2173 = fmul fast float %2171, %2060
  %2174 = fmul fast float %2171, %2061
  %2175 = fadd fast float %2172, %2044
  %2176 = fadd fast float %2173, %2045
  %2177 = fadd fast float %2174, %2046
  %2178 = fmul fast float %2171, %2063
  %2179 = fadd fast float %2178, %2047
  %2180 = fadd fast float %2171, %2048
  %2181 = icmp eq i32 %2043, %2052
  br i1 %2181, label %2182, label %2042, !llvm.loop !107

; <label>:2182                                    ; preds = %2169
  br label %2183

; <label>:2183                                    ; preds = %2182, %2027
  %2184 = phi float [ %2029, %2027 ], [ %2175, %2182 ]
  %2185 = phi float [ %2030, %2027 ], [ %2176, %2182 ]
  %2186 = phi float [ %2031, %2027 ], [ %2177, %2182 ]
  %2187 = phi float [ %2032, %2027 ], [ %2179, %2182 ]
  %2188 = phi float [ %2033, %2027 ], [ %2180, %2182 ]
  %2189 = add i32 %2028, 1
  %2190 = icmp ult i32 %2189, %2035
  br i1 %2190, label %2027, label %2191, !llvm.loop !108

; <label>:2191                                    ; preds = %2183
  br label %2192

; <label>:2192                                    ; preds = %2191, %2022, %2015
  %2193 = phi float [ %2016, %2015 ], [ %2016, %2022 ], [ %2184, %2191 ]
  %2194 = phi float [ %2017, %2015 ], [ %2017, %2022 ], [ %2185, %2191 ]
  %2195 = phi float [ %2018, %2015 ], [ %2018, %2022 ], [ %2186, %2191 ]
  %2196 = phi float [ %1217, %2015 ], [ %1217, %2022 ], [ %2187, %2191 ]
  %2197 = phi float [ %2019, %2015 ], [ %2019, %2022 ], [ %2188, %2191 ]
  %2198 = fcmp fast ogt float %2197, 0.000000e+00
  br i1 %2198, label %2199, label %3317, !dx.controlflow.hints !109

; <label>:2199                                    ; preds = %2192
  %2200 = fdiv fast float 1.000000e+00, %2197
  %2201 = fmul fast float %2200, %2193
  %2202 = fmul fast float %2200, %2194
  %2203 = fmul fast float %2200, %2195
  %2204 = fmul fast float %2200, %2196
  %2205 = fmul fast float %435, %434
  %2206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2207 = extractvalue %dx.types.CBufRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.CBufRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.CBufRet.f32 %2206, 2
  %2210 = fsub fast float %196, %2207
  %2211 = fsub fast float %197, %2208
  %2212 = fsub fast float %198, %2209
  %2213 = fmul fast float %364, %131
  %2214 = call float @dx.op.unary.f32(i32 21, float %2213)  ; Exp(value)
  %2215 = fmul fast float %2214, %363
  %2216 = fadd fast float %368, %2215
  %2217 = fmul fast float %138, 2.000000e+00
  %2218 = fmul fast float %2217, %360
  %2219 = fmul fast float %139, 2.000000e+00
  %2220 = fmul fast float %2219, %361
  %2221 = fsub fast float 1.000000e+00, %2218
  %2222 = fsub fast float 1.000000e+00, %2220
  %2223 = fmul fast float %377, %2221
  %2224 = fmul fast float %378, %2221
  %2225 = fmul fast float %379, %2221
  %2226 = fmul fast float %384, %2222
  %2227 = fmul fast float %385, %2222
  %2228 = fmul fast float %386, %2222
  %2229 = fadd fast float %2226, %2223
  %2230 = fadd fast float %2227, %2224
  %2231 = fadd fast float %2228, %2225
  %2232 = fadd fast float %2229, %394
  %2233 = fadd fast float %2230, %395
  %2234 = fadd fast float %2231, %396
  %2235 = fmul fast float %2232, %2216
  %2236 = fmul fast float %2233, %2216
  %2237 = fmul fast float %2234, %2216
  %2238 = fadd fast float %131, 1.000000e+00
  %2239 = fmul fast float %364, %2238
  %2240 = call float @dx.op.unary.f32(i32 21, float %2239)  ; Exp(value)
  %2241 = fsub fast float %2240, %2214
  %2242 = fmul fast float %363, %2241
  %2243 = fmul fast float %2232, %2242
  %2244 = fsub fast float %2240, %2214
  %2245 = fmul fast float %363, %2244
  %2246 = fmul fast float %2233, %2245
  %2247 = fsub fast float %2240, %2214
  %2248 = fmul fast float %363, %2247
  %2249 = fmul fast float %2234, %2248
  %2250 = call float @dx.op.dot3.f32(i32 55, float %2243, float %2246, float %2249, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2251 = call float @dx.op.unary.f32(i32 25, float %2250)  ; Rsqrt(value)
  %2252 = fmul fast float %2251, %2250
  %2253 = fmul fast float %2243, %2251
  %2254 = fmul fast float %2246, %2251
  %2255 = fmul fast float %2249, %2251
  %2256 = fsub fast float %236, %2209
  %2257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.i32 %2257, 0
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %3288, label %2260, !dx.controlflow.hints !110

; <label>:2260                                    ; preds = %2199
  %2261 = add nsw i32 %2258, -1
  %2262 = call i32 @dx.op.binary.i32(i32 37, i32 %2261, i32 0)  ; IMax(a,b)
  br label %2263

; <label>:2263                                    ; preds = %3281, %2260
  %2264 = phi i32 [ 0, %2260 ], [ %3285, %3281 ]
  %2265 = phi float [ 0.000000e+00, %2260 ], [ %3282, %3281 ]
  %2266 = phi float [ 0.000000e+00, %2260 ], [ %3283, %3281 ]
  %2267 = phi float [ 0.000000e+00, %2260 ], [ %3284, %3281 ]
  %2268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.i32 %2268, 0
  %2270 = call i32 @dx.op.tertiary.i32(i32 49, i32 %355, i32 %2269, i32 %2264)  ; UMad(a,b,c)
  %2271 = shl i32 %2270, 2
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %3281, label %2275

; <label>:2275                                    ; preds = %2263
  br label %2276

; <label>:2276                                    ; preds = %2715, %2275
  %2277 = phi i32 [ %2286, %2715 ], [ %2273, %2275 ]
  %2278 = phi float [ %2716, %2715 ], [ %2265, %2275 ]
  %2279 = phi float [ %2717, %2715 ], [ %2266, %2275 ]
  %2280 = phi float [ %2718, %2715 ], [ %2267, %2275 ]
  %2281 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2277)  ; FirstbitLo(value)
  %2282 = shl i32 %2264, 5
  %2283 = add i32 %2281, %2282
  %2284 = and i32 %2281, 31
  %2285 = shl i32 1, %2284
  %2286 = xor i32 %2285, %2277
  %2287 = mul i32 %2283, 112
  %2288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.ResRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.ResRet.f32 %2288, 2
  %2292 = or i32 %2287, 12
  %2293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  %2295 = add i32 %2287, 16
  %2296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.ResRet.f32 %2296, 2
  %2300 = add i32 %2287, 28
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = add i32 %2287, 32
  %2304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.ResRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.ResRet.f32 %2304, 2
  %2308 = add i32 %2287, 44
  %2309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = add i32 %2287, 48
  %2312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  %2314 = extractvalue %dx.types.ResRet.f32 %2312, 1
  %2315 = extractvalue %dx.types.ResRet.f32 %2312, 2
  %2316 = extractvalue %dx.types.ResRet.f32 %2312, 3
  %2317 = add i32 %2287, 64
  %2318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.ResRet.f32 %2318, 1
  %2321 = extractvalue %dx.types.ResRet.f32 %2318, 2
  %2322 = extractvalue %dx.types.ResRet.f32 %2318, 3
  %2323 = add i32 %2287, 92
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = and i32 %2325, 65535
  %2327 = uitofp i32 %2326 to float
  %2328 = lshr i32 %2325, 16
  %2329 = uitofp i32 %2328 to float
  %2330 = and i32 %2302, 65535
  %2331 = and i32 %2302, 50331648
  %2332 = icmp eq i32 %2331, 33554432
  %2333 = fdiv fast float 1.000000e+00, %2252
  br i1 %2332, label %2334, label %2526, !dx.controlflow.hints !111

; <label>:2334                                    ; preds = %2276
  %2335 = fsub fast float %2313, %2305
  %2336 = fsub fast float %2314, %2306
  %2337 = fsub fast float %2315, %2307
  %2338 = fmul fast float %2253, %2252
  %2339 = fmul fast float %2254, %2252
  %2340 = fmul fast float %2255, %2252
  %2341 = fadd fast float %2338, %2235
  %2342 = fadd fast float %2339, %2236
  %2343 = fadd fast float %2340, %2237
  %2344 = fmul fast float %2305, 2.000000e+00
  %2345 = fmul fast float %2306, 2.000000e+00
  %2346 = fmul fast float %2307, 2.000000e+00
  %2347 = call float @dx.op.dot3.f32(i32 55, float %2344, float %2345, float %2346, float %2344, float %2345, float %2346)  ; Dot3(ax,ay,az,bx,by,bz)
  %2348 = fdiv fast float %2344, %2347
  %2349 = fdiv fast float %2345, %2347
  %2350 = fdiv fast float %2346, %2347
  %2351 = fsub fast float %2235, %2335
  %2352 = fsub fast float %2236, %2336
  %2353 = fsub fast float %2237, %2337
  %2354 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2352, float %2353, float %2344, float %2345, float %2346)  ; Dot3(ax,ay,az,bx,by,bz)
  %2355 = fmul fast float %2354, %2348
  %2356 = fmul fast float %2354, %2349
  %2357 = fmul fast float %2354, %2350
  %2358 = fsub fast float %2235, %2355
  %2359 = fsub fast float %2236, %2356
  %2360 = fsub fast float %2237, %2357
  %2361 = fsub fast float %2341, %2335
  %2362 = fsub fast float %2342, %2336
  %2363 = fsub fast float %2343, %2337
  %2364 = call float @dx.op.dot3.f32(i32 55, float %2361, float %2362, float %2363, float %2344, float %2345, float %2346)  ; Dot3(ax,ay,az,bx,by,bz)
  %2365 = fmul fast float %2364, %2348
  %2366 = fmul fast float %2364, %2349
  %2367 = fmul fast float %2364, %2350
  %2368 = fsub fast float %2341, %2365
  %2369 = fsub fast float %2342, %2366
  %2370 = fsub fast float %2343, %2367
  %2371 = fsub fast float %2368, %2358
  %2372 = fsub fast float %2369, %2359
  %2373 = fsub fast float %2370, %2360
  %2374 = fsub fast float %2335, %2358
  %2375 = fsub fast float %2336, %2359
  %2376 = fsub fast float %2337, %2360
  %2377 = call float @dx.op.dot3.f32(i32 55, float %2374, float %2375, float %2376, float %2371, float %2372, float %2373)  ; Dot3(ax,ay,az,bx,by,bz)
  %2378 = call float @dx.op.dot3.f32(i32 55, float %2371, float %2372, float %2373, float %2371, float %2372, float %2373)  ; Dot3(ax,ay,az,bx,by,bz)
  %2379 = fdiv fast float %2377, %2378
  %2380 = fcmp fast une float %2358, %2368
  %2381 = fcmp fast une float %2359, %2369
  %2382 = fcmp fast une float %2360, %2370
  %2383 = or i1 %2380, %2381
  %2384 = or i1 %2382, %2383
  %2385 = select i1 %2384, float %2379, float 0.000000e+00
  %2386 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  %2387 = fmul fast float %2386, %2338
  %2388 = fmul fast float %2386, %2339
  %2389 = fmul fast float %2386, %2340
  %2390 = fadd fast float %2351, %2387
  %2391 = fadd fast float %2352, %2388
  %2392 = fadd fast float %2353, %2389
  %2393 = call float @dx.op.dot3.f32(i32 55, float %2390, float %2391, float %2392, float %2344, float %2345, float %2346)  ; Dot3(ax,ay,az,bx,by,bz)
  %2394 = fdiv fast float %2393, %2347
  %2395 = call float @dx.op.unary.f32(i32 7, float %2394)  ; Saturate(value)
  %2396 = fmul fast float %2344, %2395
  %2397 = fmul fast float %2345, %2395
  %2398 = fmul fast float %2346, %2395
  %2399 = fadd fast float %2396, %2335
  %2400 = fadd fast float %2397, %2336
  %2401 = fadd fast float %2398, %2337
  %2402 = fmul fast float %2321, %2297
  %2403 = fmul fast float %2321, %2298
  %2404 = fmul fast float %2321, %2299
  %2405 = fadd fast float %2399, %2402
  %2406 = fadd fast float %2400, %2403
  %2407 = fadd fast float %2401, %2404
  %2408 = fsub fast float -0.000000e+00, %2320
  %2409 = fdiv fast float %2408, %2319
  %2410 = fmul fast float %2409, %2409
  %2411 = call float @dx.op.dot3.f32(i32 55, float %2253, float %2254, float %2255, float %2297, float %2298, float %2299)  ; Dot3(ax,ay,az,bx,by,bz)
  %2412 = fsub fast float %2235, %2405
  %2413 = fsub fast float %2236, %2406
  %2414 = fsub fast float %2237, %2407
  %2415 = call float @dx.op.dot3.f32(i32 55, float %2412, float %2413, float %2414, float %2297, float %2298, float %2299)  ; Dot3(ax,ay,az,bx,by,bz)
  %2416 = fsub fast float %2405, %2235
  %2417 = fsub fast float %2406, %2236
  %2418 = fsub fast float %2407, %2237
  %2419 = fmul fast float %2411, %2411
  %2420 = fsub fast float %2419, %2410
  %2421 = fmul fast float %2415, %2411
  %2422 = call float @dx.op.dot3.f32(i32 55, float %2416, float %2417, float %2418, float %2253, float %2254, float %2255)  ; Dot3(ax,ay,az,bx,by,bz)
  %2423 = fmul fast float %2422, %2410
  %2424 = fadd fast float %2423, %2421
  %2425 = fmul fast float %2424, 2.000000e+00
  %2426 = fmul fast float %2415, %2415
  %2427 = call float @dx.op.dot3.f32(i32 55, float %2416, float %2417, float %2418, float %2416, float %2417, float %2418)  ; Dot3(ax,ay,az,bx,by,bz)
  %2428 = fmul fast float %2427, %2410
  %2429 = fsub fast float %2426, %2428
  %2430 = fmul fast float %2425, %2425
  %2431 = fmul fast float %2420, 4.000000e+00
  %2432 = fmul fast float %2431, %2429
  %2433 = fsub fast float %2430, %2432
  %2434 = fcmp fast ogt float %2433, 0.000000e+00
  br i1 %2434, label %2435, label %2526, !dx.controlflow.hints !112

; <label>:2435                                    ; preds = %2334
  %2436 = call float @dx.op.unary.f32(i32 24, float %2433)  ; Sqrt(value)
  %2437 = fdiv fast float 5.000000e-01, %2420
  %2438 = fsub fast float -0.000000e+00, %2425
  %2439 = fsub fast float %2438, %2436
  %2440 = fmul fast float %2439, %2437
  %2441 = fsub fast float %2436, %2425
  %2442 = fmul fast float %2441, %2437
  %2443 = call float @dx.op.binary.f32(i32 35, float %2440, float %2442)  ; FMax(a,b)
  %2444 = call float @dx.op.binary.f32(i32 36, float %2440, float %2442)  ; FMin(a,b)
  %2445 = fsub fast float %2399, %2235
  %2446 = fsub fast float %2400, %2236
  %2447 = fsub fast float %2401, %2237
  %2448 = call float @dx.op.dot3.f32(i32 55, float %2445, float %2446, float %2447, float %2297, float %2298, float %2299)  ; Dot3(ax,ay,az,bx,by,bz)
  %2449 = fdiv fast float %2448, %2411
  %2450 = fcmp fast ogt float %2411, 0.000000e+00
  br i1 %2450, label %2451, label %2454, !dx.controlflow.hints !113

; <label>:2451                                    ; preds = %2435
  %2452 = call float @dx.op.binary.f32(i32 36, float %2444, float %2449)  ; FMin(a,b)
  %2453 = call float @dx.op.binary.f32(i32 36, float %2443, float %2449)  ; FMin(a,b)
  br label %2457

; <label>:2454                                    ; preds = %2435
  %2455 = call float @dx.op.binary.f32(i32 35, float %2444, float %2449)  ; FMax(a,b)
  %2456 = call float @dx.op.binary.f32(i32 35, float %2443, float %2449)  ; FMax(a,b)
  br label %2457

; <label>:2457                                    ; preds = %2454, %2451
  %2458 = phi float [ %2452, %2451 ], [ %2455, %2454 ]
  %2459 = phi float [ %2453, %2451 ], [ %2456, %2454 ]
  %2460 = fcmp fast oge float %2458, 0.000000e+00
  %2461 = fcmp fast olt float %2458, %2252
  %2462 = and i1 %2460, %2461
  %2463 = fcmp fast ogt float %2459, 0.000000e+00
  %2464 = fcmp fast ole float %2459, %2252
  %2465 = and i1 %2463, %2464
  %2466 = or i1 %2462, %2465
  br i1 %2466, label %2467, label %2526, !dx.controlflow.hints !114

; <label>:2467                                    ; preds = %2457
  %2468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2458)  ; FMax(a,b)
  %2469 = call float @dx.op.binary.f32(i32 36, float %2252, float %2459)  ; FMin(a,b)
  br i1 %2450, label %2470, label %2492, !dx.controlflow.hints !115

; <label>:2470                                    ; preds = %2467
  %2471 = fmul fast float %2469, %2253
  %2472 = fmul fast float %2469, %2254
  %2473 = fmul fast float %2469, %2255
  %2474 = fsub fast float %2416, %2471
  %2475 = fsub fast float %2417, %2472
  %2476 = fsub fast float %2418, %2473
  %2477 = call float @dx.op.dot3.f32(i32 55, float %2474, float %2475, float %2476, float %2474, float %2475, float %2476)  ; Dot3(ax,ay,az,bx,by,bz)
  %2478 = call float @dx.op.unary.f32(i32 25, float %2477)  ; Rsqrt(value)
  %2479 = fmul fast float %2478, %2474
  %2480 = fmul fast float %2478, %2475
  %2481 = fmul fast float %2478, %2476
  %2482 = call float @dx.op.dot3.f32(i32 55, float %2479, float %2480, float %2481, float %2297, float %2298, float %2299)  ; Dot3(ax,ay,az,bx,by,bz)
  %2483 = fmul fast float %2482, %2319
  %2484 = fadd fast float %2483, %2320
  %2485 = fcmp fast olt float %2484, 0xBF1A36E2E0000000
  %2486 = select i1 %2485, float 0.000000e+00, float %2468
  %2487 = select i1 %2485, float %2468, float %2469
  %2488 = fsub fast float %2486, %2487
  %2489 = call float @dx.op.unary.f32(i32 6, float %2488)  ; FAbs(value)
  %2490 = fcmp fast olt float %2489, 0x3F1A36E2E0000000
  br i1 %2490, label %2491, label %2514, !dx.controlflow.hints !116

; <label>:2491                                    ; preds = %2470
  br label %2514

; <label>:2492                                    ; preds = %2467
  %2493 = fmul fast float %2468, %2253
  %2494 = fmul fast float %2468, %2254
  %2495 = fmul fast float %2468, %2255
  %2496 = fsub fast float %2416, %2493
  %2497 = fsub fast float %2417, %2494
  %2498 = fsub fast float %2418, %2495
  %2499 = call float @dx.op.dot3.f32(i32 55, float %2496, float %2497, float %2498, float %2496, float %2497, float %2498)  ; Dot3(ax,ay,az,bx,by,bz)
  %2500 = call float @dx.op.unary.f32(i32 25, float %2499)  ; Rsqrt(value)
  %2501 = fmul fast float %2500, %2496
  %2502 = fmul fast float %2500, %2497
  %2503 = fmul fast float %2500, %2498
  %2504 = call float @dx.op.dot3.f32(i32 55, float %2501, float %2502, float %2503, float %2297, float %2298, float %2299)  ; Dot3(ax,ay,az,bx,by,bz)
  %2505 = fmul fast float %2504, %2319
  %2506 = fadd fast float %2505, %2320
  %2507 = fcmp fast olt float %2506, 0xBF1A36E2E0000000
  %2508 = select i1 %2507, float %2469, float %2468
  %2509 = select i1 %2507, float %2252, float %2469
  %2510 = fsub fast float %2508, %2509
  %2511 = call float @dx.op.unary.f32(i32 6, float %2510)  ; FAbs(value)
  %2512 = fcmp fast olt float %2511, 0x3F1A36E2E0000000
  br i1 %2512, label %2513, label %2514, !dx.controlflow.hints !117

; <label>:2513                                    ; preds = %2492
  br label %2514

; <label>:2514                                    ; preds = %2513, %2492, %2491, %2470
  %2515 = phi float [ 0.000000e+00, %2491 ], [ %2486, %2470 ], [ %2508, %2513 ], [ %2508, %2492 ]
  %2516 = phi float [ %2487, %2491 ], [ %2487, %2470 ], [ %2252, %2513 ], [ %2509, %2492 ]
  %2517 = fmul fast float %2515, %2253
  %2518 = fmul fast float %2515, %2254
  %2519 = fmul fast float %2515, %2255
  %2520 = fadd fast float %2517, %2235
  %2521 = fadd fast float %2518, %2236
  %2522 = fadd fast float %2519, %2237
  %2523 = fsub fast float %2516, %2515
  %2524 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2523)  ; FMax(a,b)
  %2525 = fmul fast float %2524, %2333
  br label %2526

; <label>:2526                                    ; preds = %2514, %2457, %2334, %2276
  %2527 = phi float [ %2405, %2514 ], [ %2405, %2457 ], [ %2405, %2334 ], [ %2313, %2276 ]
  %2528 = phi float [ %2406, %2514 ], [ %2406, %2457 ], [ %2406, %2334 ], [ %2314, %2276 ]
  %2529 = phi float [ %2407, %2514 ], [ %2407, %2457 ], [ %2407, %2334 ], [ %2315, %2276 ]
  %2530 = phi float [ %2520, %2514 ], [ %2235, %2457 ], [ %2235, %2334 ], [ %2235, %2276 ]
  %2531 = phi float [ %2521, %2514 ], [ %2236, %2457 ], [ %2236, %2334 ], [ %2236, %2276 ]
  %2532 = phi float [ %2522, %2514 ], [ %2237, %2457 ], [ %2237, %2334 ], [ %2237, %2276 ]
  %2533 = phi float [ %2524, %2514 ], [ %2252, %2457 ], [ %2252, %2334 ], [ %2252, %2276 ]
  %2534 = phi float [ %2525, %2514 ], [ 1.000000e+00, %2457 ], [ 1.000000e+00, %2334 ], [ 1.000000e+00, %2276 ]
  %2535 = fsub fast float %2527, %2530
  %2536 = fsub fast float %2528, %2531
  %2537 = fsub fast float %2529, %2532
  %2538 = call float @dx.op.dot3.f32(i32 55, float %2535, float %2536, float %2537, float %2253, float %2254, float %2255)  ; Dot3(ax,ay,az,bx,by,bz)
  %2539 = call float @dx.op.binary.f32(i32 35, float %2538, float 0.000000e+00)  ; FMax(a,b)
  %2540 = call float @dx.op.binary.f32(i32 36, float %2539, float %2533)  ; FMin(a,b)
  %2541 = fmul fast float %2540, %2253
  %2542 = fmul fast float %2540, %2254
  %2543 = fmul fast float %2540, %2255
  %2544 = fsub fast float %2530, %2527
  %2545 = fadd fast float %2544, %2541
  %2546 = fsub fast float %2531, %2528
  %2547 = fadd fast float %2546, %2542
  %2548 = fsub fast float %2532, %2529
  %2549 = fadd fast float %2548, %2543
  %2550 = fmul fast float %2545, %2545
  %2551 = fmul fast float %2547, %2547
  %2552 = fadd fast float %2550, %2551
  %2553 = fmul fast float %2549, %2549
  %2554 = fadd fast float %2552, %2553
  %2555 = call float @dx.op.unary.f32(i32 24, float %2554)  ; Sqrt(value)
  %2556 = fsub fast float -0.000000e+00, %2540
  %2557 = call float @dx.op.unary.f32(i32 6, float %2556)  ; FAbs(value)
  %2558 = fadd fast float %2557, 0x3DDB7CDFE0000000
  %2559 = fcmp fast oge float %2555, 0.000000e+00
  %2560 = fsub fast float -0.000000e+00, %2558
  %2561 = select i1 %2559, float %2560, float %2558
  %2562 = fadd fast float %2561, %2555
  %2563 = fsub fast float -0.000000e+00, %2555
  %2564 = select i1 %2559, float %2555, float %2563
  %2565 = fadd fast float %2558, %2564
  %2566 = fdiv fast float %2562, %2565
  %2567 = select i1 %2559, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %2568 = fmul fast float %2566, %2566
  %2569 = fmul fast float %2568, 0x3FC9205BC0000000
  %2570 = fadd fast float %2569, 0xBFEF6A1620000000
  %2571 = fmul fast float %2570, %2566
  %2572 = fadd fast float %2571, %2567
  %2573 = fcmp ole float %2540, -0.000000e+00
  %2574 = fsub fast float -0.000000e+00, %2572
  %2575 = select i1 %2573, float %2572, float %2574
  %2576 = fsub fast float %2533, %2540
  %2577 = call float @dx.op.unary.f32(i32 6, float %2576)  ; FAbs(value)
  %2578 = fadd fast float %2577, 0x3DDB7CDFE0000000
  %2579 = fsub fast float -0.000000e+00, %2578
  %2580 = select i1 %2559, float %2579, float %2578
  %2581 = fadd fast float %2580, %2555
  %2582 = fadd fast float %2578, %2564
  %2583 = fdiv fast float %2581, %2582
  %2584 = fmul fast float %2583, %2583
  %2585 = fmul fast float %2584, 0x3FC9205BC0000000
  %2586 = fadd fast float %2585, 0xBFEF6A1620000000
  %2587 = fmul fast float %2586, %2583
  %2588 = fadd fast float %2587, %2567
  %2589 = fcmp fast oge float %2576, 0.000000e+00
  %2590 = fsub fast float -0.000000e+00, %2588
  %2591 = select i1 %2589, float %2588, float %2590
  %2592 = fsub fast float %2591, %2575
  %2593 = fmul fast float %2592, %120
  %2594 = fadd fast float %2593, %2575
  %2595 = call float @dx.op.unary.f32(i32 14, float %2594)  ; Tan(value)
  %2596 = fmul fast float %2595, %2555
  %2597 = fadd fast float %2596, %2540
  %2598 = fmul fast float %2555, %2555
  %2599 = fmul fast float %2596, %2596
  %2600 = fadd fast float %2599, %2598
  %2601 = fmul fast float %2592, %2600
  %2602 = fdiv fast float %2555, %2601
  %2603 = fdiv fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2534, %2333
  %2605 = fmul fast float %2604, %2603
  %2606 = fmul fast float %2597, %2253
  %2607 = fmul fast float %2597, %2254
  %2608 = fmul fast float %2597, %2255
  %2609 = fadd fast float %2606, %2530
  %2610 = fadd fast float %2607, %2531
  %2611 = fadd fast float %2608, %2532
  %2612 = call float @dx.op.dot3.f32(i32 55, float %2305, float %2306, float %2307, float %2305, float %2306, float %2307)  ; Dot3(ax,ay,az,bx,by,bz)
  %2613 = fsub fast float %2609, %2313
  %2614 = fsub fast float %2610, %2314
  %2615 = fsub fast float %2611, %2315
  %2616 = call float @dx.op.dot3.f32(i32 55, float %2613, float %2614, float %2615, float %2305, float %2306, float %2307)  ; Dot3(ax,ay,az,bx,by,bz)
  %2617 = fdiv fast float %2616, %2612
  %2618 = call float @dx.op.binary.f32(i32 35, float %2617, float -1.000000e+00)  ; FMax(a,b)
  %2619 = call float @dx.op.binary.f32(i32 36, float %2618, float 1.000000e+00)  ; FMin(a,b)
  %2620 = fmul fast float %2619, %2305
  %2621 = fmul fast float %2619, %2306
  %2622 = fmul fast float %2619, %2307
  %2623 = fadd fast float %2620, %2313
  %2624 = fadd fast float %2621, %2314
  %2625 = fadd fast float %2622, %2315
  %2626 = fsub fast float %2623, %2609
  %2627 = fsub fast float %2624, %2610
  %2628 = fsub fast float %2625, %2611
  %2629 = call float @dx.op.dot3.f32(i32 55, float %2626, float %2627, float %2628, float %2626, float %2627, float %2628)  ; Dot3(ax,ay,az,bx,by,bz)
  %2630 = call float @dx.op.unary.f32(i32 24, float %2629)  ; Sqrt(value)
  %2631 = fdiv fast float 1.000000e+00, %2630
  %2632 = fmul fast float %2626, %2631
  %2633 = fmul fast float %2627, %2631
  %2634 = fmul fast float %2628, %2631
  %2635 = fadd fast float %2630, %2294
  %2636 = fdiv fast float 1.000000e+00, %2635
  %2637 = fmul float %2310, %2636
  %2638 = fmul float %2637, %2637
  %2639 = call float @dx.op.unary.f32(i32 7, float %2638)  ; Saturate(value)
  br i1 %2332, label %2640, label %2664, !dx.controlflow.hints !118

; <label>:2640                                    ; preds = %2526
  %2641 = fmul fast float %2321, %2297
  %2642 = fmul fast float %2321, %2298
  %2643 = fmul fast float %2321, %2299
  %2644 = fsub fast float %2641, %2609
  %2645 = fadd fast float %2644, %2623
  %2646 = fsub fast float %2642, %2610
  %2647 = fadd fast float %2646, %2624
  %2648 = fsub fast float %2643, %2611
  %2649 = fadd fast float %2648, %2625
  %2650 = call float @dx.op.dot3.f32(i32 55, float %2645, float %2647, float %2649, float %2645, float %2647, float %2649)  ; Dot3(ax,ay,az,bx,by,bz)
  %2651 = call float @dx.op.unary.f32(i32 25, float %2650)  ; Rsqrt(value)
  %2652 = fmul fast float %2651, %2645
  %2653 = fmul fast float %2651, %2647
  %2654 = fmul fast float %2651, %2649
  %2655 = fsub fast float %2609, %2623
  %2656 = fsub fast float %2610, %2624
  %2657 = fsub fast float %2611, %2625
  %2658 = fsub fast float -0.000000e+00, %2655
  %2659 = fsub fast float -0.000000e+00, %2656
  %2660 = fsub fast float -0.000000e+00, %2657
  %2661 = call float @dx.op.dot3.f32(i32 55, float %2658, float %2659, float %2660, float %2297, float %2298, float %2299)  ; Dot3(ax,ay,az,bx,by,bz)
  %2662 = fcmp fast ogt float %2661, 0.000000e+00
  %2663 = uitofp i1 %2662 to float
  br label %2664

; <label>:2664                                    ; preds = %2640, %2526
  %2665 = phi float [ %2663, %2640 ], [ 1.000000e+00, %2526 ]
  %2666 = phi float [ %2652, %2640 ], [ %2632, %2526 ]
  %2667 = phi float [ %2653, %2640 ], [ %2633, %2526 ]
  %2668 = phi float [ %2654, %2640 ], [ %2634, %2526 ]
  %2669 = call float @dx.op.dot3.f32(i32 55, float %2297, float %2298, float %2299, float %2666, float %2667, float %2668)  ; Dot3(ax,ay,az,bx,by,bz)
  %2670 = fmul fast float %2669, %2669
  %2671 = call float @dx.op.unary.f32(i32 7, float %2670)  ; Saturate(value)
  %2672 = fsub fast float 1.000000e+00, %2671
  %2673 = fmul fast float %2672, 5.000000e-01
  %2674 = fcmp fast ogt float %2669, 0.000000e+00
  %2675 = fsub fast float 1.000000e+00, %2673
  %2676 = select i1 %2674, float %2673, float %2675
  %2677 = fmul fast float %2676, %2329
  %2678 = fadd fast float %2677, %2327
  %2679 = fmul fast float %2678, 0x3EF0001000000000
  %2680 = fsub fast float %2623, %428
  %2681 = fsub fast float %2624, %429
  %2682 = fsub fast float %2625, %430
  %2683 = call float @dx.op.dot3.f32(i32 55, float %2680, float %2681, float %2682, float %2680, float %2681, float %2682)  ; Dot3(ax,ay,az,bx,by,bz)
  %2684 = fmul fast float %2205, %2205
  %2685 = fsub fast float %2683, %2684
  %2686 = fdiv fast float %2685, %2683
  %2687 = call float @dx.op.unary.f32(i32 24, float %2686)  ; Sqrt(value)
  %2688 = fsub fast float 1.000000e+00, %2687
  %2689 = fcmp fast olt float %2683, %2684
  %2690 = fmul fast float %2688, 2.560000e+02
  %2691 = select i1 %2689, float 2.560000e+02, float %2690
  %2692 = call float @dx.op.unary.f32(i32 23, float %2691)  ; Log(value)
  %2693 = call float @dx.op.binary.f32(i32 36, float %2692, float 7.000000e+00)  ; FMin(a,b)
  %2694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %2679, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %2693)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2695 = extractvalue %dx.types.ResRet.f32 %2694, 0
  %2696 = fmul fast float %2669, %2319
  %2697 = fadd fast float %2696, %2320
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2699 = select i1 %2332, float 1.000000e+00, float %2698
  %2700 = select i1 %2332, float %2698, float 1.000000e+00
  %2701 = fmul fast float %2630, %2316
  %2702 = fsub fast float 1.000000e+00, %2701
  %2703 = fmul fast float %2702, %2322
  %2704 = call float @dx.op.unary.f32(i32 7, float %2703)  ; Saturate(value)
  %2705 = fmul fast float %2704, %2700
  %2706 = fmul fast float %2705, 2.000000e+00
  %2707 = fsub fast float 3.000000e+00, %2706
  %2708 = fmul fast float %2695, %2665
  %2709 = fmul fast float %2705, %2705
  %2710 = fmul fast float %2709, %2708
  %2711 = fmul fast float %2710, %2707
  %2712 = call float @dx.op.binary.f32(i32 36, float %2711, float %2711)  ; FMin(a,b)
  %2713 = call float @dx.op.binary.f32(i32 36, float %2711, float %2712)  ; FMin(a,b)
  %2714 = fcmp fast ogt float %2713, 0.000000e+00
  br i1 %2714, label %2720, label %2715, !dx.controlflow.hints !119

; <label>:2715                                    ; preds = %3244, %2808, %2664
  %2716 = phi float [ %3277, %3244 ], [ %2278, %2808 ], [ %2278, %2664 ]
  %2717 = phi float [ %3278, %3244 ], [ %2279, %2808 ], [ %2279, %2664 ]
  %2718 = phi float [ %3279, %3244 ], [ %2280, %2808 ], [ %2280, %2664 ]
  %2719 = icmp eq i32 %2277, %2285
  br i1 %2719, label %3280, label %2276

; <label>:2720                                    ; preds = %2664
  %2721 = icmp eq i32 %2330, 255
  br i1 %2721, label %2808, label %2722, !dx.controlflow.hints !120

; <label>:2722                                    ; preds = %2720
  %2723 = mul nuw nsw i32 %2330, 176
  %2724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2727 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2728 = extractvalue %dx.types.ResRet.f32 %2724, 3
  %2729 = add nuw nsw i32 %2723, 16
  %2730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.ResRet.f32 %2730, 1
  %2733 = add nuw nsw i32 %2723, 32
  %2734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.ResRet.f32 %2734, 2
  %2737 = add nuw nsw i32 %2723, 48
  %2738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.ResRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.ResRet.f32 %2738, 2
  %2742 = extractvalue %dx.types.ResRet.f32 %2738, 3
  %2743 = add nuw nsw i32 %2723, 64
  %2744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.ResRet.f32 %2744, 1
  %2747 = extractvalue %dx.types.ResRet.f32 %2744, 2
  %2748 = extractvalue %dx.types.ResRet.f32 %2744, 3
  %2749 = add nuw nsw i32 %2723, 80
  %2750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.ResRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.ResRet.f32 %2750, 2
  %2754 = extractvalue %dx.types.ResRet.f32 %2750, 3
  %2755 = add nuw nsw i32 %2723, 96
  %2756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = extractvalue %dx.types.ResRet.f32 %2756, 3
  %2761 = bitcast float %2732 to i32
  %2762 = fmul fast float %2736, %2632
  %2763 = fmul fast float %2736, %2633
  %2764 = fmul fast float %2736, %2634
  %2765 = fsub fast float %2609, %2762
  %2766 = fsub fast float %2610, %2763
  %2767 = fsub fast float %2611, %2764
  %2768 = fmul fast float %2765, %2739
  %2769 = call float @dx.op.tertiary.f32(i32 46, float %2766, float %2745, float %2768)  ; FMad(a,b,c)
  %2770 = call float @dx.op.tertiary.f32(i32 46, float %2767, float %2751, float %2769)  ; FMad(a,b,c)
  %2771 = fadd fast float %2770, %2757
  %2772 = fmul fast float %2765, %2740
  %2773 = call float @dx.op.tertiary.f32(i32 46, float %2766, float %2746, float %2772)  ; FMad(a,b,c)
  %2774 = call float @dx.op.tertiary.f32(i32 46, float %2767, float %2752, float %2773)  ; FMad(a,b,c)
  %2775 = fadd fast float %2774, %2758
  %2776 = fmul fast float %2765, %2741
  %2777 = call float @dx.op.tertiary.f32(i32 46, float %2766, float %2747, float %2776)  ; FMad(a,b,c)
  %2778 = call float @dx.op.tertiary.f32(i32 46, float %2767, float %2753, float %2777)  ; FMad(a,b,c)
  %2779 = fadd fast float %2778, %2759
  %2780 = fmul fast float %2765, %2742
  %2781 = call float @dx.op.tertiary.f32(i32 46, float %2766, float %2748, float %2780)  ; FMad(a,b,c)
  %2782 = call float @dx.op.tertiary.f32(i32 46, float %2767, float %2754, float %2781)  ; FMad(a,b,c)
  %2783 = fadd fast float %2782, %2760
  %2784 = fdiv fast float %2771, %2783
  %2785 = fdiv fast float %2775, %2783
  %2786 = fdiv fast float %2779, %2783
  %2787 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %2786)  ; FMax(a,b)
  %2788 = fmul fast float %2727, 5.000000e-01
  %2789 = call float @dx.op.tertiary.f32(i32 46, float %2788, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %2790 = fadd fast float %2789, %2784
  %2791 = fadd fast float %2785, %2788
  %2792 = fmul fast float %2790, %2731
  %2793 = fmul fast float %2791, %2731
  %2794 = call float @dx.op.binary.f32(i32 35, float %2792, float %2727)  ; FMax(a,b)
  %2795 = call float @dx.op.binary.f32(i32 35, float %2793, float %2727)  ; FMax(a,b)
  %2796 = call float @dx.op.binary.f32(i32 36, float %2794, float %2728)  ; FMin(a,b)
  %2797 = call float @dx.op.binary.f32(i32 36, float %2795, float %2728)  ; FMin(a,b)
  %2798 = fadd fast float %2796, %2725
  %2799 = fadd fast float %2797, %2726
  %2800 = uitofp i32 %2761 to float
  %2801 = fadd fast float %2787, %2735
  %2802 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %40, float %2798, float %2799, float %2800, float undef, i32 0, i32 0, i32 undef, float %2801)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2803 = extractvalue %dx.types.ResRet.f32 %2802, 0
  %2804 = fadd fast float %2803, -1.000000e+00
  %2805 = fmul fast float %2804, %2699
  %2806 = fadd fast float %2805, 1.000000e+00
  %2807 = fmul fast float %2806, %2711
  br label %2808

; <label>:2808                                    ; preds = %2722, %2720
  %2809 = phi float [ %2807, %2722 ], [ %2711, %2720 ]
  %2810 = call float @dx.op.binary.f32(i32 36, float %2809, float %2809)  ; FMin(a,b)
  %2811 = call float @dx.op.binary.f32(i32 36, float %2809, float %2810)  ; FMin(a,b)
  %2812 = fcmp fast ogt float %2811, 0.000000e+00
  br i1 %2812, label %2813, label %2715, !dx.controlflow.hints !121

; <label>:2813                                    ; preds = %2808
  br i1 %247, label %2814, label %3244, !dx.controlflow.hints !122

; <label>:2814                                    ; preds = %2813
  %2815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2816 = extractvalue %dx.types.CBufRet.i32 %2815, 0
  %2817 = and i32 %2816, 64
  %2818 = icmp ne i32 %2817, 0
  %2819 = fsub fast float %2315, %2256
  %2820 = fcmp fast ogt float %2819, 0.000000e+00
  %2821 = fsub fast float %198, %236
  %2822 = fcmp fast ogt float %2821, 0.000000e+00
  %2823 = xor i1 %2822, %2820
  %2824 = fsub fast float %2256, %2315
  %2825 = fmul fast float %2824, 2.000000e+00
  %2826 = fadd fast float %2825, %2315
  %2827 = select i1 %2823, float %2315, float %2826
  %2828 = fsub fast float %2313, %2210
  %2829 = fsub fast float %2314, %2211
  %2830 = fsub fast float %2827, %2212
  %2831 = call float @dx.op.dot3.f32(i32 55, float %2828, float %2829, float %2830, float %2828, float %2829, float %2830)  ; Dot3(ax,ay,az,bx,by,bz)
  %2832 = call float @dx.op.unary.f32(i32 25, float %2831)  ; Rsqrt(value)
  %2833 = fmul fast float %2832, %2828
  %2834 = fmul fast float %2832, %2829
  %2835 = fmul fast float %2832, %2830
  %2836 = fsub fast float %236, %198
  %2837 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2836)  ; Dot3(ax,ay,az,bx,by,bz)
  %2838 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2833, float %2834, float %2835)  ; Dot3(ax,ay,az,bx,by,bz)
  %2839 = fdiv fast float 1.000000e+00, %2838
  %2840 = fmul fast float %2839, %2837
  %2841 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2821, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2842 = fcmp fast ogt float %2841, 0.000000e+00
  %2843 = fcmp fast olt float %2841, 0.000000e+00
  %2844 = zext i1 %2842 to i32
  %2845 = zext i1 %2843 to i32
  %2846 = sub nsw i32 %2844, %2845
  %2847 = sitofp i32 %2846 to float
  %2848 = fsub fast float %2827, %2256
  %2849 = call float @dx.op.dot3.f32(i32 55, float %2828, float %2829, float %2848, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2850 = fcmp fast ogt float %2849, 0.000000e+00
  %2851 = fcmp fast olt float %2849, 0.000000e+00
  %2852 = zext i1 %2850 to i32
  %2853 = zext i1 %2851 to i32
  %2854 = sub nsw i32 %2852, %2853
  %2855 = sitofp i32 %2854 to float
  %2856 = fcmp fast une float %2847, %2855
  br i1 %2856, label %2857, label %2867, !dx.controlflow.hints !123

; <label>:2857                                    ; preds = %2814
  %2858 = fmul fast float %2840, %2835
  %2859 = fmul fast float %2840, %2834
  %2860 = fmul fast float %2840, %2833
  %2861 = fmul fast float %2860, %2860
  %2862 = fmul fast float %2859, %2859
  %2863 = fadd fast float %2861, %2862
  %2864 = fmul fast float %2858, %2858
  %2865 = fadd fast float %2863, %2864
  %2866 = call float @dx.op.unary.f32(i32 24, float %2865)  ; Sqrt(value)
  br label %2879

; <label>:2867                                    ; preds = %2814
  %2868 = icmp slt i32 %2846, 0
  br i1 %2868, label %2869, label %2879, !dx.controlflow.hints !124

; <label>:2869                                    ; preds = %2867
  %2870 = fsub fast float %2210, %2313
  %2871 = fsub fast float %2211, %2314
  %2872 = fsub fast float %2212, %2827
  %2873 = fmul fast float %2870, %2870
  %2874 = fmul fast float %2871, %2871
  %2875 = fadd fast float %2873, %2874
  %2876 = fmul fast float %2872, %2872
  %2877 = fadd fast float %2875, %2876
  %2878 = call float @dx.op.unary.f32(i32 24, float %2877)  ; Sqrt(value)
  br label %2879

; <label>:2879                                    ; preds = %2869, %2867, %2857
  %2880 = phi float [ %2866, %2857 ], [ %2878, %2869 ], [ 0.000000e+00, %2867 ]
  %2881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.i32 %2881, 1
  %2883 = icmp ne i32 %2882, 0
  %2884 = and i1 %2823, %2883
  %2885 = call float @dx.op.dot3.f32(i32 55, float %2833, float %2834, float %2835, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2886 = fmul fast float %2885, %2885
  %2887 = fsub fast float 1.000000e+00, %2886
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 0
  %2890 = extractvalue %dx.types.CBufRet.f32 %2888, 1
  %2891 = extractvalue %dx.types.CBufRet.f32 %2888, 2
  %2892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2892, 0
  %2894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.f32 %2894, 0
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 0
  %2898 = extractvalue %dx.types.CBufRet.f32 %2892, 1
  %2899 = extractvalue %dx.types.CBufRet.f32 %2894, 1
  %2900 = extractvalue %dx.types.CBufRet.f32 %2896, 1
  %2901 = extractvalue %dx.types.CBufRet.f32 %2892, 3
  %2902 = extractvalue %dx.types.CBufRet.f32 %2894, 3
  %2903 = extractvalue %dx.types.CBufRet.f32 %2896, 3
  %2904 = fadd fast float %2889, %2210
  %2905 = fadd fast float %2890, %2211
  %2906 = fadd fast float %2891, %2212
  %2907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %2908 = extractvalue %dx.types.CBufRet.f32 %2907, 0
  %2909 = extractvalue %dx.types.CBufRet.f32 %2907, 1
  %2910 = extractvalue %dx.types.CBufRet.f32 %2907, 2
  %2911 = extractvalue %dx.types.CBufRet.f32 %2907, 3
  br i1 %2884, label %2912, label %3105, !dx.controlflow.hints !125

; <label>:2912                                    ; preds = %2879
  %2913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %2914 = extractvalue %dx.types.CBufRet.f32 %2913, 0
  %2915 = fmul fast float %2914, %2914
  %2916 = fmul fast float %2915, %2887
  %2917 = fsub fast float 1.000000e+00, %2916
  %2918 = fcmp fast oge float %2917, 0.000000e+00
  %2919 = fmul fast float %2914, %2833
  %2920 = fmul fast float %2914, %2834
  %2921 = fmul fast float %2914, %2835
  %2922 = call float @dx.op.unary.f32(i32 24, float %2917)  ; Sqrt(value)
  %2923 = fmul fast float %2914, %2885
  %2924 = fsub fast float -0.000000e+00, %2922
  %2925 = fsub fast float %2924, %2923
  %2926 = fadd fast float %2925, %2921
  %2927 = select i1 %2918, float %2919, float 0.000000e+00
  %2928 = select i1 %2918, float %2920, float 0.000000e+00
  %2929 = select i1 %2918, float %2926, float 0.000000e+00
  %2930 = fmul fast float %2927, %2880
  %2931 = fmul fast float %2928, %2880
  %2932 = fmul fast float %2929, %2880
  %2933 = fadd fast float %2904, %2930
  %2934 = fadd fast float %2933, %2901
  %2935 = fadd fast float %2905, %2931
  %2936 = fadd fast float %2935, %2902
  %2937 = fadd fast float %2906, %2932
  %2938 = fadd fast float %2937, %2903
  %2939 = fmul fast float %2934, %2893
  %2940 = call float @dx.op.tertiary.f32(i32 46, float %2936, float %2895, float %2939)  ; FMad(a,b,c)
  %2941 = call float @dx.op.tertiary.f32(i32 46, float %2938, float %2897, float %2940)  ; FMad(a,b,c)
  %2942 = fmul fast float %2934, %2898
  %2943 = call float @dx.op.tertiary.f32(i32 46, float %2936, float %2899, float %2942)  ; FMad(a,b,c)
  %2944 = call float @dx.op.tertiary.f32(i32 46, float %2938, float %2900, float %2943)  ; FMad(a,b,c)
  %2945 = fsub fast float %2941, %2901
  %2946 = fsub fast float %2945, %2908
  %2947 = fadd fast float %2946, %2910
  %2948 = fsub fast float %2944, %2902
  %2949 = fsub fast float %2948, %2909
  %2950 = fadd fast float %2949, %2910
  %2951 = fmul fast float %2947, %2911
  %2952 = fmul fast float %2950, %2911
  %2953 = call float @dx.op.unary.f32(i32 7, float %2951)  ; Saturate(value)
  %2954 = call float @dx.op.unary.f32(i32 7, float %2952)  ; Saturate(value)
  %2955 = fsub fast float 1.000000e+00, %2953
  %2956 = fsub fast float 1.000000e+00, %2954
  %2957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %2955, float %2956, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2958 = extractvalue %dx.types.ResRet.f32 %2957, 0
  %2959 = fmul fast float %2958, 0x3FBC5ABC00000000
  %2960 = extractvalue %dx.types.CBufRet.f32 %2913, 1
  %2961 = fmul fast float %2960, %2960
  %2962 = fmul fast float %2961, %2887
  %2963 = fsub fast float 1.000000e+00, %2962
  %2964 = fcmp fast oge float %2963, 0.000000e+00
  %2965 = fmul fast float %2960, %2833
  %2966 = fmul fast float %2960, %2834
  %2967 = fmul fast float %2960, %2835
  %2968 = call float @dx.op.unary.f32(i32 24, float %2963)  ; Sqrt(value)
  %2969 = fmul fast float %2960, %2885
  %2970 = fsub fast float -0.000000e+00, %2968
  %2971 = fsub fast float %2970, %2969
  %2972 = fadd fast float %2971, %2967
  %2973 = select i1 %2964, float %2965, float 0.000000e+00
  %2974 = select i1 %2964, float %2966, float 0.000000e+00
  %2975 = select i1 %2964, float %2972, float 0.000000e+00
  %2976 = fmul fast float %2973, %2880
  %2977 = fmul fast float %2974, %2880
  %2978 = fmul fast float %2975, %2880
  %2979 = fadd fast float %2904, %2976
  %2980 = fadd fast float %2979, %2901
  %2981 = fadd fast float %2905, %2977
  %2982 = fadd fast float %2981, %2902
  %2983 = fadd fast float %2906, %2978
  %2984 = fadd fast float %2983, %2903
  %2985 = fmul fast float %2980, %2893
  %2986 = call float @dx.op.tertiary.f32(i32 46, float %2982, float %2895, float %2985)  ; FMad(a,b,c)
  %2987 = call float @dx.op.tertiary.f32(i32 46, float %2984, float %2897, float %2986)  ; FMad(a,b,c)
  %2988 = fmul fast float %2980, %2898
  %2989 = call float @dx.op.tertiary.f32(i32 46, float %2982, float %2899, float %2988)  ; FMad(a,b,c)
  %2990 = call float @dx.op.tertiary.f32(i32 46, float %2984, float %2900, float %2989)  ; FMad(a,b,c)
  %2991 = fsub fast float %2987, %2901
  %2992 = fsub fast float %2991, %2908
  %2993 = fadd fast float %2992, %2910
  %2994 = fsub fast float %2990, %2902
  %2995 = fsub fast float %2994, %2909
  %2996 = fadd fast float %2995, %2910
  %2997 = fmul fast float %2993, %2911
  %2998 = fmul fast float %2996, %2911
  %2999 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  %3000 = call float @dx.op.unary.f32(i32 7, float %2998)  ; Saturate(value)
  %3001 = fsub fast float 1.000000e+00, %2999
  %3002 = fsub fast float 1.000000e+00, %3000
  %3003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3001, float %3002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 0
  %3005 = fmul fast float %3004, 0x3F9E4BBD60000000
  %3006 = extractvalue %dx.types.CBufRet.f32 %2913, 2
  %3007 = fmul fast float %3006, %3006
  %3008 = fmul fast float %3007, %2887
  %3009 = fsub fast float 1.000000e+00, %3008
  %3010 = fcmp fast oge float %3009, 0.000000e+00
  %3011 = fmul fast float %3006, %2833
  %3012 = fmul fast float %3006, %2834
  %3013 = fmul fast float %3006, %2835
  %3014 = call float @dx.op.unary.f32(i32 24, float %3009)  ; Sqrt(value)
  %3015 = fmul fast float %3006, %2885
  %3016 = fsub fast float -0.000000e+00, %3014
  %3017 = fsub fast float %3016, %3015
  %3018 = fadd fast float %3017, %3013
  %3019 = select i1 %3010, float %3011, float 0.000000e+00
  %3020 = select i1 %3010, float %3012, float 0.000000e+00
  %3021 = select i1 %3010, float %3018, float 0.000000e+00
  %3022 = fmul fast float %3019, %2880
  %3023 = fmul fast float %3020, %2880
  %3024 = fmul fast float %3021, %2880
  %3025 = fadd fast float %2904, %3022
  %3026 = fadd fast float %3025, %2901
  %3027 = fadd fast float %2905, %3023
  %3028 = fadd fast float %3027, %2902
  %3029 = fadd fast float %2906, %3024
  %3030 = fadd fast float %3029, %2903
  %3031 = fmul fast float %3026, %2893
  %3032 = call float @dx.op.tertiary.f32(i32 46, float %3028, float %2895, float %3031)  ; FMad(a,b,c)
  %3033 = call float @dx.op.tertiary.f32(i32 46, float %3030, float %2897, float %3032)  ; FMad(a,b,c)
  %3034 = fmul fast float %3026, %2898
  %3035 = call float @dx.op.tertiary.f32(i32 46, float %3028, float %2899, float %3034)  ; FMad(a,b,c)
  %3036 = call float @dx.op.tertiary.f32(i32 46, float %3030, float %2900, float %3035)  ; FMad(a,b,c)
  %3037 = fsub fast float %3033, %2901
  %3038 = fsub fast float %3037, %2908
  %3039 = fadd fast float %3038, %2910
  %3040 = fsub fast float %3036, %2902
  %3041 = fsub fast float %3040, %2909
  %3042 = fadd fast float %3041, %2910
  %3043 = fmul fast float %3039, %2911
  %3044 = fmul fast float %3042, %2911
  %3045 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3046 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3047 = fsub fast float 1.000000e+00, %3045
  %3048 = fsub fast float 1.000000e+00, %3046
  %3049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3047, float %3048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = fmul fast float %3050, 0x3FDDEACB00000000
  %3052 = fadd fast float %3051, %3005
  %3053 = extractvalue %dx.types.CBufRet.f32 %2913, 3
  %3054 = fmul fast float %3053, %3053
  %3055 = fmul fast float %3054, %2887
  %3056 = fsub fast float 1.000000e+00, %3055
  %3057 = fcmp fast oge float %3056, 0.000000e+00
  %3058 = fmul fast float %3053, %2833
  %3059 = fmul fast float %3053, %2834
  %3060 = fmul fast float %3053, %2835
  %3061 = call float @dx.op.unary.f32(i32 24, float %3056)  ; Sqrt(value)
  %3062 = fmul fast float %3053, %2885
  %3063 = fsub fast float -0.000000e+00, %3061
  %3064 = fsub fast float %3063, %3062
  %3065 = fadd fast float %3064, %3060
  %3066 = select i1 %3057, float %3058, float 0.000000e+00
  %3067 = select i1 %3057, float %3059, float 0.000000e+00
  %3068 = select i1 %3057, float %3065, float 0.000000e+00
  %3069 = fmul fast float %3066, %2880
  %3070 = fmul fast float %3067, %2880
  %3071 = fmul fast float %3068, %2880
  %3072 = fadd fast float %2904, %3069
  %3073 = fadd fast float %3072, %2901
  %3074 = fadd fast float %2905, %3070
  %3075 = fadd fast float %3074, %2902
  %3076 = fadd fast float %2906, %3071
  %3077 = fadd fast float %3076, %2903
  %3078 = fmul fast float %3073, %2893
  %3079 = call float @dx.op.tertiary.f32(i32 46, float %3075, float %2895, float %3078)  ; FMad(a,b,c)
  %3080 = call float @dx.op.tertiary.f32(i32 46, float %3077, float %2897, float %3079)  ; FMad(a,b,c)
  %3081 = fmul fast float %3073, %2898
  %3082 = call float @dx.op.tertiary.f32(i32 46, float %3075, float %2899, float %3081)  ; FMad(a,b,c)
  %3083 = call float @dx.op.tertiary.f32(i32 46, float %3077, float %2900, float %3082)  ; FMad(a,b,c)
  %3084 = fsub fast float %3080, %2901
  %3085 = fsub fast float %3084, %2908
  %3086 = fadd fast float %3085, %2910
  %3087 = fsub fast float %3083, %2902
  %3088 = fsub fast float %3087, %2909
  %3089 = fadd fast float %3088, %2910
  %3090 = fmul fast float %3086, %2911
  %3091 = fmul fast float %3089, %2911
  %3092 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3094 = fsub fast float 1.000000e+00, %3092
  %3095 = fsub fast float 1.000000e+00, %3093
  %3096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3094, float %3095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = fmul fast float %3097, 0x3FE0183CA0000000
  %3099 = fmul fast float %3097, 0x3FB51033E0000000
  %3100 = fadd fast float %3052, %3098
  %3101 = fadd fast float %3050, %3004
  %3102 = fmul fast float %3101, 0x3FD9D2A200000000
  %3103 = fadd fast float %3099, %2959
  %3104 = fadd fast float %3103, %3102
  br label %3151

; <label>:3105                                    ; preds = %2879
  %3106 = fmul fast float %2887, 0x3FE2024E20000000
  %3107 = fsub fast float 1.000000e+00, %3106
  %3108 = fcmp fast oge float %3107, 0.000000e+00
  %3109 = fmul fast float %2833, 0x3FE8018960000000
  %3110 = fmul fast float %2834, 0x3FE8018960000000
  %3111 = fmul fast float %2835, 0x3FE8018960000000
  %3112 = call float @dx.op.unary.f32(i32 24, float %3107)  ; Sqrt(value)
  %3113 = fmul fast float %2885, 0x3FE8018960000000
  %3114 = fsub fast float %3111, %3112
  %3115 = fsub fast float %3114, %3113
  %3116 = select i1 %3108, float %3109, float 0.000000e+00
  %3117 = select i1 %3108, float %3110, float 0.000000e+00
  %3118 = select i1 %3108, float %3115, float 0.000000e+00
  %3119 = select i1 %2823, float %3116, float %2833
  %3120 = select i1 %2823, float %3117, float %2834
  %3121 = select i1 %2823, float %3118, float %2835
  %3122 = fmul fast float %3119, %2880
  %3123 = fmul fast float %3120, %2880
  %3124 = fmul fast float %3121, %2880
  %3125 = fadd fast float %2904, %3122
  %3126 = fadd fast float %3125, %2901
  %3127 = fadd fast float %2905, %3123
  %3128 = fadd fast float %3127, %2902
  %3129 = fadd fast float %2906, %3124
  %3130 = fadd fast float %3129, %2903
  %3131 = fmul fast float %3126, %2893
  %3132 = call float @dx.op.tertiary.f32(i32 46, float %3128, float %2895, float %3131)  ; FMad(a,b,c)
  %3133 = call float @dx.op.tertiary.f32(i32 46, float %3130, float %2897, float %3132)  ; FMad(a,b,c)
  %3134 = fmul fast float %3126, %2898
  %3135 = call float @dx.op.tertiary.f32(i32 46, float %3128, float %2899, float %3134)  ; FMad(a,b,c)
  %3136 = call float @dx.op.tertiary.f32(i32 46, float %3130, float %2900, float %3135)  ; FMad(a,b,c)
  %3137 = fsub fast float %3133, %2901
  %3138 = fsub fast float %3137, %2908
  %3139 = fadd fast float %3138, %2910
  %3140 = fsub fast float %3136, %2902
  %3141 = fsub fast float %3140, %2909
  %3142 = fadd fast float %3141, %2910
  %3143 = fmul fast float %3139, %2911
  %3144 = fmul fast float %3142, %2911
  %3145 = call float @dx.op.unary.f32(i32 7, float %3143)  ; Saturate(value)
  %3146 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3147 = fsub fast float 1.000000e+00, %3145
  %3148 = fsub fast float 1.000000e+00, %3146
  %3149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3147, float %3148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3150 = extractvalue %dx.types.ResRet.f32 %3149, 0
  br label %3151

; <label>:3151                                    ; preds = %3105, %2912
  %3152 = phi float [ %3150, %3105 ], [ %3100, %2912 ]
  %3153 = phi float [ %3150, %3105 ], [ %3104, %2912 ]
  %3154 = phi float [ %3150, %3105 ], [ %2958, %2912 ]
  %3155 = fmul fast float %2828, %2828
  %3156 = fmul fast float %2829, %2829
  %3157 = fadd fast float %3155, %3156
  %3158 = fmul fast float %2830, %2830
  %3159 = fadd fast float %3157, %3158
  %3160 = call float @dx.op.unary.f32(i32 24, float %3159)  ; Sqrt(value)
  %3161 = fsub fast float %2210, %2313
  %3162 = fsub fast float %2211, %2314
  %3163 = fsub fast float %2212, %2315
  %3164 = fmul fast float %3161, %3161
  %3165 = fmul fast float %3162, %3162
  %3166 = fadd fast float %3164, %3165
  %3167 = fmul fast float %3163, %3163
  %3168 = fadd fast float %3166, %3167
  %3169 = call float @dx.op.unary.f32(i32 24, float %3168)  ; Sqrt(value)
  %3170 = fsub fast float %3160, %3169
  %3171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3172 = extractvalue %dx.types.CBufRet.f32 %3171, 0
  %3173 = call float @dx.op.unary.f32(i32 6, float %3172)  ; FAbs(value)
  %3174 = fmul fast float %3169, %3169
  %3175 = fmul fast float %3174, %3173
  %3176 = fmul fast float %3170, %3170
  %3177 = fadd fast float %3176, %3174
  %3178 = fdiv fast float %3175, %3177
  %3179 = call float @dx.op.unary.f32(i32 7, float %3178)  ; Saturate(value)
  %3180 = and i1 %2822, %2820
  %3181 = fsub fast float -0.000000e+00, %2880
  %3182 = select i1 %3180, float -0.000000e+00, float %3181
  %3183 = fmul fast float %1219, 0x3FF7154760000000
  %3184 = fmul fast float %3183, %3182
  %3185 = fmul fast float %1220, 0x3FF7154760000000
  %3186 = fmul fast float %3185, %3182
  %3187 = fmul fast float %1221, 0x3FF7154760000000
  %3188 = fmul fast float %3187, %3182
  %3189 = call float @dx.op.unary.f32(i32 21, float %3184)  ; Exp(value)
  %3190 = call float @dx.op.unary.f32(i32 21, float %3186)  ; Exp(value)
  %3191 = call float @dx.op.unary.f32(i32 21, float %3188)  ; Exp(value)
  %3192 = call float @dx.op.unary.f32(i32 7, float %3189)  ; Saturate(value)
  %3193 = call float @dx.op.unary.f32(i32 7, float %3190)  ; Saturate(value)
  %3194 = call float @dx.op.unary.f32(i32 7, float %3191)  ; Saturate(value)
  %3195 = call float @dx.op.unary.f32(i32 6, float %2885)  ; FAbs(value)
  %3196 = fsub fast float 1.000000e+00, %3195
  %3197 = bitcast float %3196 to i32
  %3198 = sitofp i32 %3197 to float
  %3199 = fptosi float %3198 to i32
  %3200 = bitcast i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3FEF333340000000
  %3202 = fadd fast float %3201, 0x3F999999A0000000
  %3203 = call float @dx.op.unary.f32(i32 7, float %3202)  ; Saturate(value)
  %3204 = fsub fast float 1.000000e+00, %3203
  %3205 = fadd fast float %3152, 1.000000e+00
  %3206 = fadd fast float %3153, 1.000000e+00
  %3207 = fadd fast float %3154, 1.000000e+00
  %3208 = fmul fast float %3192, %3205
  %3209 = fmul fast float %3193, %3206
  %3210 = fmul fast float %3194, %3207
  %3211 = fmul fast float %3208, %3204
  %3212 = fmul fast float %3209, %3204
  %3213 = fmul fast float %3210, %3204
  %3214 = fmul fast float %3179, %3205
  %3215 = fmul fast float %3214, %3192
  %3216 = fmul fast float %3215, %3203
  %3217 = fmul fast float %3179, %3206
  %3218 = fmul fast float %3217, %3193
  %3219 = fmul fast float %3218, %3203
  %3220 = fmul fast float %3179, %3207
  %3221 = fmul fast float %3220, %3194
  %3222 = fmul fast float %3221, %3203
  %3223 = fadd fast float %3216, %3192
  %3224 = fadd fast float %3219, %3193
  %3225 = fadd fast float %3222, %3194
  %3226 = call float @dx.op.unary.f32(i32 6, float %2821)  ; FAbs(value)
  %3227 = call float @dx.op.unary.f32(i32 7, float %3226)  ; Saturate(value)
  %3228 = select i1 %2823, float %3211, float %3223
  %3229 = select i1 %2823, float %3212, float %3224
  %3230 = select i1 %2823, float %3213, float %3225
  %3231 = select i1 %2818, float %3227, float 0.000000e+00
  %3232 = fsub fast float %3228, %3192
  %3233 = fsub fast float %3229, %3193
  %3234 = fsub fast float %3230, %3194
  %3235 = fmul fast float %3232, %3231
  %3236 = fmul fast float %3233, %3231
  %3237 = fmul fast float %3234, %3231
  %3238 = fadd fast float %3235, %3192
  %3239 = fadd fast float %3236, %3193
  %3240 = fadd fast float %3237, %3194
  %3241 = fmul fast float %3238, %2289
  %3242 = fmul fast float %3239, %2290
  %3243 = fmul fast float %3240, %2291
  br label %3244

; <label>:3244                                    ; preds = %3151, %2813
  %3245 = phi float [ %3241, %3151 ], [ %2289, %2813 ]
  %3246 = phi float [ %3242, %3151 ], [ %2290, %2813 ]
  %3247 = phi float [ %3243, %3151 ], [ %2291, %2813 ]
  %3248 = call float @dx.op.dot3.f32(i32 55, float %2632, float %2633, float %2634, float %209, float %210, float %211)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = fcmp fast ogt float %2204, 0.000000e+00
  %3250 = select i1 %3249, float 1.000000e+00, float -1.000000e+00
  %3251 = fmul fast float %120, 7.812500e-03
  %3252 = fmul fast float %120, 3.125000e-02
  %3253 = fadd fast float %3252, -3.125000e-02
  %3254 = fmul fast float %3250, 5.000000e-01
  %3255 = fmul fast float %3254, %3248
  %3256 = fmul fast float %3250, %2204
  %3257 = fadd fast float %3251, 4.921875e-01
  %3258 = fadd fast float %3257, %3255
  %3259 = fadd fast float %3251, 0x3FB25F3060000000
  %3260 = fadd fast float %3253, %3256
  %3261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %3258, float %3259, float %3260, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3262 = extractvalue %dx.types.ResRet.f32 %3261, 0
  %3263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3264 = extractvalue %dx.types.CBufRet.f32 %3263, 1
  %3265 = extractvalue %dx.types.CBufRet.f32 %3263, 2
  %3266 = select i1 %2332, float %3264, float %3265
  %3267 = fmul fast float %2639, 0x400921FB60000000
  %3268 = fmul fast float %3267, %2809
  %3269 = fmul fast float %3268, %3262
  %3270 = fmul fast float %3269, %3266
  %3271 = fmul fast float %3245, %2605
  %3272 = fmul fast float %3271, %3270
  %3273 = fmul fast float %3246, %2605
  %3274 = fmul fast float %3273, %3270
  %3275 = fmul fast float %3247, %2605
  %3276 = fmul fast float %3275, %3270
  %3277 = fadd fast float %3272, %2278
  %3278 = fadd fast float %3274, %2279
  %3279 = fadd fast float %3276, %2280
  br label %2715

; <label>:3280                                    ; preds = %2715
  br label %3281

; <label>:3281                                    ; preds = %3280, %2263
  %3282 = phi float [ %2265, %2263 ], [ %2716, %3280 ]
  %3283 = phi float [ %2266, %2263 ], [ %2717, %3280 ]
  %3284 = phi float [ %2267, %2263 ], [ %2718, %3280 ]
  %3285 = add i32 %2264, 1
  %3286 = icmp ugt i32 %3285, %2262
  br i1 %3286, label %3287, label %2263

; <label>:3287                                    ; preds = %3281
  br label %3288

; <label>:3288                                    ; preds = %3287, %2199
  %3289 = phi float [ 0.000000e+00, %2199 ], [ %3282, %3287 ]
  %3290 = phi float [ 0.000000e+00, %2199 ], [ %3283, %3287 ]
  %3291 = phi float [ 0.000000e+00, %2199 ], [ %3284, %3287 ]
  %3292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %145, float %146, float %147, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.ResRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.ResRet.f32 %3292, 2
  %3296 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3293)  ; IsNaN(value)
  %3297 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3294)  ; IsNaN(value)
  %3298 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3295)  ; IsNaN(value)
  %3299 = or i1 %3296, %3297
  %3300 = or i1 %3299, %3298
  %3301 = select i1 %3300, float 0.000000e+00, float %3293
  %3302 = select i1 %3300, float 0.000000e+00, float %3294
  %3303 = select i1 %3300, float 0.000000e+00, float %3295
  %3304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3305 = extractvalue %dx.types.CBufRet.f32 %3304, 1
  %3306 = fmul fast float %3301, %3305
  %3307 = fmul fast float %3302, %3305
  %3308 = fmul fast float %3303, %3305
  %3309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3309, 3
  %3311 = fmul fast float %3306, %3310
  %3312 = fmul fast float %3307, %3310
  %3313 = fmul fast float %3308, %3310
  %3314 = fadd fast float %3311, %3289
  %3315 = fadd fast float %3312, %3290
  %3316 = fadd fast float %3313, %3291
  br label %3317

; <label>:3317                                    ; preds = %3288, %2192
  %3318 = phi float [ %2201, %3288 ], [ %2193, %2192 ]
  %3319 = phi float [ %2202, %3288 ], [ %2194, %2192 ]
  %3320 = phi float [ %2203, %3288 ], [ %2195, %2192 ]
  %3321 = phi float [ %3314, %3288 ], [ 0.000000e+00, %2192 ]
  %3322 = phi float [ %3315, %3288 ], [ 0.000000e+00, %2192 ]
  %3323 = phi float [ %3316, %3288 ], [ 0.000000e+00, %2192 ]
  %3324 = fmul fast float %3318, %2197
  %3325 = fmul fast float %3319, %2197
  %3326 = fmul fast float %3320, %2197
  %3327 = select i1 %247, float %1219, float %2197
  %3328 = select i1 %247, float %1220, float %2197
  %3329 = select i1 %247, float %1221, float %2197
  %3330 = fmul fast float %3324, %3321
  %3331 = fmul fast float %3325, %3322
  %3332 = fmul fast float %3326, %3323
  br i1 %214, label %4112, label %3333, !dx.controlflow.hints !126

; <label>:3333                                    ; preds = %3317
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.CBufRet.f32 %3334, 1
  %3337 = extractvalue %dx.types.CBufRet.f32 %3334, 2
  %3338 = extractvalue %dx.types.CBufRet.f32 %3334, 3
  %3339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3340 = extractvalue %dx.types.CBufRet.f32 %3339, 0
  %3341 = extractvalue %dx.types.CBufRet.f32 %3339, 1
  %3342 = extractvalue %dx.types.CBufRet.f32 %3339, 2
  %3343 = extractvalue %dx.types.CBufRet.f32 %3339, 3
  %3344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3345 = extractvalue %dx.types.CBufRet.f32 %3344, 0
  %3346 = extractvalue %dx.types.CBufRet.f32 %3344, 1
  %3347 = extractvalue %dx.types.CBufRet.f32 %3344, 2
  %3348 = extractvalue %dx.types.CBufRet.f32 %3344, 3
  %3349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3350 = extractvalue %dx.types.CBufRet.f32 %3349, 0
  %3351 = extractvalue %dx.types.CBufRet.f32 %3349, 1
  %3352 = extractvalue %dx.types.CBufRet.f32 %3349, 2
  %3353 = extractvalue %dx.types.CBufRet.f32 %3349, 3
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 3
  %3356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3357 = extractvalue %dx.types.CBufRet.f32 %3356, 3
  %3358 = extractvalue %dx.types.CBufRet.f32 %3356, 0
  %3359 = extractvalue %dx.types.CBufRet.f32 %3356, 1
  %3360 = extractvalue %dx.types.CBufRet.f32 %3356, 2
  %3361 = fcmp fast olt float %3360, -5.000000e-01
  %3362 = fmul fast float %208, %207
  %3363 = fadd fast float %3362, %3338
  %3364 = call float @dx.op.dot3.f32(i32 55, float %209, float %210, float %211, float %3335, float %3336, float %3337)  ; Dot3(ax,ay,az,bx,by,bz)
  %3365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3366 = extractvalue %dx.types.CBufRet.i32 %3365, 1
  %3367 = and i32 %3366, 1
  %3368 = icmp ne i32 %3367, 0
  %3369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.f32 %3369, 2
  %3371 = fcmp fast ogt float %3370, 0.000000e+00
  %3372 = and i1 %3368, %3371
  br i1 %3372, label %3373, label %3779, !dx.controlflow.hints !127

; <label>:3373                                    ; preds = %3333
  %3374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3375 = extractvalue %dx.types.CBufRet.f32 %3374, 3
  %3376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3377 = extractvalue %dx.types.CBufRet.f32 %3376, 2
  %3378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3379 = extractvalue %dx.types.CBufRet.f32 %3378, 2
  %3380 = fsub fast float %3377, %3379
  %3381 = and i32 %3366, 2
  %3382 = extractvalue %dx.types.CBufRet.i32 %3365, 0
  %3383 = call i32 @dx.op.binary.i32(i32 40, i32 %3382, i32 3)  ; UMin(a,b)
  %3384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3385 = extractvalue %dx.types.CBufRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.CBufRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.CBufRet.f32 %3378, 0
  %3388 = extractvalue %dx.types.CBufRet.f32 %3378, 1
  %3389 = fsub fast float %3385, %3387
  %3390 = fsub fast float %3386, %3388
  %3391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3392 = extractvalue %dx.types.CBufRet.f32 %3391, 0
  %3393 = fcmp fast ogt float %3392, 0.000000e+00
  %3394 = fsub fast float -0.000000e+00, %3389
  %3395 = fsub fast float -0.000000e+00, %3390
  %3396 = call float @dx.op.dot2.f32(i32 54, float %209, float %210, float %209, float %210)  ; Dot2(ax,ay,bx,by)
  %3397 = call float @dx.op.dot2.f32(i32 54, float %209, float %210, float %3394, float %3395)  ; Dot2(ax,ay,bx,by)
  %3398 = fmul fast float %3397, 2.000000e+00
  %3399 = call float @dx.op.dot2.f32(i32 54, float %3394, float %3395, float %3394, float %3395)  ; Dot2(ax,ay,bx,by)
  %3400 = fmul fast float %3392, %3392
  %3401 = fsub fast float %3399, %3400
  %3402 = fmul fast float %3398, %3398
  %3403 = fmul fast float %3396, 4.000000e+00
  %3404 = fmul fast float %3403, %3401
  %3405 = fsub fast float %3402, %3404
  %3406 = fcmp fast ogt float %3405, 0.000000e+00
  br i1 %3406, label %3407, label %3422, !dx.controlflow.hints !128

; <label>:3407                                    ; preds = %3373
  %3408 = fcmp fast ogt float %3398, 0.000000e+00
  %3409 = call float @dx.op.unary.f32(i32 24, float %3405)  ; Sqrt(value)
  %3410 = fsub fast float -0.000000e+00, %3409
  %3411 = select i1 %3408, float %3409, float %3410
  %3412 = fadd fast float %3411, %3398
  %3413 = fmul float %3412, -5.000000e-01
  %3414 = fdiv fast float %3413, %3396
  %3415 = call float @dx.op.binary.f32(i32 35, float %3414, float 0.000000e+00)  ; FMax(a,b)
  %3416 = call float @dx.op.binary.f32(i32 36, float %3362, float %3415)  ; FMin(a,b)
  %3417 = fdiv fast float %3401, %3413
  %3418 = call float @dx.op.binary.f32(i32 35, float %3417, float 0.000000e+00)  ; FMax(a,b)
  %3419 = call float @dx.op.binary.f32(i32 36, float %3362, float %3418)  ; FMin(a,b)
  %3420 = call float @dx.op.binary.f32(i32 36, float %3416, float %3419)  ; FMin(a,b)
  %3421 = call float @dx.op.binary.f32(i32 35, float %3416, float %3419)  ; FMax(a,b)
  br label %3422

; <label>:3422                                    ; preds = %3407, %3373
  %3423 = phi float [ %3421, %3407 ], [ -1.000000e+00, %3373 ]
  %3424 = phi float [ %3420, %3407 ], [ -1.000000e+00, %3373 ]
  %3425 = phi i1 [ true, %3407 ], [ false, %3373 ]
  %3426 = and i1 %3393, %3425
  br i1 %3426, label %3427, label %3429, !dx.controlflow.hints !129

; <label>:3427                                    ; preds = %3422
  %3428 = fcmp fast oeq float %3424, %3423
  br i1 %3428, label %3732, label %3430, !dx.controlflow.hints !130

; <label>:3429                                    ; preds = %3422
  br i1 %3393, label %3732, label %3430, !dx.controlflow.hints !131

; <label>:3430                                    ; preds = %3429, %3427
  %3431 = phi float [ %3362, %3429 ], [ %3423, %3427 ]
  %3432 = phi float [ 0.000000e+00, %3429 ], [ %3424, %3427 ]
  %3433 = icmp ne i32 %3381, 0
  %3434 = fmul fast float %3431, %211
  %3435 = fadd fast float %3434, %3375
  %3436 = fmul fast float %3435, %3431
  %3437 = select i1 %3433, float 0.000000e+00, float %3436
  %3438 = fcmp fast oeq float %211, 0.000000e+00
  %3439 = fdiv fast float %3380, %211
  %3440 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3439)  ; FMax(a,b)
  %3441 = select i1 %3438, float %3431, float %3440
  %3442 = call float @dx.op.binary.f32(i32 36, float %3431, float %3441)  ; FMin(a,b)
  %3443 = fcmp fast ogt float %211, 0.000000e+00
  %3444 = fcmp fast olt float %3380, 0.000000e+00
  br i1 %3443, label %3445, label %3502, !dx.controlflow.hints !132

; <label>:3445                                    ; preds = %3430
  %3446 = icmp eq i32 %3381, 0
  br i1 %3444, label %3447, label %3491, !dx.controlflow.hints !133

; <label>:3447                                    ; preds = %3445
  %3448 = select i1 %3446, float %3431, float 0.000000e+00
  %3449 = fsub fast float -0.000000e+00, %3448
  %3450 = call float @dx.op.unary.f32(i32 6, float %3449)  ; FAbs(value)
  %3451 = fmul fast float %3448, %211
  %3452 = fadd fast float %3451, %3375
  %3453 = fmul fast float %3450, %3452
  %3454 = fsub fast float %3437, %3453
  %3455 = fsub fast float %3431, %3450
  %3456 = select i1 %3446, float %3455, float 0.000000e+00
  %3457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3458 = extractvalue %dx.types.CBufRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.CBufRet.f32 %3457, 1
  %3460 = extractvalue %dx.types.CBufRet.f32 %3457, 2
  %3461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3462 = extractvalue %dx.types.CBufRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.CBufRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.CBufRet.f32 %3461, 2
  %3465 = extractvalue %dx.types.CBufRet.f32 %3461, 3
  %3466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3467 = extractvalue %dx.types.CBufRet.f32 %3466, 3
  %3468 = call float @dx.op.binary.f32(i32 36, float %3454, float %3467)  ; FMin(a,b)
  %3469 = fmul fast float %3465, %3456
  %3470 = call float @dx.op.unary.f32(i32 7, float %3469)  ; Saturate(value)
  %3471 = fsub fast float %3462, %3458
  %3472 = fsub fast float %3463, %3459
  %3473 = fsub fast float %3464, %3460
  %3474 = fmul fast float %3470, %3471
  %3475 = fmul fast float %3470, %3472
  %3476 = fmul fast float %3470, %3473
  %3477 = fadd fast float %3474, %3458
  %3478 = fadd fast float %3475, %3459
  %3479 = fadd fast float %3476, %3460
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.CBufRet.f32 %3480, 1
  %3483 = fadd fast float %3482, %3481
  %3484 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3480, 2
  %3486 = extractvalue %dx.types.CBufRet.f32 %3480, 3
  %3487 = fadd fast float %3486, %3485
  %3488 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  %3489 = fmul fast float %3484, %3468
  %3490 = fmul fast float %3489, %3488
  br label %3732

; <label>:3491                                    ; preds = %3445
  br i1 %3446, label %3492, label %3513, !dx.controlflow.hints !134

; <label>:3492                                    ; preds = %3491
  %3493 = call float @dx.op.binary.f32(i32 36, float %3442, float %3432)  ; FMin(a,b)
  %3494 = fsub fast float %3442, %3493
  %3495 = fsub fast float %3494, %3431
  %3496 = call float @dx.op.unary.f32(i32 6, float %3495)  ; FAbs(value)
  %3497 = fadd fast float %3494, %3431
  %3498 = fmul fast float %3497, %211
  %3499 = fadd fast float %3498, %3375
  %3500 = fmul fast float %3499, %3496
  %3501 = fsub fast float %3437, %3500
  br label %3513

; <label>:3502                                    ; preds = %3430
  br i1 %3444, label %3503, label %3513, !dx.controlflow.hints !135

; <label>:3503                                    ; preds = %3502
  %3504 = call float @dx.op.binary.f32(i32 35, float %3432, float %3442)  ; FMax(a,b)
  %3505 = icmp eq i32 %3381, 0
  %3506 = select i1 %3505, float %3442, float 0.000000e+00
  %3507 = fsub fast float -0.000000e+00, %3506
  %3508 = call float @dx.op.unary.f32(i32 6, float %3507)  ; FAbs(value)
  %3509 = fmul fast float %3506, %211
  %3510 = fadd fast float %3509, %3375
  %3511 = fmul fast float %3508, %3510
  %3512 = fsub fast float %3437, %3511
  br label %3513

; <label>:3513                                    ; preds = %3503, %3502, %3492, %3491
  %3514 = phi float [ %3432, %3491 ], [ %3432, %3492 ], [ %3504, %3503 ], [ %3432, %3502 ]
  %3515 = phi float [ 0.000000e+00, %3491 ], [ %3496, %3492 ], [ %3508, %3503 ], [ 0.000000e+00, %3502 ]
  %3516 = phi float [ %3437, %3491 ], [ %3501, %3492 ], [ %3512, %3503 ], [ %3437, %3502 ]
  %3517 = phi float [ %3442, %3491 ], [ %3442, %3492 ], [ %3431, %3503 ], [ %3431, %3502 ]
  %3518 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 0
  store float -1.000000e+00, float* %3518, align 4, !tbaa !58, !noalias !136
  %3519 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 1
  store float -1.000000e+00, float* %3519, align 4, !tbaa !58, !noalias !136
  %3520 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 2
  store float -1.000000e+00, float* %3520, align 4, !tbaa !58, !noalias !136
  %3521 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 0
  store float -1.000000e+00, float* %3521, align 4, !tbaa !58, !noalias !136
  %3522 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 1
  store float -1.000000e+00, float* %3522, align 4, !tbaa !58, !noalias !136
  %3523 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 2
  store float -1.000000e+00, float* %3523, align 4, !tbaa !58, !noalias !136
  %3524 = icmp sgt i32 %3383, 0
  br i1 %3524, label %3525, label %3586

; <label>:3525                                    ; preds = %3513
  br label %3526

; <label>:3526                                    ; preds = %3575, %3525
  %3527 = phi i32 [ %3576, %3575 ], [ 0, %3525 ]
  %3528 = phi i32 [ %3577, %3575 ], [ 0, %3525 ]
  %3529 = add nuw i32 %3528, 171
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %3529)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 0
  %3532 = extractvalue %dx.types.CBufRet.f32 %3530, 1
  %3533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3534 = extractvalue %dx.types.CBufRet.f32 %3533, 0
  %3535 = extractvalue %dx.types.CBufRet.f32 %3533, 1
  %3536 = fsub fast float %3531, %3534
  %3537 = fsub fast float %3532, %3535
  %3538 = extractvalue %dx.types.CBufRet.f32 %3530, 2
  %3539 = fsub fast float -0.000000e+00, %3536
  %3540 = fsub fast float -0.000000e+00, %3537
  %3541 = call float @dx.op.dot2.f32(i32 54, float %209, float %210, float %3539, float %3540)  ; Dot2(ax,ay,bx,by)
  %3542 = fmul fast float %3541, 2.000000e+00
  %3543 = call float @dx.op.dot2.f32(i32 54, float %3539, float %3540, float %3539, float %3540)  ; Dot2(ax,ay,bx,by)
  %3544 = fmul fast float %3538, %3538
  %3545 = fsub fast float %3543, %3544
  %3546 = fmul fast float %3542, %3542
  %3547 = fmul fast float %3403, %3545
  %3548 = fsub fast float %3546, %3547
  %3549 = fcmp fast ogt float %3548, 0.000000e+00
  br i1 %3549, label %3550, label %3565, !dx.controlflow.hints !128

; <label>:3550                                    ; preds = %3526
  %3551 = fcmp fast ogt float %3542, 0.000000e+00
  %3552 = call float @dx.op.unary.f32(i32 24, float %3548)  ; Sqrt(value)
  %3553 = fsub fast float -0.000000e+00, %3552
  %3554 = select i1 %3551, float %3552, float %3553
  %3555 = fadd fast float %3554, %3542
  %3556 = fmul float %3555, -5.000000e-01
  %3557 = fdiv fast float %3556, %3396
  %3558 = call float @dx.op.binary.f32(i32 35, float %3557, float 0.000000e+00)  ; FMax(a,b)
  %3559 = call float @dx.op.binary.f32(i32 36, float %3431, float %3558)  ; FMin(a,b)
  %3560 = fdiv fast float %3545, %3556
  %3561 = call float @dx.op.binary.f32(i32 35, float %3560, float 0.000000e+00)  ; FMax(a,b)
  %3562 = call float @dx.op.binary.f32(i32 36, float %3431, float %3561)  ; FMin(a,b)
  %3563 = call float @dx.op.binary.f32(i32 36, float %3559, float %3562)  ; FMin(a,b)
  %3564 = call float @dx.op.binary.f32(i32 35, float %3559, float %3562)  ; FMax(a,b)
  br label %3565

; <label>:3565                                    ; preds = %3550, %3526
  %3566 = phi float [ %3564, %3550 ], [ -1.000000e+00, %3526 ]
  %3567 = phi float [ %3563, %3550 ], [ -1.000000e+00, %3526 ]
  %3568 = phi i1 [ true, %3550 ], [ false, %3526 ]
  br i1 %3568, label %3569, label %3575, !dx.controlflow.hints !142

; <label>:3569                                    ; preds = %3565
  %3570 = call float @dx.op.binary.f32(i32 35, float %3514, float %3567)  ; FMax(a,b)
  %3571 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 %3528
  store float %3570, float* %3571, align 4, !tbaa !58, !noalias !136
  %3572 = call float @dx.op.binary.f32(i32 35, float %3514, float %3566)  ; FMax(a,b)
  %3573 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 %3528
  store float %3572, float* %3573, align 4, !tbaa !58, !noalias !136
  %3574 = add nsw i32 %3527, 1
  br label %3575

; <label>:3575                                    ; preds = %3569, %3565
  %3576 = phi i32 [ %3574, %3569 ], [ %3527, %3565 ]
  %3577 = add nuw nsw i32 %3528, 1
  %3578 = icmp eq i32 %3577, %3383
  br i1 %3578, label %3579, label %3526

; <label>:3579                                    ; preds = %3575
  %3580 = load float, float* %3520, align 4, !tbaa !58, !alias.scope !143, !noalias !146
  %3581 = load float, float* %3519, align 4, !tbaa !58, !alias.scope !149, !noalias !150
  %3582 = load float, float* %3518, align 4, !tbaa !58, !alias.scope !151, !noalias !152
  %3583 = load float, float* %3523, align 4, !tbaa !58, !alias.scope !153, !noalias !156
  %3584 = load float, float* %3522, align 4, !tbaa !58, !alias.scope !159, !noalias !160
  %3585 = load float, float* %3521, align 4, !tbaa !58, !alias.scope !161, !noalias !162
  br label %3586

; <label>:3586                                    ; preds = %3579, %3513
  %3587 = phi float [ -1.000000e+00, %3513 ], [ %3585, %3579 ]
  %3588 = phi float [ -1.000000e+00, %3513 ], [ %3584, %3579 ]
  %3589 = phi float [ -1.000000e+00, %3513 ], [ %3583, %3579 ]
  %3590 = phi float [ -1.000000e+00, %3513 ], [ %3582, %3579 ]
  %3591 = phi float [ -1.000000e+00, %3513 ], [ %3581, %3579 ]
  %3592 = phi float [ -1.000000e+00, %3513 ], [ %3580, %3579 ]
  %3593 = phi i32 [ 0, %3513 ], [ %3576, %3579 ]
  %3594 = call float @dx.op.binary.f32(i32 36, float %3591, float %3592)  ; FMin(a,b)
  %3595 = call float @dx.op.binary.f32(i32 36, float %3590, float %3594)  ; FMin(a,b)
  %3596 = call float @dx.op.binary.f32(i32 35, float %3590, float %3591)  ; FMax(a,b)
  %3597 = call float @dx.op.binary.f32(i32 36, float %3596, float %3592)  ; FMin(a,b)
  %3598 = call float @dx.op.binary.f32(i32 36, float %3590, float %3591)  ; FMin(a,b)
  %3599 = call float @dx.op.binary.f32(i32 35, float %3598, float %3597)  ; FMax(a,b)
  %3600 = call float @dx.op.binary.f32(i32 35, float %3591, float %3592)  ; FMax(a,b)
  %3601 = call float @dx.op.binary.f32(i32 35, float %3590, float %3600)  ; FMax(a,b)
  store float %3595, float* %3518, align 4, !tbaa !58, !alias.scope !151, !noalias !152
  store float %3599, float* %3519, align 4, !tbaa !58, !alias.scope !149, !noalias !150
  store float %3601, float* %3520, align 4, !tbaa !58, !alias.scope !143, !noalias !146
  %3602 = call float @dx.op.binary.f32(i32 36, float %3588, float %3589)  ; FMin(a,b)
  %3603 = call float @dx.op.binary.f32(i32 36, float %3587, float %3602)  ; FMin(a,b)
  %3604 = call float @dx.op.binary.f32(i32 35, float %3587, float %3588)  ; FMax(a,b)
  %3605 = call float @dx.op.binary.f32(i32 36, float %3604, float %3589)  ; FMin(a,b)
  %3606 = call float @dx.op.binary.f32(i32 36, float %3587, float %3588)  ; FMin(a,b)
  %3607 = call float @dx.op.binary.f32(i32 35, float %3606, float %3605)  ; FMax(a,b)
  %3608 = call float @dx.op.binary.f32(i32 35, float %3588, float %3589)  ; FMax(a,b)
  %3609 = call float @dx.op.binary.f32(i32 35, float %3587, float %3608)  ; FMax(a,b)
  store float %3603, float* %3521, align 4, !tbaa !58, !alias.scope !161, !noalias !162
  store float %3607, float* %3522, align 4, !tbaa !58, !alias.scope !159, !noalias !160
  store float %3609, float* %3523, align 4, !tbaa !58, !alias.scope !153, !noalias !156
  %3610 = sub nsw i32 3, %3593
  %3611 = icmp sgt i32 %3610, 2
  br i1 %3611, label %3612, label %3650, !dx.controlflow.hints !163

; <label>:3612                                    ; preds = %3586
  %3613 = icmp eq i32 %3381, 0
  %3614 = fsub fast float %3431, %3515
  %3615 = select i1 %3613, float %3614, float %3515
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.CBufRet.f32 %3616, 1
  %3619 = extractvalue %dx.types.CBufRet.f32 %3616, 2
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.CBufRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 3
  %3627 = call float @dx.op.binary.f32(i32 36, float %3516, float %3626)  ; FMin(a,b)
  %3628 = fmul fast float %3624, %3615
  %3629 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3630 = fsub fast float %3621, %3617
  %3631 = fsub fast float %3622, %3618
  %3632 = fsub fast float %3623, %3619
  %3633 = fmul fast float %3629, %3630
  %3634 = fmul fast float %3629, %3631
  %3635 = fmul fast float %3629, %3632
  %3636 = fadd fast float %3633, %3617
  %3637 = fadd fast float %3634, %3618
  %3638 = fadd fast float %3635, %3619
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.CBufRet.f32 %3639, 1
  %3642 = fadd fast float %3641, %3640
  %3643 = call float @dx.op.unary.f32(i32 7, float %3642)  ; Saturate(value)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3639, 2
  %3645 = extractvalue %dx.types.CBufRet.f32 %3639, 3
  %3646 = fadd fast float %3645, %3644
  %3647 = call float @dx.op.unary.f32(i32 7, float %3646)  ; Saturate(value)
  %3648 = fmul fast float %3643, %3627
  %3649 = fmul fast float %3648, %3647
  br label %3732

; <label>:3650                                    ; preds = %3586
  %3651 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 %3610
  %3652 = load float, float* %3651, align 4, !tbaa !58, !noalias !136
  %3653 = fcmp fast olt float %3652, %3517
  %3654 = icmp sgt i32 %3593, 0
  %3655 = and i1 %3654, %3653
  br i1 %3655, label %3656, label %3693

; <label>:3656                                    ; preds = %3650
  br label %3657

; <label>:3657                                    ; preds = %3686, %3656
  %3658 = phi float [ %3687, %3686 ], [ %3515, %3656 ]
  %3659 = phi float [ %3688, %3686 ], [ %3516, %3656 ]
  %3660 = phi float [ %3668, %3686 ], [ %3652, %3656 ]
  %3661 = phi i32 [ %3665, %3686 ], [ %3610, %3656 ]
  %3662 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 %3661
  %3663 = load float, float* %3662, align 4, !tbaa !58, !noalias !136
  %3664 = icmp slt i32 %3661, 2
  %3665 = add nsw i32 %3661, 1
  %3666 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 %3665
  %3667 = load float, float* %3666, align 4, !tbaa !58, !noalias !136
  %3668 = select i1 %3664, float %3667, float %3431
  %3669 = call float @dx.op.binary.f32(i32 36, float %3668, float %3663)  ; FMin(a,b)
  %3670 = call float @dx.op.binary.f32(i32 36, float %3517, float %3669)  ; FMin(a,b)
  %3671 = icmp eq i32 %3381, 0
  %3672 = fadd fast float %3670, %3660
  %3673 = fmul fast float %3672, %211
  %3674 = fadd fast float %3673, %3375
  br i1 %3671, label %3680, label %3675, !dx.controlflow.hints !164

; <label>:3675                                    ; preds = %3657
  %3676 = fsub fast float %3670, %3660
  %3677 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3676)  ; FMax(a,b)
  %3678 = fmul fast float %3677, %3674
  %3679 = fadd fast float %3678, %3659
  br label %3686

; <label>:3680                                    ; preds = %3657
  %3681 = fsub fast float %3660, %3670
  %3682 = call float @dx.op.unary.f32(i32 6, float %3681)  ; FAbs(value)
  %3683 = fadd fast float %3682, %3658
  %3684 = fmul fast float %3682, %3674
  %3685 = fsub fast float %3659, %3684
  br label %3686

; <label>:3686                                    ; preds = %3680, %3675
  %3687 = phi float [ %3677, %3675 ], [ %3683, %3680 ]
  %3688 = phi float [ %3679, %3675 ], [ %3685, %3680 ]
  %3689 = fcmp fast olt float %3668, %3517
  %3690 = icmp slt i32 %3665, 3
  %3691 = and i1 %3690, %3689
  br i1 %3691, label %3657, label %3692

; <label>:3692                                    ; preds = %3686
  br label %3693

; <label>:3693                                    ; preds = %3692, %3650
  %3694 = phi float [ %3515, %3650 ], [ %3687, %3692 ]
  %3695 = phi float [ %3516, %3650 ], [ %3688, %3692 ]
  %3696 = fsub fast float %3431, %3694
  %3697 = select i1 %3433, float %3694, float %3696
  %3698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.f32 %3698, 0
  %3700 = extractvalue %dx.types.CBufRet.f32 %3698, 1
  %3701 = extractvalue %dx.types.CBufRet.f32 %3698, 2
  %3702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3703 = extractvalue %dx.types.CBufRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.CBufRet.f32 %3702, 1
  %3705 = extractvalue %dx.types.CBufRet.f32 %3702, 2
  %3706 = extractvalue %dx.types.CBufRet.f32 %3702, 3
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 3
  %3709 = call float @dx.op.binary.f32(i32 36, float %3695, float %3708)  ; FMin(a,b)
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
  %3721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %3732

; <label>:3732                                    ; preds = %3693, %3612, %3447, %3429, %3427
  %3733 = phi float [ %3456, %3447 ], [ %3615, %3612 ], [ %3697, %3693 ], [ 0.000000e+00, %3427 ], [ 0.000000e+00, %3429 ]
  %3734 = phi float [ %3490, %3447 ], [ %3649, %3612 ], [ %3731, %3693 ], [ 0.000000e+00, %3427 ], [ 0.000000e+00, %3429 ]
  %3735 = phi float [ %3477, %3447 ], [ %3636, %3612 ], [ %3718, %3693 ], [ 0.000000e+00, %3427 ], [ 0.000000e+00, %3429 ]
  %3736 = phi float [ %3478, %3447 ], [ %3637, %3612 ], [ %3719, %3693 ], [ 0.000000e+00, %3427 ], [ 0.000000e+00, %3429 ]
  %3737 = phi float [ %3479, %3447 ], [ %3638, %3612 ], [ %3720, %3693 ], [ 0.000000e+00, %3427 ], [ 0.000000e+00, %3429 ]
  %3738 = fmul fast float %3370, %3734
  %3739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3740 = extractvalue %dx.types.CBufRet.f32 %3739, 2
  %3741 = fsub fast float %3377, %3740
  %3742 = fcmp fast olt float %3738, -2.000000e+01
  %3743 = call float @dx.op.unary.f32(i32 21, float %3738)  ; Exp(value)
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 2
  %3746 = extractvalue %dx.types.CBufRet.f32 %3744, 3
  %3747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3747, 2
  %3749 = fmul fast float %3746, %3741
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fsub fast float 1.000000e+00, %3750
  %3752 = fmul fast float %211, 5.000000e-01
  %3753 = fadd fast float %3752, 5.000000e-01
  %3754 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3755 = fsub fast float 1.000000e+00, %3754
  %3756 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3751)  ; FMax(a,b)
  %3757 = fdiv fast float %3755, %3756
  %3758 = fsub fast float %3741, %191
  %3759 = call float @dx.op.unary.f32(i32 6, float %3758)  ; FAbs(value)
  %3760 = fmul fast float %3759, %3745
  %3761 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3762 = fsub fast float 1.000000e+00, %3760
  %3763 = fmul fast float %3762, %3761
  %3764 = fadd fast float %3763, %3760
  %3765 = fmul fast float %3748, %3741
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = fsub fast float 1.000000e+00, %3764
  %3768 = fmul fast float %3767, %3766
  %3769 = fadd fast float %3768, %3764
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3771 = fadd fast float %3743, -1.000000e+00
  %3772 = select i1 %3742, float -1.000000e+00, float %3771
  %3773 = fmul fast float %3770, %3772
  %3774 = fadd fast float %3773, 1.000000e+00
  %3775 = fsub fast float -0.000000e+00, %3773
  %3776 = fmul fast float %3735, %3775
  %3777 = fmul fast float %3736, %3775
  %3778 = fmul fast float %3737, %3775
  br label %3779

; <label>:3779                                    ; preds = %3732, %3333
  %3780 = phi float [ %3733, %3732 ], [ 0.000000e+00, %3333 ]
  %3781 = phi float [ %3774, %3732 ], [ 1.000000e+00, %3333 ]
  %3782 = phi float [ %3776, %3732 ], [ 0.000000e+00, %3333 ]
  %3783 = phi float [ %3777, %3732 ], [ 0.000000e+00, %3333 ]
  %3784 = phi float [ %3778, %3732 ], [ 0.000000e+00, %3333 ]
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 1
  %3787 = fsub fast float 1.000000e+00, %3781
  %3788 = fmul fast float %3787, %3363
  %3789 = fmul fast float %3788, %3786
  %3790 = fsub fast float %3363, %3789
  br i1 %3361, label %3791, label %3820, !dx.controlflow.hints !165

; <label>:3791                                    ; preds = %3779
  %3792 = fmul fast float %3364, %3358
  %3793 = fadd fast float %3792, %3359
  %3794 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  %3795 = fmul fast float %3340, %3790
  %3796 = fsub fast float -0.000000e+00, %3795
  %3797 = fmul fast float %3341, %3790
  %3798 = fsub fast float -0.000000e+00, %3797
  %3799 = call float @dx.op.unary.f32(i32 21, float %3796)  ; Exp(value)
  %3800 = call float @dx.op.unary.f32(i32 21, float %3798)  ; Exp(value)
  %3801 = call float @dx.op.binary.f32(i32 35, float %3348, float %3799)  ; FMax(a,b)
  %3802 = call float @dx.op.binary.f32(i32 35, float %3348, float %3800)  ; FMax(a,b)
  %3803 = fsub fast float %3802, %3801
  %3804 = fmul fast float %3803, %3794
  %3805 = fadd fast float %3804, %3801
  %3806 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3807 = fsub fast float %3345, %3350
  %3808 = fsub fast float %3346, %3351
  %3809 = fsub fast float %3347, %3352
  %3810 = fmul fast float %3794, %3807
  %3811 = fmul fast float %3794, %3808
  %3812 = fmul fast float %3794, %3809
  %3813 = fadd fast float %3810, %3350
  %3814 = fadd fast float %3811, %3351
  %3815 = fadd fast float %3812, %3352
  %3816 = fsub fast float 1.000000e+00, %3806
  %3817 = fmul fast float %3816, %3813
  %3818 = fmul fast float %3816, %3814
  %3819 = fmul fast float %3816, %3815
  br label %3879

; <label>:3820                                    ; preds = %3779
  %3821 = fmul fast float %3790, %3357
  %3822 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3823 = fsub fast float 2.000000e+00, %3822
  %3824 = fmul fast float %3822, 9.921875e-01
  %3825 = fmul fast float %3824, %3823
  %3826 = fadd fast float %3825, 3.906250e-03
  %3827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %39, float %3826, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = fsub fast float %3822, %3828
  %3830 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3829)  ; FMax(a,b)
  %3831 = fmul fast float %3343, %191
  %3832 = call float @dx.op.unary.f32(i32 6, float %3831)  ; FAbs(value)
  %3833 = fcmp fast ogt float %3832, 0x3EB0C6F7A0000000
  br i1 %3833, label %3834, label %3840, !dx.controlflow.hints !166

; <label>:3834                                    ; preds = %3820
  %3835 = fmul fast float %3831, 0xBFF7154760000000
  %3836 = call float @dx.op.unary.f32(i32 21, float %3835)  ; Exp(value)
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = fdiv fast float %3837, %3831
  %3839 = fmul fast float %3838, %3353
  br label %3840

; <label>:3840                                    ; preds = %3834, %3820
  %3841 = phi float [ %3839, %3834 ], [ %3353, %3820 ]
  %3842 = fadd fast float %3841, %3355
  %3843 = fmul fast float %3842, %3830
  %3844 = fmul fast float %3340, %3843
  %3845 = fsub fast float -0.000000e+00, %3844
  %3846 = fmul fast float %3341, %3843
  %3847 = fsub fast float -0.000000e+00, %3846
  %3848 = fmul fast float %3342, %3843
  %3849 = fsub fast float -0.000000e+00, %3848
  %3850 = call float @dx.op.unary.f32(i32 21, float %3845)  ; Exp(value)
  %3851 = call float @dx.op.unary.f32(i32 21, float %3847)  ; Exp(value)
  %3852 = call float @dx.op.unary.f32(i32 21, float %3849)  ; Exp(value)
  %3853 = fmul fast float %3364, %3364
  %3854 = fadd fast float %3853, 1.000000e+00
  %3855 = fmul fast float %3854, 0x3FAE8EC8A0000000
  %3856 = fmul fast float %3855, %3350
  %3857 = fmul fast float %3855, %3351
  %3858 = fmul fast float %3855, %3352
  %3859 = fmul fast float %3364, %3348
  %3860 = fsub fast float 1.000000e+00, %3859
  %3861 = fmul fast float %3348, %3348
  %3862 = fsub fast float 1.000000e+00, %3861
  %3863 = fmul fast float %3862, 0x3FB45F3060000000
  %3864 = fmul fast float %3860, %3860
  %3865 = fdiv fast float 1.000000e+00, %3864
  %3866 = fmul fast float %3863, %3865
  %3867 = fmul fast float %3866, %3345
  %3868 = fmul fast float %3866, %3346
  %3869 = fmul fast float %3866, %3347
  %3870 = fadd fast float %3867, %3856
  %3871 = fadd fast float %3868, %3857
  %3872 = fadd fast float %3869, %3858
  %3873 = fsub fast float 1.000000e+00, %3850
  %3874 = fsub fast float 1.000000e+00, %3851
  %3875 = fsub fast float 1.000000e+00, %3852
  %3876 = fmul fast float %3870, %3873
  %3877 = fmul fast float %3871, %3874
  %3878 = fmul fast float %3872, %3875
  br label %3879

; <label>:3879                                    ; preds = %3840, %3791
  %3880 = phi float [ %3817, %3791 ], [ %3876, %3840 ]
  %3881 = phi float [ %3818, %3791 ], [ %3877, %3840 ]
  %3882 = phi float [ %3819, %3791 ], [ %3878, %3840 ]
  %3883 = phi float [ %3806, %3791 ], [ %3850, %3840 ]
  %3884 = phi float [ %3806, %3791 ], [ %3851, %3840 ]
  %3885 = phi float [ %3806, %3791 ], [ %3852, %3840 ]
  br i1 %3372, label %3886, label %4084, !dx.controlflow.hints !167

; <label>:3886                                    ; preds = %3879
  %3887 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3888 = fmul fast float %3887, %3787
  %3889 = fsub fast float %3782, %3880
  %3890 = fsub fast float %3783, %3881
  %3891 = fsub fast float %3784, %3882
  %3892 = fmul fast float %3888, %3889
  %3893 = fmul fast float %3888, %3890
  %3894 = fmul fast float %3888, %3891
  %3895 = fadd fast float %3892, %3880
  %3896 = fadd fast float %3893, %3881
  %3897 = fadd fast float %3894, %3882
  %3898 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3883)  ; FMax(a,b)
  %3899 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3884)  ; FMax(a,b)
  %3900 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3885)  ; FMax(a,b)
  %3901 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %3781)  ; FMax(a,b)
  %3902 = call float @dx.op.binary.f32(i32 35, float %3780, float %3790)  ; FMax(a,b)
  %3903 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3902)  ; FMax(a,b)
  %3904 = fdiv fast float %3780, %3903
  %3905 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3906 = fdiv fast float %3790, %3903
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = fcmp fast une float %3901, 1.000000e+00
  br i1 %3908, label %3909, label %3922, !dx.controlflow.hints !168

; <label>:3909                                    ; preds = %3886
  %3910 = call float @dx.op.unary.f32(i32 23, float %3901)  ; Log(value)
  %3911 = fmul fast float %3910, 0x3FE62E4300000000
  %3912 = fmul fast float %3782, %3911
  %3913 = fsub fast float -0.000000e+00, %3912
  %3914 = fmul fast float %3783, %3911
  %3915 = fsub fast float -0.000000e+00, %3914
  %3916 = fmul fast float %3784, %3911
  %3917 = fsub fast float -0.000000e+00, %3916
  %3918 = fsub fast float 1.000000e+00, %3901
  %3919 = fdiv fast float %3913, %3918
  %3920 = fdiv fast float %3915, %3918
  %3921 = fdiv fast float %3917, %3918
  br label %3922

; <label>:3922                                    ; preds = %3909, %3886
  %3923 = phi float [ %3919, %3909 ], [ %3782, %3886 ]
  %3924 = phi float [ %3920, %3909 ], [ %3783, %3886 ]
  %3925 = phi float [ %3921, %3909 ], [ %3784, %3886 ]
  %3926 = phi float [ %3911, %3909 ], [ 0.000000e+00, %3886 ]
  %3927 = fcmp fast une float %3898, 1.000000e+00
  br i1 %3927, label %3928, label %3935, !dx.controlflow.hints !169

; <label>:3928                                    ; preds = %3922
  %3929 = call float @dx.op.unary.f32(i32 23, float %3898)  ; Log(value)
  %3930 = fmul fast float %3929, 0x3FE62E4300000000
  %3931 = fmul fast float %3895, %3930
  %3932 = fsub fast float -0.000000e+00, %3931
  %3933 = fsub fast float 1.000000e+00, %3898
  %3934 = fdiv fast float %3932, %3933
  br label %3935

; <label>:3935                                    ; preds = %3928, %3922
  %3936 = phi float [ %3934, %3928 ], [ %3895, %3922 ]
  %3937 = phi float [ %3930, %3928 ], [ 0.000000e+00, %3922 ]
  %3938 = fcmp fast une float %3899, 1.000000e+00
  br i1 %3938, label %3939, label %3946, !dx.controlflow.hints !169

; <label>:3939                                    ; preds = %3935
  %3940 = call float @dx.op.unary.f32(i32 23, float %3899)  ; Log(value)
  %3941 = fmul fast float %3940, 0x3FE62E4300000000
  %3942 = fmul fast float %3896, %3941
  %3943 = fsub fast float -0.000000e+00, %3942
  %3944 = fsub fast float 1.000000e+00, %3899
  %3945 = fdiv fast float %3943, %3944
  br label %3946

; <label>:3946                                    ; preds = %3939, %3935
  %3947 = phi float [ %3945, %3939 ], [ %3896, %3935 ]
  %3948 = phi float [ %3941, %3939 ], [ 0.000000e+00, %3935 ]
  %3949 = fcmp fast une float %3900, 1.000000e+00
  br i1 %3949, label %3950, label %3957, !dx.controlflow.hints !169

; <label>:3950                                    ; preds = %3946
  %3951 = call float @dx.op.unary.f32(i32 23, float %3900)  ; Log(value)
  %3952 = fmul fast float %3951, 0x3FE62E4300000000
  %3953 = fmul fast float %3897, %3952
  %3954 = fsub fast float -0.000000e+00, %3953
  %3955 = fsub fast float 1.000000e+00, %3900
  %3956 = fdiv fast float %3954, %3955
  br label %3957

; <label>:3957                                    ; preds = %3950, %3946
  %3958 = phi float [ %3956, %3950 ], [ %3897, %3946 ]
  %3959 = phi float [ %3952, %3950 ], [ 0.000000e+00, %3946 ]
  %3960 = fmul fast float %3923, %3907
  %3961 = fmul fast float %3924, %3907
  %3962 = fmul fast float %3925, %3907
  %3963 = fmul fast float %3926, %3907
  %3964 = fmul fast float %3936, %3905
  %3965 = fmul fast float %3947, %3905
  %3966 = fmul fast float %3958, %3905
  %3967 = fmul fast float %3937, %3905
  %3968 = fmul fast float %3948, %3905
  %3969 = fmul fast float %3959, %3905
  %3970 = fadd fast float %3964, %3960
  %3971 = fadd fast float %3965, %3961
  %3972 = fadd fast float %3966, %3962
  %3973 = fadd fast float %3967, %3963
  %3974 = fadd fast float %3968, %3963
  %3975 = fadd fast float %3969, %3963
  %3976 = fcmp fast une float %3973, 0.000000e+00
  br i1 %3976, label %3977, label %3984, !dx.controlflow.hints !170

; <label>:3977                                    ; preds = %3957
  %3978 = fmul fast float %3973, 0x3FF7154760000000
  %3979 = call float @dx.op.unary.f32(i32 21, float %3978)  ; Exp(value)
  %3980 = fsub fast float 1.000000e+00, %3979
  %3981 = fmul fast float %3970, %3980
  %3982 = fsub fast float -0.000000e+00, %3981
  %3983 = fdiv fast float %3982, %3973
  br label %3984

; <label>:3984                                    ; preds = %3977, %3957
  %3985 = phi float [ %3979, %3977 ], [ 1.000000e+00, %3957 ]
  %3986 = phi float [ %3983, %3977 ], [ %3970, %3957 ]
  %3987 = fcmp fast une float %3974, 0.000000e+00
  br i1 %3987, label %3988, label %3995, !dx.controlflow.hints !170

; <label>:3988                                    ; preds = %3984
  %3989 = fmul fast float %3974, 0x3FF7154760000000
  %3990 = call float @dx.op.unary.f32(i32 21, float %3989)  ; Exp(value)
  %3991 = fsub fast float 1.000000e+00, %3990
  %3992 = fmul fast float %3971, %3991
  %3993 = fsub fast float -0.000000e+00, %3992
  %3994 = fdiv fast float %3993, %3974
  br label %3995

; <label>:3995                                    ; preds = %3988, %3984
  %3996 = phi float [ %3990, %3988 ], [ 1.000000e+00, %3984 ]
  %3997 = phi float [ %3994, %3988 ], [ %3971, %3984 ]
  %3998 = fcmp fast une float %3975, 0.000000e+00
  br i1 %3998, label %3999, label %4006, !dx.controlflow.hints !170

; <label>:3999                                    ; preds = %3995
  %4000 = fmul fast float %3975, 0x3FF7154760000000
  %4001 = call float @dx.op.unary.f32(i32 21, float %4000)  ; Exp(value)
  %4002 = fsub fast float 1.000000e+00, %4001
  %4003 = fmul fast float %3972, %4002
  %4004 = fsub fast float -0.000000e+00, %4003
  %4005 = fdiv fast float %4004, %3975
  br label %4006

; <label>:4006                                    ; preds = %3999, %3995
  %4007 = phi float [ %4001, %3999 ], [ 1.000000e+00, %3995 ]
  %4008 = phi float [ %4005, %3999 ], [ %3972, %3995 ]
  %4009 = fcmp fast ogt float %3905, %3907
  br i1 %4009, label %4010, label %4030, !dx.controlflow.hints !171

; <label>:4010                                    ; preds = %4006
  %4011 = fsub fast float 1.000000e+00, %3907
  %4012 = fmul fast float %3923, %4011
  %4013 = fmul fast float %3924, %4011
  %4014 = fmul fast float %3925, %4011
  %4015 = fmul fast float %3926, %4011
  %4016 = fcmp fast une float %4015, 0.000000e+00
  br i1 %4016, label %4017, label %4068, !dx.controlflow.hints !172

; <label>:4017                                    ; preds = %4010
  %4018 = fmul fast float %4015, 0x3FF7154760000000
  %4019 = call float @dx.op.unary.f32(i32 21, float %4018)  ; Exp(value)
  %4020 = fsub fast float 1.000000e+00, %4019
  %4021 = fmul fast float %4012, %4020
  %4022 = fsub fast float -0.000000e+00, %4021
  %4023 = fmul fast float %4013, %4020
  %4024 = fsub fast float -0.000000e+00, %4023
  %4025 = fmul fast float %4014, %4020
  %4026 = fsub fast float -0.000000e+00, %4025
  %4027 = fdiv fast float %4022, %4015
  %4028 = fdiv fast float %4024, %4015
  %4029 = fdiv fast float %4026, %4015
  br label %4068

; <label>:4030                                    ; preds = %4006
  %4031 = fsub fast float 1.000000e+00, %3905
  %4032 = fmul fast float %3936, %4031
  %4033 = fmul fast float %3947, %4031
  %4034 = fmul fast float %3958, %4031
  %4035 = fmul fast float %3937, %4031
  %4036 = fmul fast float %3948, %4031
  %4037 = fmul fast float %3959, %4031
  %4038 = fcmp fast une float %4035, 0.000000e+00
  br i1 %4038, label %4039, label %4046, !dx.controlflow.hints !170

; <label>:4039                                    ; preds = %4030
  %4040 = fmul fast float %4035, 0x3FF7154760000000
  %4041 = call float @dx.op.unary.f32(i32 21, float %4040)  ; Exp(value)
  %4042 = fsub fast float 1.000000e+00, %4041
  %4043 = fmul fast float %4032, %4042
  %4044 = fsub fast float -0.000000e+00, %4043
  %4045 = fdiv fast float %4044, %4035
  br label %4046

; <label>:4046                                    ; preds = %4039, %4030
  %4047 = phi float [ %4045, %4039 ], [ %4032, %4030 ]
  %4048 = phi float [ %4041, %4039 ], [ 1.000000e+00, %4030 ]
  %4049 = fcmp fast une float %4036, 0.000000e+00
  br i1 %4049, label %4050, label %4057, !dx.controlflow.hints !170

; <label>:4050                                    ; preds = %4046
  %4051 = fmul fast float %4036, 0x3FF7154760000000
  %4052 = call float @dx.op.unary.f32(i32 21, float %4051)  ; Exp(value)
  %4053 = fsub fast float 1.000000e+00, %4052
  %4054 = fmul fast float %4033, %4053
  %4055 = fsub fast float -0.000000e+00, %4054
  %4056 = fdiv fast float %4055, %4036
  br label %4057

; <label>:4057                                    ; preds = %4050, %4046
  %4058 = phi float [ %4056, %4050 ], [ %4033, %4046 ]
  %4059 = phi float [ %4052, %4050 ], [ 1.000000e+00, %4046 ]
  %4060 = fcmp fast une float %4037, 0.000000e+00
  br i1 %4060, label %4061, label %4068, !dx.controlflow.hints !170

; <label>:4061                                    ; preds = %4057
  %4062 = fmul fast float %4037, 0x3FF7154760000000
  %4063 = call float @dx.op.unary.f32(i32 21, float %4062)  ; Exp(value)
  %4064 = fsub fast float 1.000000e+00, %4063
  %4065 = fmul fast float %4034, %4064
  %4066 = fsub fast float -0.000000e+00, %4065
  %4067 = fdiv fast float %4066, %4037
  br label %4068

; <label>:4068                                    ; preds = %4061, %4057, %4017, %4010
  %4069 = phi float [ %4067, %4061 ], [ %4029, %4017 ], [ %4014, %4010 ], [ %4034, %4057 ]
  %4070 = phi float [ %4058, %4061 ], [ %4028, %4017 ], [ %4013, %4010 ], [ %4058, %4057 ]
  %4071 = phi float [ %4047, %4061 ], [ %4027, %4017 ], [ %4012, %4010 ], [ %4047, %4057 ]
  %4072 = phi float [ %4063, %4061 ], [ %4019, %4017 ], [ 1.000000e+00, %4010 ], [ 1.000000e+00, %4057 ]
  %4073 = phi float [ %4059, %4061 ], [ %4019, %4017 ], [ 1.000000e+00, %4010 ], [ %4059, %4057 ]
  %4074 = phi float [ %4048, %4061 ], [ %4019, %4017 ], [ 1.000000e+00, %4010 ], [ %4048, %4057 ]
  %4075 = fmul fast float %4074, %3986
  %4076 = fmul fast float %4073, %3997
  %4077 = fmul fast float %4072, %4008
  %4078 = fadd fast float %4075, %4071
  %4079 = fadd fast float %4076, %4070
  %4080 = fadd fast float %4077, %4069
  %4081 = fmul fast float %4074, %3985
  %4082 = fmul fast float %4073, %3996
  %4083 = fmul fast float %4072, %4007
  br label %4084

; <label>:4084                                    ; preds = %4068, %3879
  %4085 = phi float [ %4083, %4068 ], [ %3885, %3879 ]
  %4086 = phi float [ %4082, %4068 ], [ %3884, %3879 ]
  %4087 = phi float [ %4081, %4068 ], [ %3883, %3879 ]
  %4088 = phi float [ %4080, %4068 ], [ %3882, %3879 ]
  %4089 = phi float [ %4079, %4068 ], [ %3881, %3879 ]
  %4090 = phi float [ %4078, %4068 ], [ %3880, %3879 ]
  %4091 = fmul fast float %4087, %3330
  %4092 = fmul fast float %4086, %3331
  %4093 = fmul fast float %4085, %3332
  %4094 = fmul fast float %3327, 0xBFF7154760000000
  %4095 = fmul fast float %3328, 0xBFF7154760000000
  %4096 = fmul fast float %3329, 0xBFF7154760000000
  %4097 = call float @dx.op.unary.f32(i32 21, float %4094)  ; Exp(value)
  %4098 = call float @dx.op.unary.f32(i32 21, float %4095)  ; Exp(value)
  %4099 = call float @dx.op.unary.f32(i32 21, float %4096)  ; Exp(value)
  %4100 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4101 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4102 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4103 = fsub fast float 1.000000e+00, %4100
  %4104 = fsub fast float 1.000000e+00, %4101
  %4105 = fsub fast float 1.000000e+00, %4102
  %4106 = fmul fast float %4103, %4090
  %4107 = fmul fast float %4104, %4089
  %4108 = fmul fast float %4105, %4088
  %4109 = fadd fast float %4106, %4091
  %4110 = fadd fast float %4107, %4092
  %4111 = fadd fast float %4108, %4093
  br label %4112

; <label>:4112                                    ; preds = %4084, %3317
  %4113 = phi float [ %4109, %4084 ], [ %3330, %3317 ]
  %4114 = phi float [ %4110, %4084 ], [ %3331, %3317 ]
  %4115 = phi float [ %4111, %4084 ], [ %3332, %3317 ]
  %4116 = xor i1 %250, true
  %4117 = and i1 %82, %4116
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 0
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 0
  %4122 = select i1 %214, float %4119, float %4121
  %4123 = fmul fast float %4122, %4113
  %4124 = fmul fast float %4122, %4114
  %4125 = fmul fast float %4122, %4115
  %4126 = fmul fast float %4124, 5.000000e-01
  %4127 = fadd fast float %4115, %4113
  %4128 = fmul fast float %4122, %4127
  %4129 = fmul fast float %4128, 2.500000e-01
  %4130 = fadd fast float %4129, %4126
  %4131 = call float @dx.op.unary.f32(i32 23, float %4130)  ; Log(value)
  %4132 = fmul fast float %4131, 0x3FE62E4300000000
  %4133 = fmul fast float %4132, %4132
  %4134 = select i1 %4117, float 1.000000e+00, float 0.000000e+00
  store float %4134, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  %4135 = fmul fast float %4132, %4134
  store float %4135, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  %4136 = fmul fast float %4133, %4134
  store float %4136, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4137 = load float, float addrspace(3)* %261, align 4, !tbaa !58, !noalias !62
  %4138 = fadd fast float %4137, %4134
  %4139 = load float, float addrspace(3)* %264, align 4, !tbaa !58, !noalias !62
  %4140 = fadd fast float %4139, %4132
  %4141 = load float, float addrspace(3)* %267, align 4, !tbaa !58, !noalias !62
  %4142 = fadd fast float %4141, %4133
  store float %4138, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  store float %4140, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  store float %4142, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4143 = load float, float addrspace(3)* %271, align 4, !tbaa !58, !noalias !62
  %4144 = fadd fast float %4143, %4138
  %4145 = load float, float addrspace(3)* %274, align 4, !tbaa !58, !noalias !62
  %4146 = fadd fast float %4145, %4140
  %4147 = load float, float addrspace(3)* %277, align 4, !tbaa !58, !noalias !62
  %4148 = fadd fast float %4147, %4142
  store float %4144, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  store float %4146, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  store float %4148, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4149 = load float, float addrspace(3)* %281, align 4, !tbaa !58, !noalias !62
  %4150 = fadd fast float %4149, %4144
  %4151 = load float, float addrspace(3)* %284, align 4, !tbaa !58, !noalias !62
  %4152 = fadd fast float %4151, %4146
  %4153 = fdiv fast float %4152, %4150
  %4154 = and i1 %4117, %291
  br i1 %4154, label %4155, label %4163, !dx.controlflow.hints !66

; <label>:4155                                    ; preds = %4112
  %4156 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %280
  %4157 = load float, float addrspace(3)* %4156, align 4, !tbaa !58, !noalias !62
  %4158 = fadd fast float %4157, %4148
  %4159 = fdiv fast float %4158, %4150
  %4160 = lshr i32 %70, 1
  %4161 = lshr i32 %71, 1
  %4162 = lshr i32 %249, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %4160, i32 %4161, i32 %4162, float %4153, float %4159, float %4153, float %4153, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4163

; <label>:4163                                    ; preds = %4155, %4112
  br i1 %4117, label %4164, label %4198, !dx.controlflow.hints !67

; <label>:4164                                    ; preds = %4163
  %4165 = fadd fast float %120, 0x3FE3C6EF40000000
  %4166 = call float @dx.op.unary.f32(i32 22, float %4165)  ; Frc(value)
  %4167 = call float @dx.op.unary.f32(i32 23, float %4123)  ; Log(value)
  %4168 = fadd fast float %4167, -7.000000e+00
  %4169 = call float @dx.op.unary.f32(i32 21, float %4168)  ; Exp(value)
  %4170 = fmul fast float %4166, 2.000000e+00
  %4171 = fadd fast float %4170, -1.000000e+00
  %4172 = fmul fast float %4169, %4171
  %4173 = fcmp fast ogt float %4123, 0.000000e+00
  %4174 = select i1 %4173, float %4172, float 0.000000e+00
  %4175 = fadd fast float %4174, %4123
  %4176 = fadd fast float %120, 0x3FF3C6EF40000000
  %4177 = call float @dx.op.unary.f32(i32 22, float %4176)  ; Frc(value)
  %4178 = call float @dx.op.unary.f32(i32 23, float %4124)  ; Log(value)
  %4179 = fadd fast float %4178, -7.000000e+00
  %4180 = call float @dx.op.unary.f32(i32 21, float %4179)  ; Exp(value)
  %4181 = fmul fast float %4177, 2.000000e+00
  %4182 = fadd fast float %4181, -1.000000e+00
  %4183 = fmul fast float %4180, %4182
  %4184 = fcmp fast ogt float %4124, 0.000000e+00
  %4185 = select i1 %4184, float %4183, float 0.000000e+00
  %4186 = fadd fast float %4185, %4124
  %4187 = fadd fast float %120, 0x3FFDAA66E0000000
  %4188 = call float @dx.op.unary.f32(i32 22, float %4187)  ; Frc(value)
  %4189 = call float @dx.op.unary.f32(i32 23, float %4125)  ; Log(value)
  %4190 = fadd fast float %4189, -6.000000e+00
  %4191 = call float @dx.op.unary.f32(i32 21, float %4190)  ; Exp(value)
  %4192 = fmul fast float %4188, 2.000000e+00
  %4193 = fadd fast float %4192, -1.000000e+00
  %4194 = fmul fast float %4191, %4193
  %4195 = fcmp fast ogt float %4125, 0.000000e+00
  %4196 = select i1 %4195, float %4194, float 0.000000e+00
  %4197 = fadd fast float %4196, %4125
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %70, i32 %71, i32 %249, float %4175, float %4186, float %4197, float %4175, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4198

; <label>:4198                                    ; preds = %4164, %4163
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 0
  %4203 = select i1 %214, float %4200, float %4202
  %4204 = fmul fast float %4203, %3327
  %4205 = fmul fast float %4203, %3328
  %4206 = fmul fast float %4203, %3329
  %4207 = fmul fast float %4205, 5.000000e-01
  %4208 = fadd fast float %3329, %3327
  %4209 = fmul fast float %4203, %4208
  %4210 = fmul fast float %4209, 2.500000e-01
  %4211 = fadd fast float %4210, %4207
  %4212 = fmul fast float %4211, %4211
  store float %4134, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  %4213 = fmul fast float %4211, %4134
  store float %4213, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  %4214 = fmul fast float %4212, %4134
  store float %4214, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4215 = load float, float addrspace(3)* %261, align 4, !tbaa !58, !noalias !62
  %4216 = fadd fast float %4215, %4134
  %4217 = load float, float addrspace(3)* %264, align 4, !tbaa !58, !noalias !62
  %4218 = fadd fast float %4211, %4217
  %4219 = load float, float addrspace(3)* %267, align 4, !tbaa !58, !noalias !62
  %4220 = fadd fast float %4212, %4219
  store float %4216, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  store float %4218, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  store float %4220, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4221 = load float, float addrspace(3)* %271, align 4, !tbaa !58, !noalias !62
  %4222 = fadd fast float %4221, %4216
  %4223 = load float, float addrspace(3)* %274, align 4, !tbaa !58, !noalias !62
  %4224 = fadd fast float %4218, %4223
  %4225 = load float, float addrspace(3)* %277, align 4, !tbaa !58, !noalias !62
  %4226 = fadd fast float %4220, %4225
  store float %4222, float addrspace(3)* %255, align 4, !tbaa !58, !noalias !62
  store float %4224, float addrspace(3)* %257, align 4, !tbaa !58, !noalias !62
  store float %4226, float addrspace(3)* %259, align 4, !tbaa !58, !noalias !62
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4227 = load float, float addrspace(3)* %281, align 4, !tbaa !58, !noalias !62
  %4228 = fadd fast float %4227, %4222
  %4229 = load float, float addrspace(3)* %284, align 4, !tbaa !58, !noalias !62
  %4230 = fadd fast float %4229, %4224
  %4231 = fdiv fast float %4230, %4228
  br i1 %4154, label %4232, label %4240, !dx.controlflow.hints !68

; <label>:4232                                    ; preds = %4198
  %4233 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %280
  %4234 = load float, float addrspace(3)* %4233, align 4, !tbaa !58, !noalias !62
  %4235 = fadd fast float %4234, %4226
  %4236 = fdiv fast float %4235, %4228
  %4237 = lshr i32 %70, 1
  %4238 = lshr i32 %71, 1
  %4239 = lshr i32 %249, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4237, i32 %4238, i32 %4239, float %4231, float %4236, float %4231, float %4231, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4240

; <label>:4240                                    ; preds = %4232, %4198
  br i1 %4117, label %4241, label %4275, !dx.controlflow.hints !69

; <label>:4241                                    ; preds = %4240
  %4242 = fadd fast float %120, 0x3FE3C6EF40000000
  %4243 = call float @dx.op.unary.f32(i32 22, float %4242)  ; Frc(value)
  %4244 = call float @dx.op.unary.f32(i32 23, float %4204)  ; Log(value)
  %4245 = fadd fast float %4244, -7.000000e+00
  %4246 = call float @dx.op.unary.f32(i32 21, float %4245)  ; Exp(value)
  %4247 = fmul fast float %4243, 2.000000e+00
  %4248 = fadd fast float %4247, -1.000000e+00
  %4249 = fmul fast float %4246, %4248
  %4250 = fcmp fast ogt float %4204, 0.000000e+00
  %4251 = select i1 %4250, float %4249, float 0.000000e+00
  %4252 = fadd fast float %4251, %4204
  %4253 = fadd fast float %120, 0x3FF3C6EF40000000
  %4254 = call float @dx.op.unary.f32(i32 22, float %4253)  ; Frc(value)
  %4255 = call float @dx.op.unary.f32(i32 23, float %4205)  ; Log(value)
  %4256 = fadd fast float %4255, -7.000000e+00
  %4257 = call float @dx.op.unary.f32(i32 21, float %4256)  ; Exp(value)
  %4258 = fmul fast float %4254, 2.000000e+00
  %4259 = fadd fast float %4258, -1.000000e+00
  %4260 = fmul fast float %4257, %4259
  %4261 = fcmp fast ogt float %4205, 0.000000e+00
  %4262 = select i1 %4261, float %4260, float 0.000000e+00
  %4263 = fadd fast float %4262, %4205
  %4264 = fadd fast float %120, 0x3FFDAA66E0000000
  %4265 = call float @dx.op.unary.f32(i32 22, float %4264)  ; Frc(value)
  %4266 = call float @dx.op.unary.f32(i32 23, float %4206)  ; Log(value)
  %4267 = fadd fast float %4266, -6.000000e+00
  %4268 = call float @dx.op.unary.f32(i32 21, float %4267)  ; Exp(value)
  %4269 = fmul fast float %4265, 2.000000e+00
  %4270 = fadd fast float %4269, -1.000000e+00
  %4271 = fmul fast float %4268, %4270
  %4272 = fcmp fast ogt float %4206, 0.000000e+00
  %4273 = select i1 %4272, float %4271, float 0.000000e+00
  %4274 = fadd fast float %4273, %4206
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %70, i32 %71, i32 %249, float %4252, float %4263, float %4274, float %4252, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4275

; <label>:4275                                    ; preds = %4241, %4240
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
!dx.entryPoints = !{!55}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !41, !46, !49}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39}
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
!33 = !{i32 25, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!34 = !{i32 26, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !37}
!37 = !{i32 1, i32 80}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !40}
!40 = !{i32 1, i32 4}
!41 = !{!42, !43, !44, !45}
!42 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!43 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!44 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!45 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!46 = !{!47, !48}
!47 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!48 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!49 = !{!50, !51, !52, !53, !54}
!50 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!51 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!52 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!53 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!54 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!55 = !{void ()* @cs_volumetric_forwardplus_scatter_local_water_afog, !"cs_volumetric_forwardplus_scatter_local_water_afog", null, !4, !56}
!56 = !{i32 0, i64 272, i32 4, !57}
!57 = !{i32 4, i32 4, i32 4}
!58 = !{!59, !59, i64 0}
!59 = !{!"float", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!63, !65}
!63 = distinct !{!63, !64, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!64 = distinct !{!64, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!65 = distinct !{!65, !64, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
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
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !91}
!108 = distinct !{!108, !91}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 2}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 2}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 2}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 2}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 2}
!136 = !{!137, !139, !141, !63, !65}
!137 = distinct !{!137, !138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!138 = distinct !{!138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!139 = distinct !{!139, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!140 = distinct !{!140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!141 = distinct !{!141, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !137, !139, !141, !63, !65}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !137, !139, !141, !63, !65}
!151 = !{!147}
!152 = !{!148, !144, !137, !139, !141, !63, !65}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !137, !139, !141, !63, !65}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !137, !139, !141, !63, !65}
!161 = !{!157}
!162 = !{!158, !154, !137, !139, !141, !63, !65}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 2}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 2}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 2}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}

