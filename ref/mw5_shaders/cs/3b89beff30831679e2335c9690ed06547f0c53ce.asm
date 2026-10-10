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
; shader hash: 20ef4a0a4ac7d263043db8d0d8011b8e
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
;                                   texture     f32          3d     T32             t5     1
;                                   texture    byte         r/o     T33            t13     1
;                                   texture  struct         r/o     T34            t14     1
;                                   texture    byte         r/o     T35            t15     1
;                                   texture  struct         r/o     T36            t29     1
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 43, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %51 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %52 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %53 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %54 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %55 = alloca [12 x float], align 4
  %56 = alloca [12 x float], align 4
  %57 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.i32 %57, 3
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 1
  %61 = mul i32 %60, %58
  %62 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.i32 %62, 1
  %64 = mul i32 %61, %63
  %65 = add i32 %64, %53
  %66 = shl i32 %65, 2
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = and i32 %68, 255
  %70 = lshr i32 %68, 8
  %71 = and i32 %70, 255
  %72 = lshr i32 %68, 16
  %73 = and i32 %72, 255
  %74 = shl nuw nsw i32 %69, 2
  %75 = shl nuw nsw i32 %71, 2
  %76 = shl nuw nsw i32 %73, 2
  %77 = add i32 %74, %50
  %78 = add i32 %75, %51
  %79 = add i32 %76, %52
  %80 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.i32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.i32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.i32 %80, 2
  %84 = icmp uge i32 %77, %81
  %85 = icmp uge i32 %78, %82
  %86 = icmp uge i32 %79, %83
  %87 = or i1 %84, %85
  %88 = or i1 %86, %87
  %89 = xor i1 %88, true
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 3
  %92 = call i32 @dx.op.tertiary.i32(i32 49, i32 5511, i32 %78, i32 %91)  ; UMad(a,b,c)
  %93 = call i32 @dx.op.tertiary.i32(i32 49, i32 11605, i32 %77, i32 %92)  ; UMad(a,b,c)
  %94 = mul i32 %93, -63
  %95 = lshr i32 %94, 17
  %96 = xor i32 %95, %94
  %97 = mul i32 %96, -511
  %98 = mul i32 %96, -8176
  %99 = xor i32 %97, %98
  %100 = mul i32 %99, -7
  %101 = mul i32 %99, -7168
  %102 = xor i32 %100, %101
  %103 = lshr i32 %102, 15
  %104 = xor i32 %103, %100
  %105 = and i32 %104, 127
  %106 = mul i32 %105, 3
  %107 = add i32 0, %106
  %108 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %107
  %109 = load float, float* %108, align 4
  %110 = mul i32 %105, 3
  %111 = add i32 1, %110
  %112 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %111
  %113 = load float, float* %112, align 4
  %114 = mul i32 %105, 3
  %115 = add i32 2, %114
  %116 = getelementptr [384 x float], [384 x float]* @BLUE_NOISE_SAMPLES.v.1dim, i32 0, i32 %115
  %117 = load float, float* %116, align 4
  %118 = uitofp i32 %91 to float
  %119 = fmul fast float %118, 0x3FEA36A940000000
  %120 = fmul fast float %118, 0x3FE5793080000000
  %121 = fmul fast float %118, 0x3FE1972580000000
  %122 = fadd fast float %109, %119
  %123 = fadd fast float %113, %120
  %124 = fadd fast float %117, %121
  %125 = call float @dx.op.unary.f32(i32 22, float %122)  ; Frc(value)
  %126 = call float @dx.op.unary.f32(i32 22, float %123)  ; Frc(value)
  %127 = call float @dx.op.unary.f32(i32 22, float %124)  ; Frc(value)
  %128 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %41, i32 0, i32 %77, i32 %78, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = fcmp fast ogt float %129, -1.000000e+00
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %133 = select i1 %130, float %132, float 1.000000e+00
  %134 = fadd fast float %129, 1.000000e+00
  %135 = fmul fast float %133, %134
  %136 = uitofp i32 %77 to float
  %137 = uitofp i32 %78 to float
  %138 = uitofp i32 %79 to float
  %139 = fadd fast float %136, -5.000000e-01
  %140 = fadd fast float %139, %125
  %141 = fadd fast float %137, -5.000000e-01
  %142 = fadd fast float %141, %126
  %143 = fadd fast float %138, -5.000000e-01
  %144 = fadd fast float %143, %127
  %145 = fadd fast float %140, 5.000000e-01
  %146 = fadd fast float %142, 5.000000e-01
  %147 = fadd fast float %144, 5.000000e-01
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = fmul fast float %149, %145
  %153 = fmul fast float %150, %146
  %154 = fmul fast float %151, %147
  %155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.i32 %155, 0
  %157 = uitofp i32 %156 to float
  %158 = fmul fast float %157, %154
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = fmul fast float %158, %161
  %163 = call float @dx.op.unary.f32(i32 21, float %162)  ; Exp(value)
  %164 = fmul fast float %163, %160
  %165 = fsub fast float 4.000000e+00, %160
  %166 = fadd fast float %165, %164
  %167 = call float @dx.op.binary.f32(i32 36, float %166, float %135)  ; FMin(a,b)
  %168 = fmul fast float %152, 2.000000e+00
  %169 = fmul fast float %153, 2.000000e+00
  %170 = fsub fast float 1.000000e+00, %168
  %171 = fsub fast float 1.000000e+00, %169
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = fmul fast float %173, %170
  %177 = fmul fast float %174, %170
  %178 = fmul fast float %175, %170
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = fmul fast float %180, %171
  %184 = fmul fast float %181, %171
  %185 = fmul fast float %182, %171
  %186 = fadd fast float %183, %176
  %187 = fadd fast float %184, %177
  %188 = fadd fast float %185, %178
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %193 = fadd fast float %186, %190
  %194 = fadd fast float %187, %191
  %195 = fadd fast float %188, %192
  %196 = fmul fast float %193, %167
  %197 = fmul fast float %194, %167
  %198 = fmul fast float %195, %167
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = extractvalue %dx.types.CBufRet.f32 %199, 1
  %202 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %203 = fadd fast float %196, %200
  %204 = fadd fast float %197, %201
  %205 = fadd fast float %198, %202
  %206 = add i32 %79, 1
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %161, %207
  %209 = call float @dx.op.unary.f32(i32 21, float %208)  ; Exp(value)
  %210 = fmul fast float %161, %138
  %211 = call float @dx.op.unary.f32(i32 21, float %210)  ; Exp(value)
  %212 = fsub fast float %209, %211
  %213 = fmul fast float %160, %212
  %214 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.unary.f32(i32 25, float %214)  ; Rsqrt(value)
  %216 = fmul fast float %215, %196
  %217 = fmul fast float %215, %197
  %218 = fmul fast float %215, %198
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = fcmp fast ogt float %220, 0.000000e+00
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 1
  %225 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %226 = fsub fast float %203, %223
  %227 = fadd fast float %226, %225
  %228 = fsub fast float %204, %224
  %229 = fadd fast float %228, %225
  %230 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %231 = fmul fast float %227, %230
  %232 = fmul fast float %229, %230
  %233 = call float @dx.op.unary.f32(i32 7, float %231)  ; Saturate(value)
  %234 = call float @dx.op.unary.f32(i32 7, float %232)  ; Saturate(value)
  %235 = fsub fast float 1.000000e+00, %233
  %236 = fsub fast float 1.000000e+00, %234
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fmul fast float %240, %238
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %243 = fadd fast float %242, %241
  %244 = fcmp fast ogt float %238, 0.000000e+00
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 32768
  %248 = icmp ne i32 %247, 0
  %249 = and i1 %244, %248
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 3
  %252 = fadd fast float %251, %243
  %253 = fcmp fast ole float %205, %252
  %254 = and i1 %249, %253
  %255 = select i1 %221, i32 %156, i32 0
  %256 = add i32 %255, %79
  %257 = xor i1 %221, %254
  %258 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %259 = fmul fast float %258, 0x3FE62E4300000000
  %260 = fmul fast float %259, %259
  %261 = select i1 %88, float 0.000000e+00, float 1.000000e+00
  %262 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %54
  store float %261, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  %263 = fmul fast float %259, %261
  %264 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %54
  store float %263, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  %265 = fmul fast float %260, %261
  %266 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %54
  store float %265, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %267 = xor i32 %54, 4
  %268 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %267
  %269 = load float, float addrspace(3)* %268, align 4, !tbaa !65, !noalias !69
  %270 = fadd fast float %269, %261
  %271 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %267
  %272 = load float, float addrspace(3)* %271, align 4, !tbaa !65, !noalias !69
  %273 = fadd fast float %272, %259
  %274 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %267
  %275 = load float, float addrspace(3)* %274, align 4, !tbaa !65, !noalias !69
  %276 = fadd fast float %275, %260
  store float %270, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  store float %273, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  store float %276, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %277 = xor i32 %54, 16
  %278 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %277
  %279 = load float, float addrspace(3)* %278, align 4, !tbaa !65, !noalias !69
  %280 = fadd fast float %279, %270
  %281 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %277
  %282 = load float, float addrspace(3)* %281, align 4, !tbaa !65, !noalias !69
  %283 = fadd fast float %282, %273
  %284 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %277
  %285 = load float, float addrspace(3)* %284, align 4, !tbaa !65, !noalias !69
  %286 = fadd fast float %285, %276
  store float %280, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  store float %283, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  store float %286, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %287 = xor i32 %54, 1
  %288 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentW@@3PAMA", i32 0, i32 %287
  %289 = load float, float addrspace(3)* %288, align 4, !tbaa !65, !noalias !69
  %290 = fadd fast float %289, %280
  %291 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentX@@3PAMA", i32 0, i32 %287
  %292 = load float, float addrspace(3)* %291, align 4, !tbaa !65, !noalias !69
  %293 = fadd fast float %292, %283
  %294 = fdiv fast float %293, %290
  %295 = and i32 %77, 1
  %296 = and i32 %295, %78
  %297 = and i32 %296, %256
  %298 = icmp ne i32 %297, 0
  %299 = and i1 %298, %89
  br i1 %299, label %300, label %308, !dx.controlflow.hints !73

; <label>:300                                     ; preds = %0
  %301 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %287
  %302 = load float, float addrspace(3)* %301, align 4, !tbaa !65, !noalias !69
  %303 = fadd fast float %302, %286
  %304 = fdiv fast float %303, %290
  %305 = lshr i32 %77, 1
  %306 = lshr i32 %78, 1
  %307 = lshr i32 %256, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %305, i32 %306, i32 %307, float %294, float %304, float %294, float %294, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %308

; <label>:308                                     ; preds = %300, %0
  br i1 %88, label %310, label %309, !dx.controlflow.hints !74

; <label>:309                                     ; preds = %308
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %77, i32 %78, i32 %256, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %310

; <label>:310                                     ; preds = %309, %308
  store float %261, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  store float 0.000000e+00, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  store float 0.000000e+00, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %311 = load float, float addrspace(3)* %268, align 4, !tbaa !65, !noalias !69
  %312 = fadd fast float %311, %261
  %313 = load float, float addrspace(3)* %271, align 4, !tbaa !65, !noalias !69
  %314 = load float, float addrspace(3)* %274, align 4, !tbaa !65, !noalias !69
  store float %312, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  store float %313, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  store float %314, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %315 = load float, float addrspace(3)* %278, align 4, !tbaa !65, !noalias !69
  %316 = fadd fast float %315, %312
  %317 = load float, float addrspace(3)* %281, align 4, !tbaa !65, !noalias !69
  %318 = fadd fast float %317, %313
  %319 = load float, float addrspace(3)* %284, align 4, !tbaa !65, !noalias !69
  %320 = fadd fast float %319, %314
  store float %316, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  store float %318, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  store float %320, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %321 = load float, float addrspace(3)* %288, align 4, !tbaa !65, !noalias !69
  %322 = fadd fast float %321, %316
  %323 = load float, float addrspace(3)* %291, align 4, !tbaa !65, !noalias !69
  %324 = fadd fast float %323, %318
  %325 = fdiv fast float %324, %322
  br i1 %299, label %326, label %334, !dx.controlflow.hints !75

; <label>:326                                     ; preds = %310
  %327 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %287
  %328 = load float, float addrspace(3)* %327, align 4, !tbaa !65, !noalias !69
  %329 = fadd fast float %328, %320
  %330 = fdiv fast float %329, %322
  %331 = lshr i32 %77, 1
  %332 = lshr i32 %78, 1
  %333 = lshr i32 %256, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %331, i32 %332, i32 %333, float %325, float %330, float %325, float %325, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %334

; <label>:334                                     ; preds = %326, %310
  br i1 %88, label %336, label %335, !dx.controlflow.hints !76

; <label>:335                                     ; preds = %334
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %77, i32 %78, i32 %256, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %336

; <label>:336                                     ; preds = %335, %334
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = fsub fast float %205, %338
  %341 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %340)  ; FMax(a,b)
  %342 = fmul fast float %341, 0x3FF7154760000000
  %343 = fmul fast float %342, %339
  %344 = call float @dx.op.unary.f32(i32 21, float %343)  ; Exp(value)
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = fmul fast float %351, %344
  %353 = fmul fast float %352, %346
  %354 = fmul fast float %352, %347
  %355 = fmul fast float %352, %348
  %356 = fmul fast float %352, %350
  %357 = select i1 %254, float 0.000000e+00, float %352
  %358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.i32 %358, 2
  %360 = extractvalue %dx.types.CBufRet.i32 %358, 3
  %361 = call i32 @dx.op.tertiary.i32(i32 49, i32 %71, i32 %359, i32 %69)  ; UMad(a,b,c)
  %362 = call i32 @dx.op.tertiary.i32(i32 49, i32 %73, i32 %360, i32 %361)  ; UMad(a,b,c)
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %362, i32 0)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = fadd fast float %136, 1.000000e+00
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = extractvalue %dx.types.CBufRet.f32 %366, 1
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = fmul fast float %371, %144
  %373 = call float @dx.op.unary.f32(i32 21, float %372)  ; Exp(value)
  %374 = fmul fast float %373, %370
  %375 = fsub fast float 4.000000e+00, %370
  %376 = fadd fast float %375, %374
  %377 = fmul fast float %365, 2.000000e+00
  %378 = fmul fast float %377, %367
  %379 = fmul fast float %137, 2.000000e+00
  %380 = fmul fast float %379, %368
  %381 = fsub fast float 1.000000e+00, %378
  %382 = fsub fast float 1.000000e+00, %380
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %386 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %387 = fmul fast float %384, %381
  %388 = fmul fast float %385, %381
  %389 = fmul fast float %386, %381
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %394 = fmul fast float %391, %382
  %395 = fmul fast float %392, %382
  %396 = fmul fast float %393, %382
  %397 = fadd fast float %394, %387
  %398 = fadd fast float %395, %388
  %399 = fadd fast float %396, %389
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = fadd fast float %397, %401
  %405 = fadd fast float %398, %402
  %406 = fadd fast float %399, %403
  %407 = fadd fast float %137, 1.000000e+00
  %408 = fmul fast float %136, 2.000000e+00
  %409 = fmul fast float %408, %367
  %410 = fmul fast float %407, 2.000000e+00
  %411 = fmul fast float %410, %368
  %412 = fsub fast float 1.000000e+00, %409
  %413 = fsub fast float 1.000000e+00, %411
  %414 = fmul fast float %384, %412
  %415 = fmul fast float %385, %412
  %416 = fmul fast float %386, %412
  %417 = fmul fast float %391, %413
  %418 = fmul fast float %392, %413
  %419 = fmul fast float %393, %413
  %420 = fadd fast float %417, %414
  %421 = fadd fast float %418, %415
  %422 = fadd fast float %419, %416
  %423 = fadd fast float %420, %401
  %424 = fadd fast float %421, %402
  %425 = fadd fast float %422, %403
  %426 = fmul fast float %423, %376
  %427 = fmul fast float %424, %376
  %428 = fmul fast float %425, %376
  %429 = fadd fast float %423, %404
  %430 = fmul fast float %376, %429
  %431 = fadd fast float %424, %405
  %432 = fmul fast float %376, %431
  %433 = fadd fast float %425, %406
  %434 = fmul fast float %376, %433
  %435 = fmul fast float %430, 5.000000e-01
  %436 = fmul fast float %432, 5.000000e-01
  %437 = fmul fast float %434, 5.000000e-01
  %438 = fsub fast float %435, %426
  %439 = fsub fast float %436, %427
  %440 = fsub fast float %437, %428
  %441 = call float @dx.op.dot3.f32(i32 55, float %438, float %439, float %440, float %438, float %439, float %440)  ; Dot3(ax,ay,az,bx,by,bz)
  %442 = call float @dx.op.unary.f32(i32 25, float %441)  ; Rsqrt(value)
  %443 = fmul fast float %441, 2.000000e+00
  %444 = fmul fast float %443, %442
  %445 = call float @dx.op.binary.f32(i32 35, float %213, float %444)  ; FMax(a,b)
  %446 = xor i1 %254, true
  %447 = and i32 %364, 8
  %448 = icmp ne i32 %447, 0
  %449 = and i1 %448, %446
  br i1 %449, label %450, label %666, !dx.controlflow.hints !77

; <label>:450                                     ; preds = %336
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %454 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %457 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %458 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %459 = fsub fast float %203, %456
  %460 = fsub fast float %204, %457
  %461 = fsub fast float %205, %458
  %462 = fmul fast float %459, %452
  %463 = fmul fast float %460, %453
  %464 = fmul fast float %461, %454
  %465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.i32 %465, 3
  %467 = icmp eq i32 %466, 0
  %468 = fcmp fast oge float %464, 0.000000e+00
  %469 = fcmp fast ole float %464, 1.000000e+00
  br i1 %467, label %472, label %470, !dx.controlflow.hints !78

; <label>:470                                     ; preds = %450
  %471 = and i1 %468, %469
  br label %482

; <label>:472                                     ; preds = %450
  %473 = fcmp fast oge float %462, 0.000000e+00
  %474 = fcmp fast oge float %463, 0.000000e+00
  %475 = and i1 %473, %474
  %476 = and i1 %468, %475
  %477 = fcmp fast ole float %462, 1.000000e+00
  %478 = fcmp fast ole float %463, 1.000000e+00
  %479 = and i1 %477, %478
  %480 = and i1 %469, %479
  %481 = and i1 %476, %480
  br label %482

; <label>:482                                     ; preds = %472, %470
  %483 = phi i1 [ %471, %470 ], [ %481, %472 ]
  br i1 %483, label %484, label %659, !dx.controlflow.hints !79

; <label>:484                                     ; preds = %482
  %485 = fcmp fast oeq float %445, 0.000000e+00
  br i1 %485, label %500, label %486, !dx.controlflow.hints !80

; <label>:486                                     ; preds = %484
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 3
  %489 = fmul fast float %488, %445
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 0
  %492 = extractvalue %dx.types.CBufRet.f32 %490, 1
  %493 = extractvalue %dx.types.CBufRet.f32 %490, 2
  %494 = fmul fast float %491, %489
  %495 = fmul fast float %492, %489
  %496 = fmul fast float %493, %489
  %497 = call float @dx.op.unary.f32(i32 23, float %494)  ; Log(value)
  %498 = call float @dx.op.unary.f32(i32 23, float %495)  ; Log(value)
  %499 = call float @dx.op.unary.f32(i32 23, float %496)  ; Log(value)
  br label %500

; <label>:500                                     ; preds = %486, %484
  %501 = phi float [ %497, %486 ], [ 0.000000e+00, %484 ]
  %502 = phi float [ %498, %486 ], [ 0.000000e+00, %484 ]
  %503 = phi float [ %499, %486 ], [ 0.000000e+00, %484 ]
  %504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.i32 %504, 0
  %506 = extractvalue %dx.types.CBufRet.i32 %504, 1
  %507 = uitofp i32 %505 to float
  %508 = uitofp i32 %506 to float
  %509 = fmul fast float %462, %507
  %510 = fmul fast float %463, %508
  %511 = fadd fast float %509, 5.000000e-01
  %512 = fadd fast float %510, 5.000000e-01
  %513 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %514 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %515 = call float @dx.op.unary.f32(i32 27, float %511)  ; Round_ni(value)
  %516 = call float @dx.op.unary.f32(i32 27, float %512)  ; Round_ni(value)
  %517 = fadd fast float %515, 1.000000e+00
  %518 = fadd fast float %516, 1.000000e+00
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 0
  %521 = extractvalue %dx.types.CBufRet.f32 %519, 1
  %522 = fmul fast float %520, %517
  %523 = fmul fast float %521, %518
  %524 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %27, %dx.types.Handle %44, float %522, float %523, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = extractvalue %dx.types.ResRet.f32 %524, 2
  %528 = extractvalue %dx.types.ResRet.f32 %524, 3
  %529 = extractvalue %dx.types.CBufRet.i32 %504, 2
  %530 = extractvalue %dx.types.CBufRet.f32 %519, 2
  %531 = uitofp i32 %529 to float
  %532 = fadd fast float %531, -1.000000e+00
  %533 = fmul fast float %532, %525
  %534 = fmul fast float %532, %526
  %535 = fmul fast float %532, %527
  %536 = fmul fast float %532, %528
  %537 = fadd fast float %533, 5.000000e-01
  %538 = fadd fast float %534, 5.000000e-01
  %539 = fadd fast float %535, 5.000000e-01
  %540 = fadd fast float %536, 5.000000e-01
  %541 = fptoui float %537 to i32
  %542 = fptoui float %538 to i32
  %543 = fptoui float %539 to i32
  %544 = fptoui float %540 to i32
  %545 = uitofp i32 %541 to float
  %546 = uitofp i32 %542 to float
  %547 = uitofp i32 %543 to float
  %548 = uitofp i32 %544 to float
  %549 = fadd fast float %545, 5.000000e-01
  %550 = fadd fast float %546, 5.000000e-01
  %551 = fadd fast float %547, 5.000000e-01
  %552 = fadd fast float %548, 5.000000e-01
  %553 = fmul fast float %549, %530
  %554 = fmul fast float %550, %530
  %555 = fmul fast float %551, %530
  %556 = fmul fast float %552, %530
  %557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %553, float %464, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %554, float %464, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %555, float %464, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %556, float %464, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = fsub fast float %562, %564
  %566 = fmul fast float %565, %513
  %567 = fadd fast float %566, %564
  %568 = fsub fast float %560, %558
  %569 = fmul fast float %568, %513
  %570 = fadd fast float %569, %558
  %571 = fsub fast float %570, %567
  %572 = fmul fast float %571, %514
  %573 = fadd fast float %572, %567
  %574 = fcmp fast ogt float %573, 0.000000e+00
  br i1 %574, label %575, label %643, !dx.controlflow.hints !81

; <label>:575                                     ; preds = %500
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %578 = extractvalue %dx.types.CBufRet.f32 %576, 1
  %579 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %583 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %584 = fmul fast float %460, %452
  %585 = fmul fast float %461, %452
  %586 = fadd fast float %462, %581
  %587 = fadd fast float %584, %582
  %588 = fadd fast float %585, %583
  %589 = fmul fast float %586, %577
  %590 = fmul fast float %587, %577
  %591 = fmul fast float %588, %577
  %592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %42, float %589, float %590, float %591, float undef, i32 0, i32 0, i32 0, float %501)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = fmul fast float %586, %578
  %595 = fmul fast float %587, %578
  %596 = fmul fast float %588, %578
  %597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %42, float %594, float %595, float %596, float undef, i32 0, i32 0, i32 0, float %502)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 1
  %599 = fmul fast float %586, %579
  %600 = fmul fast float %587, %579
  %601 = fmul fast float %588, %579
  %602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %42, float %599, float %600, float %601, float undef, i32 0, i32 0, i32 0, float %503)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 2
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 1
  %606 = fmul fast float %598, %593
  %607 = fmul fast float %606, %603
  %608 = call float @dx.op.unary.f32(i32 23, float %607)  ; Log(value)
  %609 = fmul fast float %608, %605
  %610 = call float @dx.op.unary.f32(i32 21, float %609)  ; Exp(value)
  %611 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %612 = fmul fast float %573, %573
  %613 = fmul fast float %612, %610
  %614 = fmul fast float %613, %611
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 3
  %617 = fmul fast float %616, %614
  %618 = bitcast float %617 to i32
  %619 = sitofp i32 %618 to float
  %620 = fptosi float %619 to i32
  %621 = bitcast i32 %620 to float
  %622 = fsub fast float 1.000000e+00, %614
  %623 = bitcast float %622 to i32
  %624 = sitofp i32 %623 to float
  %625 = fptosi float %624 to i32
  %626 = bitcast i32 %625 to float
  %627 = fadd fast float %621, %626
  %628 = bitcast float %627 to i32
  %629 = sub nsw i32 2129859010, %628
  %630 = bitcast i32 %629 to float
  %631 = fmul fast float %630, %621
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = fmul fast float %631, %635
  %637 = fadd fast float %636, 1.000000e+00
  %638 = bitcast float %637 to i32
  %639 = sub nsw i32 2129859010, %638
  %640 = bitcast i32 %639 to float
  %641 = fmul fast float %631, %633
  %642 = fmul fast float %641, %640
  br label %643

; <label>:643                                     ; preds = %575, %500
  %644 = phi float [ %642, %575 ], [ %573, %500 ]
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %648 = extractvalue %dx.types.CBufRet.f32 %645, 2
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %651 = fmul fast float %646, %644
  %652 = fmul fast float %647, %644
  %653 = fmul fast float %648, %644
  %654 = fadd fast float %651, %353
  %655 = fadd fast float %652, %354
  %656 = fadd fast float %653, %355
  %657 = fmul fast float %650, %644
  %658 = fadd fast float %657, %356
  br label %659

; <label>:659                                     ; preds = %643, %482
  %660 = phi float [ %654, %643 ], [ %353, %482 ]
  %661 = phi float [ %655, %643 ], [ %354, %482 ]
  %662 = phi float [ %656, %643 ], [ %355, %482 ]
  %663 = phi float [ %658, %643 ], [ %356, %482 ]
  %664 = phi float [ %644, %643 ], [ 0.000000e+00, %482 ]
  %665 = fadd fast float %664, %357
  br label %666

; <label>:666                                     ; preds = %659, %336
  %667 = phi float [ %660, %659 ], [ %353, %336 ]
  %668 = phi float [ %661, %659 ], [ %354, %336 ]
  %669 = phi float [ %662, %659 ], [ %355, %336 ]
  %670 = phi float [ %663, %659 ], [ %356, %336 ]
  %671 = phi float [ %665, %659 ], [ %357, %336 ]
  %672 = phi float [ %664, %659 ], [ 0.000000e+00, %336 ]
  br i1 %254, label %1170, label %673, !dx.controlflow.hints !82

; <label>:673                                     ; preds = %666
  %674 = and i32 %364, 2
  %675 = icmp ne i32 %674, 0
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 2
  %680 = fadd fast float %679, %677
  %681 = fcmp fast ole float %205, %680
  %682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.i32 %682, 3
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %704, !dx.controlflow.hints !83

; <label>:685                                     ; preds = %673
  %686 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %687 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %688 = fsub fast float %203, %686
  %689 = fsub fast float %204, %687
  %690 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %691 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %692 = fdiv fast float 1.000000e+00, %690
  %693 = fdiv fast float 1.000000e+00, %691
  %694 = fmul fast float %688, %692
  %695 = fmul fast float %693, %689
  %696 = fcmp fast oge float %694, 0.000000e+00
  %697 = fcmp fast oge float %695, 0.000000e+00
  %698 = and i1 %696, %697
  %699 = and i1 %681, %698
  %700 = fcmp fast ole float %694, 1.000000e+00
  %701 = fcmp fast ole float %695, 1.000000e+00
  %702 = and i1 %700, %701
  %703 = and i1 %702, %699
  br label %704

; <label>:704                                     ; preds = %685, %673
  %705 = phi i1 [ %703, %685 ], [ %681, %673 ]
  %706 = and i1 %675, %705
  br i1 %706, label %707, label %886, !dx.controlflow.hints !84

; <label>:707                                     ; preds = %704
  %708 = fcmp fast oeq float %445, 0.000000e+00
  br i1 %708, label %714, label %709, !dx.controlflow.hints !85

; <label>:709                                     ; preds = %707
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 3
  %712 = fmul fast float %711, %445
  %713 = call float @dx.op.unary.f32(i32 23, float %712)  ; Log(value)
  br label %714

; <label>:714                                     ; preds = %709, %707
  %715 = phi float [ %713, %709 ], [ 0.000000e+00, %707 ]
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 0
  %718 = extractvalue %dx.types.CBufRet.f32 %716, 1
  %719 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %720 = fsub fast float %203, %717
  %721 = fsub fast float %204, %718
  %722 = fsub fast float %205, %719
  %723 = fmul fast float %720, %720
  %724 = fmul fast float %721, %721
  %725 = fadd fast float %723, %724
  %726 = fmul fast float %722, %722
  %727 = fadd fast float %725, %726
  %728 = call float @dx.op.unary.f32(i32 24, float %727)  ; Sqrt(value)
  %729 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %730 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %731 = fsub fast float %203, %729
  %732 = fsub fast float %204, %730
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 0
  %735 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %736 = fmul fast float %731, %734
  %737 = fmul fast float %732, %735
  %738 = fsub fast float 1.000000e+00, %737
  br i1 %684, label %745, label %739, !dx.controlflow.hints !86

; <label>:739                                     ; preds = %714
  %740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %736, float %738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  br label %751

; <label>:745                                     ; preds = %714
  %746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %736, float %738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  br label %751

; <label>:751                                     ; preds = %745, %739
  %752 = phi float [ %741, %739 ], [ %747, %745 ]
  %753 = phi float [ %742, %739 ], [ %748, %745 ]
  %754 = phi float [ %743, %739 ], [ %749, %745 ]
  %755 = phi float [ %744, %739 ], [ %750, %745 ]
  %756 = extractvalue %dx.types.CBufRet.f32 %733, 3
  %757 = fmul fast float %756, %753
  %758 = fmul fast float %757, %752
  %759 = fsub fast float %757, %758
  %760 = fcmp fast ole float %759, 0.000000e+00
  %761 = fmul fast float %756, %754
  %762 = fadd fast float %761, %677
  %763 = fdiv fast float 1.000000e+00, %759
  %764 = select i1 %760, float 1.000000e+06, float %763
  %765 = fsub fast float %205, %677
  %766 = fsub fast float %765, %758
  %767 = fmul fast float %764, %766
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %769 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %770 = fmul fast float %769, %768
  %771 = fsub fast float %769, %770
  %772 = fcmp fast olt float %205, %762
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 3
  %775 = select i1 %772, float %774, float 1.000000e+00
  %776 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %777 = fcmp fast oeq float %776, 0.000000e+00
  br i1 %777, label %860, label %778, !dx.controlflow.hints !87

; <label>:778                                     ; preds = %751
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 3
  %781 = fcmp fast ogt float %780, 0.000000e+00
  %782 = extractvalue %dx.types.CBufRet.f32 %773, 2
  br i1 %781, label %783, label %813, !dx.controlflow.hints !88

