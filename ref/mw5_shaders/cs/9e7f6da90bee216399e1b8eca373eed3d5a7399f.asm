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
; shader hash: 9cbeeefc174507580970ef93c244cf54
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
;                                   texture     f32          2d     T24             t0     1
;                                   textureunorm_f32     2darray     T25            t34     1
;                                   texture    byte         r/o     T26            t28     1
;                                   texture     f32          2d     T27             t1     1
;                                   texture     f32          2d     T28            t23     1
;                                   texture     f32          2d     T29             t2     1
;                                   texture     f32          2d     T30            t18     1
;                                   texture    byte         r/o     T31            t12     1
;                                   texture     f32          1d     T32            t54     1
;                                   texture     f32          3d     T33             t5     1
;                                   texture    byte         r/o     T34            t13     1
;                                   texture  struct         r/o     T35            t14     1
;                                   texture    byte         r/o     T36            t15     1
;                                   texture  struct         r/o     T37            t29     1
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 54, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = alloca [4 x i32], align 4
  %51 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %52 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %53 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %54 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %55 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %56 = alloca [12 x float], align 4
  %57 = alloca [12 x float], align 4
  %58 = alloca [3 x float], align 4
  %59 = alloca [3 x float], align 4
  %60 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.i32 %60, 3
  %62 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.i32 %62, 1
  %64 = mul i32 %63, %61
  %65 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.i32 %65, 1
  %67 = mul i32 %64, %66
  %68 = add i32 %67, %54
  %69 = shl i32 %68, 2
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = and i32 %71, 255
  %73 = lshr i32 %71, 8
  %74 = and i32 %73, 255
  %75 = lshr i32 %71, 16
  %76 = and i32 %75, 255
  %77 = shl nuw nsw i32 %72, 2
  %78 = shl nuw nsw i32 %74, 2
  %79 = shl nuw nsw i32 %76, 2
  %80 = add i32 %77, %51
  %81 = add i32 %78, %52
  %82 = add i32 %79, %53
  %83 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.i32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.i32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.i32 %83, 2
  %87 = icmp uge i32 %80, %84
  %88 = icmp uge i32 %81, %85
  %89 = icmp uge i32 %82, %86
  %90 = or i1 %87, %88
  %91 = or i1 %89, %90
  %92 = xor i1 %91, true
  %93 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.i32 %93, 3
  %95 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %81, i32 %94)  ; UMad(a,b,c)
  %96 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %80, i32 %95)  ; UMad(a,b,c)
  %97 = mul i32 %96, -63
  %98 = lshr i32 %97, 17
  %99 = xor i32 %98, %97
  %100 = mul i32 %99, -511
  %101 = mul i32 %99, -8176
  %102 = xor i32 %100, %101
  %103 = mul i32 %102, -7
  %104 = mul i32 %102, -7168
  %105 = xor i32 %103, %104
  %106 = lshr i32 %105, 15
  %107 = xor i32 %106, %103
  %108 = and i32 %107, 127
  %109 = mul i32 %108, 3
  %110 = add i32 0, %109
  %111 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %110
  %112 = load float, float* %111, align 4
  %113 = mul i32 %108, 3
  %114 = add i32 1, %113
  %115 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %114
  %116 = load float, float* %115, align 4
  %117 = mul i32 %108, 3
  %118 = add i32 2, %117
  %119 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %118
  %120 = load float, float* %119, align 4
  %121 = uitofp i32 %94 to float
  %122 = fmul fast float %121, 0x3FEA36A940000000
  %123 = fmul fast float %121, 0x3FE5793080000000
  %124 = fmul fast float %121, 0x3FE1972580000000
  %125 = fadd fast float %112, %122
  %126 = fadd fast float %116, %123
  %127 = fadd fast float %120, %124
  %128 = call float @dx.op.unary.f32(i32 22, float %125)  ; Frc(value)
  %129 = call float @dx.op.unary.f32(i32 22, float %126)  ; Frc(value)
  %130 = call float @dx.op.unary.f32(i32 22, float %127)  ; Frc(value)
  %131 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %42, i32 0, i32 %80, i32 %81, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = fcmp fast ogt float %132, -1.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %136 = select i1 %133, float %135, float 1.000000e+00
  %137 = fadd fast float %132, 1.000000e+00
  %138 = fmul fast float %136, %137
  %139 = uitofp i32 %80 to float
  %140 = uitofp i32 %81 to float
  %141 = uitofp i32 %82 to float
  %142 = fadd fast float %139, -5.000000e-01
  %143 = fadd fast float %142, %128
  %144 = fadd fast float %140, -5.000000e-01
  %145 = fadd fast float %144, %129
  %146 = fadd fast float %141, -5.000000e-01
  %147 = fadd fast float %146, %130
  %148 = fadd fast float %143, 5.000000e-01
  %149 = fadd fast float %145, 5.000000e-01
  %150 = fadd fast float %147, 5.000000e-01
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = fmul fast float %152, %148
  %156 = fmul fast float %153, %149
  %157 = fmul fast float %154, %150
  %158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.i32 %158, 0
  %160 = uitofp i32 %159 to float
  %161 = fmul fast float %160, %157
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = fmul fast float %161, %164
  %166 = call float @dx.op.unary.f32(i32 21, float %165)  ; Exp(value)
  %167 = fmul fast float %166, %163
  %168 = fsub fast float 4.000000e+00, %163
  %169 = fadd fast float %168, %167
  %170 = call float @dx.op.binary.f32(i32 36, float %169, float %138)  ; FMin(a,b)
  %171 = fmul fast float %155, 2.000000e+00
  %172 = fmul fast float %156, 2.000000e+00
  %173 = fsub fast float 1.000000e+00, %171
  %174 = fsub fast float 1.000000e+00, %172
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = fmul fast float %176, %173
  %180 = fmul fast float %177, %173
  %181 = fmul fast float %178, %173
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %186 = fmul fast float %183, %174
  %187 = fmul fast float %184, %174
  %188 = fmul fast float %185, %174
  %189 = fadd fast float %186, %179
  %190 = fadd fast float %187, %180
  %191 = fadd fast float %188, %181
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = fadd fast float %189, %193
  %197 = fadd fast float %190, %194
  %198 = fadd fast float %191, %195
  %199 = fmul fast float %196, %170
  %200 = fmul fast float %197, %170
  %201 = fmul fast float %198, %170
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 0
  %204 = extractvalue %dx.types.CBufRet.f32 %202, 1
  %205 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %206 = fadd fast float %199, %203
  %207 = fadd fast float %200, %204
  %208 = fadd fast float %201, %205
  %209 = add i32 %82, 1
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %164, %210
  %212 = call float @dx.op.unary.f32(i32 21, float %211)  ; Exp(value)
  %213 = fmul fast float %164, %141
  %214 = call float @dx.op.unary.f32(i32 21, float %213)  ; Exp(value)
  %215 = fsub fast float %212, %214
  %216 = fmul fast float %163, %215
  %217 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = call float @dx.op.unary.f32(i32 25, float %217)  ; Rsqrt(value)
  %219 = fmul fast float %218, %199
  %220 = fmul fast float %218, %200
  %221 = fmul fast float %218, %201
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = fcmp fast ogt float %223, 0.000000e+00
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %228 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %229 = fsub fast float %206, %226
  %230 = fadd fast float %229, %228
  %231 = fsub fast float %207, %227
  %232 = fadd fast float %231, %228
  %233 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %234 = fmul fast float %230, %233
  %235 = fmul fast float %232, %233
  %236 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %237 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  %238 = fsub fast float 1.000000e+00, %236
  %239 = fsub fast float 1.000000e+00, %237
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %46, float %238, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %244 = fmul fast float %243, %241
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %246 = fadd fast float %245, %244
  %247 = fcmp fast ogt float %241, 0.000000e+00
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 32768
  %251 = icmp ne i32 %250, 0
  %252 = and i1 %247, %251
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 3
  %255 = fadd fast float %254, %246
  %256 = fcmp fast ole float %208, %255
  %257 = and i1 %252, %256
  %258 = select i1 %224, i32 %159, i32 0
  %259 = add i32 %258, %82
  %260 = xor i1 %224, %257
  %261 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %262 = fmul fast float %261, 0x3FE62E4300000000
  %263 = fmul fast float %262, %262
  %264 = select i1 %91, float 0.000000e+00, float 1.000000e+00
  %265 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %55
  store float %264, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  %266 = fmul fast float %262, %264
  %267 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %55
  store float %266, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  %268 = fmul fast float %263, %264
  %269 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %55
  store float %268, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %270 = xor i32 %55, 4
  %271 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %270
  %272 = load float, float addrspace(3)* %271, align 4, !tbaa !66, !noalias !70
  %273 = fadd fast float %272, %264
  %274 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %270
  %275 = load float, float addrspace(3)* %274, align 4, !tbaa !66, !noalias !70
  %276 = fadd fast float %275, %262
  %277 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %270
  %278 = load float, float addrspace(3)* %277, align 4, !tbaa !66, !noalias !70
  %279 = fadd fast float %278, %263
  store float %273, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  store float %276, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  store float %279, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %280 = xor i32 %55, 16
  %281 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %280
  %282 = load float, float addrspace(3)* %281, align 4, !tbaa !66, !noalias !70
  %283 = fadd fast float %282, %273
  %284 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %280
  %285 = load float, float addrspace(3)* %284, align 4, !tbaa !66, !noalias !70
  %286 = fadd fast float %285, %276
  %287 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %280
  %288 = load float, float addrspace(3)* %287, align 4, !tbaa !66, !noalias !70
  %289 = fadd fast float %288, %279
  store float %283, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  store float %286, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  store float %289, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %290 = xor i32 %55, 1
  %291 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %290
  %292 = load float, float addrspace(3)* %291, align 4, !tbaa !66, !noalias !70
  %293 = fadd fast float %292, %283
  %294 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %290
  %295 = load float, float addrspace(3)* %294, align 4, !tbaa !66, !noalias !70
  %296 = fadd fast float %295, %286
  %297 = fdiv fast float %296, %293
  %298 = and i32 %80, 1
  %299 = and i32 %298, %81
  %300 = and i32 %299, %259
  %301 = icmp ne i32 %300, 0
  %302 = and i1 %301, %92
  br i1 %302, label %303, label %311, !dx.controlflow.hints !74

; <label>:303                                     ; preds = %0
  %304 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %290
  %305 = load float, float addrspace(3)* %304, align 4, !tbaa !66, !noalias !70
  %306 = fadd fast float %305, %289
  %307 = fdiv fast float %306, %293
  %308 = lshr i32 %80, 1
  %309 = lshr i32 %81, 1
  %310 = lshr i32 %259, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %308, i32 %309, i32 %310, float %297, float %307, float %297, float %297, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %311

; <label>:311                                     ; preds = %303, %0
  br i1 %91, label %313, label %312, !dx.controlflow.hints !75

; <label>:312                                     ; preds = %311
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %80, i32 %81, i32 %259, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %313

; <label>:313                                     ; preds = %312, %311
  store float %264, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  store float 0.000000e+00, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  store float 0.000000e+00, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %314 = load float, float addrspace(3)* %271, align 4, !tbaa !66, !noalias !70
  %315 = fadd fast float %314, %264
  %316 = load float, float addrspace(3)* %274, align 4, !tbaa !66, !noalias !70
  %317 = load float, float addrspace(3)* %277, align 4, !tbaa !66, !noalias !70
  store float %315, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  store float %316, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  store float %317, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %318 = load float, float addrspace(3)* %281, align 4, !tbaa !66, !noalias !70
  %319 = fadd fast float %318, %315
  %320 = load float, float addrspace(3)* %284, align 4, !tbaa !66, !noalias !70
  %321 = fadd fast float %320, %316
  %322 = load float, float addrspace(3)* %287, align 4, !tbaa !66, !noalias !70
  %323 = fadd fast float %322, %317
  store float %319, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  store float %321, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  store float %323, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %324 = load float, float addrspace(3)* %291, align 4, !tbaa !66, !noalias !70
  %325 = fadd fast float %324, %319
  %326 = load float, float addrspace(3)* %294, align 4, !tbaa !66, !noalias !70
  %327 = fadd fast float %326, %321
  %328 = fdiv fast float %327, %325
  br i1 %302, label %329, label %337, !dx.controlflow.hints !76

; <label>:329                                     ; preds = %313
  %330 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %290
  %331 = load float, float addrspace(3)* %330, align 4, !tbaa !66, !noalias !70
  %332 = fadd fast float %331, %323
  %333 = fdiv fast float %332, %325
  %334 = lshr i32 %80, 1
  %335 = lshr i32 %81, 1
  %336 = lshr i32 %259, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %334, i32 %335, i32 %336, float %328, float %333, float %328, float %328, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %337

; <label>:337                                     ; preds = %329, %313
  br i1 %91, label %339, label %338, !dx.controlflow.hints !77

; <label>:338                                     ; preds = %337
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %80, i32 %81, i32 %259, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %339

; <label>:339                                     ; preds = %338, %337
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = fsub fast float %208, %341
  %344 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %343)  ; FMax(a,b)
  %345 = fmul fast float %344, 0x3FF7154760000000
  %346 = fmul fast float %345, %342
  %347 = call float @dx.op.unary.f32(i32 21, float %346)  ; Exp(value)
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %355 = fmul fast float %354, %347
  %356 = fmul fast float %355, %349
  %357 = fmul fast float %355, %350
  %358 = fmul fast float %355, %351
  %359 = fmul fast float %355, %353
  %360 = select i1 %257, float 0.000000e+00, float %355
  %361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.i32 %361, 2
  %363 = extractvalue %dx.types.CBufRet.i32 %361, 3
  %364 = call i32 @dx.op.tertiary.i32(i32 49, i32 %74, i32 %362, i32 %72)  ; UMad(a,b,c)
  %365 = call i32 @dx.op.tertiary.i32(i32 49, i32 %76, i32 %363, i32 %364)  ; UMad(a,b,c)
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %365, i32 0)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = fadd fast float %139, 1.000000e+00
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = fmul fast float %374, %147
  %376 = call float @dx.op.unary.f32(i32 21, float %375)  ; Exp(value)
  %377 = fmul fast float %376, %373
  %378 = fsub fast float 4.000000e+00, %373
  %379 = fadd fast float %378, %377
  %380 = fmul fast float %368, 2.000000e+00
  %381 = fmul fast float %380, %370
  %382 = fmul fast float %140, 2.000000e+00
  %383 = fmul fast float %382, %371
  %384 = fsub fast float 1.000000e+00, %381
  %385 = fsub fast float 1.000000e+00, %383
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %389 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %390 = fmul fast float %387, %384
  %391 = fmul fast float %388, %384
  %392 = fmul fast float %389, %384
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %396 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %397 = fmul fast float %394, %385
  %398 = fmul fast float %395, %385
  %399 = fmul fast float %396, %385
  %400 = fadd fast float %397, %390
  %401 = fadd fast float %398, %391
  %402 = fadd fast float %399, %392
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %407 = fadd fast float %400, %404
  %408 = fadd fast float %401, %405
  %409 = fadd fast float %402, %406
  %410 = fadd fast float %140, 1.000000e+00
  %411 = fmul fast float %139, 2.000000e+00
  %412 = fmul fast float %411, %370
  %413 = fmul fast float %410, 2.000000e+00
  %414 = fmul fast float %413, %371
  %415 = fsub fast float 1.000000e+00, %412
  %416 = fsub fast float 1.000000e+00, %414
  %417 = fmul fast float %387, %415
  %418 = fmul fast float %388, %415
  %419 = fmul fast float %389, %415
  %420 = fmul fast float %394, %416
  %421 = fmul fast float %395, %416
  %422 = fmul fast float %396, %416
  %423 = fadd fast float %420, %417
  %424 = fadd fast float %421, %418
  %425 = fadd fast float %422, %419
  %426 = fadd fast float %423, %404
  %427 = fadd fast float %424, %405
  %428 = fadd fast float %425, %406
  %429 = fmul fast float %426, %379
  %430 = fmul fast float %427, %379
  %431 = fmul fast float %428, %379
  %432 = fadd fast float %426, %407
  %433 = fmul fast float %379, %432
  %434 = fadd fast float %427, %408
  %435 = fmul fast float %379, %434
  %436 = fadd fast float %428, %409
  %437 = fmul fast float %379, %436
  %438 = fmul fast float %433, 5.000000e-01
  %439 = fmul fast float %435, 5.000000e-01
  %440 = fmul fast float %437, 5.000000e-01
  %441 = fsub fast float %438, %429
  %442 = fsub fast float %439, %430
  %443 = fsub fast float %440, %431
  %444 = call float @dx.op.dot3.f32(i32 55, float %441, float %442, float %443, float %441, float %442, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %445 = call float @dx.op.unary.f32(i32 25, float %444)  ; Rsqrt(value)
  %446 = fmul fast float %444, 2.000000e+00
  %447 = fmul fast float %446, %445
  %448 = call float @dx.op.binary.f32(i32 35, float %216, float %447)  ; FMax(a,b)
  %449 = xor i1 %257, true
  %450 = and i32 %367, 8
  %451 = icmp ne i32 %450, 0
  %452 = and i1 %451, %449
  br i1 %452, label %453, label %669, !dx.controlflow.hints !78

; <label>:453                                     ; preds = %339
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %457 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = fsub fast float %206, %459
  %463 = fsub fast float %207, %460
  %464 = fsub fast float %208, %461
  %465 = fmul fast float %462, %455
  %466 = fmul fast float %463, %456
  %467 = fmul fast float %464, %457
  %468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.i32 %468, 3
  %470 = icmp eq i32 %469, 0
  %471 = fcmp fast oge float %467, 0.000000e+00
  %472 = fcmp fast ole float %467, 1.000000e+00
  br i1 %470, label %475, label %473, !dx.controlflow.hints !79

; <label>:473                                     ; preds = %453
  %474 = and i1 %471, %472
  br label %485

; <label>:475                                     ; preds = %453
  %476 = fcmp fast oge float %465, 0.000000e+00
  %477 = fcmp fast oge float %466, 0.000000e+00
  %478 = and i1 %476, %477
  %479 = and i1 %471, %478
  %480 = fcmp fast ole float %465, 1.000000e+00
  %481 = fcmp fast ole float %466, 1.000000e+00
  %482 = and i1 %480, %481
  %483 = and i1 %472, %482
  %484 = and i1 %479, %483
  br label %485

; <label>:485                                     ; preds = %475, %473
  %486 = phi i1 [ %474, %473 ], [ %484, %475 ]
  br i1 %486, label %487, label %662, !dx.controlflow.hints !80

; <label>:487                                     ; preds = %485
  %488 = fcmp fast oeq float %448, 0.000000e+00
  br i1 %488, label %503, label %489, !dx.controlflow.hints !81

; <label>:489                                     ; preds = %487
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 3
  %492 = fmul fast float %491, %448
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %496 = extractvalue %dx.types.CBufRet.f32 %493, 2
  %497 = fmul fast float %494, %492
  %498 = fmul fast float %495, %492
  %499 = fmul fast float %496, %492
  %500 = call float @dx.op.unary.f32(i32 23, float %497)  ; Log(value)
  %501 = call float @dx.op.unary.f32(i32 23, float %498)  ; Log(value)
  %502 = call float @dx.op.unary.f32(i32 23, float %499)  ; Log(value)
  br label %503

; <label>:503                                     ; preds = %489, %487
  %504 = phi float [ %500, %489 ], [ 0.000000e+00, %487 ]
  %505 = phi float [ %501, %489 ], [ 0.000000e+00, %487 ]
  %506 = phi float [ %502, %489 ], [ 0.000000e+00, %487 ]
  %507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.i32 %507, 0
  %509 = extractvalue %dx.types.CBufRet.i32 %507, 1
  %510 = uitofp i32 %508 to float
  %511 = uitofp i32 %509 to float
  %512 = fmul fast float %465, %510
  %513 = fmul fast float %466, %511
  %514 = fadd fast float %512, 5.000000e-01
  %515 = fadd fast float %513, 5.000000e-01
  %516 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %517 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %518 = call float @dx.op.unary.f32(i32 27, float %514)  ; Round_ni(value)
  %519 = call float @dx.op.unary.f32(i32 27, float %515)  ; Round_ni(value)
  %520 = fadd fast float %518, 1.000000e+00
  %521 = fadd fast float %519, 1.000000e+00
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %524 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %525 = fmul fast float %523, %520
  %526 = fmul fast float %524, %521
  %527 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %28, %dx.types.Handle %45, float %525, float %526, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = extractvalue %dx.types.ResRet.f32 %527, 3
  %532 = extractvalue %dx.types.CBufRet.i32 %507, 2
  %533 = extractvalue %dx.types.CBufRet.f32 %522, 2
  %534 = uitofp i32 %532 to float
  %535 = fadd fast float %534, -1.000000e+00
  %536 = fmul fast float %535, %528
  %537 = fmul fast float %535, %529
  %538 = fmul fast float %535, %530
  %539 = fmul fast float %535, %531
  %540 = fadd fast float %536, 5.000000e-01
  %541 = fadd fast float %537, 5.000000e-01
  %542 = fadd fast float %538, 5.000000e-01
  %543 = fadd fast float %539, 5.000000e-01
  %544 = fptoui float %540 to i32
  %545 = fptoui float %541 to i32
  %546 = fptoui float %542 to i32
  %547 = fptoui float %543 to i32
  %548 = uitofp i32 %544 to float
  %549 = uitofp i32 %545 to float
  %550 = uitofp i32 %546 to float
  %551 = uitofp i32 %547 to float
  %552 = fadd fast float %548, 5.000000e-01
  %553 = fadd fast float %549, 5.000000e-01
  %554 = fadd fast float %550, 5.000000e-01
  %555 = fadd fast float %551, 5.000000e-01
  %556 = fmul fast float %552, %533
  %557 = fmul fast float %553, %533
  %558 = fmul fast float %554, %533
  %559 = fmul fast float %555, %533
  %560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %46, float %556, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %46, float %557, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %46, float %558, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %46, float %559, float %467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = fsub fast float %565, %567
  %569 = fmul fast float %568, %516
  %570 = fadd fast float %569, %567
  %571 = fsub fast float %563, %561
  %572 = fmul fast float %571, %516
  %573 = fadd fast float %572, %561
  %574 = fsub fast float %573, %570
  %575 = fmul fast float %574, %517
  %576 = fadd fast float %575, %570
  %577 = fcmp fast ogt float %576, 0.000000e+00
  br i1 %577, label %578, label %646, !dx.controlflow.hints !82

; <label>:578                                     ; preds = %503
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %582 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %586 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %587 = fmul fast float %463, %455
  %588 = fmul fast float %464, %455
  %589 = fadd fast float %465, %584
  %590 = fadd fast float %587, %585
  %591 = fadd fast float %588, %586
  %592 = fmul fast float %589, %580
  %593 = fmul fast float %590, %580
  %594 = fmul fast float %591, %580
  %595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %43, float %592, float %593, float %594, float undef, i32 0, i32 0, i32 0, float %504)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = fmul fast float %589, %581
  %598 = fmul fast float %590, %581
  %599 = fmul fast float %591, %581
  %600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %43, float %597, float %598, float %599, float undef, i32 0, i32 0, i32 0, float %505)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 1
  %602 = fmul fast float %589, %582
  %603 = fmul fast float %590, %582
  %604 = fmul fast float %591, %582
  %605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %43, float %602, float %603, float %604, float undef, i32 0, i32 0, i32 0, float %506)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 2
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %609 = fmul fast float %601, %596
  %610 = fmul fast float %609, %606
  %611 = call float @dx.op.unary.f32(i32 23, float %610)  ; Log(value)
  %612 = fmul fast float %611, %608
  %613 = call float @dx.op.unary.f32(i32 21, float %612)  ; Exp(value)
  %614 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %615 = fmul fast float %576, %576
  %616 = fmul fast float %615, %613
  %617 = fmul fast float %616, %614
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 3
  %620 = fmul fast float %619, %617
  %621 = bitcast float %620 to i32
  %622 = sitofp i32 %621 to float
  %623 = fptosi float %622 to i32
  %624 = bitcast i32 %623 to float
  %625 = fsub fast float 1.000000e+00, %617
  %626 = bitcast float %625 to i32
  %627 = sitofp i32 %626 to float
  %628 = fptosi float %627 to i32
  %629 = bitcast i32 %628 to float
  %630 = fadd fast float %624, %629
  %631 = bitcast float %630 to i32
  %632 = sub nsw i32 2129859010, %631
  %633 = bitcast i32 %632 to float
  %634 = fmul fast float %633, %624
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = fmul fast float %634, %638
  %640 = fadd fast float %639, 1.000000e+00
  %641 = bitcast float %640 to i32
  %642 = sub nsw i32 2129859010, %641
  %643 = bitcast i32 %642 to float
  %644 = fmul fast float %634, %636
  %645 = fmul fast float %644, %643
  br label %646

; <label>:646                                     ; preds = %578, %503
  %647 = phi float [ %645, %578 ], [ %576, %503 ]
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 0
  %650 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %651 = extractvalue %dx.types.CBufRet.f32 %648, 2
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %654 = fmul fast float %649, %647
  %655 = fmul fast float %650, %647
  %656 = fmul fast float %651, %647
  %657 = fadd fast float %654, %356
  %658 = fadd fast float %655, %357
  %659 = fadd fast float %656, %358
  %660 = fmul fast float %653, %647
  %661 = fadd fast float %660, %359
  br label %662

; <label>:662                                     ; preds = %646, %485
  %663 = phi float [ %657, %646 ], [ %356, %485 ]
  %664 = phi float [ %658, %646 ], [ %357, %485 ]
  %665 = phi float [ %659, %646 ], [ %358, %485 ]
  %666 = phi float [ %661, %646 ], [ %359, %485 ]
  %667 = phi float [ %647, %646 ], [ 0.000000e+00, %485 ]
  %668 = fadd fast float %667, %360
  br label %669

; <label>:669                                     ; preds = %662, %339
  %670 = phi float [ %663, %662 ], [ %356, %339 ]
  %671 = phi float [ %664, %662 ], [ %357, %339 ]
  %672 = phi float [ %665, %662 ], [ %358, %339 ]
  %673 = phi float [ %666, %662 ], [ %359, %339 ]
  %674 = phi float [ %668, %662 ], [ %360, %339 ]
  %675 = phi float [ %667, %662 ], [ 0.000000e+00, %339 ]
  br i1 %257, label %1173, label %676, !dx.controlflow.hints !83

; <label>:676                                     ; preds = %669
  %677 = and i32 %367, 2
  %678 = icmp ne i32 %677, 0
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 2
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 2
  %683 = fadd fast float %682, %680
  %684 = fcmp fast ole float %208, %683
  %685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.i32 %685, 3
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %707, !dx.controlflow.hints !84

; <label>:688                                     ; preds = %676
  %689 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %679, 1
  %691 = fsub fast float %206, %689
  %692 = fsub fast float %207, %690
  %693 = extractvalue %dx.types.CBufRet.f32 %681, 0
  %694 = extractvalue %dx.types.CBufRet.f32 %681, 1
  %695 = fdiv fast float 1.000000e+00, %693
  %696 = fdiv fast float 1.000000e+00, %694
  %697 = fmul fast float %691, %695
  %698 = fmul fast float %696, %692
  %699 = fcmp fast oge float %697, 0.000000e+00
  %700 = fcmp fast oge float %698, 0.000000e+00
  %701 = and i1 %699, %700
  %702 = and i1 %684, %701
  %703 = fcmp fast ole float %697, 1.000000e+00
  %704 = fcmp fast ole float %698, 1.000000e+00
  %705 = and i1 %703, %704
  %706 = and i1 %705, %702
  br label %707

; <label>:707                                     ; preds = %688, %676
  %708 = phi i1 [ %706, %688 ], [ %684, %676 ]
  %709 = and i1 %678, %708
  br i1 %709, label %710, label %889, !dx.controlflow.hints !85

; <label>:710                                     ; preds = %707
  %711 = fcmp fast oeq float %448, 0.000000e+00
  br i1 %711, label %717, label %712, !dx.controlflow.hints !86

; <label>:712                                     ; preds = %710
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 3
  %715 = fmul fast float %714, %448
  %716 = call float @dx.op.unary.f32(i32 23, float %715)  ; Log(value)
  br label %717

; <label>:717                                     ; preds = %712, %710
  %718 = phi float [ %716, %712 ], [ 0.000000e+00, %710 ]
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 0
  %721 = extractvalue %dx.types.CBufRet.f32 %719, 1
  %722 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %723 = fsub fast float %206, %720
  %724 = fsub fast float %207, %721
  %725 = fsub fast float %208, %722
  %726 = fmul fast float %723, %723
  %727 = fmul fast float %724, %724
  %728 = fadd fast float %726, %727
  %729 = fmul fast float %725, %725
  %730 = fadd fast float %728, %729
  %731 = call float @dx.op.unary.f32(i32 24, float %730)  ; Sqrt(value)
  %732 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %679, 1
  %734 = fsub fast float %206, %732
  %735 = fsub fast float %207, %733
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 0
  %738 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %739 = fmul fast float %734, %737
  %740 = fmul fast float %735, %738
  %741 = fsub fast float 1.000000e+00, %740
  br i1 %687, label %748, label %742, !dx.controlflow.hints !87

; <label>:742                                     ; preds = %717
  %743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %739, float %741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = extractvalue %dx.types.ResRet.f32 %743, 3
  br label %754

; <label>:748                                     ; preds = %717
  %749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %46, float %739, float %741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = extractvalue %dx.types.ResRet.f32 %749, 3
  br label %754

; <label>:754                                     ; preds = %748, %742
  %755 = phi float [ %744, %742 ], [ %750, %748 ]
  %756 = phi float [ %745, %742 ], [ %751, %748 ]
  %757 = phi float [ %746, %742 ], [ %752, %748 ]
  %758 = phi float [ %747, %742 ], [ %753, %748 ]
  %759 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %760 = fmul fast float %759, %756
  %761 = fmul fast float %760, %755
  %762 = fsub fast float %760, %761
  %763 = fcmp fast ole float %762, 0.000000e+00
  %764 = fmul fast float %759, %757
  %765 = fadd fast float %764, %680
  %766 = fdiv fast float 1.000000e+00, %762
  %767 = select i1 %763, float 1.000000e+06, float %766
  %768 = fsub fast float %208, %680
  %769 = fsub fast float %768, %761
  %770 = fmul fast float %767, %769
  %771 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %772 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %773 = fmul fast float %772, %771
  %774 = fsub fast float %772, %773
  %775 = fcmp fast olt float %208, %765
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 3
  %778 = select i1 %775, float %777, float 1.000000e+00
  %779 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %780 = fcmp fast oeq float %779, 0.000000e+00
  br i1 %780, label %863, label %781, !dx.controlflow.hints !88

; <label>:781                                     ; preds = %754
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 3
  %784 = fcmp fast ogt float %783, 0.000000e+00
  %785 = extractvalue %dx.types.CBufRet.f32 %776, 2
  br i1 %784, label %786, label %816, !dx.controlflow.hints !89

; <label>:786                                     ; preds = %781
  %787 = fmul fast float %739, %783
  %788 = fmul fast float %740, %783
  %789 = fsub fast float 1.000000e+00, %788
  %790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %43, float %787, float %789, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = extractvalue %dx.types.ResRet.f32 %790, 1
  %793 = fmul fast float %791, 2.000000e+00
  %794 = fmul fast float %792, 2.000000e+00
  %795 = fadd fast float %793, -1.000000e+00
  %796 = fadd fast float %794, -1.000000e+00
  %797 = fmul fast float %779, %206
  %798 = fmul fast float %779, %207
  %799 = fmul fast float %779, %208
  %800 = call float @dx.op.unary.f32(i32 22, float %785)  ; Frc(value)
  %801 = fmul fast float %795, %800
  %802 = fmul fast float %796, %800
  %803 = fsub fast float %797, %801
  %804 = fsub fast float %798, %802
  %805 = fadd fast float %785, 5.000000e-01
  %806 = call float @dx.op.unary.f32(i32 22, float %805)  ; Frc(value)
  %807 = fmul fast float %806, %795
  %808 = fmul fast float %806, %796
  %809 = fadd fast float %797, -5.000000e-01
  %810 = fsub fast float %809, %807
  %811 = fadd fast float %798, -5.000000e-01
  %812 = fsub fast float %811, %808
  %813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %43, float %810, float %812, float %799, float undef, i32 0, i32 0, i32 0, float %718)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = extractvalue %dx.types.ResRet.f32 %813, 1
  br label %829

; <label>:816                                     ; preds = %781
  %817 = extractvalue %dx.types.CBufRet.f32 %782, 0
  %818 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %819 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %820 = fmul fast float %785, %817
  %821 = fmul fast float %785, %818
  %822 = fmul fast float %785, %819
  %823 = fsub fast float %206, %820
  %824 = fsub fast float %207, %821
  %825 = fsub fast float %208, %822
  %826 = fmul fast float %823, %779
  %827 = fmul fast float %824, %779
  %828 = fmul fast float %825, %779
  br label %829

; <label>:829                                     ; preds = %816, %786
  %830 = phi float [ %803, %786 ], [ %826, %816 ]
  %831 = phi float [ %804, %786 ], [ %827, %816 ]
  %832 = phi float [ %799, %786 ], [ %828, %816 ]
  %833 = phi float [ %814, %786 ], [ 0.000000e+00, %816 ]
  %834 = phi float [ %815, %786 ], [ 0.000000e+00, %816 ]
  %835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %43, float %830, float %831, float %832, float undef, i32 0, i32 0, i32 0, float %718)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = extractvalue %dx.types.ResRet.f32 %835, 1
  br i1 %784, label %838, label %850, !dx.controlflow.hints !90

; <label>:838                                     ; preds = %829
  %839 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %840 = call float @dx.op.unary.f32(i32 22, float %839)  ; Frc(value)
  %841 = fmul fast float %840, 2.000000e+00
  %842 = fadd fast float %841, -1.000000e+00
  %843 = call float @dx.op.unary.f32(i32 6, float %842)  ; FAbs(value)
  %844 = fsub fast float %833, %836
  %845 = fmul fast float %843, %844
  %846 = fadd fast float %845, %836
  %847 = fsub fast float %834, %837
  %848 = fmul fast float %843, %847
  %849 = fadd fast float %848, %837
  br label %850

; <label>:850                                     ; preds = %838, %829
  %851 = phi float [ %846, %838 ], [ %836, %829 ]
  %852 = phi float [ %849, %838 ], [ %837, %829 ]
  %853 = extractvalue %dx.types.CBufRet.f32 %679, 3
  %854 = fadd fast float %853, %853
  %855 = fdiv fast float 2.000000e+00, %854
  %856 = fmul fast float %853, 2.000000e+00
  %857 = fadd fast float %851, -1.000000e+00
  %858 = fadd fast float %857, %852
  %859 = fadd fast float %858, %856
  %860 = fmul fast float %859, %855
  %861 = fadd fast float %860, -1.000000e+00
  %862 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  br label %863

; <label>:863                                     ; preds = %850, %754
  %864 = phi float [ %862, %850 ], [ 1.000000e+00, %754 ]
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %869 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %872 = fsub fast float %731, %871
  %873 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %874 = fmul fast float %872, %873
  %875 = call float @dx.op.unary.f32(i32 7, float %874)  ; Saturate(value)
  %876 = fmul fast float %778, %758
  %877 = fmul fast float %876, %774
  %878 = fmul fast float %877, %864
  %879 = fmul fast float %878, %875
  %880 = fmul fast float %879, %866
  %881 = fmul fast float %879, %867
  %882 = fmul fast float %879, %868
  %883 = fadd fast float %880, %670
  %884 = fadd fast float %881, %671
  %885 = fadd fast float %882, %672
  %886 = fmul fast float %879, %869
  %887 = fadd fast float %886, %673
  %888 = fadd fast float %879, %674
  br label %889

; <label>:889                                     ; preds = %863, %707
  %890 = phi float [ %883, %863 ], [ %670, %707 ]
  %891 = phi float [ %884, %863 ], [ %671, %707 ]
  %892 = phi float [ %885, %863 ], [ %672, %707 ]
  %893 = phi float [ %887, %863 ], [ %673, %707 ]
  %894 = phi float [ %888, %863 ], [ %674, %707 ]
  %895 = and i32 %367, 1
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %1173, label %897, !dx.controlflow.hints !91

; <label>:897                                     ; preds = %889
  %898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.i32 %898, 1
  %900 = and i32 %899, 1
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %977, label %902, !dx.controlflow.hints !92

; <label>:902                                     ; preds = %897
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 3
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %908 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %910 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %914 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 3
  %917 = and i32 %899, 2
  %918 = extractvalue %dx.types.CBufRet.i32 %898, 0
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %956, label %920

; <label>:920                                     ; preds = %902
  br label %921

; <label>:921                                     ; preds = %921, %920
  %922 = phi float [ %950, %921 ], [ 0.000000e+00, %920 ]
  %923 = phi float [ %949, %921 ], [ 1.000000e+06, %920 ]
  %924 = phi i32 [ %951, %921 ], [ 0, %920 ]
  %925 = add i32 %924, 171
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %925)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 2
  %931 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %932 = fsub fast float %206, %927
  %933 = fsub fast float %207, %928
  %934 = fmul fast float %932, %932
  %935 = fmul fast float %933, %933
  %936 = fadd fast float %934, %935
  %937 = call float @dx.op.unary.f32(i32 24, float %936)  ; Sqrt(value)
  %938 = fsub fast float %937, %931
  %939 = icmp ne i32 %917, 0
  %940 = fsub fast float -0.000000e+00, %907
  %941 = select i1 %939, float %940, float %907
  %942 = fmul fast float %938, %941
  %943 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %944 = fmul fast float %943, %906
  %945 = fsub fast float %930, %208
  %946 = fmul fast float %945, %904
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %948 = fmul fast float %944, %947
  %949 = call float @dx.op.binary.f32(i32 36, float %923, float %938)  ; FMin(a,b)
  %950 = call float @dx.op.binary.f32(i32 35, float %922, float %948)  ; FMax(a,b)
  %951 = add nuw nsw i32 %924, 1
  %952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.i32 %952, 0
  %954 = icmp ult i32 %951, %953
  br i1 %954, label %921, label %955