; <label>:783                                     ; preds = %778
  %784 = fmul fast float %736, %780
  %785 = fmul fast float %737, %780
  %786 = fsub fast float 1.000000e+00, %785
  %787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %42, float %784, float %786, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  %789 = extractvalue %dx.types.ResRet.f32 %787, 1
  %790 = fmul fast float %788, 2.000000e+00
  %791 = fmul fast float %789, 2.000000e+00
  %792 = fadd fast float %790, -1.000000e+00
  %793 = fadd fast float %791, -1.000000e+00
  %794 = fmul fast float %776, %203
  %795 = fmul fast float %776, %204
  %796 = fmul fast float %776, %205
  %797 = call float @dx.op.unary.f32(i32 22, float %782)  ; Frc(value)
  %798 = fmul fast float %792, %797
  %799 = fmul fast float %793, %797
  %800 = fsub fast float %794, %798
  %801 = fsub fast float %795, %799
  %802 = fadd fast float %782, 5.000000e-01
  %803 = call float @dx.op.unary.f32(i32 22, float %802)  ; Frc(value)
  %804 = fmul fast float %803, %792
  %805 = fmul fast float %803, %793
  %806 = fadd fast float %794, -5.000000e-01
  %807 = fsub fast float %806, %804
  %808 = fadd fast float %795, -5.000000e-01
  %809 = fsub fast float %808, %805
  %810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %42, float %807, float %809, float %796, float undef, i32 0, i32 0, i32 0, float %715)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  br label %826

; <label>:813                                     ; preds = %778
  %814 = extractvalue %dx.types.CBufRet.f32 %779, 0
  %815 = extractvalue %dx.types.CBufRet.f32 %779, 1
  %816 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %817 = fmul fast float %782, %814
  %818 = fmul fast float %782, %815
  %819 = fmul fast float %782, %816
  %820 = fsub fast float %203, %817
  %821 = fsub fast float %204, %818
  %822 = fsub fast float %205, %819
  %823 = fmul fast float %820, %776
  %824 = fmul fast float %821, %776
  %825 = fmul fast float %822, %776
  br label %826

; <label>:826                                     ; preds = %813, %783
  %827 = phi float [ %800, %783 ], [ %823, %813 ]
  %828 = phi float [ %801, %783 ], [ %824, %813 ]
  %829 = phi float [ %796, %783 ], [ %825, %813 ]
  %830 = phi float [ %811, %783 ], [ 0.000000e+00, %813 ]
  %831 = phi float [ %812, %783 ], [ 0.000000e+00, %813 ]
  %832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %42, float %827, float %828, float %829, float undef, i32 0, i32 0, i32 0, float %715)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = extractvalue %dx.types.ResRet.f32 %832, 1
  br i1 %781, label %835, label %847, !dx.controlflow.hints !89

; <label>:835                                     ; preds = %826
  %836 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %837 = call float @dx.op.unary.f32(i32 22, float %836)  ; Frc(value)
  %838 = fmul fast float %837, 2.000000e+00
  %839 = fadd fast float %838, -1.000000e+00
  %840 = call float @dx.op.unary.f32(i32 6, float %839)  ; FAbs(value)
  %841 = fsub fast float %830, %833
  %842 = fmul fast float %840, %841
  %843 = fadd fast float %842, %833
  %844 = fsub fast float %831, %834
  %845 = fmul fast float %840, %844
  %846 = fadd fast float %845, %834
  br label %847

; <label>:847                                     ; preds = %835, %826
  %848 = phi float [ %843, %835 ], [ %833, %826 ]
  %849 = phi float [ %846, %835 ], [ %834, %826 ]
  %850 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %851 = fadd fast float %850, %850
  %852 = fdiv fast float 2.000000e+00, %851
  %853 = fmul fast float %850, 2.000000e+00
  %854 = fadd fast float %848, -1.000000e+00
  %855 = fadd fast float %854, %849
  %856 = fadd fast float %855, %853
  %857 = fmul fast float %856, %852
  %858 = fadd fast float %857, -1.000000e+00
  %859 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  br label %860

; <label>:860                                     ; preds = %847, %751
  %861 = phi float [ %859, %847 ], [ 1.000000e+00, %751 ]
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %865 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %866 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 1
  %869 = fsub fast float %728, %868
  %870 = extractvalue %dx.types.CBufRet.f32 %867, 2
  %871 = fmul fast float %869, %870
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = fmul fast float %775, %755
  %874 = fmul fast float %873, %771
  %875 = fmul fast float %874, %861
  %876 = fmul fast float %875, %872
  %877 = fmul fast float %876, %863
  %878 = fmul fast float %876, %864
  %879 = fmul fast float %876, %865
  %880 = fadd fast float %877, %667
  %881 = fadd fast float %878, %668
  %882 = fadd fast float %879, %669
  %883 = fmul fast float %876, %866
  %884 = fadd fast float %883, %670
  %885 = fadd fast float %876, %671
  br label %886

; <label>:886                                     ; preds = %860, %704
  %887 = phi float [ %880, %860 ], [ %667, %704 ]
  %888 = phi float [ %881, %860 ], [ %668, %704 ]
  %889 = phi float [ %882, %860 ], [ %669, %704 ]
  %890 = phi float [ %884, %860 ], [ %670, %704 ]
  %891 = phi float [ %885, %860 ], [ %671, %704 ]
  %892 = and i32 %364, 1
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %1170, label %894, !dx.controlflow.hints !90

; <label>:894                                     ; preds = %886
  %895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.i32 %895, 1
  %897 = and i32 %896, 1
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %974, label %899, !dx.controlflow.hints !91

; <label>:899                                     ; preds = %894
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 3
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %905 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %907 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 0
  %910 = extractvalue %dx.types.CBufRet.f32 %908, 1
  %911 = extractvalue %dx.types.CBufRet.f32 %908, 2
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 3
  %914 = and i32 %896, 2
  %915 = extractvalue %dx.types.CBufRet.i32 %895, 0
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %953, label %917

; <label>:917                                     ; preds = %899
  br label %918

; <label>:918                                     ; preds = %918, %917
  %919 = phi float [ %947, %918 ], [ 0.000000e+00, %917 ]
  %920 = phi float [ %946, %918 ], [ 1.000000e+06, %917 ]
  %921 = phi i32 [ %948, %918 ], [ 0, %917 ]
  %922 = add i32 %921, 171
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %922)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %928 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %929 = fsub fast float %203, %924
  %930 = fsub fast float %204, %925
  %931 = fmul fast float %929, %929
  %932 = fmul fast float %930, %930
  %933 = fadd fast float %931, %932
  %934 = call float @dx.op.unary.f32(i32 24, float %933)  ; Sqrt(value)
  %935 = fsub fast float %934, %928
  %936 = icmp ne i32 %914, 0
  %937 = fsub fast float -0.000000e+00, %904
  %938 = select i1 %936, float %937, float %904
  %939 = fmul fast float %935, %938
  %940 = call float @dx.op.unary.f32(i32 7, float %939)  ; Saturate(value)
  %941 = fmul fast float %940, %903
  %942 = fsub fast float %927, %205
  %943 = fmul fast float %942, %901
  %944 = call float @dx.op.unary.f32(i32 7, float %943)  ; Saturate(value)
  %945 = fmul fast float %941, %944
  %946 = call float @dx.op.binary.f32(i32 36, float %920, float %935)  ; FMin(a,b)
  %947 = call float @dx.op.binary.f32(i32 35, float %919, float %945)  ; FMax(a,b)
  %948 = add nuw nsw i32 %921, 1
  %949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.i32 %949, 0
  %951 = icmp ult i32 %948, %950
  br i1 %951, label %918, label %952

; <label>:952                                     ; preds = %918
  br label %953

; <label>:953                                     ; preds = %952, %899
  %954 = phi float [ 0.000000e+00, %899 ], [ %947, %952 ]
  %955 = phi float [ 1.000000e+06, %899 ], [ %946, %952 ]
  %956 = fadd fast float %954, %891
  %957 = fmul fast float %955, %913
  %958 = call float @dx.op.unary.f32(i32 7, float %957)  ; Saturate(value)
  %959 = fsub fast float %909, %905
  %960 = fsub fast float %910, %906
  %961 = fsub fast float %911, %907
  %962 = fmul fast float %958, %959
  %963 = fmul fast float %958, %960
  %964 = fmul fast float %958, %961
  %965 = fadd fast float %962, %905
  %966 = fadd fast float %963, %906
  %967 = fadd fast float %964, %907
  %968 = fmul fast float %965, %954
  %969 = fmul fast float %966, %954
  %970 = fmul fast float %967, %954
  %971 = fadd fast float %968, %887
  %972 = fadd fast float %969, %888
  %973 = fadd fast float %970, %889
  br label %1170

; <label>:974                                     ; preds = %894
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %977 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %978 = fmul fast float %976, %203
  %979 = fmul fast float %977, %204
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 0
  %982 = extractvalue %dx.types.CBufRet.f32 %980, 1
  %983 = fadd fast float %978, %981
  %984 = fadd fast float %979, %982
  %985 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  %986 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  %987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %45, float %985, float %986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %988 = extractvalue %dx.types.ResRet.f32 %987, 0
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %991 = fmul fast float %990, %988
  %992 = fsub fast float %983, %985
  %993 = fsub fast float %984, %986
  %994 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %995 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %996 = fmul fast float %994, %992
  %997 = fmul fast float %995, %993
  %998 = fmul fast float %996, %996
  %999 = fmul fast float %997, %997
  %1000 = fadd fast float %998, %999
  %1001 = call float @dx.op.unary.f32(i32 24, float %1000)  ; Sqrt(value)
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 3
  %1004 = fmul fast float %1003, %1001
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1007 = fsub fast float %1006, %991
  %1008 = fmul fast float %1007, %1005
  %1009 = extractvalue %dx.types.CBufRet.f32 %989, 1
  %1010 = fsub fast float %205, %991
  %1011 = fsub fast float %1010, %1009
  %1012 = fsub fast float %1011, %1008
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1015 = fsub fast float %1012, %1014
  %1016 = fcmp fast olt float %1015, 0.000000e+00
  %1017 = extractvalue %dx.types.CBufRet.i32 %895, 0
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1069, label %1019

; <label>:1019                                    ; preds = %974
  br label %1020

; <label>:1020                                    ; preds = %1058, %1019
  %1021 = phi i32 [ %1064, %1058 ], [ 1, %1019 ]
  %1022 = phi i32 [ %1065, %1058 ], [ 0, %1019 ]
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.i32 %1025, 1
  %1027 = and i32 %1026, 8
  %1028 = icmp eq i32 %1027, 0
  %1029 = fcmp fast ogt float %1024, %1012
  %1030 = or i1 %1029, %1028
  %1031 = add i32 %1022, 171
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %1031)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  br i1 %1030, label %1036, label %1042, !dx.controlflow.hints !92

; <label>:1036                                    ; preds = %1020
  %1037 = fsub fast float %1033, %203
  %1038 = fsub fast float %1034, %204
  %1039 = fmul fast float %1037, %1037
  %1040 = fmul fast float %1038, %1038
  %1041 = fadd fast float %1039, %1040
  br label %1058

; <label>:1042                                    ; preds = %1020
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 2
  %1045 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  %1046 = fmul fast float %1045, %1044
  %1047 = fsub fast float %1046, %1024
  %1048 = fdiv fast float %1035, %1047
  %1049 = fsub fast float %203, %1033
  %1050 = fsub fast float %204, %1034
  %1051 = fsub fast float %1012, %1024
  %1052 = fmul fast float %1048, %1051
  %1053 = fmul fast float %1049, %1049
  %1054 = fmul fast float %1050, %1050
  %1055 = fadd fast float %1053, %1054
  %1056 = fmul fast float %1052, %1052
  %1057 = fadd fast float %1055, %1056
  br label %1058

; <label>:1058                                    ; preds = %1042, %1036
  %1059 = phi float [ %1041, %1036 ], [ %1057, %1042 ]
  %1060 = call float @dx.op.unary.f32(i32 24, float %1059)  ; Sqrt(value)
  %1061 = fsub float %1035, %1060
  %1062 = fcmp fast olt float %1061, 0.000000e+00
  %1063 = zext i1 %1062 to i32
  %1064 = and i32 %1063, %1021
  %1065 = add i32 %1022, 1
  %1066 = extractvalue %dx.types.CBufRet.i32 %1025, 0
  %1067 = icmp ult i32 %1065, %1066
  br i1 %1067, label %1020, label %1068

; <label>:1068                                    ; preds = %1058
  br label %1069

; <label>:1069                                    ; preds = %1068, %974
  %1070 = phi i32 [ 1, %974 ], [ %1064, %1068 ]
  br label %1071

; <label>:1071                                    ; preds = %1071, %1069
  %1072 = phi i32 [ %1108, %1071 ], [ %1070, %1069 ]
  %1073 = phi i32 [ %1109, %1071 ], [ 0, %1069 ]
  %1074 = add nuw nsw i32 %1073, 191
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %1074)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1079 = add nuw nsw i32 %1073, 195
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %1079)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.CBufRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.CBufRet.f32 %1080, 2
  %1084 = fsub fast float %203, %1076
  %1085 = fsub fast float %204, %1077
  %1086 = fsub fast float %1012, %1078
  %1087 = call float @dx.op.unary.f32(i32 6, float %1084)  ; FAbs(value)
  %1088 = call float @dx.op.unary.f32(i32 6, float %1085)  ; FAbs(value)
  %1089 = call float @dx.op.unary.f32(i32 6, float %1086)  ; FAbs(value)
  %1090 = fsub fast float %1087, %1081
  %1091 = fsub fast float %1088, %1082
  %1092 = fsub fast float %1089, %1083
  %1093 = call float @dx.op.binary.f32(i32 35, float %1090, float 0.000000e+00)  ; FMax(a,b)
  %1094 = call float @dx.op.binary.f32(i32 35, float %1091, float 0.000000e+00)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float %1092, float 0.000000e+00)  ; FMax(a,b)
  %1096 = fmul fast float %1093, %1093
  %1097 = fmul fast float %1094, %1094
  %1098 = fadd fast float %1097, %1096
  %1099 = fmul fast float %1095, %1095
  %1100 = fadd fast float %1098, %1099
  %1101 = call float @dx.op.unary.f32(i32 24, float %1100)  ; Sqrt(value)
  %1102 = call float @dx.op.binary.f32(i32 35, float %1091, float %1092)  ; FMax(a,b)
  %1103 = call float @dx.op.binary.f32(i32 35, float %1090, float %1102)  ; FMax(a,b)
  %1104 = call float @dx.op.binary.f32(i32 36, float %1103, float 0.000000e+00)  ; FMin(a,b)
  %1105 = fadd fast float %1104, %1101
  %1106 = fcmp ogt float %1105, -0.000000e+00
  %1107 = zext i1 %1106 to i32
  %1108 = and i32 %1107, %1072
  %1109 = add nuw nsw i32 %1073, 1
  %1110 = icmp eq i32 %1109, 4
  br i1 %1110, label %1111, label %1071

; <label>:1111                                    ; preds = %1071
  %1112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.i32 %1112, 1
  %1114 = lshr i32 %1113, 1
  %1115 = xor i32 %1114, %1108
  %1116 = zext i1 %1016 to i32
  %1117 = and i32 %1115, %1116
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1170, label %1119, !dx.controlflow.hints !93

; <label>:1119                                    ; preds = %1111
  %1120 = fmul fast float %196, %196
  %1121 = fmul fast float %197, %197
  %1122 = fadd fast float %1120, %1121
  %1123 = fmul fast float %198, %198
  %1124 = fadd fast float %1122, %1123
  %1125 = call float @dx.op.unary.f32(i32 24, float %1124)  ; Sqrt(value)
  %1126 = and i32 %896, 4
  %1127 = icmp ne i32 %1126, 0
  %1128 = select i1 %1127, float %1125, float 1.000000e+00
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1131 = fsub fast float %1128, %1130
  %1132 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1133 = fmul fast float %1131, %1132
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 3
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1139 = fsub fast float %1138, %1012
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1142 = fmul fast float %1139, %1141
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1144 = fmul fast float %1143, %1136
  %1145 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1146 = fsub fast float %1125, %1145
  %1147 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1148 = fmul fast float %1146, %1147
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1150 = fsub fast float 1.000000e+00, %1134
  %1151 = fmul fast float %1149, %1150
  %1152 = fadd fast float %1151, %1134
  %1153 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1154 = fsub fast float %1144, %1153
  %1155 = fmul fast float %1154, %1152
  %1156 = fadd fast float %1155, %1153
  %1157 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1158 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1159 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1160 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1161 = fadd fast float %1156, %891
  %1162 = fmul fast float %1156, %1157
  %1163 = fmul fast float %1156, %1158
  %1164 = fmul fast float %1156, %1159
  %1165 = fadd fast float %1162, %887
  %1166 = fadd fast float %1163, %888
  %1167 = fadd fast float %1164, %889
  %1168 = fmul fast float %1156, %1160
  %1169 = fadd fast float %1168, %890
  br label %1170

; <label>:1170                                    ; preds = %1119, %1111, %953, %886, %666
  %1171 = phi float [ %667, %666 ], [ %887, %886 ], [ %971, %953 ], [ %1165, %1119 ], [ %887, %1111 ]
  %1172 = phi float [ %668, %666 ], [ %888, %886 ], [ %972, %953 ], [ %1166, %1119 ], [ %888, %1111 ]
  %1173 = phi float [ %669, %666 ], [ %889, %886 ], [ %973, %953 ], [ %1167, %1119 ], [ %889, %1111 ]
  %1174 = phi float [ %670, %666 ], [ %890, %886 ], [ %890, %953 ], [ %1169, %1119 ], [ %890, %1111 ]
  %1175 = phi float [ %671, %666 ], [ %891, %886 ], [ %956, %953 ], [ %1161, %1119 ], [ %891, %1111 ]
  %1176 = and i32 %364, 32
  %1177 = icmp ne i32 %1176, 0
  %1178 = and i1 %254, %1177
  br i1 %1178, label %1179, label %1221, !dx.controlflow.hints !94

; <label>:1179                                    ; preds = %1170
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.CBufRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1184 = fsub fast float %203, %1181
  %1185 = fadd fast float %1184, %1183
  %1186 = fsub fast float %204, %1182
  %1187 = fadd fast float %1186, %1183
  %1188 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1189 = fmul fast float %1185, %1188
  %1190 = fmul fast float %1187, %1188
  %1191 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1192 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1193 = fsub fast float 1.000000e+00, %1191
  %1194 = fsub fast float 1.000000e+00, %1192
  %1195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %1193, float %1194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = fmul fast float %1196, 0x3F847AE140000000
  %1200 = fmul fast float %1197, 0x3F847AE140000000
  %1201 = fmul fast float %1198, 0x3F847AE140000000
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %1193, float %1194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %1193, float %1194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = call float @dx.op.dot3.f32(i32 55, float %1199, float %1200, float %1201, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1209 = fadd fast float %1203, %1196
  %1210 = fmul fast float %1209, 0x3F847AE140000000
  %1211 = fadd fast float %1204, %1197
  %1212 = fmul fast float %1211, 0x3F847AE140000000
  %1213 = fadd fast float %1205, %1198
  %1214 = fmul fast float %1213, 0x3F847AE140000000
  %1215 = fadd fast float %1208, %1175
  %1216 = fadd fast float %1199, %1171
  %1217 = fadd fast float %1200, %1172
  %1218 = fadd fast float %1201, %1173
  %1219 = fmul fast float %1207, %1208
  %1220 = fadd fast float %1219, %1174
  br label %1221

; <label>:1221                                    ; preds = %1179, %1170
  %1222 = phi float [ %1216, %1179 ], [ %1171, %1170 ]
  %1223 = phi float [ %1217, %1179 ], [ %1172, %1170 ]
  %1224 = phi float [ %1218, %1179 ], [ %1173, %1170 ]
  %1225 = phi float [ %1220, %1179 ], [ %1174, %1170 ]
  %1226 = phi float [ %1215, %1179 ], [ %1175, %1170 ]
  %1227 = phi float [ %1210, %1179 ], [ 0.000000e+00, %1170 ]
  %1228 = phi float [ %1212, %1179 ], [ 0.000000e+00, %1170 ]
  %1229 = phi float [ %1214, %1179 ], [ 0.000000e+00, %1170 ]
  %1230 = and i32 %364, 16
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %2023, label %1232, !dx.controlflow.hints !95

; <label>:1232                                    ; preds = %1221
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.CBufRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.CBufRet.f32 %1233, 2
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 3
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 3
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 3
  %1243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.i32 %1243, 0
  %1245 = icmp ne i32 %1244, 0
  %1246 = zext i1 %1245 to i32
  %1247 = extractvalue %dx.types.CBufRet.i32 %1243, 1
  %1248 = icmp ne i32 %1247, 0
  %1249 = zext i1 %1248 to i32
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1252 = bitcast float %1251 to i32
  %1253 = icmp eq i32 %1252, 0
  br i1 %1253, label %1303, label %1254

; <label>:1254                                    ; preds = %1232
  br label %1255

; <label>:1255                                    ; preds = %1298, %1254
  %1256 = phi i32 [ %1299, %1298 ], [ 0, %1254 ]
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = bitcast float %1258 to i32
  %1260 = call i32 @dx.op.tertiary.i32(i32 49, i32 %362, i32 %1259, i32 %1256)  ; UMad(a,b,c)
  %1261 = shl i32 %1260, 2
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  br label %1264

; <label>:1264                                    ; preds = %1267, %1255
  %1265 = phi i32 [ %1263, %1255 ], [ %1272, %1267 ]
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1298, label %1267

; <label>:1267                                    ; preds = %1264
  %1268 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1265)  ; FirstbitLo(value)
  %1269 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1256, i32 %1268)  ; UMad(a,b,c)
  %1270 = and i32 %1268, 31
  %1271 = shl i32 1, %1270
  %1272 = xor i32 %1271, %1265
  %1273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1269, i32 0)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.ResRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.ResRet.f32 %1273, 2
  %1277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1269, i32 16)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1277, 2
  %1281 = fsub fast float %1274, %1278
  %1282 = fsub fast float %1275, %1279
  %1283 = fsub fast float %1276, %1280
  %1284 = fadd fast float %1278, %1274
  %1285 = fadd fast float %1279, %1275
  %1286 = fadd fast float %1280, %1276
  %1287 = fcmp fast ogt float %203, %1281
  %1288 = fcmp fast ogt float %204, %1282
  %1289 = fcmp fast ogt float %205, %1283
  %1290 = and i1 %1287, %1288
  %1291 = and i1 %1289, %1290
  %1292 = fcmp fast olt float %203, %1284
  %1293 = fcmp fast olt float %204, %1285
  %1294 = fcmp fast olt float %205, %1286
  %1295 = and i1 %1292, %1293
  %1296 = and i1 %1294, %1295
  %1297 = and i1 %1291, %1296
  br i1 %1297, label %1301, label %1264, !dx.controlflow.hints !96

; <label>:1298                                    ; preds = %1264
  %1299 = add i32 %1256, 1
  %1300 = icmp ult i32 %1299, %1259
  br i1 %1300, label %1255, label %1302, !llvm.loop !97

; <label>:1301                                    ; preds = %1267
  br label %1303

; <label>:1302                                    ; preds = %1298
  br label %1303

; <label>:1303                                    ; preds = %1302, %1301, %1232
  %1304 = phi i32 [ 255, %1232 ], [ %1269, %1301 ], [ 255, %1302 ]
  %1305 = icmp eq i32 %1304, 255
  br i1 %1305, label %1325, label %1306, !dx.controlflow.hints !99

; <label>:1306                                    ; preds = %1303
  %1307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 32)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  %1309 = extractvalue %dx.types.ResRet.f32 %1307, 1
  %1310 = extractvalue %dx.types.ResRet.f32 %1307, 2
  %1311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 132)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 136)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 152)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1304, i32 156)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1304, i32 160)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = icmp ne i32 %1318, 0
  %1322 = zext i1 %1321 to i32
  %1323 = icmp ne i32 %1320, 0
  %1324 = zext i1 %1323 to i32
  br label %1325

; <label>:1325                                    ; preds = %1306, %1303
  %1326 = phi float [ %1308, %1306 ], [ %1234, %1303 ]
  %1327 = phi float [ %1309, %1306 ], [ %1235, %1303 ]
  %1328 = phi float [ %1310, %1306 ], [ %1236, %1303 ]
  %1329 = phi float [ %1312, %1306 ], [ %1238, %1303 ]
  %1330 = phi float [ %1314, %1306 ], [ %1240, %1303 ]
  %1331 = phi float [ %1316, %1306 ], [ %1242, %1303 ]
  %1332 = phi i32 [ %1322, %1306 ], [ %1246, %1303 ]
  %1333 = phi i32 [ %1324, %1306 ], [ %1249, %1303 ]
  %1334 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1335 = extractvalue %dx.types.CBufRet.f32 %1239, 1
  %1336 = fsub fast float %203, %1334
  %1337 = fsub fast float %204, %1335
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 2
  %1340 = extractvalue %dx.types.CBufRet.f32 %1338, 3
  %1341 = fmul fast float %1336, %1339
  %1342 = fmul fast float %1337, %1340
  %1343 = call float @dx.op.binary.f32(i32 36, float %1341, float %1342)  ; FMin(a,b)
  %1344 = fcmp fast olt float %1343, 0.000000e+00
  %1345 = call float @dx.op.binary.f32(i32 35, float %1341, float %1342)  ; FMax(a,b)
  %1346 = fcmp fast ogt float %1345, 1.000000e+00
  %1347 = or i1 %1344, %1346
  %1348 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1349 = fcmp fast olt float %205, %1348
  %1350 = or i1 %1347, %1349
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 3
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 0
  %1355 = fadd fast float %1354, %1352
  %1356 = fcmp fast ogt float %205, %1355
  %1357 = or i1 %1350, %1356
  br i1 %1357, label %1642, label %1358, !dx.controlflow.hints !100

; <label>:1358                                    ; preds = %1325
  %1359 = fsub fast float 1.000000e+00, %1342
  %1360 = extractvalue %dx.types.CBufRet.f32 %1353, 3
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1364 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1368 = extractvalue %dx.types.CBufRet.f32 %1365, 2
  %1369 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  br i1 %1305, label %1385, label %1370, !dx.controlflow.hints !101

; <label>:1370                                    ; preds = %1358
  %1371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 48)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.ResRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.ResRet.f32 %1371, 2
  %1375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 104)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 108)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 112)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 116)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 120)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  br label %1385

; <label>:1385                                    ; preds = %1370, %1358
  %1386 = phi float [ %1378, %1370 ], [ %1360, %1358 ]
  %1387 = phi float [ %1382, %1370 ], [ %1362, %1358 ]
  %1388 = phi float [ %1384, %1370 ], [ %1363, %1358 ]
  %1389 = phi float [ %1380, %1370 ], [ %1364, %1358 ]
  %1390 = phi float [ %1372, %1370 ], [ %1366, %1358 ]
  %1391 = phi float [ %1373, %1370 ], [ %1367, %1358 ]
  %1392 = phi float [ %1374, %1370 ], [ %1368, %1358 ]
  %1393 = phi float [ %1376, %1370 ], [ %1369, %1358 ]
  %1394 = fcmp fast oeq float %1386, 0.000000e+00
  br i1 %1394, label %1510, label %1395, !dx.controlflow.hints !102

; <label>:1395                                    ; preds = %1385
  %1396 = fcmp fast ogt float %1387, 0.000000e+00
  %1397 = fcmp fast oeq float %445, 0.000000e+00
  br i1 %1397, label %1402, label %1398, !dx.controlflow.hints !85

; <label>:1398                                    ; preds = %1395
  %1399 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1400 = fmul fast float %1399, %445
  %1401 = call float @dx.op.unary.f32(i32 23, float %1400)  ; Log(value)
  br label %1402

; <label>:1402                                    ; preds = %1398, %1395
  %1403 = phi float [ %1401, %1398 ], [ 0.000000e+00, %1395 ]
  br i1 %1397, label %1408, label %1404, !dx.controlflow.hints !85

; <label>:1404                                    ; preds = %1402
  %1405 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1406 = fmul fast float %1405, %445
  %1407 = call float @dx.op.unary.f32(i32 23, float %1406)  ; Log(value)
  br label %1408

; <label>:1408                                    ; preds = %1404, %1402
  %1409 = phi float [ %1407, %1404 ], [ 0.000000e+00, %1402 ]
  br i1 %1396, label %1410, label %1472, !dx.controlflow.hints !103

; <label>:1410                                    ; preds = %1408
  %1411 = fcmp fast ogt float %1388, 0.000000e+00
  br i1 %1411, label %1412, label %1422, !dx.controlflow.hints !104

; <label>:1412                                    ; preds = %1410
  %1413 = fmul fast float %1388, %1341
  %1414 = fmul fast float %1388, %1359
  %1415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %42, float %1413, float %1414, float undef, float undef, i32 0, i32 0, i32 undef, float %1409)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1415, 1
  %1418 = fmul fast float %1416, 2.000000e+00
  %1419 = fmul fast float %1417, 2.000000e+00
  %1420 = fadd fast float %1418, -1.000000e+00
  %1421 = fadd fast float %1419, -1.000000e+00
  br label %1443

; <label>:1422                                    ; preds = %1410
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 3
  %1425 = fmul fast float %1424, %1341
  %1426 = fmul fast float %1424, %1359
  %1427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %44, float %1425, float %1426, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.ResRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.ResRet.f32 %1427, 2
  %1431 = fmul fast float %1428, 2.000000e+00
  %1432 = fmul fast float %1429, 2.000000e+00
  %1433 = fmul fast float %1430, 2.000000e+00
  %1434 = fadd fast float %1431, -1.000000e+00
  %1435 = fadd fast float %1432, -1.000000e+00
  %1436 = fadd fast float %1433, -1.000000e+00
  %1437 = extractvalue %dx.types.CBufRet.f32 %1353, 1
  %1438 = fmul fast float %1434, %1437
  %1439 = fmul fast float %1435, %1437
  %1440 = extractvalue %dx.types.CBufRet.f32 %1353, 2
  %1441 = fmul fast float %1440, 5.000000e-01
  %1442 = fmul fast float %1441, %1436
  br label %1443

; <label>:1443                                    ; preds = %1422, %1412
  %1444 = phi float [ %1420, %1412 ], [ %1438, %1422 ]
  %1445 = phi float [ %1421, %1412 ], [ %1439, %1422 ]
  %1446 = phi float [ 0.000000e+00, %1412 ], [ %1442, %1422 ]
  %1447 = fmul fast float %1386, %203
  %1448 = fmul fast float %1386, %204
  %1449 = fmul fast float %1386, %205
  %1450 = call float @dx.op.unary.f32(i32 22, float %1387)  ; Frc(value)
  %1451 = fmul fast float %1450, %1444
  %1452 = fmul fast float %1450, %1445
  %1453 = fmul fast float %1450, %1446
  %1454 = fsub fast float %1447, %1451
  %1455 = fsub fast float %1448, %1452
  %1456 = fsub fast float %1449, %1453
  %1457 = fadd fast float %1387, 5.000000e-01
  %1458 = call float @dx.op.unary.f32(i32 22, float %1457)  ; Frc(value)
  %1459 = fmul fast float %1458, %1444
  %1460 = fmul fast float %1458, %1445
  %1461 = fmul fast float %1458, %1446
  %1462 = fadd fast float %1447, -5.000000e-01
  %1463 = fsub fast float %1462, %1459
  %1464 = fadd fast float %1448, -5.000000e-01
  %1465 = fsub fast float %1464, %1460
  %1466 = fadd fast float %1449, -5.000000e-01
  %1467 = fsub fast float %1466, %1461
  %1468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %42, float %1463, float %1465, float %1467, float undef, i32 0, i32 0, i32 0, float %1403)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.ResRet.f32 %1468, 1
  %1471 = fadd fast float %1469, %1389
  br label %1482

; <label>:1472                                    ; preds = %1408
  %1473 = fmul fast float %1393, %1390
  %1474 = fmul fast float %1393, %1391
  %1475 = fmul fast float %1393, %1392
  %1476 = fsub fast float %203, %1473
  %1477 = fsub fast float %204, %1474
  %1478 = fsub fast float %205, %1475
  %1479 = fmul fast float %1476, %1386
  %1480 = fmul fast float %1477, %1386
  %1481 = fmul fast float %1478, %1386
  br label %1482

; <label>:1482                                    ; preds = %1472, %1443
  %1483 = phi float [ %1454, %1443 ], [ %1479, %1472 ]
  %1484 = phi float [ %1455, %1443 ], [ %1480, %1472 ]
  %1485 = phi float [ %1456, %1443 ], [ %1481, %1472 ]
  %1486 = phi float [ %1471, %1443 ], [ 0.000000e+00, %1472 ]
  %1487 = phi float [ %1470, %1443 ], [ 0.000000e+00, %1472 ]
  %1488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %42, float %1483, float %1484, float %1485, float undef, i32 0, i32 0, i32 0, float %1403)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = extractvalue %dx.types.ResRet.f32 %1488, 1
  %1491 = fadd fast float %1489, %1389
  br i1 %1396, label %1492, label %1503, !dx.controlflow.hints !105

; <label>:1492                                    ; preds = %1482
  %1493 = call float @dx.op.unary.f32(i32 22, float %1387)  ; Frc(value)
  %1494 = fmul fast float %1493, 2.000000e+00
  %1495 = fadd fast float %1494, -1.000000e+00
  %1496 = call float @dx.op.unary.f32(i32 6, float %1495)  ; FAbs(value)
  %1497 = fsub fast float %1486, %1491
  %1498 = fmul fast float %1496, %1497
  %1499 = fadd fast float %1498, %1491
  %1500 = fsub fast float %1487, %1490
  %1501 = fmul fast float %1496, %1500
  %1502 = fadd fast float %1501, %1490
  br label %1503

; <label>:1503                                    ; preds = %1492, %1482
  %1504 = phi float [ %1499, %1492 ], [ %1491, %1482 ]
  %1505 = phi float [ %1502, %1492 ], [ %1490, %1482 ]
  %1506 = fsub fast float %1504, %1505
  %1507 = fsub fast float 1.000000e+00, %1505
  %1508 = fdiv fast float %1506, %1507
  %1509 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  br label %1510

; <label>:1510                                    ; preds = %1503, %1385
  %1511 = phi float [ %1509, %1503 ], [ 1.000000e+00, %1385 ]
  %1512 = fcmp fast oeq float %445, 0.000000e+00
  br i1 %1512, label %1517, label %1513, !dx.controlflow.hints !85

; <label>:1513                                    ; preds = %1510
  %1514 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1515 = fmul fast float %1514, %445
  %1516 = call float @dx.op.unary.f32(i32 23, float %1515)  ; Log(value)
  br label %1517

; <label>:1517                                    ; preds = %1513, %1510
  %1518 = phi float [ %1516, %1513 ], [ 0.000000e+00, %1510 ]
  %1519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %43, float %1341, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float %1518)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1520 = extractvalue %dx.types.ResRet.f32 %1519, 0
  %1521 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %45, float %1341, float %1359, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1522 = extractvalue %dx.types.ResRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.ResRet.f32 %1521, 1
  %1524 = extractvalue %dx.types.ResRet.f32 %1521, 2
  %1525 = extractvalue %dx.types.ResRet.f32 %1521, 3
  %1526 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %45, float %1341, float %1359, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.ResRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.ResRet.f32 %1526, 2
  %1530 = extractvalue %dx.types.ResRet.f32 %1526, 3
  %1531 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %45, float %1341, float %1359, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  %1533 = extractvalue %dx.types.ResRet.f32 %1531, 1
  %1534 = extractvalue %dx.types.ResRet.f32 %1531, 2
  %1535 = extractvalue %dx.types.ResRet.f32 %1531, 3
  %1536 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %45, float %1341, float %1359, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.ResRet.f32 %1536, 1
  %1539 = extractvalue %dx.types.ResRet.f32 %1536, 2
  %1540 = extractvalue %dx.types.ResRet.f32 %1536, 3
  %1541 = fadd fast float %1522, %1523
  %1542 = fadd fast float %1541, %1524
  %1543 = fadd fast float %1542, %1525
  %1544 = fmul fast float %1527, %1522
  %1545 = fmul fast float %1528, %1523
  %1546 = fadd fast float %1544, %1545
  %1547 = fmul fast float %1529, %1524
  %1548 = fadd fast float %1546, %1547
  %1549 = fmul fast float %1530, %1525
  %1550 = fadd fast float %1548, %1549
  %1551 = fmul fast float %1532, %1522
  %1552 = fmul fast float %1533, %1523
  %1553 = fadd fast float %1551, %1552
  %1554 = fmul fast float %1534, %1524
  %1555 = fadd fast float %1553, %1554
  %1556 = fmul fast float %1535, %1525
  %1557 = fadd fast float %1555, %1556
  %1558 = fmul fast float %1537, %1522
  %1559 = fmul fast float %1538, %1523
  %1560 = fadd fast float %1558, %1559
  %1561 = fmul fast float %1539, %1524
  %1562 = fadd fast float %1560, %1561
  %1563 = fmul fast float %1540, %1525
  %1564 = fadd fast float %1562, %1563
  %1565 = fcmp fast ogt float %1543, 0.000000e+00
  %1566 = fdiv fast float %1550, %1543
  %1567 = select i1 %1565, float %1566, float 0.000000e+00
  %1568 = fdiv fast float %1557, %1543
  %1569 = select i1 %1565, float %1568, float 0.000000e+00
  %1570 = fdiv fast float %1564, %1543
  %1571 = select i1 %1565, float %1570, float 0.000000e+00
  %1572 = fcmp fast ogt float %205, %1569
  %1573 = fcmp fast olt float %205, %1567
  %1574 = and i1 %1573, %1572
  br i1 %1574, label %1575, label %1642, !dx.controlflow.hints !106

; <label>:1575                                    ; preds = %1517
  %1576 = extractvalue %dx.types.CBufRet.f32 %1351, 0
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 2
  %1579 = extractvalue %dx.types.CBufRet.f32 %1577, 3
  br i1 %1305, label %1590, label %1580, !dx.controlflow.hints !107

; <label>:1580                                    ; preds = %1575
  %1581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 60)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 64)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.f32 %1583, 1
  %1586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 72)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 96)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.f32 %1588, 0
  br label %1590

; <label>:1590                                    ; preds = %1580, %1575
  %1591 = phi float [ %1582, %1580 ], [ %1354, %1575 ]
  %1592 = phi float [ %1587, %1580 ], [ %1352, %1575 ]
  %1593 = phi float [ %1589, %1580 ], [ %1576, %1575 ]
  %1594 = phi float [ %1584, %1580 ], [ %1578, %1575 ]
  %1595 = phi float [ %1585, %1580 ], [ %1579, %1575 ]
  %1596 = call float @dx.op.binary.f32(i32 35, float %1520, float 0.000000e+00)  ; FMax(a,b)
  %1597 = call float @dx.op.binary.f32(i32 36, float %1596, float 1.000000e+00)  ; FMin(a,b)
  %1598 = call float @dx.op.unary.f32(i32 24, float %1597)  ; Sqrt(value)
  %1599 = call float @dx.op.binary.f32(i32 35, float %1571, float 0x3F847AE140000000)  ; FMax(a,b)
  %1600 = fsub fast float %1567, %205
  %1601 = fsub fast float %205, %1569
  %1602 = call float @dx.op.binary.f32(i32 36, float %1601, float %1600)  ; FMin(a,b)
  %1603 = fdiv fast float %1602, %1599
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1605 = fsub fast float %205, %1592
  %1606 = fdiv fast float %1605, %1591
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = fsub fast float 1.000000e+00, %1607
  %1609 = fmul float %1604, %1608
  %1610 = fmul float %1609, %1609
  %1611 = fmul fast float %1598, %1511
  %1612 = fmul fast float %1611, %1610
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1615 = extractvalue %dx.types.CBufRet.f32 %1613, 1
  %1616 = fsub fast float %1612, %1615
  %1617 = fsub fast float %1614, %1615
  %1618 = fdiv fast float %1616, %1617
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = fmul fast float %1619, %1593
  %1621 = fcmp fast ogt float %1595, 0.000000e+00
  br i1 %1621, label %1622, label %1642, !dx.controlflow.hints !108

; <label>:1622                                    ; preds = %1590
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 0
  %1625 = extractvalue %dx.types.CBufRet.f32 %1623, 1
  %1626 = extractvalue %dx.types.CBufRet.f32 %1623, 2
  %1627 = fsub fast float %203, %1624
  %1628 = fsub fast float %204, %1625
  %1629 = fsub fast float %205, %1626
  %1630 = fmul fast float %1627, %1627
  %1631 = fmul fast float %1628, %1628
  %1632 = fadd fast float %1630, %1631
  %1633 = fmul fast float %1629, %1629
  %1634 = fadd fast float %1632, %1633
  %1635 = call float @dx.op.unary.f32(i32 24, float %1634)  ; Sqrt(value)
  %1636 = fsub fast float %1635, %1594
  %1637 = fsub fast float %1595, %1594
  %1638 = fdiv fast float %1636, %1637
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = fmul fast float %1639, %1639
  %1641 = fmul fast float %1640, %1620
  br label %1642

; <label>:1642                                    ; preds = %1622, %1590, %1517, %1325
  %1643 = phi float [ 0.000000e+00, %1325 ], [ 0.000000e+00, %1517 ], [ %1641, %1622 ], [ %1620, %1590 ]
  %1644 = fcmp fast oeq float %1643, 0.000000e+00
  br i1 %1644, label %2023, label %1645, !dx.controlflow.hints !109

; <label>:1645                                    ; preds = %1642
  %1646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1647 = extractvalue %dx.types.CBufRet.f32 %1646, 0
  %1648 = extractvalue %dx.types.CBufRet.f32 %1646, 1
  %1649 = extractvalue %dx.types.CBufRet.f32 %1646, 2
  %1650 = fsub fast float %203, %1647
  %1651 = fadd fast float %1650, %1649
  %1652 = fsub fast float %204, %1648
  %1653 = fadd fast float %1652, %1649
  %1654 = extractvalue %dx.types.CBufRet.f32 %1646, 3
  %1655 = fmul fast float %1651, %1654
  %1656 = fmul fast float %1653, %1654
  %1657 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1658 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1659 = fsub fast float 1.000000e+00, %1657
  %1660 = fsub fast float 1.000000e+00, %1658
  %1661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %1659, float %1660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1665 = fmul fast float %1664, %1662
  %1666 = extractvalue %dx.types.CBufRet.f32 %1663, 3
  %1667 = fadd fast float %1666, %1665
  %1668 = fcmp fast ogt float %1662, 0.000000e+00
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 32768
  %1672 = icmp ne i32 %1671, 0
  %1673 = and i1 %1668, %1672
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 3
  %1676 = fadd fast float %1675, %1667
  %1677 = fcmp fast ole float %205, %1676
  %1678 = and i1 %1673, %1677
  %1679 = xor i1 %1678, true
  %1680 = icmp ne i32 %1332, 0
  %1681 = and i1 %1680, %1679
  %1682 = icmp ne i32 %1333, 0
  %1683 = and i1 %1682, %1678
  %1684 = or i1 %1681, %1683
  br i1 %1684, label %2023, label %1685, !dx.controlflow.hints !110

; <label>:1685                                    ; preds = %1645
  %1686 = fsub fast float %205, %1667
  %1687 = call float @dx.op.unary.f32(i32 6, float %1686)  ; FAbs(value)
  %1688 = fdiv fast float %1687, %1331
  %1689 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1690 = fmul fast float %1689, %1643
  %1691 = fcmp fast une float %1329, 0.000000e+00
  br i1 %1691, label %1692, label %2011, !dx.controlflow.hints !111

; <label>:1692                                    ; preds = %1685
  %1693 = fmul fast float %1329, %127
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1697 = extractvalue %dx.types.CBufRet.f32 %1694, 2
  %1698 = fmul fast float %1695, %1693
  %1699 = fmul fast float %1696, %1693
  %1700 = fmul fast float %1697, %1693
  %1701 = fadd fast float %1698, %203
  %1702 = fadd fast float %1699, %204
  %1703 = fadd fast float %1700, %205
  %1704 = fmul fast float %1329, 2.000000e+00
  %1705 = call float @dx.op.binary.f32(i32 35, float %445, float %1704)  ; FMax(a,b)
  %1706 = fsub fast float %1701, %1334
  %1707 = fsub fast float %1702, %1335
  %1708 = fmul fast float %1706, %1339
  %1709 = fmul fast float %1707, %1340
  %1710 = call float @dx.op.binary.f32(i32 36, float %1708, float %1709)  ; FMin(a,b)
  %1711 = fcmp fast olt float %1710, 0.000000e+00
  %1712 = call float @dx.op.binary.f32(i32 35, float %1708, float %1709)  ; FMax(a,b)
  %1713 = fcmp fast ogt float %1712, 1.000000e+00
  %1714 = or i1 %1711, %1713
  %1715 = fcmp fast olt float %1703, %1348
  %1716 = or i1 %1714, %1715
  %1717 = fcmp fast ogt float %1703, %1355
  %1718 = or i1 %1716, %1717
  br i1 %1718, label %2003, label %1719, !dx.controlflow.hints !100

; <label>:1719                                    ; preds = %1692
  %1720 = fsub fast float 1.000000e+00, %1709
  %1721 = extractvalue %dx.types.CBufRet.f32 %1353, 3
  %1722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.f32 %1722, 3
  %1724 = extractvalue %dx.types.CBufRet.f32 %1722, 2
  %1725 = extractvalue %dx.types.CBufRet.f32 %1722, 1
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.CBufRet.f32 %1726, 1
  %1729 = extractvalue %dx.types.CBufRet.f32 %1726, 2
  %1730 = extractvalue %dx.types.CBufRet.f32 %1722, 0
  br i1 %1305, label %1746, label %1731, !dx.controlflow.hints !101

; <label>:1731                                    ; preds = %1719
  %1732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 48)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.f32 %1732, 0
  %1734 = extractvalue %dx.types.ResRet.f32 %1732, 1
  %1735 = extractvalue %dx.types.ResRet.f32 %1732, 2
  %1736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 104)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 108)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  %1740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 112)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.f32 %1740, 0
  %1742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 116)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 120)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  br label %1746

; <label>:1746                                    ; preds = %1731, %1719
  %1747 = phi float [ %1739, %1731 ], [ %1721, %1719 ]
  %1748 = phi float [ %1743, %1731 ], [ %1723, %1719 ]
  %1749 = phi float [ %1745, %1731 ], [ %1724, %1719 ]
  %1750 = phi float [ %1741, %1731 ], [ %1725, %1719 ]
  %1751 = phi float [ %1733, %1731 ], [ %1727, %1719 ]
  %1752 = phi float [ %1734, %1731 ], [ %1728, %1719 ]
  %1753 = phi float [ %1735, %1731 ], [ %1729, %1719 ]
  %1754 = phi float [ %1737, %1731 ], [ %1730, %1719 ]
  %1755 = fcmp fast oeq float %1747, 0.000000e+00
  br i1 %1755, label %1871, label %1756, !dx.controlflow.hints !102

; <label>:1756                                    ; preds = %1746
  %1757 = fcmp fast ogt float %1748, 0.000000e+00
  %1758 = fcmp fast oeq float %1705, 0.000000e+00
  br i1 %1758, label %1763, label %1759, !dx.controlflow.hints !85

; <label>:1759                                    ; preds = %1756
  %1760 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1761 = fmul fast float %1760, %1705
  %1762 = call float @dx.op.unary.f32(i32 23, float %1761)  ; Log(value)
  br label %1763

; <label>:1763                                    ; preds = %1759, %1756
  %1764 = phi float [ %1762, %1759 ], [ 0.000000e+00, %1756 ]
  br i1 %1758, label %1769, label %1765, !dx.controlflow.hints !85

; <label>:1765                                    ; preds = %1763
  %1766 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1767 = fmul fast float %1766, %1705
  %1768 = call float @dx.op.unary.f32(i32 23, float %1767)  ; Log(value)
  br label %1769

; <label>:1769                                    ; preds = %1765, %1763
  %1770 = phi float [ %1768, %1765 ], [ 0.000000e+00, %1763 ]
  br i1 %1757, label %1771, label %1833, !dx.controlflow.hints !103

; <label>:1771                                    ; preds = %1769
  %1772 = fcmp fast ogt float %1749, 0.000000e+00
  br i1 %1772, label %1773, label %1783, !dx.controlflow.hints !104

; <label>:1773                                    ; preds = %1771
  %1774 = fmul fast float %1749, %1708
  %1775 = fmul fast float %1749, %1720
  %1776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %42, float %1774, float %1775, float undef, float undef, i32 0, i32 0, i32 undef, float %1770)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.ResRet.f32 %1776, 1
  %1779 = fmul fast float %1777, 2.000000e+00
  %1780 = fmul fast float %1778, 2.000000e+00
  %1781 = fadd fast float %1779, -1.000000e+00
  %1782 = fadd fast float %1780, -1.000000e+00
  br label %1804

; <label>:1783                                    ; preds = %1771
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 3
  %1786 = fmul fast float %1785, %1708
  %1787 = fmul fast float %1785, %1720
  %1788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %44, float %1786, float %1787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = fmul fast float %1789, 2.000000e+00
  %1793 = fmul fast float %1790, 2.000000e+00
  %1794 = fmul fast float %1791, 2.000000e+00
  %1795 = fadd fast float %1792, -1.000000e+00
  %1796 = fadd fast float %1793, -1.000000e+00
  %1797 = fadd fast float %1794, -1.000000e+00
  %1798 = extractvalue %dx.types.CBufRet.f32 %1353, 1
  %1799 = fmul fast float %1795, %1798
  %1800 = fmul fast float %1796, %1798
  %1801 = extractvalue %dx.types.CBufRet.f32 %1353, 2
  %1802 = fmul fast float %1801, 5.000000e-01
  %1803 = fmul fast float %1802, %1797
  br label %1804

; <label>:1804                                    ; preds = %1783, %1773
  %1805 = phi float [ %1781, %1773 ], [ %1799, %1783 ]
  %1806 = phi float [ %1782, %1773 ], [ %1800, %1783 ]
  %1807 = phi float [ 0.000000e+00, %1773 ], [ %1803, %1783 ]
  %1808 = fmul fast float %1747, %1701
  %1809 = fmul fast float %1747, %1702
  %1810 = fmul fast float %1747, %1703
  %1811 = call float @dx.op.unary.f32(i32 22, float %1748)  ; Frc(value)
  %1812 = fmul fast float %1811, %1805
  %1813 = fmul fast float %1811, %1806
  %1814 = fmul fast float %1811, %1807
  %1815 = fsub fast float %1808, %1812
  %1816 = fsub fast float %1809, %1813
  %1817 = fsub fast float %1810, %1814
  %1818 = fadd fast float %1748, 5.000000e-01
  %1819 = call float @dx.op.unary.f32(i32 22, float %1818)  ; Frc(value)
  %1820 = fmul fast float %1819, %1805
  %1821 = fmul fast float %1819, %1806
  %1822 = fmul fast float %1819, %1807
  %1823 = fadd fast float %1808, -5.000000e-01
  %1824 = fsub fast float %1823, %1820
  %1825 = fadd fast float %1809, -5.000000e-01
  %1826 = fsub fast float %1825, %1821
  %1827 = fadd fast float %1810, -5.000000e-01
  %1828 = fsub fast float %1827, %1822
  %1829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %42, float %1824, float %1826, float %1828, float undef, i32 0, i32 0, i32 0, float %1764)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1830 = extractvalue %dx.types.ResRet.f32 %1829, 0
  %1831 = extractvalue %dx.types.ResRet.f32 %1829, 1
  %1832 = fadd fast float %1830, %1750
  br label %1843

; <label>:1833                                    ; preds = %1769
  %1834 = fmul fast float %1754, %1751
  %1835 = fmul fast float %1754, %1752
  %1836 = fmul fast float %1754, %1753
  %1837 = fsub fast float %1701, %1834
  %1838 = fsub fast float %1702, %1835
  %1839 = fsub fast float %1703, %1836
  %1840 = fmul fast float %1837, %1747
  %1841 = fmul fast float %1838, %1747
  %1842 = fmul fast float %1839, %1747
  br label %1843

; <label>:1843                                    ; preds = %1833, %1804
  %1844 = phi float [ %1815, %1804 ], [ %1840, %1833 ]
  %1845 = phi float [ %1816, %1804 ], [ %1841, %1833 ]
  %1846 = phi float [ %1817, %1804 ], [ %1842, %1833 ]
  %1847 = phi float [ %1832, %1804 ], [ 0.000000e+00, %1833 ]
  %1848 = phi float [ %1831, %1804 ], [ 0.000000e+00, %1833 ]
  %1849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %42, float %1844, float %1845, float %1846, float undef, i32 0, i32 0, i32 0, float %1764)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.ResRet.f32 %1849, 1
  %1852 = fadd fast float %1850, %1750
  br i1 %1757, label %1853, label %1864, !dx.controlflow.hints !105

; <label>:1853                                    ; preds = %1843
  %1854 = call float @dx.op.unary.f32(i32 22, float %1748)  ; Frc(value)
  %1855 = fmul fast float %1854, 2.000000e+00
  %1856 = fadd fast float %1855, -1.000000e+00
  %1857 = call float @dx.op.unary.f32(i32 6, float %1856)  ; FAbs(value)
  %1858 = fsub fast float %1847, %1852
  %1859 = fmul fast float %1857, %1858
  %1860 = fadd fast float %1859, %1852
  %1861 = fsub fast float %1848, %1851
  %1862 = fmul fast float %1857, %1861
  %1863 = fadd fast float %1862, %1851
  br label %1864

; <label>:1864                                    ; preds = %1853, %1843
  %1865 = phi float [ %1860, %1853 ], [ %1852, %1843 ]
  %1866 = phi float [ %1863, %1853 ], [ %1851, %1843 ]
  %1867 = fsub fast float %1865, %1866
  %1868 = fsub fast float 1.000000e+00, %1866
  %1869 = fdiv fast float %1867, %1868
  %1870 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  br label %1871

; <label>:1871                                    ; preds = %1864, %1746
  %1872 = phi float [ %1870, %1864 ], [ 1.000000e+00, %1746 ]
  %1873 = fcmp fast oeq float %1705, 0.000000e+00
  br i1 %1873, label %1878, label %1874, !dx.controlflow.hints !85

; <label>:1874                                    ; preds = %1871
  %1875 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1876 = fmul fast float %1875, %1705
  %1877 = call float @dx.op.unary.f32(i32 23, float %1876)  ; Log(value)
  br label %1878

; <label>:1878                                    ; preds = %1874, %1871
  %1879 = phi float [ %1877, %1874 ], [ 0.000000e+00, %1871 ]
  %1880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %43, float %1708, float %1720, float undef, float undef, i32 0, i32 0, i32 undef, float %1879)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1881 = extractvalue %dx.types.ResRet.f32 %1880, 0
  %1882 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %45, float %1708, float %1720, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1883 = extractvalue %dx.types.ResRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.ResRet.f32 %1882, 1
  %1885 = extractvalue %dx.types.ResRet.f32 %1882, 2
  %1886 = extractvalue %dx.types.ResRet.f32 %1882, 3
  %1887 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %45, float %1708, float %1720, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.ResRet.f32 %1887, 1
  %1890 = extractvalue %dx.types.ResRet.f32 %1887, 2
  %1891 = extractvalue %dx.types.ResRet.f32 %1887, 3
  %1892 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %45, float %1708, float %1720, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1893 = extractvalue %dx.types.ResRet.f32 %1892, 0
  %1894 = extractvalue %dx.types.ResRet.f32 %1892, 1
  %1895 = extractvalue %dx.types.ResRet.f32 %1892, 2
  %1896 = extractvalue %dx.types.ResRet.f32 %1892, 3
  %1897 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %45, float %1708, float %1720, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1898 = extractvalue %dx.types.ResRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.ResRet.f32 %1897, 1
  %1900 = extractvalue %dx.types.ResRet.f32 %1897, 2
  %1901 = extractvalue %dx.types.ResRet.f32 %1897, 3
  %1902 = fadd fast float %1883, %1884
  %1903 = fadd fast float %1902, %1885
  %1904 = fadd fast float %1903, %1886
  %1905 = fmul fast float %1888, %1883
  %1906 = fmul fast float %1889, %1884
  %1907 = fadd fast float %1905, %1906
  %1908 = fmul fast float %1890, %1885
  %1909 = fadd fast float %1907, %1908
  %1910 = fmul fast float %1891, %1886
  %1911 = fadd fast float %1909, %1910
  %1912 = fmul fast float %1893, %1883
  %1913 = fmul fast float %1894, %1884
  %1914 = fadd fast float %1912, %1913
  %1915 = fmul fast float %1895, %1885
  %1916 = fadd fast float %1914, %1915
  %1917 = fmul fast float %1896, %1886
  %1918 = fadd fast float %1916, %1917
  %1919 = fmul fast float %1898, %1883
  %1920 = fmul fast float %1899, %1884
  %1921 = fadd fast float %1919, %1920
  %1922 = fmul fast float %1900, %1885
  %1923 = fadd fast float %1921, %1922
  %1924 = fmul fast float %1901, %1886
  %1925 = fadd fast float %1923, %1924
  %1926 = fcmp fast ogt float %1904, 0.000000e+00
  %1927 = fdiv fast float %1911, %1904
  %1928 = select i1 %1926, float %1927, float 0.000000e+00
  %1929 = fdiv fast float %1918, %1904
  %1930 = select i1 %1926, float %1929, float 0.000000e+00
  %1931 = fdiv fast float %1925, %1904
  %1932 = select i1 %1926, float %1931, float 0.000000e+00
  %1933 = fcmp fast ogt float %1703, %1930
  %1934 = fcmp fast olt float %1703, %1928
  %1935 = and i1 %1934, %1933
  br i1 %1935, label %1936, label %2003, !dx.controlflow.hints !106

; <label>:1936                                    ; preds = %1878
  %1937 = extractvalue %dx.types.CBufRet.f32 %1351, 0
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 2
  %1940 = extractvalue %dx.types.CBufRet.f32 %1938, 3
  br i1 %1305, label %1951, label %1941, !dx.controlflow.hints !107

; <label>:1941                                    ; preds = %1936
  %1942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 60)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 64)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.ResRet.f32 %1944, 1
  %1947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 72)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 0
  %1949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1304, i32 96)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  br label %1951

; <label>:1951                                    ; preds = %1941, %1936
  %1952 = phi float [ %1943, %1941 ], [ %1354, %1936 ]
  %1953 = phi float [ %1948, %1941 ], [ %1352, %1936 ]
  %1954 = phi float [ %1950, %1941 ], [ %1937, %1936 ]
  %1955 = phi float [ %1945, %1941 ], [ %1939, %1936 ]
  %1956 = phi float [ %1946, %1941 ], [ %1940, %1936 ]
  %1957 = call float @dx.op.binary.f32(i32 35, float %1881, float 0.000000e+00)  ; FMax(a,b)
  %1958 = call float @dx.op.binary.f32(i32 36, float %1957, float 1.000000e+00)  ; FMin(a,b)
  %1959 = call float @dx.op.unary.f32(i32 24, float %1958)  ; Sqrt(value)
  %1960 = call float @dx.op.binary.f32(i32 35, float %1932, float 0x3F847AE140000000)  ; FMax(a,b)
  %1961 = fsub fast float %1928, %1703
  %1962 = fsub fast float %1703, %1930
  %1963 = call float @dx.op.binary.f32(i32 36, float %1962, float %1961)  ; FMin(a,b)
  %1964 = fdiv fast float %1963, %1960
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1966 = fsub fast float %1703, %1953
  %1967 = fdiv fast float %1966, %1952
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fsub fast float 1.000000e+00, %1968
  %1970 = fmul float %1965, %1969
  %1971 = fmul float %1970, %1970
  %1972 = fmul fast float %1959, %1872
  %1973 = fmul fast float %1972, %1971
  %1974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1975 = extractvalue %dx.types.CBufRet.f32 %1974, 2
  %1976 = extractvalue %dx.types.CBufRet.f32 %1974, 1
  %1977 = fsub fast float %1973, %1976
  %1978 = fsub fast float %1975, %1976
  %1979 = fdiv fast float %1977, %1978
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = fmul fast float %1980, %1954
  %1982 = fcmp fast ogt float %1956, 0.000000e+00
  br i1 %1982, label %1983, label %2003, !dx.controlflow.hints !108

; <label>:1983                                    ; preds = %1951
  %1984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.f32 %1984, 0
  %1986 = extractvalue %dx.types.CBufRet.f32 %1984, 1
  %1987 = extractvalue %dx.types.CBufRet.f32 %1984, 2
  %1988 = fsub fast float %1701, %1985
  %1989 = fsub fast float %1702, %1986
  %1990 = fsub fast float %1703, %1987
  %1991 = fmul fast float %1988, %1988
  %1992 = fmul fast float %1989, %1989
  %1993 = fadd fast float %1991, %1992
  %1994 = fmul fast float %1990, %1990
  %1995 = fadd fast float %1993, %1994
  %1996 = call float @dx.op.unary.f32(i32 24, float %1995)  ; Sqrt(value)
  %1997 = fsub fast float %1996, %1955
  %1998 = fsub fast float %1956, %1955
  %1999 = fdiv fast float %1997, %1998
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = fmul fast float %2000, %2000
  %2002 = fmul fast float %2001, %1981
  br label %2003

; <label>:2003                                    ; preds = %1983, %1951, %1878, %1692
  %2004 = phi float [ 0.000000e+00, %1692 ], [ 0.000000e+00, %1878 ], [ %2002, %1983 ], [ %1981, %1951 ]
  %2005 = fsub fast float %1690, %2004
  %2006 = fdiv fast float %2005, %1690
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2008 = fsub fast float 1.000000e+00, %1330
  %2009 = fmul fast float %2007, %2008
  %2010 = fadd fast float %2009, %1330
  br label %2011

; <label>:2011                                    ; preds = %2003, %1685
  %2012 = phi float [ %2010, %2003 ], [ 1.000000e+00, %1685 ]
  %2013 = fadd fast float %1690, %1226
  %2014 = fmul fast float %1690, %1326
  %2015 = fmul fast float %2014, %2012
  %2016 = fmul fast float %1690, %1327
  %2017 = fmul fast float %2016, %2012
  %2018 = fmul fast float %1690, %1328
  %2019 = fmul fast float %2018, %2012
  %2020 = fadd fast float %2015, %1222
  %2021 = fadd fast float %2017, %1223
  %2022 = fadd fast float %2019, %1224
  br label %2023

; <label>:2023                                    ; preds = %2011, %1645, %1642, %1221
  %2024 = phi float [ %1222, %1221 ], [ %1222, %1642 ], [ %1222, %1645 ], [ %2020, %2011 ]
  %2025 = phi float [ %1223, %1221 ], [ %1223, %1642 ], [ %1223, %1645 ], [ %2021, %2011 ]
  %2026 = phi float [ %1224, %1221 ], [ %1224, %1642 ], [ %1224, %1645 ], [ %2022, %2011 ]
  %2027 = phi float [ %1226, %1221 ], [ %1226, %1642 ], [ %1226, %1645 ], [ %2013, %2011 ]
  %2028 = and i32 %364, 4
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2200, label %2030, !dx.controlflow.hints !112