; <label>:955                                     ; preds = %921
  br label %956

; <label>:956                                     ; preds = %955, %902
  %957 = phi float [ 0.000000e+00, %902 ], [ %950, %955 ]
  %958 = phi float [ 1.000000e+06, %902 ], [ %949, %955 ]
  %959 = fadd fast float %957, %894
  %960 = fmul fast float %958, %916
  %961 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  %962 = fsub fast float %912, %908
  %963 = fsub fast float %913, %909
  %964 = fsub fast float %914, %910
  %965 = fmul fast float %961, %962
  %966 = fmul fast float %961, %963
  %967 = fmul fast float %961, %964
  %968 = fadd fast float %965, %908
  %969 = fadd fast float %966, %909
  %970 = fadd fast float %967, %910
  %971 = fmul fast float %968, %957
  %972 = fmul fast float %969, %957
  %973 = fmul fast float %970, %957
  %974 = fadd fast float %971, %890
  %975 = fadd fast float %972, %891
  %976 = fadd fast float %973, %892
  br label %1173

; <label>:977                                     ; preds = %897
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %981 = fmul fast float %979, %206
  %982 = fmul fast float %980, %207
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %986 = fadd fast float %981, %984
  %987 = fadd fast float %982, %985
  %988 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  %989 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %46, float %988, float %989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = fmul fast float %993, %991
  %995 = fsub fast float %986, %988
  %996 = fsub fast float %987, %989
  %997 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %999 = fmul fast float %997, %995
  %1000 = fmul fast float %998, %996
  %1001 = fmul fast float %999, %999
  %1002 = fmul fast float %1000, %1000
  %1003 = fadd fast float %1001, %1002
  %1004 = call float @dx.op.unary.f32(i32 24, float %1003)  ; Sqrt(value)
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 3
  %1007 = fmul fast float %1006, %1004
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1010 = fsub fast float %1009, %994
  %1011 = fmul fast float %1010, %1008
  %1012 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %1013 = fsub fast float %208, %994
  %1014 = fsub fast float %1013, %1012
  %1015 = fsub fast float %1014, %1011
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1018 = fsub fast float %1015, %1017
  %1019 = fcmp fast olt float %1018, 0.000000e+00
  %1020 = extractvalue %dx.types.CBufRet.i32 %898, 0
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1072, label %1022

; <label>:1022                                    ; preds = %977
  br label %1023

; <label>:1023                                    ; preds = %1061, %1022
  %1024 = phi i32 [ %1067, %1061 ], [ 1, %1022 ]
  %1025 = phi i32 [ %1068, %1061 ], [ 0, %1022 ]
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.i32 %1028, 1
  %1030 = and i32 %1029, 8
  %1031 = icmp eq i32 %1030, 0
  %1032 = fcmp fast ogt float %1027, %1015
  %1033 = or i1 %1032, %1031
  %1034 = add i32 %1025, 171
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %1034)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  br i1 %1033, label %1039, label %1045, !dx.controlflow.hints !93

; <label>:1039                                    ; preds = %1023
  %1040 = fsub fast float %1036, %206
  %1041 = fsub fast float %1037, %207
  %1042 = fmul fast float %1040, %1040
  %1043 = fmul fast float %1041, %1041
  %1044 = fadd fast float %1042, %1043
  br label %1061

; <label>:1045                                    ; preds = %1023
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 2
  %1048 = extractvalue %dx.types.CBufRet.f32 %1026, 2
  %1049 = fmul fast float %1048, %1047
  %1050 = fsub fast float %1049, %1027
  %1051 = fdiv fast float %1038, %1050
  %1052 = fsub fast float %206, %1036
  %1053 = fsub fast float %207, %1037
  %1054 = fsub fast float %1015, %1027
  %1055 = fmul fast float %1051, %1054
  %1056 = fmul fast float %1052, %1052
  %1057 = fmul fast float %1053, %1053
  %1058 = fadd fast float %1056, %1057
  %1059 = fmul fast float %1055, %1055
  %1060 = fadd fast float %1058, %1059
  br label %1061

; <label>:1061                                    ; preds = %1045, %1039
  %1062 = phi float [ %1044, %1039 ], [ %1060, %1045 ]
  %1063 = call float @dx.op.unary.f32(i32 24, float %1062)  ; Sqrt(value)
  %1064 = fsub float %1038, %1063
  %1065 = fcmp fast olt float %1064, 0.000000e+00
  %1066 = zext i1 %1065 to i32
  %1067 = and i32 %1066, %1024
  %1068 = add i32 %1025, 1
  %1069 = extractvalue %dx.types.CBufRet.i32 %1028, 0
  %1070 = icmp ult i32 %1068, %1069
  br i1 %1070, label %1023, label %1071

; <label>:1071                                    ; preds = %1061
  br label %1072

; <label>:1072                                    ; preds = %1071, %977
  %1073 = phi i32 [ 1, %977 ], [ %1067, %1071 ]
  br label %1074

; <label>:1074                                    ; preds = %1074, %1072
  %1075 = phi i32 [ %1111, %1074 ], [ %1073, %1072 ]
  %1076 = phi i32 [ %1112, %1074 ], [ 0, %1072 ]
  %1077 = add nuw nsw i32 %1076, 191
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %1077)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.CBufRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.CBufRet.f32 %1078, 2
  %1082 = add nuw nsw i32 %1076, 195
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %1082)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1087 = fsub fast float %206, %1079
  %1088 = fsub fast float %207, %1080
  %1089 = fsub fast float %1015, %1081
  %1090 = call float @dx.op.unary.f32(i32 6, float %1087)  ; FAbs(value)
  %1091 = call float @dx.op.unary.f32(i32 6, float %1088)  ; FAbs(value)
  %1092 = call float @dx.op.unary.f32(i32 6, float %1089)  ; FAbs(value)
  %1093 = fsub fast float %1090, %1084
  %1094 = fsub fast float %1091, %1085
  %1095 = fsub fast float %1092, %1086
  %1096 = call float @dx.op.binary.f32(i32 35, float %1093, float 0.000000e+00)  ; FMax(a,b)
  %1097 = call float @dx.op.binary.f32(i32 35, float %1094, float 0.000000e+00)  ; FMax(a,b)
  %1098 = call float @dx.op.binary.f32(i32 35, float %1095, float 0.000000e+00)  ; FMax(a,b)
  %1099 = fmul fast float %1096, %1096
  %1100 = fmul fast float %1097, %1097
  %1101 = fadd fast float %1100, %1099
  %1102 = fmul fast float %1098, %1098
  %1103 = fadd fast float %1101, %1102
  %1104 = call float @dx.op.unary.f32(i32 24, float %1103)  ; Sqrt(value)
  %1105 = call float @dx.op.binary.f32(i32 35, float %1094, float %1095)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 35, float %1093, float %1105)  ; FMax(a,b)
  %1107 = call float @dx.op.binary.f32(i32 36, float %1106, float 0.000000e+00)  ; FMin(a,b)
  %1108 = fadd fast float %1107, %1104
  %1109 = fcmp ogt float %1108, -0.000000e+00
  %1110 = zext i1 %1109 to i32
  %1111 = and i32 %1110, %1075
  %1112 = add nuw nsw i32 %1076, 1
  %1113 = icmp eq i32 %1112, 4
  br i1 %1113, label %1114, label %1074

; <label>:1114                                    ; preds = %1074
  %1115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.i32 %1115, 1
  %1117 = lshr i32 %1116, 1
  %1118 = xor i32 %1117, %1111
  %1119 = zext i1 %1019 to i32
  %1120 = and i32 %1118, %1119
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1173, label %1122, !dx.controlflow.hints !94

; <label>:1122                                    ; preds = %1114
  %1123 = fmul fast float %199, %199
  %1124 = fmul fast float %200, %200
  %1125 = fadd fast float %1123, %1124
  %1126 = fmul fast float %201, %201
  %1127 = fadd fast float %1125, %1126
  %1128 = call float @dx.op.unary.f32(i32 24, float %1127)  ; Sqrt(value)
  %1129 = and i32 %899, 4
  %1130 = icmp ne i32 %1129, 0
  %1131 = select i1 %1130, float %1128, float 1.000000e+00
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1134 = fsub fast float %1131, %1133
  %1135 = extractvalue %dx.types.CBufRet.f32 %1132, 3
  %1136 = fmul fast float %1134, %1135
  %1137 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 3
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1142 = fsub fast float %1141, %1015
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 3
  %1145 = fmul fast float %1142, %1144
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1147 = fmul fast float %1146, %1139
  %1148 = extractvalue %dx.types.CBufRet.f32 %1143, 0
  %1149 = fsub fast float %1128, %1148
  %1150 = extractvalue %dx.types.CBufRet.f32 %1143, 1
  %1151 = fmul fast float %1149, %1150
  %1152 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1153 = fsub fast float 1.000000e+00, %1137
  %1154 = fmul fast float %1152, %1153
  %1155 = fadd fast float %1154, %1137
  %1156 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1157 = fsub fast float %1147, %1156
  %1158 = fmul fast float %1157, %1155
  %1159 = fadd fast float %1158, %1156
  %1160 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1161 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1162 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1163 = extractvalue %dx.types.CBufRet.f32 %1143, 2
  %1164 = fadd fast float %1159, %894
  %1165 = fmul fast float %1159, %1160
  %1166 = fmul fast float %1159, %1161
  %1167 = fmul fast float %1159, %1162
  %1168 = fadd fast float %1165, %890
  %1169 = fadd fast float %1166, %891
  %1170 = fadd fast float %1167, %892
  %1171 = fmul fast float %1159, %1163
  %1172 = fadd fast float %1171, %893
  br label %1173

; <label>:1173                                    ; preds = %1122, %1114, %956, %889, %669
  %1174 = phi float [ %670, %669 ], [ %890, %889 ], [ %974, %956 ], [ %1168, %1122 ], [ %890, %1114 ]
  %1175 = phi float [ %671, %669 ], [ %891, %889 ], [ %975, %956 ], [ %1169, %1122 ], [ %891, %1114 ]
  %1176 = phi float [ %672, %669 ], [ %892, %889 ], [ %976, %956 ], [ %1170, %1122 ], [ %892, %1114 ]
  %1177 = phi float [ %673, %669 ], [ %893, %889 ], [ %893, %956 ], [ %1172, %1122 ], [ %893, %1114 ]
  %1178 = phi float [ %674, %669 ], [ %894, %889 ], [ %959, %956 ], [ %1164, %1122 ], [ %894, %1114 ]
  %1179 = and i32 %367, 32
  %1180 = icmp ne i32 %1179, 0
  %1181 = and i1 %257, %1180
  br i1 %1181, label %1182, label %1224, !dx.controlflow.hints !95

; <label>:1182                                    ; preds = %1173
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1187 = fsub fast float %206, %1184
  %1188 = fadd fast float %1187, %1186
  %1189 = fsub fast float %207, %1185
  %1190 = fadd fast float %1189, %1186
  %1191 = extractvalue %dx.types.CBufRet.f32 %1183, 3
  %1192 = fmul fast float %1188, %1191
  %1193 = fmul fast float %1190, %1191
  %1194 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1195 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1196 = fsub fast float 1.000000e+00, %1194
  %1197 = fsub fast float 1.000000e+00, %1195
  %1198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %1196, float %1197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1198, 2
  %1202 = fmul fast float %1199, 0x3F847AE140000000
  %1203 = fmul fast float %1200, 0x3F847AE140000000
  %1204 = fmul fast float %1201, 0x3F847AE140000000
  %1205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %46, float %1196, float %1197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %1196, float %1197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = call float @dx.op.dot3.f32(i32 55, float %1202, float %1203, float %1204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1212 = fadd fast float %1206, %1199
  %1213 = fmul fast float %1212, 0x3F847AE140000000
  %1214 = fadd fast float %1207, %1200
  %1215 = fmul fast float %1214, 0x3F847AE140000000
  %1216 = fadd fast float %1208, %1201
  %1217 = fmul fast float %1216, 0x3F847AE140000000
  %1218 = fadd fast float %1211, %1178
  %1219 = fadd fast float %1202, %1174
  %1220 = fadd fast float %1203, %1175
  %1221 = fadd fast float %1204, %1176
  %1222 = fmul fast float %1210, %1211
  %1223 = fadd fast float %1222, %1177
  br label %1224

; <label>:1224                                    ; preds = %1182, %1173
  %1225 = phi float [ %1219, %1182 ], [ %1174, %1173 ]
  %1226 = phi float [ %1220, %1182 ], [ %1175, %1173 ]
  %1227 = phi float [ %1221, %1182 ], [ %1176, %1173 ]
  %1228 = phi float [ %1223, %1182 ], [ %1177, %1173 ]
  %1229 = phi float [ %1218, %1182 ], [ %1178, %1173 ]
  %1230 = phi float [ %1213, %1182 ], [ 0.000000e+00, %1173 ]
  %1231 = phi float [ %1215, %1182 ], [ 0.000000e+00, %1173 ]
  %1232 = phi float [ %1217, %1182 ], [ 0.000000e+00, %1173 ]
  %1233 = and i32 %367, 16
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %2026, label %1235, !dx.controlflow.hints !96

; <label>:1235                                    ; preds = %1224
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.CBufRet.f32 %1236, 2
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 3
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 3
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 3
  %1246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.i32 %1246, 0
  %1248 = icmp ne i32 %1247, 0
  %1249 = zext i1 %1248 to i32
  %1250 = extractvalue %dx.types.CBufRet.i32 %1246, 1
  %1251 = icmp ne i32 %1250, 0
  %1252 = zext i1 %1251 to i32
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1255 = bitcast float %1254 to i32
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1306, label %1257

; <label>:1257                                    ; preds = %1235
  br label %1258

; <label>:1258                                    ; preds = %1301, %1257
  %1259 = phi i32 [ %1302, %1301 ], [ 0, %1257 ]
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = bitcast float %1261 to i32
  %1263 = call i32 @dx.op.tertiary.i32(i32 49, i32 %365, i32 %1262, i32 %1259)  ; UMad(a,b,c)
  %1264 = shl i32 %1263, 2
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  br label %1267

; <label>:1267                                    ; preds = %1270, %1258
  %1268 = phi i32 [ %1266, %1258 ], [ %1275, %1270 ]
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1301, label %1270

; <label>:1270                                    ; preds = %1267
  %1271 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1268)  ; FirstbitLo(value)
  %1272 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1259, i32 %1271)  ; UMad(a,b,c)
  %1273 = and i32 %1271, 31
  %1274 = shl i32 1, %1273
  %1275 = xor i32 %1274, %1268
  %1276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1272, i32 0)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.ResRet.f32 %1276, 2
  %1280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1272, i32 16)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.ResRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.ResRet.f32 %1280, 2
  %1284 = fsub fast float %1277, %1281
  %1285 = fsub fast float %1278, %1282
  %1286 = fsub fast float %1279, %1283
  %1287 = fadd fast float %1281, %1277
  %1288 = fadd fast float %1282, %1278
  %1289 = fadd fast float %1283, %1279
  %1290 = fcmp fast ogt float %206, %1284
  %1291 = fcmp fast ogt float %207, %1285
  %1292 = fcmp fast ogt float %208, %1286
  %1293 = and i1 %1290, %1291
  %1294 = and i1 %1292, %1293
  %1295 = fcmp fast olt float %206, %1287
  %1296 = fcmp fast olt float %207, %1288
  %1297 = fcmp fast olt float %208, %1289
  %1298 = and i1 %1295, %1296
  %1299 = and i1 %1297, %1298
  %1300 = and i1 %1294, %1299
  br i1 %1300, label %1304, label %1267, !dx.controlflow.hints !97

; <label>:1301                                    ; preds = %1267
  %1302 = add i32 %1259, 1
  %1303 = icmp ult i32 %1302, %1262
  br i1 %1303, label %1258, label %1305, !llvm.loop !98

; <label>:1304                                    ; preds = %1270
  br label %1306

; <label>:1305                                    ; preds = %1301
  br label %1306

; <label>:1306                                    ; preds = %1305, %1304, %1235
  %1307 = phi i32 [ 255, %1235 ], [ %1272, %1304 ], [ 255, %1305 ]
  %1308 = icmp eq i32 %1307, 255
  br i1 %1308, label %1328, label %1309, !dx.controlflow.hints !100

; <label>:1309                                    ; preds = %1306
  %1310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 32)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.ResRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.ResRet.f32 %1310, 2
  %1314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 132)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 136)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 152)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1307, i32 156)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1307, i32 160)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = icmp ne i32 %1321, 0
  %1325 = zext i1 %1324 to i32
  %1326 = icmp ne i32 %1323, 0
  %1327 = zext i1 %1326 to i32
  br label %1328

; <label>:1328                                    ; preds = %1309, %1306
  %1329 = phi float [ %1311, %1309 ], [ %1237, %1306 ]
  %1330 = phi float [ %1312, %1309 ], [ %1238, %1306 ]
  %1331 = phi float [ %1313, %1309 ], [ %1239, %1306 ]
  %1332 = phi float [ %1315, %1309 ], [ %1241, %1306 ]
  %1333 = phi float [ %1317, %1309 ], [ %1243, %1306 ]
  %1334 = phi float [ %1319, %1309 ], [ %1245, %1306 ]
  %1335 = phi i32 [ %1325, %1309 ], [ %1249, %1306 ]
  %1336 = phi i32 [ %1327, %1309 ], [ %1252, %1306 ]
  %1337 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1338 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1339 = fsub fast float %206, %1337
  %1340 = fsub fast float %207, %1338
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 2
  %1343 = extractvalue %dx.types.CBufRet.f32 %1341, 3
  %1344 = fmul fast float %1339, %1342
  %1345 = fmul fast float %1340, %1343
  %1346 = call float @dx.op.binary.f32(i32 36, float %1344, float %1345)  ; FMin(a,b)
  %1347 = fcmp fast olt float %1346, 0.000000e+00
  %1348 = call float @dx.op.binary.f32(i32 35, float %1344, float %1345)  ; FMax(a,b)
  %1349 = fcmp fast ogt float %1348, 1.000000e+00
  %1350 = or i1 %1347, %1349
  %1351 = extractvalue %dx.types.CBufRet.f32 %1242, 2
  %1352 = fcmp fast olt float %208, %1351
  %1353 = or i1 %1350, %1352
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 3
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 0
  %1358 = fadd fast float %1357, %1355
  %1359 = fcmp fast ogt float %208, %1358
  %1360 = or i1 %1353, %1359
  br i1 %1360, label %1645, label %1361, !dx.controlflow.hints !101

; <label>:1361                                    ; preds = %1328
  %1362 = fsub fast float 1.000000e+00, %1345
  %1363 = extractvalue %dx.types.CBufRet.f32 %1356, 3
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 3
  %1366 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1367 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.CBufRet.f32 %1368, 2
  %1372 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  br i1 %1308, label %1388, label %1373, !dx.controlflow.hints !102

; <label>:1373                                    ; preds = %1361
  %1374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 48)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.ResRet.f32 %1374, 1
  %1377 = extractvalue %dx.types.ResRet.f32 %1374, 2
  %1378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 104)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 108)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 112)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 116)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 120)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  br label %1388

; <label>:1388                                    ; preds = %1373, %1361
  %1389 = phi float [ %1381, %1373 ], [ %1363, %1361 ]
  %1390 = phi float [ %1385, %1373 ], [ %1365, %1361 ]
  %1391 = phi float [ %1387, %1373 ], [ %1366, %1361 ]
  %1392 = phi float [ %1383, %1373 ], [ %1367, %1361 ]
  %1393 = phi float [ %1375, %1373 ], [ %1369, %1361 ]
  %1394 = phi float [ %1376, %1373 ], [ %1370, %1361 ]
  %1395 = phi float [ %1377, %1373 ], [ %1371, %1361 ]
  %1396 = phi float [ %1379, %1373 ], [ %1372, %1361 ]
  %1397 = fcmp fast oeq float %1389, 0.000000e+00
  br i1 %1397, label %1513, label %1398, !dx.controlflow.hints !103

; <label>:1398                                    ; preds = %1388
  %1399 = fcmp fast ogt float %1390, 0.000000e+00
  %1400 = fcmp fast oeq float %448, 0.000000e+00
  br i1 %1400, label %1405, label %1401, !dx.controlflow.hints !86

; <label>:1401                                    ; preds = %1398
  %1402 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1403 = fmul fast float %1402, %448
  %1404 = call float @dx.op.unary.f32(i32 23, float %1403)  ; Log(value)
  br label %1405

; <label>:1405                                    ; preds = %1401, %1398
  %1406 = phi float [ %1404, %1401 ], [ 0.000000e+00, %1398 ]
  br i1 %1400, label %1411, label %1407, !dx.controlflow.hints !86

; <label>:1407                                    ; preds = %1405
  %1408 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1409 = fmul fast float %1408, %448
  %1410 = call float @dx.op.unary.f32(i32 23, float %1409)  ; Log(value)
  br label %1411

; <label>:1411                                    ; preds = %1407, %1405
  %1412 = phi float [ %1410, %1407 ], [ 0.000000e+00, %1405 ]
  br i1 %1399, label %1413, label %1475, !dx.controlflow.hints !104

; <label>:1413                                    ; preds = %1411
  %1414 = fcmp fast ogt float %1391, 0.000000e+00
  br i1 %1414, label %1415, label %1425, !dx.controlflow.hints !105

; <label>:1415                                    ; preds = %1413
  %1416 = fmul fast float %1391, %1344
  %1417 = fmul fast float %1391, %1362
  %1418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %43, float %1416, float %1417, float undef, float undef, i32 0, i32 0, i32 undef, float %1412)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = fmul fast float %1419, 2.000000e+00
  %1422 = fmul fast float %1420, 2.000000e+00
  %1423 = fadd fast float %1421, -1.000000e+00
  %1424 = fadd fast float %1422, -1.000000e+00
  br label %1446

; <label>:1425                                    ; preds = %1413
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 3
  %1428 = fmul fast float %1427, %1344
  %1429 = fmul fast float %1427, %1362
  %1430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %1428, float %1429, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.ResRet.f32 %1430, 2
  %1434 = fmul fast float %1431, 2.000000e+00
  %1435 = fmul fast float %1432, 2.000000e+00
  %1436 = fmul fast float %1433, 2.000000e+00
  %1437 = fadd fast float %1434, -1.000000e+00
  %1438 = fadd fast float %1435, -1.000000e+00
  %1439 = fadd fast float %1436, -1.000000e+00
  %1440 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1441 = fmul fast float %1437, %1440
  %1442 = fmul fast float %1438, %1440
  %1443 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1444 = fmul fast float %1443, 5.000000e-01
  %1445 = fmul fast float %1444, %1439
  br label %1446

; <label>:1446                                    ; preds = %1425, %1415
  %1447 = phi float [ %1423, %1415 ], [ %1441, %1425 ]
  %1448 = phi float [ %1424, %1415 ], [ %1442, %1425 ]
  %1449 = phi float [ 0.000000e+00, %1415 ], [ %1445, %1425 ]
  %1450 = fmul fast float %1389, %206
  %1451 = fmul fast float %1389, %207
  %1452 = fmul fast float %1389, %208
  %1453 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1454 = fmul fast float %1453, %1447
  %1455 = fmul fast float %1453, %1448
  %1456 = fmul fast float %1453, %1449
  %1457 = fsub fast float %1450, %1454
  %1458 = fsub fast float %1451, %1455
  %1459 = fsub fast float %1452, %1456
  %1460 = fadd fast float %1390, 5.000000e-01
  %1461 = call float @dx.op.unary.f32(i32 22, float %1460)  ; Frc(value)
  %1462 = fmul fast float %1461, %1447
  %1463 = fmul fast float %1461, %1448
  %1464 = fmul fast float %1461, %1449
  %1465 = fadd fast float %1450, -5.000000e-01
  %1466 = fsub fast float %1465, %1462
  %1467 = fadd fast float %1451, -5.000000e-01
  %1468 = fsub fast float %1467, %1463
  %1469 = fadd fast float %1452, -5.000000e-01
  %1470 = fsub fast float %1469, %1464
  %1471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %43, float %1466, float %1468, float %1470, float undef, i32 0, i32 0, i32 0, float %1406)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = fadd fast float %1472, %1392
  br label %1485

; <label>:1475                                    ; preds = %1411
  %1476 = fmul fast float %1396, %1393
  %1477 = fmul fast float %1396, %1394
  %1478 = fmul fast float %1396, %1395
  %1479 = fsub fast float %206, %1476
  %1480 = fsub fast float %207, %1477
  %1481 = fsub fast float %208, %1478
  %1482 = fmul fast float %1479, %1389
  %1483 = fmul fast float %1480, %1389
  %1484 = fmul fast float %1481, %1389
  br label %1485

; <label>:1485                                    ; preds = %1475, %1446
  %1486 = phi float [ %1457, %1446 ], [ %1482, %1475 ]
  %1487 = phi float [ %1458, %1446 ], [ %1483, %1475 ]
  %1488 = phi float [ %1459, %1446 ], [ %1484, %1475 ]
  %1489 = phi float [ %1474, %1446 ], [ 0.000000e+00, %1475 ]
  %1490 = phi float [ %1473, %1446 ], [ 0.000000e+00, %1475 ]
  %1491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %43, float %1486, float %1487, float %1488, float undef, i32 0, i32 0, i32 0, float %1406)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = extractvalue %dx.types.ResRet.f32 %1491, 1
  %1494 = fadd fast float %1492, %1392
  br i1 %1399, label %1495, label %1506, !dx.controlflow.hints !106

; <label>:1495                                    ; preds = %1485
  %1496 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1497 = fmul fast float %1496, 2.000000e+00
  %1498 = fadd fast float %1497, -1.000000e+00
  %1499 = call float @dx.op.unary.f32(i32 6, float %1498)  ; FAbs(value)
  %1500 = fsub fast float %1489, %1494
  %1501 = fmul fast float %1499, %1500
  %1502 = fadd fast float %1501, %1494
  %1503 = fsub fast float %1490, %1493
  %1504 = fmul fast float %1499, %1503
  %1505 = fadd fast float %1504, %1493
  br label %1506

; <label>:1506                                    ; preds = %1495, %1485
  %1507 = phi float [ %1502, %1495 ], [ %1494, %1485 ]
  %1508 = phi float [ %1505, %1495 ], [ %1493, %1485 ]
  %1509 = fsub fast float %1507, %1508
  %1510 = fsub fast float 1.000000e+00, %1508
  %1511 = fdiv fast float %1509, %1510
  %1512 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  br label %1513

; <label>:1513                                    ; preds = %1506, %1388
  %1514 = phi float [ %1512, %1506 ], [ 1.000000e+00, %1388 ]
  %1515 = fcmp fast oeq float %448, 0.000000e+00
  br i1 %1515, label %1520, label %1516, !dx.controlflow.hints !86

; <label>:1516                                    ; preds = %1513
  %1517 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1518 = fmul fast float %1517, %448
  %1519 = call float @dx.op.unary.f32(i32 23, float %1518)  ; Log(value)
  br label %1520

; <label>:1520                                    ; preds = %1516, %1513
  %1521 = phi float [ %1519, %1516 ], [ 0.000000e+00, %1513 ]
  %1522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %44, float %1344, float %1362, float undef, float undef, i32 0, i32 0, i32 undef, float %1521)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1523 = extractvalue %dx.types.ResRet.f32 %1522, 0
  %1524 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %46, float %1344, float %1362, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.ResRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.ResRet.f32 %1524, 2
  %1528 = extractvalue %dx.types.ResRet.f32 %1524, 3
  %1529 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %46, float %1344, float %1362, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.ResRet.f32 %1529, 1
  %1532 = extractvalue %dx.types.ResRet.f32 %1529, 2
  %1533 = extractvalue %dx.types.ResRet.f32 %1529, 3
  %1534 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %46, float %1344, float %1362, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.ResRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.ResRet.f32 %1534, 2
  %1538 = extractvalue %dx.types.ResRet.f32 %1534, 3
  %1539 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %46, float %1344, float %1362, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.ResRet.f32 %1539, 1
  %1542 = extractvalue %dx.types.ResRet.f32 %1539, 2
  %1543 = extractvalue %dx.types.ResRet.f32 %1539, 3
  %1544 = fadd fast float %1525, %1526
  %1545 = fadd fast float %1544, %1527
  %1546 = fadd fast float %1545, %1528
  %1547 = fmul fast float %1530, %1525
  %1548 = fmul fast float %1531, %1526
  %1549 = fadd fast float %1547, %1548
  %1550 = fmul fast float %1532, %1527
  %1551 = fadd fast float %1549, %1550
  %1552 = fmul fast float %1533, %1528
  %1553 = fadd fast float %1551, %1552
  %1554 = fmul fast float %1535, %1525
  %1555 = fmul fast float %1536, %1526
  %1556 = fadd fast float %1554, %1555
  %1557 = fmul fast float %1537, %1527
  %1558 = fadd fast float %1556, %1557
  %1559 = fmul fast float %1538, %1528
  %1560 = fadd fast float %1558, %1559
  %1561 = fmul fast float %1540, %1525
  %1562 = fmul fast float %1541, %1526
  %1563 = fadd fast float %1561, %1562
  %1564 = fmul fast float %1542, %1527
  %1565 = fadd fast float %1563, %1564
  %1566 = fmul fast float %1543, %1528
  %1567 = fadd fast float %1565, %1566
  %1568 = fcmp fast ogt float %1546, 0.000000e+00
  %1569 = fdiv fast float %1553, %1546
  %1570 = select i1 %1568, float %1569, float 0.000000e+00
  %1571 = fdiv fast float %1560, %1546
  %1572 = select i1 %1568, float %1571, float 0.000000e+00
  %1573 = fdiv fast float %1567, %1546
  %1574 = select i1 %1568, float %1573, float 0.000000e+00
  %1575 = fcmp fast ogt float %208, %1572
  %1576 = fcmp fast olt float %208, %1570
  %1577 = and i1 %1576, %1575
  br i1 %1577, label %1578, label %1645, !dx.controlflow.hints !107

; <label>:1578                                    ; preds = %1520
  %1579 = extractvalue %dx.types.CBufRet.f32 %1354, 0
  %1580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.f32 %1580, 2
  %1582 = extractvalue %dx.types.CBufRet.f32 %1580, 3
  br i1 %1308, label %1593, label %1583, !dx.controlflow.hints !108

; <label>:1583                                    ; preds = %1578
  %1584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 60)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  %1586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 64)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.ResRet.f32 %1586, 1
  %1589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 72)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.f32 %1589, 0
  %1591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 96)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  br label %1593

; <label>:1593                                    ; preds = %1583, %1578
  %1594 = phi float [ %1585, %1583 ], [ %1357, %1578 ]
  %1595 = phi float [ %1590, %1583 ], [ %1355, %1578 ]
  %1596 = phi float [ %1592, %1583 ], [ %1579, %1578 ]
  %1597 = phi float [ %1587, %1583 ], [ %1581, %1578 ]
  %1598 = phi float [ %1588, %1583 ], [ %1582, %1578 ]
  %1599 = call float @dx.op.binary.f32(i32 35, float %1523, float 0.000000e+00)  ; FMax(a,b)
  %1600 = call float @dx.op.binary.f32(i32 36, float %1599, float 1.000000e+00)  ; FMin(a,b)
  %1601 = call float @dx.op.unary.f32(i32 24, float %1600)  ; Sqrt(value)
  %1602 = call float @dx.op.binary.f32(i32 35, float %1574, float 0x3F847AE140000000)  ; FMax(a,b)
  %1603 = fsub fast float %1570, %208
  %1604 = fsub fast float %208, %1572
  %1605 = call float @dx.op.binary.f32(i32 36, float %1604, float %1603)  ; FMin(a,b)
  %1606 = fdiv fast float %1605, %1602
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = fsub fast float %208, %1595
  %1609 = fdiv fast float %1608, %1594
  %1610 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = fmul float %1607, %1611
  %1613 = fmul float %1612, %1612
  %1614 = fmul fast float %1601, %1514
  %1615 = fmul fast float %1614, %1613
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 2
  %1618 = extractvalue %dx.types.CBufRet.f32 %1616, 1
  %1619 = fsub fast float %1615, %1618
  %1620 = fsub fast float %1617, %1618
  %1621 = fdiv fast float %1619, %1620
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1623 = fmul fast float %1622, %1596
  %1624 = fcmp fast ogt float %1598, 0.000000e+00
  br i1 %1624, label %1625, label %1645, !dx.controlflow.hints !109

; <label>:1625                                    ; preds = %1593
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1629 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1630 = fsub fast float %206, %1627
  %1631 = fsub fast float %207, %1628
  %1632 = fsub fast float %208, %1629
  %1633 = fmul fast float %1630, %1630
  %1634 = fmul fast float %1631, %1631
  %1635 = fadd fast float %1633, %1634
  %1636 = fmul fast float %1632, %1632
  %1637 = fadd fast float %1635, %1636
  %1638 = call float @dx.op.unary.f32(i32 24, float %1637)  ; Sqrt(value)
  %1639 = fsub fast float %1638, %1597
  %1640 = fsub fast float %1598, %1597
  %1641 = fdiv fast float %1639, %1640
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1643 = fmul fast float %1642, %1642
  %1644 = fmul fast float %1643, %1623
  br label %1645

; <label>:1645                                    ; preds = %1625, %1593, %1520, %1328
  %1646 = phi float [ 0.000000e+00, %1328 ], [ 0.000000e+00, %1520 ], [ %1644, %1625 ], [ %1623, %1593 ]
  %1647 = fcmp fast oeq float %1646, 0.000000e+00
  br i1 %1647, label %2026, label %1648, !dx.controlflow.hints !110

; <label>:1648                                    ; preds = %1645
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 0
  %1651 = extractvalue %dx.types.CBufRet.f32 %1649, 1
  %1652 = extractvalue %dx.types.CBufRet.f32 %1649, 2
  %1653 = fsub fast float %206, %1650
  %1654 = fadd fast float %1653, %1652
  %1655 = fsub fast float %207, %1651
  %1656 = fadd fast float %1655, %1652
  %1657 = extractvalue %dx.types.CBufRet.f32 %1649, 3
  %1658 = fmul fast float %1654, %1657
  %1659 = fmul fast float %1656, %1657
  %1660 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1661 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1662 = fsub fast float 1.000000e+00, %1660
  %1663 = fsub fast float 1.000000e+00, %1661
  %1664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %46, float %1662, float %1663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 0
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 2
  %1668 = fmul fast float %1667, %1665
  %1669 = extractvalue %dx.types.CBufRet.f32 %1666, 3
  %1670 = fadd fast float %1669, %1668
  %1671 = fcmp fast ogt float %1665, 0.000000e+00
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = and i32 %1673, 32768
  %1675 = icmp ne i32 %1674, 0
  %1676 = and i1 %1671, %1675
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 3
  %1679 = fadd fast float %1678, %1670
  %1680 = fcmp fast ole float %208, %1679
  %1681 = and i1 %1676, %1680
  %1682 = xor i1 %1681, true
  %1683 = icmp ne i32 %1335, 0
  %1684 = and i1 %1683, %1682
  %1685 = icmp ne i32 %1336, 0
  %1686 = and i1 %1685, %1681
  %1687 = or i1 %1684, %1686
  br i1 %1687, label %2026, label %1688, !dx.controlflow.hints !111

; <label>:1688                                    ; preds = %1648
  %1689 = fsub fast float %208, %1670
  %1690 = call float @dx.op.unary.f32(i32 6, float %1689)  ; FAbs(value)
  %1691 = fdiv fast float %1690, %1334
  %1692 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1693 = fmul fast float %1692, %1646
  %1694 = fcmp fast une float %1332, 0.000000e+00
  br i1 %1694, label %1695, label %2014, !dx.controlflow.hints !112

; <label>:1695                                    ; preds = %1688
  %1696 = fmul fast float %1332, %130
  %1697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.CBufRet.f32 %1697, 1
  %1700 = extractvalue %dx.types.CBufRet.f32 %1697, 2
  %1701 = fmul fast float %1698, %1696
  %1702 = fmul fast float %1699, %1696
  %1703 = fmul fast float %1700, %1696
  %1704 = fadd fast float %1701, %206
  %1705 = fadd fast float %1702, %207
  %1706 = fadd fast float %1703, %208
  %1707 = fmul fast float %1332, 2.000000e+00
  %1708 = call float @dx.op.binary.f32(i32 35, float %448, float %1707)  ; FMax(a,b)
  %1709 = fsub fast float %1704, %1337
  %1710 = fsub fast float %1705, %1338
  %1711 = fmul fast float %1709, %1342
  %1712 = fmul fast float %1710, %1343
  %1713 = call float @dx.op.binary.f32(i32 36, float %1711, float %1712)  ; FMin(a,b)
  %1714 = fcmp fast olt float %1713, 0.000000e+00
  %1715 = call float @dx.op.binary.f32(i32 35, float %1711, float %1712)  ; FMax(a,b)
  %1716 = fcmp fast ogt float %1715, 1.000000e+00
  %1717 = or i1 %1714, %1716
  %1718 = fcmp fast olt float %1706, %1351
  %1719 = or i1 %1717, %1718
  %1720 = fcmp fast ogt float %1706, %1358
  %1721 = or i1 %1719, %1720
  br i1 %1721, label %2006, label %1722, !dx.controlflow.hints !101