; <label>:2030                                    ; preds = %2023
  %2031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.i32 %2031, 1
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2200, label %2034

; <label>:2034                                    ; preds = %2030
  br label %2035

; <label>:2035                                    ; preds = %2191, %2034
  %2036 = phi i32 [ %2197, %2191 ], [ 0, %2034 ]
  %2037 = phi float [ %2192, %2191 ], [ %2024, %2034 ]
  %2038 = phi float [ %2193, %2191 ], [ %2025, %2034 ]
  %2039 = phi float [ %2194, %2191 ], [ %2026, %2034 ]
  %2040 = phi float [ %2195, %2191 ], [ %1225, %2034 ]
  %2041 = phi float [ %2196, %2191 ], [ %2027, %2034 ]
  %2042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.i32 %2042, 1
  %2044 = call i32 @dx.op.tertiary.i32(i32 49, i32 %362, i32 %2043, i32 %2036)  ; UMad(a,b,c)
  %2045 = shl i32 %2044, 2
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2191, label %2049

; <label>:2049                                    ; preds = %2035
  br label %2050

; <label>:2050                                    ; preds = %2177, %2049
  %2051 = phi i32 [ %2061, %2177 ], [ %2047, %2049 ]
  %2052 = phi float [ %2183, %2177 ], [ %2037, %2049 ]
  %2053 = phi float [ %2184, %2177 ], [ %2038, %2049 ]
  %2054 = phi float [ %2185, %2177 ], [ %2039, %2049 ]
  %2055 = phi float [ %2187, %2177 ], [ %2040, %2049 ]
  %2056 = phi float [ %2188, %2177 ], [ %2041, %2049 ]
  %2057 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2051)  ; FirstbitLo(value)
  %2058 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %2036, i32 %2057)  ; UMad(a,b,c)
  %2059 = and i32 %2057, 31
  %2060 = shl i32 1, %2059
  %2061 = xor i32 %2060, %2051
  %2062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2058, i32 0)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  %2064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2058, i32 4)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2058, i32 16)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.f32 %2066, 0
  %2068 = extractvalue %dx.types.ResRet.f32 %2066, 1
  %2069 = extractvalue %dx.types.ResRet.f32 %2066, 2
  %2070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2058, i32 28)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2058, i32 32)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.ResRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.ResRet.f32 %2072, 2
  %2076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2058, i32 44)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2058, i32 48)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2058, i32 52)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2058, i32 56)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.f32 %2082, 0
  %2084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2058, i32 64)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.ResRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.ResRet.f32 %2084, 2
  %2088 = mul i32 %2058, 60
  %2089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.ResRet.f32 %2089, 1
  %2092 = extractvalue %dx.types.ResRet.f32 %2089, 2
  %2093 = add i32 %2088, 12
  %2094 = add i32 %2088, 48
  %2095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 2
  %2097 = fsub fast float %203, %2090
  %2098 = fsub fast float %204, %2091
  %2099 = fsub fast float %205, %2092
  %2100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.f32 %2100, 0
  %2102 = extractvalue %dx.types.ResRet.f32 %2100, 1
  %2103 = extractvalue %dx.types.ResRet.f32 %2100, 2
  %2104 = call float @dx.op.dot3.f32(i32 55, float %2097, float %2098, float %2099, float %2101, float %2102, float %2103)  ; Dot3(ax,ay,az,bx,by,bz)
  %2105 = add i32 %2088, 24
  %2106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2105, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.ResRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.ResRet.f32 %2106, 2
  %2110 = call float @dx.op.dot3.f32(i32 55, float %2097, float %2098, float %2099, float %2107, float %2108, float %2109)  ; Dot3(ax,ay,az,bx,by,bz)
  %2111 = add i32 %2088, 36
  %2112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.ResRet.f32 %2112, 1
  %2115 = extractvalue %dx.types.ResRet.f32 %2112, 2
  %2116 = call float @dx.op.dot3.f32(i32 55, float %2097, float %2098, float %2099, float %2113, float %2114, float %2115)  ; Dot3(ax,ay,az,bx,by,bz)
  %2117 = call float @dx.op.unary.f32(i32 6, float %2104)  ; FAbs(value)
  %2118 = call float @dx.op.unary.f32(i32 6, float %2110)  ; FAbs(value)
  %2119 = call float @dx.op.unary.f32(i32 6, float %2116)  ; FAbs(value)
  %2120 = fmul fast float %2117, %2077
  %2121 = fmul fast float %2118, %2077
  %2122 = fmul fast float %2119, %2077
  %2123 = fadd fast float %2120, %2073
  %2124 = fadd fast float %2121, %2074
  %2125 = fadd fast float %2122, %2075
  %2126 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2127 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2128 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2129 = fmul fast float %2126, %2126
  %2130 = fmul fast float %2127, %2127
  %2131 = fadd fast float %2130, %2129
  %2132 = fmul fast float %2128, %2128
  %2133 = fadd fast float %2131, %2132
  %2134 = call float @dx.op.unary.f32(i32 24, float %2133)  ; Sqrt(value)
  %2135 = fsub fast float 1.000000e+00, %2134
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = fmul fast float %2136, %2063
  %2138 = fmul fast float %2096, 2.000000e+00
  %2139 = fadd fast float %2116, %2096
  %2140 = call float @dx.op.binary.f32(i32 35, float %2139, float 0.000000e+00)  ; FMax(a,b)
  %2141 = call float @dx.op.binary.f32(i32 36, float %2140, float %2138)  ; FMin(a,b)
  %2142 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2141)  ; FMax(a,b)
  %2143 = fmul fast float %2065, 0x3FF7154760000000
  %2144 = fmul fast float %2143, %2142
  %2145 = call float @dx.op.unary.f32(i32 21, float %2144)  ; Exp(value)
  %2146 = fmul fast float %2137, %2145
  %2147 = fcmp fast oeq float %445, 0.000000e+00
  br i1 %2147, label %2153, label %2148, !dx.controlflow.hints !85

; <label>:2148                                    ; preds = %2050
  %2149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2150 = extractvalue %dx.types.CBufRet.f32 %2149, 3
  %2151 = fmul fast float %2150, %445
  %2152 = call float @dx.op.unary.f32(i32 23, float %2151)  ; Log(value)
  br label %2153

; <label>:2153                                    ; preds = %2148, %2050
  %2154 = phi float [ %2152, %2148 ], [ 0.000000e+00, %2050 ]
  %2155 = fcmp fast oeq float %2079, 0.000000e+00
  br i1 %2155, label %2177, label %2156, !dx.controlflow.hints !113

; <label>:2156                                    ; preds = %2153
  %2157 = fmul fast float %2085, %2083
  %2158 = fmul fast float %2086, %2083
  %2159 = fmul fast float %2087, %2083
  %2160 = fsub fast float %203, %2157
  %2161 = fsub fast float %204, %2158
  %2162 = fsub fast float %205, %2159
  %2163 = fmul fast float %2160, %2079
  %2164 = fmul fast float %2161, %2079
  %2165 = fmul fast float %2162, %2079
  %2166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %42, float %2163, float %2164, float %2165, float undef, i32 0, i32 0, i32 0, float %2154)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.ResRet.f32 %2166, 1
  %2169 = fdiv fast float 1.000000e+00, %2081
  %2170 = fmul fast float %2081, 2.000000e+00
  %2171 = fadd fast float %2170, -1.000000e+00
  %2172 = fadd fast float %2171, %2168
  %2173 = fadd fast float %2172, %2167
  %2174 = fmul fast float %2173, %2169
  %2175 = fadd fast float %2174, -1.000000e+00
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  br label %2177

; <label>:2177                                    ; preds = %2156, %2153
  %2178 = phi float [ %2176, %2156 ], [ 1.000000e+00, %2153 ]
  %2179 = fmul fast float %2146, %2178
  %2180 = fmul fast float %2179, %2067
  %2181 = fmul fast float %2179, %2068
  %2182 = fmul fast float %2179, %2069
  %2183 = fadd fast float %2180, %2052
  %2184 = fadd fast float %2181, %2053
  %2185 = fadd fast float %2182, %2054
  %2186 = fmul fast float %2179, %2071
  %2187 = fadd fast float %2186, %2055
  %2188 = fadd fast float %2179, %2056
  %2189 = icmp eq i32 %2051, %2060
  br i1 %2189, label %2190, label %2050, !llvm.loop !114

; <label>:2190                                    ; preds = %2177
  br label %2191

; <label>:2191                                    ; preds = %2190, %2035
  %2192 = phi float [ %2037, %2035 ], [ %2183, %2190 ]
  %2193 = phi float [ %2038, %2035 ], [ %2184, %2190 ]
  %2194 = phi float [ %2039, %2035 ], [ %2185, %2190 ]
  %2195 = phi float [ %2040, %2035 ], [ %2187, %2190 ]
  %2196 = phi float [ %2041, %2035 ], [ %2188, %2190 ]
  %2197 = add i32 %2036, 1
  %2198 = icmp ult i32 %2197, %2043
  br i1 %2198, label %2035, label %2199, !llvm.loop !115

; <label>:2199                                    ; preds = %2191
  br label %2200

; <label>:2200                                    ; preds = %2199, %2030, %2023
  %2201 = phi float [ %2024, %2023 ], [ %2024, %2030 ], [ %2192, %2199 ]
  %2202 = phi float [ %2025, %2023 ], [ %2025, %2030 ], [ %2193, %2199 ]
  %2203 = phi float [ %2026, %2023 ], [ %2026, %2030 ], [ %2194, %2199 ]
  %2204 = phi float [ %1225, %2023 ], [ %1225, %2030 ], [ %2195, %2199 ]
  %2205 = phi float [ %2027, %2023 ], [ %2027, %2030 ], [ %2196, %2199 ]
  %2206 = fcmp fast ogt float %2205, 0.000000e+00
  br i1 %2206, label %2207, label %4484, !dx.controlflow.hints !116

; <label>:2207                                    ; preds = %2200
  %2208 = fdiv fast float 1.000000e+00, %2205
  %2209 = fmul fast float %2208, %2201
  %2210 = fmul fast float %2208, %2202
  %2211 = fmul fast float %2208, %2203
  %2212 = fmul fast float %2208, %2204
  %2213 = fmul fast float %2208, %672
  %2214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2214, 0
  %2216 = fadd fast float %2215, -1.000000e+00
  %2217 = fmul fast float %2213, %2216
  %2218 = fadd fast float %2217, 1.000000e+00
  %2219 = fmul fast float %442, %441
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 0
  %2222 = extractvalue %dx.types.CBufRet.f32 %2220, 1
  %2223 = extractvalue %dx.types.CBufRet.f32 %2220, 2
  %2224 = fsub fast float %203, %2221
  %2225 = fsub fast float %204, %2222
  %2226 = fsub fast float %205, %2223
  %2227 = fmul fast float %371, %138
  %2228 = call float @dx.op.unary.f32(i32 21, float %2227)  ; Exp(value)
  %2229 = fmul fast float %2228, %370
  %2230 = fadd fast float %375, %2229
  %2231 = fmul fast float %145, 2.000000e+00
  %2232 = fmul fast float %2231, %367
  %2233 = fmul fast float %146, 2.000000e+00
  %2234 = fmul fast float %2233, %368
  %2235 = fsub fast float 1.000000e+00, %2232
  %2236 = fsub fast float 1.000000e+00, %2234
  %2237 = fmul fast float %384, %2235
  %2238 = fmul fast float %385, %2235
  %2239 = fmul fast float %386, %2235
  %2240 = fmul fast float %391, %2236
  %2241 = fmul fast float %392, %2236
  %2242 = fmul fast float %393, %2236
  %2243 = fadd fast float %2240, %2237
  %2244 = fadd fast float %2241, %2238
  %2245 = fadd fast float %2242, %2239
  %2246 = fadd fast float %2243, %401
  %2247 = fadd fast float %2244, %402
  %2248 = fadd fast float %2245, %403
  %2249 = fmul fast float %2246, %2230
  %2250 = fmul fast float %2247, %2230
  %2251 = fmul fast float %2248, %2230
  %2252 = fadd fast float %138, 1.000000e+00
  %2253 = fmul fast float %371, %2252
  %2254 = call float @dx.op.unary.f32(i32 21, float %2253)  ; Exp(value)
  %2255 = fsub fast float %2254, %2228
  %2256 = fmul fast float %370, %2255
  %2257 = fmul fast float %2246, %2256
  %2258 = fsub fast float %2254, %2228
  %2259 = fmul fast float %370, %2258
  %2260 = fmul fast float %2247, %2259
  %2261 = fsub fast float %2254, %2228
  %2262 = fmul fast float %370, %2261
  %2263 = fmul fast float %2248, %2262
  %2264 = call float @dx.op.dot3.f32(i32 55, float %2257, float %2260, float %2263, float %2257, float %2260, float %2263)  ; Dot3(ax,ay,az,bx,by,bz)
  %2265 = call float @dx.op.unary.f32(i32 25, float %2264)  ; Rsqrt(value)
  %2266 = fmul fast float %2265, %2264
  %2267 = fmul fast float %2257, %2265
  %2268 = fmul fast float %2260, %2265
  %2269 = fmul fast float %2263, %2265
  %2270 = fsub fast float %243, %2223
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 3
  %2273 = fcmp fast oeq float %2272, 0.000000e+00
  br i1 %2273, label %3420, label %2274, !dx.controlflow.hints !117

; <label>:2274                                    ; preds = %2207
  %2275 = extractvalue %dx.types.CBufRet.f32 %2271, 0
  %2276 = extractvalue %dx.types.CBufRet.f32 %2271, 1
  %2277 = extractvalue %dx.types.CBufRet.f32 %2271, 2
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.CBufRet.f32 %2278, 2
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.f32 %2282, 2
  %2284 = fmul fast float %2283, %2275
  %2285 = fmul fast float %2283, %2276
  %2286 = fmul fast float %2283, %2277
  %2287 = fsub fast float %2224, %2284
  %2288 = fsub fast float %2225, %2285
  %2289 = fsub fast float %2226, %2286
  %2290 = fcmp fast olt float %2272, 0.000000e+00
  br i1 %2290, label %2822, label %2291, !dx.controlflow.hints !118

; <label>:2291                                    ; preds = %2274
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2295 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2296 = extractvalue %dx.types.CBufRet.f32 %2292, 3
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.CBufRet.f32 %2297, 1
  %2300 = extractvalue %dx.types.CBufRet.f32 %2297, 2
  %2301 = extractvalue %dx.types.CBufRet.f32 %2297, 3
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.CBufRet.f32 %2302, 1
  %2305 = extractvalue %dx.types.CBufRet.f32 %2302, 2
  %2306 = extractvalue %dx.types.CBufRet.f32 %2302, 3
  %2307 = fmul fast float %2293, %2287
  %2308 = call float @dx.op.tertiary.f32(i32 46, float %2288, float %2294, float %2307)  ; FMad(a,b,c)
  %2309 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2295, float %2308)  ; FMad(a,b,c)
  %2310 = fadd fast float %2309, %2296
  %2311 = fmul fast float %2298, %2287
  %2312 = call float @dx.op.tertiary.f32(i32 46, float %2288, float %2299, float %2311)  ; FMad(a,b,c)
  %2313 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2300, float %2312)  ; FMad(a,b,c)
  %2314 = fadd fast float %2313, %2301
  %2315 = fmul fast float %2303, %2287
  %2316 = call float @dx.op.tertiary.f32(i32 46, float %2288, float %2304, float %2315)  ; FMad(a,b,c)
  %2317 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2305, float %2316)  ; FMad(a,b,c)
  %2318 = fadd fast float %2317, %2306
  %2319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.CBufRet.f32 %2319, 1
  %2322 = extractvalue %dx.types.CBufRet.f32 %2319, 3
  %2323 = fmul fast float %2322, %2310
  %2324 = fmul fast float %2322, %2314
  %2325 = fadd fast float %2323, %2320
  %2326 = fadd fast float %2324, %2321
  %2327 = extractvalue %dx.types.CBufRet.f32 %2319, 2
  %2328 = fcmp fast olt float %2327, 0.000000e+00
  %2329 = fsub fast float -0.000000e+00, %2327
  %2330 = select i1 %2328, float %2329, float %2327
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 1
  %2333 = fadd fast float %2330, %2332
  %2334 = fcmp fast ogt float %2333, 0.000000e+00
  br i1 %2334, label %2335, label %2366, !dx.controlflow.hints !119

; <label>:2335                                    ; preds = %2291
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 1
  %2338 = fsub fast float %2337, %2318
  %2339 = extractvalue %dx.types.CBufRet.f32 %2336, 2
  %2340 = fmul fast float %2338, %2339
  %2341 = fsub fast float 1.000000e+00, %2340
  %2342 = call float @dx.op.unary.f32(i32 7, float %2341)  ; Saturate(value)
  %2343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2344 = extractvalue %dx.types.CBufRet.f32 %2343, 0
  %2345 = extractvalue %dx.types.CBufRet.f32 %2343, 1
  %2346 = fsub fast float %2325, %2344
  %2347 = fsub fast float %2326, %2345
  %2348 = fcmp fast olt float %2346, 0.000000e+00
  %2349 = fcmp fast olt float %2347, 0.000000e+00
  %2350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2351 = extractvalue %dx.types.CBufRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.CBufRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.CBufRet.f32 %2350, 2
  %2354 = extractvalue %dx.types.CBufRet.f32 %2350, 3
  %2355 = select i1 %2348, float %2351, float %2353
  %2356 = select i1 %2349, float %2352, float %2354
  %2357 = fmul fast float %2355, %2346
  %2358 = fmul fast float %2356, %2347
  %2359 = call float @dx.op.unary.f32(i32 6, float %2357)  ; FAbs(value)
  %2360 = call float @dx.op.unary.f32(i32 6, float %2358)  ; FAbs(value)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2362 = call float @dx.op.binary.f32(i32 35, float %2359, float %2360)  ; FMax(a,b)
  %2363 = fsub fast float %2361, %2362
  %2364 = call float @dx.op.unary.f32(i32 7, float %2363)  ; Saturate(value)
  %2365 = fmul fast float %2364, %2342
  br label %2366

; <label>:2366                                    ; preds = %2335, %2291
  %2367 = phi float [ %2365, %2335 ], [ 0.000000e+00, %2291 ]
  %2368 = call float @dx.op.binary.f32(i32 35, float %2367, float 0.000000e+00)  ; FMax(a,b)
  %2369 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2368)  ; FMax(a,b)
  %2370 = fcmp fast olt float %2369, 1.000000e+00
  br i1 %2370, label %2371, label %2769, !dx.controlflow.hints !120

; <label>:2371                                    ; preds = %2366
  %2372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.f32 %2372, 0
  %2374 = fcmp fast une float %2373, 0.000000e+00
  br i1 %2374, label %2375, label %2769, !dx.controlflow.hints !121

; <label>:2375                                    ; preds = %2371
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.CBufRet.f32 %2376, 1
  %2379 = extractvalue %dx.types.CBufRet.f32 %2376, 2
  %2380 = extractvalue %dx.types.CBufRet.f32 %2376, 3
  %2381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2382 = extractvalue %dx.types.CBufRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.CBufRet.f32 %2381, 1
  %2384 = extractvalue %dx.types.CBufRet.f32 %2381, 2
  %2385 = extractvalue %dx.types.CBufRet.f32 %2381, 3
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.CBufRet.f32 %2386, 1
  %2389 = extractvalue %dx.types.CBufRet.f32 %2386, 2
  %2390 = extractvalue %dx.types.CBufRet.f32 %2386, 3
  %2391 = fmul fast float %2377, %2287
  %2392 = call float @dx.op.tertiary.f32(i32 46, float %2288, float %2378, float %2391)  ; FMad(a,b,c)
  %2393 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2379, float %2392)  ; FMad(a,b,c)
  %2394 = fadd fast float %2393, %2380
  %2395 = fmul fast float %2382, %2287
  %2396 = call float @dx.op.tertiary.f32(i32 46, float %2288, float %2383, float %2395)  ; FMad(a,b,c)
  %2397 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2384, float %2396)  ; FMad(a,b,c)
  %2398 = fadd fast float %2397, %2385
  %2399 = fmul fast float %2387, %2287
  %2400 = call float @dx.op.tertiary.f32(i32 46, float %2288, float %2388, float %2399)  ; FMad(a,b,c)
  %2401 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2389, float %2400)  ; FMad(a,b,c)
  %2402 = fadd fast float %2401, %2390
  %2403 = fcmp fast oge float %2394, 1.000000e+00
  %2404 = fcmp fast oge float %2398, 1.000000e+00
  %2405 = or i1 %2403, %2404
  %2406 = fcmp fast olt float %2394, 0.000000e+00
  %2407 = fcmp fast olt float %2398, 0.000000e+00
  %2408 = or i1 %2406, %2407
  %2409 = or i1 %2405, %2408
  br i1 %2409, label %2769, label %2410, !dx.controlflow.hints !122

; <label>:2410                                    ; preds = %2375
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 0
  %2413 = extractvalue %dx.types.CBufRet.f32 %2411, 1
  %2414 = extractvalue %dx.types.CBufRet.f32 %2411, 2
  %2415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2416 = extractvalue %dx.types.CBufRet.i32 %2415, 2
  %2417 = uitofp i32 %2416 to float
  %2418 = extractvalue %dx.types.CBufRet.i32 %2415, 3
  %2419 = uitofp i32 %2418 to float
  %2420 = extractvalue %dx.types.CBufRet.f32 %2411, 3
  %2421 = fmul fast float %2420, 2.000000e+00
  %2422 = fsub fast float %2394, %2412
  %2423 = fsub fast float %2398, %2413
  %2424 = fmul fast float %2421, %2422
  %2425 = fmul fast float %2421, %2423
  %2426 = fdiv fast float 1.000000e+00, %2277
  %2427 = fmul fast float %2425, %2426
  %2428 = call float @dx.op.unary.f32(i32 6, float %2427)  ; FAbs(value)
  %2429 = fmul fast float %2414, %2289
  %2430 = fmul fast float %2429, %2421
  %2431 = call float @dx.op.unary.f32(i32 6, float %2430)  ; FAbs(value)
  %2432 = call float @dx.op.unary.f32(i32 6, float %2424)  ; FAbs(value)
  %2433 = call float @dx.op.binary.f32(i32 35, float %2431, float %2428)  ; FMax(a,b)
  %2434 = call float @dx.op.binary.f32(i32 35, float %2432, float %2433)  ; FMax(a,b)
  %2435 = fmul fast float %2434, 2.000000e+00
  %2436 = call float @dx.op.unary.f32(i32 23, float %2435)  ; Log(value)
  %2437 = call float @dx.op.binary.f32(i32 35, float %2436, float %2417)  ; FMax(a,b)
  %2438 = call float @dx.op.unary.f32(i32 22, float %2437)  ; Frc(value)
  %2439 = fadd fast float %2438, 0xBFEA666660000000
  %2440 = fmul fast float %2439, 8.000000e+00
  %2441 = call float @dx.op.unary.f32(i32 7, float %2440)  ; Saturate(value)
  %2442 = call float @dx.op.unary.f32(i32 27, float %2437)  ; Round_ni(value)
  %2443 = fadd fast float %2442, %2441
  %2444 = call float @dx.op.binary.f32(i32 36, float %2443, float %2419)  ; FMin(a,b)
  %2445 = call float @dx.op.unary.f32(i32 27, float %2444)  ; Round_ni(value)
  %2446 = fsub fast float -0.000000e+00, %2445
  %2447 = call float @dx.op.unary.f32(i32 21, float %2446)  ; Exp(value)
  %2448 = fmul fast float %2447, %2421
  %2449 = fmul fast float %2448, %2394
  %2450 = fmul fast float %2448, %2398
  %2451 = fmul fast float %2449, 2.500000e-01
  %2452 = fmul fast float %2450, 2.500000e-01
  %2453 = fadd fast float %2451, 5.000000e-01
  %2454 = fadd fast float %2452, 5.000000e-01
  %2455 = fsub fast float %2419, %2417
  %2456 = fptoui float %2455 to i32
  %2457 = add i32 %2456, 320
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %2457)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.CBufRet.f32 %2458, 1
  %2461 = fcmp fast une float %2444, %2419
  %2462 = fsub fast float %2394, %2459
  %2463 = fsub fast float %2398, %2460
  %2464 = call float @dx.op.unary.f32(i32 6, float %2462)  ; FAbs(value)
  %2465 = call float @dx.op.unary.f32(i32 6, float %2463)  ; FAbs(value)
  %2466 = fmul fast float %2464, %2448
  %2467 = fmul fast float %2465, %2448
  %2468 = fcmp fast olt float %2466, 1.000000e+00
  %2469 = fcmp fast olt float %2467, 1.000000e+00
  %2470 = and i1 %2468, %2469
  %2471 = or i1 %2461, %2470
  br i1 %2471, label %2472, label %2769, !dx.controlflow.hints !123

; <label>:2472                                    ; preds = %2410
  %2473 = fmul fast float %2450, 5.000000e-01
  %2474 = fmul fast float %2449, 5.000000e-01
  %2475 = fadd fast float %2473, 5.000000e-01
  %2476 = fadd fast float %2474, 5.000000e-01
  %2477 = sitofp i32 %2416 to float
  %2478 = fsub fast float %2444, %2477
  %2479 = call float @dx.op.unary.f32(i32 27, float %2478)  ; Round_ni(value)
  %2480 = call float @dx.op.unary.f32(i32 22, float %2444)  ; Frc(value)
  %2481 = call float @dx.op.unary.f32(i32 22, float %2476)  ; Frc(value)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2475)  ; Frc(value)
  %2483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %44, float %2481, float %2482, float %2479, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.ResRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.ResRet.f32 %2483, 2
  %2487 = extractvalue %dx.types.ResRet.f32 %2483, 3
  %2488 = fcmp fast ogt float %2480, 0.000000e+00
  br i1 %2488, label %2489, label %2510, !dx.controlflow.hints !124

; <label>:2489                                    ; preds = %2472
  %2490 = fadd fast float %2479, 1.000000e+00
  %2491 = call float @dx.op.unary.f32(i32 22, float %2453)  ; Frc(value)
  %2492 = call float @dx.op.unary.f32(i32 22, float %2454)  ; Frc(value)
  %2493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %44, float %2491, float %2492, float %2490, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2494 = extractvalue %dx.types.ResRet.f32 %2493, 0
  %2495 = extractvalue %dx.types.ResRet.f32 %2493, 1
  %2496 = extractvalue %dx.types.ResRet.f32 %2493, 2
  %2497 = extractvalue %dx.types.ResRet.f32 %2493, 3
  %2498 = fsub fast float %2494, %2484
  %2499 = fsub fast float %2495, %2485
  %2500 = fsub fast float %2496, %2486
  %2501 = fsub fast float %2497, %2487
  %2502 = fmul fast float %2498, %2480
  %2503 = fmul fast float %2499, %2480
  %2504 = fmul fast float %2500, %2480
  %2505 = fmul fast float %2501, %2480
  %2506 = fadd fast float %2502, %2484
  %2507 = fadd fast float %2503, %2485
  %2508 = fadd fast float %2504, %2486
  %2509 = fadd fast float %2505, %2487
  br label %2510

; <label>:2510                                    ; preds = %2489, %2472
  %2511 = phi float [ %2506, %2489 ], [ %2484, %2472 ]
  %2512 = phi float [ %2507, %2489 ], [ %2485, %2472 ]
  %2513 = phi float [ %2508, %2489 ], [ %2486, %2472 ]
  %2514 = phi float [ %2509, %2489 ], [ %2487, %2472 ]
  %2515 = fadd fast float %2511, -5.000000e-01
  %2516 = fadd fast float %2513, -5.000000e-01
  %2517 = fmul fast float %2515, 0xBFD5555560000000
  %2518 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2516, float %2517)  ; FMad(a,b,c)
  %2519 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2512, float 0.000000e+00)  ; FMad(a,b,c)
  %2520 = fadd fast float %2519, %2514
  %2521 = fmul fast float %2515, -7.500000e-01
  %2522 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2516, float %2521)  ; FMad(a,b,c)
  %2523 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2512, float 0.000000e+00)  ; FMad(a,b,c)
  %2524 = fadd fast float %2523, %2514
  %2525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.f32 %2525, 0
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 0
  %2529 = extractvalue %dx.types.CBufRet.f32 %2527, 1
  %2530 = extractvalue %dx.types.CBufRet.f32 %2527, 2
  %2531 = extractvalue %dx.types.CBufRet.f32 %2527, 3
  %2532 = fsub fast float %2528, %2518
  %2533 = fsub fast float %2529, %2520
  %2534 = fsub fast float %2530, %2522
  %2535 = fsub fast float %2531, %2524
  %2536 = fmul fast float %2532, %2526
  %2537 = fmul fast float %2533, %2526
  %2538 = fmul fast float %2534, %2526
  %2539 = fmul fast float %2535, %2526
  %2540 = fadd fast float %2536, %2518
  %2541 = fadd fast float %2537, %2520
  %2542 = fadd fast float %2538, %2522
  %2543 = fadd fast float %2539, %2524
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = and i32 %2545, 536870911
  %2547 = uitofp i32 %2546 to float
  %2548 = fmul fast float %2547, %2394
  %2549 = fmul fast float %2547, %2398
  %2550 = fptoui float %2548 to i32
  %2551 = fptoui float %2549 to i32
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 31
  %2555 = lshr i32 %2550, %2554
  %2556 = lshr i32 %2551, %2554
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 31
  %2560 = shl i32 1, %2559
  %2561 = call i32 @dx.op.binary.i32(i32 40, i32 %2560, i32 4)  ; UMin(a,b)
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = extractvalue %dx.types.ResRet.i32 %2562, 1
  %2565 = icmp eq i32 %2561, 0
  br i1 %2565, label %2607, label %2566

; <label>:2566                                    ; preds = %2510
  br label %2567

; <label>:2567                                    ; preds = %2595, %2566
  %2568 = phi i32 [ %2598, %2595 ], [ 0, %2566 ]
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = lshr i32 %2570, 16
  %2572 = and i32 %2571, 31
  %2573 = shl i32 %2556, %2572
  %2574 = add i32 %2573, %2555
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = and i32 %2576, 31
  %2578 = shl i32 %2574, %2577
  %2579 = add i32 %2578, %2568
  %2580 = shl i32 %2579, 2
  %2581 = add i32 %2580, 32
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = icmp slt i32 %2583, 0
  %2585 = getelementptr [12 x float], [12 x float]* %55, i32 0, i32 %2568
  %2586 = getelementptr [12 x float], [12 x float]* %56, i32 0, i32 %2568
  %2587 = bitcast float* %2585 to i32*
  %2588 = bitcast float* %2586 to i32*
  br i1 %2584, label %2589, label %2595, !dx.controlflow.hints !125

; <label>:2589                                    ; preds = %2567
  %2590 = and i32 %2583, 1073741823
  %2591 = add nuw nsw i32 %2590, 20
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = extractvalue %dx.types.ResRet.i32 %2592, 1
  br label %2595

; <label>:2595                                    ; preds = %2589, %2567
  %2596 = phi i32 [ %2593, %2589 ], [ %2563, %2567 ]
  %2597 = phi i32 [ %2594, %2589 ], [ %2564, %2567 ]
  store i32 %2596, i32* %2587, align 4
  store i32 %2597, i32* %2588, align 4
  %2598 = add nuw i32 %2568, 1
  %2599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2600 = extractvalue %dx.types.CBufRet.i32 %2599, 2
  %2601 = icmp eq i32 %2600, 0
  %2602 = icmp ugt i32 %2583, -1073741825
  %2603 = and i1 %2602, %2601
  %2604 = icmp ult i32 %2598, %2561
  %2605 = and i1 %2603, %2604
  br i1 %2605, label %2567, label %2606, !dx.controlflow.hints !126

; <label>:2606                                    ; preds = %2595
  br label %2607

; <label>:2607                                    ; preds = %2606, %2510
  %2608 = phi i32 [ 0, %2510 ], [ %2598, %2606 ]
  %2609 = extractvalue %dx.types.CBufRet.f32 %2372, 2
  %2610 = fptoui float %2609 to i32
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %2663, label %2612

; <label>:2612                                    ; preds = %2607
  br label %2613

; <label>:2613                                    ; preds = %2658, %2612
  %2614 = phi i32 [ %2659, %2658 ], [ %2608, %2612 ]
  %2615 = phi i32 [ %2660, %2658 ], [ 0, %2612 ]
  %2616 = lshr i32 %2615, 2
  %2617 = and i32 %2615, 3
  %2618 = add nuw nsw i32 %2616, 83
  %2619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %2618)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.i32 %2619, 0
  %2621 = extractvalue %dx.types.CBufRet.i32 %2619, 1
  %2622 = extractvalue %dx.types.CBufRet.i32 %2619, 2
  %2623 = extractvalue %dx.types.CBufRet.i32 %2619, 3
  %2624 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %2620, i32* %2624, align 4
  %2625 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %2621, i32* %2625, align 4
  %2626 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %2622, i32* %2626, align 4
  %2627 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %2623, i32* %2627, align 4
  %2628 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %2617
  %2629 = load i32, i32* %2628, align 4, !tbaa !127, !noalias !129
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = lshr i32 %2631, 16
  %2633 = and i32 %2632, 31
  %2634 = shl i32 %2556, %2633
  %2635 = add i32 %2634, %2555
  %2636 = shl i32 %2635, 2
  %2637 = add i32 %2636, %2629
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = icmp eq i32 %2639, 0
  br i1 %2640, label %2658, label %2641, !dx.controlflow.hints !136

; <label>:2641                                    ; preds = %2613
  %2642 = icmp slt i32 %2639, 0
  %2643 = getelementptr [12 x float], [12 x float]* %55, i32 0, i32 %2614
  %2644 = getelementptr [12 x float], [12 x float]* %56, i32 0, i32 %2614
  %2645 = bitcast float* %2643 to i32*
  %2646 = bitcast float* %2644 to i32*
  br i1 %2642, label %2647, label %2654, !dx.controlflow.hints !137

; <label>:2647                                    ; preds = %2641
  %2648 = and i32 %2639, 1073741823
  %2649 = add i32 %2629, 20
  %2650 = add i32 %2649, %2648
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = extractvalue %dx.types.ResRet.i32 %2651, 1
  br label %2654

; <label>:2654                                    ; preds = %2647, %2641
  %2655 = phi i32 [ %2652, %2647 ], [ %2563, %2641 ]
  %2656 = phi i32 [ %2653, %2647 ], [ %2564, %2641 ]
  store i32 %2655, i32* %2645, align 4
  store i32 %2656, i32* %2646, align 4
  %2657 = add i32 %2614, 1
  br label %2658

; <label>:2658                                    ; preds = %2654, %2613
  %2659 = phi i32 [ %2614, %2613 ], [ %2657, %2654 ]
  %2660 = add nuw i32 %2615, 1
  %2661 = icmp eq i32 %2660, %2610
  br i1 %2661, label %2662, label %2613

; <label>:2662                                    ; preds = %2658
  br label %2663

; <label>:2663                                    ; preds = %2662, %2607
  %2664 = phi i32 [ %2608, %2607 ], [ %2659, %2662 ]
  %2665 = icmp eq i32 %2664, 1
  %2666 = getelementptr [12 x float], [12 x float]* %55, i32 0, i32 0
  %2667 = getelementptr [12 x float], [12 x float]* %56, i32 0, i32 0
  br i1 %2665, label %2668, label %2671, !dx.controlflow.hints !138

; <label>:2668                                    ; preds = %2663
  %2669 = load float, float* %2666, align 4
  %2670 = load float, float* %2667, align 4
  br label %2698

; <label>:2671                                    ; preds = %2663
  %2672 = load float, float* %2666, align 4
  %2673 = load float, float* %2667, align 4
  %2674 = fdiv fast float 1.000000e+00, %2673
  %2675 = fsub fast float %2672, %2674
  %2676 = icmp ugt i32 %2664, 1
  br i1 %2676, label %2677, label %2693

; <label>:2677                                    ; preds = %2671
  br label %2678

; <label>:2678                                    ; preds = %2678, %2677
  %2679 = phi float [ %2688, %2678 ], [ %2675, %2677 ]
  %2680 = phi float [ %2689, %2678 ], [ %2672, %2677 ]
  %2681 = phi i32 [ %2690, %2678 ], [ 1, %2677 ]
  %2682 = getelementptr [12 x float], [12 x float]* %55, i32 0, i32 %2681
  %2683 = load float, float* %2682, align 4
  %2684 = getelementptr [12 x float], [12 x float]* %56, i32 0, i32 %2681
  %2685 = load float, float* %2684, align 4
  %2686 = fdiv fast float 1.000000e+00, %2685
  %2687 = fsub fast float %2683, %2686
  %2688 = call float @dx.op.binary.f32(i32 36, float %2679, float %2687)  ; FMin(a,b)
  %2689 = call float @dx.op.binary.f32(i32 35, float %2680, float %2683)  ; FMax(a,b)
  %2690 = add nuw i32 %2681, 1
  %2691 = icmp eq i32 %2690, %2664
  br i1 %2691, label %2692, label %2678

; <label>:2692                                    ; preds = %2678
  br label %2693

; <label>:2693                                    ; preds = %2692, %2671
  %2694 = phi float [ %2675, %2671 ], [ %2688, %2692 ]
  %2695 = phi float [ %2672, %2671 ], [ %2689, %2692 ]
  %2696 = fsub fast float %2695, %2694
  %2697 = fdiv fast float 1.000000e+00, %2696
  br label %2698

; <label>:2698                                    ; preds = %2693, %2668
  %2699 = phi float [ %2669, %2668 ], [ %2695, %2693 ]
  %2700 = phi float [ %2670, %2668 ], [ %2697, %2693 ]
  %2701 = fadd fast float %2402, %2699
  %2702 = fmul fast float %2701, %2700
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2704 = fmul fast float %2703, 2.000000e+00
  %2705 = fsub fast float 1.000000e+00, %2704
  %2706 = fmul fast float %2540, %2540
  %2707 = fsub fast float %2541, %2706
  %2708 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2707)  ; FMax(a,b)
  %2709 = fdiv fast float 1.000000e+00, %2708
  %2710 = fmul fast float %2541, %2540
  %2711 = fsub fast float %2542, %2710
  %2712 = fsub fast float %2705, %2540
  %2713 = fmul fast float %2705, %2705
  %2714 = fsub fast float %2713, %2541
  %2715 = fmul fast float %2709, %2711
  %2716 = fmul fast float %2715, %2712
  %2717 = fsub fast float %2714, %2716
  %2718 = fmul fast float %2541, %2541
  %2719 = fsub fast float %2543, %2718
  %2720 = fmul fast float %2711, %2711
  %2721 = fmul fast float %2720, %2709
  %2722 = fsub fast float %2719, %2721
  %2723 = fdiv fast float %2717, %2722
  %2724 = fmul fast float %2723, %2711
  %2725 = fsub fast float %2712, %2724
  %2726 = fmul fast float %2725, %2709
  %2727 = fmul fast float %2726, %2540
  %2728 = fsub fast float 1.000000e+00, %2727
  %2729 = fmul fast float %2723, %2541
  %2730 = fsub fast float %2728, %2729
  %2731 = fmul fast float %2726, %2726
  %2732 = fmul fast float %2723, 4.000000e+00
  %2733 = fmul fast float %2732, %2730
  %2734 = fsub fast float %2731, %2733
  %2735 = call float @dx.op.unary.f32(i32 24, float %2734)  ; Sqrt(value)
  %2736 = fcmp fast oge float %2726, 0.000000e+00
  %2737 = fsub fast float -0.000000e+00, %2735
  %2738 = select i1 %2736, float %2737, float %2735
  %2739 = fsub fast float %2738, %2726
  %2740 = fdiv fast float %2739, %2723
  %2741 = fdiv fast float %2730, %2739
  %2742 = fmul fast float %2740, 5.000000e-01
  %2743 = fmul fast float %2741, 2.000000e+00
  %2744 = select i1 %2736, float %2742, float %2743
  %2745 = select i1 %2736, float %2743, float %2742
  %2746 = call float @dx.op.binary.f32(i32 35, float %2744, float %2745)  ; FMax(a,b)
  %2747 = call float @dx.op.binary.f32(i32 36, float %2744, float %2745)  ; FMin(a,b)
  %2748 = fcmp fast ogt float %2705, %2746
  %2749 = fsub fast float %2705, %2747
  %2750 = fsub fast float %2705, %2746
  %2751 = fsub fast float %2746, %2747
  %2752 = select i1 %2748, float %2750, float %2751
  %2753 = fmul float %2749, %2752
  %2754 = select i1 %2748, float %2747, float %2705
  %2755 = fcmp fast ogt float %2705, %2747
  %2756 = fmul fast float %2754, %2746
  %2757 = fadd fast float %2754, %2746
  %2758 = fmul fast float %2757, %2540
  %2759 = fadd fast float %2756, %2541
  %2760 = fsub fast float %2759, %2758
  %2761 = fdiv fast float %2760, %2753
  %2762 = select i1 %2755, float %2761, float 0.000000e+00
  %2763 = fsub fast float 1.000000e+00, %2762
  %2764 = select i1 %2748, float %2763, float %2762
  %2765 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2766 = extractvalue %dx.types.CBufRet.f32 %2525, 3
  %2767 = fmul fast float %2766, %2765
  %2768 = fsub fast float 1.000000e+00, %2767
  br label %2769

; <label>:2769                                    ; preds = %2698, %2410, %2375, %2371, %2366
  %2770 = phi float [ 1.000000e+00, %2366 ], [ %2768, %2698 ], [ 1.000000e+00, %2375 ], [ 1.000000e+00, %2410 ], [ 1.000000e+00, %2371 ]
  %2771 = fcmp fast ogt float %2367, 0.000000e+00
  br i1 %2771, label %2772, label %2778, !dx.controlflow.hints !139

; <label>:2772                                    ; preds = %2769
  %2773 = fadd fast float %2332, %2318
  %2774 = call float @dx.op.binary.f32(i32 35, float %2773, float 0.000000e+00)  ; FMax(a,b)
  %2775 = fadd fast float %2774, 0x3F10000000000000
  %2776 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %2325, float %2326, float undef, float undef, i32 0, i32 0, i32 undef, float %2775)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2777 = extractvalue %dx.types.ResRet.f32 %2776, 0
  br label %2778

; <label>:2778                                    ; preds = %2772, %2769
  %2779 = phi float [ %2777, %2772 ], [ 1.000000e+00, %2769 ]
  %2780 = fsub fast float %2779, %2770
  %2781 = fmul fast float %2780, %2367
  %2782 = fadd fast float %2781, %2770
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 2
  %2785 = fcmp fast ogt float %2784, 0.000000e+00
  br i1 %2785, label %2786, label %2822, !dx.controlflow.hints !140

; <label>:2786                                    ; preds = %2778
  %2787 = fcmp fast ugt float %2784, 0.000000e+00
  br i1 %2787, label %2788, label %2819, !dx.controlflow.hints !141

; <label>:2788                                    ; preds = %2786
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.CBufRet.f32 %2789, 2
  %2793 = extractvalue %dx.types.CBufRet.f32 %2789, 3
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2798 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2799 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2800 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2801 = fadd fast float %2221, %2287
  %2802 = fadd fast float %2222, %2288
  %2803 = fadd fast float %2223, %2289
  %2804 = fmul fast float %2801, %2790
  %2805 = call float @dx.op.tertiary.f32(i32 46, float %2791, float %2802, float %2804)  ; FMad(a,b,c)
  %2806 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %2803, float %2805)  ; FMad(a,b,c)
  %2807 = fadd fast float %2806, %2793
  %2808 = fmul fast float %2801, %2795
  %2809 = call float @dx.op.tertiary.f32(i32 46, float %2796, float %2802, float %2808)  ; FMad(a,b,c)
  %2810 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2803, float %2809)  ; FMad(a,b,c)
  %2811 = fadd fast float %2810, %2798
  %2812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %42, float %2807, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2813 = extractvalue %dx.types.ResRet.f32 %2812, 0
  %2814 = fmul fast float %2813, %2800
  %2815 = fadd fast float %2814, %2799
  %2816 = call float @dx.op.unary.f32(i32 7, float %2815)  ; Saturate(value)
  %2817 = fmul fast float %2816, %2784
  %2818 = fsub fast float 1.000000e+00, %2817
  br label %2819

; <label>:2819                                    ; preds = %2788, %2786
  %2820 = phi float [ %2818, %2788 ], [ 1.000000e+00, %2786 ]
  %2821 = fmul fast float %2820, %2782
  br label %2822

; <label>:2822                                    ; preds = %2819, %2778, %2274
  %2823 = phi float [ 1.000000e+00, %2274 ], [ %2821, %2819 ], [ %2782, %2778 ]
  %2824 = call float @dx.op.binary.f32(i32 36, float %2823, float %2823)  ; FMin(a,b)
  %2825 = call float @dx.op.binary.f32(i32 36, float %2823, float %2824)  ; FMin(a,b)
  %2826 = fcmp fast ogt float %2825, 0.000000e+00
  br i1 %2826, label %2827, label %2985, !dx.controlflow.hints !142

; <label>:2827                                    ; preds = %2822
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.CBufRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.CBufRet.f32 %2828, 2
  %2832 = extractvalue %dx.types.CBufRet.f32 %2828, 3
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.CBufRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.CBufRet.f32 %2833, 2
  %2837 = extractvalue %dx.types.CBufRet.f32 %2833, 3
  %2838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2839 = extractvalue %dx.types.CBufRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.CBufRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.CBufRet.f32 %2838, 2
  %2842 = extractvalue %dx.types.CBufRet.f32 %2838, 3
  %2843 = fmul fast float %2829, %2287
  %2844 = call float @dx.op.tertiary.f32(i32 46, float %2288, float %2830, float %2843)  ; FMad(a,b,c)
  %2845 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2831, float %2844)  ; FMad(a,b,c)
  %2846 = fadd fast float %2845, %2832
  %2847 = fmul fast float %2834, %2287
  %2848 = call float @dx.op.tertiary.f32(i32 46, float %2288, float %2835, float %2847)  ; FMad(a,b,c)
  %2849 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2836, float %2848)  ; FMad(a,b,c)
  %2850 = fadd fast float %2849, %2837
  %2851 = fmul fast float %2839, %2287
  %2852 = call float @dx.op.tertiary.f32(i32 46, float %2288, float %2840, float %2851)  ; FMad(a,b,c)
  %2853 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2841, float %2852)  ; FMad(a,b,c)
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2857 = extractvalue %dx.types.CBufRet.f32 %2854, 3
  %2858 = fmul fast float %2857, %2846
  %2859 = fmul fast float %2857, %2850
  %2860 = fadd fast float %2858, %2855
  %2861 = fadd fast float %2859, %2856
  %2862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2863 = extractvalue %dx.types.CBufRet.f32 %2862, 0
  %2864 = extractvalue %dx.types.CBufRet.f32 %2862, 1
  %2865 = fsub fast float %2860, %2863
  %2866 = fsub fast float %2861, %2864
  %2867 = fcmp fast olt float %2865, 0.000000e+00
  %2868 = fcmp fast olt float %2866, 0.000000e+00
  %2869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.CBufRet.f32 %2869, 1
  %2872 = extractvalue %dx.types.CBufRet.f32 %2869, 2
  %2873 = extractvalue %dx.types.CBufRet.f32 %2869, 3
  %2874 = select i1 %2867, float %2870, float %2872
  %2875 = select i1 %2868, float %2871, float %2873
  %2876 = fmul fast float %2874, %2865
  %2877 = fmul fast float %2875, %2866
  %2878 = call float @dx.op.unary.f32(i32 6, float %2876)  ; FAbs(value)
  %2879 = call float @dx.op.unary.f32(i32 6, float %2877)  ; FAbs(value)
  %2880 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2881 = call float @dx.op.binary.f32(i32 35, float %2878, float %2879)  ; FMax(a,b)
  %2882 = fsub fast float %2880, %2881
  %2883 = call float @dx.op.unary.f32(i32 7, float %2882)  ; Saturate(value)
  %2884 = fcmp fast ogt float %2883, 0.000000e+00
  br i1 %2884, label %2885, label %2926, !dx.controlflow.hints !143

; <label>:2885                                    ; preds = %2827
  %2886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %45, float %2860, float %2861, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2887 = extractvalue %dx.types.ResRet.f32 %2886, 1
  %2888 = fcmp fast ogt float %2887, 0.000000e+00
  br i1 %2888, label %2889, label %2922, !dx.controlflow.hints !144

; <label>:2889                                    ; preds = %2885
  %2890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %2860, float %2861, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.ResRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.ResRet.f32 %2890, 2
  %2894 = extractvalue %dx.types.ResRet.f32 %2890, 3
  %2895 = fsub fast float 1.000000e+00, %2842
  %2896 = fsub fast float %2895, %2853
  %2897 = fmul fast float %2896, 0x400921FB60000000
  %2898 = fadd fast float %2897, 0x3FF921FB60000000
  %2899 = call float @dx.op.unary.f32(i32 13, float %2898)  ; Sin(value)
  %2900 = fadd fast float %2899, -1.000000e+00
  %2901 = fmul fast float %2900, 0x3FD45F3060000000
  %2902 = fmul fast float %2896, 0x401921FB60000000
  %2903 = fadd fast float %2902, 0x400921FB60000000
  %2904 = call float @dx.op.unary.f32(i32 13, float %2903)  ; Sin(value)
  %2905 = fadd fast float %2904, 0x3E7777A5C0000000
  %2906 = fmul fast float %2905, 0x3FC45F3060000000
  %2907 = fmul fast float %2896, 0x4022D97C80000000
  %2908 = fadd fast float %2907, 0x4012D97C80000000
  %2909 = call float @dx.op.unary.f32(i32 13, float %2908)  ; Sin(value)
  %2910 = fadd fast float %2909, 1.000000e+00
  %2911 = fmul fast float %2910, 0x3FBB2995E0000000
  %2912 = fmul fast float %2896, 0x402921FB60000000
  %2913 = fadd fast float %2912, 0x401921FB60000000
  %2914 = call float @dx.op.unary.f32(i32 13, float %2913)  ; Sin(value)
  %2915 = fadd fast float %2914, 0xBE8777A5C0000000
  %2916 = fmul fast float %2915, 0x3FB45F3060000000
  %2917 = call float @dx.op.dot4.f32(i32 56, float %2891, float %2892, float %2893, float %2894, float %2901, float %2906, float %2911, float %2916)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2918 = fmul fast float %2917, 0xBFF7154760000000
  %2919 = call float @dx.op.unary.f32(i32 21, float %2918)  ; Exp(value)
  %2920 = call float @dx.op.unary.f32(i32 7, float %2919)  ; Saturate(value)
  %2921 = fadd float %2920, -1.000000e+00
  br label %2922

; <label>:2922                                    ; preds = %2889, %2885
  %2923 = phi float [ %2921, %2889 ], [ 0.000000e+00, %2885 ]
  %2924 = fmul fast float %2923, %2883
  %2925 = fadd fast float %2924, 1.000000e+00
  br label %2926

; <label>:2926                                    ; preds = %2922, %2827
  %2927 = phi float [ %2925, %2922 ], [ 1.000000e+00, %2827 ]
  %2928 = fmul fast float %2927, %2823
  %2929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.f32 %2929, 1
  %2931 = fsub fast float -0.000000e+00, %203
  %2932 = fsub fast float -0.000000e+00, %204
  %2933 = fsub fast float -0.000000e+00, %2226
  %2934 = fsub fast float %2933, %2223
  %2935 = fadd fast float %2934, %2930
  %2936 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2931, float %2932, float %2935)  ; Dot3(ax,ay,az,bx,by,bz)
  %2937 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2275, float %2276, float %2277)  ; Dot3(ax,ay,az,bx,by,bz)
  %2938 = fdiv fast float 1.000000e+00, %2937
  %2939 = fmul fast float %2938, %2936
  %2940 = fmul fast float %2275, %2939
  %2941 = fmul fast float %2276, %2939
  %2942 = fadd fast float %2940, %203
  %2943 = fadd fast float %2941, %204
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 0
  %2946 = extractvalue %dx.types.CBufRet.f32 %2944, 1
  %2947 = fsub fast float %2942, %2945
  %2948 = fsub fast float %2943, %2946
  %2949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2950 = extractvalue %dx.types.CBufRet.f32 %2949, 2
  %2951 = extractvalue %dx.types.CBufRet.f32 %2949, 3
  %2952 = fmul fast float %2947, %2950
  %2953 = fmul fast float %2948, %2951
  %2954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2955 = extractvalue %dx.types.CBufRet.i32 %2954, 3
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %2962, label %2957, !dx.controlflow.hints !145

; <label>:2957                                    ; preds = %2926
  %2958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %2952, float %2953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  br label %2967

; <label>:2962                                    ; preds = %2926
  %2963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %2952, float %2953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2964 = extractvalue %dx.types.ResRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.ResRet.f32 %2963, 1
  %2966 = extractvalue %dx.types.ResRet.f32 %2963, 2
  br label %2967

; <label>:2967                                    ; preds = %2962, %2957
  %2968 = phi float [ %2959, %2957 ], [ %2964, %2962 ]
  %2969 = phi float [ %2960, %2957 ], [ %2965, %2962 ]
  %2970 = phi float [ %2961, %2957 ], [ %2966, %2962 ]
  %2971 = extractvalue %dx.types.CBufRet.f32 %2929, 2
  %2972 = fmul fast float %2971, %2968
  %2973 = extractvalue %dx.types.CBufRet.f32 %2929, 0
  %2974 = fsub fast float %2939, %2973
  %2975 = fsub fast float %2974, %2972
  %2976 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2975)  ; FMax(a,b)
  %2977 = fmul fast float %2976, %2969
  %2978 = call float @dx.op.binary.f32(i32 36, float %2970, float %2977)  ; FMin(a,b)
  %2979 = fmul fast float %2978, 0xBFF7154760000000
  %2980 = call float @dx.op.unary.f32(i32 21, float %2979)  ; Exp(value)
  %2981 = fadd fast float %2980, -1.000000e+00
  %2982 = fmul fast float %2981, %2218
  %2983 = fadd fast float %2982, 1.000000e+00
  %2984 = fmul fast float %2928, %2983
  br label %2985

; <label>:2985                                    ; preds = %2967, %2822
  %2986 = phi float [ %2984, %2967 ], [ %2823, %2822 ]
  %2987 = call float @dx.op.binary.f32(i32 36, float %2986, float %2986)  ; FMin(a,b)
  %2988 = call float @dx.op.binary.f32(i32 36, float %2986, float %2987)  ; FMin(a,b)
  %2989 = fcmp fast ogt float %2988, 0.000000e+00
  br i1 %2989, label %2990, label %3420, !dx.controlflow.hints !146

; <label>:2990                                    ; preds = %2985
  br i1 %254, label %2991, label %3393, !dx.controlflow.hints !147