; <label>:1722                                    ; preds = %1695
  %1723 = fsub fast float 1.000000e+00, %1712
  %1724 = extractvalue %dx.types.CBufRet.f32 %1356, 3
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 3
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1728 = extractvalue %dx.types.CBufRet.f32 %1725, 1
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.CBufRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.CBufRet.f32 %1729, 2
  %1733 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  br i1 %1308, label %1749, label %1734, !dx.controlflow.hints !102

; <label>:1734                                    ; preds = %1722
  %1735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 48)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.ResRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.ResRet.f32 %1735, 2
  %1739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 104)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 108)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 112)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 0
  %1745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 116)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.f32 %1745, 0
  %1747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 120)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.f32 %1747, 0
  br label %1749

; <label>:1749                                    ; preds = %1734, %1722
  %1750 = phi float [ %1742, %1734 ], [ %1724, %1722 ]
  %1751 = phi float [ %1746, %1734 ], [ %1726, %1722 ]
  %1752 = phi float [ %1748, %1734 ], [ %1727, %1722 ]
  %1753 = phi float [ %1744, %1734 ], [ %1728, %1722 ]
  %1754 = phi float [ %1736, %1734 ], [ %1730, %1722 ]
  %1755 = phi float [ %1737, %1734 ], [ %1731, %1722 ]
  %1756 = phi float [ %1738, %1734 ], [ %1732, %1722 ]
  %1757 = phi float [ %1740, %1734 ], [ %1733, %1722 ]
  %1758 = fcmp fast oeq float %1750, 0.000000e+00
  br i1 %1758, label %1874, label %1759, !dx.controlflow.hints !103

; <label>:1759                                    ; preds = %1749
  %1760 = fcmp fast ogt float %1751, 0.000000e+00
  %1761 = fcmp fast oeq float %1708, 0.000000e+00
  br i1 %1761, label %1766, label %1762, !dx.controlflow.hints !86

; <label>:1762                                    ; preds = %1759
  %1763 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1764 = fmul fast float %1763, %1708
  %1765 = call float @dx.op.unary.f32(i32 23, float %1764)  ; Log(value)
  br label %1766

; <label>:1766                                    ; preds = %1762, %1759
  %1767 = phi float [ %1765, %1762 ], [ 0.000000e+00, %1759 ]
  br i1 %1761, label %1772, label %1768, !dx.controlflow.hints !86

; <label>:1768                                    ; preds = %1766
  %1769 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1770 = fmul fast float %1769, %1708
  %1771 = call float @dx.op.unary.f32(i32 23, float %1770)  ; Log(value)
  br label %1772

; <label>:1772                                    ; preds = %1768, %1766
  %1773 = phi float [ %1771, %1768 ], [ 0.000000e+00, %1766 ]
  br i1 %1760, label %1774, label %1836, !dx.controlflow.hints !104

; <label>:1774                                    ; preds = %1772
  %1775 = fcmp fast ogt float %1752, 0.000000e+00
  br i1 %1775, label %1776, label %1786, !dx.controlflow.hints !105

; <label>:1776                                    ; preds = %1774
  %1777 = fmul fast float %1752, %1711
  %1778 = fmul fast float %1752, %1723
  %1779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %43, float %1777, float %1778, float undef, float undef, i32 0, i32 0, i32 undef, float %1773)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.ResRet.f32 %1779, 1
  %1782 = fmul fast float %1780, 2.000000e+00
  %1783 = fmul fast float %1781, 2.000000e+00
  %1784 = fadd fast float %1782, -1.000000e+00
  %1785 = fadd fast float %1783, -1.000000e+00
  br label %1807

; <label>:1786                                    ; preds = %1774
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1789 = fmul fast float %1788, %1711
  %1790 = fmul fast float %1788, %1723
  %1791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %1789, float %1790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1792 = extractvalue %dx.types.ResRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.ResRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.ResRet.f32 %1791, 2
  %1795 = fmul fast float %1792, 2.000000e+00
  %1796 = fmul fast float %1793, 2.000000e+00
  %1797 = fmul fast float %1794, 2.000000e+00
  %1798 = fadd fast float %1795, -1.000000e+00
  %1799 = fadd fast float %1796, -1.000000e+00
  %1800 = fadd fast float %1797, -1.000000e+00
  %1801 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1802 = fmul fast float %1798, %1801
  %1803 = fmul fast float %1799, %1801
  %1804 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1805 = fmul fast float %1804, 5.000000e-01
  %1806 = fmul fast float %1805, %1800
  br label %1807

; <label>:1807                                    ; preds = %1786, %1776
  %1808 = phi float [ %1784, %1776 ], [ %1802, %1786 ]
  %1809 = phi float [ %1785, %1776 ], [ %1803, %1786 ]
  %1810 = phi float [ 0.000000e+00, %1776 ], [ %1806, %1786 ]
  %1811 = fmul fast float %1750, %1704
  %1812 = fmul fast float %1750, %1705
  %1813 = fmul fast float %1750, %1706
  %1814 = call float @dx.op.unary.f32(i32 22, float %1751)  ; Frc(value)
  %1815 = fmul fast float %1814, %1808
  %1816 = fmul fast float %1814, %1809
  %1817 = fmul fast float %1814, %1810
  %1818 = fsub fast float %1811, %1815
  %1819 = fsub fast float %1812, %1816
  %1820 = fsub fast float %1813, %1817
  %1821 = fadd fast float %1751, 5.000000e-01
  %1822 = call float @dx.op.unary.f32(i32 22, float %1821)  ; Frc(value)
  %1823 = fmul fast float %1822, %1808
  %1824 = fmul fast float %1822, %1809
  %1825 = fmul fast float %1822, %1810
  %1826 = fadd fast float %1811, -5.000000e-01
  %1827 = fsub fast float %1826, %1823
  %1828 = fadd fast float %1812, -5.000000e-01
  %1829 = fsub fast float %1828, %1824
  %1830 = fadd fast float %1813, -5.000000e-01
  %1831 = fsub fast float %1830, %1825
  %1832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %43, float %1827, float %1829, float %1831, float undef, i32 0, i32 0, i32 0, float %1767)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.ResRet.f32 %1832, 1
  %1835 = fadd fast float %1833, %1753
  br label %1846

; <label>:1836                                    ; preds = %1772
  %1837 = fmul fast float %1757, %1754
  %1838 = fmul fast float %1757, %1755
  %1839 = fmul fast float %1757, %1756
  %1840 = fsub fast float %1704, %1837
  %1841 = fsub fast float %1705, %1838
  %1842 = fsub fast float %1706, %1839
  %1843 = fmul fast float %1840, %1750
  %1844 = fmul fast float %1841, %1750
  %1845 = fmul fast float %1842, %1750
  br label %1846

; <label>:1846                                    ; preds = %1836, %1807
  %1847 = phi float [ %1818, %1807 ], [ %1843, %1836 ]
  %1848 = phi float [ %1819, %1807 ], [ %1844, %1836 ]
  %1849 = phi float [ %1820, %1807 ], [ %1845, %1836 ]
  %1850 = phi float [ %1835, %1807 ], [ 0.000000e+00, %1836 ]
  %1851 = phi float [ %1834, %1807 ], [ 0.000000e+00, %1836 ]
  %1852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %43, float %1847, float %1848, float %1849, float undef, i32 0, i32 0, i32 0, float %1767)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1853 = extractvalue %dx.types.ResRet.f32 %1852, 0
  %1854 = extractvalue %dx.types.ResRet.f32 %1852, 1
  %1855 = fadd fast float %1853, %1753
  br i1 %1760, label %1856, label %1867, !dx.controlflow.hints !106

; <label>:1856                                    ; preds = %1846
  %1857 = call float @dx.op.unary.f32(i32 22, float %1751)  ; Frc(value)
  %1858 = fmul fast float %1857, 2.000000e+00
  %1859 = fadd fast float %1858, -1.000000e+00
  %1860 = call float @dx.op.unary.f32(i32 6, float %1859)  ; FAbs(value)
  %1861 = fsub fast float %1850, %1855
  %1862 = fmul fast float %1860, %1861
  %1863 = fadd fast float %1862, %1855
  %1864 = fsub fast float %1851, %1854
  %1865 = fmul fast float %1860, %1864
  %1866 = fadd fast float %1865, %1854
  br label %1867

; <label>:1867                                    ; preds = %1856, %1846
  %1868 = phi float [ %1863, %1856 ], [ %1855, %1846 ]
  %1869 = phi float [ %1866, %1856 ], [ %1854, %1846 ]
  %1870 = fsub fast float %1868, %1869
  %1871 = fsub fast float 1.000000e+00, %1869
  %1872 = fdiv fast float %1870, %1871
  %1873 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  br label %1874

; <label>:1874                                    ; preds = %1867, %1749
  %1875 = phi float [ %1873, %1867 ], [ 1.000000e+00, %1749 ]
  %1876 = fcmp fast oeq float %1708, 0.000000e+00
  br i1 %1876, label %1881, label %1877, !dx.controlflow.hints !86

; <label>:1877                                    ; preds = %1874
  %1878 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1879 = fmul fast float %1878, %1708
  %1880 = call float @dx.op.unary.f32(i32 23, float %1879)  ; Log(value)
  br label %1881

; <label>:1881                                    ; preds = %1877, %1874
  %1882 = phi float [ %1880, %1877 ], [ 0.000000e+00, %1874 ]
  %1883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %44, float %1711, float %1723, float undef, float undef, i32 0, i32 0, i32 undef, float %1882)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %46, float %1711, float %1723, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.ResRet.f32 %1885, 1
  %1888 = extractvalue %dx.types.ResRet.f32 %1885, 2
  %1889 = extractvalue %dx.types.ResRet.f32 %1885, 3
  %1890 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %46, float %1711, float %1723, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.ResRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.ResRet.f32 %1890, 2
  %1894 = extractvalue %dx.types.ResRet.f32 %1890, 3
  %1895 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %46, float %1711, float %1723, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.ResRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.ResRet.f32 %1895, 2
  %1899 = extractvalue %dx.types.ResRet.f32 %1895, 3
  %1900 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %46, float %1711, float %1723, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1900, 2
  %1904 = extractvalue %dx.types.ResRet.f32 %1900, 3
  %1905 = fadd fast float %1886, %1887
  %1906 = fadd fast float %1905, %1888
  %1907 = fadd fast float %1906, %1889
  %1908 = fmul fast float %1891, %1886
  %1909 = fmul fast float %1892, %1887
  %1910 = fadd fast float %1908, %1909
  %1911 = fmul fast float %1893, %1888
  %1912 = fadd fast float %1910, %1911
  %1913 = fmul fast float %1894, %1889
  %1914 = fadd fast float %1912, %1913
  %1915 = fmul fast float %1896, %1886
  %1916 = fmul fast float %1897, %1887
  %1917 = fadd fast float %1915, %1916
  %1918 = fmul fast float %1898, %1888
  %1919 = fadd fast float %1917, %1918
  %1920 = fmul fast float %1899, %1889
  %1921 = fadd fast float %1919, %1920
  %1922 = fmul fast float %1901, %1886
  %1923 = fmul fast float %1902, %1887
  %1924 = fadd fast float %1922, %1923
  %1925 = fmul fast float %1903, %1888
  %1926 = fadd fast float %1924, %1925
  %1927 = fmul fast float %1904, %1889
  %1928 = fadd fast float %1926, %1927
  %1929 = fcmp fast ogt float %1907, 0.000000e+00
  %1930 = fdiv fast float %1914, %1907
  %1931 = select i1 %1929, float %1930, float 0.000000e+00
  %1932 = fdiv fast float %1921, %1907
  %1933 = select i1 %1929, float %1932, float 0.000000e+00
  %1934 = fdiv fast float %1928, %1907
  %1935 = select i1 %1929, float %1934, float 0.000000e+00
  %1936 = fcmp fast ogt float %1706, %1933
  %1937 = fcmp fast olt float %1706, %1931
  %1938 = and i1 %1937, %1936
  br i1 %1938, label %1939, label %2006, !dx.controlflow.hints !107

; <label>:1939                                    ; preds = %1881
  %1940 = extractvalue %dx.types.CBufRet.f32 %1354, 0
  %1941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1942 = extractvalue %dx.types.CBufRet.f32 %1941, 2
  %1943 = extractvalue %dx.types.CBufRet.f32 %1941, 3
  br i1 %1308, label %1954, label %1944, !dx.controlflow.hints !108

; <label>:1944                                    ; preds = %1939
  %1945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 60)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.f32 %1945, 0
  %1947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 64)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.ResRet.f32 %1947, 1
  %1950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 72)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.f32 %1950, 0
  %1952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1307, i32 96)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  br label %1954

; <label>:1954                                    ; preds = %1944, %1939
  %1955 = phi float [ %1946, %1944 ], [ %1357, %1939 ]
  %1956 = phi float [ %1951, %1944 ], [ %1355, %1939 ]
  %1957 = phi float [ %1953, %1944 ], [ %1940, %1939 ]
  %1958 = phi float [ %1948, %1944 ], [ %1942, %1939 ]
  %1959 = phi float [ %1949, %1944 ], [ %1943, %1939 ]
  %1960 = call float @dx.op.binary.f32(i32 35, float %1884, float 0.000000e+00)  ; FMax(a,b)
  %1961 = call float @dx.op.binary.f32(i32 36, float %1960, float 1.000000e+00)  ; FMin(a,b)
  %1962 = call float @dx.op.unary.f32(i32 24, float %1961)  ; Sqrt(value)
  %1963 = call float @dx.op.binary.f32(i32 35, float %1935, float 0x3F847AE140000000)  ; FMax(a,b)
  %1964 = fsub fast float %1931, %1706
  %1965 = fsub fast float %1706, %1933
  %1966 = call float @dx.op.binary.f32(i32 36, float %1965, float %1964)  ; FMin(a,b)
  %1967 = fdiv fast float %1966, %1963
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fsub fast float %1706, %1956
  %1970 = fdiv fast float %1969, %1955
  %1971 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1972 = fsub fast float 1.000000e+00, %1971
  %1973 = fmul float %1968, %1972
  %1974 = fmul float %1973, %1973
  %1975 = fmul fast float %1962, %1875
  %1976 = fmul fast float %1975, %1974
  %1977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1978 = extractvalue %dx.types.CBufRet.f32 %1977, 2
  %1979 = extractvalue %dx.types.CBufRet.f32 %1977, 1
  %1980 = fsub fast float %1976, %1979
  %1981 = fsub fast float %1978, %1979
  %1982 = fdiv fast float %1980, %1981
  %1983 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  %1984 = fmul fast float %1983, %1957
  %1985 = fcmp fast ogt float %1959, 0.000000e+00
  br i1 %1985, label %1986, label %2006, !dx.controlflow.hints !109

; <label>:1986                                    ; preds = %1954
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.CBufRet.f32 %1987, 1
  %1990 = extractvalue %dx.types.CBufRet.f32 %1987, 2
  %1991 = fsub fast float %1704, %1988
  %1992 = fsub fast float %1705, %1989
  %1993 = fsub fast float %1706, %1990
  %1994 = fmul fast float %1991, %1991
  %1995 = fmul fast float %1992, %1992
  %1996 = fadd fast float %1994, %1995
  %1997 = fmul fast float %1993, %1993
  %1998 = fadd fast float %1996, %1997
  %1999 = call float @dx.op.unary.f32(i32 24, float %1998)  ; Sqrt(value)
  %2000 = fsub fast float %1999, %1958
  %2001 = fsub fast float %1959, %1958
  %2002 = fdiv fast float %2000, %2001
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = fmul fast float %2003, %2003
  %2005 = fmul fast float %2004, %1984
  br label %2006

; <label>:2006                                    ; preds = %1986, %1954, %1881, %1695
  %2007 = phi float [ 0.000000e+00, %1695 ], [ 0.000000e+00, %1881 ], [ %2005, %1986 ], [ %1984, %1954 ]
  %2008 = fsub fast float %1693, %2007
  %2009 = fdiv fast float %2008, %1693
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2011 = fsub fast float 1.000000e+00, %1333
  %2012 = fmul fast float %2010, %2011
  %2013 = fadd fast float %2012, %1333
  br label %2014

; <label>:2014                                    ; preds = %2006, %1688
  %2015 = phi float [ %2013, %2006 ], [ 1.000000e+00, %1688 ]
  %2016 = fadd fast float %1693, %1229
  %2017 = fmul fast float %1693, %1329
  %2018 = fmul fast float %2017, %2015
  %2019 = fmul fast float %1693, %1330
  %2020 = fmul fast float %2019, %2015
  %2021 = fmul fast float %1693, %1331
  %2022 = fmul fast float %2021, %2015
  %2023 = fadd fast float %2018, %1225
  %2024 = fadd fast float %2020, %1226
  %2025 = fadd fast float %2022, %1227
  br label %2026

; <label>:2026                                    ; preds = %2014, %1648, %1645, %1224
  %2027 = phi float [ %1225, %1224 ], [ %1225, %1645 ], [ %1225, %1648 ], [ %2023, %2014 ]
  %2028 = phi float [ %1226, %1224 ], [ %1226, %1645 ], [ %1226, %1648 ], [ %2024, %2014 ]
  %2029 = phi float [ %1227, %1224 ], [ %1227, %1645 ], [ %1227, %1648 ], [ %2025, %2014 ]
  %2030 = phi float [ %1229, %1224 ], [ %1229, %1645 ], [ %1229, %1648 ], [ %2016, %2014 ]
  %2031 = and i32 %367, 4
  %2032 = icmp eq i32 %2031, 0
  br i1 %2032, label %2203, label %2033, !dx.controlflow.hints !113

; <label>:2033                                    ; preds = %2026
  %2034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.i32 %2034, 1
  %2036 = icmp eq i32 %2035, 0
  br i1 %2036, label %2203, label %2037

; <label>:2037                                    ; preds = %2033
  br label %2038

; <label>:2038                                    ; preds = %2194, %2037
  %2039 = phi i32 [ %2200, %2194 ], [ 0, %2037 ]
  %2040 = phi float [ %2195, %2194 ], [ %2027, %2037 ]
  %2041 = phi float [ %2196, %2194 ], [ %2028, %2037 ]
  %2042 = phi float [ %2197, %2194 ], [ %2029, %2037 ]
  %2043 = phi float [ %2198, %2194 ], [ %1228, %2037 ]
  %2044 = phi float [ %2199, %2194 ], [ %2030, %2037 ]
  %2045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.i32 %2045, 1
  %2047 = call i32 @dx.op.tertiary.i32(i32 49, i32 %365, i32 %2046, i32 %2039)  ; UMad(a,b,c)
  %2048 = shl i32 %2047, 2
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %2194, label %2052

; <label>:2052                                    ; preds = %2038
  br label %2053

; <label>:2053                                    ; preds = %2180, %2052
  %2054 = phi i32 [ %2064, %2180 ], [ %2050, %2052 ]
  %2055 = phi float [ %2186, %2180 ], [ %2040, %2052 ]
  %2056 = phi float [ %2187, %2180 ], [ %2041, %2052 ]
  %2057 = phi float [ %2188, %2180 ], [ %2042, %2052 ]
  %2058 = phi float [ %2190, %2180 ], [ %2043, %2052 ]
  %2059 = phi float [ %2191, %2180 ], [ %2044, %2052 ]
  %2060 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2054)  ; FirstbitLo(value)
  %2061 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %2039, i32 %2060)  ; UMad(a,b,c)
  %2062 = and i32 %2060, 31
  %2063 = shl i32 1, %2062
  %2064 = xor i32 %2063, %2054
  %2065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2061, i32 0)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2061, i32 4)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.f32 %2067, 0
  %2069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2061, i32 16)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.ResRet.f32 %2069, 1
  %2072 = extractvalue %dx.types.ResRet.f32 %2069, 2
  %2073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2061, i32 28)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2061, i32 32)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  %2077 = extractvalue %dx.types.ResRet.f32 %2075, 1
  %2078 = extractvalue %dx.types.ResRet.f32 %2075, 2
  %2079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2061, i32 44)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.f32 %2079, 0
  %2081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2061, i32 48)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  %2083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2061, i32 52)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2061, i32 56)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.f32 %2085, 0
  %2087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2061, i32 64)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.ResRet.f32 %2087, 1
  %2090 = extractvalue %dx.types.ResRet.f32 %2087, 2
  %2091 = mul i32 %2061, 60
  %2092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.ResRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.ResRet.f32 %2092, 2
  %2096 = add i32 %2091, 12
  %2097 = add i32 %2091, 48
  %2098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.f32 %2098, 2
  %2100 = fsub fast float %206, %2093
  %2101 = fsub fast float %207, %2094
  %2102 = fsub fast float %208, %2095
  %2103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.ResRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.ResRet.f32 %2103, 2
  %2107 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %2108 = add i32 %2091, 24
  %2109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.ResRet.f32 %2109, 1
  %2112 = extractvalue %dx.types.ResRet.f32 %2109, 2
  %2113 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %2114 = add i32 %2091, 36
  %2115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.ResRet.f32 %2115, 1
  %2118 = extractvalue %dx.types.ResRet.f32 %2115, 2
  %2119 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float %2116, float %2117, float %2118)  ; Dot3(ax,ay,az,bx,by,bz)
  %2120 = call float @dx.op.unary.f32(i32 6, float %2107)  ; FAbs(value)
  %2121 = call float @dx.op.unary.f32(i32 6, float %2113)  ; FAbs(value)
  %2122 = call float @dx.op.unary.f32(i32 6, float %2119)  ; FAbs(value)
  %2123 = fmul fast float %2120, %2080
  %2124 = fmul fast float %2121, %2080
  %2125 = fmul fast float %2122, %2080
  %2126 = fadd fast float %2123, %2076
  %2127 = fadd fast float %2124, %2077
  %2128 = fadd fast float %2125, %2078
  %2129 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2130 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2131 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2132 = fmul fast float %2129, %2129
  %2133 = fmul fast float %2130, %2130
  %2134 = fadd fast float %2133, %2132
  %2135 = fmul fast float %2131, %2131
  %2136 = fadd fast float %2134, %2135
  %2137 = call float @dx.op.unary.f32(i32 24, float %2136)  ; Sqrt(value)
  %2138 = fsub fast float 1.000000e+00, %2137
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = fmul fast float %2139, %2066
  %2141 = fmul fast float %2099, 2.000000e+00
  %2142 = fadd fast float %2119, %2099
  %2143 = call float @dx.op.binary.f32(i32 35, float %2142, float 0.000000e+00)  ; FMax(a,b)
  %2144 = call float @dx.op.binary.f32(i32 36, float %2143, float %2141)  ; FMin(a,b)
  %2145 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2144)  ; FMax(a,b)
  %2146 = fmul fast float %2068, 0x3FF7154760000000
  %2147 = fmul fast float %2146, %2145
  %2148 = call float @dx.op.unary.f32(i32 21, float %2147)  ; Exp(value)
  %2149 = fmul fast float %2140, %2148
  %2150 = fcmp fast oeq float %448, 0.000000e+00
  br i1 %2150, label %2156, label %2151, !dx.controlflow.hints !86

; <label>:2151                                    ; preds = %2053
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 3
  %2154 = fmul fast float %2153, %448
  %2155 = call float @dx.op.unary.f32(i32 23, float %2154)  ; Log(value)
  br label %2156

; <label>:2156                                    ; preds = %2151, %2053
  %2157 = phi float [ %2155, %2151 ], [ 0.000000e+00, %2053 ]
  %2158 = fcmp fast oeq float %2082, 0.000000e+00
  br i1 %2158, label %2180, label %2159, !dx.controlflow.hints !114

; <label>:2159                                    ; preds = %2156
  %2160 = fmul fast float %2088, %2086
  %2161 = fmul fast float %2089, %2086
  %2162 = fmul fast float %2090, %2086
  %2163 = fsub fast float %206, %2160
  %2164 = fsub fast float %207, %2161
  %2165 = fsub fast float %208, %2162
  %2166 = fmul fast float %2163, %2082
  %2167 = fmul fast float %2164, %2082
  %2168 = fmul fast float %2165, %2082
  %2169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %43, float %2166, float %2167, float %2168, float undef, i32 0, i32 0, i32 0, float %2157)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2170 = extractvalue %dx.types.ResRet.f32 %2169, 0
  %2171 = extractvalue %dx.types.ResRet.f32 %2169, 1
  %2172 = fdiv fast float 1.000000e+00, %2084
  %2173 = fmul fast float %2084, 2.000000e+00
  %2174 = fadd fast float %2173, -1.000000e+00
  %2175 = fadd fast float %2174, %2171
  %2176 = fadd fast float %2175, %2170
  %2177 = fmul fast float %2176, %2172
  %2178 = fadd fast float %2177, -1.000000e+00
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  br label %2180

; <label>:2180                                    ; preds = %2159, %2156
  %2181 = phi float [ %2179, %2159 ], [ 1.000000e+00, %2156 ]
  %2182 = fmul fast float %2149, %2181
  %2183 = fmul fast float %2182, %2070
  %2184 = fmul fast float %2182, %2071
  %2185 = fmul fast float %2182, %2072
  %2186 = fadd fast float %2183, %2055
  %2187 = fadd fast float %2184, %2056
  %2188 = fadd fast float %2185, %2057
  %2189 = fmul fast float %2182, %2074
  %2190 = fadd fast float %2189, %2058
  %2191 = fadd fast float %2182, %2059
  %2192 = icmp eq i32 %2054, %2063
  br i1 %2192, label %2193, label %2053, !llvm.loop !115

; <label>:2193                                    ; preds = %2180
  br label %2194

; <label>:2194                                    ; preds = %2193, %2038
  %2195 = phi float [ %2040, %2038 ], [ %2186, %2193 ]
  %2196 = phi float [ %2041, %2038 ], [ %2187, %2193 ]
  %2197 = phi float [ %2042, %2038 ], [ %2188, %2193 ]
  %2198 = phi float [ %2043, %2038 ], [ %2190, %2193 ]
  %2199 = phi float [ %2044, %2038 ], [ %2191, %2193 ]
  %2200 = add i32 %2039, 1
  %2201 = icmp ult i32 %2200, %2046
  br i1 %2201, label %2038, label %2202, !llvm.loop !116

; <label>:2202                                    ; preds = %2194
  br label %2203

; <label>:2203                                    ; preds = %2202, %2033, %2026
  %2204 = phi float [ %2027, %2026 ], [ %2027, %2033 ], [ %2195, %2202 ]
  %2205 = phi float [ %2028, %2026 ], [ %2028, %2033 ], [ %2196, %2202 ]
  %2206 = phi float [ %2029, %2026 ], [ %2029, %2033 ], [ %2197, %2202 ]
  %2207 = phi float [ %1228, %2026 ], [ %1228, %2033 ], [ %2198, %2202 ]
  %2208 = phi float [ %2030, %2026 ], [ %2030, %2033 ], [ %2199, %2202 ]
  %2209 = fcmp fast ogt float %2208, 0.000000e+00
  br i1 %2209, label %2210, label %4487, !dx.controlflow.hints !117

; <label>:2210                                    ; preds = %2203
  %2211 = fdiv fast float 1.000000e+00, %2208
  %2212 = fmul fast float %2211, %2204
  %2213 = fmul fast float %2211, %2205
  %2214 = fmul fast float %2211, %2206
  %2215 = fmul fast float %2211, %2207
  %2216 = fmul fast float %2211, %675
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = fadd fast float %2218, -1.000000e+00
  %2220 = fmul fast float %2216, %2219
  %2221 = fadd fast float %2220, 1.000000e+00
  %2222 = fmul fast float %445, %444
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 0
  %2225 = extractvalue %dx.types.CBufRet.f32 %2223, 1
  %2226 = extractvalue %dx.types.CBufRet.f32 %2223, 2
  %2227 = fsub fast float %206, %2224
  %2228 = fsub fast float %207, %2225
  %2229 = fsub fast float %208, %2226
  %2230 = fmul fast float %374, %141
  %2231 = call float @dx.op.unary.f32(i32 21, float %2230)  ; Exp(value)
  %2232 = fmul fast float %2231, %373
  %2233 = fadd fast float %378, %2232
  %2234 = fmul fast float %148, 2.000000e+00
  %2235 = fmul fast float %2234, %370
  %2236 = fmul fast float %149, 2.000000e+00
  %2237 = fmul fast float %2236, %371
  %2238 = fsub fast float 1.000000e+00, %2235
  %2239 = fsub fast float 1.000000e+00, %2237
  %2240 = fmul fast float %387, %2238
  %2241 = fmul fast float %388, %2238
  %2242 = fmul fast float %389, %2238
  %2243 = fmul fast float %394, %2239
  %2244 = fmul fast float %395, %2239
  %2245 = fmul fast float %396, %2239
  %2246 = fadd fast float %2243, %2240
  %2247 = fadd fast float %2244, %2241
  %2248 = fadd fast float %2245, %2242
  %2249 = fadd fast float %2246, %404
  %2250 = fadd fast float %2247, %405
  %2251 = fadd fast float %2248, %406
  %2252 = fmul fast float %2249, %2233
  %2253 = fmul fast float %2250, %2233
  %2254 = fmul fast float %2251, %2233
  %2255 = fadd fast float %141, 1.000000e+00
  %2256 = fmul fast float %374, %2255
  %2257 = call float @dx.op.unary.f32(i32 21, float %2256)  ; Exp(value)
  %2258 = fsub fast float %2257, %2231
  %2259 = fmul fast float %373, %2258
  %2260 = fmul fast float %2249, %2259
  %2261 = fsub fast float %2257, %2231
  %2262 = fmul fast float %373, %2261
  %2263 = fmul fast float %2250, %2262
  %2264 = fsub fast float %2257, %2231
  %2265 = fmul fast float %373, %2264
  %2266 = fmul fast float %2251, %2265
  %2267 = call float @dx.op.dot3.f32(i32 55, float %2260, float %2263, float %2266, float %2260, float %2263, float %2266)  ; Dot3(ax,ay,az,bx,by,bz)
  %2268 = call float @dx.op.unary.f32(i32 25, float %2267)  ; Rsqrt(value)
  %2269 = fmul fast float %2268, %2267
  %2270 = fmul fast float %2260, %2268
  %2271 = fmul fast float %2263, %2268
  %2272 = fmul fast float %2266, %2268
  %2273 = fsub fast float %246, %2226
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 3
  %2276 = fcmp fast oeq float %2275, 0.000000e+00
  br i1 %2276, label %3423, label %2277, !dx.controlflow.hints !118

; <label>:2277                                    ; preds = %2210
  %2278 = extractvalue %dx.types.CBufRet.f32 %2274, 0
  %2279 = extractvalue %dx.types.CBufRet.f32 %2274, 1
  %2280 = extractvalue %dx.types.CBufRet.f32 %2274, 2
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.CBufRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.CBufRet.f32 %2281, 2
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 2
  %2287 = fmul fast float %2286, %2278
  %2288 = fmul fast float %2286, %2279
  %2289 = fmul fast float %2286, %2280
  %2290 = fsub fast float %2227, %2287
  %2291 = fsub fast float %2228, %2288
  %2292 = fsub fast float %2229, %2289
  %2293 = fcmp fast olt float %2275, 0.000000e+00
  br i1 %2293, label %2825, label %2294, !dx.controlflow.hints !119

; <label>:2294                                    ; preds = %2277
  %2295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2296 = extractvalue %dx.types.CBufRet.f32 %2295, 0
  %2297 = extractvalue %dx.types.CBufRet.f32 %2295, 1
  %2298 = extractvalue %dx.types.CBufRet.f32 %2295, 2
  %2299 = extractvalue %dx.types.CBufRet.f32 %2295, 3
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.CBufRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.CBufRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.CBufRet.f32 %2300, 3
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.CBufRet.f32 %2305, 2
  %2309 = extractvalue %dx.types.CBufRet.f32 %2305, 3
  %2310 = fmul fast float %2296, %2290
  %2311 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2297, float %2310)  ; FMad(a,b,c)
  %2312 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2298, float %2311)  ; FMad(a,b,c)
  %2313 = fadd fast float %2312, %2299
  %2314 = fmul fast float %2301, %2290
  %2315 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2302, float %2314)  ; FMad(a,b,c)
  %2316 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2303, float %2315)  ; FMad(a,b,c)
  %2317 = fadd fast float %2316, %2304
  %2318 = fmul fast float %2306, %2290
  %2319 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2307, float %2318)  ; FMad(a,b,c)
  %2320 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2308, float %2319)  ; FMad(a,b,c)
  %2321 = fadd fast float %2320, %2309
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2325 = extractvalue %dx.types.CBufRet.f32 %2322, 3
  %2326 = fmul fast float %2325, %2313
  %2327 = fmul fast float %2325, %2317
  %2328 = fadd fast float %2326, %2323
  %2329 = fadd fast float %2327, %2324
  %2330 = extractvalue %dx.types.CBufRet.f32 %2322, 2
  %2331 = fcmp fast olt float %2330, 0.000000e+00
  %2332 = fsub fast float -0.000000e+00, %2330
  %2333 = select i1 %2331, float %2332, float %2330
  %2334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.f32 %2334, 1
  %2336 = fadd fast float %2333, %2335
  %2337 = fcmp fast ogt float %2336, 0.000000e+00
  br i1 %2337, label %2338, label %2369, !dx.controlflow.hints !120

; <label>:2338                                    ; preds = %2294
  %2339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.f32 %2339, 1
  %2341 = fsub fast float %2340, %2321
  %2342 = extractvalue %dx.types.CBufRet.f32 %2339, 2
  %2343 = fmul fast float %2341, %2342
  %2344 = fsub fast float 1.000000e+00, %2343
  %2345 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2348 = extractvalue %dx.types.CBufRet.f32 %2346, 1
  %2349 = fsub fast float %2328, %2347
  %2350 = fsub fast float %2329, %2348
  %2351 = fcmp fast olt float %2349, 0.000000e+00
  %2352 = fcmp fast olt float %2350, 0.000000e+00
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2355 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2356 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %2357 = extractvalue %dx.types.CBufRet.f32 %2353, 3
  %2358 = select i1 %2351, float %2354, float %2356
  %2359 = select i1 %2352, float %2355, float %2357
  %2360 = fmul fast float %2358, %2349
  %2361 = fmul fast float %2359, %2350
  %2362 = call float @dx.op.unary.f32(i32 6, float %2360)  ; FAbs(value)
  %2363 = call float @dx.op.unary.f32(i32 6, float %2361)  ; FAbs(value)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2285, 0
  %2365 = call float @dx.op.binary.f32(i32 35, float %2362, float %2363)  ; FMax(a,b)
  %2366 = fsub fast float %2364, %2365
  %2367 = call float @dx.op.unary.f32(i32 7, float %2366)  ; Saturate(value)
  %2368 = fmul fast float %2367, %2345
  br label %2369

; <label>:2369                                    ; preds = %2338, %2294
  %2370 = phi float [ %2368, %2338 ], [ 0.000000e+00, %2294 ]
  %2371 = call float @dx.op.binary.f32(i32 35, float %2370, float 0.000000e+00)  ; FMax(a,b)
  %2372 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2371)  ; FMax(a,b)
  %2373 = fcmp fast olt float %2372, 1.000000e+00
  br i1 %2373, label %2374, label %2772, !dx.controlflow.hints !121

; <label>:2374                                    ; preds = %2369
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2377 = fcmp fast une float %2376, 0.000000e+00
  br i1 %2377, label %2378, label %2772, !dx.controlflow.hints !122

; <label>:2378                                    ; preds = %2374
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.CBufRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.CBufRet.f32 %2379, 2
  %2383 = extractvalue %dx.types.CBufRet.f32 %2379, 3
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.CBufRet.f32 %2384, 2
  %2388 = extractvalue %dx.types.CBufRet.f32 %2384, 3
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.CBufRet.f32 %2389, 1
  %2392 = extractvalue %dx.types.CBufRet.f32 %2389, 2
  %2393 = extractvalue %dx.types.CBufRet.f32 %2389, 3
  %2394 = fmul fast float %2380, %2290
  %2395 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2381, float %2394)  ; FMad(a,b,c)
  %2396 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2382, float %2395)  ; FMad(a,b,c)
  %2397 = fadd fast float %2396, %2383
  %2398 = fmul fast float %2385, %2290
  %2399 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2386, float %2398)  ; FMad(a,b,c)
  %2400 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2387, float %2399)  ; FMad(a,b,c)
  %2401 = fadd fast float %2400, %2388
  %2402 = fmul fast float %2390, %2290
  %2403 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2391, float %2402)  ; FMad(a,b,c)
  %2404 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2392, float %2403)  ; FMad(a,b,c)
  %2405 = fadd fast float %2404, %2393
  %2406 = fcmp fast oge float %2397, 1.000000e+00
  %2407 = fcmp fast oge float %2401, 1.000000e+00
  %2408 = or i1 %2406, %2407
  %2409 = fcmp fast olt float %2397, 0.000000e+00
  %2410 = fcmp fast olt float %2401, 0.000000e+00
  %2411 = or i1 %2409, %2410
  %2412 = or i1 %2408, %2411
  br i1 %2412, label %2772, label %2413, !dx.controlflow.hints !123

; <label>:2413                                    ; preds = %2378
  %2414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2414, 0
  %2416 = extractvalue %dx.types.CBufRet.f32 %2414, 1
  %2417 = extractvalue %dx.types.CBufRet.f32 %2414, 2
  %2418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.i32 %2418, 2
  %2420 = uitofp i32 %2419 to float
  %2421 = extractvalue %dx.types.CBufRet.i32 %2418, 3
  %2422 = uitofp i32 %2421 to float
  %2423 = extractvalue %dx.types.CBufRet.f32 %2414, 3
  %2424 = fmul fast float %2423, 2.000000e+00
  %2425 = fsub fast float %2397, %2415
  %2426 = fsub fast float %2401, %2416
  %2427 = fmul fast float %2424, %2425
  %2428 = fmul fast float %2424, %2426
  %2429 = fdiv fast float 1.000000e+00, %2280
  %2430 = fmul fast float %2428, %2429
  %2431 = call float @dx.op.unary.f32(i32 6, float %2430)  ; FAbs(value)
  %2432 = fmul fast float %2417, %2292
  %2433 = fmul fast float %2432, %2424
  %2434 = call float @dx.op.unary.f32(i32 6, float %2433)  ; FAbs(value)
  %2435 = call float @dx.op.unary.f32(i32 6, float %2427)  ; FAbs(value)
  %2436 = call float @dx.op.binary.f32(i32 35, float %2434, float %2431)  ; FMax(a,b)
  %2437 = call float @dx.op.binary.f32(i32 35, float %2435, float %2436)  ; FMax(a,b)
  %2438 = fmul fast float %2437, 2.000000e+00
  %2439 = call float @dx.op.unary.f32(i32 23, float %2438)  ; Log(value)
  %2440 = call float @dx.op.binary.f32(i32 35, float %2439, float %2420)  ; FMax(a,b)
  %2441 = call float @dx.op.unary.f32(i32 22, float %2440)  ; Frc(value)
  %2442 = fadd fast float %2441, 0xBFEA666660000000
  %2443 = fmul fast float %2442, 8.000000e+00
  %2444 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  %2445 = call float @dx.op.unary.f32(i32 27, float %2440)  ; Round_ni(value)
  %2446 = fadd fast float %2445, %2444
  %2447 = call float @dx.op.binary.f32(i32 36, float %2446, float %2422)  ; FMin(a,b)
  %2448 = call float @dx.op.unary.f32(i32 27, float %2447)  ; Round_ni(value)
  %2449 = fsub fast float -0.000000e+00, %2448
  %2450 = call float @dx.op.unary.f32(i32 21, float %2449)  ; Exp(value)
  %2451 = fmul fast float %2450, %2424
  %2452 = fmul fast float %2451, %2397
  %2453 = fmul fast float %2451, %2401
  %2454 = fmul fast float %2452, 2.500000e-01
  %2455 = fmul fast float %2453, 2.500000e-01
  %2456 = fadd fast float %2454, 5.000000e-01
  %2457 = fadd fast float %2455, 5.000000e-01
  %2458 = fsub fast float %2422, %2420
  %2459 = fptoui float %2458 to i32
  %2460 = add i32 %2459, 320
  %2461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %2460)  ; CBufferLoadLegacy(handle,regIndex)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2461, 0
  %2463 = extractvalue %dx.types.CBufRet.f32 %2461, 1
  %2464 = fcmp fast une float %2447, %2422
  %2465 = fsub fast float %2397, %2462
  %2466 = fsub fast float %2401, %2463
  %2467 = call float @dx.op.unary.f32(i32 6, float %2465)  ; FAbs(value)
  %2468 = call float @dx.op.unary.f32(i32 6, float %2466)  ; FAbs(value)
  %2469 = fmul fast float %2467, %2451
  %2470 = fmul fast float %2468, %2451
  %2471 = fcmp fast olt float %2469, 1.000000e+00
  %2472 = fcmp fast olt float %2470, 1.000000e+00
  %2473 = and i1 %2471, %2472
  %2474 = or i1 %2464, %2473
  br i1 %2474, label %2475, label %2772, !dx.controlflow.hints !124

; <label>:2475                                    ; preds = %2413
  %2476 = fmul fast float %2453, 5.000000e-01
  %2477 = fmul fast float %2452, 5.000000e-01
  %2478 = fadd fast float %2476, 5.000000e-01
  %2479 = fadd fast float %2477, 5.000000e-01
  %2480 = sitofp i32 %2419 to float
  %2481 = fsub fast float %2447, %2480
  %2482 = call float @dx.op.unary.f32(i32 27, float %2481)  ; Round_ni(value)
  %2483 = call float @dx.op.unary.f32(i32 22, float %2447)  ; Frc(value)
  %2484 = call float @dx.op.unary.f32(i32 22, float %2479)  ; Frc(value)
  %2485 = call float @dx.op.unary.f32(i32 22, float %2478)  ; Frc(value)
  %2486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %2484, float %2485, float %2482, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.ResRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.ResRet.f32 %2486, 2
  %2490 = extractvalue %dx.types.ResRet.f32 %2486, 3
  %2491 = fcmp fast ogt float %2483, 0.000000e+00
  br i1 %2491, label %2492, label %2513, !dx.controlflow.hints !125

; <label>:2492                                    ; preds = %2475
  %2493 = fadd fast float %2482, 1.000000e+00
  %2494 = call float @dx.op.unary.f32(i32 22, float %2456)  ; Frc(value)
  %2495 = call float @dx.op.unary.f32(i32 22, float %2457)  ; Frc(value)
  %2496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %2494, float %2495, float %2493, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2497 = extractvalue %dx.types.ResRet.f32 %2496, 0
  %2498 = extractvalue %dx.types.ResRet.f32 %2496, 1
  %2499 = extractvalue %dx.types.ResRet.f32 %2496, 2
  %2500 = extractvalue %dx.types.ResRet.f32 %2496, 3
  %2501 = fsub fast float %2497, %2487
  %2502 = fsub fast float %2498, %2488
  %2503 = fsub fast float %2499, %2489
  %2504 = fsub fast float %2500, %2490
  %2505 = fmul fast float %2501, %2483
  %2506 = fmul fast float %2502, %2483
  %2507 = fmul fast float %2503, %2483
  %2508 = fmul fast float %2504, %2483
  %2509 = fadd fast float %2505, %2487
  %2510 = fadd fast float %2506, %2488
  %2511 = fadd fast float %2507, %2489
  %2512 = fadd fast float %2508, %2490
  br label %2513

; <label>:2513                                    ; preds = %2492, %2475
  %2514 = phi float [ %2509, %2492 ], [ %2487, %2475 ]
  %2515 = phi float [ %2510, %2492 ], [ %2488, %2475 ]
  %2516 = phi float [ %2511, %2492 ], [ %2489, %2475 ]
  %2517 = phi float [ %2512, %2492 ], [ %2490, %2475 ]
  %2518 = fadd fast float %2514, -5.000000e-01
  %2519 = fadd fast float %2516, -5.000000e-01
  %2520 = fmul fast float %2518, 0xBFD5555560000000
  %2521 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2519, float %2520)  ; FMad(a,b,c)
  %2522 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2515, float 0.000000e+00)  ; FMad(a,b,c)
  %2523 = fadd fast float %2522, %2517
  %2524 = fmul fast float %2518, -7.500000e-01
  %2525 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2519, float %2524)  ; FMad(a,b,c)
  %2526 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2515, float 0.000000e+00)  ; FMad(a,b,c)
  %2527 = fadd fast float %2526, %2517
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2533 = extractvalue %dx.types.CBufRet.f32 %2530, 2
  %2534 = extractvalue %dx.types.CBufRet.f32 %2530, 3
  %2535 = fsub fast float %2531, %2521
  %2536 = fsub fast float %2532, %2523
  %2537 = fsub fast float %2533, %2525
  %2538 = fsub fast float %2534, %2527
  %2539 = fmul fast float %2535, %2529
  %2540 = fmul fast float %2536, %2529
  %2541 = fmul fast float %2537, %2529
  %2542 = fmul fast float %2538, %2529
  %2543 = fadd fast float %2539, %2521
  %2544 = fadd fast float %2540, %2523
  %2545 = fadd fast float %2541, %2525
  %2546 = fadd fast float %2542, %2527
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 536870911
  %2550 = uitofp i32 %2549 to float
  %2551 = fmul fast float %2550, %2397
  %2552 = fmul fast float %2550, %2401
  %2553 = fptoui float %2551 to i32
  %2554 = fptoui float %2552 to i32
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = and i32 %2556, 31
  %2558 = lshr i32 %2553, %2557
  %2559 = lshr i32 %2554, %2557
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = and i32 %2561, 31
  %2563 = shl i32 1, %2562
  %2564 = call i32 @dx.op.binary.i32(i32 40, i32 %2563, i32 4)  ; UMin(a,b)
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = extractvalue %dx.types.ResRet.i32 %2565, 1
  %2568 = icmp eq i32 %2564, 0
  br i1 %2568, label %2610, label %2569

; <label>:2569                                    ; preds = %2513
  br label %2570

; <label>:2570                                    ; preds = %2598, %2569
  %2571 = phi i32 [ %2601, %2598 ], [ 0, %2569 ]
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = lshr i32 %2573, 16
  %2575 = and i32 %2574, 31
  %2576 = shl i32 %2559, %2575
  %2577 = add i32 %2576, %2558
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 31
  %2581 = shl i32 %2577, %2580
  %2582 = add i32 %2581, %2571
  %2583 = shl i32 %2582, 2
  %2584 = add i32 %2583, 32
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = icmp slt i32 %2586, 0
  %2588 = getelementptr [12 x float], [12 x float]* %56, i32 0, i32 %2571
  %2589 = getelementptr [12 x float], [12 x float]* %57, i32 0, i32 %2571
  %2590 = bitcast float* %2588 to i32*
  %2591 = bitcast float* %2589 to i32*
  br i1 %2587, label %2592, label %2598, !dx.controlflow.hints !126

; <label>:2592                                    ; preds = %2570
  %2593 = and i32 %2586, 1073741823
  %2594 = add nuw nsw i32 %2593, 20
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = extractvalue %dx.types.ResRet.i32 %2595, 1
  br label %2598

; <label>:2598                                    ; preds = %2592, %2570
  %2599 = phi i32 [ %2596, %2592 ], [ %2566, %2570 ]
  %2600 = phi i32 [ %2597, %2592 ], [ %2567, %2570 ]
  store i32 %2599, i32* %2590, align 4
  store i32 %2600, i32* %2591, align 4
  %2601 = add nuw i32 %2571, 1
  %2602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.i32 %2602, 2
  %2604 = icmp eq i32 %2603, 0
  %2605 = icmp ugt i32 %2586, -1073741825
  %2606 = and i1 %2605, %2604
  %2607 = icmp ult i32 %2601, %2564
  %2608 = and i1 %2606, %2607
  br i1 %2608, label %2570, label %2609, !dx.controlflow.hints !127

; <label>:2609                                    ; preds = %2598
  br label %2610

; <label>:2610                                    ; preds = %2609, %2513
  %2611 = phi i32 [ 0, %2513 ], [ %2601, %2609 ]
  %2612 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2613 = fptoui float %2612 to i32
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2666, label %2615

; <label>:2615                                    ; preds = %2610
  br label %2616

; <label>:2616                                    ; preds = %2661, %2615
  %2617 = phi i32 [ %2662, %2661 ], [ %2611, %2615 ]
  %2618 = phi i32 [ %2663, %2661 ], [ 0, %2615 ]
  %2619 = lshr i32 %2618, 2
  %2620 = and i32 %2618, 3
  %2621 = add nuw nsw i32 %2619, 83
  %2622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %2621)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.i32 %2622, 0
  %2624 = extractvalue %dx.types.CBufRet.i32 %2622, 1
  %2625 = extractvalue %dx.types.CBufRet.i32 %2622, 2
  %2626 = extractvalue %dx.types.CBufRet.i32 %2622, 3
  %2627 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %2623, i32* %2627, align 4
  %2628 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %2624, i32* %2628, align 4
  %2629 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %2625, i32* %2629, align 4
  %2630 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %2626, i32* %2630, align 4
  %2631 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %2620
  %2632 = load i32, i32* %2631, align 4, !tbaa !128, !noalias !130
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = lshr i32 %2634, 16
  %2636 = and i32 %2635, 31
  %2637 = shl i32 %2559, %2636
  %2638 = add i32 %2637, %2558
  %2639 = shl i32 %2638, 2
  %2640 = add i32 %2639, %2632
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = icmp eq i32 %2642, 0
  br i1 %2643, label %2661, label %2644, !dx.controlflow.hints !137

; <label>:2644                                    ; preds = %2616
  %2645 = icmp slt i32 %2642, 0
  %2646 = getelementptr [12 x float], [12 x float]* %56, i32 0, i32 %2617
  %2647 = getelementptr [12 x float], [12 x float]* %57, i32 0, i32 %2617
  %2648 = bitcast float* %2646 to i32*
  %2649 = bitcast float* %2647 to i32*
  br i1 %2645, label %2650, label %2657, !dx.controlflow.hints !138

; <label>:2650                                    ; preds = %2644
  %2651 = and i32 %2642, 1073741823
  %2652 = add i32 %2632, 20
  %2653 = add i32 %2652, %2651
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = extractvalue %dx.types.ResRet.i32 %2654, 1
  br label %2657

; <label>:2657                                    ; preds = %2650, %2644
  %2658 = phi i32 [ %2655, %2650 ], [ %2566, %2644 ]
  %2659 = phi i32 [ %2656, %2650 ], [ %2567, %2644 ]
  store i32 %2658, i32* %2648, align 4
  store i32 %2659, i32* %2649, align 4
  %2660 = add i32 %2617, 1
  br label %2661

; <label>:2661                                    ; preds = %2657, %2616
  %2662 = phi i32 [ %2617, %2616 ], [ %2660, %2657 ]
  %2663 = add nuw i32 %2618, 1
  %2664 = icmp eq i32 %2663, %2613
  br i1 %2664, label %2665, label %2616

; <label>:2665                                    ; preds = %2661
  br label %2666

; <label>:2666                                    ; preds = %2665, %2610
  %2667 = phi i32 [ %2611, %2610 ], [ %2662, %2665 ]
  %2668 = icmp eq i32 %2667, 1
  %2669 = getelementptr [12 x float], [12 x float]* %56, i32 0, i32 0
  %2670 = getelementptr [12 x float], [12 x float]* %57, i32 0, i32 0
  br i1 %2668, label %2671, label %2674, !dx.controlflow.hints !139

; <label>:2671                                    ; preds = %2666
  %2672 = load float, float* %2669, align 4
  %2673 = load float, float* %2670, align 4
  br label %2701

; <label>:2674                                    ; preds = %2666
  %2675 = load float, float* %2669, align 4
  %2676 = load float, float* %2670, align 4
  %2677 = fdiv fast float 1.000000e+00, %2676
  %2678 = fsub fast float %2675, %2677
  %2679 = icmp ugt i32 %2667, 1
  br i1 %2679, label %2680, label %2696

; <label>:2680                                    ; preds = %2674
  br label %2681

; <label>:2681                                    ; preds = %2681, %2680
  %2682 = phi float [ %2691, %2681 ], [ %2678, %2680 ]
  %2683 = phi float [ %2692, %2681 ], [ %2675, %2680 ]
  %2684 = phi i32 [ %2693, %2681 ], [ 1, %2680 ]
  %2685 = getelementptr [12 x float], [12 x float]* %56, i32 0, i32 %2684
  %2686 = load float, float* %2685, align 4
  %2687 = getelementptr [12 x float], [12 x float]* %57, i32 0, i32 %2684
  %2688 = load float, float* %2687, align 4
  %2689 = fdiv fast float 1.000000e+00, %2688
  %2690 = fsub fast float %2686, %2689
  %2691 = call float @dx.op.binary.f32(i32 36, float %2682, float %2690)  ; FMin(a,b)
  %2692 = call float @dx.op.binary.f32(i32 35, float %2683, float %2686)  ; FMax(a,b)
  %2693 = add nuw i32 %2684, 1
  %2694 = icmp eq i32 %2693, %2667
  br i1 %2694, label %2695, label %2681

; <label>:2695                                    ; preds = %2681
  br label %2696

; <label>:2696                                    ; preds = %2695, %2674
  %2697 = phi float [ %2678, %2674 ], [ %2691, %2695 ]
  %2698 = phi float [ %2675, %2674 ], [ %2692, %2695 ]
  %2699 = fsub fast float %2698, %2697
  %2700 = fdiv fast float 1.000000e+00, %2699
  br label %2701

; <label>:2701                                    ; preds = %2696, %2671
  %2702 = phi float [ %2672, %2671 ], [ %2698, %2696 ]
  %2703 = phi float [ %2673, %2671 ], [ %2700, %2696 ]
  %2704 = fadd fast float %2405, %2702
  %2705 = fmul fast float %2704, %2703
  %2706 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2707 = fmul fast float %2706, 2.000000e+00
  %2708 = fsub fast float 1.000000e+00, %2707
  %2709 = fmul fast float %2543, %2543
  %2710 = fsub fast float %2544, %2709
  %2711 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2710)  ; FMax(a,b)
  %2712 = fdiv fast float 1.000000e+00, %2711
  %2713 = fmul fast float %2544, %2543
  %2714 = fsub fast float %2545, %2713
  %2715 = fsub fast float %2708, %2543
  %2716 = fmul fast float %2708, %2708
  %2717 = fsub fast float %2716, %2544
  %2718 = fmul fast float %2712, %2714
  %2719 = fmul fast float %2718, %2715
  %2720 = fsub fast float %2717, %2719
  %2721 = fmul fast float %2544, %2544
  %2722 = fsub fast float %2546, %2721
  %2723 = fmul fast float %2714, %2714
  %2724 = fmul fast float %2723, %2712
  %2725 = fsub fast float %2722, %2724
  %2726 = fdiv fast float %2720, %2725
  %2727 = fmul fast float %2726, %2714
  %2728 = fsub fast float %2715, %2727
  %2729 = fmul fast float %2728, %2712
  %2730 = fmul fast float %2729, %2543
  %2731 = fsub fast float 1.000000e+00, %2730
  %2732 = fmul fast float %2726, %2544
  %2733 = fsub fast float %2731, %2732
  %2734 = fmul fast float %2729, %2729
  %2735 = fmul fast float %2726, 4.000000e+00
  %2736 = fmul fast float %2735, %2733
  %2737 = fsub fast float %2734, %2736
  %2738 = call float @dx.op.unary.f32(i32 24, float %2737)  ; Sqrt(value)
  %2739 = fcmp fast oge float %2729, 0.000000e+00
  %2740 = fsub fast float -0.000000e+00, %2738
  %2741 = select i1 %2739, float %2740, float %2738
  %2742 = fsub fast float %2741, %2729
  %2743 = fdiv fast float %2742, %2726
  %2744 = fdiv fast float %2733, %2742
  %2745 = fmul fast float %2743, 5.000000e-01
  %2746 = fmul fast float %2744, 2.000000e+00
  %2747 = select i1 %2739, float %2745, float %2746
  %2748 = select i1 %2739, float %2746, float %2745
  %2749 = call float @dx.op.binary.f32(i32 35, float %2747, float %2748)  ; FMax(a,b)
  %2750 = call float @dx.op.binary.f32(i32 36, float %2747, float %2748)  ; FMin(a,b)
  %2751 = fcmp fast ogt float %2708, %2749
  %2752 = fsub fast float %2708, %2750
  %2753 = fsub fast float %2708, %2749
  %2754 = fsub fast float %2749, %2750
  %2755 = select i1 %2751, float %2753, float %2754
  %2756 = fmul float %2752, %2755
  %2757 = select i1 %2751, float %2750, float %2708
  %2758 = fcmp fast ogt float %2708, %2750
  %2759 = fmul fast float %2757, %2749
  %2760 = fadd fast float %2757, %2749
  %2761 = fmul fast float %2760, %2543
  %2762 = fadd fast float %2759, %2544
  %2763 = fsub fast float %2762, %2761
  %2764 = fdiv fast float %2763, %2756
  %2765 = select i1 %2758, float %2764, float 0.000000e+00
  %2766 = fsub fast float 1.000000e+00, %2765
  %2767 = select i1 %2751, float %2766, float %2765
  %2768 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2528, 3
  %2770 = fmul fast float %2769, %2768
  %2771 = fsub fast float 1.000000e+00, %2770
  br label %2772

; <label>:2772                                    ; preds = %2701, %2413, %2378, %2374, %2369
  %2773 = phi float [ 1.000000e+00, %2369 ], [ %2771, %2701 ], [ 1.000000e+00, %2378 ], [ 1.000000e+00, %2413 ], [ 1.000000e+00, %2374 ]
  %2774 = fcmp fast ogt float %2370, 0.000000e+00
  br i1 %2774, label %2775, label %2781, !dx.controlflow.hints !140

; <label>:2775                                    ; preds = %2772
  %2776 = fadd fast float %2335, %2321
  %2777 = call float @dx.op.binary.f32(i32 35, float %2776, float 0.000000e+00)  ; FMax(a,b)
  %2778 = fadd fast float %2777, 0x3F10000000000000
  %2779 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %2328, float %2329, float undef, float undef, i32 0, i32 0, i32 undef, float %2778)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2780 = extractvalue %dx.types.ResRet.f32 %2779, 0
  br label %2781

; <label>:2781                                    ; preds = %2775, %2772
  %2782 = phi float [ %2780, %2775 ], [ 1.000000e+00, %2772 ]
  %2783 = fsub fast float %2782, %2773
  %2784 = fmul fast float %2783, %2370
  %2785 = fadd fast float %2784, %2773
  %2786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.f32 %2786, 2
  %2788 = fcmp fast ogt float %2787, 0.000000e+00
  br i1 %2788, label %2789, label %2825, !dx.controlflow.hints !141

; <label>:2789                                    ; preds = %2781
  %2790 = fcmp fast ugt float %2787, 0.000000e+00
  br i1 %2790, label %2791, label %2822, !dx.controlflow.hints !142

; <label>:2791                                    ; preds = %2789
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2796 = extractvalue %dx.types.CBufRet.f32 %2792, 3
  %2797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.f32 %2797, 0
  %2799 = extractvalue %dx.types.CBufRet.f32 %2797, 1
  %2800 = extractvalue %dx.types.CBufRet.f32 %2797, 2
  %2801 = extractvalue %dx.types.CBufRet.f32 %2797, 3
  %2802 = extractvalue %dx.types.CBufRet.f32 %2786, 0
  %2803 = extractvalue %dx.types.CBufRet.f32 %2786, 1
  %2804 = fadd fast float %2224, %2290
  %2805 = fadd fast float %2225, %2291
  %2806 = fadd fast float %2226, %2292
  %2807 = fmul fast float %2804, %2793
  %2808 = call float @dx.op.tertiary.f32(i32 46, float %2794, float %2805, float %2807)  ; FMad(a,b,c)
  %2809 = call float @dx.op.tertiary.f32(i32 46, float %2795, float %2806, float %2808)  ; FMad(a,b,c)
  %2810 = fadd fast float %2809, %2796
  %2811 = fmul fast float %2804, %2798
  %2812 = call float @dx.op.tertiary.f32(i32 46, float %2799, float %2805, float %2811)  ; FMad(a,b,c)
  %2813 = call float @dx.op.tertiary.f32(i32 46, float %2800, float %2806, float %2812)  ; FMad(a,b,c)
  %2814 = fadd fast float %2813, %2801
  %2815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2810, float %2814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  %2817 = fmul fast float %2816, %2803
  %2818 = fadd fast float %2817, %2802
  %2819 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2820 = fmul fast float %2819, %2787
  %2821 = fsub fast float 1.000000e+00, %2820
  br label %2822

; <label>:2822                                    ; preds = %2791, %2789
  %2823 = phi float [ %2821, %2791 ], [ 1.000000e+00, %2789 ]
  %2824 = fmul fast float %2823, %2785
  br label %2825

; <label>:2825                                    ; preds = %2822, %2781, %2277
  %2826 = phi float [ 1.000000e+00, %2277 ], [ %2824, %2822 ], [ %2785, %2781 ]
  %2827 = call float @dx.op.binary.f32(i32 36, float %2826, float %2826)  ; FMin(a,b)
  %2828 = call float @dx.op.binary.f32(i32 36, float %2826, float %2827)  ; FMin(a,b)
  %2829 = fcmp fast ogt float %2828, 0.000000e+00
  br i1 %2829, label %2830, label %2988, !dx.controlflow.hints !143

; <label>:2830                                    ; preds = %2825
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %2835 = extractvalue %dx.types.CBufRet.f32 %2831, 3
  %2836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2837 = extractvalue %dx.types.CBufRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.CBufRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.CBufRet.f32 %2836, 2
  %2840 = extractvalue %dx.types.CBufRet.f32 %2836, 3
  %2841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.f32 %2841, 0
  %2843 = extractvalue %dx.types.CBufRet.f32 %2841, 1
  %2844 = extractvalue %dx.types.CBufRet.f32 %2841, 2
  %2845 = extractvalue %dx.types.CBufRet.f32 %2841, 3
  %2846 = fmul fast float %2832, %2290
  %2847 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2833, float %2846)  ; FMad(a,b,c)
  %2848 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2834, float %2847)  ; FMad(a,b,c)
  %2849 = fadd fast float %2848, %2835
  %2850 = fmul fast float %2837, %2290
  %2851 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2838, float %2850)  ; FMad(a,b,c)
  %2852 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2839, float %2851)  ; FMad(a,b,c)
  %2853 = fadd fast float %2852, %2840
  %2854 = fmul fast float %2842, %2290
  %2855 = call float @dx.op.tertiary.f32(i32 46, float %2291, float %2843, float %2854)  ; FMad(a,b,c)
  %2856 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2844, float %2855)  ; FMad(a,b,c)
  %2857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.CBufRet.f32 %2857, 1
  %2860 = extractvalue %dx.types.CBufRet.f32 %2857, 3
  %2861 = fmul fast float %2860, %2849
  %2862 = fmul fast float %2860, %2853
  %2863 = fadd fast float %2861, %2858
  %2864 = fadd fast float %2862, %2859
  %2865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2866 = extractvalue %dx.types.CBufRet.f32 %2865, 0
  %2867 = extractvalue %dx.types.CBufRet.f32 %2865, 1
  %2868 = fsub fast float %2863, %2866
  %2869 = fsub fast float %2864, %2867
  %2870 = fcmp fast olt float %2868, 0.000000e+00
  %2871 = fcmp fast olt float %2869, 0.000000e+00
  %2872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2873 = extractvalue %dx.types.CBufRet.f32 %2872, 0
  %2874 = extractvalue %dx.types.CBufRet.f32 %2872, 1
  %2875 = extractvalue %dx.types.CBufRet.f32 %2872, 2
  %2876 = extractvalue %dx.types.CBufRet.f32 %2872, 3
  %2877 = select i1 %2870, float %2873, float %2875
  %2878 = select i1 %2871, float %2874, float %2876
  %2879 = fmul fast float %2877, %2868
  %2880 = fmul fast float %2878, %2869
  %2881 = call float @dx.op.unary.f32(i32 6, float %2879)  ; FAbs(value)
  %2882 = call float @dx.op.unary.f32(i32 6, float %2880)  ; FAbs(value)
  %2883 = extractvalue %dx.types.CBufRet.f32 %2285, 0
  %2884 = call float @dx.op.binary.f32(i32 35, float %2881, float %2882)  ; FMax(a,b)
  %2885 = fsub fast float %2883, %2884
  %2886 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2887 = fcmp fast ogt float %2886, 0.000000e+00
  br i1 %2887, label %2888, label %2929, !dx.controlflow.hints !144

; <label>:2888                                    ; preds = %2830
  %2889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %46, float %2863, float %2864, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2890 = extractvalue %dx.types.ResRet.f32 %2889, 1
  %2891 = fcmp fast ogt float %2890, 0.000000e+00
  br i1 %2891, label %2892, label %2924, !dx.controlflow.hints !145

; <label>:2892                                    ; preds = %2888
  %2893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %46, float %2863, float %2864, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2894 = extractvalue %dx.types.ResRet.f32 %2893, 0
  %2895 = extractvalue %dx.types.ResRet.f32 %2893, 1
  %2896 = extractvalue %dx.types.ResRet.f32 %2893, 2
  %2897 = extractvalue %dx.types.ResRet.f32 %2893, 3
  %2898 = fsub fast float 1.000000e+00, %2845
  %2899 = fsub fast float %2898, %2856
  %2900 = fmul fast float %2899, 0x400921FB60000000
  %2901 = fadd fast float %2900, 0x3FF921FB60000000
  %2902 = call float @dx.op.unary.f32(i32 13, float %2901)  ; Sin(value)
  %2903 = fadd fast float %2902, -1.000000e+00
  %2904 = fmul fast float %2903, 0x3FD45F3060000000
  %2905 = fmul fast float %2899, 0x401921FB60000000
  %2906 = fadd fast float %2905, 0x400921FB60000000
  %2907 = call float @dx.op.unary.f32(i32 13, float %2906)  ; Sin(value)
  %2908 = fadd fast float %2907, 0x3E7777A5C0000000
  %2909 = fmul fast float %2908, 0x3FC45F3060000000
  %2910 = fmul fast float %2899, 0x4022D97C80000000
  %2911 = fadd fast float %2910, 0x4012D97C80000000
  %2912 = call float @dx.op.unary.f32(i32 13, float %2911)  ; Sin(value)
  %2913 = fadd fast float %2912, 1.000000e+00
  %2914 = fmul fast float %2913, 0x3FBB2995E0000000
  %2915 = fmul fast float %2899, 0x402921FB60000000
  %2916 = fadd fast float %2915, 0x401921FB60000000
  %2917 = call float @dx.op.unary.f32(i32 13, float %2916)  ; Sin(value)
  %2918 = fadd fast float %2917, 0xBE8777A5C0000000
  %2919 = fmul fast float %2918, 0x3FB45F3060000000
  %2920 = call float @dx.op.dot4.f32(i32 56, float %2894, float %2895, float %2896, float %2897, float %2904, float %2909, float %2914, float %2919)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2921 = fmul fast float %2920, 0xBFF7154760000000
  %2922 = call float @dx.op.unary.f32(i32 21, float %2921)  ; Exp(value)
  %2923 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  br label %2924

; <label>:2924                                    ; preds = %2892, %2888
  %2925 = phi float [ %2923, %2892 ], [ 1.000000e+00, %2888 ]
  %2926 = fadd fast float %2925, -1.000000e+00
  %2927 = fmul fast float %2926, %2886
  %2928 = fadd fast float %2927, 1.000000e+00
  br label %2929

; <label>:2929                                    ; preds = %2924, %2830
  %2930 = phi float [ %2928, %2924 ], [ 1.000000e+00, %2830 ]
  %2931 = fmul fast float %2930, %2826
  %2932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.f32 %2932, 1
  %2934 = fsub fast float -0.000000e+00, %206
  %2935 = fsub fast float -0.000000e+00, %207
  %2936 = fsub fast float -0.000000e+00, %2229
  %2937 = fsub fast float %2936, %2226
  %2938 = fadd fast float %2937, %2933
  %2939 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2934, float %2935, float %2938)  ; Dot3(ax,ay,az,bx,by,bz)
  %2940 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2278, float %2279, float %2280)  ; Dot3(ax,ay,az,bx,by,bz)
  %2941 = fdiv fast float 1.000000e+00, %2940
  %2942 = fmul fast float %2941, %2939
  %2943 = fmul fast float %2278, %2942
  %2944 = fmul fast float %2279, %2942
  %2945 = fadd fast float %2943, %206
  %2946 = fadd fast float %2944, %207
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.CBufRet.f32 %2947, 1
  %2950 = fsub fast float %2945, %2948
  %2951 = fsub fast float %2946, %2949
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 2
  %2954 = extractvalue %dx.types.CBufRet.f32 %2952, 3
  %2955 = fmul fast float %2950, %2953
  %2956 = fmul fast float %2951, %2954
  %2957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.i32 %2957, 3
  %2959 = icmp eq i32 %2958, 0
  br i1 %2959, label %2965, label %2960, !dx.controlflow.hints !146

; <label>:2960                                    ; preds = %2929
  %2961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %2955, float %2956, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2962 = extractvalue %dx.types.ResRet.f32 %2961, 0
  %2963 = extractvalue %dx.types.ResRet.f32 %2961, 1
  %2964 = extractvalue %dx.types.ResRet.f32 %2961, 2
  br label %2970

; <label>:2965                                    ; preds = %2929
  %2966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %2955, float %2956, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2967 = extractvalue %dx.types.ResRet.f32 %2966, 0
  %2968 = extractvalue %dx.types.ResRet.f32 %2966, 1
  %2969 = extractvalue %dx.types.ResRet.f32 %2966, 2
  br label %2970

; <label>:2970                                    ; preds = %2965, %2960
  %2971 = phi float [ %2962, %2960 ], [ %2967, %2965 ]
  %2972 = phi float [ %2963, %2960 ], [ %2968, %2965 ]
  %2973 = phi float [ %2964, %2960 ], [ %2969, %2965 ]
  %2974 = extractvalue %dx.types.CBufRet.f32 %2932, 2
  %2975 = fmul fast float %2974, %2971
  %2976 = extractvalue %dx.types.CBufRet.f32 %2932, 0
  %2977 = fsub fast float %2942, %2976
  %2978 = fsub fast float %2977, %2975
  %2979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2978)  ; FMax(a,b)
  %2980 = fmul fast float %2979, %2972
  %2981 = call float @dx.op.binary.f32(i32 36, float %2973, float %2980)  ; FMin(a,b)
  %2982 = fmul fast float %2981, 0xBFF7154760000000
  %2983 = call float @dx.op.unary.f32(i32 21, float %2982)  ; Exp(value)
  %2984 = fadd fast float %2983, -1.000000e+00
  %2985 = fmul fast float %2984, %2221
  %2986 = fadd fast float %2985, 1.000000e+00
  %2987 = fmul fast float %2931, %2986
  br label %2988

; <label>:2988                                    ; preds = %2970, %2825
  %2989 = phi float [ %2987, %2970 ], [ %2826, %2825 ]
  %2990 = call float @dx.op.binary.f32(i32 36, float %2989, float %2989)  ; FMin(a,b)
  %2991 = call float @dx.op.binary.f32(i32 36, float %2989, float %2990)  ; FMin(a,b)
  %2992 = fcmp fast ogt float %2991, 0.000000e+00
  br i1 %2992, label %2993, label %3423, !dx.controlflow.hints !147

; <label>:2993                                    ; preds = %2988
  br i1 %257, label %2994, label %3396, !dx.controlflow.hints !148