; <label>:2991                                    ; preds = %2990
  %2992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2993 = extractvalue %dx.types.CBufRet.i32 %2992, 0
  %2994 = and i32 %2993, 64
  %2995 = icmp ne i32 %2994, 0
  %2996 = fsub fast float %205, %243
  %2997 = fcmp fast ogt float %2996, 0.000000e+00
  %2998 = xor i1 %2997, true
  %2999 = fmul fast float %2275, 5.120000e+02
  %3000 = fmul fast float %2276, 5.120000e+02
  %3001 = fmul fast float %2277, 5.120000e+02
  %3002 = fadd fast float %3001, %2226
  %3003 = fsub fast float %2270, %3002
  %3004 = fmul fast float %3003, 2.000000e+00
  %3005 = fadd fast float %3004, %3002
  %3006 = select i1 %2997, float %3005, float %3002
  %3007 = fsub fast float %3006, %2226
  %3008 = call float @dx.op.dot3.f32(i32 55, float %2999, float %3000, float %3007, float %2999, float %3000, float %3007)  ; Dot3(ax,ay,az,bx,by,bz)
  %3009 = call float @dx.op.unary.f32(i32 25, float %3008)  ; Rsqrt(value)
  %3010 = fmul fast float %3009, %2999
  %3011 = fmul fast float %3009, %3000
  %3012 = fmul fast float %3009, %3007
  %3013 = fsub fast float %243, %205
  %3014 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3013)  ; Dot3(ax,ay,az,bx,by,bz)
  %3015 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3010, float %3011, float %3012)  ; Dot3(ax,ay,az,bx,by,bz)
  %3016 = fdiv fast float 1.000000e+00, %3015
  %3017 = fmul fast float %3016, %3014
  %3018 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2996, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3019 = fcmp fast ogt float %3018, 0.000000e+00
  %3020 = fcmp fast olt float %3018, 0.000000e+00
  %3021 = zext i1 %3019 to i32
  %3022 = zext i1 %3020 to i32
  %3023 = sub nsw i32 %3021, %3022
  %3024 = sitofp i32 %3023 to float
  %3025 = fsub fast float %3006, %2270
  %3026 = call float @dx.op.dot3.f32(i32 55, float %2999, float %3000, float %3025, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3027 = fcmp fast ogt float %3026, 0.000000e+00
  %3028 = fcmp fast olt float %3026, 0.000000e+00
  %3029 = zext i1 %3027 to i32
  %3030 = zext i1 %3028 to i32
  %3031 = sub nsw i32 %3029, %3030
  %3032 = sitofp i32 %3031 to float
  %3033 = fcmp fast une float %3024, %3032
  br i1 %3033, label %3034, label %3044, !dx.controlflow.hints !148

; <label>:3034                                    ; preds = %2991
  %3035 = fmul fast float %3017, %3012
  %3036 = fmul fast float %3017, %3011
  %3037 = fmul fast float %3017, %3010
  %3038 = fmul fast float %3037, %3037
  %3039 = fmul fast float %3036, %3036
  %3040 = fadd fast float %3038, %3039
  %3041 = fmul fast float %3035, %3035
  %3042 = fadd fast float %3040, %3041
  %3043 = call float @dx.op.unary.f32(i32 24, float %3042)  ; Sqrt(value)
  br label %3054

; <label>:3044                                    ; preds = %2991
  %3045 = icmp slt i32 %3023, 0
  br i1 %3045, label %3046, label %3054, !dx.controlflow.hints !149

; <label>:3046                                    ; preds = %3044
  %3047 = fsub fast float %2226, %3006
  %3048 = fmul fast float %2999, %2999
  %3049 = fmul fast float %3000, %3000
  %3050 = fadd fast float %3048, %3049
  %3051 = fmul fast float %3047, %3047
  %3052 = fadd fast float %3050, %3051
  %3053 = call float @dx.op.unary.f32(i32 24, float %3052)  ; Sqrt(value)
  br label %3054

; <label>:3054                                    ; preds = %3046, %3044, %3034
  %3055 = phi float [ %3043, %3034 ], [ %3053, %3046 ], [ 0.000000e+00, %3044 ]
  %3056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %3057 = extractvalue %dx.types.CBufRet.i32 %3056, 1
  %3058 = icmp ne i32 %3057, 0
  %3059 = and i1 %3058, %2998
  %3060 = call float @dx.op.dot3.f32(i32 55, float %3010, float %3011, float %3012, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3061 = fmul fast float %3060, %3060
  %3062 = fsub fast float 1.000000e+00, %3061
  %3063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3064 = extractvalue %dx.types.CBufRet.f32 %3063, 0
  %3065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3066 = extractvalue %dx.types.CBufRet.f32 %3065, 0
  %3067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3068 = extractvalue %dx.types.CBufRet.f32 %3067, 0
  %3069 = extractvalue %dx.types.CBufRet.f32 %3063, 1
  %3070 = extractvalue %dx.types.CBufRet.f32 %3065, 1
  %3071 = extractvalue %dx.types.CBufRet.f32 %3067, 1
  %3072 = extractvalue %dx.types.CBufRet.f32 %3063, 3
  %3073 = extractvalue %dx.types.CBufRet.f32 %3065, 3
  %3074 = extractvalue %dx.types.CBufRet.f32 %3067, 3
  %3075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.f32 %3075, 0
  %3077 = extractvalue %dx.types.CBufRet.f32 %3075, 1
  %3078 = extractvalue %dx.types.CBufRet.f32 %3075, 2
  %3079 = extractvalue %dx.types.CBufRet.f32 %3075, 3
  br i1 %3059, label %3080, label %3273, !dx.controlflow.hints !150

; <label>:3080                                    ; preds = %3054
  %3081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %3082 = extractvalue %dx.types.CBufRet.f32 %3081, 0
  %3083 = fmul fast float %3082, %3082
  %3084 = fmul fast float %3083, %3062
  %3085 = fsub fast float 1.000000e+00, %3084
  %3086 = fcmp fast oge float %3085, 0.000000e+00
  %3087 = fmul fast float %3082, %3010
  %3088 = fmul fast float %3082, %3011
  %3089 = fmul fast float %3082, %3012
  %3090 = call float @dx.op.unary.f32(i32 24, float %3085)  ; Sqrt(value)
  %3091 = fmul fast float %3082, %3060
  %3092 = fsub fast float -0.000000e+00, %3090
  %3093 = fsub fast float %3092, %3091
  %3094 = fadd fast float %3093, %3089
  %3095 = select i1 %3086, float %3087, float 0.000000e+00
  %3096 = select i1 %3086, float %3088, float 0.000000e+00
  %3097 = select i1 %3086, float %3094, float 0.000000e+00
  %3098 = fmul fast float %3095, %3055
  %3099 = fmul fast float %3096, %3055
  %3100 = fmul fast float %3097, %3055
  %3101 = fadd fast float %203, %3098
  %3102 = fadd fast float %3101, %3072
  %3103 = fadd fast float %204, %3099
  %3104 = fadd fast float %3103, %3073
  %3105 = fadd fast float %205, %3100
  %3106 = fadd fast float %3105, %3074
  %3107 = fmul fast float %3102, %3064
  %3108 = call float @dx.op.tertiary.f32(i32 46, float %3104, float %3066, float %3107)  ; FMad(a,b,c)
  %3109 = call float @dx.op.tertiary.f32(i32 46, float %3106, float %3068, float %3108)  ; FMad(a,b,c)
  %3110 = fmul fast float %3102, %3069
  %3111 = call float @dx.op.tertiary.f32(i32 46, float %3104, float %3070, float %3110)  ; FMad(a,b,c)
  %3112 = call float @dx.op.tertiary.f32(i32 46, float %3106, float %3071, float %3111)  ; FMad(a,b,c)
  %3113 = fsub fast float %3109, %3072
  %3114 = fsub fast float %3113, %3076
  %3115 = fadd fast float %3114, %3078
  %3116 = fsub fast float %3112, %3073
  %3117 = fsub fast float %3116, %3077
  %3118 = fadd fast float %3117, %3078
  %3119 = fmul fast float %3115, %3079
  %3120 = fmul fast float %3118, %3079
  %3121 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3122 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  %3123 = fsub fast float 1.000000e+00, %3121
  %3124 = fsub fast float 1.000000e+00, %3122
  %3125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %45, float %3123, float %3124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3126 = extractvalue %dx.types.ResRet.f32 %3125, 0
  %3127 = fmul fast float %3126, 0x3FBC5ABC00000000
  %3128 = extractvalue %dx.types.CBufRet.f32 %3081, 1
  %3129 = fmul fast float %3128, %3128
  %3130 = fmul fast float %3129, %3062
  %3131 = fsub fast float 1.000000e+00, %3130
  %3132 = fcmp fast oge float %3131, 0.000000e+00
  %3133 = fmul fast float %3128, %3010
  %3134 = fmul fast float %3128, %3011
  %3135 = fmul fast float %3128, %3012
  %3136 = call float @dx.op.unary.f32(i32 24, float %3131)  ; Sqrt(value)
  %3137 = fmul fast float %3128, %3060
  %3138 = fsub fast float -0.000000e+00, %3136
  %3139 = fsub fast float %3138, %3137
  %3140 = fadd fast float %3139, %3135
  %3141 = select i1 %3132, float %3133, float 0.000000e+00
  %3142 = select i1 %3132, float %3134, float 0.000000e+00
  %3143 = select i1 %3132, float %3140, float 0.000000e+00
  %3144 = fmul fast float %3141, %3055
  %3145 = fmul fast float %3142, %3055
  %3146 = fmul fast float %3143, %3055
  %3147 = fadd fast float %203, %3144
  %3148 = fadd fast float %3147, %3072
  %3149 = fadd fast float %204, %3145
  %3150 = fadd fast float %3149, %3073
  %3151 = fadd fast float %205, %3146
  %3152 = fadd fast float %3151, %3074
  %3153 = fmul fast float %3148, %3064
  %3154 = call float @dx.op.tertiary.f32(i32 46, float %3150, float %3066, float %3153)  ; FMad(a,b,c)
  %3155 = call float @dx.op.tertiary.f32(i32 46, float %3152, float %3068, float %3154)  ; FMad(a,b,c)
  %3156 = fmul fast float %3148, %3069
  %3157 = call float @dx.op.tertiary.f32(i32 46, float %3150, float %3070, float %3156)  ; FMad(a,b,c)
  %3158 = call float @dx.op.tertiary.f32(i32 46, float %3152, float %3071, float %3157)  ; FMad(a,b,c)
  %3159 = fsub fast float %3155, %3072
  %3160 = fsub fast float %3159, %3076
  %3161 = fadd fast float %3160, %3078
  %3162 = fsub fast float %3158, %3073
  %3163 = fsub fast float %3162, %3077
  %3164 = fadd fast float %3163, %3078
  %3165 = fmul fast float %3161, %3079
  %3166 = fmul fast float %3164, %3079
  %3167 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  %3168 = call float @dx.op.unary.f32(i32 7, float %3166)  ; Saturate(value)
  %3169 = fsub fast float 1.000000e+00, %3167
  %3170 = fsub fast float 1.000000e+00, %3168
  %3171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %45, float %3169, float %3170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3172 = extractvalue %dx.types.ResRet.f32 %3171, 0
  %3173 = fmul fast float %3172, 0x3F9E4BBD60000000
  %3174 = extractvalue %dx.types.CBufRet.f32 %3081, 2
  %3175 = fmul fast float %3174, %3174
  %3176 = fmul fast float %3175, %3062
  %3177 = fsub fast float 1.000000e+00, %3176
  %3178 = fcmp fast oge float %3177, 0.000000e+00
  %3179 = fmul fast float %3174, %3010
  %3180 = fmul fast float %3174, %3011
  %3181 = fmul fast float %3174, %3012
  %3182 = call float @dx.op.unary.f32(i32 24, float %3177)  ; Sqrt(value)
  %3183 = fmul fast float %3174, %3060
  %3184 = fsub fast float -0.000000e+00, %3182
  %3185 = fsub fast float %3184, %3183
  %3186 = fadd fast float %3185, %3181
  %3187 = select i1 %3178, float %3179, float 0.000000e+00
  %3188 = select i1 %3178, float %3180, float 0.000000e+00
  %3189 = select i1 %3178, float %3186, float 0.000000e+00
  %3190 = fmul fast float %3187, %3055
  %3191 = fmul fast float %3188, %3055
  %3192 = fmul fast float %3189, %3055
  %3193 = fadd fast float %203, %3190
  %3194 = fadd fast float %3193, %3072
  %3195 = fadd fast float %204, %3191
  %3196 = fadd fast float %3195, %3073
  %3197 = fadd fast float %205, %3192
  %3198 = fadd fast float %3197, %3074
  %3199 = fmul fast float %3194, %3064
  %3200 = call float @dx.op.tertiary.f32(i32 46, float %3196, float %3066, float %3199)  ; FMad(a,b,c)
  %3201 = call float @dx.op.tertiary.f32(i32 46, float %3198, float %3068, float %3200)  ; FMad(a,b,c)
  %3202 = fmul fast float %3194, %3069
  %3203 = call float @dx.op.tertiary.f32(i32 46, float %3196, float %3070, float %3202)  ; FMad(a,b,c)
  %3204 = call float @dx.op.tertiary.f32(i32 46, float %3198, float %3071, float %3203)  ; FMad(a,b,c)
  %3205 = fsub fast float %3201, %3072
  %3206 = fsub fast float %3205, %3076
  %3207 = fadd fast float %3206, %3078
  %3208 = fsub fast float %3204, %3073
  %3209 = fsub fast float %3208, %3077
  %3210 = fadd fast float %3209, %3078
  %3211 = fmul fast float %3207, %3079
  %3212 = fmul fast float %3210, %3079
  %3213 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3214 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3215 = fsub fast float 1.000000e+00, %3213
  %3216 = fsub fast float 1.000000e+00, %3214
  %3217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %45, float %3215, float %3216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3218 = extractvalue %dx.types.ResRet.f32 %3217, 0
  %3219 = fmul fast float %3218, 0x3FDDEACB00000000
  %3220 = fadd fast float %3219, %3173
  %3221 = extractvalue %dx.types.CBufRet.f32 %3081, 3
  %3222 = fmul fast float %3221, %3221
  %3223 = fmul fast float %3222, %3062
  %3224 = fsub fast float 1.000000e+00, %3223
  %3225 = fcmp fast oge float %3224, 0.000000e+00
  %3226 = fmul fast float %3221, %3010
  %3227 = fmul fast float %3221, %3011
  %3228 = fmul fast float %3221, %3012
  %3229 = call float @dx.op.unary.f32(i32 24, float %3224)  ; Sqrt(value)
  %3230 = fmul fast float %3221, %3060
  %3231 = fsub fast float -0.000000e+00, %3229
  %3232 = fsub fast float %3231, %3230
  %3233 = fadd fast float %3232, %3228
  %3234 = select i1 %3225, float %3226, float 0.000000e+00
  %3235 = select i1 %3225, float %3227, float 0.000000e+00
  %3236 = select i1 %3225, float %3233, float 0.000000e+00
  %3237 = fmul fast float %3234, %3055
  %3238 = fmul fast float %3235, %3055
  %3239 = fmul fast float %3236, %3055
  %3240 = fadd fast float %203, %3237
  %3241 = fadd fast float %3240, %3072
  %3242 = fadd fast float %204, %3238
  %3243 = fadd fast float %3242, %3073
  %3244 = fadd fast float %205, %3239
  %3245 = fadd fast float %3244, %3074
  %3246 = fmul fast float %3241, %3064
  %3247 = call float @dx.op.tertiary.f32(i32 46, float %3243, float %3066, float %3246)  ; FMad(a,b,c)
  %3248 = call float @dx.op.tertiary.f32(i32 46, float %3245, float %3068, float %3247)  ; FMad(a,b,c)
  %3249 = fmul fast float %3241, %3069
  %3250 = call float @dx.op.tertiary.f32(i32 46, float %3243, float %3070, float %3249)  ; FMad(a,b,c)
  %3251 = call float @dx.op.tertiary.f32(i32 46, float %3245, float %3071, float %3250)  ; FMad(a,b,c)
  %3252 = fsub fast float %3248, %3072
  %3253 = fsub fast float %3252, %3076
  %3254 = fadd fast float %3253, %3078
  %3255 = fsub fast float %3251, %3073
  %3256 = fsub fast float %3255, %3077
  %3257 = fadd fast float %3256, %3078
  %3258 = fmul fast float %3254, %3079
  %3259 = fmul fast float %3257, %3079
  %3260 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3261 = call float @dx.op.unary.f32(i32 7, float %3259)  ; Saturate(value)
  %3262 = fsub fast float 1.000000e+00, %3260
  %3263 = fsub fast float 1.000000e+00, %3261
  %3264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %45, float %3262, float %3263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3265 = extractvalue %dx.types.ResRet.f32 %3264, 0
  %3266 = fmul fast float %3265, 0x3FE0183CA0000000
  %3267 = fmul fast float %3265, 0x3FB51033E0000000
  %3268 = fadd fast float %3220, %3266
  %3269 = fadd fast float %3218, %3172
  %3270 = fmul fast float %3269, 0x3FD9D2A200000000
  %3271 = fadd fast float %3267, %3127
  %3272 = fadd fast float %3271, %3270
  br label %3319

; <label>:3273                                    ; preds = %3054
  %3274 = fmul fast float %3062, 0x3FE2024E20000000
  %3275 = fsub fast float 1.000000e+00, %3274
  %3276 = fcmp fast oge float %3275, 0.000000e+00
  %3277 = fmul fast float %3010, 0x3FE8018960000000
  %3278 = fmul fast float %3011, 0x3FE8018960000000
  %3279 = fmul fast float %3012, 0x3FE8018960000000
  %3280 = call float @dx.op.unary.f32(i32 24, float %3275)  ; Sqrt(value)
  %3281 = fmul fast float %3060, 0x3FE8018960000000
  %3282 = fsub fast float %3279, %3280
  %3283 = fsub fast float %3282, %3281
  %3284 = select i1 %3276, float %3277, float 0.000000e+00
  %3285 = select i1 %3276, float %3278, float 0.000000e+00
  %3286 = select i1 %3276, float %3283, float 0.000000e+00
  %3287 = select i1 %2997, float %3010, float %3284
  %3288 = select i1 %2997, float %3011, float %3285
  %3289 = select i1 %2997, float %3012, float %3286
  %3290 = fmul fast float %3287, %3055
  %3291 = fmul fast float %3288, %3055
  %3292 = fmul fast float %3289, %3055
  %3293 = fadd fast float %203, %3290
  %3294 = fadd fast float %3293, %3072
  %3295 = fadd fast float %204, %3291
  %3296 = fadd fast float %3295, %3073
  %3297 = fadd fast float %205, %3292
  %3298 = fadd fast float %3297, %3074
  %3299 = fmul fast float %3294, %3064
  %3300 = call float @dx.op.tertiary.f32(i32 46, float %3296, float %3066, float %3299)  ; FMad(a,b,c)
  %3301 = call float @dx.op.tertiary.f32(i32 46, float %3298, float %3068, float %3300)  ; FMad(a,b,c)
  %3302 = fmul fast float %3294, %3069
  %3303 = call float @dx.op.tertiary.f32(i32 46, float %3296, float %3070, float %3302)  ; FMad(a,b,c)
  %3304 = call float @dx.op.tertiary.f32(i32 46, float %3298, float %3071, float %3303)  ; FMad(a,b,c)
  %3305 = fsub fast float %3301, %3072
  %3306 = fsub fast float %3305, %3076
  %3307 = fadd fast float %3306, %3078
  %3308 = fsub fast float %3304, %3073
  %3309 = fsub fast float %3308, %3077
  %3310 = fadd fast float %3309, %3078
  %3311 = fmul fast float %3307, %3079
  %3312 = fmul fast float %3310, %3079
  %3313 = call float @dx.op.unary.f32(i32 7, float %3311)  ; Saturate(value)
  %3314 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  %3315 = fsub fast float 1.000000e+00, %3313
  %3316 = fsub fast float 1.000000e+00, %3314
  %3317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %45, float %3315, float %3316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  br label %3319

; <label>:3319                                    ; preds = %3273, %3080
  %3320 = phi float [ %3318, %3273 ], [ %3268, %3080 ]
  %3321 = phi float [ %3318, %3273 ], [ %3272, %3080 ]
  %3322 = phi float [ %3318, %3273 ], [ %3126, %3080 ]
  %3323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3324 = extractvalue %dx.types.CBufRet.f32 %3323, 0
  %3325 = call float @dx.op.unary.f32(i32 6, float %3324)  ; FAbs(value)
  %3326 = fmul fast float %3055, %3055
  %3327 = fadd fast float %3326, 1.000000e+00
  %3328 = fdiv fast float %3325, %3327
  %3329 = call float @dx.op.unary.f32(i32 7, float %3328)  ; Saturate(value)
  %3330 = fsub fast float -0.000000e+00, %3055
  %3331 = select i1 %2997, float -0.000000e+00, float %3330
  %3332 = fmul fast float %1227, 0x3FF7154760000000
  %3333 = fmul fast float %3332, %3331
  %3334 = fmul fast float %1228, 0x3FF7154760000000
  %3335 = fmul fast float %3334, %3331
  %3336 = fmul fast float %1229, 0x3FF7154760000000
  %3337 = fmul fast float %3336, %3331
  %3338 = call float @dx.op.unary.f32(i32 21, float %3333)  ; Exp(value)
  %3339 = call float @dx.op.unary.f32(i32 21, float %3335)  ; Exp(value)
  %3340 = call float @dx.op.unary.f32(i32 21, float %3337)  ; Exp(value)
  %3341 = call float @dx.op.unary.f32(i32 7, float %3338)  ; Saturate(value)
  %3342 = call float @dx.op.unary.f32(i32 7, float %3339)  ; Saturate(value)
  %3343 = call float @dx.op.unary.f32(i32 7, float %3340)  ; Saturate(value)
  %3344 = call float @dx.op.unary.f32(i32 6, float %3060)  ; FAbs(value)
  %3345 = fsub fast float 1.000000e+00, %3344
  %3346 = bitcast float %3345 to i32
  %3347 = sitofp i32 %3346 to float
  %3348 = fptosi float %3347 to i32
  %3349 = bitcast i32 %3348 to float
  %3350 = fmul fast float %3349, 0x3FEF333340000000
  %3351 = fadd fast float %3350, 0x3F999999A0000000
  %3352 = call float @dx.op.unary.f32(i32 7, float %3351)  ; Saturate(value)
  %3353 = fsub fast float 1.000000e+00, %3352
  %3354 = fadd fast float %3320, 1.000000e+00
  %3355 = fadd fast float %3321, 1.000000e+00
  %3356 = fadd fast float %3322, 1.000000e+00
  %3357 = fmul fast float %3341, %3354
  %3358 = fmul fast float %3342, %3355
  %3359 = fmul fast float %3343, %3356
  %3360 = fmul fast float %3357, %3353
  %3361 = fmul fast float %3358, %3353
  %3362 = fmul fast float %3359, %3353
  %3363 = fmul fast float %3329, %3354
  %3364 = fmul fast float %3363, %3341
  %3365 = fmul fast float %3364, %3352
  %3366 = fmul fast float %3329, %3355
  %3367 = fmul fast float %3366, %3342
  %3368 = fmul fast float %3367, %3352
  %3369 = fmul fast float %3329, %3356
  %3370 = fmul fast float %3369, %3343
  %3371 = fmul fast float %3370, %3352
  %3372 = fadd fast float %3365, %3341
  %3373 = fadd fast float %3368, %3342
  %3374 = fadd fast float %3371, %3343
  %3375 = call float @dx.op.unary.f32(i32 6, float %2996)  ; FAbs(value)
  %3376 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3377 = select i1 %2997, float %3372, float %3360
  %3378 = select i1 %2997, float %3373, float %3361
  %3379 = select i1 %2997, float %3374, float %3362
  %3380 = select i1 %2995, float %3376, float 0.000000e+00
  %3381 = fsub fast float %3377, %3341
  %3382 = fsub fast float %3378, %3342
  %3383 = fsub fast float %3379, %3343
  %3384 = fmul fast float %3381, %3380
  %3385 = fmul fast float %3382, %3380
  %3386 = fmul fast float %3383, %3380
  %3387 = fadd fast float %3384, %3341
  %3388 = fadd fast float %3385, %3342
  %3389 = fadd fast float %3386, %3343
  %3390 = fmul fast float %3387, %2279
  %3391 = fmul fast float %3388, %2280
  %3392 = fmul fast float %3389, %2281
  br label %3393

; <label>:3393                                    ; preds = %3319, %2990
  %3394 = phi float [ %3390, %3319 ], [ %2279, %2990 ]
  %3395 = phi float [ %3391, %3319 ], [ %2280, %2990 ]
  %3396 = phi float [ %3392, %3319 ], [ %2281, %2990 ]
  %3397 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %2277, float %216, float %217, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %3398 = fcmp fast ogt float %2212, 0.000000e+00
  %3399 = select i1 %3398, float 1.000000e+00, float -1.000000e+00
  %3400 = fmul fast float %127, 7.812500e-03
  %3401 = fmul fast float %127, 3.125000e-02
  %3402 = fadd fast float %3401, -3.125000e-02
  %3403 = fmul fast float %3399, 5.000000e-01
  %3404 = fmul fast float %3403, %3397
  %3405 = fmul fast float %3399, %2212
  %3406 = fadd fast float %3400, 4.921875e-01
  %3407 = fadd fast float %3406, %3404
  %3408 = fadd fast float %3400, 0x3FB25F3060000000
  %3409 = fadd fast float %3402, %3405
  %3410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %3407, float %3408, float %3409, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3413 = extractvalue %dx.types.CBufRet.f32 %3412, 0
  %3414 = fmul fast float %2986, 0x400921FB60000000
  %3415 = fmul fast float %3414, %3411
  %3416 = fmul fast float %3415, %3413
  %3417 = fmul fast float %3416, %3394
  %3418 = fmul fast float %3416, %3395
  %3419 = fmul fast float %3416, %3396
  br label %3420

; <label>:3420                                    ; preds = %3393, %2985, %2207
  %3421 = phi float [ %3417, %3393 ], [ 0.000000e+00, %2207 ], [ 0.000000e+00, %2985 ]
  %3422 = phi float [ %3418, %3393 ], [ 0.000000e+00, %2207 ], [ 0.000000e+00, %2985 ]
  %3423 = phi float [ %3419, %3393 ], [ 0.000000e+00, %2207 ], [ 0.000000e+00, %2985 ]
  %3424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3425 = extractvalue %dx.types.CBufRet.i32 %3424, 0
  %3426 = icmp eq i32 %3425, 0
  br i1 %3426, label %4455, label %3427, !dx.controlflow.hints !151

; <label>:3427                                    ; preds = %3420
  %3428 = add nsw i32 %3425, -1
  %3429 = call i32 @dx.op.binary.i32(i32 37, i32 %3428, i32 0)  ; IMax(a,b)
  br label %3430

; <label>:3430                                    ; preds = %4448, %3427
  %3431 = phi i32 [ 0, %3427 ], [ %4452, %4448 ]
  %3432 = phi float [ %3421, %3427 ], [ %4449, %4448 ]
  %3433 = phi float [ %3422, %3427 ], [ %4450, %4448 ]
  %3434 = phi float [ %3423, %3427 ], [ %4451, %4448 ]
  %3435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3436 = extractvalue %dx.types.CBufRet.i32 %3435, 0
  %3437 = call i32 @dx.op.tertiary.i32(i32 49, i32 %362, i32 %3436, i32 %3431)  ; UMad(a,b,c)
  %3438 = shl i32 %3437, 2
  %3439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.i32 %3439, 0
  %3441 = icmp eq i32 %3440, 0
  br i1 %3441, label %4448, label %3442

; <label>:3442                                    ; preds = %3430
  br label %3443

; <label>:3443                                    ; preds = %3882, %3442
  %3444 = phi i32 [ %3453, %3882 ], [ %3440, %3442 ]
  %3445 = phi float [ %3883, %3882 ], [ %3432, %3442 ]
  %3446 = phi float [ %3884, %3882 ], [ %3433, %3442 ]
  %3447 = phi float [ %3885, %3882 ], [ %3434, %3442 ]
  %3448 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3444)  ; FirstbitLo(value)
  %3449 = shl i32 %3431, 5
  %3450 = add i32 %3448, %3449
  %3451 = and i32 %3448, 31
  %3452 = shl i32 1, %3451
  %3453 = xor i32 %3452, %3444
  %3454 = mul i32 %3450, 112
  %3455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.f32 %3455, 0
  %3457 = extractvalue %dx.types.ResRet.f32 %3455, 1
  %3458 = extractvalue %dx.types.ResRet.f32 %3455, 2
  %3459 = or i32 %3454, 12
  %3460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.f32 %3460, 0
  %3462 = add i32 %3454, 16
  %3463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = extractvalue %dx.types.ResRet.f32 %3463, 1
  %3466 = extractvalue %dx.types.ResRet.f32 %3463, 2
  %3467 = add i32 %3454, 28
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = add i32 %3454, 32
  %3471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.ResRet.f32 %3471, 1
  %3474 = extractvalue %dx.types.ResRet.f32 %3471, 2
  %3475 = add i32 %3454, 44
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = add i32 %3454, 48
  %3479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.ResRet.f32 %3479, 1
  %3482 = extractvalue %dx.types.ResRet.f32 %3479, 2
  %3483 = extractvalue %dx.types.ResRet.f32 %3479, 3
  %3484 = add i32 %3454, 64
  %3485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3489 = extractvalue %dx.types.ResRet.f32 %3485, 3
  %3490 = add i32 %3454, 92
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %3492, 65535
  %3494 = uitofp i32 %3493 to float
  %3495 = lshr i32 %3492, 16
  %3496 = uitofp i32 %3495 to float
  %3497 = and i32 %3469, 65535
  %3498 = and i32 %3469, 50331648
  %3499 = icmp eq i32 %3498, 33554432
  %3500 = fdiv fast float 1.000000e+00, %2266
  br i1 %3499, label %3501, label %3693, !dx.controlflow.hints !152

; <label>:3501                                    ; preds = %3443
  %3502 = fsub fast float %3480, %3472
  %3503 = fsub fast float %3481, %3473
  %3504 = fsub fast float %3482, %3474
  %3505 = fmul fast float %2267, %2266
  %3506 = fmul fast float %2268, %2266
  %3507 = fmul fast float %2269, %2266
  %3508 = fadd fast float %3505, %2249
  %3509 = fadd fast float %3506, %2250
  %3510 = fadd fast float %3507, %2251
  %3511 = fmul fast float %3472, 2.000000e+00
  %3512 = fmul fast float %3473, 2.000000e+00
  %3513 = fmul fast float %3474, 2.000000e+00
  %3514 = call float @dx.op.dot3.f32(i32 55, float %3511, float %3512, float %3513, float %3511, float %3512, float %3513)  ; Dot3(ax,ay,az,bx,by,bz)
  %3515 = fdiv fast float %3511, %3514
  %3516 = fdiv fast float %3512, %3514
  %3517 = fdiv fast float %3513, %3514
  %3518 = fsub fast float %2249, %3502
  %3519 = fsub fast float %2250, %3503
  %3520 = fsub fast float %2251, %3504
  %3521 = call float @dx.op.dot3.f32(i32 55, float %3518, float %3519, float %3520, float %3511, float %3512, float %3513)  ; Dot3(ax,ay,az,bx,by,bz)
  %3522 = fmul fast float %3521, %3515
  %3523 = fmul fast float %3521, %3516
  %3524 = fmul fast float %3521, %3517
  %3525 = fsub fast float %2249, %3522
  %3526 = fsub fast float %2250, %3523
  %3527 = fsub fast float %2251, %3524
  %3528 = fsub fast float %3508, %3502
  %3529 = fsub fast float %3509, %3503
  %3530 = fsub fast float %3510, %3504
  %3531 = call float @dx.op.dot3.f32(i32 55, float %3528, float %3529, float %3530, float %3511, float %3512, float %3513)  ; Dot3(ax,ay,az,bx,by,bz)
  %3532 = fmul fast float %3531, %3515
  %3533 = fmul fast float %3531, %3516
  %3534 = fmul fast float %3531, %3517
  %3535 = fsub fast float %3508, %3532
  %3536 = fsub fast float %3509, %3533
  %3537 = fsub fast float %3510, %3534
  %3538 = fsub fast float %3535, %3525
  %3539 = fsub fast float %3536, %3526
  %3540 = fsub fast float %3537, %3527
  %3541 = fsub fast float %3502, %3525
  %3542 = fsub fast float %3503, %3526
  %3543 = fsub fast float %3504, %3527
  %3544 = call float @dx.op.dot3.f32(i32 55, float %3541, float %3542, float %3543, float %3538, float %3539, float %3540)  ; Dot3(ax,ay,az,bx,by,bz)
  %3545 = call float @dx.op.dot3.f32(i32 55, float %3538, float %3539, float %3540, float %3538, float %3539, float %3540)  ; Dot3(ax,ay,az,bx,by,bz)
  %3546 = fdiv fast float %3544, %3545
  %3547 = fcmp fast une float %3525, %3535
  %3548 = fcmp fast une float %3526, %3536
  %3549 = fcmp fast une float %3527, %3537
  %3550 = or i1 %3547, %3548
  %3551 = or i1 %3549, %3550
  %3552 = select i1 %3551, float %3546, float 0.000000e+00
  %3553 = call float @dx.op.unary.f32(i32 7, float %3552)  ; Saturate(value)
  %3554 = fmul fast float %3553, %3505
  %3555 = fmul fast float %3553, %3506
  %3556 = fmul fast float %3553, %3507
  %3557 = fadd fast float %3518, %3554
  %3558 = fadd fast float %3519, %3555
  %3559 = fadd fast float %3520, %3556
  %3560 = call float @dx.op.dot3.f32(i32 55, float %3557, float %3558, float %3559, float %3511, float %3512, float %3513)  ; Dot3(ax,ay,az,bx,by,bz)
  %3561 = fdiv fast float %3560, %3514
  %3562 = call float @dx.op.unary.f32(i32 7, float %3561)  ; Saturate(value)
  %3563 = fmul fast float %3511, %3562
  %3564 = fmul fast float %3512, %3562
  %3565 = fmul fast float %3513, %3562
  %3566 = fadd fast float %3563, %3502
  %3567 = fadd fast float %3564, %3503
  %3568 = fadd fast float %3565, %3504
  %3569 = fmul fast float %3488, %3464
  %3570 = fmul fast float %3488, %3465
  %3571 = fmul fast float %3488, %3466
  %3572 = fadd fast float %3566, %3569
  %3573 = fadd fast float %3567, %3570
  %3574 = fadd fast float %3568, %3571
  %3575 = fsub fast float -0.000000e+00, %3487
  %3576 = fdiv fast float %3575, %3486
  %3577 = fmul fast float %3576, %3576
  %3578 = call float @dx.op.dot3.f32(i32 55, float %2267, float %2268, float %2269, float %3464, float %3465, float %3466)  ; Dot3(ax,ay,az,bx,by,bz)
  %3579 = fsub fast float %2249, %3572
  %3580 = fsub fast float %2250, %3573
  %3581 = fsub fast float %2251, %3574
  %3582 = call float @dx.op.dot3.f32(i32 55, float %3579, float %3580, float %3581, float %3464, float %3465, float %3466)  ; Dot3(ax,ay,az,bx,by,bz)
  %3583 = fsub fast float %3572, %2249
  %3584 = fsub fast float %3573, %2250
  %3585 = fsub fast float %3574, %2251
  %3586 = fmul fast float %3578, %3578
  %3587 = fsub fast float %3586, %3577
  %3588 = fmul fast float %3582, %3578
  %3589 = call float @dx.op.dot3.f32(i32 55, float %3583, float %3584, float %3585, float %2267, float %2268, float %2269)  ; Dot3(ax,ay,az,bx,by,bz)
  %3590 = fmul fast float %3589, %3577
  %3591 = fadd fast float %3590, %3588
  %3592 = fmul fast float %3591, 2.000000e+00
  %3593 = fmul fast float %3582, %3582
  %3594 = call float @dx.op.dot3.f32(i32 55, float %3583, float %3584, float %3585, float %3583, float %3584, float %3585)  ; Dot3(ax,ay,az,bx,by,bz)
  %3595 = fmul fast float %3594, %3577
  %3596 = fsub fast float %3593, %3595
  %3597 = fmul fast float %3592, %3592
  %3598 = fmul fast float %3587, 4.000000e+00
  %3599 = fmul fast float %3598, %3596
  %3600 = fsub fast float %3597, %3599
  %3601 = fcmp fast ogt float %3600, 0.000000e+00
  br i1 %3601, label %3602, label %3693, !dx.controlflow.hints !153

; <label>:3602                                    ; preds = %3501
  %3603 = call float @dx.op.unary.f32(i32 24, float %3600)  ; Sqrt(value)
  %3604 = fdiv fast float 5.000000e-01, %3587
  %3605 = fsub fast float -0.000000e+00, %3592
  %3606 = fsub fast float %3605, %3603
  %3607 = fmul fast float %3606, %3604
  %3608 = fsub fast float %3603, %3592
  %3609 = fmul fast float %3608, %3604
  %3610 = call float @dx.op.binary.f32(i32 35, float %3607, float %3609)  ; FMax(a,b)
  %3611 = call float @dx.op.binary.f32(i32 36, float %3607, float %3609)  ; FMin(a,b)
  %3612 = fsub fast float %3566, %2249
  %3613 = fsub fast float %3567, %2250
  %3614 = fsub fast float %3568, %2251
  %3615 = call float @dx.op.dot3.f32(i32 55, float %3612, float %3613, float %3614, float %3464, float %3465, float %3466)  ; Dot3(ax,ay,az,bx,by,bz)
  %3616 = fdiv fast float %3615, %3578
  %3617 = fcmp fast ogt float %3578, 0.000000e+00
  br i1 %3617, label %3618, label %3621, !dx.controlflow.hints !154

; <label>:3618                                    ; preds = %3602
  %3619 = call float @dx.op.binary.f32(i32 36, float %3611, float %3616)  ; FMin(a,b)
  %3620 = call float @dx.op.binary.f32(i32 36, float %3610, float %3616)  ; FMin(a,b)
  br label %3624

; <label>:3621                                    ; preds = %3602
  %3622 = call float @dx.op.binary.f32(i32 35, float %3611, float %3616)  ; FMax(a,b)
  %3623 = call float @dx.op.binary.f32(i32 35, float %3610, float %3616)  ; FMax(a,b)
  br label %3624

; <label>:3624                                    ; preds = %3621, %3618
  %3625 = phi float [ %3619, %3618 ], [ %3622, %3621 ]
  %3626 = phi float [ %3620, %3618 ], [ %3623, %3621 ]
  %3627 = fcmp fast oge float %3625, 0.000000e+00
  %3628 = fcmp fast olt float %3625, %2266
  %3629 = and i1 %3627, %3628
  %3630 = fcmp fast ogt float %3626, 0.000000e+00
  %3631 = fcmp fast ole float %3626, %2266
  %3632 = and i1 %3630, %3631
  %3633 = or i1 %3629, %3632
  br i1 %3633, label %3634, label %3693, !dx.controlflow.hints !155

; <label>:3634                                    ; preds = %3624
  %3635 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3625)  ; FMax(a,b)
  %3636 = call float @dx.op.binary.f32(i32 36, float %2266, float %3626)  ; FMin(a,b)
  br i1 %3617, label %3637, label %3659, !dx.controlflow.hints !156