; <label>:2994                                    ; preds = %2993
  %2995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2996 = extractvalue %dx.types.CBufRet.i32 %2995, 0
  %2997 = and i32 %2996, 64
  %2998 = icmp ne i32 %2997, 0
  %2999 = fsub fast float %208, %246
  %3000 = fcmp fast ogt float %2999, 0.000000e+00
  %3001 = xor i1 %3000, true
  %3002 = fmul fast float %2278, 5.120000e+02
  %3003 = fmul fast float %2279, 5.120000e+02
  %3004 = fmul fast float %2280, 5.120000e+02
  %3005 = fadd fast float %3004, %2229
  %3006 = fsub fast float %2273, %3005
  %3007 = fmul fast float %3006, 2.000000e+00
  %3008 = fadd fast float %3007, %3005
  %3009 = select i1 %3000, float %3008, float %3005
  %3010 = fsub fast float %3009, %2229
  %3011 = call float @dx.op.dot3.f32(i32 55, float %3002, float %3003, float %3010, float %3002, float %3003, float %3010)  ; Dot3(ax,ay,az,bx,by,bz)
  %3012 = call float @dx.op.unary.f32(i32 25, float %3011)  ; Rsqrt(value)
  %3013 = fmul fast float %3012, %3002
  %3014 = fmul fast float %3012, %3003
  %3015 = fmul fast float %3012, %3010
  %3016 = fsub fast float %246, %208
  %3017 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3016)  ; Dot3(ax,ay,az,bx,by,bz)
  %3018 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3013, float %3014, float %3015)  ; Dot3(ax,ay,az,bx,by,bz)
  %3019 = fdiv fast float 1.000000e+00, %3018
  %3020 = fmul fast float %3019, %3017
  %3021 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2999, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3022 = fcmp fast ogt float %3021, 0.000000e+00
  %3023 = fcmp fast olt float %3021, 0.000000e+00
  %3024 = zext i1 %3022 to i32
  %3025 = zext i1 %3023 to i32
  %3026 = sub nsw i32 %3024, %3025
  %3027 = sitofp i32 %3026 to float
  %3028 = fsub fast float %3009, %2273
  %3029 = call float @dx.op.dot3.f32(i32 55, float %3002, float %3003, float %3028, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3030 = fcmp fast ogt float %3029, 0.000000e+00
  %3031 = fcmp fast olt float %3029, 0.000000e+00
  %3032 = zext i1 %3030 to i32
  %3033 = zext i1 %3031 to i32
  %3034 = sub nsw i32 %3032, %3033
  %3035 = sitofp i32 %3034 to float
  %3036 = fcmp fast une float %3027, %3035
  br i1 %3036, label %3037, label %3047, !dx.controlflow.hints !149

; <label>:3037                                    ; preds = %2994
  %3038 = fmul fast float %3020, %3015
  %3039 = fmul fast float %3020, %3014
  %3040 = fmul fast float %3020, %3013
  %3041 = fmul fast float %3040, %3040
  %3042 = fmul fast float %3039, %3039
  %3043 = fadd fast float %3041, %3042
  %3044 = fmul fast float %3038, %3038
  %3045 = fadd fast float %3043, %3044
  %3046 = call float @dx.op.unary.f32(i32 24, float %3045)  ; Sqrt(value)
  br label %3057

; <label>:3047                                    ; preds = %2994
  %3048 = icmp slt i32 %3026, 0
  br i1 %3048, label %3049, label %3057, !dx.controlflow.hints !150

; <label>:3049                                    ; preds = %3047
  %3050 = fsub fast float %2229, %3009
  %3051 = fmul fast float %3002, %3002
  %3052 = fmul fast float %3003, %3003
  %3053 = fadd fast float %3051, %3052
  %3054 = fmul fast float %3050, %3050
  %3055 = fadd fast float %3053, %3054
  %3056 = call float @dx.op.unary.f32(i32 24, float %3055)  ; Sqrt(value)
  br label %3057

; <label>:3057                                    ; preds = %3049, %3047, %3037
  %3058 = phi float [ %3046, %3037 ], [ %3056, %3049 ], [ 0.000000e+00, %3047 ]
  %3059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %3060 = extractvalue %dx.types.CBufRet.i32 %3059, 1
  %3061 = icmp ne i32 %3060, 0
  %3062 = and i1 %3061, %3001
  %3063 = call float @dx.op.dot3.f32(i32 55, float %3013, float %3014, float %3015, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3064 = fmul fast float %3063, %3063
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3067 = extractvalue %dx.types.CBufRet.f32 %3066, 0
  %3068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3069 = extractvalue %dx.types.CBufRet.f32 %3068, 0
  %3070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3071 = extractvalue %dx.types.CBufRet.f32 %3070, 0
  %3072 = extractvalue %dx.types.CBufRet.f32 %3066, 1
  %3073 = extractvalue %dx.types.CBufRet.f32 %3068, 1
  %3074 = extractvalue %dx.types.CBufRet.f32 %3070, 1
  %3075 = extractvalue %dx.types.CBufRet.f32 %3066, 3
  %3076 = extractvalue %dx.types.CBufRet.f32 %3068, 3
  %3077 = extractvalue %dx.types.CBufRet.f32 %3070, 3
  %3078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %3079 = extractvalue %dx.types.CBufRet.f32 %3078, 0
  %3080 = extractvalue %dx.types.CBufRet.f32 %3078, 1
  %3081 = extractvalue %dx.types.CBufRet.f32 %3078, 2
  %3082 = extractvalue %dx.types.CBufRet.f32 %3078, 3
  br i1 %3062, label %3083, label %3276, !dx.controlflow.hints !151

; <label>:3083                                    ; preds = %3057
  %3084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %3085 = extractvalue %dx.types.CBufRet.f32 %3084, 0
  %3086 = fmul fast float %3085, %3085
  %3087 = fmul fast float %3086, %3065
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = fcmp fast oge float %3088, 0.000000e+00
  %3090 = fmul fast float %3085, %3013
  %3091 = fmul fast float %3085, %3014
  %3092 = fmul fast float %3085, %3015
  %3093 = call float @dx.op.unary.f32(i32 24, float %3088)  ; Sqrt(value)
  %3094 = fmul fast float %3085, %3063
  %3095 = fsub fast float -0.000000e+00, %3093
  %3096 = fsub fast float %3095, %3094
  %3097 = fadd fast float %3096, %3092
  %3098 = select i1 %3089, float %3090, float 0.000000e+00
  %3099 = select i1 %3089, float %3091, float 0.000000e+00
  %3100 = select i1 %3089, float %3097, float 0.000000e+00
  %3101 = fmul fast float %3098, %3058
  %3102 = fmul fast float %3099, %3058
  %3103 = fmul fast float %3100, %3058
  %3104 = fadd fast float %206, %3101
  %3105 = fadd fast float %3104, %3075
  %3106 = fadd fast float %207, %3102
  %3107 = fadd fast float %3106, %3076
  %3108 = fadd fast float %208, %3103
  %3109 = fadd fast float %3108, %3077
  %3110 = fmul fast float %3105, %3067
  %3111 = call float @dx.op.tertiary.f32(i32 46, float %3107, float %3069, float %3110)  ; FMad(a,b,c)
  %3112 = call float @dx.op.tertiary.f32(i32 46, float %3109, float %3071, float %3111)  ; FMad(a,b,c)
  %3113 = fmul fast float %3105, %3072
  %3114 = call float @dx.op.tertiary.f32(i32 46, float %3107, float %3073, float %3113)  ; FMad(a,b,c)
  %3115 = call float @dx.op.tertiary.f32(i32 46, float %3109, float %3074, float %3114)  ; FMad(a,b,c)
  %3116 = fsub fast float %3112, %3075
  %3117 = fsub fast float %3116, %3079
  %3118 = fadd fast float %3117, %3081
  %3119 = fsub fast float %3115, %3076
  %3120 = fsub fast float %3119, %3080
  %3121 = fadd fast float %3120, %3081
  %3122 = fmul fast float %3118, %3082
  %3123 = fmul fast float %3121, %3082
  %3124 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  %3125 = call float @dx.op.unary.f32(i32 7, float %3123)  ; Saturate(value)
  %3126 = fsub fast float 1.000000e+00, %3124
  %3127 = fsub fast float 1.000000e+00, %3125
  %3128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %3126, float %3127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3129 = extractvalue %dx.types.ResRet.f32 %3128, 0
  %3130 = fmul fast float %3129, 0x3FBC5ABC00000000
  %3131 = extractvalue %dx.types.CBufRet.f32 %3084, 1
  %3132 = fmul fast float %3131, %3131
  %3133 = fmul fast float %3132, %3065
  %3134 = fsub fast float 1.000000e+00, %3133
  %3135 = fcmp fast oge float %3134, 0.000000e+00
  %3136 = fmul fast float %3131, %3013
  %3137 = fmul fast float %3131, %3014
  %3138 = fmul fast float %3131, %3015
  %3139 = call float @dx.op.unary.f32(i32 24, float %3134)  ; Sqrt(value)
  %3140 = fmul fast float %3131, %3063
  %3141 = fsub fast float -0.000000e+00, %3139
  %3142 = fsub fast float %3141, %3140
  %3143 = fadd fast float %3142, %3138
  %3144 = select i1 %3135, float %3136, float 0.000000e+00
  %3145 = select i1 %3135, float %3137, float 0.000000e+00
  %3146 = select i1 %3135, float %3143, float 0.000000e+00
  %3147 = fmul fast float %3144, %3058
  %3148 = fmul fast float %3145, %3058
  %3149 = fmul fast float %3146, %3058
  %3150 = fadd fast float %206, %3147
  %3151 = fadd fast float %3150, %3075
  %3152 = fadd fast float %207, %3148
  %3153 = fadd fast float %3152, %3076
  %3154 = fadd fast float %208, %3149
  %3155 = fadd fast float %3154, %3077
  %3156 = fmul fast float %3151, %3067
  %3157 = call float @dx.op.tertiary.f32(i32 46, float %3153, float %3069, float %3156)  ; FMad(a,b,c)
  %3158 = call float @dx.op.tertiary.f32(i32 46, float %3155, float %3071, float %3157)  ; FMad(a,b,c)
  %3159 = fmul fast float %3151, %3072
  %3160 = call float @dx.op.tertiary.f32(i32 46, float %3153, float %3073, float %3159)  ; FMad(a,b,c)
  %3161 = call float @dx.op.tertiary.f32(i32 46, float %3155, float %3074, float %3160)  ; FMad(a,b,c)
  %3162 = fsub fast float %3158, %3075
  %3163 = fsub fast float %3162, %3079
  %3164 = fadd fast float %3163, %3081
  %3165 = fsub fast float %3161, %3076
  %3166 = fsub fast float %3165, %3080
  %3167 = fadd fast float %3166, %3081
  %3168 = fmul fast float %3164, %3082
  %3169 = fmul fast float %3167, %3082
  %3170 = call float @dx.op.unary.f32(i32 7, float %3168)  ; Saturate(value)
  %3171 = call float @dx.op.unary.f32(i32 7, float %3169)  ; Saturate(value)
  %3172 = fsub fast float 1.000000e+00, %3170
  %3173 = fsub fast float 1.000000e+00, %3171
  %3174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3175 = extractvalue %dx.types.ResRet.f32 %3174, 0
  %3176 = fmul fast float %3175, 0x3F9E4BBD60000000
  %3177 = extractvalue %dx.types.CBufRet.f32 %3084, 2
  %3178 = fmul fast float %3177, %3177
  %3179 = fmul fast float %3178, %3065
  %3180 = fsub fast float 1.000000e+00, %3179
  %3181 = fcmp fast oge float %3180, 0.000000e+00
  %3182 = fmul fast float %3177, %3013
  %3183 = fmul fast float %3177, %3014
  %3184 = fmul fast float %3177, %3015
  %3185 = call float @dx.op.unary.f32(i32 24, float %3180)  ; Sqrt(value)
  %3186 = fmul fast float %3177, %3063
  %3187 = fsub fast float -0.000000e+00, %3185
  %3188 = fsub fast float %3187, %3186
  %3189 = fadd fast float %3188, %3184
  %3190 = select i1 %3181, float %3182, float 0.000000e+00
  %3191 = select i1 %3181, float %3183, float 0.000000e+00
  %3192 = select i1 %3181, float %3189, float 0.000000e+00
  %3193 = fmul fast float %3190, %3058
  %3194 = fmul fast float %3191, %3058
  %3195 = fmul fast float %3192, %3058
  %3196 = fadd fast float %206, %3193
  %3197 = fadd fast float %3196, %3075
  %3198 = fadd fast float %207, %3194
  %3199 = fadd fast float %3198, %3076
  %3200 = fadd fast float %208, %3195
  %3201 = fadd fast float %3200, %3077
  %3202 = fmul fast float %3197, %3067
  %3203 = call float @dx.op.tertiary.f32(i32 46, float %3199, float %3069, float %3202)  ; FMad(a,b,c)
  %3204 = call float @dx.op.tertiary.f32(i32 46, float %3201, float %3071, float %3203)  ; FMad(a,b,c)
  %3205 = fmul fast float %3197, %3072
  %3206 = call float @dx.op.tertiary.f32(i32 46, float %3199, float %3073, float %3205)  ; FMad(a,b,c)
  %3207 = call float @dx.op.tertiary.f32(i32 46, float %3201, float %3074, float %3206)  ; FMad(a,b,c)
  %3208 = fsub fast float %3204, %3075
  %3209 = fsub fast float %3208, %3079
  %3210 = fadd fast float %3209, %3081
  %3211 = fsub fast float %3207, %3076
  %3212 = fsub fast float %3211, %3080
  %3213 = fadd fast float %3212, %3081
  %3214 = fmul fast float %3210, %3082
  %3215 = fmul fast float %3213, %3082
  %3216 = call float @dx.op.unary.f32(i32 7, float %3214)  ; Saturate(value)
  %3217 = call float @dx.op.unary.f32(i32 7, float %3215)  ; Saturate(value)
  %3218 = fsub fast float 1.000000e+00, %3216
  %3219 = fsub fast float 1.000000e+00, %3217
  %3220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %3218, float %3219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3221 = extractvalue %dx.types.ResRet.f32 %3220, 0
  %3222 = fmul fast float %3221, 0x3FDDEACB00000000
  %3223 = fadd fast float %3222, %3176
  %3224 = extractvalue %dx.types.CBufRet.f32 %3084, 3
  %3225 = fmul fast float %3224, %3224
  %3226 = fmul fast float %3225, %3065
  %3227 = fsub fast float 1.000000e+00, %3226
  %3228 = fcmp fast oge float %3227, 0.000000e+00
  %3229 = fmul fast float %3224, %3013
  %3230 = fmul fast float %3224, %3014
  %3231 = fmul fast float %3224, %3015
  %3232 = call float @dx.op.unary.f32(i32 24, float %3227)  ; Sqrt(value)
  %3233 = fmul fast float %3224, %3063
  %3234 = fsub fast float -0.000000e+00, %3232
  %3235 = fsub fast float %3234, %3233
  %3236 = fadd fast float %3235, %3231
  %3237 = select i1 %3228, float %3229, float 0.000000e+00
  %3238 = select i1 %3228, float %3230, float 0.000000e+00
  %3239 = select i1 %3228, float %3236, float 0.000000e+00
  %3240 = fmul fast float %3237, %3058
  %3241 = fmul fast float %3238, %3058
  %3242 = fmul fast float %3239, %3058
  %3243 = fadd fast float %206, %3240
  %3244 = fadd fast float %3243, %3075
  %3245 = fadd fast float %207, %3241
  %3246 = fadd fast float %3245, %3076
  %3247 = fadd fast float %208, %3242
  %3248 = fadd fast float %3247, %3077
  %3249 = fmul fast float %3244, %3067
  %3250 = call float @dx.op.tertiary.f32(i32 46, float %3246, float %3069, float %3249)  ; FMad(a,b,c)
  %3251 = call float @dx.op.tertiary.f32(i32 46, float %3248, float %3071, float %3250)  ; FMad(a,b,c)
  %3252 = fmul fast float %3244, %3072
  %3253 = call float @dx.op.tertiary.f32(i32 46, float %3246, float %3073, float %3252)  ; FMad(a,b,c)
  %3254 = call float @dx.op.tertiary.f32(i32 46, float %3248, float %3074, float %3253)  ; FMad(a,b,c)
  %3255 = fsub fast float %3251, %3075
  %3256 = fsub fast float %3255, %3079
  %3257 = fadd fast float %3256, %3081
  %3258 = fsub fast float %3254, %3076
  %3259 = fsub fast float %3258, %3080
  %3260 = fadd fast float %3259, %3081
  %3261 = fmul fast float %3257, %3082
  %3262 = fmul fast float %3260, %3082
  %3263 = call float @dx.op.unary.f32(i32 7, float %3261)  ; Saturate(value)
  %3264 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  %3265 = fsub fast float 1.000000e+00, %3263
  %3266 = fsub fast float 1.000000e+00, %3264
  %3267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %3265, float %3266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = fmul fast float %3268, 0x3FE0183CA0000000
  %3270 = fmul fast float %3268, 0x3FB51033E0000000
  %3271 = fadd fast float %3223, %3269
  %3272 = fadd fast float %3221, %3175
  %3273 = fmul fast float %3272, 0x3FD9D2A200000000
  %3274 = fadd fast float %3270, %3130
  %3275 = fadd fast float %3274, %3273
  br label %3322

; <label>:3276                                    ; preds = %3057
  %3277 = fmul fast float %3065, 0x3FE2024E20000000
  %3278 = fsub fast float 1.000000e+00, %3277
  %3279 = fcmp fast oge float %3278, 0.000000e+00
  %3280 = fmul fast float %3013, 0x3FE8018960000000
  %3281 = fmul fast float %3014, 0x3FE8018960000000
  %3282 = fmul fast float %3015, 0x3FE8018960000000
  %3283 = call float @dx.op.unary.f32(i32 24, float %3278)  ; Sqrt(value)
  %3284 = fmul fast float %3063, 0x3FE8018960000000
  %3285 = fsub fast float %3282, %3283
  %3286 = fsub fast float %3285, %3284
  %3287 = select i1 %3279, float %3280, float 0.000000e+00
  %3288 = select i1 %3279, float %3281, float 0.000000e+00
  %3289 = select i1 %3279, float %3286, float 0.000000e+00
  %3290 = select i1 %3000, float %3013, float %3287
  %3291 = select i1 %3000, float %3014, float %3288
  %3292 = select i1 %3000, float %3015, float %3289
  %3293 = fmul fast float %3290, %3058
  %3294 = fmul fast float %3291, %3058
  %3295 = fmul fast float %3292, %3058
  %3296 = fadd fast float %206, %3293
  %3297 = fadd fast float %3296, %3075
  %3298 = fadd fast float %207, %3294
  %3299 = fadd fast float %3298, %3076
  %3300 = fadd fast float %208, %3295
  %3301 = fadd fast float %3300, %3077
  %3302 = fmul fast float %3297, %3067
  %3303 = call float @dx.op.tertiary.f32(i32 46, float %3299, float %3069, float %3302)  ; FMad(a,b,c)
  %3304 = call float @dx.op.tertiary.f32(i32 46, float %3301, float %3071, float %3303)  ; FMad(a,b,c)
  %3305 = fmul fast float %3297, %3072
  %3306 = call float @dx.op.tertiary.f32(i32 46, float %3299, float %3073, float %3305)  ; FMad(a,b,c)
  %3307 = call float @dx.op.tertiary.f32(i32 46, float %3301, float %3074, float %3306)  ; FMad(a,b,c)
  %3308 = fsub fast float %3304, %3075
  %3309 = fsub fast float %3308, %3079
  %3310 = fadd fast float %3309, %3081
  %3311 = fsub fast float %3307, %3076
  %3312 = fsub fast float %3311, %3080
  %3313 = fadd fast float %3312, %3081
  %3314 = fmul fast float %3310, %3082
  %3315 = fmul fast float %3313, %3082
  %3316 = call float @dx.op.unary.f32(i32 7, float %3314)  ; Saturate(value)
  %3317 = call float @dx.op.unary.f32(i32 7, float %3315)  ; Saturate(value)
  %3318 = fsub fast float 1.000000e+00, %3316
  %3319 = fsub fast float 1.000000e+00, %3317
  %3320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %3318, float %3319, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3321 = extractvalue %dx.types.ResRet.f32 %3320, 0
  br label %3322

; <label>:3322                                    ; preds = %3276, %3083
  %3323 = phi float [ %3321, %3276 ], [ %3271, %3083 ]
  %3324 = phi float [ %3321, %3276 ], [ %3275, %3083 ]
  %3325 = phi float [ %3321, %3276 ], [ %3129, %3083 ]
  %3326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3327 = extractvalue %dx.types.CBufRet.f32 %3326, 0
  %3328 = call float @dx.op.unary.f32(i32 6, float %3327)  ; FAbs(value)
  %3329 = fmul fast float %3058, %3058
  %3330 = fadd fast float %3329, 1.000000e+00
  %3331 = fdiv fast float %3328, %3330
  %3332 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3333 = fsub fast float -0.000000e+00, %3058
  %3334 = select i1 %3000, float -0.000000e+00, float %3333
  %3335 = fmul fast float %1230, 0x3FF7154760000000
  %3336 = fmul fast float %3335, %3334
  %3337 = fmul fast float %1231, 0x3FF7154760000000
  %3338 = fmul fast float %3337, %3334
  %3339 = fmul fast float %1232, 0x3FF7154760000000
  %3340 = fmul fast float %3339, %3334
  %3341 = call float @dx.op.unary.f32(i32 21, float %3336)  ; Exp(value)
  %3342 = call float @dx.op.unary.f32(i32 21, float %3338)  ; Exp(value)
  %3343 = call float @dx.op.unary.f32(i32 21, float %3340)  ; Exp(value)
  %3344 = call float @dx.op.unary.f32(i32 7, float %3341)  ; Saturate(value)
  %3345 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  %3346 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  %3347 = call float @dx.op.unary.f32(i32 6, float %3063)  ; FAbs(value)
  %3348 = fsub fast float 1.000000e+00, %3347
  %3349 = bitcast float %3348 to i32
  %3350 = sitofp i32 %3349 to float
  %3351 = fptosi float %3350 to i32
  %3352 = bitcast i32 %3351 to float
  %3353 = fmul fast float %3352, 0x3FEF333340000000
  %3354 = fadd fast float %3353, 0x3F999999A0000000
  %3355 = call float @dx.op.unary.f32(i32 7, float %3354)  ; Saturate(value)
  %3356 = fsub fast float 1.000000e+00, %3355
  %3357 = fadd fast float %3323, 1.000000e+00
  %3358 = fadd fast float %3324, 1.000000e+00
  %3359 = fadd fast float %3325, 1.000000e+00
  %3360 = fmul fast float %3344, %3357
  %3361 = fmul fast float %3345, %3358
  %3362 = fmul fast float %3346, %3359
  %3363 = fmul fast float %3360, %3356
  %3364 = fmul fast float %3361, %3356
  %3365 = fmul fast float %3362, %3356
  %3366 = fmul fast float %3332, %3357
  %3367 = fmul fast float %3366, %3344
  %3368 = fmul fast float %3367, %3355
  %3369 = fmul fast float %3332, %3358
  %3370 = fmul fast float %3369, %3345
  %3371 = fmul fast float %3370, %3355
  %3372 = fmul fast float %3332, %3359
  %3373 = fmul fast float %3372, %3346
  %3374 = fmul fast float %3373, %3355
  %3375 = fadd fast float %3368, %3344
  %3376 = fadd fast float %3371, %3345
  %3377 = fadd fast float %3374, %3346
  %3378 = call float @dx.op.unary.f32(i32 6, float %2999)  ; FAbs(value)
  %3379 = call float @dx.op.unary.f32(i32 7, float %3378)  ; Saturate(value)
  %3380 = select i1 %3000, float %3375, float %3363
  %3381 = select i1 %3000, float %3376, float %3364
  %3382 = select i1 %3000, float %3377, float %3365
  %3383 = select i1 %2998, float %3379, float 0.000000e+00
  %3384 = fsub fast float %3380, %3344
  %3385 = fsub fast float %3381, %3345
  %3386 = fsub fast float %3382, %3346
  %3387 = fmul fast float %3384, %3383
  %3388 = fmul fast float %3385, %3383
  %3389 = fmul fast float %3386, %3383
  %3390 = fadd fast float %3387, %3344
  %3391 = fadd fast float %3388, %3345
  %3392 = fadd fast float %3389, %3346
  %3393 = fmul fast float %3390, %2282
  %3394 = fmul fast float %3391, %2283
  %3395 = fmul fast float %3392, %2284
  br label %3396

; <label>:3396                                    ; preds = %3322, %2993
  %3397 = phi float [ %3393, %3322 ], [ %2282, %2993 ]
  %3398 = phi float [ %3394, %3322 ], [ %2283, %2993 ]
  %3399 = phi float [ %3395, %3322 ], [ %2284, %2993 ]
  %3400 = call float @dx.op.dot3.f32(i32 55, float %2278, float %2279, float %2280, float %219, float %220, float %221)  ; Dot3(ax,ay,az,bx,by,bz)
  %3401 = fcmp fast ogt float %2215, 0.000000e+00
  %3402 = select i1 %3401, float 1.000000e+00, float -1.000000e+00
  %3403 = fmul fast float %130, 7.812500e-03
  %3404 = fmul fast float %130, 3.125000e-02
  %3405 = fadd fast float %3404, -3.125000e-02
  %3406 = fmul fast float %3402, 5.000000e-01
  %3407 = fmul fast float %3406, %3400
  %3408 = fmul fast float %3402, %2215
  %3409 = fadd fast float %3403, 4.921875e-01
  %3410 = fadd fast float %3409, %3407
  %3411 = fadd fast float %3403, 0x3FB25F3060000000
  %3412 = fadd fast float %3405, %3408
  %3413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %46, float %3410, float %3411, float %3412, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3416 = extractvalue %dx.types.CBufRet.f32 %3415, 0
  %3417 = fmul fast float %2989, 0x400921FB60000000
  %3418 = fmul fast float %3417, %3414
  %3419 = fmul fast float %3418, %3416
  %3420 = fmul fast float %3419, %3397
  %3421 = fmul fast float %3419, %3398
  %3422 = fmul fast float %3419, %3399
  br label %3423

; <label>:3423                                    ; preds = %3396, %2988, %2210
  %3424 = phi float [ %3420, %3396 ], [ 0.000000e+00, %2210 ], [ 0.000000e+00, %2988 ]
  %3425 = phi float [ %3421, %3396 ], [ 0.000000e+00, %2210 ], [ 0.000000e+00, %2988 ]
  %3426 = phi float [ %3422, %3396 ], [ 0.000000e+00, %2210 ], [ 0.000000e+00, %2988 ]
  %3427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3428 = extractvalue %dx.types.CBufRet.i32 %3427, 0
  %3429 = icmp eq i32 %3428, 0
  br i1 %3429, label %4458, label %3430, !dx.controlflow.hints !152

; <label>:3430                                    ; preds = %3423
  %3431 = add nsw i32 %3428, -1
  %3432 = call i32 @dx.op.binary.i32(i32 37, i32 %3431, i32 0)  ; IMax(a,b)
  br label %3433

; <label>:3433                                    ; preds = %4451, %3430
  %3434 = phi i32 [ 0, %3430 ], [ %4455, %4451 ]
  %3435 = phi float [ %3424, %3430 ], [ %4452, %4451 ]
  %3436 = phi float [ %3425, %3430 ], [ %4453, %4451 ]
  %3437 = phi float [ %3426, %3430 ], [ %4454, %4451 ]
  %3438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.i32 %3438, 0
  %3440 = call i32 @dx.op.tertiary.i32(i32 49, i32 %365, i32 %3439, i32 %3434)  ; UMad(a,b,c)
  %3441 = shl i32 %3440, 2
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = icmp eq i32 %3443, 0
  br i1 %3444, label %4451, label %3445

; <label>:3445                                    ; preds = %3433
  br label %3446

; <label>:3446                                    ; preds = %3885, %3445
  %3447 = phi i32 [ %3456, %3885 ], [ %3443, %3445 ]
  %3448 = phi float [ %3886, %3885 ], [ %3435, %3445 ]
  %3449 = phi float [ %3887, %3885 ], [ %3436, %3445 ]
  %3450 = phi float [ %3888, %3885 ], [ %3437, %3445 ]
  %3451 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3447)  ; FirstbitLo(value)
  %3452 = shl i32 %3434, 5
  %3453 = add i32 %3451, %3452
  %3454 = and i32 %3451, 31
  %3455 = shl i32 1, %3454
  %3456 = xor i32 %3455, %3447
  %3457 = mul i32 %3453, 112
  %3458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.f32 %3458, 0
  %3460 = extractvalue %dx.types.ResRet.f32 %3458, 1
  %3461 = extractvalue %dx.types.ResRet.f32 %3458, 2
  %3462 = or i32 %3457, 12
  %3463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = add i32 %3457, 16
  %3466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.ResRet.f32 %3466, 1
  %3469 = extractvalue %dx.types.ResRet.f32 %3466, 2
  %3470 = add i32 %3457, 28
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = add i32 %3457, 32
  %3474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.ResRet.f32 %3474, 1
  %3477 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3478 = add i32 %3457, 44
  %3479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3481 = add i32 %3457, 48
  %3482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.ResRet.f32 %3482, 1
  %3485 = extractvalue %dx.types.ResRet.f32 %3482, 2
  %3486 = extractvalue %dx.types.ResRet.f32 %3482, 3
  %3487 = add i32 %3457, 64
  %3488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3491 = extractvalue %dx.types.ResRet.f32 %3488, 2
  %3492 = extractvalue %dx.types.ResRet.f32 %3488, 3
  %3493 = add i32 %3457, 92
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = and i32 %3495, 65535
  %3497 = uitofp i32 %3496 to float
  %3498 = lshr i32 %3495, 16
  %3499 = uitofp i32 %3498 to float
  %3500 = and i32 %3472, 65535
  %3501 = and i32 %3472, 50331648
  %3502 = icmp eq i32 %3501, 33554432
  %3503 = fdiv fast float 1.000000e+00, %2269
  br i1 %3502, label %3504, label %3696, !dx.controlflow.hints !153

; <label>:3504                                    ; preds = %3446
  %3505 = fsub fast float %3483, %3475
  %3506 = fsub fast float %3484, %3476
  %3507 = fsub fast float %3485, %3477
  %3508 = fmul fast float %2270, %2269
  %3509 = fmul fast float %2271, %2269
  %3510 = fmul fast float %2272, %2269
  %3511 = fadd fast float %3508, %2252
  %3512 = fadd fast float %3509, %2253
  %3513 = fadd fast float %3510, %2254
  %3514 = fmul fast float %3475, 2.000000e+00
  %3515 = fmul fast float %3476, 2.000000e+00
  %3516 = fmul fast float %3477, 2.000000e+00
  %3517 = call float @dx.op.dot3.f32(i32 55, float %3514, float %3515, float %3516, float %3514, float %3515, float %3516)  ; Dot3(ax,ay,az,bx,by,bz)
  %3518 = fdiv fast float %3514, %3517
  %3519 = fdiv fast float %3515, %3517
  %3520 = fdiv fast float %3516, %3517
  %3521 = fsub fast float %2252, %3505
  %3522 = fsub fast float %2253, %3506
  %3523 = fsub fast float %2254, %3507
  %3524 = call float @dx.op.dot3.f32(i32 55, float %3521, float %3522, float %3523, float %3514, float %3515, float %3516)  ; Dot3(ax,ay,az,bx,by,bz)
  %3525 = fmul fast float %3524, %3518
  %3526 = fmul fast float %3524, %3519
  %3527 = fmul fast float %3524, %3520
  %3528 = fsub fast float %2252, %3525
  %3529 = fsub fast float %2253, %3526
  %3530 = fsub fast float %2254, %3527
  %3531 = fsub fast float %3511, %3505
  %3532 = fsub fast float %3512, %3506
  %3533 = fsub fast float %3513, %3507
  %3534 = call float @dx.op.dot3.f32(i32 55, float %3531, float %3532, float %3533, float %3514, float %3515, float %3516)  ; Dot3(ax,ay,az,bx,by,bz)
  %3535 = fmul fast float %3534, %3518
  %3536 = fmul fast float %3534, %3519
  %3537 = fmul fast float %3534, %3520
  %3538 = fsub fast float %3511, %3535
  %3539 = fsub fast float %3512, %3536
  %3540 = fsub fast float %3513, %3537
  %3541 = fsub fast float %3538, %3528
  %3542 = fsub fast float %3539, %3529
  %3543 = fsub fast float %3540, %3530
  %3544 = fsub fast float %3505, %3528
  %3545 = fsub fast float %3506, %3529
  %3546 = fsub fast float %3507, %3530
  %3547 = call float @dx.op.dot3.f32(i32 55, float %3544, float %3545, float %3546, float %3541, float %3542, float %3543)  ; Dot3(ax,ay,az,bx,by,bz)
  %3548 = call float @dx.op.dot3.f32(i32 55, float %3541, float %3542, float %3543, float %3541, float %3542, float %3543)  ; Dot3(ax,ay,az,bx,by,bz)
  %3549 = fdiv fast float %3547, %3548
  %3550 = fcmp fast une float %3528, %3538
  %3551 = fcmp fast une float %3529, %3539
  %3552 = fcmp fast une float %3530, %3540
  %3553 = or i1 %3550, %3551
  %3554 = or i1 %3552, %3553
  %3555 = select i1 %3554, float %3549, float 0.000000e+00
  %3556 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3557 = fmul fast float %3556, %3508
  %3558 = fmul fast float %3556, %3509
  %3559 = fmul fast float %3556, %3510
  %3560 = fadd fast float %3521, %3557
  %3561 = fadd fast float %3522, %3558
  %3562 = fadd fast float %3523, %3559
  %3563 = call float @dx.op.dot3.f32(i32 55, float %3560, float %3561, float %3562, float %3514, float %3515, float %3516)  ; Dot3(ax,ay,az,bx,by,bz)
  %3564 = fdiv fast float %3563, %3517
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = fmul fast float %3514, %3565
  %3567 = fmul fast float %3515, %3565
  %3568 = fmul fast float %3516, %3565
  %3569 = fadd fast float %3566, %3505
  %3570 = fadd fast float %3567, %3506
  %3571 = fadd fast float %3568, %3507
  %3572 = fmul fast float %3491, %3467
  %3573 = fmul fast float %3491, %3468
  %3574 = fmul fast float %3491, %3469
  %3575 = fadd fast float %3569, %3572
  %3576 = fadd fast float %3570, %3573
  %3577 = fadd fast float %3571, %3574
  %3578 = fsub fast float -0.000000e+00, %3490
  %3579 = fdiv fast float %3578, %3489
  %3580 = fmul fast float %3579, %3579
  %3581 = call float @dx.op.dot3.f32(i32 55, float %2270, float %2271, float %2272, float %3467, float %3468, float %3469)  ; Dot3(ax,ay,az,bx,by,bz)
  %3582 = fsub fast float %2252, %3575
  %3583 = fsub fast float %2253, %3576
  %3584 = fsub fast float %2254, %3577
  %3585 = call float @dx.op.dot3.f32(i32 55, float %3582, float %3583, float %3584, float %3467, float %3468, float %3469)  ; Dot3(ax,ay,az,bx,by,bz)
  %3586 = fsub fast float %3575, %2252
  %3587 = fsub fast float %3576, %2253
  %3588 = fsub fast float %3577, %2254
  %3589 = fmul fast float %3581, %3581
  %3590 = fsub fast float %3589, %3580
  %3591 = fmul fast float %3585, %3581
  %3592 = call float @dx.op.dot3.f32(i32 55, float %3586, float %3587, float %3588, float %2270, float %2271, float %2272)  ; Dot3(ax,ay,az,bx,by,bz)
  %3593 = fmul fast float %3592, %3580
  %3594 = fadd fast float %3593, %3591
  %3595 = fmul fast float %3594, 2.000000e+00
  %3596 = fmul fast float %3585, %3585
  %3597 = call float @dx.op.dot3.f32(i32 55, float %3586, float %3587, float %3588, float %3586, float %3587, float %3588)  ; Dot3(ax,ay,az,bx,by,bz)
  %3598 = fmul fast float %3597, %3580
  %3599 = fsub fast float %3596, %3598
  %3600 = fmul fast float %3595, %3595
  %3601 = fmul fast float %3590, 4.000000e+00
  %3602 = fmul fast float %3601, %3599
  %3603 = fsub fast float %3600, %3602
  %3604 = fcmp fast ogt float %3603, 0.000000e+00
  br i1 %3604, label %3605, label %3696, !dx.controlflow.hints !154

; <label>:3605                                    ; preds = %3504
  %3606 = call float @dx.op.unary.f32(i32 24, float %3603)  ; Sqrt(value)
  %3607 = fdiv fast float 5.000000e-01, %3590
  %3608 = fsub fast float -0.000000e+00, %3595
  %3609 = fsub fast float %3608, %3606
  %3610 = fmul fast float %3609, %3607
  %3611 = fsub fast float %3606, %3595
  %3612 = fmul fast float %3611, %3607
  %3613 = call float @dx.op.binary.f32(i32 35, float %3610, float %3612)  ; FMax(a,b)
  %3614 = call float @dx.op.binary.f32(i32 36, float %3610, float %3612)  ; FMin(a,b)
  %3615 = fsub fast float %3569, %2252
  %3616 = fsub fast float %3570, %2253
  %3617 = fsub fast float %3571, %2254
  %3618 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float %3467, float %3468, float %3469)  ; Dot3(ax,ay,az,bx,by,bz)
  %3619 = fdiv fast float %3618, %3581
  %3620 = fcmp fast ogt float %3581, 0.000000e+00
  br i1 %3620, label %3621, label %3624, !dx.controlflow.hints !155

; <label>:3621                                    ; preds = %3605
  %3622 = call float @dx.op.binary.f32(i32 36, float %3614, float %3619)  ; FMin(a,b)
  %3623 = call float @dx.op.binary.f32(i32 36, float %3613, float %3619)  ; FMin(a,b)
  br label %3627

; <label>:3624                                    ; preds = %3605
  %3625 = call float @dx.op.binary.f32(i32 35, float %3614, float %3619)  ; FMax(a,b)
  %3626 = call float @dx.op.binary.f32(i32 35, float %3613, float %3619)  ; FMax(a,b)
  br label %3627

; <label>:3627                                    ; preds = %3624, %3621
  %3628 = phi float [ %3622, %3621 ], [ %3625, %3624 ]
  %3629 = phi float [ %3623, %3621 ], [ %3626, %3624 ]
  %3630 = fcmp fast oge float %3628, 0.000000e+00
  %3631 = fcmp fast olt float %3628, %2269
  %3632 = and i1 %3630, %3631
  %3633 = fcmp fast ogt float %3629, 0.000000e+00
  %3634 = fcmp fast ole float %3629, %2269
  %3635 = and i1 %3633, %3634
  %3636 = or i1 %3632, %3635
  br i1 %3636, label %3637, label %3696, !dx.controlflow.hints !156

; <label>:3637                                    ; preds = %3627
  %3638 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3628)  ; FMax(a,b)
  %3639 = call float @dx.op.binary.f32(i32 36, float %2269, float %3629)  ; FMin(a,b)
  br i1 %3620, label %3640, label %3662, !dx.controlflow.hints !157

; <label>:3640                                    ; preds = %3637
  %3641 = fmul fast float %3639, %2270
  %3642 = fmul fast float %3639, %2271
  %3643 = fmul fast float %3639, %2272
  %3644 = fsub fast float %3586, %3641
  %3645 = fsub fast float %3587, %3642
  %3646 = fsub fast float %3588, %3643
  %3647 = call float @dx.op.dot3.f32(i32 55, float %3644, float %3645, float %3646, float %3644, float %3645, float %3646)  ; Dot3(ax,ay,az,bx,by,bz)
  %3648 = call float @dx.op.unary.f32(i32 25, float %3647)  ; Rsqrt(value)
  %3649 = fmul fast float %3648, %3644
  %3650 = fmul fast float %3648, %3645
  %3651 = fmul fast float %3648, %3646
  %3652 = call float @dx.op.dot3.f32(i32 55, float %3649, float %3650, float %3651, float %3467, float %3468, float %3469)  ; Dot3(ax,ay,az,bx,by,bz)
  %3653 = fmul fast float %3652, %3489
  %3654 = fadd fast float %3653, %3490
  %3655 = fcmp fast olt float %3654, 0xBF1A36E2E0000000
  %3656 = select i1 %3655, float 0.000000e+00, float %3638
  %3657 = select i1 %3655, float %3638, float %3639
  %3658 = fsub fast float %3656, %3657
  %3659 = call float @dx.op.unary.f32(i32 6, float %3658)  ; FAbs(value)
  %3660 = fcmp fast olt float %3659, 0x3F1A36E2E0000000
  br i1 %3660, label %3661, label %3684, !dx.controlflow.hints !158

; <label>:3661                                    ; preds = %3640
  br label %3684

; <label>:3662                                    ; preds = %3637
  %3663 = fmul fast float %3638, %2270
  %3664 = fmul fast float %3638, %2271
  %3665 = fmul fast float %3638, %2272
  %3666 = fsub fast float %3586, %3663
  %3667 = fsub fast float %3587, %3664
  %3668 = fsub fast float %3588, %3665
  %3669 = call float @dx.op.dot3.f32(i32 55, float %3666, float %3667, float %3668, float %3666, float %3667, float %3668)  ; Dot3(ax,ay,az,bx,by,bz)
  %3670 = call float @dx.op.unary.f32(i32 25, float %3669)  ; Rsqrt(value)
  %3671 = fmul fast float %3670, %3666
  %3672 = fmul fast float %3670, %3667
  %3673 = fmul fast float %3670, %3668
  %3674 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3672, float %3673, float %3467, float %3468, float %3469)  ; Dot3(ax,ay,az,bx,by,bz)
  %3675 = fmul fast float %3674, %3489
  %3676 = fadd fast float %3675, %3490
  %3677 = fcmp fast olt float %3676, 0xBF1A36E2E0000000
  %3678 = select i1 %3677, float %3639, float %3638
  %3679 = select i1 %3677, float %2269, float %3639
  %3680 = fsub fast float %3678, %3679
  %3681 = call float @dx.op.unary.f32(i32 6, float %3680)  ; FAbs(value)
  %3682 = fcmp fast olt float %3681, 0x3F1A36E2E0000000
  br i1 %3682, label %3683, label %3684, !dx.controlflow.hints !159