; <label>:3637                                    ; preds = %3634
  %3638 = fmul fast float %3636, %2267
  %3639 = fmul fast float %3636, %2268
  %3640 = fmul fast float %3636, %2269
  %3641 = fsub fast float %3583, %3638
  %3642 = fsub fast float %3584, %3639
  %3643 = fsub fast float %3585, %3640
  %3644 = call float @dx.op.dot3.f32(i32 55, float %3641, float %3642, float %3643, float %3641, float %3642, float %3643)  ; Dot3(ax,ay,az,bx,by,bz)
  %3645 = call float @dx.op.unary.f32(i32 25, float %3644)  ; Rsqrt(value)
  %3646 = fmul fast float %3645, %3641
  %3647 = fmul fast float %3645, %3642
  %3648 = fmul fast float %3645, %3643
  %3649 = call float @dx.op.dot3.f32(i32 55, float %3646, float %3647, float %3648, float %3464, float %3465, float %3466)  ; Dot3(ax,ay,az,bx,by,bz)
  %3650 = fmul fast float %3649, %3486
  %3651 = fadd fast float %3650, %3487
  %3652 = fcmp fast olt float %3651, 0xBF1A36E2E0000000
  %3653 = select i1 %3652, float 0.000000e+00, float %3635
  %3654 = select i1 %3652, float %3635, float %3636
  %3655 = fsub fast float %3653, %3654
  %3656 = call float @dx.op.unary.f32(i32 6, float %3655)  ; FAbs(value)
  %3657 = fcmp fast olt float %3656, 0x3F1A36E2E0000000
  br i1 %3657, label %3658, label %3681, !dx.controlflow.hints !157

; <label>:3658                                    ; preds = %3637
  br label %3681

; <label>:3659                                    ; preds = %3634
  %3660 = fmul fast float %3635, %2267
  %3661 = fmul fast float %3635, %2268
  %3662 = fmul fast float %3635, %2269
  %3663 = fsub fast float %3583, %3660
  %3664 = fsub fast float %3584, %3661
  %3665 = fsub fast float %3585, %3662
  %3666 = call float @dx.op.dot3.f32(i32 55, float %3663, float %3664, float %3665, float %3663, float %3664, float %3665)  ; Dot3(ax,ay,az,bx,by,bz)
  %3667 = call float @dx.op.unary.f32(i32 25, float %3666)  ; Rsqrt(value)
  %3668 = fmul fast float %3667, %3663
  %3669 = fmul fast float %3667, %3664
  %3670 = fmul fast float %3667, %3665
  %3671 = call float @dx.op.dot3.f32(i32 55, float %3668, float %3669, float %3670, float %3464, float %3465, float %3466)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = fmul fast float %3671, %3486
  %3673 = fadd fast float %3672, %3487
  %3674 = fcmp fast olt float %3673, 0xBF1A36E2E0000000
  %3675 = select i1 %3674, float %3636, float %3635
  %3676 = select i1 %3674, float %2266, float %3636
  %3677 = fsub fast float %3675, %3676
  %3678 = call float @dx.op.unary.f32(i32 6, float %3677)  ; FAbs(value)
  %3679 = fcmp fast olt float %3678, 0x3F1A36E2E0000000
  br i1 %3679, label %3680, label %3681, !dx.controlflow.hints !158

; <label>:3680                                    ; preds = %3659
  br label %3681

; <label>:3681                                    ; preds = %3680, %3659, %3658, %3637
  %3682 = phi float [ 0.000000e+00, %3658 ], [ %3653, %3637 ], [ %3675, %3680 ], [ %3675, %3659 ]
  %3683 = phi float [ %3654, %3658 ], [ %3654, %3637 ], [ %2266, %3680 ], [ %3676, %3659 ]
  %3684 = fmul fast float %3682, %2267
  %3685 = fmul fast float %3682, %2268
  %3686 = fmul fast float %3682, %2269
  %3687 = fadd fast float %3684, %2249
  %3688 = fadd fast float %3685, %2250
  %3689 = fadd fast float %3686, %2251
  %3690 = fsub fast float %3683, %3682
  %3691 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3690)  ; FMax(a,b)
  %3692 = fmul fast float %3691, %3500
  br label %3693

; <label>:3693                                    ; preds = %3681, %3624, %3501, %3443
  %3694 = phi float [ %3572, %3681 ], [ %3572, %3624 ], [ %3572, %3501 ], [ %3480, %3443 ]
  %3695 = phi float [ %3573, %3681 ], [ %3573, %3624 ], [ %3573, %3501 ], [ %3481, %3443 ]
  %3696 = phi float [ %3574, %3681 ], [ %3574, %3624 ], [ %3574, %3501 ], [ %3482, %3443 ]
  %3697 = phi float [ %3687, %3681 ], [ %2249, %3624 ], [ %2249, %3501 ], [ %2249, %3443 ]
  %3698 = phi float [ %3688, %3681 ], [ %2250, %3624 ], [ %2250, %3501 ], [ %2250, %3443 ]
  %3699 = phi float [ %3689, %3681 ], [ %2251, %3624 ], [ %2251, %3501 ], [ %2251, %3443 ]
  %3700 = phi float [ %3691, %3681 ], [ %2266, %3624 ], [ %2266, %3501 ], [ %2266, %3443 ]
  %3701 = phi float [ %3692, %3681 ], [ 1.000000e+00, %3624 ], [ 1.000000e+00, %3501 ], [ 1.000000e+00, %3443 ]
  %3702 = fsub fast float %3694, %3697
  %3703 = fsub fast float %3695, %3698
  %3704 = fsub fast float %3696, %3699
  %3705 = call float @dx.op.dot3.f32(i32 55, float %3702, float %3703, float %3704, float %2267, float %2268, float %2269)  ; Dot3(ax,ay,az,bx,by,bz)
  %3706 = call float @dx.op.binary.f32(i32 35, float %3705, float 0.000000e+00)  ; FMax(a,b)
  %3707 = call float @dx.op.binary.f32(i32 36, float %3706, float %3700)  ; FMin(a,b)
  %3708 = fmul fast float %3707, %2267
  %3709 = fmul fast float %3707, %2268
  %3710 = fmul fast float %3707, %2269
  %3711 = fsub fast float %3697, %3694
  %3712 = fadd fast float %3711, %3708
  %3713 = fsub fast float %3698, %3695
  %3714 = fadd fast float %3713, %3709
  %3715 = fsub fast float %3699, %3696
  %3716 = fadd fast float %3715, %3710
  %3717 = fmul fast float %3712, %3712
  %3718 = fmul fast float %3714, %3714
  %3719 = fadd fast float %3717, %3718
  %3720 = fmul fast float %3716, %3716
  %3721 = fadd fast float %3719, %3720
  %3722 = call float @dx.op.unary.f32(i32 24, float %3721)  ; Sqrt(value)
  %3723 = fsub fast float -0.000000e+00, %3707
  %3724 = call float @dx.op.unary.f32(i32 6, float %3723)  ; FAbs(value)
  %3725 = fadd fast float %3724, 0x3DDB7CDFE0000000
  %3726 = fcmp fast oge float %3722, 0.000000e+00
  %3727 = fsub fast float -0.000000e+00, %3725
  %3728 = select i1 %3726, float %3727, float %3725
  %3729 = fadd fast float %3728, %3722
  %3730 = fsub fast float -0.000000e+00, %3722
  %3731 = select i1 %3726, float %3722, float %3730
  %3732 = fadd fast float %3725, %3731
  %3733 = fdiv fast float %3729, %3732
  %3734 = select i1 %3726, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %3735 = fmul fast float %3733, %3733
  %3736 = fmul fast float %3735, 0x3FC9205BC0000000
  %3737 = fadd fast float %3736, 0xBFEF6A1620000000
  %3738 = fmul fast float %3737, %3733
  %3739 = fadd fast float %3738, %3734
  %3740 = fcmp ole float %3707, -0.000000e+00
  %3741 = fsub fast float -0.000000e+00, %3739
  %3742 = select i1 %3740, float %3739, float %3741
  %3743 = fsub fast float %3700, %3707
  %3744 = call float @dx.op.unary.f32(i32 6, float %3743)  ; FAbs(value)
  %3745 = fadd fast float %3744, 0x3DDB7CDFE0000000
  %3746 = fsub fast float -0.000000e+00, %3745
  %3747 = select i1 %3726, float %3746, float %3745
  %3748 = fadd fast float %3747, %3722
  %3749 = fadd fast float %3745, %3731
  %3750 = fdiv fast float %3748, %3749
  %3751 = fmul fast float %3750, %3750
  %3752 = fmul fast float %3751, 0x3FC9205BC0000000
  %3753 = fadd fast float %3752, 0xBFEF6A1620000000
  %3754 = fmul fast float %3753, %3750
  %3755 = fadd fast float %3754, %3734
  %3756 = fcmp fast oge float %3743, 0.000000e+00
  %3757 = fsub fast float -0.000000e+00, %3755
  %3758 = select i1 %3756, float %3755, float %3757
  %3759 = fsub fast float %3758, %3742
  %3760 = fmul fast float %3759, %127
  %3761 = fadd fast float %3760, %3742
  %3762 = call float @dx.op.unary.f32(i32 14, float %3761)  ; Tan(value)
  %3763 = fmul fast float %3762, %3722
  %3764 = fadd fast float %3763, %3707
  %3765 = fmul fast float %3722, %3722
  %3766 = fmul fast float %3763, %3763
  %3767 = fadd fast float %3766, %3765
  %3768 = fmul fast float %3759, %3767
  %3769 = fdiv fast float %3722, %3768
  %3770 = fdiv fast float 1.000000e+00, %3769
  %3771 = fmul fast float %3701, %3500
  %3772 = fmul fast float %3771, %3770
  %3773 = fmul fast float %3764, %2267
  %3774 = fmul fast float %3764, %2268
  %3775 = fmul fast float %3764, %2269
  %3776 = fadd fast float %3773, %3697
  %3777 = fadd fast float %3774, %3698
  %3778 = fadd fast float %3775, %3699
  %3779 = call float @dx.op.dot3.f32(i32 55, float %3472, float %3473, float %3474, float %3472, float %3473, float %3474)  ; Dot3(ax,ay,az,bx,by,bz)
  %3780 = fsub fast float %3776, %3480
  %3781 = fsub fast float %3777, %3481
  %3782 = fsub fast float %3778, %3482
  %3783 = call float @dx.op.dot3.f32(i32 55, float %3780, float %3781, float %3782, float %3472, float %3473, float %3474)  ; Dot3(ax,ay,az,bx,by,bz)
  %3784 = fdiv fast float %3783, %3779
  %3785 = call float @dx.op.binary.f32(i32 35, float %3784, float -1.000000e+00)  ; FMax(a,b)
  %3786 = call float @dx.op.binary.f32(i32 36, float %3785, float 1.000000e+00)  ; FMin(a,b)
  %3787 = fmul fast float %3786, %3472
  %3788 = fmul fast float %3786, %3473
  %3789 = fmul fast float %3786, %3474
  %3790 = fadd fast float %3787, %3480
  %3791 = fadd fast float %3788, %3481
  %3792 = fadd fast float %3789, %3482
  %3793 = fsub fast float %3790, %3776
  %3794 = fsub fast float %3791, %3777
  %3795 = fsub fast float %3792, %3778
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3793, float %3794, float %3795, float %3793, float %3794, float %3795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = call float @dx.op.unary.f32(i32 24, float %3796)  ; Sqrt(value)
  %3798 = fdiv fast float 1.000000e+00, %3797
  %3799 = fmul fast float %3793, %3798
  %3800 = fmul fast float %3794, %3798
  %3801 = fmul fast float %3795, %3798
  %3802 = fadd fast float %3797, %3461
  %3803 = fdiv fast float 1.000000e+00, %3802
  %3804 = fmul float %3477, %3803
  %3805 = fmul float %3804, %3804
  %3806 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  br i1 %3499, label %3807, label %3831, !dx.controlflow.hints !159

; <label>:3807                                    ; preds = %3693
  %3808 = fmul fast float %3488, %3464
  %3809 = fmul fast float %3488, %3465
  %3810 = fmul fast float %3488, %3466
  %3811 = fsub fast float %3808, %3776
  %3812 = fadd fast float %3811, %3790
  %3813 = fsub fast float %3809, %3777
  %3814 = fadd fast float %3813, %3791
  %3815 = fsub fast float %3810, %3778
  %3816 = fadd fast float %3815, %3792
  %3817 = call float @dx.op.dot3.f32(i32 55, float %3812, float %3814, float %3816, float %3812, float %3814, float %3816)  ; Dot3(ax,ay,az,bx,by,bz)
  %3818 = call float @dx.op.unary.f32(i32 25, float %3817)  ; Rsqrt(value)
  %3819 = fmul fast float %3818, %3812
  %3820 = fmul fast float %3818, %3814
  %3821 = fmul fast float %3818, %3816
  %3822 = fsub fast float %3776, %3790
  %3823 = fsub fast float %3777, %3791
  %3824 = fsub fast float %3778, %3792
  %3825 = fsub fast float -0.000000e+00, %3822
  %3826 = fsub fast float -0.000000e+00, %3823
  %3827 = fsub fast float -0.000000e+00, %3824
  %3828 = call float @dx.op.dot3.f32(i32 55, float %3825, float %3826, float %3827, float %3464, float %3465, float %3466)  ; Dot3(ax,ay,az,bx,by,bz)
  %3829 = fcmp fast ogt float %3828, 0.000000e+00
  %3830 = uitofp i1 %3829 to float
  br label %3831

; <label>:3831                                    ; preds = %3807, %3693
  %3832 = phi float [ %3830, %3807 ], [ 1.000000e+00, %3693 ]
  %3833 = phi float [ %3819, %3807 ], [ %3799, %3693 ]
  %3834 = phi float [ %3820, %3807 ], [ %3800, %3693 ]
  %3835 = phi float [ %3821, %3807 ], [ %3801, %3693 ]
  %3836 = call float @dx.op.dot3.f32(i32 55, float %3464, float %3465, float %3466, float %3833, float %3834, float %3835)  ; Dot3(ax,ay,az,bx,by,bz)
  %3837 = fmul fast float %3836, %3836
  %3838 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3839 = fsub fast float 1.000000e+00, %3838
  %3840 = fmul fast float %3839, 5.000000e-01
  %3841 = fcmp fast ogt float %3836, 0.000000e+00
  %3842 = fsub fast float 1.000000e+00, %3840
  %3843 = select i1 %3841, float %3840, float %3842
  %3844 = fmul fast float %3843, %3496
  %3845 = fadd fast float %3844, %3494
  %3846 = fmul fast float %3845, 0x3EF0001000000000
  %3847 = fsub fast float %3790, %435
  %3848 = fsub fast float %3791, %436
  %3849 = fsub fast float %3792, %437
  %3850 = call float @dx.op.dot3.f32(i32 55, float %3847, float %3848, float %3849, float %3847, float %3848, float %3849)  ; Dot3(ax,ay,az,bx,by,bz)
  %3851 = fmul fast float %2219, %2219
  %3852 = fsub fast float %3850, %3851
  %3853 = fdiv fast float %3852, %3850
  %3854 = call float @dx.op.unary.f32(i32 24, float %3853)  ; Sqrt(value)
  %3855 = fsub fast float 1.000000e+00, %3854
  %3856 = fcmp fast olt float %3850, %3851
  %3857 = fmul fast float %3855, 2.560000e+02
  %3858 = select i1 %3856, float 2.560000e+02, float %3857
  %3859 = call float @dx.op.unary.f32(i32 23, float %3858)  ; Log(value)
  %3860 = call float @dx.op.binary.f32(i32 36, float %3859, float 7.000000e+00)  ; FMin(a,b)
  %3861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %3846, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %3860)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = fmul fast float %3836, %3486
  %3864 = fadd fast float %3863, %3487
  %3865 = call float @dx.op.unary.f32(i32 7, float %3864)  ; Saturate(value)
  %3866 = select i1 %3499, float 1.000000e+00, float %3865
  %3867 = select i1 %3499, float %3865, float 1.000000e+00
  %3868 = fmul fast float %3797, %3483
  %3869 = fsub fast float 1.000000e+00, %3868
  %3870 = fmul fast float %3869, %3489
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = fmul fast float %3871, %3867
  %3873 = fmul fast float %3872, 2.000000e+00
  %3874 = fsub fast float 3.000000e+00, %3873
  %3875 = fmul fast float %3862, %3832
  %3876 = fmul fast float %3872, %3872
  %3877 = fmul fast float %3876, %3875
  %3878 = fmul fast float %3877, %3874
  %3879 = call float @dx.op.binary.f32(i32 36, float %3878, float %3878)  ; FMin(a,b)
  %3880 = call float @dx.op.binary.f32(i32 36, float %3878, float %3879)  ; FMin(a,b)
  %3881 = fcmp fast ogt float %3880, 0.000000e+00
  br i1 %3881, label %3887, label %3882, !dx.controlflow.hints !160

; <label>:3882                                    ; preds = %4411, %3975, %3831
  %3883 = phi float [ %4444, %4411 ], [ %3445, %3975 ], [ %3445, %3831 ]
  %3884 = phi float [ %4445, %4411 ], [ %3446, %3975 ], [ %3446, %3831 ]
  %3885 = phi float [ %4446, %4411 ], [ %3447, %3975 ], [ %3447, %3831 ]
  %3886 = icmp eq i32 %3444, %3452
  br i1 %3886, label %4447, label %3443

; <label>:3887                                    ; preds = %3831
  %3888 = icmp eq i32 %3497, 255
  br i1 %3888, label %3975, label %3889, !dx.controlflow.hints !161

; <label>:3889                                    ; preds = %3887
  %3890 = mul nuw nsw i32 %3497, 176
  %3891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.f32 %3891, 0
  %3893 = extractvalue %dx.types.ResRet.f32 %3891, 1
  %3894 = extractvalue %dx.types.ResRet.f32 %3891, 2
  %3895 = extractvalue %dx.types.ResRet.f32 %3891, 3
  %3896 = add nuw nsw i32 %3890, 16
  %3897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = add nuw nsw i32 %3890, 32
  %3901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3904 = add nuw nsw i32 %3890, 48
  %3905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3904, i32 undef)  ; BufferLoad(srv,index,wot)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 0
  %3907 = extractvalue %dx.types.ResRet.f32 %3905, 1
  %3908 = extractvalue %dx.types.ResRet.f32 %3905, 2
  %3909 = extractvalue %dx.types.ResRet.f32 %3905, 3
  %3910 = add nuw nsw i32 %3890, 64
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = extractvalue %dx.types.ResRet.f32 %3911, 3
  %3916 = add nuw nsw i32 %3890, 80
  %3917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3917, 2
  %3921 = extractvalue %dx.types.ResRet.f32 %3917, 3
  %3922 = add nuw nsw i32 %3890, 96
  %3923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.f32 %3923, 0
  %3925 = extractvalue %dx.types.ResRet.f32 %3923, 1
  %3926 = extractvalue %dx.types.ResRet.f32 %3923, 2
  %3927 = extractvalue %dx.types.ResRet.f32 %3923, 3
  %3928 = bitcast float %3899 to i32
  %3929 = fmul fast float %3903, %3799
  %3930 = fmul fast float %3903, %3800
  %3931 = fmul fast float %3903, %3801
  %3932 = fsub fast float %3776, %3929
  %3933 = fsub fast float %3777, %3930
  %3934 = fsub fast float %3778, %3931
  %3935 = fmul fast float %3932, %3906
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %3912, float %3935)  ; FMad(a,b,c)
  %3937 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3918, float %3936)  ; FMad(a,b,c)
  %3938 = fadd fast float %3937, %3924
  %3939 = fmul fast float %3932, %3907
  %3940 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %3913, float %3939)  ; FMad(a,b,c)
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3919, float %3940)  ; FMad(a,b,c)
  %3942 = fadd fast float %3941, %3925
  %3943 = fmul fast float %3932, %3908
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %3914, float %3943)  ; FMad(a,b,c)
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3920, float %3944)  ; FMad(a,b,c)
  %3946 = fadd fast float %3945, %3926
  %3947 = fmul fast float %3932, %3909
  %3948 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %3915, float %3947)  ; FMad(a,b,c)
  %3949 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3921, float %3948)  ; FMad(a,b,c)
  %3950 = fadd fast float %3949, %3927
  %3951 = fdiv fast float %3938, %3950
  %3952 = fdiv fast float %3942, %3950
  %3953 = fdiv fast float %3946, %3950
  %3954 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3953)  ; FMax(a,b)
  %3955 = fmul fast float %3894, 5.000000e-01
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3955, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %3957 = fadd fast float %3956, %3951
  %3958 = fadd fast float %3952, %3955
  %3959 = fmul fast float %3957, %3898
  %3960 = fmul fast float %3958, %3898
  %3961 = call float @dx.op.binary.f32(i32 35, float %3959, float %3894)  ; FMax(a,b)
  %3962 = call float @dx.op.binary.f32(i32 35, float %3960, float %3894)  ; FMax(a,b)
  %3963 = call float @dx.op.binary.f32(i32 36, float %3961, float %3895)  ; FMin(a,b)
  %3964 = call float @dx.op.binary.f32(i32 36, float %3962, float %3895)  ; FMin(a,b)
  %3965 = fadd fast float %3963, %3892
  %3966 = fadd fast float %3964, %3893
  %3967 = uitofp i32 %3928 to float
  %3968 = fadd fast float %3954, %3902
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %3965, float %3966, float %3967, float undef, i32 0, i32 0, i32 undef, float %3968)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = fadd fast float %3970, -1.000000e+00
  %3972 = fmul fast float %3971, %3866
  %3973 = fadd fast float %3972, 1.000000e+00
  %3974 = fmul fast float %3973, %3878
  br label %3975

; <label>:3975                                    ; preds = %3889, %3887
  %3976 = phi float [ %3974, %3889 ], [ %3878, %3887 ]
  %3977 = call float @dx.op.binary.f32(i32 36, float %3976, float %3976)  ; FMin(a,b)
  %3978 = call float @dx.op.binary.f32(i32 36, float %3976, float %3977)  ; FMin(a,b)
  %3979 = fcmp fast ogt float %3978, 0.000000e+00
  br i1 %3979, label %3980, label %3882, !dx.controlflow.hints !162

; <label>:3980                                    ; preds = %3975
  br i1 %254, label %3981, label %4411, !dx.controlflow.hints !147

; <label>:3981                                    ; preds = %3980
  %3982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.i32 %3982, 0
  %3984 = and i32 %3983, 64
  %3985 = icmp ne i32 %3984, 0
  %3986 = fsub fast float %3482, %2270
  %3987 = fcmp fast ogt float %3986, 0.000000e+00
  %3988 = fsub fast float %205, %243
  %3989 = fcmp fast ogt float %3988, 0.000000e+00
  %3990 = xor i1 %3989, %3987
  %3991 = fsub fast float %2270, %3482
  %3992 = fmul fast float %3991, 2.000000e+00
  %3993 = fadd fast float %3992, %3482
  %3994 = select i1 %3990, float %3482, float %3993
  %3995 = fsub fast float %3480, %2224
  %3996 = fsub fast float %3481, %2225
  %3997 = fsub fast float %3994, %2226
  %3998 = call float @dx.op.dot3.f32(i32 55, float %3995, float %3996, float %3997, float %3995, float %3996, float %3997)  ; Dot3(ax,ay,az,bx,by,bz)
  %3999 = call float @dx.op.unary.f32(i32 25, float %3998)  ; Rsqrt(value)
  %4000 = fmul fast float %3999, %3995
  %4001 = fmul fast float %3999, %3996
  %4002 = fmul fast float %3999, %3997
  %4003 = fsub fast float %243, %205
  %4004 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4003)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4000, float %4001, float %4002)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = fdiv fast float 1.000000e+00, %4005
  %4007 = fmul fast float %4006, %4004
  %4008 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3988, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = fcmp fast ogt float %4008, 0.000000e+00
  %4010 = fcmp fast olt float %4008, 0.000000e+00
  %4011 = zext i1 %4009 to i32
  %4012 = zext i1 %4010 to i32
  %4013 = sub nsw i32 %4011, %4012
  %4014 = sitofp i32 %4013 to float
  %4015 = fsub fast float %3994, %2270
  %4016 = call float @dx.op.dot3.f32(i32 55, float %3995, float %3996, float %4015, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4017 = fcmp fast ogt float %4016, 0.000000e+00
  %4018 = fcmp fast olt float %4016, 0.000000e+00
  %4019 = zext i1 %4017 to i32
  %4020 = zext i1 %4018 to i32
  %4021 = sub nsw i32 %4019, %4020
  %4022 = sitofp i32 %4021 to float
  %4023 = fcmp fast une float %4014, %4022
  br i1 %4023, label %4024, label %4034, !dx.controlflow.hints !148

; <label>:4024                                    ; preds = %3981
  %4025 = fmul fast float %4007, %4002
  %4026 = fmul fast float %4007, %4001
  %4027 = fmul fast float %4007, %4000
  %4028 = fmul fast float %4027, %4027
  %4029 = fmul fast float %4026, %4026
  %4030 = fadd fast float %4028, %4029
  %4031 = fmul fast float %4025, %4025
  %4032 = fadd fast float %4030, %4031
  %4033 = call float @dx.op.unary.f32(i32 24, float %4032)  ; Sqrt(value)
  br label %4046

; <label>:4034                                    ; preds = %3981
  %4035 = icmp slt i32 %4013, 0
  br i1 %4035, label %4036, label %4046, !dx.controlflow.hints !149

; <label>:4036                                    ; preds = %4034
  %4037 = fsub fast float %2224, %3480
  %4038 = fsub fast float %2225, %3481
  %4039 = fsub fast float %2226, %3994
  %4040 = fmul fast float %4037, %4037
  %4041 = fmul fast float %4038, %4038
  %4042 = fadd fast float %4040, %4041
  %4043 = fmul fast float %4039, %4039
  %4044 = fadd fast float %4042, %4043
  %4045 = call float @dx.op.unary.f32(i32 24, float %4044)  ; Sqrt(value)
  br label %4046

; <label>:4046                                    ; preds = %4036, %4034, %4024
  %4047 = phi float [ %4033, %4024 ], [ %4045, %4036 ], [ 0.000000e+00, %4034 ]
  %4048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.i32 %4048, 1
  %4050 = icmp ne i32 %4049, 0
  %4051 = and i1 %3990, %4050
  %4052 = call float @dx.op.dot3.f32(i32 55, float %4000, float %4001, float %4002, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4053 = fmul fast float %4052, %4052
  %4054 = fsub fast float 1.000000e+00, %4053
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.CBufRet.f32 %4055, 1
  %4058 = extractvalue %dx.types.CBufRet.f32 %4055, 2
  %4059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4059, 0
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4059, 1
  %4066 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4067 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4068 = extractvalue %dx.types.CBufRet.f32 %4059, 3
  %4069 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4070 = extractvalue %dx.types.CBufRet.f32 %4063, 3
  %4071 = fadd fast float %4056, %2224
  %4072 = fadd fast float %4057, %2225
  %4073 = fadd fast float %4058, %2226
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4078 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  br i1 %4051, label %4079, label %4272, !dx.controlflow.hints !150

; <label>:4079                                    ; preds = %4046
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 0
  %4082 = fmul fast float %4081, %4081
  %4083 = fmul fast float %4082, %4054
  %4084 = fsub fast float 1.000000e+00, %4083
  %4085 = fcmp fast oge float %4084, 0.000000e+00
  %4086 = fmul fast float %4081, %4000
  %4087 = fmul fast float %4081, %4001
  %4088 = fmul fast float %4081, %4002
  %4089 = call float @dx.op.unary.f32(i32 24, float %4084)  ; Sqrt(value)
  %4090 = fmul fast float %4081, %4052
  %4091 = fsub fast float -0.000000e+00, %4089
  %4092 = fsub fast float %4091, %4090
  %4093 = fadd fast float %4092, %4088
  %4094 = select i1 %4085, float %4086, float 0.000000e+00
  %4095 = select i1 %4085, float %4087, float 0.000000e+00
  %4096 = select i1 %4085, float %4093, float 0.000000e+00
  %4097 = fmul fast float %4094, %4047
  %4098 = fmul fast float %4095, %4047
  %4099 = fmul fast float %4096, %4047
  %4100 = fadd fast float %4071, %4097
  %4101 = fadd fast float %4100, %4068
  %4102 = fadd fast float %4072, %4098
  %4103 = fadd fast float %4102, %4069
  %4104 = fadd fast float %4073, %4099
  %4105 = fadd fast float %4104, %4070
  %4106 = fmul fast float %4101, %4060
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4062, float %4106)  ; FMad(a,b,c)
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4064, float %4107)  ; FMad(a,b,c)
  %4109 = fmul fast float %4101, %4065
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4066, float %4109)  ; FMad(a,b,c)
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4067, float %4110)  ; FMad(a,b,c)
  %4112 = fsub fast float %4108, %4068
  %4113 = fsub fast float %4112, %4075
  %4114 = fadd fast float %4113, %4077
  %4115 = fsub fast float %4111, %4069
  %4116 = fsub fast float %4115, %4076
  %4117 = fadd fast float %4116, %4077
  %4118 = fmul fast float %4114, %4078
  %4119 = fmul fast float %4117, %4078
  %4120 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4121 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4122 = fsub fast float 1.000000e+00, %4120
  %4123 = fsub fast float 1.000000e+00, %4121
  %4124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %45, float %4122, float %4123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = fmul fast float %4125, 0x3FBC5ABC00000000
  %4127 = extractvalue %dx.types.CBufRet.f32 %4080, 1
  %4128 = fmul fast float %4127, %4127
  %4129 = fmul fast float %4128, %4054
  %4130 = fsub fast float 1.000000e+00, %4129
  %4131 = fcmp fast oge float %4130, 0.000000e+00
  %4132 = fmul fast float %4127, %4000
  %4133 = fmul fast float %4127, %4001
  %4134 = fmul fast float %4127, %4002
  %4135 = call float @dx.op.unary.f32(i32 24, float %4130)  ; Sqrt(value)
  %4136 = fmul fast float %4127, %4052
  %4137 = fsub fast float -0.000000e+00, %4135
  %4138 = fsub fast float %4137, %4136
  %4139 = fadd fast float %4138, %4134
  %4140 = select i1 %4131, float %4132, float 0.000000e+00
  %4141 = select i1 %4131, float %4133, float 0.000000e+00
  %4142 = select i1 %4131, float %4139, float 0.000000e+00
  %4143 = fmul fast float %4140, %4047
  %4144 = fmul fast float %4141, %4047
  %4145 = fmul fast float %4142, %4047
  %4146 = fadd fast float %4071, %4143
  %4147 = fadd fast float %4146, %4068
  %4148 = fadd fast float %4072, %4144
  %4149 = fadd fast float %4148, %4069
  %4150 = fadd fast float %4073, %4145
  %4151 = fadd fast float %4150, %4070
  %4152 = fmul fast float %4147, %4060
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %4149, float %4062, float %4152)  ; FMad(a,b,c)
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %4064, float %4153)  ; FMad(a,b,c)
  %4155 = fmul fast float %4147, %4065
  %4156 = call float @dx.op.tertiary.f32(i32 46, float %4149, float %4066, float %4155)  ; FMad(a,b,c)
  %4157 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %4067, float %4156)  ; FMad(a,b,c)
  %4158 = fsub fast float %4154, %4068
  %4159 = fsub fast float %4158, %4075
  %4160 = fadd fast float %4159, %4077
  %4161 = fsub fast float %4157, %4069
  %4162 = fsub fast float %4161, %4076
  %4163 = fadd fast float %4162, %4077
  %4164 = fmul fast float %4160, %4078
  %4165 = fmul fast float %4163, %4078
  %4166 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4167 = call float @dx.op.unary.f32(i32 7, float %4165)  ; Saturate(value)
  %4168 = fsub fast float 1.000000e+00, %4166
  %4169 = fsub fast float 1.000000e+00, %4167
  %4170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %45, float %4168, float %4169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = fmul fast float %4171, 0x3F9E4BBD60000000
  %4173 = extractvalue %dx.types.CBufRet.f32 %4080, 2
  %4174 = fmul fast float %4173, %4173
  %4175 = fmul fast float %4174, %4054
  %4176 = fsub fast float 1.000000e+00, %4175
  %4177 = fcmp fast oge float %4176, 0.000000e+00
  %4178 = fmul fast float %4173, %4000
  %4179 = fmul fast float %4173, %4001
  %4180 = fmul fast float %4173, %4002
  %4181 = call float @dx.op.unary.f32(i32 24, float %4176)  ; Sqrt(value)
  %4182 = fmul fast float %4173, %4052
  %4183 = fsub fast float -0.000000e+00, %4181
  %4184 = fsub fast float %4183, %4182
  %4185 = fadd fast float %4184, %4180
  %4186 = select i1 %4177, float %4178, float 0.000000e+00
  %4187 = select i1 %4177, float %4179, float 0.000000e+00
  %4188 = select i1 %4177, float %4185, float 0.000000e+00
  %4189 = fmul fast float %4186, %4047
  %4190 = fmul fast float %4187, %4047
  %4191 = fmul fast float %4188, %4047
  %4192 = fadd fast float %4071, %4189
  %4193 = fadd fast float %4192, %4068
  %4194 = fadd fast float %4072, %4190
  %4195 = fadd fast float %4194, %4069
  %4196 = fadd fast float %4073, %4191
  %4197 = fadd fast float %4196, %4070
  %4198 = fmul fast float %4193, %4060
  %4199 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4062, float %4198)  ; FMad(a,b,c)
  %4200 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4064, float %4199)  ; FMad(a,b,c)
  %4201 = fmul fast float %4193, %4065
  %4202 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4066, float %4201)  ; FMad(a,b,c)
  %4203 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4067, float %4202)  ; FMad(a,b,c)
  %4204 = fsub fast float %4200, %4068
  %4205 = fsub fast float %4204, %4075
  %4206 = fadd fast float %4205, %4077
  %4207 = fsub fast float %4203, %4069
  %4208 = fsub fast float %4207, %4076
  %4209 = fadd fast float %4208, %4077
  %4210 = fmul fast float %4206, %4078
  %4211 = fmul fast float %4209, %4078
  %4212 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4213 = call float @dx.op.unary.f32(i32 7, float %4211)  ; Saturate(value)
  %4214 = fsub fast float 1.000000e+00, %4212
  %4215 = fsub fast float 1.000000e+00, %4213
  %4216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %45, float %4214, float %4215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = fmul fast float %4217, 0x3FDDEACB00000000
  %4219 = fadd fast float %4218, %4172
  %4220 = extractvalue %dx.types.CBufRet.f32 %4080, 3
  %4221 = fmul fast float %4220, %4220
  %4222 = fmul fast float %4221, %4054
  %4223 = fsub fast float 1.000000e+00, %4222
  %4224 = fcmp fast oge float %4223, 0.000000e+00
  %4225 = fmul fast float %4220, %4000
  %4226 = fmul fast float %4220, %4001
  %4227 = fmul fast float %4220, %4002
  %4228 = call float @dx.op.unary.f32(i32 24, float %4223)  ; Sqrt(value)
  %4229 = fmul fast float %4220, %4052
  %4230 = fsub fast float -0.000000e+00, %4228
  %4231 = fsub fast float %4230, %4229
  %4232 = fadd fast float %4231, %4227
  %4233 = select i1 %4224, float %4225, float 0.000000e+00
  %4234 = select i1 %4224, float %4226, float 0.000000e+00
  %4235 = select i1 %4224, float %4232, float 0.000000e+00
  %4236 = fmul fast float %4233, %4047
  %4237 = fmul fast float %4234, %4047
  %4238 = fmul fast float %4235, %4047
  %4239 = fadd fast float %4071, %4236
  %4240 = fadd fast float %4239, %4068
  %4241 = fadd fast float %4072, %4237
  %4242 = fadd fast float %4241, %4069
  %4243 = fadd fast float %4073, %4238
  %4244 = fadd fast float %4243, %4070
  %4245 = fmul fast float %4240, %4060
  %4246 = call float @dx.op.tertiary.f32(i32 46, float %4242, float %4062, float %4245)  ; FMad(a,b,c)
  %4247 = call float @dx.op.tertiary.f32(i32 46, float %4244, float %4064, float %4246)  ; FMad(a,b,c)
  %4248 = fmul fast float %4240, %4065
  %4249 = call float @dx.op.tertiary.f32(i32 46, float %4242, float %4066, float %4248)  ; FMad(a,b,c)
  %4250 = call float @dx.op.tertiary.f32(i32 46, float %4244, float %4067, float %4249)  ; FMad(a,b,c)
  %4251 = fsub fast float %4247, %4068
  %4252 = fsub fast float %4251, %4075
  %4253 = fadd fast float %4252, %4077
  %4254 = fsub fast float %4250, %4069
  %4255 = fsub fast float %4254, %4076
  %4256 = fadd fast float %4255, %4077
  %4257 = fmul fast float %4253, %4078
  %4258 = fmul fast float %4256, %4078
  %4259 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4260 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4261 = fsub fast float 1.000000e+00, %4259
  %4262 = fsub fast float 1.000000e+00, %4260
  %4263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %45, float %4261, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = fmul fast float %4264, 0x3FE0183CA0000000
  %4266 = fmul fast float %4264, 0x3FB51033E0000000
  %4267 = fadd fast float %4219, %4265
  %4268 = fadd fast float %4217, %4171
  %4269 = fmul fast float %4268, 0x3FD9D2A200000000
  %4270 = fadd fast float %4266, %4126
  %4271 = fadd fast float %4270, %4269
  br label %4318