; <label>:3683                                    ; preds = %3662
  br label %3684

; <label>:3684                                    ; preds = %3683, %3662, %3661, %3640
  %3685 = phi float [ 0.000000e+00, %3661 ], [ %3656, %3640 ], [ %3678, %3683 ], [ %3678, %3662 ]
  %3686 = phi float [ %3657, %3661 ], [ %3657, %3640 ], [ %2269, %3683 ], [ %3679, %3662 ]
  %3687 = fmul fast float %3685, %2270
  %3688 = fmul fast float %3685, %2271
  %3689 = fmul fast float %3685, %2272
  %3690 = fadd fast float %3687, %2252
  %3691 = fadd fast float %3688, %2253
  %3692 = fadd fast float %3689, %2254
  %3693 = fsub fast float %3686, %3685
  %3694 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3693)  ; FMax(a,b)
  %3695 = fmul fast float %3694, %3503
  br label %3696

; <label>:3696                                    ; preds = %3684, %3627, %3504, %3446
  %3697 = phi float [ %3575, %3684 ], [ %3575, %3627 ], [ %3575, %3504 ], [ %3483, %3446 ]
  %3698 = phi float [ %3576, %3684 ], [ %3576, %3627 ], [ %3576, %3504 ], [ %3484, %3446 ]
  %3699 = phi float [ %3577, %3684 ], [ %3577, %3627 ], [ %3577, %3504 ], [ %3485, %3446 ]
  %3700 = phi float [ %3690, %3684 ], [ %2252, %3627 ], [ %2252, %3504 ], [ %2252, %3446 ]
  %3701 = phi float [ %3691, %3684 ], [ %2253, %3627 ], [ %2253, %3504 ], [ %2253, %3446 ]
  %3702 = phi float [ %3692, %3684 ], [ %2254, %3627 ], [ %2254, %3504 ], [ %2254, %3446 ]
  %3703 = phi float [ %3694, %3684 ], [ %2269, %3627 ], [ %2269, %3504 ], [ %2269, %3446 ]
  %3704 = phi float [ %3695, %3684 ], [ 1.000000e+00, %3627 ], [ 1.000000e+00, %3504 ], [ 1.000000e+00, %3446 ]
  %3705 = fsub fast float %3697, %3700
  %3706 = fsub fast float %3698, %3701
  %3707 = fsub fast float %3699, %3702
  %3708 = call float @dx.op.dot3.f32(i32 55, float %3705, float %3706, float %3707, float %2270, float %2271, float %2272)  ; Dot3(ax,ay,az,bx,by,bz)
  %3709 = call float @dx.op.binary.f32(i32 35, float %3708, float 0.000000e+00)  ; FMax(a,b)
  %3710 = call float @dx.op.binary.f32(i32 36, float %3709, float %3703)  ; FMin(a,b)
  %3711 = fmul fast float %3710, %2270
  %3712 = fmul fast float %3710, %2271
  %3713 = fmul fast float %3710, %2272
  %3714 = fsub fast float %3700, %3697
  %3715 = fadd fast float %3714, %3711
  %3716 = fsub fast float %3701, %3698
  %3717 = fadd fast float %3716, %3712
  %3718 = fsub fast float %3702, %3699
  %3719 = fadd fast float %3718, %3713
  %3720 = fmul fast float %3715, %3715
  %3721 = fmul fast float %3717, %3717
  %3722 = fadd fast float %3720, %3721
  %3723 = fmul fast float %3719, %3719
  %3724 = fadd fast float %3722, %3723
  %3725 = call float @dx.op.unary.f32(i32 24, float %3724)  ; Sqrt(value)
  %3726 = fsub fast float -0.000000e+00, %3710
  %3727 = call float @dx.op.unary.f32(i32 6, float %3726)  ; FAbs(value)
  %3728 = fadd fast float %3727, 0x3DDB7CDFE0000000
  %3729 = fcmp fast oge float %3725, 0.000000e+00
  %3730 = fsub fast float -0.000000e+00, %3728
  %3731 = select i1 %3729, float %3730, float %3728
  %3732 = fadd fast float %3731, %3725
  %3733 = fsub fast float -0.000000e+00, %3725
  %3734 = select i1 %3729, float %3725, float %3733
  %3735 = fadd fast float %3728, %3734
  %3736 = fdiv fast float %3732, %3735
  %3737 = select i1 %3729, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %3738 = fmul fast float %3736, %3736
  %3739 = fmul fast float %3738, 0x3FC9205BC0000000
  %3740 = fadd fast float %3739, 0xBFEF6A1620000000
  %3741 = fmul fast float %3740, %3736
  %3742 = fadd fast float %3741, %3737
  %3743 = fcmp ole float %3710, -0.000000e+00
  %3744 = fsub fast float -0.000000e+00, %3742
  %3745 = select i1 %3743, float %3742, float %3744
  %3746 = fsub fast float %3703, %3710
  %3747 = call float @dx.op.unary.f32(i32 6, float %3746)  ; FAbs(value)
  %3748 = fadd fast float %3747, 0x3DDB7CDFE0000000
  %3749 = fsub fast float -0.000000e+00, %3748
  %3750 = select i1 %3729, float %3749, float %3748
  %3751 = fadd fast float %3750, %3725
  %3752 = fadd fast float %3748, %3734
  %3753 = fdiv fast float %3751, %3752
  %3754 = fmul fast float %3753, %3753
  %3755 = fmul fast float %3754, 0x3FC9205BC0000000
  %3756 = fadd fast float %3755, 0xBFEF6A1620000000
  %3757 = fmul fast float %3756, %3753
  %3758 = fadd fast float %3757, %3737
  %3759 = fcmp fast oge float %3746, 0.000000e+00
  %3760 = fsub fast float -0.000000e+00, %3758
  %3761 = select i1 %3759, float %3758, float %3760
  %3762 = fsub fast float %3761, %3745
  %3763 = fmul fast float %3762, %130
  %3764 = fadd fast float %3763, %3745
  %3765 = call float @dx.op.unary.f32(i32 14, float %3764)  ; Tan(value)
  %3766 = fmul fast float %3765, %3725
  %3767 = fadd fast float %3766, %3710
  %3768 = fmul fast float %3725, %3725
  %3769 = fmul fast float %3766, %3766
  %3770 = fadd fast float %3769, %3768
  %3771 = fmul fast float %3762, %3770
  %3772 = fdiv fast float %3725, %3771
  %3773 = fdiv fast float 1.000000e+00, %3772
  %3774 = fmul fast float %3704, %3503
  %3775 = fmul fast float %3774, %3773
  %3776 = fmul fast float %3767, %2270
  %3777 = fmul fast float %3767, %2271
  %3778 = fmul fast float %3767, %2272
  %3779 = fadd fast float %3776, %3700
  %3780 = fadd fast float %3777, %3701
  %3781 = fadd fast float %3778, %3702
  %3782 = call float @dx.op.dot3.f32(i32 55, float %3475, float %3476, float %3477, float %3475, float %3476, float %3477)  ; Dot3(ax,ay,az,bx,by,bz)
  %3783 = fsub fast float %3779, %3483
  %3784 = fsub fast float %3780, %3484
  %3785 = fsub fast float %3781, %3485
  %3786 = call float @dx.op.dot3.f32(i32 55, float %3783, float %3784, float %3785, float %3475, float %3476, float %3477)  ; Dot3(ax,ay,az,bx,by,bz)
  %3787 = fdiv fast float %3786, %3782
  %3788 = call float @dx.op.binary.f32(i32 35, float %3787, float -1.000000e+00)  ; FMax(a,b)
  %3789 = call float @dx.op.binary.f32(i32 36, float %3788, float 1.000000e+00)  ; FMin(a,b)
  %3790 = fmul fast float %3789, %3475
  %3791 = fmul fast float %3789, %3476
  %3792 = fmul fast float %3789, %3477
  %3793 = fadd fast float %3790, %3483
  %3794 = fadd fast float %3791, %3484
  %3795 = fadd fast float %3792, %3485
  %3796 = fsub fast float %3793, %3779
  %3797 = fsub fast float %3794, %3780
  %3798 = fsub fast float %3795, %3781
  %3799 = call float @dx.op.dot3.f32(i32 55, float %3796, float %3797, float %3798, float %3796, float %3797, float %3798)  ; Dot3(ax,ay,az,bx,by,bz)
  %3800 = call float @dx.op.unary.f32(i32 24, float %3799)  ; Sqrt(value)
  %3801 = fdiv fast float 1.000000e+00, %3800
  %3802 = fmul fast float %3796, %3801
  %3803 = fmul fast float %3797, %3801
  %3804 = fmul fast float %3798, %3801
  %3805 = fadd fast float %3800, %3464
  %3806 = fdiv fast float 1.000000e+00, %3805
  %3807 = fmul float %3480, %3806
  %3808 = fmul float %3807, %3807
  %3809 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  br i1 %3502, label %3810, label %3834, !dx.controlflow.hints !160

; <label>:3810                                    ; preds = %3696
  %3811 = fmul fast float %3491, %3467
  %3812 = fmul fast float %3491, %3468
  %3813 = fmul fast float %3491, %3469
  %3814 = fsub fast float %3811, %3779
  %3815 = fadd fast float %3814, %3793
  %3816 = fsub fast float %3812, %3780
  %3817 = fadd fast float %3816, %3794
  %3818 = fsub fast float %3813, %3781
  %3819 = fadd fast float %3818, %3795
  %3820 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3817, float %3819, float %3815, float %3817, float %3819)  ; Dot3(ax,ay,az,bx,by,bz)
  %3821 = call float @dx.op.unary.f32(i32 25, float %3820)  ; Rsqrt(value)
  %3822 = fmul fast float %3821, %3815
  %3823 = fmul fast float %3821, %3817
  %3824 = fmul fast float %3821, %3819
  %3825 = fsub fast float %3779, %3793
  %3826 = fsub fast float %3780, %3794
  %3827 = fsub fast float %3781, %3795
  %3828 = fsub fast float -0.000000e+00, %3825
  %3829 = fsub fast float -0.000000e+00, %3826
  %3830 = fsub fast float -0.000000e+00, %3827
  %3831 = call float @dx.op.dot3.f32(i32 55, float %3828, float %3829, float %3830, float %3467, float %3468, float %3469)  ; Dot3(ax,ay,az,bx,by,bz)
  %3832 = fcmp fast ogt float %3831, 0.000000e+00
  %3833 = uitofp i1 %3832 to float
  br label %3834

; <label>:3834                                    ; preds = %3810, %3696
  %3835 = phi float [ %3833, %3810 ], [ 1.000000e+00, %3696 ]
  %3836 = phi float [ %3822, %3810 ], [ %3802, %3696 ]
  %3837 = phi float [ %3823, %3810 ], [ %3803, %3696 ]
  %3838 = phi float [ %3824, %3810 ], [ %3804, %3696 ]
  %3839 = call float @dx.op.dot3.f32(i32 55, float %3467, float %3468, float %3469, float %3836, float %3837, float %3838)  ; Dot3(ax,ay,az,bx,by,bz)
  %3840 = fmul fast float %3839, %3839
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, 5.000000e-01
  %3844 = fcmp fast ogt float %3839, 0.000000e+00
  %3845 = fsub fast float 1.000000e+00, %3843
  %3846 = select i1 %3844, float %3843, float %3845
  %3847 = fmul fast float %3846, %3499
  %3848 = fadd fast float %3847, %3497
  %3849 = fmul fast float %3848, 0x3EF0001000000000
  %3850 = fsub fast float %3793, %438
  %3851 = fsub fast float %3794, %439
  %3852 = fsub fast float %3795, %440
  %3853 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3851, float %3852, float %3850, float %3851, float %3852)  ; Dot3(ax,ay,az,bx,by,bz)
  %3854 = fmul fast float %2222, %2222
  %3855 = fsub fast float %3853, %3854
  %3856 = fdiv fast float %3855, %3853
  %3857 = call float @dx.op.unary.f32(i32 24, float %3856)  ; Sqrt(value)
  %3858 = fsub fast float 1.000000e+00, %3857
  %3859 = fcmp fast olt float %3853, %3854
  %3860 = fmul fast float %3858, 2.560000e+02
  %3861 = select i1 %3859, float 2.560000e+02, float %3860
  %3862 = call float @dx.op.unary.f32(i32 23, float %3861)  ; Log(value)
  %3863 = call float @dx.op.binary.f32(i32 36, float %3862, float 7.000000e+00)  ; FMin(a,b)
  %3864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %44, float %3849, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %3863)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = fmul fast float %3839, %3489
  %3867 = fadd fast float %3866, %3490
  %3868 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3869 = select i1 %3502, float 1.000000e+00, float %3868
  %3870 = select i1 %3502, float %3868, float 1.000000e+00
  %3871 = fmul fast float %3800, %3486
  %3872 = fsub fast float 1.000000e+00, %3871
  %3873 = fmul fast float %3872, %3492
  %3874 = call float @dx.op.unary.f32(i32 7, float %3873)  ; Saturate(value)
  %3875 = fmul fast float %3874, %3870
  %3876 = fmul fast float %3875, 2.000000e+00
  %3877 = fsub fast float 3.000000e+00, %3876
  %3878 = fmul fast float %3865, %3835
  %3879 = fmul fast float %3875, %3875
  %3880 = fmul fast float %3879, %3878
  %3881 = fmul fast float %3880, %3877
  %3882 = call float @dx.op.binary.f32(i32 36, float %3881, float %3881)  ; FMin(a,b)
  %3883 = call float @dx.op.binary.f32(i32 36, float %3881, float %3882)  ; FMin(a,b)
  %3884 = fcmp fast ogt float %3883, 0.000000e+00
  br i1 %3884, label %3890, label %3885, !dx.controlflow.hints !161

; <label>:3885                                    ; preds = %4414, %3978, %3834
  %3886 = phi float [ %4447, %4414 ], [ %3448, %3978 ], [ %3448, %3834 ]
  %3887 = phi float [ %4448, %4414 ], [ %3449, %3978 ], [ %3449, %3834 ]
  %3888 = phi float [ %4449, %4414 ], [ %3450, %3978 ], [ %3450, %3834 ]
  %3889 = icmp eq i32 %3447, %3455
  br i1 %3889, label %4450, label %3446

; <label>:3890                                    ; preds = %3834
  %3891 = icmp eq i32 %3500, 255
  br i1 %3891, label %3978, label %3892, !dx.controlflow.hints !162

; <label>:3892                                    ; preds = %3890
  %3893 = mul nuw nsw i32 %3500, 176
  %3894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = extractvalue %dx.types.ResRet.f32 %3894, 1
  %3897 = extractvalue %dx.types.ResRet.f32 %3894, 2
  %3898 = extractvalue %dx.types.ResRet.f32 %3894, 3
  %3899 = add nuw nsw i32 %3893, 16
  %3900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.ResRet.f32 %3900, 1
  %3903 = add nuw nsw i32 %3893, 32
  %3904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.f32 %3904, 0
  %3906 = extractvalue %dx.types.ResRet.f32 %3904, 2
  %3907 = add nuw nsw i32 %3893, 48
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3912 = extractvalue %dx.types.ResRet.f32 %3908, 3
  %3913 = add nuw nsw i32 %3893, 64
  %3914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3914, 2
  %3918 = extractvalue %dx.types.ResRet.f32 %3914, 3
  %3919 = add nuw nsw i32 %3893, 80
  %3920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.ResRet.f32 %3920, 2
  %3924 = extractvalue %dx.types.ResRet.f32 %3920, 3
  %3925 = add nuw nsw i32 %3893, 96
  %3926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3926, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3926, 2
  %3930 = extractvalue %dx.types.ResRet.f32 %3926, 3
  %3931 = bitcast float %3902 to i32
  %3932 = fmul fast float %3906, %3802
  %3933 = fmul fast float %3906, %3803
  %3934 = fmul fast float %3906, %3804
  %3935 = fsub fast float %3779, %3932
  %3936 = fsub fast float %3780, %3933
  %3937 = fsub fast float %3781, %3934
  %3938 = fmul fast float %3935, %3909
  %3939 = call float @dx.op.tertiary.f32(i32 46, float %3936, float %3915, float %3938)  ; FMad(a,b,c)
  %3940 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %3921, float %3939)  ; FMad(a,b,c)
  %3941 = fadd fast float %3940, %3927
  %3942 = fmul fast float %3935, %3910
  %3943 = call float @dx.op.tertiary.f32(i32 46, float %3936, float %3916, float %3942)  ; FMad(a,b,c)
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %3922, float %3943)  ; FMad(a,b,c)
  %3945 = fadd fast float %3944, %3928
  %3946 = fmul fast float %3935, %3911
  %3947 = call float @dx.op.tertiary.f32(i32 46, float %3936, float %3917, float %3946)  ; FMad(a,b,c)
  %3948 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %3923, float %3947)  ; FMad(a,b,c)
  %3949 = fadd fast float %3948, %3929
  %3950 = fmul fast float %3935, %3912
  %3951 = call float @dx.op.tertiary.f32(i32 46, float %3936, float %3918, float %3950)  ; FMad(a,b,c)
  %3952 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %3924, float %3951)  ; FMad(a,b,c)
  %3953 = fadd fast float %3952, %3930
  %3954 = fdiv fast float %3941, %3953
  %3955 = fdiv fast float %3945, %3953
  %3956 = fdiv fast float %3949, %3953
  %3957 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3956)  ; FMax(a,b)
  %3958 = fmul fast float %3897, 5.000000e-01
  %3959 = call float @dx.op.tertiary.f32(i32 46, float %3958, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %3960 = fadd fast float %3959, %3954
  %3961 = fadd fast float %3955, %3958
  %3962 = fmul fast float %3960, %3901
  %3963 = fmul fast float %3961, %3901
  %3964 = call float @dx.op.binary.f32(i32 35, float %3962, float %3897)  ; FMax(a,b)
  %3965 = call float @dx.op.binary.f32(i32 35, float %3963, float %3897)  ; FMax(a,b)
  %3966 = call float @dx.op.binary.f32(i32 36, float %3964, float %3898)  ; FMin(a,b)
  %3967 = call float @dx.op.binary.f32(i32 36, float %3965, float %3898)  ; FMin(a,b)
  %3968 = fadd fast float %3966, %3895
  %3969 = fadd fast float %3967, %3896
  %3970 = uitofp i32 %3931 to float
  %3971 = fadd fast float %3957, %3905
  %3972 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %3968, float %3969, float %3970, float undef, i32 0, i32 0, i32 undef, float %3971)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3973 = extractvalue %dx.types.ResRet.f32 %3972, 0
  %3974 = fadd fast float %3973, -1.000000e+00
  %3975 = fmul fast float %3974, %3869
  %3976 = fadd fast float %3975, 1.000000e+00
  %3977 = fmul fast float %3976, %3881
  br label %3978

; <label>:3978                                    ; preds = %3892, %3890
  %3979 = phi float [ %3977, %3892 ], [ %3881, %3890 ]
  %3980 = call float @dx.op.binary.f32(i32 36, float %3979, float %3979)  ; FMin(a,b)
  %3981 = call float @dx.op.binary.f32(i32 36, float %3979, float %3980)  ; FMin(a,b)
  %3982 = fcmp fast ogt float %3981, 0.000000e+00
  br i1 %3982, label %3983, label %3885, !dx.controlflow.hints !163

; <label>:3983                                    ; preds = %3978
  br i1 %257, label %3984, label %4414, !dx.controlflow.hints !148

; <label>:3984                                    ; preds = %3983
  %3985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.i32 %3985, 0
  %3987 = and i32 %3986, 64
  %3988 = icmp ne i32 %3987, 0
  %3989 = fsub fast float %3485, %2273
  %3990 = fcmp fast ogt float %3989, 0.000000e+00
  %3991 = fsub fast float %208, %246
  %3992 = fcmp fast ogt float %3991, 0.000000e+00
  %3993 = xor i1 %3992, %3990
  %3994 = fsub fast float %2273, %3485
  %3995 = fmul fast float %3994, 2.000000e+00
  %3996 = fadd fast float %3995, %3485
  %3997 = select i1 %3993, float %3485, float %3996
  %3998 = fsub fast float %3483, %2227
  %3999 = fsub fast float %3484, %2228
  %4000 = fsub fast float %3997, %2229
  %4001 = call float @dx.op.dot3.f32(i32 55, float %3998, float %3999, float %4000, float %3998, float %3999, float %4000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4002 = call float @dx.op.unary.f32(i32 25, float %4001)  ; Rsqrt(value)
  %4003 = fmul fast float %4002, %3998
  %4004 = fmul fast float %4002, %3999
  %4005 = fmul fast float %4002, %4000
  %4006 = fsub fast float %246, %208
  %4007 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4006)  ; Dot3(ax,ay,az,bx,by,bz)
  %4008 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4003, float %4004, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = fdiv fast float 1.000000e+00, %4008
  %4010 = fmul fast float %4009, %4007
  %4011 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3991, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = fcmp fast ogt float %4011, 0.000000e+00
  %4013 = fcmp fast olt float %4011, 0.000000e+00
  %4014 = zext i1 %4012 to i32
  %4015 = zext i1 %4013 to i32
  %4016 = sub nsw i32 %4014, %4015
  %4017 = sitofp i32 %4016 to float
  %4018 = fsub fast float %3997, %2273
  %4019 = call float @dx.op.dot3.f32(i32 55, float %3998, float %3999, float %4018, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4020 = fcmp fast ogt float %4019, 0.000000e+00
  %4021 = fcmp fast olt float %4019, 0.000000e+00
  %4022 = zext i1 %4020 to i32
  %4023 = zext i1 %4021 to i32
  %4024 = sub nsw i32 %4022, %4023
  %4025 = sitofp i32 %4024 to float
  %4026 = fcmp fast une float %4017, %4025
  br i1 %4026, label %4027, label %4037, !dx.controlflow.hints !149

; <label>:4027                                    ; preds = %3984
  %4028 = fmul fast float %4010, %4005
  %4029 = fmul fast float %4010, %4004
  %4030 = fmul fast float %4010, %4003
  %4031 = fmul fast float %4030, %4030
  %4032 = fmul fast float %4029, %4029
  %4033 = fadd fast float %4031, %4032
  %4034 = fmul fast float %4028, %4028
  %4035 = fadd fast float %4033, %4034
  %4036 = call float @dx.op.unary.f32(i32 24, float %4035)  ; Sqrt(value)
  br label %4049

; <label>:4037                                    ; preds = %3984
  %4038 = icmp slt i32 %4016, 0
  br i1 %4038, label %4039, label %4049, !dx.controlflow.hints !150

; <label>:4039                                    ; preds = %4037
  %4040 = fsub fast float %2227, %3483
  %4041 = fsub fast float %2228, %3484
  %4042 = fsub fast float %2229, %3997
  %4043 = fmul fast float %4040, %4040
  %4044 = fmul fast float %4041, %4041
  %4045 = fadd fast float %4043, %4044
  %4046 = fmul fast float %4042, %4042
  %4047 = fadd fast float %4045, %4046
  %4048 = call float @dx.op.unary.f32(i32 24, float %4047)  ; Sqrt(value)
  br label %4049

; <label>:4049                                    ; preds = %4039, %4037, %4027
  %4050 = phi float [ %4036, %4027 ], [ %4048, %4039 ], [ 0.000000e+00, %4037 ]
  %4051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.i32 %4051, 1
  %4053 = icmp ne i32 %4052, 0
  %4054 = and i1 %3993, %4053
  %4055 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4005, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4056 = fmul fast float %4055, %4055
  %4057 = fsub fast float 1.000000e+00, %4056
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.CBufRet.f32 %4058, 1
  %4061 = extractvalue %dx.types.CBufRet.f32 %4058, 2
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 0
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4069 = extractvalue %dx.types.CBufRet.f32 %4064, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4071 = extractvalue %dx.types.CBufRet.f32 %4062, 3
  %4072 = extractvalue %dx.types.CBufRet.f32 %4064, 3
  %4073 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4074 = fadd fast float %4059, %2227
  %4075 = fadd fast float %4060, %2228
  %4076 = fadd fast float %4061, %2229
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4080 = extractvalue %dx.types.CBufRet.f32 %4077, 2
  %4081 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  br i1 %4054, label %4082, label %4275, !dx.controlflow.hints !151

; <label>:4082                                    ; preds = %4049
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4085 = fmul fast float %4084, %4084
  %4086 = fmul fast float %4085, %4057
  %4087 = fsub fast float 1.000000e+00, %4086
  %4088 = fcmp fast oge float %4087, 0.000000e+00
  %4089 = fmul fast float %4084, %4003
  %4090 = fmul fast float %4084, %4004
  %4091 = fmul fast float %4084, %4005
  %4092 = call float @dx.op.unary.f32(i32 24, float %4087)  ; Sqrt(value)
  %4093 = fmul fast float %4084, %4055
  %4094 = fsub fast float -0.000000e+00, %4092
  %4095 = fsub fast float %4094, %4093
  %4096 = fadd fast float %4095, %4091
  %4097 = select i1 %4088, float %4089, float 0.000000e+00
  %4098 = select i1 %4088, float %4090, float 0.000000e+00
  %4099 = select i1 %4088, float %4096, float 0.000000e+00
  %4100 = fmul fast float %4097, %4050
  %4101 = fmul fast float %4098, %4050
  %4102 = fmul fast float %4099, %4050
  %4103 = fadd fast float %4074, %4100
  %4104 = fadd fast float %4103, %4071
  %4105 = fadd fast float %4075, %4101
  %4106 = fadd fast float %4105, %4072
  %4107 = fadd fast float %4076, %4102
  %4108 = fadd fast float %4107, %4073
  %4109 = fmul fast float %4104, %4063
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4065, float %4109)  ; FMad(a,b,c)
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4108, float %4067, float %4110)  ; FMad(a,b,c)
  %4112 = fmul fast float %4104, %4068
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4069, float %4112)  ; FMad(a,b,c)
  %4114 = call float @dx.op.tertiary.f32(i32 46, float %4108, float %4070, float %4113)  ; FMad(a,b,c)
  %4115 = fsub fast float %4111, %4071
  %4116 = fsub fast float %4115, %4078
  %4117 = fadd fast float %4116, %4080
  %4118 = fsub fast float %4114, %4072
  %4119 = fsub fast float %4118, %4079
  %4120 = fadd fast float %4119, %4080
  %4121 = fmul fast float %4117, %4081
  %4122 = fmul fast float %4120, %4081
  %4123 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4124 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4125 = fsub fast float 1.000000e+00, %4123
  %4126 = fsub fast float 1.000000e+00, %4124
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = fmul fast float %4128, 0x3FBC5ABC00000000
  %4130 = extractvalue %dx.types.CBufRet.f32 %4083, 1
  %4131 = fmul fast float %4130, %4130
  %4132 = fmul fast float %4131, %4057
  %4133 = fsub fast float 1.000000e+00, %4132
  %4134 = fcmp fast oge float %4133, 0.000000e+00
  %4135 = fmul fast float %4130, %4003
  %4136 = fmul fast float %4130, %4004
  %4137 = fmul fast float %4130, %4005
  %4138 = call float @dx.op.unary.f32(i32 24, float %4133)  ; Sqrt(value)
  %4139 = fmul fast float %4130, %4055
  %4140 = fsub fast float -0.000000e+00, %4138
  %4141 = fsub fast float %4140, %4139
  %4142 = fadd fast float %4141, %4137
  %4143 = select i1 %4134, float %4135, float 0.000000e+00
  %4144 = select i1 %4134, float %4136, float 0.000000e+00
  %4145 = select i1 %4134, float %4142, float 0.000000e+00
  %4146 = fmul fast float %4143, %4050
  %4147 = fmul fast float %4144, %4050
  %4148 = fmul fast float %4145, %4050
  %4149 = fadd fast float %4074, %4146
  %4150 = fadd fast float %4149, %4071
  %4151 = fadd fast float %4075, %4147
  %4152 = fadd fast float %4151, %4072
  %4153 = fadd fast float %4076, %4148
  %4154 = fadd fast float %4153, %4073
  %4155 = fmul fast float %4150, %4063
  %4156 = call float @dx.op.tertiary.f32(i32 46, float %4152, float %4065, float %4155)  ; FMad(a,b,c)
  %4157 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4067, float %4156)  ; FMad(a,b,c)
  %4158 = fmul fast float %4150, %4068
  %4159 = call float @dx.op.tertiary.f32(i32 46, float %4152, float %4069, float %4158)  ; FMad(a,b,c)
  %4160 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4070, float %4159)  ; FMad(a,b,c)
  %4161 = fsub fast float %4157, %4071
  %4162 = fsub fast float %4161, %4078
  %4163 = fadd fast float %4162, %4080
  %4164 = fsub fast float %4160, %4072
  %4165 = fsub fast float %4164, %4079
  %4166 = fadd fast float %4165, %4080
  %4167 = fmul fast float %4163, %4081
  %4168 = fmul fast float %4166, %4081
  %4169 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4170 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4171 = fsub fast float 1.000000e+00, %4169
  %4172 = fsub fast float 1.000000e+00, %4170
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %4171, float %4172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = fmul fast float %4174, 0x3F9E4BBD60000000
  %4176 = extractvalue %dx.types.CBufRet.f32 %4083, 2
  %4177 = fmul fast float %4176, %4176
  %4178 = fmul fast float %4177, %4057
  %4179 = fsub fast float 1.000000e+00, %4178
  %4180 = fcmp fast oge float %4179, 0.000000e+00
  %4181 = fmul fast float %4176, %4003
  %4182 = fmul fast float %4176, %4004
  %4183 = fmul fast float %4176, %4005
  %4184 = call float @dx.op.unary.f32(i32 24, float %4179)  ; Sqrt(value)
  %4185 = fmul fast float %4176, %4055
  %4186 = fsub fast float -0.000000e+00, %4184
  %4187 = fsub fast float %4186, %4185
  %4188 = fadd fast float %4187, %4183
  %4189 = select i1 %4180, float %4181, float 0.000000e+00
  %4190 = select i1 %4180, float %4182, float 0.000000e+00
  %4191 = select i1 %4180, float %4188, float 0.000000e+00
  %4192 = fmul fast float %4189, %4050
  %4193 = fmul fast float %4190, %4050
  %4194 = fmul fast float %4191, %4050
  %4195 = fadd fast float %4074, %4192
  %4196 = fadd fast float %4195, %4071
  %4197 = fadd fast float %4075, %4193
  %4198 = fadd fast float %4197, %4072
  %4199 = fadd fast float %4076, %4194
  %4200 = fadd fast float %4199, %4073
  %4201 = fmul fast float %4196, %4063
  %4202 = call float @dx.op.tertiary.f32(i32 46, float %4198, float %4065, float %4201)  ; FMad(a,b,c)
  %4203 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4067, float %4202)  ; FMad(a,b,c)
  %4204 = fmul fast float %4196, %4068
  %4205 = call float @dx.op.tertiary.f32(i32 46, float %4198, float %4069, float %4204)  ; FMad(a,b,c)
  %4206 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4070, float %4205)  ; FMad(a,b,c)
  %4207 = fsub fast float %4203, %4071
  %4208 = fsub fast float %4207, %4078
  %4209 = fadd fast float %4208, %4080
  %4210 = fsub fast float %4206, %4072
  %4211 = fsub fast float %4210, %4079
  %4212 = fadd fast float %4211, %4080
  %4213 = fmul fast float %4209, %4081
  %4214 = fmul fast float %4212, %4081
  %4215 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4216 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4217 = fsub fast float 1.000000e+00, %4215
  %4218 = fsub fast float 1.000000e+00, %4216
  %4219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %4217, float %4218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = fmul fast float %4220, 0x3FDDEACB00000000
  %4222 = fadd fast float %4221, %4175
  %4223 = extractvalue %dx.types.CBufRet.f32 %4083, 3
  %4224 = fmul fast float %4223, %4223
  %4225 = fmul fast float %4224, %4057
  %4226 = fsub fast float 1.000000e+00, %4225
  %4227 = fcmp fast oge float %4226, 0.000000e+00
  %4228 = fmul fast float %4223, %4003
  %4229 = fmul fast float %4223, %4004
  %4230 = fmul fast float %4223, %4005
  %4231 = call float @dx.op.unary.f32(i32 24, float %4226)  ; Sqrt(value)
  %4232 = fmul fast float %4223, %4055
  %4233 = fsub fast float -0.000000e+00, %4231
  %4234 = fsub fast float %4233, %4232
  %4235 = fadd fast float %4234, %4230
  %4236 = select i1 %4227, float %4228, float 0.000000e+00
  %4237 = select i1 %4227, float %4229, float 0.000000e+00
  %4238 = select i1 %4227, float %4235, float 0.000000e+00
  %4239 = fmul fast float %4236, %4050
  %4240 = fmul fast float %4237, %4050
  %4241 = fmul fast float %4238, %4050
  %4242 = fadd fast float %4074, %4239
  %4243 = fadd fast float %4242, %4071
  %4244 = fadd fast float %4075, %4240
  %4245 = fadd fast float %4244, %4072
  %4246 = fadd fast float %4076, %4241
  %4247 = fadd fast float %4246, %4073
  %4248 = fmul fast float %4243, %4063
  %4249 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4065, float %4248)  ; FMad(a,b,c)
  %4250 = call float @dx.op.tertiary.f32(i32 46, float %4247, float %4067, float %4249)  ; FMad(a,b,c)
  %4251 = fmul fast float %4243, %4068
  %4252 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4069, float %4251)  ; FMad(a,b,c)
  %4253 = call float @dx.op.tertiary.f32(i32 46, float %4247, float %4070, float %4252)  ; FMad(a,b,c)
  %4254 = fsub fast float %4250, %4071
  %4255 = fsub fast float %4254, %4078
  %4256 = fadd fast float %4255, %4080
  %4257 = fsub fast float %4253, %4072
  %4258 = fsub fast float %4257, %4079
  %4259 = fadd fast float %4258, %4080
  %4260 = fmul fast float %4256, %4081
  %4261 = fmul fast float %4259, %4081
  %4262 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4263 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4264 = fsub fast float 1.000000e+00, %4262
  %4265 = fsub fast float 1.000000e+00, %4263
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %4264, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = fmul fast float %4267, 0x3FE0183CA0000000
  %4269 = fmul fast float %4267, 0x3FB51033E0000000
  %4270 = fadd fast float %4222, %4268
  %4271 = fadd fast float %4220, %4174
  %4272 = fmul fast float %4271, 0x3FD9D2A200000000
  %4273 = fadd fast float %4269, %4129
  %4274 = fadd fast float %4273, %4272
  br label %4321

; <label>:4275                                    ; preds = %4049
  %4276 = fmul fast float %4057, 0x3FE2024E20000000
  %4277 = fsub fast float 1.000000e+00, %4276
  %4278 = fcmp fast oge float %4277, 0.000000e+00
  %4279 = fmul fast float %4003, 0x3FE8018960000000
  %4280 = fmul fast float %4004, 0x3FE8018960000000
  %4281 = fmul fast float %4005, 0x3FE8018960000000
  %4282 = call float @dx.op.unary.f32(i32 24, float %4277)  ; Sqrt(value)
  %4283 = fmul fast float %4055, 0x3FE8018960000000
  %4284 = fsub fast float %4281, %4282
  %4285 = fsub fast float %4284, %4283
  %4286 = select i1 %4278, float %4279, float 0.000000e+00
  %4287 = select i1 %4278, float %4280, float 0.000000e+00
  %4288 = select i1 %4278, float %4285, float 0.000000e+00
  %4289 = select i1 %3993, float %4286, float %4003
  %4290 = select i1 %3993, float %4287, float %4004
  %4291 = select i1 %3993, float %4288, float %4005
  %4292 = fmul fast float %4289, %4050
  %4293 = fmul fast float %4290, %4050
  %4294 = fmul fast float %4291, %4050
  %4295 = fadd fast float %4074, %4292
  %4296 = fadd fast float %4295, %4071
  %4297 = fadd fast float %4075, %4293
  %4298 = fadd fast float %4297, %4072
  %4299 = fadd fast float %4076, %4294
  %4300 = fadd fast float %4299, %4073
  %4301 = fmul fast float %4296, %4063
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4298, float %4065, float %4301)  ; FMad(a,b,c)
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4300, float %4067, float %4302)  ; FMad(a,b,c)
  %4304 = fmul fast float %4296, %4068
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4298, float %4069, float %4304)  ; FMad(a,b,c)
  %4306 = call float @dx.op.tertiary.f32(i32 46, float %4300, float %4070, float %4305)  ; FMad(a,b,c)
  %4307 = fsub fast float %4303, %4071
  %4308 = fsub fast float %4307, %4078
  %4309 = fadd fast float %4308, %4080
  %4310 = fsub fast float %4306, %4072
  %4311 = fsub fast float %4310, %4079
  %4312 = fadd fast float %4311, %4080
  %4313 = fmul fast float %4309, %4081
  %4314 = fmul fast float %4312, %4081
  %4315 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4316 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4317 = fsub fast float 1.000000e+00, %4315
  %4318 = fsub fast float 1.000000e+00, %4316
  %4319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %4317, float %4318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4320 = extractvalue %dx.types.ResRet.f32 %4319, 0
  br label %4321