; <label>:4272                                    ; preds = %4046
  %4273 = fmul fast float %4054, 0x3FE2024E20000000
  %4274 = fsub fast float 1.000000e+00, %4273
  %4275 = fcmp fast oge float %4274, 0.000000e+00
  %4276 = fmul fast float %4000, 0x3FE8018960000000
  %4277 = fmul fast float %4001, 0x3FE8018960000000
  %4278 = fmul fast float %4002, 0x3FE8018960000000
  %4279 = call float @dx.op.unary.f32(i32 24, float %4274)  ; Sqrt(value)
  %4280 = fmul fast float %4052, 0x3FE8018960000000
  %4281 = fsub fast float %4278, %4279
  %4282 = fsub fast float %4281, %4280
  %4283 = select i1 %4275, float %4276, float 0.000000e+00
  %4284 = select i1 %4275, float %4277, float 0.000000e+00
  %4285 = select i1 %4275, float %4282, float 0.000000e+00
  %4286 = select i1 %3990, float %4283, float %4000
  %4287 = select i1 %3990, float %4284, float %4001
  %4288 = select i1 %3990, float %4285, float %4002
  %4289 = fmul fast float %4286, %4047
  %4290 = fmul fast float %4287, %4047
  %4291 = fmul fast float %4288, %4047
  %4292 = fadd fast float %4071, %4289
  %4293 = fadd fast float %4292, %4068
  %4294 = fadd fast float %4072, %4290
  %4295 = fadd fast float %4294, %4069
  %4296 = fadd fast float %4073, %4291
  %4297 = fadd fast float %4296, %4070
  %4298 = fmul fast float %4293, %4060
  %4299 = call float @dx.op.tertiary.f32(i32 46, float %4295, float %4062, float %4298)  ; FMad(a,b,c)
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4297, float %4064, float %4299)  ; FMad(a,b,c)
  %4301 = fmul fast float %4293, %4065
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4295, float %4066, float %4301)  ; FMad(a,b,c)
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4297, float %4067, float %4302)  ; FMad(a,b,c)
  %4304 = fsub fast float %4300, %4068
  %4305 = fsub fast float %4304, %4075
  %4306 = fadd fast float %4305, %4077
  %4307 = fsub fast float %4303, %4069
  %4308 = fsub fast float %4307, %4076
  %4309 = fadd fast float %4308, %4077
  %4310 = fmul fast float %4306, %4078
  %4311 = fmul fast float %4309, %4078
  %4312 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4313 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4314 = fsub fast float 1.000000e+00, %4312
  %4315 = fsub fast float 1.000000e+00, %4313
  %4316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %45, float %4314, float %4315, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4317 = extractvalue %dx.types.ResRet.f32 %4316, 0
  br label %4318

; <label>:4318                                    ; preds = %4272, %4079
  %4319 = phi float [ %4317, %4272 ], [ %4267, %4079 ]
  %4320 = phi float [ %4317, %4272 ], [ %4271, %4079 ]
  %4321 = phi float [ %4317, %4272 ], [ %4125, %4079 ]
  %4322 = fmul fast float %3995, %3995
  %4323 = fmul fast float %3996, %3996
  %4324 = fadd fast float %4322, %4323
  %4325 = fmul fast float %3997, %3997
  %4326 = fadd fast float %4324, %4325
  %4327 = call float @dx.op.unary.f32(i32 24, float %4326)  ; Sqrt(value)
  %4328 = fsub fast float %2224, %3480
  %4329 = fsub fast float %2225, %3481
  %4330 = fsub fast float %2226, %3482
  %4331 = fmul fast float %4328, %4328
  %4332 = fmul fast float %4329, %4329
  %4333 = fadd fast float %4331, %4332
  %4334 = fmul fast float %4330, %4330
  %4335 = fadd fast float %4333, %4334
  %4336 = call float @dx.op.unary.f32(i32 24, float %4335)  ; Sqrt(value)
  %4337 = fsub fast float %4327, %4336
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 0
  %4340 = call float @dx.op.unary.f32(i32 6, float %4339)  ; FAbs(value)
  %4341 = fmul fast float %4336, %4336
  %4342 = fmul fast float %4341, %4340
  %4343 = fmul fast float %4337, %4337
  %4344 = fadd fast float %4343, %4341
  %4345 = fdiv fast float %4342, %4344
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = and i1 %3989, %3987
  %4348 = fsub fast float -0.000000e+00, %4047
  %4349 = select i1 %4347, float -0.000000e+00, float %4348
  %4350 = fmul fast float %1227, 0x3FF7154760000000
  %4351 = fmul fast float %4350, %4349
  %4352 = fmul fast float %1228, 0x3FF7154760000000
  %4353 = fmul fast float %4352, %4349
  %4354 = fmul fast float %1229, 0x3FF7154760000000
  %4355 = fmul fast float %4354, %4349
  %4356 = call float @dx.op.unary.f32(i32 21, float %4351)  ; Exp(value)
  %4357 = call float @dx.op.unary.f32(i32 21, float %4353)  ; Exp(value)
  %4358 = call float @dx.op.unary.f32(i32 21, float %4355)  ; Exp(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4362 = call float @dx.op.unary.f32(i32 6, float %4052)  ; FAbs(value)
  %4363 = fsub fast float 1.000000e+00, %4362
  %4364 = bitcast float %4363 to i32
  %4365 = sitofp i32 %4364 to float
  %4366 = fptosi float %4365 to i32
  %4367 = bitcast i32 %4366 to float
  %4368 = fmul fast float %4367, 0x3FEF333340000000
  %4369 = fadd fast float %4368, 0x3F999999A0000000
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = fsub fast float 1.000000e+00, %4370
  %4372 = fadd fast float %4319, 1.000000e+00
  %4373 = fadd fast float %4320, 1.000000e+00
  %4374 = fadd fast float %4321, 1.000000e+00
  %4375 = fmul fast float %4359, %4372
  %4376 = fmul fast float %4360, %4373
  %4377 = fmul fast float %4361, %4374
  %4378 = fmul fast float %4375, %4371
  %4379 = fmul fast float %4376, %4371
  %4380 = fmul fast float %4377, %4371
  %4381 = fmul fast float %4346, %4372
  %4382 = fmul fast float %4381, %4359
  %4383 = fmul fast float %4382, %4370
  %4384 = fmul fast float %4346, %4373
  %4385 = fmul fast float %4384, %4360
  %4386 = fmul fast float %4385, %4370
  %4387 = fmul fast float %4346, %4374
  %4388 = fmul fast float %4387, %4361
  %4389 = fmul fast float %4388, %4370
  %4390 = fadd fast float %4383, %4359
  %4391 = fadd fast float %4386, %4360
  %4392 = fadd fast float %4389, %4361
  %4393 = call float @dx.op.unary.f32(i32 6, float %3988)  ; FAbs(value)
  %4394 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4395 = select i1 %3990, float %4378, float %4390
  %4396 = select i1 %3990, float %4379, float %4391
  %4397 = select i1 %3990, float %4380, float %4392
  %4398 = select i1 %3985, float %4394, float 0.000000e+00
  %4399 = fsub fast float %4395, %4359
  %4400 = fsub fast float %4396, %4360
  %4401 = fsub fast float %4397, %4361
  %4402 = fmul fast float %4399, %4398
  %4403 = fmul fast float %4400, %4398
  %4404 = fmul fast float %4401, %4398
  %4405 = fadd fast float %4402, %4359
  %4406 = fadd fast float %4403, %4360
  %4407 = fadd fast float %4404, %4361
  %4408 = fmul fast float %4405, %3456
  %4409 = fmul fast float %4406, %3457
  %4410 = fmul fast float %4407, %3458
  br label %4411

; <label>:4411                                    ; preds = %4318, %3980
  %4412 = phi float [ %4408, %4318 ], [ %3456, %3980 ]
  %4413 = phi float [ %4409, %4318 ], [ %3457, %3980 ]
  %4414 = phi float [ %4410, %4318 ], [ %3458, %3980 ]
  %4415 = call float @dx.op.dot3.f32(i32 55, float %3799, float %3800, float %3801, float %216, float %217, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %4416 = fcmp fast ogt float %2212, 0.000000e+00
  %4417 = select i1 %4416, float 1.000000e+00, float -1.000000e+00
  %4418 = fmul fast float %127, 7.812500e-03
  %4419 = fmul fast float %127, 3.125000e-02
  %4420 = fadd fast float %4419, -3.125000e-02
  %4421 = fmul fast float %4417, 5.000000e-01
  %4422 = fmul fast float %4421, %4415
  %4423 = fmul fast float %4417, %2212
  %4424 = fadd fast float %4418, 4.921875e-01
  %4425 = fadd fast float %4424, %4422
  %4426 = fadd fast float %4418, 0x3FB25F3060000000
  %4427 = fadd fast float %4420, %4423
  %4428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %4425, float %4426, float %4427, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 1
  %4432 = extractvalue %dx.types.CBufRet.f32 %4430, 2
  %4433 = select i1 %3499, float %4431, float %4432
  %4434 = fmul fast float %3806, 0x400921FB60000000
  %4435 = fmul fast float %4434, %3976
  %4436 = fmul fast float %4435, %4429
  %4437 = fmul fast float %4436, %4433
  %4438 = fmul fast float %4412, %3772
  %4439 = fmul fast float %4438, %4437
  %4440 = fmul fast float %4413, %3772
  %4441 = fmul fast float %4440, %4437
  %4442 = fmul fast float %4414, %3772
  %4443 = fmul fast float %4442, %4437
  %4444 = fadd fast float %4439, %3445
  %4445 = fadd fast float %4441, %3446
  %4446 = fadd fast float %4443, %3447
  br label %3882

; <label>:4447                                    ; preds = %3882
  br label %4448

; <label>:4448                                    ; preds = %4447, %3430
  %4449 = phi float [ %3432, %3430 ], [ %3883, %4447 ]
  %4450 = phi float [ %3433, %3430 ], [ %3884, %4447 ]
  %4451 = phi float [ %3434, %3430 ], [ %3885, %4447 ]
  %4452 = add i32 %3431, 1
  %4453 = icmp ugt i32 %4452, %3429
  br i1 %4453, label %4454, label %3430

; <label>:4454                                    ; preds = %4448
  br label %4455

; <label>:4455                                    ; preds = %4454, %3420
  %4456 = phi float [ %3421, %3420 ], [ %4449, %4454 ]
  %4457 = phi float [ %3422, %3420 ], [ %4450, %4454 ]
  %4458 = phi float [ %3423, %3420 ], [ %4451, %4454 ]
  %4459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %152, float %153, float %154, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4460 = extractvalue %dx.types.ResRet.f32 %4459, 0
  %4461 = extractvalue %dx.types.ResRet.f32 %4459, 1
  %4462 = extractvalue %dx.types.ResRet.f32 %4459, 2
  %4463 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %4460)  ; IsNaN(value)
  %4464 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %4461)  ; IsNaN(value)
  %4465 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %4462)  ; IsNaN(value)
  %4466 = or i1 %4463, %4464
  %4467 = or i1 %4466, %4465
  %4468 = select i1 %4467, float 0.000000e+00, float %4460
  %4469 = select i1 %4467, float 0.000000e+00, float %4461
  %4470 = select i1 %4467, float 0.000000e+00, float %4462
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4473 = fmul fast float %4468, %4472
  %4474 = fmul fast float %4469, %4472
  %4475 = fmul fast float %4470, %4472
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4478 = fmul fast float %4473, %4477
  %4479 = fmul fast float %4474, %4477
  %4480 = fmul fast float %4475, %4477
  %4481 = fadd fast float %4478, %4456
  %4482 = fadd fast float %4479, %4457
  %4483 = fadd fast float %4480, %4458
  br label %4484

; <label>:4484                                    ; preds = %4455, %2200
  %4485 = phi float [ %2209, %4455 ], [ %2201, %2200 ]
  %4486 = phi float [ %2210, %4455 ], [ %2202, %2200 ]
  %4487 = phi float [ %2211, %4455 ], [ %2203, %2200 ]
  %4488 = phi float [ %4481, %4455 ], [ 0.000000e+00, %2200 ]
  %4489 = phi float [ %4482, %4455 ], [ 0.000000e+00, %2200 ]
  %4490 = phi float [ %4483, %4455 ], [ 0.000000e+00, %2200 ]
  %4491 = fmul fast float %4485, %2205
  %4492 = fmul fast float %4486, %2205
  %4493 = fmul fast float %4487, %2205
  %4494 = select i1 %254, float %1227, float %2205
  %4495 = select i1 %254, float %1228, float %2205
  %4496 = select i1 %254, float %1229, float %2205
  %4497 = fmul fast float %4491, %4488
  %4498 = fmul fast float %4492, %4489
  %4499 = fmul fast float %4493, %4490
  %4500 = xor i1 %257, true
  %4501 = and i1 %89, %4500
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4504, 0
  %4506 = select i1 %221, float %4503, float %4505
  %4507 = fmul fast float %4497, %4506
  %4508 = fmul fast float %4498, %4506
  %4509 = fmul fast float %4499, %4506
  %4510 = fmul fast float %4508, 5.000000e-01
  %4511 = fadd fast float %4499, %4497
  %4512 = fmul fast float %4506, %4511
  %4513 = fmul fast float %4512, 2.500000e-01
  %4514 = fadd fast float %4513, %4510
  %4515 = call float @dx.op.unary.f32(i32 23, float %4514)  ; Log(value)
  %4516 = fmul fast float %4515, 0x3FE62E4300000000
  %4517 = fmul fast float %4516, %4516
  %4518 = select i1 %4501, float 1.000000e+00, float 0.000000e+00
  store float %4518, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  %4519 = fmul fast float %4516, %4518
  store float %4519, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  %4520 = fmul fast float %4517, %4518
  store float %4520, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4521 = load float, float addrspace(3)* %268, align 4, !tbaa !65, !noalias !69
  %4522 = fadd fast float %4521, %4518
  %4523 = load float, float addrspace(3)* %271, align 4, !tbaa !65, !noalias !69
  %4524 = fadd fast float %4523, %4516
  %4525 = load float, float addrspace(3)* %274, align 4, !tbaa !65, !noalias !69
  %4526 = fadd fast float %4525, %4517
  store float %4522, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  store float %4524, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  store float %4526, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4527 = load float, float addrspace(3)* %278, align 4, !tbaa !65, !noalias !69
  %4528 = fadd fast float %4527, %4522
  %4529 = load float, float addrspace(3)* %281, align 4, !tbaa !65, !noalias !69
  %4530 = fadd fast float %4529, %4524
  %4531 = load float, float addrspace(3)* %284, align 4, !tbaa !65, !noalias !69
  %4532 = fadd fast float %4531, %4526
  store float %4528, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  store float %4530, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  store float %4532, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4533 = load float, float addrspace(3)* %288, align 4, !tbaa !65, !noalias !69
  %4534 = fadd fast float %4533, %4528
  %4535 = load float, float addrspace(3)* %291, align 4, !tbaa !65, !noalias !69
  %4536 = fadd fast float %4535, %4530
  %4537 = fdiv fast float %4536, %4534
  %4538 = and i1 %4501, %298
  br i1 %4538, label %4539, label %4547, !dx.controlflow.hints !73

; <label>:4539                                    ; preds = %4484
  %4540 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %287
  %4541 = load float, float addrspace(3)* %4540, align 4, !tbaa !65, !noalias !69
  %4542 = fadd fast float %4541, %4532
  %4543 = fdiv fast float %4542, %4534
  %4544 = lshr i32 %77, 1
  %4545 = lshr i32 %78, 1
  %4546 = lshr i32 %256, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %4544, i32 %4545, i32 %4546, float %4537, float %4543, float %4537, float %4537, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4547

; <label>:4547                                    ; preds = %4539, %4484
  br i1 %4501, label %4548, label %4582, !dx.controlflow.hints !74

; <label>:4548                                    ; preds = %4547
  %4549 = fadd fast float %127, 0x3FE3C6EF40000000
  %4550 = call float @dx.op.unary.f32(i32 22, float %4549)  ; Frc(value)
  %4551 = call float @dx.op.unary.f32(i32 23, float %4507)  ; Log(value)
  %4552 = fadd fast float %4551, -7.000000e+00
  %4553 = call float @dx.op.unary.f32(i32 21, float %4552)  ; Exp(value)
  %4554 = fmul fast float %4550, 2.000000e+00
  %4555 = fadd fast float %4554, -1.000000e+00
  %4556 = fmul fast float %4553, %4555
  %4557 = fcmp fast ogt float %4507, 0.000000e+00
  %4558 = select i1 %4557, float %4556, float 0.000000e+00
  %4559 = fadd fast float %4558, %4507
  %4560 = fadd fast float %127, 0x3FF3C6EF40000000
  %4561 = call float @dx.op.unary.f32(i32 22, float %4560)  ; Frc(value)
  %4562 = call float @dx.op.unary.f32(i32 23, float %4508)  ; Log(value)
  %4563 = fadd fast float %4562, -7.000000e+00
  %4564 = call float @dx.op.unary.f32(i32 21, float %4563)  ; Exp(value)
  %4565 = fmul fast float %4561, 2.000000e+00
  %4566 = fadd fast float %4565, -1.000000e+00
  %4567 = fmul fast float %4564, %4566
  %4568 = fcmp fast ogt float %4508, 0.000000e+00
  %4569 = select i1 %4568, float %4567, float 0.000000e+00
  %4570 = fadd fast float %4569, %4508
  %4571 = fadd fast float %127, 0x3FFDAA66E0000000
  %4572 = call float @dx.op.unary.f32(i32 22, float %4571)  ; Frc(value)
  %4573 = call float @dx.op.unary.f32(i32 23, float %4509)  ; Log(value)
  %4574 = fadd fast float %4573, -6.000000e+00
  %4575 = call float @dx.op.unary.f32(i32 21, float %4574)  ; Exp(value)
  %4576 = fmul fast float %4572, 2.000000e+00
  %4577 = fadd fast float %4576, -1.000000e+00
  %4578 = fmul fast float %4575, %4577
  %4579 = fcmp fast ogt float %4509, 0.000000e+00
  %4580 = select i1 %4579, float %4578, float 0.000000e+00
  %4581 = fadd fast float %4580, %4509
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %77, i32 %78, i32 %256, float %4559, float %4570, float %4581, float %4559, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4582

; <label>:4582                                    ; preds = %4548, %4547
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 0
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4587 = select i1 %221, float %4584, float %4586
  %4588 = fmul fast float %4587, %4494
  %4589 = fmul fast float %4587, %4495
  %4590 = fmul fast float %4587, %4496
  %4591 = fmul fast float %4589, 5.000000e-01
  %4592 = fadd fast float %4496, %4494
  %4593 = fmul fast float %4587, %4592
  %4594 = fmul fast float %4593, 2.500000e-01
  %4595 = fadd fast float %4594, %4591
  %4596 = fmul fast float %4595, %4595
  store float %4518, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  %4597 = fmul fast float %4595, %4518
  store float %4597, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  %4598 = fmul fast float %4596, %4518
  store float %4598, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4599 = load float, float addrspace(3)* %268, align 4, !tbaa !65, !noalias !69
  %4600 = fadd fast float %4599, %4518
  %4601 = load float, float addrspace(3)* %271, align 4, !tbaa !65, !noalias !69
  %4602 = fadd fast float %4595, %4601
  %4603 = load float, float addrspace(3)* %274, align 4, !tbaa !65, !noalias !69
  %4604 = fadd fast float %4596, %4603
  store float %4600, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  store float %4602, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  store float %4604, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4605 = load float, float addrspace(3)* %278, align 4, !tbaa !65, !noalias !69
  %4606 = fadd fast float %4605, %4600
  %4607 = load float, float addrspace(3)* %281, align 4, !tbaa !65, !noalias !69
  %4608 = fadd fast float %4602, %4607
  %4609 = load float, float addrspace(3)* %284, align 4, !tbaa !65, !noalias !69
  %4610 = fadd fast float %4604, %4609
  store float %4606, float addrspace(3)* %262, align 4, !tbaa !65, !noalias !69
  store float %4608, float addrspace(3)* %264, align 4, !tbaa !65, !noalias !69
  store float %4610, float addrspace(3)* %266, align 4, !tbaa !65, !noalias !69
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %4611 = load float, float addrspace(3)* %288, align 4, !tbaa !65, !noalias !69
  %4612 = fadd fast float %4611, %4606
  %4613 = load float, float addrspace(3)* %291, align 4, !tbaa !65, !noalias !69
  %4614 = fadd fast float %4613, %4608
  %4615 = fdiv fast float %4614, %4612
  br i1 %4538, label %4616, label %4624, !dx.controlflow.hints !75

; <label>:4616                                    ; preds = %4582
  %4617 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedMomentY@@3PAMA", i32 0, i32 %287
  %4618 = load float, float addrspace(3)* %4617, align 4, !tbaa !65, !noalias !69
  %4619 = fadd fast float %4618, %4610
  %4620 = fdiv fast float %4619, %4612
  %4621 = lshr i32 %77, 1
  %4622 = lshr i32 %78, 1
  %4623 = lshr i32 %256, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4621, i32 %4622, i32 %4623, float %4615, float %4620, float %4615, float %4615, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4624

; <label>:4624                                    ; preds = %4616, %4582
  br i1 %4501, label %4625, label %4659, !dx.controlflow.hints !76

; <label>:4625                                    ; preds = %4624
  %4626 = fadd fast float %127, 0x3FE3C6EF40000000
  %4627 = call float @dx.op.unary.f32(i32 22, float %4626)  ; Frc(value)
  %4628 = call float @dx.op.unary.f32(i32 23, float %4588)  ; Log(value)
  %4629 = fadd fast float %4628, -7.000000e+00
  %4630 = call float @dx.op.unary.f32(i32 21, float %4629)  ; Exp(value)
  %4631 = fmul fast float %4627, 2.000000e+00
  %4632 = fadd fast float %4631, -1.000000e+00
  %4633 = fmul fast float %4630, %4632
  %4634 = fcmp fast ogt float %4588, 0.000000e+00
  %4635 = select i1 %4634, float %4633, float 0.000000e+00
  %4636 = fadd fast float %4635, %4588
  %4637 = fadd fast float %127, 0x3FF3C6EF40000000
  %4638 = call float @dx.op.unary.f32(i32 22, float %4637)  ; Frc(value)
  %4639 = call float @dx.op.unary.f32(i32 23, float %4589)  ; Log(value)
  %4640 = fadd fast float %4639, -7.000000e+00
  %4641 = call float @dx.op.unary.f32(i32 21, float %4640)  ; Exp(value)
  %4642 = fmul fast float %4638, 2.000000e+00
  %4643 = fadd fast float %4642, -1.000000e+00
  %4644 = fmul fast float %4641, %4643
  %4645 = fcmp fast ogt float %4589, 0.000000e+00
  %4646 = select i1 %4645, float %4644, float 0.000000e+00
  %4647 = fadd fast float %4646, %4589
  %4648 = fadd fast float %127, 0x3FFDAA66E0000000
  %4649 = call float @dx.op.unary.f32(i32 22, float %4648)  ; Frc(value)
  %4650 = call float @dx.op.unary.f32(i32 23, float %4590)  ; Log(value)
  %4651 = fadd fast float %4650, -6.000000e+00
  %4652 = call float @dx.op.unary.f32(i32 21, float %4651)  ; Exp(value)
  %4653 = fmul fast float %4649, 2.000000e+00
  %4654 = fadd fast float %4653, -1.000000e+00
  %4655 = fmul fast float %4652, %4654
  %4656 = fcmp fast ogt float %4590, 0.000000e+00
  %4657 = select i1 %4656, float %4655, float 0.000000e+00
  %4658 = fadd fast float %4657, %4590
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %77, i32 %78, i32 %256, float %4636, float %4647, float %4658, float %4636, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %4659

; <label>:4659                                    ; preds = %4625, %4624
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
!dx.entryPoints = !{!62}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !48, !53, !56}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !45, !46}
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
!41 = !{i32 32, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 5, i32 1, i32 4, i32 0, !7}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %"class.StructuredBuffer<VolumetricVolume>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !44}
!44 = !{i32 1, i32 80}
!45 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!46 = !{i32 36, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !47}
!47 = !{i32 1, i32 4}
!48 = !{!49, !50, !51, !52}
!49 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!50 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!51 = !{i32 2, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!52 = !{i32 3, %"class.RWTexture3D<vector<float, 2> >"* undef, !"", i32 0, i32 8, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!53 = !{!54, !55}
!54 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!55 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!56 = !{!57, !58, !59, !60, !61}
!57 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!58 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{void ()* @cs_volumetric_forwardplus_scatter_local_water, !"cs_volumetric_forwardplus_scatter_local_water", null, !4, !63}
!63 = !{i32 0, i64 272, i32 4, !64}
!64 = !{i32 4, i32 4, i32 4}
!65 = !{!66, !66, i64 0}
!66 = !{!"float", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!70, !72}
!70 = distinct !{!70, !71, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!71 = distinct !{!71, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!72 = distinct !{!72, !71, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
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
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !98}
!115 = distinct !{!115, !98}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 2}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 2}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 2}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = !{!128, !128, i64 0}
!128 = !{!"int", !67, i64 0}
!129 = !{!130, !132, !134, !70, !72}
!130 = distinct !{!130, !131, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!131 = distinct !{!131, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!132 = distinct !{!132, !133, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!133 = distinct !{!133, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!134 = distinct !{!134, !135, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!135 = distinct !{!135, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 2}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 2}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 2}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 2}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 2}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 2}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 2}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 2}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 2}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 2}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}