; <label>:4321                                    ; preds = %4275, %4082
  %4322 = phi float [ %4320, %4275 ], [ %4270, %4082 ]
  %4323 = phi float [ %4320, %4275 ], [ %4274, %4082 ]
  %4324 = phi float [ %4320, %4275 ], [ %4128, %4082 ]
  %4325 = fmul fast float %3998, %3998
  %4326 = fmul fast float %3999, %3999
  %4327 = fadd fast float %4325, %4326
  %4328 = fmul fast float %4000, %4000
  %4329 = fadd fast float %4327, %4328
  %4330 = call float @dx.op.unary.f32(i32 24, float %4329)  ; Sqrt(value)
  %4331 = fsub fast float %2227, %3483
  %4332 = fsub fast float %2228, %3484
  %4333 = fsub fast float %2229, %3485
  %4334 = fmul fast float %4331, %4331
  %4335 = fmul fast float %4332, %4332
  %4336 = fadd fast float %4334, %4335
  %4337 = fmul fast float %4333, %4333
  %4338 = fadd fast float %4336, %4337
  %4339 = call float @dx.op.unary.f32(i32 24, float %4338)  ; Sqrt(value)
  %4340 = fsub fast float %4330, %4339
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 0
  %4343 = call float @dx.op.unary.f32(i32 6, float %4342)  ; FAbs(value)
  %4344 = fmul fast float %4339, %4339
  %4345 = fmul fast float %4344, %4343
  %4346 = fmul fast float %4340, %4340
  %4347 = fadd fast float %4346, %4344
  %4348 = fdiv fast float %4345, %4347
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = and i1 %3992, %3990
  %4351 = fsub fast float -0.000000e+00, %4050
  %4352 = select i1 %4350, float -0.000000e+00, float %4351
  %4353 = fmul fast float %1230, 0x3FF7154760000000
  %4354 = fmul fast float %4353, %4352
  %4355 = fmul fast float %1231, 0x3FF7154760000000
  %4356 = fmul fast float %4355, %4352
  %4357 = fmul fast float %1232, 0x3FF7154760000000
  %4358 = fmul fast float %4357, %4352
  %4359 = call float @dx.op.unary.f32(i32 21, float %4354)  ; Exp(value)
  %4360 = call float @dx.op.unary.f32(i32 21, float %4356)  ; Exp(value)
  %4361 = call float @dx.op.unary.f32(i32 21, float %4358)  ; Exp(value)
  %4362 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4363 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4364 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4365 = call float @dx.op.unary.f32(i32 6, float %4055)  ; FAbs(value)
  %4366 = fsub fast float 1.000000e+00, %4365
  %4367 = bitcast float %4366 to i32
  %4368 = sitofp i32 %4367 to float
  %4369 = fptosi float %4368 to i32
  %4370 = bitcast i32 %4369 to float
  %4371 = fmul fast float %4370, 0x3FEF333340000000
  %4372 = fadd fast float %4371, 0x3F999999A0000000
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4374 = fsub fast float 1.000000e+00, %4373
  %4375 = fadd fast float %4322, 1.000000e+00
  %4376 = fadd fast float %4323, 1.000000e+00
  %4377 = fadd fast float %4324, 1.000000e+00
  %4378 = fmul fast float %4362, %4375
  %4379 = fmul fast float %4363, %4376
  %4380 = fmul fast float %4364, %4377
  %4381 = fmul fast float %4378, %4374
  %4382 = fmul fast float %4379, %4374
  %4383 = fmul fast float %4380, %4374
  %4384 = fmul fast float %4349, %4375
  %4385 = fmul fast float %4384, %4362
  %4386 = fmul fast float %4385, %4373
  %4387 = fmul fast float %4349, %4376
  %4388 = fmul fast float %4387, %4363
  %4389 = fmul fast float %4388, %4373
  %4390 = fmul fast float %4349, %4377
  %4391 = fmul fast float %4390, %4364
  %4392 = fmul fast float %4391, %4373
  %4393 = fadd fast float %4386, %4362
  %4394 = fadd fast float %4389, %4363
  %4395 = fadd fast float %4392, %4364
  %4396 = call float @dx.op.unary.f32(i32 6, float %3991)  ; FAbs(value)
  %4397 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4398 = select i1 %3993, float %4381, float %4393
  %4399 = select i1 %3993, float %4382, float %4394
  %4400 = select i1 %3993, float %4383, float %4395
  %4401 = select i1 %3988, float %4397, float 0.000000e+00
  %4402 = fsub fast float %4398, %4362
  %4403 = fsub fast float %4399, %4363
  %4404 = fsub fast float %4400, %4364
  %4405 = fmul fast float %4402, %4401
  %4406 = fmul fast float %4403, %4401
  %4407 = fmul fast float %4404, %4401
  %4408 = fadd fast float %4405, %4362
  %4409 = fadd fast float %4406, %4363
  %4410 = fadd fast float %4407, %4364
  %4411 = fmul fast float %4408, %3459
  %4412 = fmul fast float %4409, %3460
  %4413 = fmul fast float %4410, %3461
  br label %4414

; <label>:4414                                    ; preds = %4321, %3983
  %4415 = phi float [ %4411, %4321 ], [ %3459, %3983 ]
  %4416 = phi float [ %4412, %4321 ], [ %3460, %3983 ]
  %4417 = phi float [ %4413, %4321 ], [ %3461, %3983 ]
  %4418 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3803, float %3804, float %219, float %220, float %221)  ; Dot3(ax,ay,az,bx,by,bz)
  %4419 = fcmp fast ogt float %2215, 0.000000e+00
  %4420 = select i1 %4419, float 1.000000e+00, float -1.000000e+00
  %4421 = fmul fast float %130, 7.812500e-03
  %4422 = fmul fast float %130, 3.125000e-02
  %4423 = fadd fast float %4422, -3.125000e-02
  %4424 = fmul fast float %4420, 5.000000e-01
  %4425 = fmul fast float %4424, %4418
  %4426 = fmul fast float %4420, %2215
  %4427 = fadd fast float %4421, 4.921875e-01
  %4428 = fadd fast float %4427, %4425
  %4429 = fadd fast float %4421, 0x3FB25F3060000000
  %4430 = fadd fast float %4423, %4426
  %4431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %46, float %4428, float %4429, float %4430, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 1
  %4435 = extractvalue %dx.types.CBufRet.f32 %4433, 2
  %4436 = select i1 %3502, float %4434, float %4435
  %4437 = fmul fast float %3809, 0x400921FB60000000
  %4438 = fmul fast float %4437, %3979
  %4439 = fmul fast float %4438, %4432
  %4440 = fmul fast float %4439, %4436
  %4441 = fmul fast float %4415, %3775
  %4442 = fmul fast float %4441, %4440
  %4443 = fmul fast float %4416, %3775
  %4444 = fmul fast float %4443, %4440
  %4445 = fmul fast float %4417, %3775
  %4446 = fmul fast float %4445, %4440
  %4447 = fadd fast float %4442, %3448
  %4448 = fadd fast float %4444, %3449
  %4449 = fadd fast float %4446, %3450
  br label %3885

; <label>:4450                                    ; preds = %3885
  br label %4451

; <label>:4451                                    ; preds = %4450, %3433
  %4452 = phi float [ %3435, %3433 ], [ %3886, %4450 ]
  %4453 = phi float [ %3436, %3433 ], [ %3887, %4450 ]
  %4454 = phi float [ %3437, %3433 ], [ %3888, %4450 ]
  %4455 = add i32 %3434, 1
  %4456 = icmp ugt i32 %4455, %3432
  br i1 %4456, label %4457, label %3433

; <label>:4457                                    ; preds = %4451
  br label %4458

; <label>:4458                                    ; preds = %4457, %3423
  %4459 = phi float [ %3424, %3423 ], [ %4452, %4457 ]
  %4460 = phi float [ %3425, %3423 ], [ %4453, %4457 ]
  %4461 = phi float [ %3426, %3423 ], [ %4454, %4457 ]
  %4462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %155, float %156, float %157, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4463 = extractvalue %dx.types.ResRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.ResRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.ResRet.f32 %4462, 2
  %4466 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %4463)  ; IsNaN(value)
  %4467 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %4464)  ; IsNaN(value)
  %4468 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %4465)  ; IsNaN(value)
  %4469 = or i1 %4466, %4467
  %4470 = or i1 %4469, %4468
  %4471 = select i1 %4470, float 0.000000e+00, float %4463
  %4472 = select i1 %4470, float 0.000000e+00, float %4464
  %4473 = select i1 %4470, float 0.000000e+00, float %4465
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 1
  %4476 = fmul fast float %4471, %4475
  %4477 = fmul fast float %4472, %4475
  %4478 = fmul fast float %4473, %4475
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 3
  %4481 = fmul fast float %4476, %4480
  %4482 = fmul fast float %4477, %4480
  %4483 = fmul fast float %4478, %4480
  %4484 = fadd fast float %4481, %4459
  %4485 = fadd fast float %4482, %4460
  %4486 = fadd fast float %4483, %4461
  br label %4487

; <label>:4487                                    ; preds = %4458, %2203
  %4488 = phi float [ %2212, %4458 ], [ %2204, %2203 ]
  %4489 = phi float [ %2213, %4458 ], [ %2205, %2203 ]
  %4490 = phi float [ %2214, %4458 ], [ %2206, %2203 ]
  %4491 = phi float [ %4484, %4458 ], [ 0.000000e+00, %2203 ]
  %4492 = phi float [ %4485, %4458 ], [ 0.000000e+00, %2203 ]
  %4493 = phi float [ %4486, %4458 ], [ 0.000000e+00, %2203 ]
  %4494 = fmul fast float %4488, %2208
  %4495 = fmul fast float %4489, %2208
  %4496 = fmul fast float %4490, %2208
  %4497 = select i1 %257, float %1230, float %2208
  %4498 = select i1 %257, float %1231, float %2208
  %4499 = select i1 %257, float %1232, float %2208
  %4500 = fmul fast float %4494, %4491
  %4501 = fmul fast float %4495, %4492
  %4502 = fmul fast float %4496, %4493
  br i1 %224, label %5282, label %4503, !dx.controlflow.hints !164

; <label>:4503                                    ; preds = %4487
  %4504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4504, 0
  %4506 = extractvalue %dx.types.CBufRet.f32 %4504, 1
  %4507 = extractvalue %dx.types.CBufRet.f32 %4504, 2
  %4508 = extractvalue %dx.types.CBufRet.f32 %4504, 3
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.CBufRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.CBufRet.f32 %4509, 2
  %4513 = extractvalue %dx.types.CBufRet.f32 %4509, 3
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4517 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4518 = extractvalue %dx.types.CBufRet.f32 %4514, 3
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.CBufRet.f32 %4519, 1
  %4522 = extractvalue %dx.types.CBufRet.f32 %4519, 2
  %4523 = extractvalue %dx.types.CBufRet.f32 %4519, 3
  %4524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.f32 %4524, 3
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 3
  %4528 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4529 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4530 = extractvalue %dx.types.CBufRet.f32 %4526, 2
  %4531 = fcmp fast olt float %4530, -5.000000e-01
  %4532 = fmul fast float %218, %217
  %4533 = fadd fast float %4532, %4508
  %4534 = call float @dx.op.dot3.f32(i32 55, float %219, float %220, float %221, float %4505, float %4506, float %4507)  ; Dot3(ax,ay,az,bx,by,bz)
  %4535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.i32 %4535, 1
  %4537 = and i32 %4536, 1
  %4538 = icmp ne i32 %4537, 0
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 2
  %4541 = fcmp fast ogt float %4540, 0.000000e+00
  %4542 = and i1 %4538, %4541
  br i1 %4542, label %4543, label %4949, !dx.controlflow.hints !165

; <label>:4543                                    ; preds = %4503
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.f32 %4546, 2
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 2
  %4550 = fsub fast float %4547, %4549
  %4551 = and i32 %4536, 2
  %4552 = extractvalue %dx.types.CBufRet.i32 %4535, 0
  %4553 = call i32 @dx.op.binary.i32(i32 40, i32 %4552, i32 3)  ; UMin(a,b)
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4556 = extractvalue %dx.types.CBufRet.f32 %4554, 1
  %4557 = extractvalue %dx.types.CBufRet.f32 %4548, 0
  %4558 = extractvalue %dx.types.CBufRet.f32 %4548, 1
  %4559 = fsub fast float %4555, %4557
  %4560 = fsub fast float %4556, %4558
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = fcmp fast ogt float %4562, 0.000000e+00
  %4564 = fsub fast float -0.000000e+00, %4559
  %4565 = fsub fast float -0.000000e+00, %4560
  %4566 = call float @dx.op.dot2.f32(i32 54, float %219, float %220, float %219, float %220)  ; Dot2(ax,ay,bx,by)
  %4567 = call float @dx.op.dot2.f32(i32 54, float %219, float %220, float %4564, float %4565)  ; Dot2(ax,ay,bx,by)
  %4568 = fmul fast float %4567, 2.000000e+00
  %4569 = call float @dx.op.dot2.f32(i32 54, float %4564, float %4565, float %4564, float %4565)  ; Dot2(ax,ay,bx,by)
  %4570 = fmul fast float %4562, %4562
  %4571 = fsub fast float %4569, %4570
  %4572 = fmul fast float %4568, %4568
  %4573 = fmul fast float %4566, 4.000000e+00
  %4574 = fmul fast float %4573, %4571
  %4575 = fsub fast float %4572, %4574
  %4576 = fcmp fast ogt float %4575, 0.000000e+00
  br i1 %4576, label %4577, label %4592, !dx.controlflow.hints !166

; <label>:4577                                    ; preds = %4543
  %4578 = fcmp fast ogt float %4568, 0.000000e+00
  %4579 = call float @dx.op.unary.f32(i32 24, float %4575)  ; Sqrt(value)
  %4580 = fsub fast float -0.000000e+00, %4579
  %4581 = select i1 %4578, float %4579, float %4580
  %4582 = fadd fast float %4581, %4568
  %4583 = fmul float %4582, -5.000000e-01
  %4584 = fdiv fast float %4583, %4566
  %4585 = call float @dx.op.binary.f32(i32 35, float %4584, float 0.000000e+00)  ; FMax(a,b)
  %4586 = call float @dx.op.binary.f32(i32 36, float %4532, float %4585)  ; FMin(a,b)
  %4587 = fdiv fast float %4571, %4583
  %4588 = call float @dx.op.binary.f32(i32 35, float %4587, float 0.000000e+00)  ; FMax(a,b)
  %4589 = call float @dx.op.binary.f32(i32 36, float %4532, float %4588)  ; FMin(a,b)
  %4590 = call float @dx.op.binary.f32(i32 36, float %4586, float %4589)  ; FMin(a,b)
  %4591 = call float @dx.op.binary.f32(i32 35, float %4586, float %4589)  ; FMax(a,b)
  br label %4592

; <label>:4592                                    ; preds = %4577, %4543
  %4593 = phi float [ %4591, %4577 ], [ -1.000000e+00, %4543 ]
  %4594 = phi float [ %4590, %4577 ], [ -1.000000e+00, %4543 ]
  %4595 = phi i1 [ true, %4577 ], [ false, %4543 ]
  %4596 = and i1 %4563, %4595
  br i1 %4596, label %4597, label %4599, !dx.controlflow.hints !167

; <label>:4597                                    ; preds = %4592
  %4598 = fcmp fast oeq float %4594, %4593
  br i1 %4598, label %4902, label %4600, !dx.controlflow.hints !168

; <label>:4599                                    ; preds = %4592
  br i1 %4563, label %4902, label %4600, !dx.controlflow.hints !169

; <label>:4600                                    ; preds = %4599, %4597
  %4601 = phi float [ %4532, %4599 ], [ %4593, %4597 ]
  %4602 = phi float [ 0.000000e+00, %4599 ], [ %4594, %4597 ]
  %4603 = icmp ne i32 %4551, 0
  %4604 = fmul fast float %4601, %221
  %4605 = fadd fast float %4604, %4545
  %4606 = fmul fast float %4605, %4601
  %4607 = select i1 %4603, float 0.000000e+00, float %4606
  %4608 = fcmp fast oeq float %221, 0.000000e+00
  %4609 = fdiv fast float %4550, %221
  %4610 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4609)  ; FMax(a,b)
  %4611 = select i1 %4608, float %4601, float %4610
  %4612 = call float @dx.op.binary.f32(i32 36, float %4601, float %4611)  ; FMin(a,b)
  %4613 = fcmp fast ogt float %221, 0.000000e+00
  %4614 = fcmp fast olt float %4550, 0.000000e+00
  br i1 %4613, label %4615, label %4672, !dx.controlflow.hints !170

; <label>:4615                                    ; preds = %4600
  %4616 = icmp eq i32 %4551, 0
  br i1 %4614, label %4617, label %4661, !dx.controlflow.hints !171

; <label>:4617                                    ; preds = %4615
  %4618 = select i1 %4616, float %4601, float 0.000000e+00
  %4619 = fsub fast float -0.000000e+00, %4618
  %4620 = call float @dx.op.unary.f32(i32 6, float %4619)  ; FAbs(value)
  %4621 = fmul fast float %4618, %221
  %4622 = fadd fast float %4621, %4545
  %4623 = fmul fast float %4620, %4622
  %4624 = fsub fast float %4607, %4623
  %4625 = fsub fast float %4601, %4620
  %4626 = select i1 %4616, float %4625, float 0.000000e+00
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.CBufRet.f32 %4627, 1
  %4630 = extractvalue %dx.types.CBufRet.f32 %4627, 2
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.CBufRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.CBufRet.f32 %4631, 2
  %4635 = extractvalue %dx.types.CBufRet.f32 %4631, 3
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 3
  %4638 = call float @dx.op.binary.f32(i32 36, float %4624, float %4637)  ; FMin(a,b)
  %4639 = fmul fast float %4635, %4626
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = fsub fast float %4632, %4628
  %4642 = fsub fast float %4633, %4629
  %4643 = fsub fast float %4634, %4630
  %4644 = fmul fast float %4640, %4641
  %4645 = fmul fast float %4640, %4642
  %4646 = fmul fast float %4640, %4643
  %4647 = fadd fast float %4644, %4628
  %4648 = fadd fast float %4645, %4629
  %4649 = fadd fast float %4646, %4630
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 0
  %4652 = extractvalue %dx.types.CBufRet.f32 %4650, 1
  %4653 = fadd fast float %4652, %4651
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4650, 2
  %4656 = extractvalue %dx.types.CBufRet.f32 %4650, 3
  %4657 = fadd fast float %4656, %4655
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = fmul fast float %4654, %4638
  %4660 = fmul fast float %4659, %4658
  br label %4902

; <label>:4661                                    ; preds = %4615
  br i1 %4616, label %4662, label %4683, !dx.controlflow.hints !172

; <label>:4662                                    ; preds = %4661
  %4663 = call float @dx.op.binary.f32(i32 36, float %4612, float %4602)  ; FMin(a,b)
  %4664 = fsub fast float %4612, %4663
  %4665 = fsub fast float %4664, %4601
  %4666 = call float @dx.op.unary.f32(i32 6, float %4665)  ; FAbs(value)
  %4667 = fadd fast float %4664, %4601
  %4668 = fmul fast float %4667, %221
  %4669 = fadd fast float %4668, %4545
  %4670 = fmul fast float %4669, %4666
  %4671 = fsub fast float %4607, %4670
  br label %4683

; <label>:4672                                    ; preds = %4600
  br i1 %4614, label %4673, label %4683, !dx.controlflow.hints !173

; <label>:4673                                    ; preds = %4672
  %4674 = call float @dx.op.binary.f32(i32 35, float %4602, float %4612)  ; FMax(a,b)
  %4675 = icmp eq i32 %4551, 0
  %4676 = select i1 %4675, float %4612, float 0.000000e+00
  %4677 = fsub fast float -0.000000e+00, %4676
  %4678 = call float @dx.op.unary.f32(i32 6, float %4677)  ; FAbs(value)
  %4679 = fmul fast float %4676, %221
  %4680 = fadd fast float %4679, %4545
  %4681 = fmul fast float %4678, %4680
  %4682 = fsub fast float %4607, %4681
  br label %4683

; <label>:4683                                    ; preds = %4673, %4672, %4662, %4661
  %4684 = phi float [ %4602, %4661 ], [ %4602, %4662 ], [ %4674, %4673 ], [ %4602, %4672 ]
  %4685 = phi float [ 0.000000e+00, %4661 ], [ %4666, %4662 ], [ %4678, %4673 ], [ 0.000000e+00, %4672 ]
  %4686 = phi float [ %4607, %4661 ], [ %4671, %4662 ], [ %4682, %4673 ], [ %4607, %4672 ]
  %4687 = phi float [ %4612, %4661 ], [ %4612, %4662 ], [ %4601, %4673 ], [ %4601, %4672 ]
  %4688 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 0
  store float -1.000000e+00, float* %4688, align 4, !tbaa !66, !noalias !174
  %4689 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 1
  store float -1.000000e+00, float* %4689, align 4, !tbaa !66, !noalias !174
  %4690 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 2
  store float -1.000000e+00, float* %4690, align 4, !tbaa !66, !noalias !174
  %4691 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 0
  store float -1.000000e+00, float* %4691, align 4, !tbaa !66, !noalias !174
  %4692 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 1
  store float -1.000000e+00, float* %4692, align 4, !tbaa !66, !noalias !174
  %4693 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 2
  store float -1.000000e+00, float* %4693, align 4, !tbaa !66, !noalias !174
  %4694 = icmp sgt i32 %4553, 0
  br i1 %4694, label %4695, label %4756

; <label>:4695                                    ; preds = %4683
  br label %4696

; <label>:4696                                    ; preds = %4745, %4695
  %4697 = phi i32 [ %4746, %4745 ], [ 0, %4695 ]
  %4698 = phi i32 [ %4747, %4745 ], [ 0, %4695 ]
  %4699 = add nuw i32 %4698, 171
  %4700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %4699)  ; CBufferLoadLegacy(handle,regIndex)
  %4701 = extractvalue %dx.types.CBufRet.f32 %4700, 0
  %4702 = extractvalue %dx.types.CBufRet.f32 %4700, 1
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4706 = fsub fast float %4701, %4704
  %4707 = fsub fast float %4702, %4705
  %4708 = extractvalue %dx.types.CBufRet.f32 %4700, 2
  %4709 = fsub fast float -0.000000e+00, %4706
  %4710 = fsub fast float -0.000000e+00, %4707
  %4711 = call float @dx.op.dot2.f32(i32 54, float %219, float %220, float %4709, float %4710)  ; Dot2(ax,ay,bx,by)
  %4712 = fmul fast float %4711, 2.000000e+00
  %4713 = call float @dx.op.dot2.f32(i32 54, float %4709, float %4710, float %4709, float %4710)  ; Dot2(ax,ay,bx,by)
  %4714 = fmul fast float %4708, %4708
  %4715 = fsub fast float %4713, %4714
  %4716 = fmul fast float %4712, %4712
  %4717 = fmul fast float %4573, %4715
  %4718 = fsub fast float %4716, %4717
  %4719 = fcmp fast ogt float %4718, 0.000000e+00
  br i1 %4719, label %4720, label %4735, !dx.controlflow.hints !166

; <label>:4720                                    ; preds = %4696
  %4721 = fcmp fast ogt float %4712, 0.000000e+00
  %4722 = call float @dx.op.unary.f32(i32 24, float %4718)  ; Sqrt(value)
  %4723 = fsub fast float -0.000000e+00, %4722
  %4724 = select i1 %4721, float %4722, float %4723
  %4725 = fadd fast float %4724, %4712
  %4726 = fmul float %4725, -5.000000e-01
  %4727 = fdiv fast float %4726, %4566
  %4728 = call float @dx.op.binary.f32(i32 35, float %4727, float 0.000000e+00)  ; FMax(a,b)
  %4729 = call float @dx.op.binary.f32(i32 36, float %4601, float %4728)  ; FMin(a,b)
  %4730 = fdiv fast float %4715, %4726
  %4731 = call float @dx.op.binary.f32(i32 35, float %4730, float 0.000000e+00)  ; FMax(a,b)
  %4732 = call float @dx.op.binary.f32(i32 36, float %4601, float %4731)  ; FMin(a,b)
  %4733 = call float @dx.op.binary.f32(i32 36, float %4729, float %4732)  ; FMin(a,b)
  %4734 = call float @dx.op.binary.f32(i32 35, float %4729, float %4732)  ; FMax(a,b)
  br label %4735

; <label>:4735                                    ; preds = %4720, %4696
  %4736 = phi float [ %4734, %4720 ], [ -1.000000e+00, %4696 ]
  %4737 = phi float [ %4733, %4720 ], [ -1.000000e+00, %4696 ]
  %4738 = phi i1 [ true, %4720 ], [ false, %4696 ]
  br i1 %4738, label %4739, label %4745, !dx.controlflow.hints !180

; <label>:4739                                    ; preds = %4735
  %4740 = call float @dx.op.binary.f32(i32 35, float %4684, float %4737)  ; FMax(a,b)
  %4741 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %4698
  store float %4740, float* %4741, align 4, !tbaa !66, !noalias !174
  %4742 = call float @dx.op.binary.f32(i32 35, float %4684, float %4736)  ; FMax(a,b)
  %4743 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %4698
  store float %4742, float* %4743, align 4, !tbaa !66, !noalias !174
  %4744 = add nsw i32 %4697, 1
  br label %4745

; <label>:4745                                    ; preds = %4739, %4735
  %4746 = phi i32 [ %4744, %4739 ], [ %4697, %4735 ]
  %4747 = add nuw nsw i32 %4698, 1
  %4748 = icmp eq i32 %4747, %4553
  br i1 %4748, label %4749, label %4696

; <label>:4749                                    ; preds = %4745
  %4750 = load float, float* %4690, align 4, !tbaa !66, !alias.scope !181, !noalias !184
  %4751 = load float, float* %4689, align 4, !tbaa !66, !alias.scope !187, !noalias !188
  %4752 = load float, float* %4688, align 4, !tbaa !66, !alias.scope !189, !noalias !190
  %4753 = load float, float* %4693, align 4, !tbaa !66, !alias.scope !191, !noalias !194
  %4754 = load float, float* %4692, align 4, !tbaa !66, !alias.scope !197, !noalias !198
  %4755 = load float, float* %4691, align 4, !tbaa !66, !alias.scope !199, !noalias !200
  br label %4756

; <label>:4756                                    ; preds = %4749, %4683
  %4757 = phi float [ -1.000000e+00, %4683 ], [ %4755, %4749 ]
  %4758 = phi float [ -1.000000e+00, %4683 ], [ %4754, %4749 ]
  %4759 = phi float [ -1.000000e+00, %4683 ], [ %4753, %4749 ]
  %4760 = phi float [ -1.000000e+00, %4683 ], [ %4752, %4749 ]
  %4761 = phi float [ -1.000000e+00, %4683 ], [ %4751, %4749 ]
  %4762 = phi float [ -1.000000e+00, %4683 ], [ %4750, %4749 ]
  %4763 = phi i32 [ 0, %4683 ], [ %4746, %4749 ]
  %4764 = call float @dx.op.binary.f32(i32 36, float %4761, float %4762)  ; FMin(a,b)
  %4765 = call float @dx.op.binary.f32(i32 36, float %4760, float %4764)  ; FMin(a,b)
  %4766 = call float @dx.op.binary.f32(i32 35, float %4760, float %4761)  ; FMax(a,b)
  %4767 = call float @dx.op.binary.f32(i32 36, float %4766, float %4762)  ; FMin(a,b)
  %4768 = call float @dx.op.binary.f32(i32 36, float %4760, float %4761)  ; FMin(a,b)
  %4769 = call float @dx.op.binary.f32(i32 35, float %4768, float %4767)  ; FMax(a,b)
  %4770 = call float @dx.op.binary.f32(i32 35, float %4761, float %4762)  ; FMax(a,b)
  %4771 = call float @dx.op.binary.f32(i32 35, float %4760, float %4770)  ; FMax(a,b)
  store float %4765, float* %4688, align 4, !tbaa !66, !alias.scope !189, !noalias !190
  store float %4769, float* %4689, align 4, !tbaa !66, !alias.scope !187, !noalias !188
  store float %4771, float* %4690, align 4, !tbaa !66, !alias.scope !181, !noalias !184
  %4772 = call float @dx.op.binary.f32(i32 36, float %4758, float %4759)  ; FMin(a,b)
  %4773 = call float @dx.op.binary.f32(i32 36, float %4757, float %4772)  ; FMin(a,b)
  %4774 = call float @dx.op.binary.f32(i32 35, float %4757, float %4758)  ; FMax(a,b)
  %4775 = call float @dx.op.binary.f32(i32 36, float %4774, float %4759)  ; FMin(a,b)
  %4776 = call float @dx.op.binary.f32(i32 36, float %4757, float %4758)  ; FMin(a,b)
  %4777 = call float @dx.op.binary.f32(i32 35, float %4776, float %4775)  ; FMax(a,b)
  %4778 = call float @dx.op.binary.f32(i32 35, float %4758, float %4759)  ; FMax(a,b)
  %4779 = call float @dx.op.binary.f32(i32 35, float %4757, float %4778)  ; FMax(a,b)
  store float %4773, float* %4691, align 4, !tbaa !66, !alias.scope !199, !noalias !200
  store float %4777, float* %4692, align 4, !tbaa !66, !alias.scope !197, !noalias !198
  store float %4779, float* %4693, align 4, !tbaa !66, !alias.scope !191, !noalias !194
  %4780 = sub nsw i32 3, %4763
  %4781 = icmp sgt i32 %4780, 2
  br i1 %4781, label %4782, label %4820, !dx.controlflow.hints !201

; <label>:4782                                    ; preds = %4756
  %4783 = icmp eq i32 %4551, 0
  %4784 = fsub fast float %4601, %4685
  %4785 = select i1 %4783, float %4784, float %4685
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.CBufRet.f32 %4786, 1
  %4789 = extractvalue %dx.types.CBufRet.f32 %4786, 2
  %4790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4791 = extractvalue %dx.types.CBufRet.f32 %4790, 0
  %4792 = extractvalue %dx.types.CBufRet.f32 %4790, 1
  %4793 = extractvalue %dx.types.CBufRet.f32 %4790, 2
  %4794 = extractvalue %dx.types.CBufRet.f32 %4790, 3
  %4795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.f32 %4795, 3
  %4797 = call float @dx.op.binary.f32(i32 36, float %4686, float %4796)  ; FMin(a,b)
  %4798 = fmul fast float %4794, %4785
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = fsub fast float %4791, %4787
  %4801 = fsub fast float %4792, %4788
  %4802 = fsub fast float %4793, %4789
  %4803 = fmul fast float %4799, %4800
  %4804 = fmul fast float %4799, %4801
  %4805 = fmul fast float %4799, %4802
  %4806 = fadd fast float %4803, %4787
  %4807 = fadd fast float %4804, %4788
  %4808 = fadd fast float %4805, %4789
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.CBufRet.f32 %4809, 1
  %4812 = fadd fast float %4811, %4810
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4809, 2
  %4815 = extractvalue %dx.types.CBufRet.f32 %4809, 3
  %4816 = fadd fast float %4815, %4814
  %4817 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4818 = fmul fast float %4813, %4797
  %4819 = fmul fast float %4818, %4817
  br label %4902

; <label>:4820                                    ; preds = %4756
  %4821 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %4780
  %4822 = load float, float* %4821, align 4, !tbaa !66, !noalias !174
  %4823 = fcmp fast olt float %4822, %4687
  %4824 = icmp sgt i32 %4763, 0
  %4825 = and i1 %4824, %4823
  br i1 %4825, label %4826, label %4863

; <label>:4826                                    ; preds = %4820
  br label %4827

; <label>:4827                                    ; preds = %4856, %4826
  %4828 = phi float [ %4857, %4856 ], [ %4685, %4826 ]
  %4829 = phi float [ %4858, %4856 ], [ %4686, %4826 ]
  %4830 = phi float [ %4838, %4856 ], [ %4822, %4826 ]
  %4831 = phi i32 [ %4835, %4856 ], [ %4780, %4826 ]
  %4832 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %4831
  %4833 = load float, float* %4832, align 4, !tbaa !66, !noalias !174
  %4834 = icmp slt i32 %4831, 2
  %4835 = add nsw i32 %4831, 1
  %4836 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %4835
  %4837 = load float, float* %4836, align 4, !tbaa !66, !noalias !174
  %4838 = select i1 %4834, float %4837, float %4601
  %4839 = call float @dx.op.binary.f32(i32 36, float %4838, float %4833)  ; FMin(a,b)
  %4840 = call float @dx.op.binary.f32(i32 36, float %4687, float %4839)  ; FMin(a,b)
  %4841 = icmp eq i32 %4551, 0
  %4842 = fadd fast float %4840, %4830
  %4843 = fmul fast float %4842, %221
  %4844 = fadd fast float %4843, %4545
  br i1 %4841, label %4850, label %4845, !dx.controlflow.hints !202

; <label>:4845                                    ; preds = %4827
  %4846 = fsub fast float %4840, %4830
  %4847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4846)  ; FMax(a,b)
  %4848 = fmul fast float %4847, %4844
  %4849 = fadd fast float %4848, %4829
  br label %4856

; <label>:4850                                    ; preds = %4827
  %4851 = fsub fast float %4830, %4840
  %4852 = call float @dx.op.unary.f32(i32 6, float %4851)  ; FAbs(value)
  %4853 = fadd fast float %4852, %4828
  %4854 = fmul fast float %4852, %4844
  %4855 = fsub fast float %4829, %4854
  br label %4856

; <label>:4856                                    ; preds = %4850, %4845
  %4857 = phi float [ %4847, %4845 ], [ %4853, %4850 ]
  %4858 = phi float [ %4849, %4845 ], [ %4855, %4850 ]
  %4859 = fcmp fast olt float %4838, %4687
  %4860 = icmp slt i32 %4835, 3
  %4861 = and i1 %4860, %4859
  br i1 %4861, label %4827, label %4862

; <label>:4862                                    ; preds = %4856
  br label %4863

; <label>:4863                                    ; preds = %4862, %4820
  %4864 = phi float [ %4685, %4820 ], [ %4857, %4862 ]
  %4865 = phi float [ %4686, %4820 ], [ %4858, %4862 ]
  %4866 = fsub fast float %4601, %4864
  %4867 = select i1 %4603, float %4864, float %4866
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 0
  %4870 = extractvalue %dx.types.CBufRet.f32 %4868, 1
  %4871 = extractvalue %dx.types.CBufRet.f32 %4868, 2
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4876 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 3
  %4879 = call float @dx.op.binary.f32(i32 36, float %4865, float %4878)  ; FMin(a,b)
  %4880 = fmul fast float %4876, %4867
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fsub fast float %4873, %4869
  %4883 = fsub fast float %4874, %4870
  %4884 = fsub fast float %4875, %4871
  %4885 = fmul fast float %4881, %4882
  %4886 = fmul fast float %4881, %4883
  %4887 = fmul fast float %4881, %4884
  %4888 = fadd fast float %4885, %4869
  %4889 = fadd fast float %4886, %4870
  %4890 = fadd fast float %4887, %4871
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4894 = fadd fast float %4893, %4892
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4891, 2
  %4897 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4898 = fadd fast float %4897, %4896
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = fmul fast float %4895, %4879
  %4901 = fmul fast float %4900, %4899
  br label %4902

; <label>:4902                                    ; preds = %4863, %4782, %4617, %4599, %4597
  %4903 = phi float [ %4626, %4617 ], [ %4785, %4782 ], [ %4867, %4863 ], [ 0.000000e+00, %4597 ], [ 0.000000e+00, %4599 ]
  %4904 = phi float [ %4660, %4617 ], [ %4819, %4782 ], [ %4901, %4863 ], [ 0.000000e+00, %4597 ], [ 0.000000e+00, %4599 ]
  %4905 = phi float [ %4647, %4617 ], [ %4806, %4782 ], [ %4888, %4863 ], [ 0.000000e+00, %4597 ], [ 0.000000e+00, %4599 ]
  %4906 = phi float [ %4648, %4617 ], [ %4807, %4782 ], [ %4889, %4863 ], [ 0.000000e+00, %4597 ], [ 0.000000e+00, %4599 ]
  %4907 = phi float [ %4649, %4617 ], [ %4808, %4782 ], [ %4890, %4863 ], [ 0.000000e+00, %4597 ], [ 0.000000e+00, %4599 ]
  %4908 = fmul fast float %4540, %4904
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 2
  %4911 = fsub fast float %4547, %4910
  %4912 = fcmp fast olt float %4908, -2.000000e+01
  %4913 = call float @dx.op.unary.f32(i32 21, float %4908)  ; Exp(value)
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4916 = extractvalue %dx.types.CBufRet.f32 %4914, 3
  %4917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %4918 = extractvalue %dx.types.CBufRet.f32 %4917, 2
  %4919 = fmul fast float %4916, %4911
  %4920 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4921 = fsub fast float 1.000000e+00, %4920
  %4922 = fmul fast float %221, 5.000000e-01
  %4923 = fadd fast float %4922, 5.000000e-01
  %4924 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4925 = fsub fast float 1.000000e+00, %4924
  %4926 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4921)  ; FMax(a,b)
  %4927 = fdiv fast float %4925, %4926
  %4928 = fsub fast float %4911, %201
  %4929 = call float @dx.op.unary.f32(i32 6, float %4928)  ; FAbs(value)
  %4930 = fmul fast float %4929, %4915
  %4931 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4932 = fsub fast float 1.000000e+00, %4930
  %4933 = fmul fast float %4932, %4931
  %4934 = fadd fast float %4933, %4930
  %4935 = fmul fast float %4918, %4911
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = fsub fast float 1.000000e+00, %4934
  %4938 = fmul fast float %4937, %4936
  %4939 = fadd fast float %4938, %4934
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fadd fast float %4913, -1.000000e+00
  %4942 = select i1 %4912, float -1.000000e+00, float %4941
  %4943 = fmul fast float %4940, %4942
  %4944 = fadd fast float %4943, 1.000000e+00
  %4945 = fsub fast float -0.000000e+00, %4943
  %4946 = fmul fast float %4905, %4945
  %4947 = fmul fast float %4906, %4945
  %4948 = fmul fast float %4907, %4945
  br label %4949

; <label>:4949                                    ; preds = %4902, %4503
  %4950 = phi float [ %4903, %4902 ], [ 0.000000e+00, %4503 ]
  %4951 = phi float [ %4944, %4902 ], [ 1.000000e+00, %4503 ]
  %4952 = phi float [ %4946, %4902 ], [ 0.000000e+00, %4503 ]
  %4953 = phi float [ %4947, %4902 ], [ 0.000000e+00, %4503 ]
  %4954 = phi float [ %4948, %4902 ], [ 0.000000e+00, %4503 ]
  %4955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.f32 %4955, 1
  %4957 = fsub fast float 1.000000e+00, %4951
  %4958 = fmul fast float %4957, %4533
  %4959 = fmul fast float %4958, %4956
  %4960 = fsub fast float %4533, %4959
  br i1 %4531, label %4961, label %4990, !dx.controlflow.hints !203

; <label>:4961                                    ; preds = %4949
  %4962 = fmul fast float %4534, %4528
  %4963 = fadd fast float %4962, %4529
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4510, %4960
  %4966 = fsub fast float -0.000000e+00, %4965
  %4967 = fmul fast float %4511, %4960
  %4968 = fsub fast float -0.000000e+00, %4967
  %4969 = call float @dx.op.unary.f32(i32 21, float %4966)  ; Exp(value)
  %4970 = call float @dx.op.unary.f32(i32 21, float %4968)  ; Exp(value)
  %4971 = call float @dx.op.binary.f32(i32 35, float %4518, float %4969)  ; FMax(a,b)
  %4972 = call float @dx.op.binary.f32(i32 35, float %4518, float %4970)  ; FMax(a,b)
  %4973 = fsub fast float %4972, %4971
  %4974 = fmul fast float %4973, %4964
  %4975 = fadd fast float %4974, %4971
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fsub fast float %4515, %4520
  %4978 = fsub fast float %4516, %4521
  %4979 = fsub fast float %4517, %4522
  %4980 = fmul fast float %4964, %4977
  %4981 = fmul fast float %4964, %4978
  %4982 = fmul fast float %4964, %4979
  %4983 = fadd fast float %4980, %4520
  %4984 = fadd fast float %4981, %4521
  %4985 = fadd fast float %4982, %4522
  %4986 = fsub fast float 1.000000e+00, %4976
  %4987 = fmul fast float %4986, %4983
  %4988 = fmul fast float %4986, %4984
  %4989 = fmul fast float %4986, %4985
  br label %5049

; <label>:4990                                    ; preds = %4949
  %4991 = fmul fast float %4960, %4527
  %4992 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4993 = fsub fast float 2.000000e+00, %4992
  %4994 = fmul fast float %4992, 9.921875e-01
  %4995 = fmul fast float %4994, %4993
  %4996 = fadd fast float %4995, 3.906250e-03
  %4997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %4996, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4998 = extractvalue %dx.types.ResRet.f32 %4997, 0
  %4999 = fsub fast float %4992, %4998
  %5000 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4999)  ; FMax(a,b)
  %5001 = fmul fast float %4513, %201
  %5002 = call float @dx.op.unary.f32(i32 6, float %5001)  ; FAbs(value)
  %5003 = fcmp fast ogt float %5002, 0x3EB0C6F7A0000000
  br i1 %5003, label %5004, label %5010, !dx.controlflow.hints !204

; <label>:5004                                    ; preds = %4990
  %5005 = fmul fast float %5001, 0xBFF7154760000000
  %5006 = call float @dx.op.unary.f32(i32 21, float %5005)  ; Exp(value)
  %5007 = fsub fast float 1.000000e+00, %5006
  %5008 = fdiv fast float %5007, %5001
  %5009 = fmul fast float %5008, %4523
  br label %5010

; <label>:5010                                    ; preds = %5004, %4990
  %5011 = phi float [ %5009, %5004 ], [ %4523, %4990 ]
  %5012 = fadd fast float %5011, %4525
  %5013 = fmul fast float %5012, %5000
  %5014 = fmul fast float %4510, %5013
  %5015 = fsub fast float -0.000000e+00, %5014
  %5016 = fmul fast float %4511, %5013
  %5017 = fsub fast float -0.000000e+00, %5016
  %5018 = fmul fast float %4512, %5013
  %5019 = fsub fast float -0.000000e+00, %5018
  %5020 = call float @dx.op.unary.f32(i32 21, float %5015)  ; Exp(value)
  %5021 = call float @dx.op.unary.f32(i32 21, float %5017)  ; Exp(value)
  %5022 = call float @dx.op.unary.f32(i32 21, float %5019)  ; Exp(value)
  %5023 = fmul fast float %4534, %4534
  %5024 = fadd fast float %5023, 1.000000e+00
  %5025 = fmul fast float %5024, 0x3FAE8EC8A0000000
  %5026 = fmul fast float %5025, %4520
  %5027 = fmul fast float %5025, %4521
  %5028 = fmul fast float %5025, %4522
  %5029 = fmul fast float %4534, %4518
  %5030 = fsub fast float 1.000000e+00, %5029
  %5031 = fmul fast float %4518, %4518
  %5032 = fsub fast float 1.000000e+00, %5031
  %5033 = fmul fast float %5032, 0x3FB45F3060000000
  %5034 = fmul fast float %5030, %5030
  %5035 = fdiv fast float 1.000000e+00, %5034
  %5036 = fmul fast float %5033, %5035
  %5037 = fmul fast float %5036, %4515
  %5038 = fmul fast float %5036, %4516
  %5039 = fmul fast float %5036, %4517
  %5040 = fadd fast float %5037, %5026
  %5041 = fadd fast float %5038, %5027
  %5042 = fadd fast float %5039, %5028
  %5043 = fsub fast float 1.000000e+00, %5020
  %5044 = fsub fast float 1.000000e+00, %5021
  %5045 = fsub fast float 1.000000e+00, %5022
  %5046 = fmul fast float %5040, %5043
  %5047 = fmul fast float %5041, %5044
  %5048 = fmul fast float %5042, %5045
  br label %5049

; <label>:5049                                    ; preds = %5010, %4961
  %5050 = phi float [ %4987, %4961 ], [ %5046, %5010 ]
  %5051 = phi float [ %4988, %4961 ], [ %5047, %5010 ]
  %5052 = phi float [ %4989, %4961 ], [ %5048, %5010 ]
  %5053 = phi float [ %4976, %4961 ], [ %5020, %5010 ]
  %5054 = phi float [ %4976, %4961 ], [ %5021, %5010 ]
  %5055 = phi float [ %4976, %4961 ], [ %5022, %5010 ]
  br i1 %4542, label %5056, label %5254, !dx.controlflow.hints !205

; <label>:5056                                    ; preds = %5049
  %5057 = extractvalue %dx.types.CBufRet.f32 %4955, 0
  %5058 = fmul fast float %5057, %4957
  %5059 = fsub fast float %4952, %5050
  %5060 = fsub fast float %4953, %5051
  %5061 = fsub fast float %4954, %5052
  %5062 = fmul fast float %5058, %5059
  %5063 = fmul fast float %5058, %5060
  %5064 = fmul fast float %5058, %5061
  %5065 = fadd fast float %5062, %5050
  %5066 = fadd fast float %5063, %5051
  %5067 = fadd fast float %5064, %5052
  %5068 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5053)  ; FMax(a,b)
  %5069 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5054)  ; FMax(a,b)
  %5070 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5055)  ; FMax(a,b)
  %5071 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4951)  ; FMax(a,b)
  %5072 = call float @dx.op.binary.f32(i32 35, float %4950, float %4960)  ; FMax(a,b)
  %5073 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5072)  ; FMax(a,b)
  %5074 = fdiv fast float %4950, %5073
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fdiv fast float %4960, %5073
  %5077 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5078 = fcmp fast une float %5071, 1.000000e+00
  br i1 %5078, label %5079, label %5092, !dx.controlflow.hints !206

; <label>:5079                                    ; preds = %5056
  %5080 = call float @dx.op.unary.f32(i32 23, float %5071)  ; Log(value)
  %5081 = fmul fast float %5080, 0x3FE62E4300000000
  %5082 = fmul fast float %4952, %5081
  %5083 = fsub fast float -0.000000e+00, %5082
  %5084 = fmul fast float %4953, %5081
  %5085 = fsub fast float -0.000000e+00, %5084
  %5086 = fmul fast float %4954, %5081
  %5087 = fsub fast float -0.000000e+00, %5086
  %5088 = fsub fast float 1.000000e+00, %5071
  %5089 = fdiv fast float %5083, %5088
  %5090 = fdiv fast float %5085, %5088
  %5091 = fdiv fast float %5087, %5088
  br label %5092

; <label>:5092                                    ; preds = %5079, %5056
  %5093 = phi float [ %5089, %5079 ], [ %4952, %5056 ]
  %5094 = phi float [ %5090, %5079 ], [ %4953, %5056 ]
  %5095 = phi float [ %5091, %5079 ], [ %4954, %5056 ]
  %5096 = phi float [ %5081, %5079 ], [ 0.000000e+00, %5056 ]
  %5097 = fcmp fast une float %5068, 1.000000e+00
  br i1 %5097, label %5098, label %5105, !dx.controlflow.hints !207

; <label>:5098                                    ; preds = %5092
  %5099 = call float @dx.op.unary.f32(i32 23, float %5068)  ; Log(value)
  %5100 = fmul fast float %5099, 0x3FE62E4300000000
  %5101 = fmul fast float %5065, %5100
  %5102 = fsub fast float -0.000000e+00, %5101
  %5103 = fsub fast float 1.000000e+00, %5068
  %5104 = fdiv fast float %5102, %5103
  br label %5105

; <label>:5105                                    ; preds = %5098, %5092
  %5106 = phi float [ %5104, %5098 ], [ %5065, %5092 ]
  %5107 = phi float [ %5100, %5098 ], [ 0.000000e+00, %5092 ]
  %5108 = fcmp fast une float %5069, 1.000000e+00
  br i1 %5108, label %5109, label %5116, !dx.controlflow.hints !207

; <label>:5109                                    ; preds = %5105
  %5110 = call float @dx.op.unary.f32(i32 23, float %5069)  ; Log(value)
  %5111 = fmul fast float %5110, 0x3FE62E4300000000
  %5112 = fmul fast float %5066, %5111
  %5113 = fsub fast float -0.000000e+00, %5112
  %5114 = fsub fast float 1.000000e+00, %5069
  %5115 = fdiv fast float %5113, %5114
  br label %5116

; <label>:5116                                    ; preds = %5109, %5105
  %5117 = phi float [ %5115, %5109 ], [ %5066, %5105 ]
  %5118 = phi float [ %5111, %5109 ], [ 0.000000e+00, %5105 ]
  %5119 = fcmp fast une float %5070, 1.000000e+00
  br i1 %5119, label %5120, label %5127, !dx.controlflow.hints !207

; <label>:5120                                    ; preds = %5116
  %5121 = call float @dx.op.unary.f32(i32 23, float %5070)  ; Log(value)
  %5122 = fmul fast float %5121, 0x3FE62E4300000000
  %5123 = fmul fast float %5067, %5122
  %5124 = fsub fast float -0.000000e+00, %5123
  %5125 = fsub fast float 1.000000e+00, %5070
  %5126 = fdiv fast float %5124, %5125
  br label %5127

; <label>:5127                                    ; preds = %5120, %5116
  %5128 = phi float [ %5126, %5120 ], [ %5067, %5116 ]
  %5129 = phi float [ %5122, %5120 ], [ 0.000000e+00, %5116 ]
  %5130 = fmul fast float %5093, %5077
  %5131 = fmul fast float %5094, %5077
  %5132 = fmul fast float %5095, %5077
  %5133 = fmul fast float %5096, %5077
  %5134 = fmul fast float %5106, %5075
  %5135 = fmul fast float %5117, %5075
  %5136 = fmul fast float %5128, %5075
  %5137 = fmul fast float %5107, %5075
  %5138 = fmul fast float %5118, %5075
  %5139 = fmul fast float %5129, %5075
  %5140 = fadd fast float %5134, %5130
  %5141 = fadd fast float %5135, %5131
  %5142 = fadd fast float %5136, %5132
  %5143 = fadd fast float %5137, %5133
  %5144 = fadd fast float %5138, %5133
  %5145 = fadd fast float %5139, %5133
  %5146 = fcmp fast une float %5143, 0.000000e+00
  br i1 %5146, label %5147, label %5154, !dx.controlflow.hints !208

; <label>:5147                                    ; preds = %5127
  %5148 = fmul fast float %5143, 0x3FF7154760000000
  %5149 = call float @dx.op.unary.f32(i32 21, float %5148)  ; Exp(value)
  %5150 = fsub fast float 1.000000e+00, %5149
  %5151 = fmul fast float %5140, %5150
  %5152 = fsub fast float -0.000000e+00, %5151
  %5153 = fdiv fast float %5152, %5143
  br label %5154

; <label>:5154                                    ; preds = %5147, %5127
  %5155 = phi float [ %5149, %5147 ], [ 1.000000e+00, %5127 ]
  %5156 = phi float [ %5153, %5147 ], [ %5140, %5127 ]
  %5157 = fcmp fast une float %5144, 0.000000e+00
  br i1 %5157, label %5158, label %5165, !dx.controlflow.hints !208

; <label>:5158                                    ; preds = %5154
  %5159 = fmul fast float %5144, 0x3FF7154760000000
  %5160 = call float @dx.op.unary.f32(i32 21, float %5159)  ; Exp(value)
  %5161 = fsub fast float 1.000000e+00, %5160
  %5162 = fmul fast float %5141, %5161
  %5163 = fsub fast float -0.000000e+00, %5162
  %5164 = fdiv fast float %5163, %5144
  br label %5165

; <label>:5165                                    ; preds = %5158, %5154
  %5166 = phi float [ %5160, %5158 ], [ 1.000000e+00, %5154 ]
  %5167 = phi float [ %5164, %5158 ], [ %5141, %5154 ]
  %5168 = fcmp fast une float %5145, 0.000000e+00
  br i1 %5168, label %5169, label %5176, !dx.controlflow.hints !208

; <label>:5169                                    ; preds = %5165
  %5170 = fmul fast float %5145, 0x3FF7154760000000
  %5171 = call float @dx.op.unary.f32(i32 21, float %5170)  ; Exp(value)
  %5172 = fsub fast float 1.000000e+00, %5171
  %5173 = fmul fast float %5142, %5172
  %5174 = fsub fast float -0.000000e+00, %5173
  %5175 = fdiv fast float %5174, %5145
  br label %5176

; <label>:5176                                    ; preds = %5169, %5165
  %5177 = phi float [ %5171, %5169 ], [ 1.000000e+00, %5165 ]
  %5178 = phi float [ %5175, %5169 ], [ %5142, %5165 ]
  %5179 = fcmp fast ogt float %5075, %5077
  br i1 %5179, label %5180, label %5200, !dx.controlflow.hints !209

; <label>:5180                                    ; preds = %5176
  %5181 = fsub fast float 1.000000e+00, %5077
  %5182 = fmul fast float %5093, %5181
  %5183 = fmul fast float %5094, %5181
  %5184 = fmul fast float %5095, %5181
  %5185 = fmul fast float %5096, %5181
  %5186 = fcmp fast une float %5185, 0.000000e+00
  br i1 %5186, label %5187, label %5238, !dx.controlflow.hints !210

; <label>:5187                                    ; preds = %5180
  %5188 = fmul fast float %5185, 0x3FF7154760000000
  %5189 = call float @dx.op.unary.f32(i32 21, float %5188)  ; Exp(value)
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = fmul fast float %5182, %5190
  %5192 = fsub fast float -0.000000e+00, %5191
  %5193 = fmul fast float %5183, %5190
  %5194 = fsub fast float -0.000000e+00, %5193
  %5195 = fmul fast float %5184, %5190
  %5196 = fsub fast float -0.000000e+00, %5195
  %5197 = fdiv fast float %5192, %5185
  %5198 = fdiv fast float %5194, %5185
  %5199 = fdiv fast float %5196, %5185
  br label %5238

; <label>:5200                                    ; preds = %5176
  %5201 = fsub fast float 1.000000e+00, %5075
  %5202 = fmul fast float %5106, %5201
  %5203 = fmul fast float %5117, %5201
  %5204 = fmul fast float %5128, %5201
  %5205 = fmul fast float %5107, %5201
  %5206 = fmul fast float %5118, %5201
  %5207 = fmul fast float %5129, %5201
  %5208 = fcmp fast une float %5205, 0.000000e+00
  br i1 %5208, label %5209, label %5216, !dx.controlflow.hints !208

; <label>:5209                                    ; preds = %5200
  %5210 = fmul fast float %5205, 0x3FF7154760000000
  %5211 = call float @dx.op.unary.f32(i32 21, float %5210)  ; Exp(value)
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = fmul fast float %5202, %5212
  %5214 = fsub fast float -0.000000e+00, %5213
  %5215 = fdiv fast float %5214, %5205
  br label %5216

; <label>:5216                                    ; preds = %5209, %5200
  %5217 = phi float [ %5215, %5209 ], [ %5202, %5200 ]
  %5218 = phi float [ %5211, %5209 ], [ 1.000000e+00, %5200 ]
  %5219 = fcmp fast une float %5206, 0.000000e+00
  br i1 %5219, label %5220, label %5227, !dx.controlflow.hints !208

; <label>:5220                                    ; preds = %5216
  %5221 = fmul fast float %5206, 0x3FF7154760000000
  %5222 = call float @dx.op.unary.f32(i32 21, float %5221)  ; Exp(value)
  %5223 = fsub fast float 1.000000e+00, %5222
  %5224 = fmul fast float %5203, %5223
  %5225 = fsub fast float -0.000000e+00, %5224
  %5226 = fdiv fast float %5225, %5206
  br label %5227

; <label>:5227                                    ; preds = %5220, %5216
  %5228 = phi float [ %5226, %5220 ], [ %5203, %5216 ]
  %5229 = phi float [ %5222, %5220 ], [ 1.000000e+00, %5216 ]
  %5230 = fcmp fast une float %5207, 0.000000e+00
  br i1 %5230, label %5231, label %5238, !dx.controlflow.hints !208

; <label>:5231                                    ; preds = %5227
  %5232 = fmul fast float %5207, 0x3FF7154760000000
  %5233 = call float @dx.op.unary.f32(i32 21, float %5232)  ; Exp(value)
  %5234 = fsub fast float 1.000000e+00, %5233
  %5235 = fmul fast float %5204, %5234
  %5236 = fsub fast float -0.000000e+00, %5235
  %5237 = fdiv fast float %5236, %5207
  br label %5238

; <label>:5238                                    ; preds = %5231, %5227, %5187, %5180
  %5239 = phi float [ %5237, %5231 ], [ %5199, %5187 ], [ %5184, %5180 ], [ %5204, %5227 ]
  %5240 = phi float [ %5228, %5231 ], [ %5198, %5187 ], [ %5183, %5180 ], [ %5228, %5227 ]
  %5241 = phi float [ %5217, %5231 ], [ %5197, %5187 ], [ %5182, %5180 ], [ %5217, %5227 ]
  %5242 = phi float [ %5233, %5231 ], [ %5189, %5187 ], [ 1.000000e+00, %5180 ], [ 1.000000e+00, %5227 ]
  %5243 = phi float [ %5229, %5231 ], [ %5189, %5187 ], [ 1.000000e+00, %5180 ], [ %5229, %5227 ]
  %5244 = phi float [ %5218, %5231 ], [ %5189, %5187 ], [ 1.000000e+00, %5180 ], [ %5218, %5227 ]
  %5245 = fmul fast float %5244, %5156
  %5246 = fmul fast float %5243, %5167
  %5247 = fmul fast float %5242, %5178
  %5248 = fadd fast float %5245, %5241
  %5249 = fadd fast float %5246, %5240
  %5250 = fadd fast float %5247, %5239
  %5251 = fmul fast float %5244, %5155
  %5252 = fmul fast float %5243, %5166
  %5253 = fmul fast float %5242, %5177
  br label %5254

; <label>:5254                                    ; preds = %5238, %5049
  %5255 = phi float [ %5253, %5238 ], [ %5055, %5049 ]
  %5256 = phi float [ %5252, %5238 ], [ %5054, %5049 ]
  %5257 = phi float [ %5251, %5238 ], [ %5053, %5049 ]
  %5258 = phi float [ %5250, %5238 ], [ %5052, %5049 ]
  %5259 = phi float [ %5249, %5238 ], [ %5051, %5049 ]
  %5260 = phi float [ %5248, %5238 ], [ %5050, %5049 ]
  %5261 = fmul fast float %5257, %4500
  %5262 = fmul fast float %5256, %4501
  %5263 = fmul fast float %5255, %4502
  %5264 = fmul fast float %4497, 0xBFF7154760000000
  %5265 = fmul fast float %4498, 0xBFF7154760000000
  %5266 = fmul fast float %4499, 0xBFF7154760000000
  %5267 = call float @dx.op.unary.f32(i32 21, float %5264)  ; Exp(value)
  %5268 = call float @dx.op.unary.f32(i32 21, float %5265)  ; Exp(value)
  %5269 = call float @dx.op.unary.f32(i32 21, float %5266)  ; Exp(value)
  %5270 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5271 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5273 = fsub fast float 1.000000e+00, %5270
  %5274 = fsub fast float 1.000000e+00, %5271
  %5275 = fsub fast float 1.000000e+00, %5272
  %5276 = fmul fast float %5273, %5260
  %5277 = fmul fast float %5274, %5259
  %5278 = fmul fast float %5275, %5258
  %5279 = fadd fast float %5276, %5261
  %5280 = fadd fast float %5277, %5262
  %5281 = fadd fast float %5278, %5263
  br label %5282

; <label>:5282                                    ; preds = %5254, %4487
  %5283 = phi float [ %5279, %5254 ], [ %4500, %4487 ]
  %5284 = phi float [ %5280, %5254 ], [ %4501, %4487 ]
  %5285 = phi float [ %5281, %5254 ], [ %4502, %4487 ]
  %5286 = xor i1 %260, true
  %5287 = and i1 %92, %5286
  %5288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %5289 = extractvalue %dx.types.CBufRet.f32 %5288, 0
  %5290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.f32 %5290, 0
  %5292 = select i1 %224, float %5289, float %5291
  %5293 = fmul fast float %5292, %5283
  %5294 = fmul fast float %5292, %5284
  %5295 = fmul fast float %5292, %5285
  %5296 = fmul fast float %5294, 5.000000e-01
  %5297 = fadd fast float %5285, %5283
  %5298 = fmul fast float %5292, %5297
  %5299 = fmul fast float %5298, 2.500000e-01
  %5300 = fadd fast float %5299, %5296
  %5301 = call float @dx.op.unary.f32(i32 23, float %5300)  ; Log(value)
  %5302 = fmul fast float %5301, 0x3FE62E4300000000
  %5303 = fmul fast float %5302, %5302
  %5304 = select i1 %5287, float 1.000000e+00, float 0.000000e+00
  store float %5304, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  %5305 = fmul fast float %5302, %5304
  store float %5305, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  %5306 = fmul fast float %5303, %5304
  store float %5306, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5307 = load float, float addrspace(3)* %271, align 4, !tbaa !66, !noalias !70
  %5308 = fadd fast float %5307, %5304
  %5309 = load float, float addrspace(3)* %274, align 4, !tbaa !66, !noalias !70
  %5310 = fadd fast float %5309, %5302
  %5311 = load float, float addrspace(3)* %277, align 4, !tbaa !66, !noalias !70
  %5312 = fadd fast float %5311, %5303
  store float %5308, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  store float %5310, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  store float %5312, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5313 = load float, float addrspace(3)* %281, align 4, !tbaa !66, !noalias !70
  %5314 = fadd fast float %5313, %5308
  %5315 = load float, float addrspace(3)* %284, align 4, !tbaa !66, !noalias !70
  %5316 = fadd fast float %5315, %5310
  %5317 = load float, float addrspace(3)* %287, align 4, !tbaa !66, !noalias !70
  %5318 = fadd fast float %5317, %5312
  store float %5314, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  store float %5316, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  store float %5318, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5319 = load float, float addrspace(3)* %291, align 4, !tbaa !66, !noalias !70
  %5320 = fadd fast float %5319, %5314
  %5321 = load float, float addrspace(3)* %294, align 4, !tbaa !66, !noalias !70
  %5322 = fadd fast float %5321, %5316
  %5323 = fdiv fast float %5322, %5320
  %5324 = and i1 %5287, %301
  br i1 %5324, label %5325, label %5333, !dx.controlflow.hints !74

; <label>:5325                                    ; preds = %5282
  %5326 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %290
  %5327 = load float, float addrspace(3)* %5326, align 4, !tbaa !66, !noalias !70
  %5328 = fadd fast float %5327, %5318
  %5329 = fdiv fast float %5328, %5320
  %5330 = lshr i32 %80, 1
  %5331 = lshr i32 %81, 1
  %5332 = lshr i32 %259, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %5330, i32 %5331, i32 %5332, float %5323, float %5329, float %5323, float %5323, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5333

; <label>:5333                                    ; preds = %5325, %5282
  br i1 %5287, label %5334, label %5368, !dx.controlflow.hints !75

; <label>:5334                                    ; preds = %5333
  %5335 = fadd fast float %130, 0x3FE3C6EF40000000
  %5336 = call float @dx.op.unary.f32(i32 22, float %5335)  ; Frc(value)
  %5337 = call float @dx.op.unary.f32(i32 23, float %5293)  ; Log(value)
  %5338 = fadd fast float %5337, -7.000000e+00
  %5339 = call float @dx.op.unary.f32(i32 21, float %5338)  ; Exp(value)
  %5340 = fmul fast float %5336, 2.000000e+00
  %5341 = fadd fast float %5340, -1.000000e+00
  %5342 = fmul fast float %5339, %5341
  %5343 = fcmp fast ogt float %5293, 0.000000e+00
  %5344 = select i1 %5343, float %5342, float 0.000000e+00
  %5345 = fadd fast float %5344, %5293
  %5346 = fadd fast float %130, 0x3FF3C6EF40000000
  %5347 = call float @dx.op.unary.f32(i32 22, float %5346)  ; Frc(value)
  %5348 = call float @dx.op.unary.f32(i32 23, float %5294)  ; Log(value)
  %5349 = fadd fast float %5348, -7.000000e+00
  %5350 = call float @dx.op.unary.f32(i32 21, float %5349)  ; Exp(value)
  %5351 = fmul fast float %5347, 2.000000e+00
  %5352 = fadd fast float %5351, -1.000000e+00
  %5353 = fmul fast float %5350, %5352
  %5354 = fcmp fast ogt float %5294, 0.000000e+00
  %5355 = select i1 %5354, float %5353, float 0.000000e+00
  %5356 = fadd fast float %5355, %5294
  %5357 = fadd fast float %130, 0x3FFDAA66E0000000
  %5358 = call float @dx.op.unary.f32(i32 22, float %5357)  ; Frc(value)
  %5359 = call float @dx.op.unary.f32(i32 23, float %5295)  ; Log(value)
  %5360 = fadd fast float %5359, -6.000000e+00
  %5361 = call float @dx.op.unary.f32(i32 21, float %5360)  ; Exp(value)
  %5362 = fmul fast float %5358, 2.000000e+00
  %5363 = fadd fast float %5362, -1.000000e+00
  %5364 = fmul fast float %5361, %5363
  %5365 = fcmp fast ogt float %5295, 0.000000e+00
  %5366 = select i1 %5365, float %5364, float 0.000000e+00
  %5367 = fadd fast float %5366, %5295
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %80, i32 %81, i32 %259, float %5345, float %5356, float %5367, float %5345, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5368

; <label>:5368                                    ; preds = %5334, %5333
  %5369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.f32 %5369, 0
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = select i1 %224, float %5370, float %5372
  %5374 = fmul fast float %5373, %4497
  %5375 = fmul fast float %5373, %4498
  %5376 = fmul fast float %5373, %4499
  %5377 = fmul fast float %5375, 5.000000e-01
  %5378 = fadd fast float %4499, %4497
  %5379 = fmul fast float %5373, %5378
  %5380 = fmul fast float %5379, 2.500000e-01
  %5381 = fadd fast float %5380, %5377
  %5382 = fmul fast float %5381, %5381
  store float %5304, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  %5383 = fmul fast float %5381, %5304
  store float %5383, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  %5384 = fmul fast float %5382, %5304
  store float %5384, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5385 = load float, float addrspace(3)* %271, align 4, !tbaa !66, !noalias !70
  %5386 = fadd fast float %5385, %5304
  %5387 = load float, float addrspace(3)* %274, align 4, !tbaa !66, !noalias !70
  %5388 = fadd fast float %5381, %5387
  %5389 = load float, float addrspace(3)* %277, align 4, !tbaa !66, !noalias !70
  %5390 = fadd fast float %5382, %5389
  store float %5386, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  store float %5388, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  store float %5390, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5391 = load float, float addrspace(3)* %281, align 4, !tbaa !66, !noalias !70
  %5392 = fadd fast float %5391, %5386
  %5393 = load float, float addrspace(3)* %284, align 4, !tbaa !66, !noalias !70
  %5394 = fadd fast float %5388, %5393
  %5395 = load float, float addrspace(3)* %287, align 4, !tbaa !66, !noalias !70
  %5396 = fadd fast float %5390, %5395
  store float %5392, float addrspace(3)* %265, align 4, !tbaa !66, !noalias !70
  store float %5394, float addrspace(3)* %267, align 4, !tbaa !66, !noalias !70
  store float %5396, float addrspace(3)* %269, align 4, !tbaa !66, !noalias !70
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %5397 = load float, float addrspace(3)* %291, align 4, !tbaa !66, !noalias !70
  %5398 = fadd fast float %5397, %5392
  %5399 = load float, float addrspace(3)* %294, align 4, !tbaa !66, !noalias !70
  %5400 = fadd fast float %5399, %5394
  %5401 = fdiv fast float %5400, %5398
  br i1 %5324, label %5402, label %5410, !dx.controlflow.hints !76

; <label>:5402                                    ; preds = %5368
  %5403 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %290
  %5404 = load float, float addrspace(3)* %5403, align 4, !tbaa !66, !noalias !70
  %5405 = fadd fast float %5404, %5396
  %5406 = fdiv fast float %5405, %5398
  %5407 = lshr i32 %80, 1
  %5408 = lshr i32 %81, 1
  %5409 = lshr i32 %259, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5407, i32 %5408, i32 %5409, float %5401, float %5406, float %5401, float %5401, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5410

; <label>:5410                                    ; preds = %5402, %5368
  br i1 %5287, label %5411, label %5445, !dx.controlflow.hints !77

; <label>:5411                                    ; preds = %5410
  %5412 = fadd fast float %130, 0x3FE3C6EF40000000
  %5413 = call float @dx.op.unary.f32(i32 22, float %5412)  ; Frc(value)
  %5414 = call float @dx.op.unary.f32(i32 23, float %5374)  ; Log(value)
  %5415 = fadd fast float %5414, -7.000000e+00
  %5416 = call float @dx.op.unary.f32(i32 21, float %5415)  ; Exp(value)
  %5417 = fmul fast float %5413, 2.000000e+00
  %5418 = fadd fast float %5417, -1.000000e+00
  %5419 = fmul fast float %5416, %5418
  %5420 = fcmp fast ogt float %5374, 0.000000e+00
  %5421 = select i1 %5420, float %5419, float 0.000000e+00
  %5422 = fadd fast float %5421, %5374
  %5423 = fadd fast float %130, 0x3FF3C6EF40000000
  %5424 = call float @dx.op.unary.f32(i32 22, float %5423)  ; Frc(value)
  %5425 = call float @dx.op.unary.f32(i32 23, float %5375)  ; Log(value)
  %5426 = fadd fast float %5425, -7.000000e+00
  %5427 = call float @dx.op.unary.f32(i32 21, float %5426)  ; Exp(value)
  %5428 = fmul fast float %5424, 2.000000e+00
  %5429 = fadd fast float %5428, -1.000000e+00
  %5430 = fmul fast float %5427, %5429
  %5431 = fcmp fast ogt float %5375, 0.000000e+00
  %5432 = select i1 %5431, float %5430, float 0.000000e+00
  %5433 = fadd fast float %5432, %5375
  %5434 = fadd fast float %130, 0x3FFDAA66E0000000
  %5435 = call float @dx.op.unary.f32(i32 22, float %5434)  ; Frc(value)
  %5436 = call float @dx.op.unary.f32(i32 23, float %5376)  ; Log(value)
  %5437 = fadd fast float %5436, -6.000000e+00
  %5438 = call float @dx.op.unary.f32(i32 21, float %5437)  ; Exp(value)
  %5439 = fmul fast float %5435, 2.000000e+00
  %5440 = fadd fast float %5439, -1.000000e+00
  %5441 = fmul fast float %5438, %5440
  %5442 = fcmp fast ogt float %5376, 0.000000e+00
  %5443 = select i1 %5442, float %5441, float 0.000000e+00
  %5444 = fadd fast float %5443, %5376
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %80, i32 %81, i32 %259, float %5422, float %5433, float %5444, float %5422, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5445

; <label>:5445                                    ; preds = %5411, %5410
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
!dx.entryPoints = !{!63}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !49, !54, !57}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47}
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
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 34, i32 1, i32 7, i32 0, !34}
!34 = !{i32 0, i32 14}
!35 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!36 = !{i32 27, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!41 = !{i32 32, %"class.Texture1D<float>"* undef, !"", i32 0, i32 54, i32 1, i32 1, i32 0, !7}
!42 = !{i32 33, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !45}
!45 = !{i32 1, i32 80}
!46 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!47 = !{i32 37, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !48}
!48 = !{i32 1, i32 4}
!49 = !{!50, !51, !52, !53}
!50 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!51 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!52 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!53 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!54 = !{!55, !56}
!55 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!56 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!57 = !{!58, !59, !60, !61, !62}
!58 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!59 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!60 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!61 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!62 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!63 = !{void ()* @cs_volumetric_forwardplus_scatter_local_water_afog, !"cs_volumetric_forwardplus_scatter_local_water_afog", null, !4, !64}
!64 = !{i32 0, i64 272, i32 4, !65}
!65 = !{i32 4, i32 4, i32 4}
!66 = !{!67, !67, i64 0}
!67 = !{!"float", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!71, !73}
!71 = distinct !{!71, !72, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!72 = distinct !{!72, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!73 = distinct !{!73, !72, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}
!115 = distinct !{!115, !99}
!116 = distinct !{!116, !99}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 2}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 2}
!128 = !{!129, !129, i64 0}
!129 = !{!"int", !68, i64 0}
!130 = !{!131, !133, !135, !71, !73}
!131 = distinct !{!131, !132, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!132 = distinct !{!132, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!133 = distinct !{!133, !134, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!134 = distinct !{!134, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!135 = distinct !{!135, !136, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!136 = distinct !{!136, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 2}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 2}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 2}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 2}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 2}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 2}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 2}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 2}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 2}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 2}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 2}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 2}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 2}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 2}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 2}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 2}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 2}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 2}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 2}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 2}
!174 = !{!175, !177, !179, !71, !73}
!175 = distinct !{!175, !176, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!176 = distinct !{!176, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!177 = distinct !{!177, !178, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!178 = distinct !{!178, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!179 = distinct !{!179, !178, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 2}
!181 = !{!182}
!182 = distinct !{!182, !183, !"\01?sort@@YAXAIAM00@Z: %c"}
!183 = distinct !{!183, !"\01?sort@@YAXAIAM00@Z"}
!184 = !{!185, !186, !175, !177, !179, !71, !73}
!185 = distinct !{!185, !183, !"\01?sort@@YAXAIAM00@Z: %a"}
!186 = distinct !{!186, !183, !"\01?sort@@YAXAIAM00@Z: %b"}
!187 = !{!186}
!188 = !{!185, !182, !175, !177, !179, !71, !73}
!189 = !{!185}
!190 = !{!186, !182, !175, !177, !179, !71, !73}
!191 = !{!192}
!192 = distinct !{!192, !193, !"\01?sort@@YAXAIAM00@Z: %c"}
!193 = distinct !{!193, !"\01?sort@@YAXAIAM00@Z"}
!194 = !{!195, !196, !175, !177, !179, !71, !73}
!195 = distinct !{!195, !193, !"\01?sort@@YAXAIAM00@Z: %a"}
!196 = distinct !{!196, !193, !"\01?sort@@YAXAIAM00@Z: %b"}
!197 = !{!196}
!198 = !{!195, !192, !175, !177, !179, !71, !73}
!199 = !{!195}
!200 = !{!196, !192, !175, !177, !179, !71, !73}
!201 = distinct !{!201, !"dx.controlflow.hints", i32 2}
!202 = distinct !{!202, !"dx.controlflow.hints", i32 2}
!203 = distinct !{!203, !"dx.controlflow.hints", i32 1}
!204 = distinct !{!204, !"dx.controlflow.hints", i32 2}
!205 = distinct !{!205, !"dx.controlflow.hints", i32 1}
!206 = distinct !{!206, !"dx.controlflow.hints", i32 1}
!207 = distinct !{!207, !"dx.controlflow.hints", i32 1}
!208 = distinct !{!208, !"dx.controlflow.hints", i32 1}
!209 = distinct !{!209, !"dx.controlflow.hints", i32 2}
!210 = distinct !{!210, !"dx.controlflow.hints", i32 1}

