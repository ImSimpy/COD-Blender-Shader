;
; Note: shader requires additional functionality:
;       Wave level operations
;
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
; shader hash: 65e41a152e13baa91bbf4979c20181bd
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

@BLUE_NOISE_SAMPLES.v.1dim = internal constant [384 x float] [float 0x3FE18FE160000000, float 0x3FE2F89540000000, float 0x3FE6E2D4C0000000, float 0x3FC15736E0000000, float 0x3FBA5540C0000000, float 0x3FD3170EC0000000, float 0x3FED0D5120000000, float 0x3FE296A0E0000000, float 0x3FC4826EA0000000, float 0x3FE8282660000000, float 0x3FAFC328C0000000, float 0x3FEC521960000000, float 0x3FE37806C0000000, float 0x3FCA6D0000000000, float 0x3FD7082D00000000, float 0x3FC5E13120000000, float 0x3FD2E650A0000000, float 0x3FEBB39F60000000, float 0x3FDC57B600000000, float 0x3FE7C97180000000, float 0x3FCBD95EA0000000, float 0x3FC9988140000000, float 0x3FEAC46E60000000, float 0x3FEAD953E0000000, float 0x3FC843F4E0000000, float 0x3FE1FA7840000000, float 0x3FDEF62560000000, float 0x3FD8DD05A0000000, float 0x3FB5C98040000000, float 0x3FE40B4F00000000, float 0x3FEC4AEE80000000, float 0x3FEB172F40000000, float 0x3FE0065C00000000, float 0x3FEA254D00000000, float 0x3FD8E6DF40000000, float 0x3FE24C96C0000000, float 0x3FDE978BA0000000, float 0x3FBA8F1180000000, float 0x3FB121A6A0000000, float 0x3FE3626000000000, float 0x3FDE58B860000000, float 0x3FB2DED7A0000000, float 0x3FD4F97900000000, float 0x3FD7645460000000, float 0x3FCE571520000000, float 0x3FE7E85200000000, float 0x3FEAFC6460000000, float 0x3FCC666220000000, float 0x3FEC4FF540000000, float 0x3FE7C8B540000000, float 0x3FEBF4AC20000000, float 0x3FD0C66640000000, float 0x3FE2F95320000000, float 0x3F915FFF00000000, float 0x3FE352C600000000, float 0x3FEBC2D0A0000000, float 0x3FE3664520000000, float 0x3FE4504660000000, float 0x3FE1D81AA0000000, float 0x3FD7A97CA0000000, float 0x3F86A53280000000, float 0x3FC1343780000000, float 0x3FE473A1A0000000, float 0x3FEC7EAE80000000, float 0x3FCE83F160000000, float 0x3FC3B66640000000, float 0x3FABB6C6C0000000, float 0x3FEC127C60000000, float 0x3FC3E70E00000000, float 0x3FDC159A60000000, float 0x3FD7AB8720000000, float 0x3FE14710E0000000, float 0x3FDE623A40000000, float 0x3FEB8A45E0000000, float 0x3FEC3C0140000000, float 0x3FD1597DE0000000, float 0x3FEAF0F9A0000000, float 0x3FE1C52360000000, float 0x3FEA622660000000, float 0x3FD760A060000000, float 0x3FEC561B20000000, float 0x3FBAF00320000000, float 0x3FE4643220000000, float 0x3FE72199C0000000, float 0x3FE2E54080000000, float 0x3FD56206C0000000, float 0x3FE8890420000000, float 0x3FEFBE55E0000000, float 0x3FD25DC400000000, float 0x3FD8BF4640000000, float 0x3FE956BCC0000000, float 0x3FE3A5DFE0000000, float 0x3FE5928420000000, float 0x3FE6754AA0000000, float 0x3FBBCDB900000000, float 0x3FE4509C40000000, float 0x3FE14E9AE0000000, float 0x3FEEE61140000000, float 0x3FD3ADB960000000, float 0x3FD3C9D440000000, float 0x3FDF30AF40000000, float 0x3FE885B760000000, float 0x3FEFC30220000000, float 0x3FB1A902E0000000, float 0x3FED532A00000000, float 0x3FBA846540000000, float 0x3FDAC4BEC0000000, float 0x3FB347E280000000, float 0x3FC77620A0000000, float 0x3FBBEF41C0000000, float 0x3FB2C764E0000000, float 0x3FC199A160000000, float 0x3FE44F4480000000, float 0x3FD01FE1E0000000, float 0x3FEC5559A0000000, float 0x3FA2E2FA40000000, float 0x3FD5AAA3C0000000, float 0x3FEDC06380000000, float 0x3FE393B900000000, float 0x3FDA23D800000000, float 0x3FC0BD6E60000000, float 0x3FD6E3CF60000000, float 0x3FE39D7140000000, float 0x3FE07677C0000000, float 0x3FBE721700000000, float 0x3FEA99EBC0000000, float 0x3FC9C1C7E0000000, float 0x3FB4545D20000000, float 0x3FE927BDC0000000, float 0x3FD2AF0880000000, float 0x3FEDDAA620000000, float 0x3FD4C3A220000000, float 0x3FE764E8C0000000, float 0x3FB5474C60000000, float 0x3FBD28BE60000000, float 0x3FDCAE7120000000, float 0x3FE65C7EC0000000, float 0x3FDFAE6DC0000000, float 0x3FEFF2D3E0000000, float 0x3FED44B380000000, float 0x3FE6676480000000, float 0x3FE59F4A80000000, float 0x3FE61D1240000000, float 0x3F80FB0B40000000, float 0x3FD57E1500000000, float 0x3FEC5C93C0000000, float 0x3FA826DF20000000, float 0x3FE939D3A0000000, float 0x3FDB702260000000, float 0x3FD0309DC0000000, float 0x3FC05BD4E0000000, float 0x3F647F5360000000, float 0x3FDFF14000000000, float 0x3FD6B472E0000000, float 0x3FC67E8AE0000000, float 0x3FD7E52D80000000, float 0x3FD9A20420000000, float 0x3FD873C2E0000000, float 0x3FEED079E0000000, float 0x3FD9280DA0000000, float 0x3FE0E70960000000, float 0x3FD7AD5C60000000, float 0x3FADC1E8A0000000, float 0x3FE9BAFE00000000, float 0x3FD6EB3FA0000000, float 0x3FE8B0FE80000000, float 0x3FEC006EA0000000, float 0x3FE7886EC0000000, float 0x3FD4E113A0000000, float 0x3FE5EB06E0000000, float 0x3FE7AE8F00000000, float 0x3FE594A1A0000000, float 0x3FE8BE5C40000000, float 0x3FDBBB7820000000, float 0x3FDC00F660000000, float 0x3FE3BEAF60000000, float 0x3FECE40A40000000, float 0x3FE476BE80000000, float 0x3FCE715760000000, float 0x3F9A66CEA0000000, float 0x3FE1E87120000000, float 0x3FD6EFB1C0000000, float 0x3FCE53C0A0000000, float 0x3FEEC44720000000, float 0x3FDE4FCA40000000, float 0x3FE71C3E60000000, float 0x3FEF2C7C20000000, float 0x3FE166A120000000, float 0x3FEE257F40000000, float 0x3FE9B56F40000000, float 0x3FECD0D600000000, float 0x3FA0FC3EC0000000, float 0x3FEC4C3DC0000000, float 0x3FD150EC60000000, float 0x3FE71F4F60000000, float 0x3FB622B360000000, float 0x3FDC8CDE60000000, float 0x3FD23942A0000000, float 0x3FE1F1FAA0000000, float 0x3FED974C60000000, float 0x3FB46602A0000000, float 0x3FE6E2E620000000, float 0x3FEFD8B280000000, float 0x3FDD9BF5C0000000, float 0x3FA674A1C0000000, float 0x3FE9B56E40000000, float 0x3FEEE67800000000, float 0x3FCDA72D80000000, float 0x3FD469FA40000000, float 0x3FDBC871E0000000, float 0x3FDD20E3E0000000, float 0x3FEF2C1DE0000000, float 0x3FDF7B00E0000000, float 0x3FD6281F00000000, float 0x3FC66B3000000000, float 0x3FEDE19700000000, float 0x3FDB2072A0000000, float 0x3FE0D7DF20000000, float 0x3FC3B1B640000000, float 0x3FDA9DE220000000, float 0x3FD04AFB60000000, float 0x3FE78D6920000000, float 0x3FEF438F00000000, float 0x3FD0DACEC0000000, float 0x3FED6152E0000000, float 0x3FE9CF90A0000000, float 0x3FD0689260000000, float 0x3FDB295100000000, float 0x3FE43A8B20000000, float 0x3FDB335EA0000000, float 0x3FE0E1EA60000000, float 0x3FEBAB00E0000000, float 0x3FDA8B1D60000000, float 0x3FB10CBD20000000, float 0x3FE78F4620000000, float 0x3FE227D0E0000000, float 0x3FEC0E76A0000000, float 0x3FEEF3F8C0000000, float 0x3FE5ADCD40000000, float 0x3FE386C040000000, float 0x3FE2FA86E0000000, float 0x3FCE803BA0000000, float 0x3FE26AEBE0000000, float 0x3FE58556A0000000, float 0x3FEB878100000000, float 0x3FEC77D980000000, float 0x3FC0793440000000, float 0x3FD134B520000000, float 0x3FC9DB4080000000, float 0x3FE83B8480000000, float 0x3FE4ECC2E0000000, float 0x3FCEA8E9A0000000, float 0x3FD60CA840000000, float 0x3FECE35B20000000, float 0x3FE746B7A0000000, float 0x3FCE074860000000, float 0x3FE81DE580000000, float 0x3FC2584AA0000000, float 0x3FD5C82E00000000, float 0x3FE0CECA40000000, float 0x3FE26646C0000000, float 0x3FC0854540000000, float 0x3FE77AA920000000, float 0x3FE0120580000000, float 0x3FEF5EE280000000, float 0x3FB39D7D80000000, float 0x3FC50B8D20000000, float 0x3FDBFF8BC0000000, float 0x3FB7077B80000000, float 0x3FCF722760000000, float 0x3FD274BA20000000, float 0x3FE7EC88A0000000, float 0x3FD8207A00000000, float 0x3FDC2B1A00000000, float 0x3FEAE81F60000000, float 0x3FD84A9200000000, float 0x3FEB3D1480000000, float 0x3F74CDAB80000000, float 0x3FE2903380000000, float 0x3FE3D88D60000000, float 0x3FE5557C00000000, float 0x3FE1B02540000000, float 0x3FCAD53680000000, float 0x3FC97E4340000000, float 0x3FE4A0C720000000, float 0x3FDE649800000000, float 0x3FE8A886A0000000, float 0x3FE77F7260000000, float 0x3FEB51B700000000, float 0x3FC2E2DE00000000, float 0x3F5888D4C0000000, float 0x3FD41984E0000000, float 0x3FD20DB1A0000000, float 0x3FB551A020000000, float 0x3FDB131880000000, float 0x3FEDC9D0C0000000, float 0x3FC7DD4AA0000000, float 0x3FD5F5F120000000, float 0x3F7F518660000000, float 0x3FEBF19260000000, float 0x3F799ADA40000000, float 0x3FDC20E100000000, float 0x3FE0E7DB40000000, float 0x3FC0BB4EE0000000, float 0x3FDECDAEE0000000, float 0x3FEA638F20000000, float 0x3FE70F2040000000, float 0x3FCA53C540000000, float 0x3FCCF95320000000, float 0x3FB324F500000000, float 0x3FE354CC40000000, float 0x3FB2C45460000000, float 0x3FE072AB00000000, float 0x3FE6B81580000000, float 0x3FAD0D1160000000, float 0x3FECCB0BE0000000, float 0x3FEB935140000000, float 0x3FD2A50CE0000000, float 0x3FE5A24D40000000, float 0x3FCB409DA0000000, float 0x3FEAFD5600000000, float 0x3FE2CA5C00000000, float 0x3FEEB0C0A0000000, float 0x3FE8201F60000000, float 0x3FAA420B00000000, float 0x3FD2EB8020000000, float 0x3FE7E3DFA0000000, float 0x3FE7E2A760000000, float 0x3FE8746C80000000, float 0x3FE31217A0000000, float 0x3FEB946480000000, float 0x3FE7B3EDC0000000, float 0x3FB74FEFA0000000, float 0x3FEE07E160000000, float 0x3FC272BDC0000000, float 0x3FDE3B38A0000000, float 0x3FE687E8E0000000, float 0x3FDD8CC5E0000000, float 0x3FE5BD32A0000000, float 0x3FC63803C0000000, float 0x3FED12DE60000000, float 0x3F99B048C0000000, float 0x3FEC98B3E0000000, float 0x3FB9C91A60000000, float 0x3FE8D6E040000000, float 0x3FD39228C0000000, float 0x3FE404F040000000, float 0x3FD00082E0000000, float 0x3FE9099100000000, float 0x3FE1A444E0000000, float 0x3FDDFDC900000000, float 0x3FD649EA00000000, float 0x3FE7F988C0000000, float 0x3FEEB362C0000000, float 0x3FBE7B5FE0000000, float 0x3FC6A55F60000000, float 0x3FE07F6B40000000, float 0x3FE0AFB880000000, float 0x3FDE87A600000000, float 0x3FEBF9DCC0000000, float 0x3FD039B760000000, float 0x3F73CF67C0000000, float 0x3FE33EED40000000, float 0x3FD43683E0000000, float 0x3FD1531020000000, float 0x3FE1D32C60000000, float 0x3FE16249C0000000, float 0x3FBCE097A0000000, float 0x3FDE6FED80000000, float 0x3FE47A3A60000000, float 0x3FE6D84580000000, float 0x3FEA3764C0000000, float 0x3FE9B3C000000000, float 0x3FCD0FDF40000000, float 0x3FE2C6AC00000000, float 0x3FCBCACA20000000, float 0x3FE02FE880000000, float 0x3FC52C7860000000, float 0x3FD5258C40000000, float 0x3FA7811BC0000000, float 0x3FAAEB5B20000000, float 0x3FE369AEC0000000, float 0x3FB38C3220000000, float 0x3FEF14BEE0000000], align 4
@"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [32 x float] undef, align 4

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
  %215 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %216 = icmp ult i32 %215, 32
  br i1 %216, label %217, label %335, !dx.controlflow.hints !61

; <label>:217                                     ; preds = %0
  %218 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %219 = fmul fast float %218, 0x3FE62E4300000000
  %220 = fmul fast float %219, %219
  %221 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %222 = add i32 %215, -1
  %223 = add i32 %215, 7
  %224 = and i32 %223, 4
  %225 = and i32 %222, %221
  %226 = xor i32 %225, %224
  %227 = and i32 %221, -4
  %228 = shl i32 %221, 1
  %229 = and i32 %228, 6
  %230 = lshr i32 177, %229
  %231 = and i32 %230, 3
  %232 = or i32 %231, %227
  %233 = udiv i32 %50, %215
  %234 = shl i32 %233, 2
  %235 = lshr i32 %221, 1
  %236 = and i32 %235, 1
  %237 = or i32 %234, %236
  %238 = lshr i32 %221, 2
  %239 = and i32 %238, 2
  %240 = or i32 %237, %239
  %241 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %219, i32 %226)  ; WaveReadLaneAt(value,lane)
  %242 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %220, i32 %226)  ; WaveReadLaneAt(value,lane)
  %243 = fadd fast float %241, %219
  %244 = fadd fast float %242, %220
  %245 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %243, i32 %232)  ; WaveReadLaneAt(value,lane)
  %246 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %244, i32 %232)  ; WaveReadLaneAt(value,lane)
  %247 = fadd fast float %245, %243
  %248 = fadd fast float %246, %244
  %249 = mul i32 %240, 2
  %250 = add i32 0, %249
  %251 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %250
  store float %247, float addrspace(3)* %251, align 4
  %252 = mul i32 %240, 2
  %253 = add i32 1, %252
  %254 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %253
  store float %248, float addrspace(3)* %254, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %255 = load float, float addrspace(3)* %251, align 4
  %256 = xor i32 %240, 4
  %257 = mul i32 %256, 2
  %258 = add i32 0, %257
  %259 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %258
  %260 = load float, float addrspace(3)* %259, align 4
  %261 = fadd fast float %260, %255
  %262 = fmul fast float %261, 1.250000e-01
  %263 = and i32 %73, 1
  %264 = and i32 %263, %74
  %265 = and i32 %264, %75
  %266 = icmp ne i32 %265, 0
  %267 = and i1 %266, %85
  br i1 %267, label %268, label %279, !dx.controlflow.hints !62

; <label>:268                                     ; preds = %217
  %269 = mul i32 %256, 2
  %270 = add i32 1, %269
  %271 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %270
  %272 = load float, float addrspace(3)* %271, align 4
  %273 = load float, float addrspace(3)* %254, align 4
  %274 = fadd fast float %272, %273
  %275 = fmul fast float %274, 1.250000e-01
  %276 = lshr i32 %73, 1
  %277 = lshr i32 %74, 1
  %278 = lshr i32 %75, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %276, i32 %277, i32 %278, float %262, float %275, float %262, float %262, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %279

; <label>:279                                     ; preds = %268, %217
  br i1 %84, label %281, label %280, !dx.controlflow.hints !63

; <label>:280                                     ; preds = %279
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %73, i32 %74, i32 %75, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %281

; <label>:281                                     ; preds = %280, %279
  %282 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %283 = add i32 %215, -1
  %284 = add i32 %215, 7
  %285 = and i32 %284, 4
  %286 = and i32 %283, %282
  %287 = xor i32 %286, %285
  %288 = and i32 %282, -4
  %289 = shl i32 %282, 1
  %290 = and i32 %289, 6
  %291 = lshr i32 177, %290
  %292 = and i32 %291, 3
  %293 = or i32 %292, %288
  %294 = udiv i32 %50, %215
  %295 = shl i32 %294, 2
  %296 = lshr i32 %282, 1
  %297 = and i32 %296, 1
  %298 = or i32 %295, %297
  %299 = lshr i32 %282, 2
  %300 = and i32 %299, 2
  %301 = or i32 %298, %300
  %302 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %287)  ; WaveReadLaneAt(value,lane)
  %303 = call float @dx.op.waveReadLaneAt.f32(i32 117, float 0.000000e+00, i32 %287)  ; WaveReadLaneAt(value,lane)
  %304 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %302, i32 %293)  ; WaveReadLaneAt(value,lane)
  %305 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %303, i32 %293)  ; WaveReadLaneAt(value,lane)
  %306 = fadd fast float %304, %302
  %307 = fadd fast float %305, %303
  %308 = mul i32 %301, 2
  %309 = add i32 0, %308
  %310 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %309
  store float %306, float addrspace(3)* %310, align 4
  %311 = mul i32 %301, 2
  %312 = add i32 1, %311
  %313 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %312
  store float %307, float addrspace(3)* %313, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %314 = load float, float addrspace(3)* %310, align 4
  %315 = xor i32 %301, 4
  %316 = mul i32 %315, 2
  %317 = add i32 0, %316
  %318 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %317
  %319 = load float, float addrspace(3)* %318, align 4
  %320 = fadd fast float %319, %314
  %321 = fmul fast float %320, 1.250000e-01
  br i1 %267, label %322, label %333, !dx.controlflow.hints !64

; <label>:322                                     ; preds = %281
  %323 = mul i32 %315, 2
  %324 = add i32 1, %323
  %325 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %324
  %326 = load float, float addrspace(3)* %325, align 4
  %327 = load float, float addrspace(3)* %313, align 4
  %328 = fadd fast float %326, %327
  %329 = fmul fast float %328, 1.250000e-01
  %330 = lshr i32 %73, 1
  %331 = lshr i32 %74, 1
  %332 = lshr i32 %75, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %330, i32 %331, i32 %332, float %321, float %329, float %321, float %321, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %333

; <label>:333                                     ; preds = %322, %281
  br i1 %84, label %335, label %334, !dx.controlflow.hints !65

; <label>:334                                     ; preds = %333
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %73, i32 %74, i32 %75, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %335

; <label>:335                                     ; preds = %334, %333, %0
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 399)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = fsub fast float %201, %337
  %340 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %339)  ; FMax(a,b)
  %341 = fmul fast float %340, 0x3FF7154760000000
  %342 = fmul fast float %341, %338
  %343 = call float @dx.op.unary.f32(i32 21, float %342)  ; Exp(value)
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = fmul fast float %350, %343
  %352 = fmul fast float %351, %345
  %353 = fmul fast float %351, %346
  %354 = fmul fast float %351, %347
  %355 = fmul fast float %351, %349
  %356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.i32 %356, 2
  %358 = extractvalue %dx.types.CBufRet.i32 %356, 3
  %359 = call i32 @dx.op.tertiary.i32(i32 49, i32 %67, i32 %357, i32 %65)  ; UMad(a,b,c)
  %360 = call i32 @dx.op.tertiary.i32(i32 49, i32 %69, i32 %358, i32 %359)  ; UMad(a,b,c)
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %360, i32 0)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = fadd fast float %132, 1.000000e+00
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = fmul fast float %369, %140
  %371 = call float @dx.op.unary.f32(i32 21, float %370)  ; Exp(value)
  %372 = fmul fast float %371, %368
  %373 = fsub fast float 4.000000e+00, %368
  %374 = fadd fast float %373, %372
  %375 = fmul fast float %363, 2.000000e+00
  %376 = fmul fast float %375, %365
  %377 = fmul fast float %133, 2.000000e+00
  %378 = fmul fast float %377, %366
  %379 = fsub fast float 1.000000e+00, %376
  %380 = fsub fast float 1.000000e+00, %378
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %385 = fmul fast float %382, %379
  %386 = fmul fast float %383, %379
  %387 = fmul fast float %384, %379
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %392 = fmul fast float %389, %380
  %393 = fmul fast float %390, %380
  %394 = fmul fast float %391, %380
  %395 = fadd fast float %392, %385
  %396 = fadd fast float %393, %386
  %397 = fadd fast float %394, %387
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = fadd fast float %395, %399
  %403 = fadd fast float %396, %400
  %404 = fadd fast float %397, %401
  %405 = fadd fast float %133, 1.000000e+00
  %406 = fmul fast float %132, 2.000000e+00
  %407 = fmul fast float %406, %365
  %408 = fmul fast float %405, 2.000000e+00
  %409 = fmul fast float %408, %366
  %410 = fsub fast float 1.000000e+00, %407
  %411 = fsub fast float 1.000000e+00, %409
  %412 = fmul fast float %382, %410
  %413 = fmul fast float %383, %410
  %414 = fmul fast float %384, %410
  %415 = fmul fast float %389, %411
  %416 = fmul fast float %390, %411
  %417 = fmul fast float %391, %411
  %418 = fadd fast float %415, %412
  %419 = fadd fast float %416, %413
  %420 = fadd fast float %417, %414
  %421 = fadd fast float %418, %399
  %422 = fadd fast float %419, %400
  %423 = fadd fast float %420, %401
  %424 = fmul fast float %421, %374
  %425 = fmul fast float %422, %374
  %426 = fmul fast float %423, %374
  %427 = fadd fast float %421, %402
  %428 = fmul fast float %374, %427
  %429 = fadd fast float %422, %403
  %430 = fmul fast float %374, %429
  %431 = fadd fast float %423, %404
  %432 = fmul fast float %374, %431
  %433 = fmul fast float %428, 5.000000e-01
  %434 = fmul fast float %430, 5.000000e-01
  %435 = fmul fast float %432, 5.000000e-01
  %436 = fsub fast float %433, %424
  %437 = fsub fast float %434, %425
  %438 = fsub fast float %435, %426
  %439 = call float @dx.op.dot3.f32(i32 55, float %436, float %437, float %438, float %436, float %437, float %438)  ; Dot3(ax,ay,az,bx,by,bz)
  %440 = call float @dx.op.unary.f32(i32 25, float %439)  ; Rsqrt(value)
  %441 = fmul fast float %439, 2.000000e+00
  %442 = fmul fast float %441, %440
  %443 = call float @dx.op.binary.f32(i32 35, float %209, float %442)  ; FMax(a,b)
  %444 = and i32 %362, 8
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %662, label %446, !dx.controlflow.hints !66

; <label>:446                                     ; preds = %335
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 35)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %449 = extractvalue %dx.types.CBufRet.f32 %447, 1
  %450 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 31)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %454 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %455 = fsub fast float %199, %452
  %456 = fsub fast float %200, %453
  %457 = fsub fast float %201, %454
  %458 = fmul fast float %455, %448
  %459 = fmul fast float %456, %449
  %460 = fmul fast float %457, %450
  %461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.i32 %461, 3
  %463 = icmp eq i32 %462, 0
  %464 = fcmp fast oge float %460, 0.000000e+00
  %465 = fcmp fast ole float %460, 1.000000e+00
  br i1 %463, label %468, label %466, !dx.controlflow.hints !67

; <label>:466                                     ; preds = %446
  %467 = and i1 %464, %465
  br label %478

; <label>:468                                     ; preds = %446
  %469 = fcmp fast oge float %458, 0.000000e+00
  %470 = fcmp fast oge float %459, 0.000000e+00
  %471 = and i1 %469, %470
  %472 = and i1 %464, %471
  %473 = fcmp fast ole float %458, 1.000000e+00
  %474 = fcmp fast ole float %459, 1.000000e+00
  %475 = and i1 %473, %474
  %476 = and i1 %465, %475
  %477 = and i1 %472, %476
  br label %478

; <label>:478                                     ; preds = %468, %466
  %479 = phi i1 [ %467, %466 ], [ %477, %468 ]
  br i1 %479, label %480, label %655, !dx.controlflow.hints !68

; <label>:480                                     ; preds = %478
  %481 = fcmp fast oeq float %443, 0.000000e+00
  br i1 %481, label %496, label %482, !dx.controlflow.hints !69

; <label>:482                                     ; preds = %480
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 3
  %485 = fmul fast float %484, %443
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %489 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %490 = fmul fast float %487, %485
  %491 = fmul fast float %488, %485
  %492 = fmul fast float %489, %485
  %493 = call float @dx.op.unary.f32(i32 23, float %490)  ; Log(value)
  %494 = call float @dx.op.unary.f32(i32 23, float %491)  ; Log(value)
  %495 = call float @dx.op.unary.f32(i32 23, float %492)  ; Log(value)
  br label %496

; <label>:496                                     ; preds = %482, %480
  %497 = phi float [ %493, %482 ], [ 0.000000e+00, %480 ]
  %498 = phi float [ %494, %482 ], [ 0.000000e+00, %480 ]
  %499 = phi float [ %495, %482 ], [ 0.000000e+00, %480 ]
  %500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.i32 %500, 0
  %502 = extractvalue %dx.types.CBufRet.i32 %500, 1
  %503 = uitofp i32 %501 to float
  %504 = uitofp i32 %502 to float
  %505 = fmul fast float %458, %503
  %506 = fmul fast float %459, %504
  %507 = fadd fast float %505, 5.000000e-01
  %508 = fadd fast float %506, 5.000000e-01
  %509 = call float @dx.op.unary.f32(i32 22, float %507)  ; Frc(value)
  %510 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %511 = call float @dx.op.unary.f32(i32 27, float %507)  ; Round_ni(value)
  %512 = call float @dx.op.unary.f32(i32 27, float %508)  ; Round_ni(value)
  %513 = fadd fast float %511, 1.000000e+00
  %514 = fadd fast float %512, 1.000000e+00
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 30)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 0
  %517 = extractvalue %dx.types.CBufRet.f32 %515, 1
  %518 = fmul fast float %516, %513
  %519 = fmul fast float %517, %514
  %520 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %27, %dx.types.Handle %40, float %518, float %519, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = extractvalue %dx.types.ResRet.f32 %520, 2
  %524 = extractvalue %dx.types.ResRet.f32 %520, 3
  %525 = extractvalue %dx.types.CBufRet.i32 %500, 2
  %526 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %527 = uitofp i32 %525 to float
  %528 = fadd fast float %527, -1.000000e+00
  %529 = fmul fast float %528, %521
  %530 = fmul fast float %528, %522
  %531 = fmul fast float %528, %523
  %532 = fmul fast float %528, %524
  %533 = fadd fast float %529, 5.000000e-01
  %534 = fadd fast float %530, 5.000000e-01
  %535 = fadd fast float %531, 5.000000e-01
  %536 = fadd fast float %532, 5.000000e-01
  %537 = fptoui float %533 to i32
  %538 = fptoui float %534 to i32
  %539 = fptoui float %535 to i32
  %540 = fptoui float %536 to i32
  %541 = uitofp i32 %537 to float
  %542 = uitofp i32 %538 to float
  %543 = uitofp i32 %539 to float
  %544 = uitofp i32 %540 to float
  %545 = fadd fast float %541, 5.000000e-01
  %546 = fadd fast float %542, 5.000000e-01
  %547 = fadd fast float %543, 5.000000e-01
  %548 = fadd fast float %544, 5.000000e-01
  %549 = fmul fast float %545, %526
  %550 = fmul fast float %546, %526
  %551 = fmul fast float %547, %526
  %552 = fmul fast float %548, %526
  %553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %549, float %460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %550, float %460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %551, float %460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %552, float %460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = fsub fast float %558, %560
  %562 = fmul fast float %561, %509
  %563 = fadd fast float %562, %560
  %564 = fsub fast float %556, %554
  %565 = fmul fast float %564, %509
  %566 = fadd fast float %565, %554
  %567 = fsub fast float %566, %563
  %568 = fmul fast float %567, %510
  %569 = fadd fast float %568, %563
  %570 = fcmp fast ogt float %569, 0.000000e+00
  br i1 %570, label %571, label %639, !dx.controlflow.hints !70

; <label>:571                                     ; preds = %496
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 33)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 41)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %578 = extractvalue %dx.types.CBufRet.f32 %576, 1
  %579 = extractvalue %dx.types.CBufRet.f32 %576, 2
  %580 = fmul fast float %456, %448
  %581 = fmul fast float %457, %448
  %582 = fadd fast float %458, %577
  %583 = fadd fast float %580, %578
  %584 = fadd fast float %581, %579
  %585 = fmul fast float %582, %573
  %586 = fmul fast float %583, %573
  %587 = fmul fast float %584, %573
  %588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %585, float %586, float %587, float undef, i32 0, i32 0, i32 0, float %497)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = fmul fast float %582, %574
  %591 = fmul fast float %583, %574
  %592 = fmul fast float %584, %574
  %593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %590, float %591, float %592, float undef, i32 0, i32 0, i32 0, float %498)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 1
  %595 = fmul fast float %582, %575
  %596 = fmul fast float %583, %575
  %597 = fmul fast float %584, %575
  %598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %595, float %596, float %597, float undef, i32 0, i32 0, i32 0, float %499)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 2
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 34)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %602 = fmul fast float %594, %589
  %603 = fmul fast float %602, %599
  %604 = call float @dx.op.unary.f32(i32 23, float %603)  ; Log(value)
  %605 = fmul fast float %604, %601
  %606 = call float @dx.op.unary.f32(i32 21, float %605)  ; Exp(value)
  %607 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %608 = fmul fast float %569, %569
  %609 = fmul fast float %608, %606
  %610 = fmul fast float %609, %607
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 32)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %613 = fmul fast float %612, %610
  %614 = bitcast float %613 to i32
  %615 = sitofp i32 %614 to float
  %616 = fptosi float %615 to i32
  %617 = bitcast i32 %616 to float
  %618 = fsub fast float 1.000000e+00, %610
  %619 = bitcast float %618 to i32
  %620 = sitofp i32 %619 to float
  %621 = fptosi float %620 to i32
  %622 = bitcast i32 %621 to float
  %623 = fadd fast float %617, %622
  %624 = bitcast float %623 to i32
  %625 = sub nsw i32 2129859010, %624
  %626 = bitcast i32 %625 to float
  %627 = fmul fast float %626, %617
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = fmul fast float %627, %631
  %633 = fadd fast float %632, 1.000000e+00
  %634 = bitcast float %633 to i32
  %635 = sub nsw i32 2129859010, %634
  %636 = bitcast i32 %635 to float
  %637 = fmul fast float %627, %629
  %638 = fmul fast float %637, %636
  br label %639

; <label>:639                                     ; preds = %571, %496
  %640 = phi float [ %638, %571 ], [ %569, %496 ]
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 36)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %644 = extractvalue %dx.types.CBufRet.f32 %641, 2
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 37)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %647 = fmul fast float %642, %640
  %648 = fmul fast float %643, %640
  %649 = fmul fast float %644, %640
  %650 = fadd fast float %647, %352
  %651 = fadd fast float %648, %353
  %652 = fadd fast float %649, %354
  %653 = fmul fast float %646, %640
  %654 = fadd fast float %653, %355
  br label %655

; <label>:655                                     ; preds = %639, %478
  %656 = phi float [ %650, %639 ], [ %352, %478 ]
  %657 = phi float [ %651, %639 ], [ %353, %478 ]
  %658 = phi float [ %652, %639 ], [ %354, %478 ]
  %659 = phi float [ %654, %639 ], [ %355, %478 ]
  %660 = phi float [ %640, %639 ], [ 0.000000e+00, %478 ]
  %661 = fadd fast float %660, %351
  br label %662

; <label>:662                                     ; preds = %655, %335
  %663 = phi float [ %656, %655 ], [ %352, %335 ]
  %664 = phi float [ %657, %655 ], [ %353, %335 ]
  %665 = phi float [ %658, %655 ], [ %354, %335 ]
  %666 = phi float [ %659, %655 ], [ %355, %335 ]
  %667 = phi float [ %661, %655 ], [ %351, %335 ]
  %668 = phi float [ %660, %655 ], [ 0.000000e+00, %335 ]
  %669 = and i32 %362, 2
  %670 = icmp ne i32 %669, 0
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 401)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 2
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 2
  %675 = fadd fast float %674, %672
  %676 = fcmp fast ole float %201, %675
  %677 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 400)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.i32 %677, 3
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %699, !dx.controlflow.hints !71

; <label>:680                                     ; preds = %662
  %681 = extractvalue %dx.types.CBufRet.f32 %671, 0
  %682 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %683 = fsub fast float %199, %681
  %684 = fsub fast float %200, %682
  %685 = extractvalue %dx.types.CBufRet.f32 %673, 0
  %686 = extractvalue %dx.types.CBufRet.f32 %673, 1
  %687 = fdiv fast float 1.000000e+00, %685
  %688 = fdiv fast float 1.000000e+00, %686
  %689 = fmul fast float %683, %687
  %690 = fmul fast float %688, %684
  %691 = fcmp fast oge float %689, 0.000000e+00
  %692 = fcmp fast oge float %690, 0.000000e+00
  %693 = and i1 %691, %692
  %694 = and i1 %676, %693
  %695 = fcmp fast ole float %689, 1.000000e+00
  %696 = fcmp fast ole float %690, 1.000000e+00
  %697 = and i1 %695, %696
  %698 = and i1 %697, %694
  br label %699

; <label>:699                                     ; preds = %680, %662
  %700 = phi i1 [ %698, %680 ], [ %676, %662 ]
  %701 = and i1 %670, %700
  br i1 %701, label %702, label %881, !dx.controlflow.hints !72

; <label>:702                                     ; preds = %699
  %703 = fcmp fast oeq float %443, 0.000000e+00
  br i1 %703, label %709, label %704, !dx.controlflow.hints !73

; <label>:704                                     ; preds = %702
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 3
  %707 = fmul fast float %706, %443
  %708 = call float @dx.op.unary.f32(i32 23, float %707)  ; Log(value)
  br label %709

; <label>:709                                     ; preds = %704, %702
  %710 = phi float [ %708, %704 ], [ 0.000000e+00, %702 ]
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 0
  %713 = extractvalue %dx.types.CBufRet.f32 %711, 1
  %714 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %715 = fsub fast float %199, %712
  %716 = fsub fast float %200, %713
  %717 = fsub fast float %201, %714
  %718 = fmul fast float %715, %715
  %719 = fmul fast float %716, %716
  %720 = fadd fast float %718, %719
  %721 = fmul fast float %717, %717
  %722 = fadd fast float %720, %721
  %723 = call float @dx.op.unary.f32(i32 24, float %722)  ; Sqrt(value)
  %724 = extractvalue %dx.types.CBufRet.f32 %671, 0
  %725 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %726 = fsub fast float %199, %724
  %727 = fsub fast float %200, %725
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 403)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %731 = fmul fast float %726, %729
  %732 = fmul fast float %727, %730
  %733 = fsub fast float 1.000000e+00, %732
  br i1 %679, label %740, label %734, !dx.controlflow.hints !74

; <label>:734                                     ; preds = %709
  %735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %40, float %731, float %733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  %739 = extractvalue %dx.types.ResRet.f32 %735, 3
  br label %746

; <label>:740                                     ; preds = %709
  %741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %41, float %731, float %733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = extractvalue %dx.types.ResRet.f32 %741, 3
  br label %746

; <label>:746                                     ; preds = %740, %734
  %747 = phi float [ %736, %734 ], [ %742, %740 ]
  %748 = phi float [ %737, %734 ], [ %743, %740 ]
  %749 = phi float [ %738, %734 ], [ %744, %740 ]
  %750 = phi float [ %739, %734 ], [ %745, %740 ]
  %751 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %752 = fmul fast float %751, %748
  %753 = fmul fast float %752, %747
  %754 = fsub fast float %752, %753
  %755 = fcmp fast ole float %754, 0.000000e+00
  %756 = fmul fast float %751, %749
  %757 = fadd fast float %756, %672
  %758 = fdiv fast float 1.000000e+00, %754
  %759 = select i1 %755, float 1.000000e+06, float %758
  %760 = fsub fast float %201, %672
  %761 = fsub fast float %760, %753
  %762 = fmul fast float %759, %761
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %764 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %765 = fmul fast float %764, %763
  %766 = fsub fast float %764, %765
  %767 = fcmp fast olt float %201, %757
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 406)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %770 = select i1 %767, float %769, float 1.000000e+00
  %771 = extractvalue %dx.types.CBufRet.f32 %768, 1
  %772 = fcmp fast oeq float %771, 0.000000e+00
  br i1 %772, label %855, label %773, !dx.controlflow.hints !75

; <label>:773                                     ; preds = %746
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 405)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 3
  %776 = fcmp fast ogt float %775, 0.000000e+00
  %777 = extractvalue %dx.types.CBufRet.f32 %768, 2
  br i1 %776, label %778, label %808, !dx.controlflow.hints !76

; <label>:778                                     ; preds = %773
  %779 = fmul fast float %731, %775
  %780 = fmul fast float %732, %775
  %781 = fsub fast float 1.000000e+00, %780
  %782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %779, float %781, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = fmul fast float %783, 2.000000e+00
  %786 = fmul fast float %784, 2.000000e+00
  %787 = fadd fast float %785, -1.000000e+00
  %788 = fadd fast float %786, -1.000000e+00
  %789 = fmul fast float %771, %199
  %790 = fmul fast float %771, %200
  %791 = fmul fast float %771, %201
  %792 = call float @dx.op.unary.f32(i32 22, float %777)  ; Frc(value)
  %793 = fmul fast float %787, %792
  %794 = fmul fast float %788, %792
  %795 = fsub fast float %789, %793
  %796 = fsub fast float %790, %794
  %797 = fadd fast float %777, 5.000000e-01
  %798 = call float @dx.op.unary.f32(i32 22, float %797)  ; Frc(value)
  %799 = fmul fast float %798, %787
  %800 = fmul fast float %798, %788
  %801 = fadd fast float %789, -5.000000e-01
  %802 = fsub fast float %801, %799
  %803 = fadd fast float %790, -5.000000e-01
  %804 = fsub fast float %803, %800
  %805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %802, float %804, float %791, float undef, i32 0, i32 0, i32 0, float %710)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  br label %821

; <label>:808                                     ; preds = %773
  %809 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %774, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %774, 2
  %812 = fmul fast float %777, %809
  %813 = fmul fast float %777, %810
  %814 = fmul fast float %777, %811
  %815 = fsub fast float %199, %812
  %816 = fsub fast float %200, %813
  %817 = fsub fast float %201, %814
  %818 = fmul fast float %815, %771
  %819 = fmul fast float %816, %771
  %820 = fmul fast float %817, %771
  br label %821

; <label>:821                                     ; preds = %808, %778
  %822 = phi float [ %795, %778 ], [ %818, %808 ]
  %823 = phi float [ %796, %778 ], [ %819, %808 ]
  %824 = phi float [ %791, %778 ], [ %820, %808 ]
  %825 = phi float [ %806, %778 ], [ 0.000000e+00, %808 ]
  %826 = phi float [ %807, %778 ], [ 0.000000e+00, %808 ]
  %827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %822, float %823, float %824, float undef, i32 0, i32 0, i32 0, float %710)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  br i1 %776, label %830, label %842, !dx.controlflow.hints !77

; <label>:830                                     ; preds = %821
  %831 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %832 = call float @dx.op.unary.f32(i32 22, float %831)  ; Frc(value)
  %833 = fmul fast float %832, 2.000000e+00
  %834 = fadd fast float %833, -1.000000e+00
  %835 = call float @dx.op.unary.f32(i32 6, float %834)  ; FAbs(value)
  %836 = fsub fast float %825, %828
  %837 = fmul fast float %835, %836
  %838 = fadd fast float %837, %828
  %839 = fsub fast float %826, %829
  %840 = fmul fast float %835, %839
  %841 = fadd fast float %840, %829
  br label %842

; <label>:842                                     ; preds = %830, %821
  %843 = phi float [ %838, %830 ], [ %828, %821 ]
  %844 = phi float [ %841, %830 ], [ %829, %821 ]
  %845 = extractvalue %dx.types.CBufRet.f32 %671, 3
  %846 = fadd fast float %845, %845
  %847 = fdiv fast float 2.000000e+00, %846
  %848 = fmul fast float %845, 2.000000e+00
  %849 = fadd fast float %843, -1.000000e+00
  %850 = fadd fast float %849, %844
  %851 = fadd fast float %850, %848
  %852 = fmul fast float %851, %847
  %853 = fadd fast float %852, -1.000000e+00
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  br label %855

; <label>:855                                     ; preds = %842, %746
  %856 = phi float [ %854, %842 ], [ 1.000000e+00, %746 ]
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 402)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %861 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 427)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %864 = fsub fast float %723, %863
  %865 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %866 = fmul fast float %864, %865
  %867 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  %868 = fmul fast float %770, %750
  %869 = fmul fast float %868, %766
  %870 = fmul fast float %869, %856
  %871 = fmul fast float %870, %867
  %872 = fmul fast float %871, %858
  %873 = fmul fast float %871, %859
  %874 = fmul fast float %871, %860
  %875 = fadd fast float %872, %663
  %876 = fadd fast float %873, %664
  %877 = fadd fast float %874, %665
  %878 = fmul fast float %871, %861
  %879 = fadd fast float %878, %666
  %880 = fadd fast float %871, %667
  br label %881

; <label>:881                                     ; preds = %855, %699
  %882 = phi float [ %875, %855 ], [ %663, %699 ]
  %883 = phi float [ %876, %855 ], [ %664, %699 ]
  %884 = phi float [ %877, %855 ], [ %665, %699 ]
  %885 = phi float [ %879, %855 ], [ %666, %699 ]
  %886 = phi float [ %880, %855 ], [ %667, %699 ]
  %887 = and i32 %362, 1
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %1165, label %889, !dx.controlflow.hints !78

; <label>:889                                     ; preds = %881
  %890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.i32 %890, 1
  %892 = and i32 %891, 1
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %969, label %894, !dx.controlflow.hints !79

; <label>:894                                     ; preds = %889
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 180)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 3
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %899 = extractvalue %dx.types.CBufRet.f32 %897, 1
  %900 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %902 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %906 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 3
  %909 = and i32 %891, 2
  %910 = extractvalue %dx.types.CBufRet.i32 %890, 0
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %948, label %912

; <label>:912                                     ; preds = %894
  br label %913

; <label>:913                                     ; preds = %913, %912
  %914 = phi float [ %942, %913 ], [ 0.000000e+00, %912 ]
  %915 = phi float [ %941, %913 ], [ 1.000000e+06, %912 ]
  %916 = phi i32 [ %943, %913 ], [ 0, %912 ]
  %917 = add i32 %916, 171
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %917)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %923 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %924 = fsub fast float %199, %919
  %925 = fsub fast float %200, %920
  %926 = fmul fast float %924, %924
  %927 = fmul fast float %925, %925
  %928 = fadd fast float %926, %927
  %929 = call float @dx.op.unary.f32(i32 24, float %928)  ; Sqrt(value)
  %930 = fsub fast float %929, %923
  %931 = icmp ne i32 %909, 0
  %932 = fsub fast float -0.000000e+00, %899
  %933 = select i1 %931, float %932, float %899
  %934 = fmul fast float %930, %933
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = fmul fast float %935, %898
  %937 = fsub fast float %922, %201
  %938 = fmul fast float %937, %896
  %939 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  %940 = fmul fast float %936, %939
  %941 = call float @dx.op.binary.f32(i32 36, float %915, float %930)  ; FMin(a,b)
  %942 = call float @dx.op.binary.f32(i32 35, float %914, float %940)  ; FMax(a,b)
  %943 = add nuw nsw i32 %916, 1
  %944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.i32 %944, 0
  %946 = icmp ult i32 %943, %945
  br i1 %946, label %913, label %947

; <label>:947                                     ; preds = %913
  br label %948

; <label>:948                                     ; preds = %947, %894
  %949 = phi float [ 0.000000e+00, %894 ], [ %942, %947 ]
  %950 = phi float [ 1.000000e+06, %894 ], [ %941, %947 ]
  %951 = fadd fast float %949, %886
  %952 = fmul fast float %950, %908
  %953 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  %954 = fsub fast float %904, %900
  %955 = fsub fast float %905, %901
  %956 = fsub fast float %906, %902
  %957 = fmul fast float %953, %954
  %958 = fmul fast float %953, %955
  %959 = fmul fast float %953, %956
  %960 = fadd fast float %957, %900
  %961 = fadd fast float %958, %901
  %962 = fadd fast float %959, %902
  %963 = fmul fast float %960, %949
  %964 = fmul fast float %961, %949
  %965 = fmul fast float %962, %949
  %966 = fadd fast float %963, %882
  %967 = fadd fast float %964, %883
  %968 = fadd fast float %965, %884
  br label %1165

; <label>:969                                     ; preds = %889
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %972 = extractvalue %dx.types.CBufRet.f32 %970, 3
  %973 = fmul fast float %971, %199
  %974 = fmul fast float %972, %200
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %978 = fadd fast float %973, %976
  %979 = fadd fast float %974, %977
  %980 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %981 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %980, float %981, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = fmul fast float %985, %983
  %987 = fsub fast float %978, %980
  %988 = fsub fast float %979, %981
  %989 = extractvalue %dx.types.CBufRet.f32 %970, 0
  %990 = extractvalue %dx.types.CBufRet.f32 %970, 1
  %991 = fmul fast float %989, %987
  %992 = fmul fast float %990, %988
  %993 = fmul fast float %991, %991
  %994 = fmul fast float %992, %992
  %995 = fadd fast float %993, %994
  %996 = call float @dx.op.unary.f32(i32 24, float %995)  ; Sqrt(value)
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 3
  %999 = fmul fast float %998, %996
  %1000 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1001 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1002 = fsub fast float %1001, %986
  %1003 = fmul fast float %1002, %1000
  %1004 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %1005 = fsub fast float %201, %986
  %1006 = fsub fast float %1005, %1004
  %1007 = fsub fast float %1006, %1003
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1010 = fsub fast float %1007, %1009
  %1011 = fcmp fast olt float %1010, 0.000000e+00
  %1012 = extractvalue %dx.types.CBufRet.i32 %890, 0
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1064, label %1014

; <label>:1014                                    ; preds = %969
  br label %1015

; <label>:1015                                    ; preds = %1053, %1014
  %1016 = phi i32 [ %1059, %1053 ], [ 1, %1014 ]
  %1017 = phi i32 [ %1060, %1053 ], [ 0, %1014 ]
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.i32 %1020, 1
  %1022 = and i32 %1021, 8
  %1023 = icmp eq i32 %1022, 0
  %1024 = fcmp fast ogt float %1019, %1007
  %1025 = or i1 %1024, %1023
  %1026 = add i32 %1017, 171
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %1026)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  br i1 %1025, label %1031, label %1037, !dx.controlflow.hints !80

; <label>:1031                                    ; preds = %1015
  %1032 = fsub fast float %1028, %199
  %1033 = fsub fast float %1029, %200
  %1034 = fmul fast float %1032, %1032
  %1035 = fmul fast float %1033, %1033
  %1036 = fadd fast float %1034, %1035
  br label %1053

; <label>:1037                                    ; preds = %1015
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1040 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1041 = fmul fast float %1040, %1039
  %1042 = fsub fast float %1041, %1019
  %1043 = fdiv fast float %1030, %1042
  %1044 = fsub fast float %199, %1028
  %1045 = fsub fast float %200, %1029
  %1046 = fsub fast float %1007, %1019
  %1047 = fmul fast float %1043, %1046
  %1048 = fmul fast float %1044, %1044
  %1049 = fmul fast float %1045, %1045
  %1050 = fadd fast float %1048, %1049
  %1051 = fmul fast float %1047, %1047
  %1052 = fadd fast float %1050, %1051
  br label %1053

; <label>:1053                                    ; preds = %1037, %1031
  %1054 = phi float [ %1036, %1031 ], [ %1052, %1037 ]
  %1055 = call float @dx.op.unary.f32(i32 24, float %1054)  ; Sqrt(value)
  %1056 = fsub float %1030, %1055
  %1057 = fcmp fast olt float %1056, 0.000000e+00
  %1058 = zext i1 %1057 to i32
  %1059 = and i32 %1058, %1016
  %1060 = add i32 %1017, 1
  %1061 = extractvalue %dx.types.CBufRet.i32 %1020, 0
  %1062 = icmp ult i32 %1060, %1061
  br i1 %1062, label %1015, label %1063

; <label>:1063                                    ; preds = %1053
  br label %1064

; <label>:1064                                    ; preds = %1063, %969
  %1065 = phi i32 [ 1, %969 ], [ %1059, %1063 ]
  br label %1066

; <label>:1066                                    ; preds = %1066, %1064
  %1067 = phi i32 [ %1103, %1066 ], [ %1065, %1064 ]
  %1068 = phi i32 [ %1104, %1066 ], [ 0, %1064 ]
  %1069 = add nuw nsw i32 %1068, 191
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %1069)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1072 = extractvalue %dx.types.CBufRet.f32 %1070, 1
  %1073 = extractvalue %dx.types.CBufRet.f32 %1070, 2
  %1074 = add nuw nsw i32 %1068, 195
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %1074)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1079 = fsub fast float %199, %1071
  %1080 = fsub fast float %200, %1072
  %1081 = fsub fast float %1007, %1073
  %1082 = call float @dx.op.unary.f32(i32 6, float %1079)  ; FAbs(value)
  %1083 = call float @dx.op.unary.f32(i32 6, float %1080)  ; FAbs(value)
  %1084 = call float @dx.op.unary.f32(i32 6, float %1081)  ; FAbs(value)
  %1085 = fsub fast float %1082, %1076
  %1086 = fsub fast float %1083, %1077
  %1087 = fsub fast float %1084, %1078
  %1088 = call float @dx.op.binary.f32(i32 35, float %1085, float 0.000000e+00)  ; FMax(a,b)
  %1089 = call float @dx.op.binary.f32(i32 35, float %1086, float 0.000000e+00)  ; FMax(a,b)
  %1090 = call float @dx.op.binary.f32(i32 35, float %1087, float 0.000000e+00)  ; FMax(a,b)
  %1091 = fmul fast float %1088, %1088
  %1092 = fmul fast float %1089, %1089
  %1093 = fadd fast float %1092, %1091
  %1094 = fmul fast float %1090, %1090
  %1095 = fadd fast float %1093, %1094
  %1096 = call float @dx.op.unary.f32(i32 24, float %1095)  ; Sqrt(value)
  %1097 = call float @dx.op.binary.f32(i32 35, float %1086, float %1087)  ; FMax(a,b)
  %1098 = call float @dx.op.binary.f32(i32 35, float %1085, float %1097)  ; FMax(a,b)
  %1099 = call float @dx.op.binary.f32(i32 36, float %1098, float 0.000000e+00)  ; FMin(a,b)
  %1100 = fadd fast float %1099, %1096
  %1101 = fcmp ogt float %1100, -0.000000e+00
  %1102 = zext i1 %1101 to i32
  %1103 = and i32 %1102, %1067
  %1104 = add nuw nsw i32 %1068, 1
  %1105 = icmp eq i32 %1104, 4
  br i1 %1105, label %1106, label %1066

; <label>:1106                                    ; preds = %1066
  %1107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.i32 %1107, 1
  %1109 = lshr i32 %1108, 1
  %1110 = xor i32 %1109, %1103
  %1111 = zext i1 %1011 to i32
  %1112 = and i32 %1110, %1111
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1165, label %1114, !dx.controlflow.hints !81

; <label>:1114                                    ; preds = %1106
  %1115 = fmul fast float %192, %192
  %1116 = fmul fast float %193, %193
  %1117 = fadd fast float %1115, %1116
  %1118 = fmul fast float %194, %194
  %1119 = fadd fast float %1117, %1118
  %1120 = call float @dx.op.unary.f32(i32 24, float %1119)  ; Sqrt(value)
  %1121 = and i32 %891, 4
  %1122 = icmp ne i32 %1121, 0
  %1123 = select i1 %1122, float %1120, float 1.000000e+00
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 190)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1126 = fsub fast float %1123, %1125
  %1127 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1128 = fmul fast float %1126, %1127
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 188)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1134 = fsub fast float %1133, %1007
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 189)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 3
  %1137 = fmul fast float %1134, %1136
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1139 = fmul fast float %1138, %1131
  %1140 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1141 = fsub fast float %1120, %1140
  %1142 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1143 = fmul fast float %1141, %1142
  %1144 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  %1145 = fsub fast float 1.000000e+00, %1129
  %1146 = fmul fast float %1144, %1145
  %1147 = fadd fast float %1146, %1129
  %1148 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1149 = fsub fast float %1139, %1148
  %1150 = fmul fast float %1149, %1147
  %1151 = fadd fast float %1150, %1148
  %1152 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1153 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1154 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1155 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1156 = fadd fast float %1151, %886
  %1157 = fmul fast float %1151, %1152
  %1158 = fmul fast float %1151, %1153
  %1159 = fmul fast float %1151, %1154
  %1160 = fadd fast float %1157, %882
  %1161 = fadd fast float %1158, %883
  %1162 = fadd fast float %1159, %884
  %1163 = fmul fast float %1151, %1155
  %1164 = fadd fast float %1163, %885
  br label %1165

; <label>:1165                                    ; preds = %1114, %1106, %948, %881
  %1166 = phi float [ %882, %881 ], [ %966, %948 ], [ %1160, %1114 ], [ %882, %1106 ]
  %1167 = phi float [ %883, %881 ], [ %967, %948 ], [ %1161, %1114 ], [ %883, %1106 ]
  %1168 = phi float [ %884, %881 ], [ %968, %948 ], [ %1162, %1114 ], [ %884, %1106 ]
  %1169 = phi float [ %885, %881 ], [ %885, %948 ], [ %1164, %1114 ], [ %885, %1106 ]
  %1170 = phi float [ %886, %881 ], [ %951, %948 ], [ %1156, %1114 ], [ %886, %1106 ]
  %1171 = and i32 %362, 16
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1964, label %1173, !dx.controlflow.hints !82

; <label>:1173                                    ; preds = %1165
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 411)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.CBufRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.CBufRet.f32 %1174, 2
  %1178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 417)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1178, 3
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 415)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 419)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 3
  %1184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.i32 %1184, 0
  %1186 = icmp ne i32 %1185, 0
  %1187 = zext i1 %1186 to i32
  %1188 = extractvalue %dx.types.CBufRet.i32 %1184, 1
  %1189 = icmp ne i32 %1188, 0
  %1190 = zext i1 %1189 to i32
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 0
  %1193 = bitcast float %1192 to i32
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1244, label %1195

; <label>:1195                                    ; preds = %1173
  br label %1196

; <label>:1196                                    ; preds = %1239, %1195
  %1197 = phi i32 [ %1240, %1239 ], [ 0, %1195 ]
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 0
  %1200 = bitcast float %1199 to i32
  %1201 = call i32 @dx.op.tertiary.i32(i32 49, i32 %360, i32 %1200, i32 %1197)  ; UMad(a,b,c)
  %1202 = shl i32 %1201, 2
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  br label %1205

; <label>:1205                                    ; preds = %1208, %1196
  %1206 = phi i32 [ %1204, %1196 ], [ %1213, %1208 ]
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1239, label %1208

; <label>:1208                                    ; preds = %1205
  %1209 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1206)  ; FirstbitLo(value)
  %1210 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1197, i32 %1209)  ; UMad(a,b,c)
  %1211 = and i32 %1209, 31
  %1212 = shl i32 1, %1211
  %1213 = xor i32 %1212, %1206
  %1214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1210, i32 0)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1210, i32 16)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = fsub fast float %1215, %1219
  %1223 = fsub fast float %1216, %1220
  %1224 = fsub fast float %1217, %1221
  %1225 = fadd fast float %1219, %1215
  %1226 = fadd fast float %1220, %1216
  %1227 = fadd fast float %1221, %1217
  %1228 = fcmp fast ogt float %199, %1222
  %1229 = fcmp fast ogt float %200, %1223
  %1230 = fcmp fast ogt float %201, %1224
  %1231 = and i1 %1228, %1229
  %1232 = and i1 %1230, %1231
  %1233 = fcmp fast olt float %199, %1225
  %1234 = fcmp fast olt float %200, %1226
  %1235 = fcmp fast olt float %201, %1227
  %1236 = and i1 %1233, %1234
  %1237 = and i1 %1235, %1236
  %1238 = and i1 %1232, %1237
  br i1 %1238, label %1242, label %1205, !dx.controlflow.hints !83

; <label>:1239                                    ; preds = %1205
  %1240 = add i32 %1197, 1
  %1241 = icmp ult i32 %1240, %1200
  br i1 %1241, label %1196, label %1243, !llvm.loop !84

; <label>:1242                                    ; preds = %1208
  br label %1244

; <label>:1243                                    ; preds = %1239
  br label %1244

; <label>:1244                                    ; preds = %1243, %1242, %1173
  %1245 = phi i32 [ 255, %1173 ], [ %1210, %1242 ], [ 255, %1243 ]
  %1246 = icmp eq i32 %1245, 255
  br i1 %1246, label %1266, label %1247, !dx.controlflow.hints !86

; <label>:1247                                    ; preds = %1244
  %1248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 32)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 132)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 136)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 152)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1245, i32 156)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1245, i32 160)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = icmp ne i32 %1259, 0
  %1263 = zext i1 %1262 to i32
  %1264 = icmp ne i32 %1261, 0
  %1265 = zext i1 %1264 to i32
  br label %1266

; <label>:1266                                    ; preds = %1247, %1244
  %1267 = phi float [ %1249, %1247 ], [ %1175, %1244 ]
  %1268 = phi float [ %1250, %1247 ], [ %1176, %1244 ]
  %1269 = phi float [ %1251, %1247 ], [ %1177, %1244 ]
  %1270 = phi float [ %1253, %1247 ], [ %1179, %1244 ]
  %1271 = phi float [ %1255, %1247 ], [ %1181, %1244 ]
  %1272 = phi float [ %1257, %1247 ], [ %1183, %1244 ]
  %1273 = phi i32 [ %1263, %1247 ], [ %1187, %1244 ]
  %1274 = phi i32 [ %1265, %1247 ], [ %1190, %1244 ]
  %1275 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1276 = extractvalue %dx.types.CBufRet.f32 %1180, 1
  %1277 = fsub fast float %199, %1275
  %1278 = fsub fast float %200, %1276
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 414)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1282 = fmul fast float %1277, %1280
  %1283 = fmul fast float %1278, %1281
  %1284 = call float @dx.op.binary.f32(i32 36, float %1282, float %1283)  ; FMin(a,b)
  %1285 = fcmp fast olt float %1284, 0.000000e+00
  %1286 = call float @dx.op.binary.f32(i32 35, float %1282, float %1283)  ; FMax(a,b)
  %1287 = fcmp fast ogt float %1286, 1.000000e+00
  %1288 = or i1 %1285, %1287
  %1289 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1290 = fcmp fast olt float %201, %1289
  %1291 = or i1 %1288, %1290
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 408)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 3
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 409)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = fadd fast float %1295, %1293
  %1297 = fcmp fast ogt float %201, %1296
  %1298 = or i1 %1291, %1297
  br i1 %1298, label %1583, label %1299, !dx.controlflow.hints !87

; <label>:1299                                    ; preds = %1266
  %1300 = fsub fast float 1.000000e+00, %1283
  %1301 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 3
  %1304 = extractvalue %dx.types.CBufRet.f32 %1302, 2
  %1305 = extractvalue %dx.types.CBufRet.f32 %1302, 1
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1310 = extractvalue %dx.types.CBufRet.f32 %1302, 0
  br i1 %1246, label %1326, label %1311, !dx.controlflow.hints !88

; <label>:1311                                    ; preds = %1299
  %1312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 48)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.ResRet.f32 %1312, 1
  %1315 = extractvalue %dx.types.ResRet.f32 %1312, 2
  %1316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 104)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 108)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 112)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 116)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  %1324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 120)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  br label %1326

; <label>:1326                                    ; preds = %1311, %1299
  %1327 = phi float [ %1319, %1311 ], [ %1301, %1299 ]
  %1328 = phi float [ %1323, %1311 ], [ %1303, %1299 ]
  %1329 = phi float [ %1325, %1311 ], [ %1304, %1299 ]
  %1330 = phi float [ %1321, %1311 ], [ %1305, %1299 ]
  %1331 = phi float [ %1313, %1311 ], [ %1307, %1299 ]
  %1332 = phi float [ %1314, %1311 ], [ %1308, %1299 ]
  %1333 = phi float [ %1315, %1311 ], [ %1309, %1299 ]
  %1334 = phi float [ %1317, %1311 ], [ %1310, %1299 ]
  %1335 = fcmp fast oeq float %1327, 0.000000e+00
  br i1 %1335, label %1451, label %1336, !dx.controlflow.hints !89

; <label>:1336                                    ; preds = %1326
  %1337 = fcmp fast ogt float %1328, 0.000000e+00
  %1338 = fcmp fast oeq float %443, 0.000000e+00
  br i1 %1338, label %1343, label %1339, !dx.controlflow.hints !73

; <label>:1339                                    ; preds = %1336
  %1340 = extractvalue %dx.types.CBufRet.f32 %1178, 1
  %1341 = fmul fast float %1340, %443
  %1342 = call float @dx.op.unary.f32(i32 23, float %1341)  ; Log(value)
  br label %1343

; <label>:1343                                    ; preds = %1339, %1336
  %1344 = phi float [ %1342, %1339 ], [ 0.000000e+00, %1336 ]
  br i1 %1338, label %1349, label %1345, !dx.controlflow.hints !73

; <label>:1345                                    ; preds = %1343
  %1346 = extractvalue %dx.types.CBufRet.f32 %1178, 0
  %1347 = fmul fast float %1346, %443
  %1348 = call float @dx.op.unary.f32(i32 23, float %1347)  ; Log(value)
  br label %1349

; <label>:1349                                    ; preds = %1345, %1343
  %1350 = phi float [ %1348, %1345 ], [ 0.000000e+00, %1343 ]
  br i1 %1337, label %1351, label %1413, !dx.controlflow.hints !90

; <label>:1351                                    ; preds = %1349
  %1352 = fcmp fast ogt float %1329, 0.000000e+00
  br i1 %1352, label %1353, label %1363, !dx.controlflow.hints !91

; <label>:1353                                    ; preds = %1351
  %1354 = fmul fast float %1329, %1282
  %1355 = fmul fast float %1329, %1300
  %1356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float %1350)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = fmul fast float %1357, 2.000000e+00
  %1360 = fmul fast float %1358, 2.000000e+00
  %1361 = fadd fast float %1359, -1.000000e+00
  %1362 = fadd fast float %1360, -1.000000e+00
  br label %1384

; <label>:1363                                    ; preds = %1351
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 3
  %1366 = fmul fast float %1365, %1282
  %1367 = fmul fast float %1365, %1300
  %1368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = fmul fast float %1369, 2.000000e+00
  %1373 = fmul fast float %1370, 2.000000e+00
  %1374 = fmul fast float %1371, 2.000000e+00
  %1375 = fadd fast float %1372, -1.000000e+00
  %1376 = fadd fast float %1373, -1.000000e+00
  %1377 = fadd fast float %1374, -1.000000e+00
  %1378 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1379 = fmul fast float %1375, %1378
  %1380 = fmul fast float %1376, %1378
  %1381 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1382 = fmul fast float %1381, 5.000000e-01
  %1383 = fmul fast float %1382, %1377
  br label %1384

; <label>:1384                                    ; preds = %1363, %1353
  %1385 = phi float [ %1361, %1353 ], [ %1379, %1363 ]
  %1386 = phi float [ %1362, %1353 ], [ %1380, %1363 ]
  %1387 = phi float [ 0.000000e+00, %1353 ], [ %1383, %1363 ]
  %1388 = fmul fast float %1327, %199
  %1389 = fmul fast float %1327, %200
  %1390 = fmul fast float %1327, %201
  %1391 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1392 = fmul fast float %1391, %1385
  %1393 = fmul fast float %1391, %1386
  %1394 = fmul fast float %1391, %1387
  %1395 = fsub fast float %1388, %1392
  %1396 = fsub fast float %1389, %1393
  %1397 = fsub fast float %1390, %1394
  %1398 = fadd fast float %1328, 5.000000e-01
  %1399 = call float @dx.op.unary.f32(i32 22, float %1398)  ; Frc(value)
  %1400 = fmul fast float %1399, %1385
  %1401 = fmul fast float %1399, %1386
  %1402 = fmul fast float %1399, %1387
  %1403 = fadd fast float %1388, -5.000000e-01
  %1404 = fsub fast float %1403, %1400
  %1405 = fadd fast float %1389, -5.000000e-01
  %1406 = fsub fast float %1405, %1401
  %1407 = fadd fast float %1390, -5.000000e-01
  %1408 = fsub fast float %1407, %1402
  %1409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %1404, float %1406, float %1408, float undef, i32 0, i32 0, i32 0, float %1344)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.ResRet.f32 %1409, 1
  %1412 = fadd fast float %1410, %1330
  br label %1423

; <label>:1413                                    ; preds = %1349
  %1414 = fmul fast float %1334, %1331
  %1415 = fmul fast float %1334, %1332
  %1416 = fmul fast float %1334, %1333
  %1417 = fsub fast float %199, %1414
  %1418 = fsub fast float %200, %1415
  %1419 = fsub fast float %201, %1416
  %1420 = fmul fast float %1417, %1327
  %1421 = fmul fast float %1418, %1327
  %1422 = fmul fast float %1419, %1327
  br label %1423

; <label>:1423                                    ; preds = %1413, %1384
  %1424 = phi float [ %1395, %1384 ], [ %1420, %1413 ]
  %1425 = phi float [ %1396, %1384 ], [ %1421, %1413 ]
  %1426 = phi float [ %1397, %1384 ], [ %1422, %1413 ]
  %1427 = phi float [ %1412, %1384 ], [ 0.000000e+00, %1413 ]
  %1428 = phi float [ %1411, %1384 ], [ 0.000000e+00, %1413 ]
  %1429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %1424, float %1425, float %1426, float undef, i32 0, i32 0, i32 0, float %1344)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.ResRet.f32 %1429, 1
  %1432 = fadd fast float %1430, %1330
  br i1 %1337, label %1433, label %1444, !dx.controlflow.hints !92

; <label>:1433                                    ; preds = %1423
  %1434 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1435 = fmul fast float %1434, 2.000000e+00
  %1436 = fadd fast float %1435, -1.000000e+00
  %1437 = call float @dx.op.unary.f32(i32 6, float %1436)  ; FAbs(value)
  %1438 = fsub fast float %1427, %1432
  %1439 = fmul fast float %1437, %1438
  %1440 = fadd fast float %1439, %1432
  %1441 = fsub fast float %1428, %1431
  %1442 = fmul fast float %1437, %1441
  %1443 = fadd fast float %1442, %1431
  br label %1444

; <label>:1444                                    ; preds = %1433, %1423
  %1445 = phi float [ %1440, %1433 ], [ %1432, %1423 ]
  %1446 = phi float [ %1443, %1433 ], [ %1431, %1423 ]
  %1447 = fsub fast float %1445, %1446
  %1448 = fsub fast float 1.000000e+00, %1446
  %1449 = fdiv fast float %1447, %1448
  %1450 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  br label %1451

; <label>:1451                                    ; preds = %1444, %1326
  %1452 = phi float [ %1450, %1444 ], [ 1.000000e+00, %1326 ]
  %1453 = fcmp fast oeq float %443, 0.000000e+00
  br i1 %1453, label %1458, label %1454, !dx.controlflow.hints !73

; <label>:1454                                    ; preds = %1451
  %1455 = extractvalue %dx.types.CBufRet.f32 %1178, 2
  %1456 = fmul fast float %1455, %443
  %1457 = call float @dx.op.unary.f32(i32 23, float %1456)  ; Log(value)
  br label %1458

; <label>:1458                                    ; preds = %1454, %1451
  %1459 = phi float [ %1457, %1454 ], [ 0.000000e+00, %1451 ]
  %1460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %39, float %1282, float %1300, float undef, float undef, i32 0, i32 0, i32 undef, float %1459)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1282, float %1300, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.ResRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.ResRet.f32 %1462, 2
  %1466 = extractvalue %dx.types.ResRet.f32 %1462, 3
  %1467 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1282, float %1300, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.ResRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.ResRet.f32 %1467, 2
  %1471 = extractvalue %dx.types.ResRet.f32 %1467, 3
  %1472 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1282, float %1300, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.ResRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.ResRet.f32 %1472, 2
  %1476 = extractvalue %dx.types.ResRet.f32 %1472, 3
  %1477 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1282, float %1300, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.ResRet.f32 %1477, 1
  %1480 = extractvalue %dx.types.ResRet.f32 %1477, 2
  %1481 = extractvalue %dx.types.ResRet.f32 %1477, 3
  %1482 = fadd fast float %1463, %1464
  %1483 = fadd fast float %1482, %1465
  %1484 = fadd fast float %1483, %1466
  %1485 = fmul fast float %1468, %1463
  %1486 = fmul fast float %1469, %1464
  %1487 = fadd fast float %1485, %1486
  %1488 = fmul fast float %1470, %1465
  %1489 = fadd fast float %1487, %1488
  %1490 = fmul fast float %1471, %1466
  %1491 = fadd fast float %1489, %1490
  %1492 = fmul fast float %1473, %1463
  %1493 = fmul fast float %1474, %1464
  %1494 = fadd fast float %1492, %1493
  %1495 = fmul fast float %1475, %1465
  %1496 = fadd fast float %1494, %1495
  %1497 = fmul fast float %1476, %1466
  %1498 = fadd fast float %1496, %1497
  %1499 = fmul fast float %1478, %1463
  %1500 = fmul fast float %1479, %1464
  %1501 = fadd fast float %1499, %1500
  %1502 = fmul fast float %1480, %1465
  %1503 = fadd fast float %1501, %1502
  %1504 = fmul fast float %1481, %1466
  %1505 = fadd fast float %1503, %1504
  %1506 = fcmp fast ogt float %1484, 0.000000e+00
  %1507 = fdiv fast float %1491, %1484
  %1508 = select i1 %1506, float %1507, float 0.000000e+00
  %1509 = fdiv fast float %1498, %1484
  %1510 = select i1 %1506, float %1509, float 0.000000e+00
  %1511 = fdiv fast float %1505, %1484
  %1512 = select i1 %1506, float %1511, float 0.000000e+00
  %1513 = fcmp fast ogt float %201, %1510
  %1514 = fcmp fast olt float %201, %1508
  %1515 = and i1 %1514, %1513
  br i1 %1515, label %1516, label %1583, !dx.controlflow.hints !93

; <label>:1516                                    ; preds = %1458
  %1517 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 2
  %1520 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  br i1 %1246, label %1531, label %1521, !dx.controlflow.hints !94

; <label>:1521                                    ; preds = %1516
  %1522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 60)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.f32 %1522, 0
  %1524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 64)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.ResRet.f32 %1524, 1
  %1527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 72)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 96)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  br label %1531

; <label>:1531                                    ; preds = %1521, %1516
  %1532 = phi float [ %1523, %1521 ], [ %1295, %1516 ]
  %1533 = phi float [ %1528, %1521 ], [ %1293, %1516 ]
  %1534 = phi float [ %1530, %1521 ], [ %1517, %1516 ]
  %1535 = phi float [ %1525, %1521 ], [ %1519, %1516 ]
  %1536 = phi float [ %1526, %1521 ], [ %1520, %1516 ]
  %1537 = call float @dx.op.binary.f32(i32 35, float %1461, float 0.000000e+00)  ; FMax(a,b)
  %1538 = call float @dx.op.binary.f32(i32 36, float %1537, float 1.000000e+00)  ; FMin(a,b)
  %1539 = call float @dx.op.unary.f32(i32 24, float %1538)  ; Sqrt(value)
  %1540 = call float @dx.op.binary.f32(i32 35, float %1512, float 0x3F847AE140000000)  ; FMax(a,b)
  %1541 = fsub fast float %1508, %201
  %1542 = fsub fast float %201, %1510
  %1543 = call float @dx.op.binary.f32(i32 36, float %1542, float %1541)  ; FMin(a,b)
  %1544 = fdiv fast float %1543, %1540
  %1545 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1546 = fsub fast float %201, %1533
  %1547 = fdiv fast float %1546, %1532
  %1548 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1549 = fsub fast float 1.000000e+00, %1548
  %1550 = fmul float %1545, %1549
  %1551 = fmul float %1550, %1550
  %1552 = fmul fast float %1539, %1452
  %1553 = fmul fast float %1552, %1551
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 2
  %1556 = extractvalue %dx.types.CBufRet.f32 %1554, 1
  %1557 = fsub fast float %1553, %1556
  %1558 = fsub fast float %1555, %1556
  %1559 = fdiv fast float %1557, %1558
  %1560 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1561 = fmul fast float %1560, %1534
  %1562 = fcmp fast ogt float %1536, 0.000000e+00
  br i1 %1562, label %1563, label %1583, !dx.controlflow.hints !95

; <label>:1563                                    ; preds = %1531
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 0
  %1566 = extractvalue %dx.types.CBufRet.f32 %1564, 1
  %1567 = extractvalue %dx.types.CBufRet.f32 %1564, 2
  %1568 = fsub fast float %199, %1565
  %1569 = fsub fast float %200, %1566
  %1570 = fsub fast float %201, %1567
  %1571 = fmul fast float %1568, %1568
  %1572 = fmul fast float %1569, %1569
  %1573 = fadd fast float %1571, %1572
  %1574 = fmul fast float %1570, %1570
  %1575 = fadd fast float %1573, %1574
  %1576 = call float @dx.op.unary.f32(i32 24, float %1575)  ; Sqrt(value)
  %1577 = fsub fast float %1576, %1535
  %1578 = fsub fast float %1536, %1535
  %1579 = fdiv fast float %1577, %1578
  %1580 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1581 = fmul fast float %1580, %1580
  %1582 = fmul fast float %1581, %1561
  br label %1583

; <label>:1583                                    ; preds = %1563, %1531, %1458, %1266
  %1584 = phi float [ 0.000000e+00, %1266 ], [ 0.000000e+00, %1458 ], [ %1582, %1563 ], [ %1561, %1531 ]
  %1585 = fcmp fast oeq float %1584, 0.000000e+00
  br i1 %1585, label %1964, label %1586, !dx.controlflow.hints !96

; <label>:1586                                    ; preds = %1583
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 0
  %1589 = extractvalue %dx.types.CBufRet.f32 %1587, 1
  %1590 = extractvalue %dx.types.CBufRet.f32 %1587, 2
  %1591 = fsub fast float %199, %1588
  %1592 = fadd fast float %1591, %1590
  %1593 = fsub fast float %200, %1589
  %1594 = fadd fast float %1593, %1590
  %1595 = extractvalue %dx.types.CBufRet.f32 %1587, 3
  %1596 = fmul fast float %1592, %1595
  %1597 = fmul fast float %1594, %1595
  %1598 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1599 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1600 = fsub fast float 1.000000e+00, %1598
  %1601 = fsub fast float 1.000000e+00, %1599
  %1602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %1600, float %1601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 2
  %1606 = fmul fast float %1605, %1603
  %1607 = extractvalue %dx.types.CBufRet.f32 %1604, 3
  %1608 = fadd fast float %1607, %1606
  %1609 = fcmp fast ogt float %1603, 0.000000e+00
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 32768
  %1613 = icmp ne i32 %1612, 0
  %1614 = and i1 %1609, %1613
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 3
  %1617 = fadd fast float %1616, %1608
  %1618 = fcmp fast ole float %201, %1617
  %1619 = and i1 %1614, %1618
  %1620 = xor i1 %1619, true
  %1621 = icmp ne i32 %1273, 0
  %1622 = and i1 %1621, %1620
  %1623 = icmp ne i32 %1274, 0
  %1624 = and i1 %1623, %1619
  %1625 = or i1 %1622, %1624
  br i1 %1625, label %1964, label %1626, !dx.controlflow.hints !97

; <label>:1626                                    ; preds = %1586
  %1627 = fsub fast float %201, %1608
  %1628 = call float @dx.op.unary.f32(i32 6, float %1627)  ; FAbs(value)
  %1629 = fdiv fast float %1628, %1272
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = fmul fast float %1630, %1584
  %1632 = fcmp fast une float %1270, 0.000000e+00
  br i1 %1632, label %1633, label %1952, !dx.controlflow.hints !98

; <label>:1633                                    ; preds = %1626
  %1634 = fmul fast float %1270, %123
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1639 = fmul fast float %1636, %1634
  %1640 = fmul fast float %1637, %1634
  %1641 = fmul fast float %1638, %1634
  %1642 = fadd fast float %1639, %199
  %1643 = fadd fast float %1640, %200
  %1644 = fadd fast float %1641, %201
  %1645 = fmul fast float %1270, 2.000000e+00
  %1646 = call float @dx.op.binary.f32(i32 35, float %443, float %1645)  ; FMax(a,b)
  %1647 = fsub fast float %1642, %1275
  %1648 = fsub fast float %1643, %1276
  %1649 = fmul fast float %1647, %1280
  %1650 = fmul fast float %1648, %1281
  %1651 = call float @dx.op.binary.f32(i32 36, float %1649, float %1650)  ; FMin(a,b)
  %1652 = fcmp fast olt float %1651, 0.000000e+00
  %1653 = call float @dx.op.binary.f32(i32 35, float %1649, float %1650)  ; FMax(a,b)
  %1654 = fcmp fast ogt float %1653, 1.000000e+00
  %1655 = or i1 %1652, %1654
  %1656 = fcmp fast olt float %1644, %1289
  %1657 = or i1 %1655, %1656
  %1658 = fcmp fast ogt float %1644, %1296
  %1659 = or i1 %1657, %1658
  br i1 %1659, label %1944, label %1660, !dx.controlflow.hints !87

; <label>:1660                                    ; preds = %1633
  %1661 = fsub fast float 1.000000e+00, %1650
  %1662 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 410)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 3
  %1665 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1666 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 413)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.CBufRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.CBufRet.f32 %1667, 2
  %1671 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  br i1 %1246, label %1687, label %1672, !dx.controlflow.hints !88

; <label>:1672                                    ; preds = %1660
  %1673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 48)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.ResRet.f32 %1673, 1
  %1676 = extractvalue %dx.types.ResRet.f32 %1673, 2
  %1677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 104)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.f32 %1677, 0
  %1679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 108)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.f32 %1679, 0
  %1681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 112)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.f32 %1681, 0
  %1683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 116)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.f32 %1683, 0
  %1685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 120)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  br label %1687

; <label>:1687                                    ; preds = %1672, %1660
  %1688 = phi float [ %1680, %1672 ], [ %1662, %1660 ]
  %1689 = phi float [ %1684, %1672 ], [ %1664, %1660 ]
  %1690 = phi float [ %1686, %1672 ], [ %1665, %1660 ]
  %1691 = phi float [ %1682, %1672 ], [ %1666, %1660 ]
  %1692 = phi float [ %1674, %1672 ], [ %1668, %1660 ]
  %1693 = phi float [ %1675, %1672 ], [ %1669, %1660 ]
  %1694 = phi float [ %1676, %1672 ], [ %1670, %1660 ]
  %1695 = phi float [ %1678, %1672 ], [ %1671, %1660 ]
  %1696 = fcmp fast oeq float %1688, 0.000000e+00
  br i1 %1696, label %1812, label %1697, !dx.controlflow.hints !89

; <label>:1697                                    ; preds = %1687
  %1698 = fcmp fast ogt float %1689, 0.000000e+00
  %1699 = fcmp fast oeq float %1646, 0.000000e+00
  br i1 %1699, label %1704, label %1700, !dx.controlflow.hints !73

; <label>:1700                                    ; preds = %1697
  %1701 = extractvalue %dx.types.CBufRet.f32 %1178, 1
  %1702 = fmul fast float %1701, %1646
  %1703 = call float @dx.op.unary.f32(i32 23, float %1702)  ; Log(value)
  br label %1704

; <label>:1704                                    ; preds = %1700, %1697
  %1705 = phi float [ %1703, %1700 ], [ 0.000000e+00, %1697 ]
  br i1 %1699, label %1710, label %1706, !dx.controlflow.hints !73

; <label>:1706                                    ; preds = %1704
  %1707 = extractvalue %dx.types.CBufRet.f32 %1178, 0
  %1708 = fmul fast float %1707, %1646
  %1709 = call float @dx.op.unary.f32(i32 23, float %1708)  ; Log(value)
  br label %1710

; <label>:1710                                    ; preds = %1706, %1704
  %1711 = phi float [ %1709, %1706 ], [ 0.000000e+00, %1704 ]
  br i1 %1698, label %1712, label %1774, !dx.controlflow.hints !90

; <label>:1712                                    ; preds = %1710
  %1713 = fcmp fast ogt float %1690, 0.000000e+00
  br i1 %1713, label %1714, label %1724, !dx.controlflow.hints !91

; <label>:1714                                    ; preds = %1712
  %1715 = fmul fast float %1690, %1649
  %1716 = fmul fast float %1690, %1661
  %1717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %1715, float %1716, float undef, float undef, i32 0, i32 0, i32 undef, float %1711)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1720 = fmul fast float %1718, 2.000000e+00
  %1721 = fmul fast float %1719, 2.000000e+00
  %1722 = fadd fast float %1720, -1.000000e+00
  %1723 = fadd fast float %1721, -1.000000e+00
  br label %1745

; <label>:1724                                    ; preds = %1712
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 3
  %1727 = fmul fast float %1726, %1649
  %1728 = fmul fast float %1726, %1661
  %1729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1727, float %1728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.ResRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.ResRet.f32 %1729, 2
  %1733 = fmul fast float %1730, 2.000000e+00
  %1734 = fmul fast float %1731, 2.000000e+00
  %1735 = fmul fast float %1732, 2.000000e+00
  %1736 = fadd fast float %1733, -1.000000e+00
  %1737 = fadd fast float %1734, -1.000000e+00
  %1738 = fadd fast float %1735, -1.000000e+00
  %1739 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1740 = fmul fast float %1736, %1739
  %1741 = fmul fast float %1737, %1739
  %1742 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1743 = fmul fast float %1742, 5.000000e-01
  %1744 = fmul fast float %1743, %1738
  br label %1745

; <label>:1745                                    ; preds = %1724, %1714
  %1746 = phi float [ %1722, %1714 ], [ %1740, %1724 ]
  %1747 = phi float [ %1723, %1714 ], [ %1741, %1724 ]
  %1748 = phi float [ 0.000000e+00, %1714 ], [ %1744, %1724 ]
  %1749 = fmul fast float %1688, %1642
  %1750 = fmul fast float %1688, %1643
  %1751 = fmul fast float %1688, %1644
  %1752 = call float @dx.op.unary.f32(i32 22, float %1689)  ; Frc(value)
  %1753 = fmul fast float %1752, %1746
  %1754 = fmul fast float %1752, %1747
  %1755 = fmul fast float %1752, %1748
  %1756 = fsub fast float %1749, %1753
  %1757 = fsub fast float %1750, %1754
  %1758 = fsub fast float %1751, %1755
  %1759 = fadd fast float %1689, 5.000000e-01
  %1760 = call float @dx.op.unary.f32(i32 22, float %1759)  ; Frc(value)
  %1761 = fmul fast float %1760, %1746
  %1762 = fmul fast float %1760, %1747
  %1763 = fmul fast float %1760, %1748
  %1764 = fadd fast float %1749, -5.000000e-01
  %1765 = fsub fast float %1764, %1761
  %1766 = fadd fast float %1750, -5.000000e-01
  %1767 = fsub fast float %1766, %1762
  %1768 = fadd fast float %1751, -5.000000e-01
  %1769 = fsub fast float %1768, %1763
  %1770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %1765, float %1767, float %1769, float undef, i32 0, i32 0, i32 0, float %1705)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = fadd fast float %1771, %1691
  br label %1784

; <label>:1774                                    ; preds = %1710
  %1775 = fmul fast float %1695, %1692
  %1776 = fmul fast float %1695, %1693
  %1777 = fmul fast float %1695, %1694
  %1778 = fsub fast float %1642, %1775
  %1779 = fsub fast float %1643, %1776
  %1780 = fsub fast float %1644, %1777
  %1781 = fmul fast float %1778, %1688
  %1782 = fmul fast float %1779, %1688
  %1783 = fmul fast float %1780, %1688
  br label %1784

; <label>:1784                                    ; preds = %1774, %1745
  %1785 = phi float [ %1756, %1745 ], [ %1781, %1774 ]
  %1786 = phi float [ %1757, %1745 ], [ %1782, %1774 ]
  %1787 = phi float [ %1758, %1745 ], [ %1783, %1774 ]
  %1788 = phi float [ %1773, %1745 ], [ 0.000000e+00, %1774 ]
  %1789 = phi float [ %1772, %1745 ], [ 0.000000e+00, %1774 ]
  %1790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %1785, float %1786, float %1787, float undef, i32 0, i32 0, i32 0, float %1705)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1791 = extractvalue %dx.types.ResRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.ResRet.f32 %1790, 1
  %1793 = fadd fast float %1791, %1691
  br i1 %1698, label %1794, label %1805, !dx.controlflow.hints !92

; <label>:1794                                    ; preds = %1784
  %1795 = call float @dx.op.unary.f32(i32 22, float %1689)  ; Frc(value)
  %1796 = fmul fast float %1795, 2.000000e+00
  %1797 = fadd fast float %1796, -1.000000e+00
  %1798 = call float @dx.op.unary.f32(i32 6, float %1797)  ; FAbs(value)
  %1799 = fsub fast float %1788, %1793
  %1800 = fmul fast float %1798, %1799
  %1801 = fadd fast float %1800, %1793
  %1802 = fsub fast float %1789, %1792
  %1803 = fmul fast float %1798, %1802
  %1804 = fadd fast float %1803, %1792
  br label %1805

; <label>:1805                                    ; preds = %1794, %1784
  %1806 = phi float [ %1801, %1794 ], [ %1793, %1784 ]
  %1807 = phi float [ %1804, %1794 ], [ %1792, %1784 ]
  %1808 = fsub fast float %1806, %1807
  %1809 = fsub fast float 1.000000e+00, %1807
  %1810 = fdiv fast float %1808, %1809
  %1811 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  br label %1812

; <label>:1812                                    ; preds = %1805, %1687
  %1813 = phi float [ %1811, %1805 ], [ 1.000000e+00, %1687 ]
  %1814 = fcmp fast oeq float %1646, 0.000000e+00
  br i1 %1814, label %1819, label %1815, !dx.controlflow.hints !73

; <label>:1815                                    ; preds = %1812
  %1816 = extractvalue %dx.types.CBufRet.f32 %1178, 2
  %1817 = fmul fast float %1816, %1646
  %1818 = call float @dx.op.unary.f32(i32 23, float %1817)  ; Log(value)
  br label %1819

; <label>:1819                                    ; preds = %1815, %1812
  %1820 = phi float [ %1818, %1815 ], [ 0.000000e+00, %1812 ]
  %1821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %39, float %1649, float %1661, float undef, float undef, i32 0, i32 0, i32 undef, float %1820)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1822 = extractvalue %dx.types.ResRet.f32 %1821, 0
  %1823 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1649, float %1661, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.ResRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.ResRet.f32 %1823, 2
  %1827 = extractvalue %dx.types.ResRet.f32 %1823, 3
  %1828 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1649, float %1661, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.ResRet.f32 %1828, 1
  %1831 = extractvalue %dx.types.ResRet.f32 %1828, 2
  %1832 = extractvalue %dx.types.ResRet.f32 %1828, 3
  %1833 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1649, float %1661, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.ResRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.ResRet.f32 %1833, 2
  %1837 = extractvalue %dx.types.ResRet.f32 %1833, 3
  %1838 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %41, float %1649, float %1661, float undef, float undef, i32 0, i32 0, i32 3)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.ResRet.f32 %1838, 1
  %1841 = extractvalue %dx.types.ResRet.f32 %1838, 2
  %1842 = extractvalue %dx.types.ResRet.f32 %1838, 3
  %1843 = fadd fast float %1824, %1825
  %1844 = fadd fast float %1843, %1826
  %1845 = fadd fast float %1844, %1827
  %1846 = fmul fast float %1829, %1824
  %1847 = fmul fast float %1830, %1825
  %1848 = fadd fast float %1846, %1847
  %1849 = fmul fast float %1831, %1826
  %1850 = fadd fast float %1848, %1849
  %1851 = fmul fast float %1832, %1827
  %1852 = fadd fast float %1850, %1851
  %1853 = fmul fast float %1834, %1824
  %1854 = fmul fast float %1835, %1825
  %1855 = fadd fast float %1853, %1854
  %1856 = fmul fast float %1836, %1826
  %1857 = fadd fast float %1855, %1856
  %1858 = fmul fast float %1837, %1827
  %1859 = fadd fast float %1857, %1858
  %1860 = fmul fast float %1839, %1824
  %1861 = fmul fast float %1840, %1825
  %1862 = fadd fast float %1860, %1861
  %1863 = fmul fast float %1841, %1826
  %1864 = fadd fast float %1862, %1863
  %1865 = fmul fast float %1842, %1827
  %1866 = fadd fast float %1864, %1865
  %1867 = fcmp fast ogt float %1845, 0.000000e+00
  %1868 = fdiv fast float %1852, %1845
  %1869 = select i1 %1867, float %1868, float 0.000000e+00
  %1870 = fdiv fast float %1859, %1845
  %1871 = select i1 %1867, float %1870, float 0.000000e+00
  %1872 = fdiv fast float %1866, %1845
  %1873 = select i1 %1867, float %1872, float 0.000000e+00
  %1874 = fcmp fast ogt float %1644, %1871
  %1875 = fcmp fast olt float %1644, %1869
  %1876 = and i1 %1875, %1874
  br i1 %1876, label %1877, label %1944, !dx.controlflow.hints !93

; <label>:1877                                    ; preds = %1819
  %1878 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 420)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 2
  %1881 = extractvalue %dx.types.CBufRet.f32 %1879, 3
  br i1 %1246, label %1892, label %1882, !dx.controlflow.hints !94

; <label>:1882                                    ; preds = %1877
  %1883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 60)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 64)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.ResRet.f32 %1885, 1
  %1888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 72)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %1245, i32 96)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  br label %1892

; <label>:1892                                    ; preds = %1882, %1877
  %1893 = phi float [ %1884, %1882 ], [ %1295, %1877 ]
  %1894 = phi float [ %1889, %1882 ], [ %1293, %1877 ]
  %1895 = phi float [ %1891, %1882 ], [ %1878, %1877 ]
  %1896 = phi float [ %1886, %1882 ], [ %1880, %1877 ]
  %1897 = phi float [ %1887, %1882 ], [ %1881, %1877 ]
  %1898 = call float @dx.op.binary.f32(i32 35, float %1822, float 0.000000e+00)  ; FMax(a,b)
  %1899 = call float @dx.op.binary.f32(i32 36, float %1898, float 1.000000e+00)  ; FMin(a,b)
  %1900 = call float @dx.op.unary.f32(i32 24, float %1899)  ; Sqrt(value)
  %1901 = call float @dx.op.binary.f32(i32 35, float %1873, float 0x3F847AE140000000)  ; FMax(a,b)
  %1902 = fsub fast float %1869, %1644
  %1903 = fsub fast float %1644, %1871
  %1904 = call float @dx.op.binary.f32(i32 36, float %1903, float %1902)  ; FMin(a,b)
  %1905 = fdiv fast float %1904, %1901
  %1906 = call float @dx.op.unary.f32(i32 7, float %1905)  ; Saturate(value)
  %1907 = fsub fast float %1644, %1894
  %1908 = fdiv fast float %1907, %1893
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = fsub fast float 1.000000e+00, %1909
  %1911 = fmul float %1906, %1910
  %1912 = fmul float %1911, %1911
  %1913 = fmul fast float %1900, %1813
  %1914 = fmul fast float %1913, %1912
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 412)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 2
  %1917 = extractvalue %dx.types.CBufRet.f32 %1915, 1
  %1918 = fsub fast float %1914, %1917
  %1919 = fsub fast float %1916, %1917
  %1920 = fdiv fast float %1918, %1919
  %1921 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1922 = fmul fast float %1921, %1895
  %1923 = fcmp fast ogt float %1897, 0.000000e+00
  br i1 %1923, label %1924, label %1944, !dx.controlflow.hints !95

; <label>:1924                                    ; preds = %1892
  %1925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1926 = extractvalue %dx.types.CBufRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.CBufRet.f32 %1925, 1
  %1928 = extractvalue %dx.types.CBufRet.f32 %1925, 2
  %1929 = fsub fast float %1642, %1926
  %1930 = fsub fast float %1643, %1927
  %1931 = fsub fast float %1644, %1928
  %1932 = fmul fast float %1929, %1929
  %1933 = fmul fast float %1930, %1930
  %1934 = fadd fast float %1932, %1933
  %1935 = fmul fast float %1931, %1931
  %1936 = fadd fast float %1934, %1935
  %1937 = call float @dx.op.unary.f32(i32 24, float %1936)  ; Sqrt(value)
  %1938 = fsub fast float %1937, %1896
  %1939 = fsub fast float %1897, %1896
  %1940 = fdiv fast float %1938, %1939
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1942 = fmul fast float %1941, %1941
  %1943 = fmul fast float %1942, %1922
  br label %1944

; <label>:1944                                    ; preds = %1924, %1892, %1819, %1633
  %1945 = phi float [ 0.000000e+00, %1633 ], [ 0.000000e+00, %1819 ], [ %1943, %1924 ], [ %1922, %1892 ]
  %1946 = fsub fast float %1631, %1945
  %1947 = fdiv fast float %1946, %1631
  %1948 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  %1949 = fsub fast float 1.000000e+00, %1271
  %1950 = fmul fast float %1948, %1949
  %1951 = fadd fast float %1950, %1271
  br label %1952

; <label>:1952                                    ; preds = %1944, %1626
  %1953 = phi float [ %1951, %1944 ], [ 1.000000e+00, %1626 ]
  %1954 = fadd fast float %1631, %1170
  %1955 = fmul fast float %1631, %1267
  %1956 = fmul fast float %1955, %1953
  %1957 = fmul fast float %1631, %1268
  %1958 = fmul fast float %1957, %1953
  %1959 = fmul fast float %1631, %1269
  %1960 = fmul fast float %1959, %1953
  %1961 = fadd fast float %1956, %1166
  %1962 = fadd fast float %1958, %1167
  %1963 = fadd fast float %1960, %1168
  br label %1964

; <label>:1964                                    ; preds = %1952, %1586, %1583, %1165
  %1965 = phi float [ %1166, %1165 ], [ %1166, %1583 ], [ %1166, %1586 ], [ %1961, %1952 ]
  %1966 = phi float [ %1167, %1165 ], [ %1167, %1583 ], [ %1167, %1586 ], [ %1962, %1952 ]
  %1967 = phi float [ %1168, %1165 ], [ %1168, %1583 ], [ %1168, %1586 ], [ %1963, %1952 ]
  %1968 = phi float [ %1170, %1165 ], [ %1170, %1583 ], [ %1170, %1586 ], [ %1954, %1952 ]
  %1969 = and i32 %362, 4
  %1970 = icmp eq i32 %1969, 0
  br i1 %1970, label %2141, label %1971, !dx.controlflow.hints !99

; <label>:1971                                    ; preds = %1964
  %1972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.i32 %1972, 1
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %2141, label %1975

; <label>:1975                                    ; preds = %1971
  br label %1976

; <label>:1976                                    ; preds = %2132, %1975
  %1977 = phi i32 [ %2138, %2132 ], [ 0, %1975 ]
  %1978 = phi float [ %2133, %2132 ], [ %1965, %1975 ]
  %1979 = phi float [ %2134, %2132 ], [ %1966, %1975 ]
  %1980 = phi float [ %2135, %2132 ], [ %1967, %1975 ]
  %1981 = phi float [ %2136, %2132 ], [ %1169, %1975 ]
  %1982 = phi float [ %2137, %2132 ], [ %1968, %1975 ]
  %1983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.i32 %1983, 1
  %1985 = call i32 @dx.op.tertiary.i32(i32 49, i32 %360, i32 %1984, i32 %1977)  ; UMad(a,b,c)
  %1986 = shl i32 %1985, 2
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = icmp eq i32 %1988, 0
  br i1 %1989, label %2132, label %1990

; <label>:1990                                    ; preds = %1976
  br label %1991

; <label>:1991                                    ; preds = %2118, %1990
  %1992 = phi i32 [ %2002, %2118 ], [ %1988, %1990 ]
  %1993 = phi float [ %2124, %2118 ], [ %1978, %1990 ]
  %1994 = phi float [ %2125, %2118 ], [ %1979, %1990 ]
  %1995 = phi float [ %2126, %2118 ], [ %1980, %1990 ]
  %1996 = phi float [ %2128, %2118 ], [ %1981, %1990 ]
  %1997 = phi float [ %2129, %2118 ], [ %1982, %1990 ]
  %1998 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1992)  ; FirstbitLo(value)
  %1999 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %1977, i32 %1998)  ; UMad(a,b,c)
  %2000 = and i32 %1998, 31
  %2001 = shl i32 1, %2000
  %2002 = xor i32 %2001, %1992
  %2003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1999, i32 0)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.f32 %2003, 0
  %2005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1999, i32 4)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1999, i32 16)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2009 = extractvalue %dx.types.ResRet.f32 %2007, 1
  %2010 = extractvalue %dx.types.ResRet.f32 %2007, 2
  %2011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1999, i32 28)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1999, i32 32)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.ResRet.f32 %2013, 1
  %2016 = extractvalue %dx.types.ResRet.f32 %2013, 2
  %2017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1999, i32 44)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1999, i32 48)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  %2021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1999, i32 52)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1999, i32 56)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 0
  %2025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1999, i32 64)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.ResRet.f32 %2025, 1
  %2028 = extractvalue %dx.types.ResRet.f32 %2025, 2
  %2029 = mul i32 %1999, 60
  %2030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.ResRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.ResRet.f32 %2030, 2
  %2034 = add i32 %2029, 12
  %2035 = add i32 %2029, 48
  %2036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 2
  %2038 = fsub fast float %199, %2031
  %2039 = fsub fast float %200, %2032
  %2040 = fsub fast float %201, %2033
  %2041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 0
  %2043 = extractvalue %dx.types.ResRet.f32 %2041, 1
  %2044 = extractvalue %dx.types.ResRet.f32 %2041, 2
  %2045 = call float @dx.op.dot3.f32(i32 55, float %2038, float %2039, float %2040, float %2042, float %2043, float %2044)  ; Dot3(ax,ay,az,bx,by,bz)
  %2046 = add i32 %2029, 24
  %2047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2046, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.f32 %2047, 0
  %2049 = extractvalue %dx.types.ResRet.f32 %2047, 1
  %2050 = extractvalue %dx.types.ResRet.f32 %2047, 2
  %2051 = call float @dx.op.dot3.f32(i32 55, float %2038, float %2039, float %2040, float %2048, float %2049, float %2050)  ; Dot3(ax,ay,az,bx,by,bz)
  %2052 = add i32 %2029, 36
  %2053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.ResRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.ResRet.f32 %2053, 2
  %2057 = call float @dx.op.dot3.f32(i32 55, float %2038, float %2039, float %2040, float %2054, float %2055, float %2056)  ; Dot3(ax,ay,az,bx,by,bz)
  %2058 = call float @dx.op.unary.f32(i32 6, float %2045)  ; FAbs(value)
  %2059 = call float @dx.op.unary.f32(i32 6, float %2051)  ; FAbs(value)
  %2060 = call float @dx.op.unary.f32(i32 6, float %2057)  ; FAbs(value)
  %2061 = fmul fast float %2058, %2018
  %2062 = fmul fast float %2059, %2018
  %2063 = fmul fast float %2060, %2018
  %2064 = fadd fast float %2061, %2014
  %2065 = fadd fast float %2062, %2015
  %2066 = fadd fast float %2063, %2016
  %2067 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2068 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2069 = call float @dx.op.unary.f32(i32 7, float %2066)  ; Saturate(value)
  %2070 = fmul fast float %2067, %2067
  %2071 = fmul fast float %2068, %2068
  %2072 = fadd fast float %2071, %2070
  %2073 = fmul fast float %2069, %2069
  %2074 = fadd fast float %2072, %2073
  %2075 = call float @dx.op.unary.f32(i32 24, float %2074)  ; Sqrt(value)
  %2076 = fsub fast float 1.000000e+00, %2075
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = fmul fast float %2077, %2004
  %2079 = fmul fast float %2037, 2.000000e+00
  %2080 = fadd fast float %2057, %2037
  %2081 = call float @dx.op.binary.f32(i32 35, float %2080, float 0.000000e+00)  ; FMax(a,b)
  %2082 = call float @dx.op.binary.f32(i32 36, float %2081, float %2079)  ; FMin(a,b)
  %2083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2082)  ; FMax(a,b)
  %2084 = fmul fast float %2006, 0x3FF7154760000000
  %2085 = fmul fast float %2084, %2083
  %2086 = call float @dx.op.unary.f32(i32 21, float %2085)  ; Exp(value)
  %2087 = fmul fast float %2078, %2086
  %2088 = fcmp fast oeq float %443, 0.000000e+00
  br i1 %2088, label %2094, label %2089, !dx.controlflow.hints !73

; <label>:2089                                    ; preds = %1991
  %2090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 404)  ; CBufferLoadLegacy(handle,regIndex)
  %2091 = extractvalue %dx.types.CBufRet.f32 %2090, 3
  %2092 = fmul fast float %2091, %443
  %2093 = call float @dx.op.unary.f32(i32 23, float %2092)  ; Log(value)
  br label %2094

; <label>:2094                                    ; preds = %2089, %1991
  %2095 = phi float [ %2093, %2089 ], [ 0.000000e+00, %1991 ]
  %2096 = fcmp fast oeq float %2020, 0.000000e+00
  br i1 %2096, label %2118, label %2097, !dx.controlflow.hints !100

; <label>:2097                                    ; preds = %2094
  %2098 = fmul fast float %2026, %2024
  %2099 = fmul fast float %2027, %2024
  %2100 = fmul fast float %2028, %2024
  %2101 = fsub fast float %199, %2098
  %2102 = fsub fast float %200, %2099
  %2103 = fsub fast float %201, %2100
  %2104 = fmul fast float %2101, %2020
  %2105 = fmul fast float %2102, %2020
  %2106 = fmul fast float %2103, %2020
  %2107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %2104, float %2105, float %2106, float undef, i32 0, i32 0, i32 0, float %2095)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2108 = extractvalue %dx.types.ResRet.f32 %2107, 0
  %2109 = extractvalue %dx.types.ResRet.f32 %2107, 1
  %2110 = fdiv fast float 1.000000e+00, %2022
  %2111 = fmul fast float %2022, 2.000000e+00
  %2112 = fadd fast float %2111, -1.000000e+00
  %2113 = fadd fast float %2112, %2109
  %2114 = fadd fast float %2113, %2108
  %2115 = fmul fast float %2114, %2110
  %2116 = fadd fast float %2115, -1.000000e+00
  %2117 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  br label %2118

; <label>:2118                                    ; preds = %2097, %2094
  %2119 = phi float [ %2117, %2097 ], [ 1.000000e+00, %2094 ]
  %2120 = fmul fast float %2087, %2119
  %2121 = fmul fast float %2120, %2008
  %2122 = fmul fast float %2120, %2009
  %2123 = fmul fast float %2120, %2010
  %2124 = fadd fast float %2121, %1993
  %2125 = fadd fast float %2122, %1994
  %2126 = fadd fast float %2123, %1995
  %2127 = fmul fast float %2120, %2012
  %2128 = fadd fast float %2127, %1996
  %2129 = fadd fast float %2120, %1997
  %2130 = icmp eq i32 %1992, %2001
  br i1 %2130, label %2131, label %1991, !llvm.loop !101

; <label>:2131                                    ; preds = %2118
  br label %2132

; <label>:2132                                    ; preds = %2131, %1976
  %2133 = phi float [ %1978, %1976 ], [ %2124, %2131 ]
  %2134 = phi float [ %1979, %1976 ], [ %2125, %2131 ]
  %2135 = phi float [ %1980, %1976 ], [ %2126, %2131 ]
  %2136 = phi float [ %1981, %1976 ], [ %2128, %2131 ]
  %2137 = phi float [ %1982, %1976 ], [ %2129, %2131 ]
  %2138 = add i32 %1977, 1
  %2139 = icmp ult i32 %2138, %1984
  br i1 %2139, label %1976, label %2140, !llvm.loop !102

; <label>:2140                                    ; preds = %2132
  br label %2141

; <label>:2141                                    ; preds = %2140, %1971, %1964
  %2142 = phi float [ %1965, %1964 ], [ %1965, %1971 ], [ %2133, %2140 ]
  %2143 = phi float [ %1966, %1964 ], [ %1966, %1971 ], [ %2134, %2140 ]
  %2144 = phi float [ %1967, %1964 ], [ %1967, %1971 ], [ %2135, %2140 ]
  %2145 = phi float [ %1169, %1964 ], [ %1169, %1971 ], [ %2136, %2140 ]
  %2146 = phi float [ %1968, %1964 ], [ %1968, %1971 ], [ %2137, %2140 ]
  %2147 = fcmp fast ogt float %2146, 0.000000e+00
  br i1 %2147, label %2148, label %3584, !dx.controlflow.hints !103

; <label>:2148                                    ; preds = %2141
  %2149 = fdiv fast float 1.000000e+00, %2146
  %2150 = fmul fast float %2149, %2142
  %2151 = fmul fast float %2149, %2143
  %2152 = fmul fast float %2149, %2144
  %2153 = fmul fast float %2149, %2145
  %2154 = fmul fast float %2149, %668
  %2155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 423)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.f32 %2155, 0
  %2157 = fadd fast float %2156, -1.000000e+00
  %2158 = fmul fast float %2154, %2157
  %2159 = fadd fast float %2158, 1.000000e+00
  %2160 = fmul fast float %440, %439
  %2161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2162 = extractvalue %dx.types.CBufRet.f32 %2161, 0
  %2163 = extractvalue %dx.types.CBufRet.f32 %2161, 1
  %2164 = extractvalue %dx.types.CBufRet.f32 %2161, 2
  %2165 = fsub fast float %201, %2164
  %2166 = fmul fast float %369, %134
  %2167 = call float @dx.op.unary.f32(i32 21, float %2166)  ; Exp(value)
  %2168 = fmul fast float %2167, %368
  %2169 = fadd fast float %373, %2168
  %2170 = fmul fast float %141, 2.000000e+00
  %2171 = fmul fast float %2170, %365
  %2172 = fmul fast float %142, 2.000000e+00
  %2173 = fmul fast float %2172, %366
  %2174 = fsub fast float 1.000000e+00, %2171
  %2175 = fsub fast float 1.000000e+00, %2173
  %2176 = fmul fast float %382, %2174
  %2177 = fmul fast float %383, %2174
  %2178 = fmul fast float %384, %2174
  %2179 = fmul fast float %389, %2175
  %2180 = fmul fast float %390, %2175
  %2181 = fmul fast float %391, %2175
  %2182 = fadd fast float %2179, %2176
  %2183 = fadd fast float %2180, %2177
  %2184 = fadd fast float %2181, %2178
  %2185 = fadd fast float %2182, %399
  %2186 = fadd fast float %2183, %400
  %2187 = fadd fast float %2184, %401
  %2188 = fmul fast float %2185, %2169
  %2189 = fmul fast float %2186, %2169
  %2190 = fmul fast float %2187, %2169
  %2191 = fadd fast float %134, 1.000000e+00
  %2192 = fmul fast float %369, %2191
  %2193 = call float @dx.op.unary.f32(i32 21, float %2192)  ; Exp(value)
  %2194 = fsub fast float %2193, %2167
  %2195 = fmul fast float %368, %2194
  %2196 = fmul fast float %2185, %2195
  %2197 = fsub fast float %2193, %2167
  %2198 = fmul fast float %368, %2197
  %2199 = fmul fast float %2186, %2198
  %2200 = fsub fast float %2193, %2167
  %2201 = fmul fast float %368, %2200
  %2202 = fmul fast float %2187, %2201
  %2203 = call float @dx.op.dot3.f32(i32 55, float %2196, float %2199, float %2202, float %2196, float %2199, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %2204 = call float @dx.op.unary.f32(i32 25, float %2203)  ; Rsqrt(value)
  %2205 = fmul fast float %2204, %2203
  %2206 = fmul fast float %2196, %2204
  %2207 = fmul fast float %2199, %2204
  %2208 = fmul fast float %2202, %2204
  %2209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2210 = extractvalue %dx.types.CBufRet.f32 %2209, 3
  %2211 = fcmp fast oeq float %2210, 0.000000e+00
  br i1 %2211, label %2954, label %2212, !dx.controlflow.hints !104

; <label>:2212                                    ; preds = %2148
  %2213 = fsub fast float %200, %2163
  %2214 = fsub fast float %199, %2162
  %2215 = extractvalue %dx.types.CBufRet.f32 %2209, 0
  %2216 = extractvalue %dx.types.CBufRet.f32 %2209, 1
  %2217 = extractvalue %dx.types.CBufRet.f32 %2209, 2
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2220 = extractvalue %dx.types.CBufRet.f32 %2218, 1
  %2221 = extractvalue %dx.types.CBufRet.f32 %2218, 2
  %2222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.f32 %2222, 2
  %2224 = fmul fast float %2223, %2215
  %2225 = fmul fast float %2223, %2216
  %2226 = fmul fast float %2223, %2217
  %2227 = fsub fast float %2214, %2224
  %2228 = fsub fast float %2213, %2225
  %2229 = fsub fast float %2165, %2226
  %2230 = fcmp fast olt float %2210, 0.000000e+00
  br i1 %2230, label %2762, label %2231, !dx.controlflow.hints !105

; <label>:2231                                    ; preds = %2212
  %2232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.f32 %2232, 0
  %2234 = extractvalue %dx.types.CBufRet.f32 %2232, 1
  %2235 = extractvalue %dx.types.CBufRet.f32 %2232, 2
  %2236 = extractvalue %dx.types.CBufRet.f32 %2232, 3
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2241 = extractvalue %dx.types.CBufRet.f32 %2237, 3
  %2242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2243 = extractvalue %dx.types.CBufRet.f32 %2242, 0
  %2244 = extractvalue %dx.types.CBufRet.f32 %2242, 1
  %2245 = extractvalue %dx.types.CBufRet.f32 %2242, 2
  %2246 = extractvalue %dx.types.CBufRet.f32 %2242, 3
  %2247 = fmul fast float %2233, %2227
  %2248 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2234, float %2247)  ; FMad(a,b,c)
  %2249 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2235, float %2248)  ; FMad(a,b,c)
  %2250 = fadd fast float %2249, %2236
  %2251 = fmul fast float %2238, %2227
  %2252 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2239, float %2251)  ; FMad(a,b,c)
  %2253 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2240, float %2252)  ; FMad(a,b,c)
  %2254 = fadd fast float %2253, %2241
  %2255 = fmul fast float %2243, %2227
  %2256 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2244, float %2255)  ; FMad(a,b,c)
  %2257 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2245, float %2256)  ; FMad(a,b,c)
  %2258 = fadd fast float %2257, %2246
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.CBufRet.f32 %2259, 3
  %2263 = fmul fast float %2262, %2250
  %2264 = fmul fast float %2262, %2254
  %2265 = fadd fast float %2263, %2260
  %2266 = fadd fast float %2264, %2261
  %2267 = extractvalue %dx.types.CBufRet.f32 %2259, 2
  %2268 = fcmp fast olt float %2267, 0.000000e+00
  %2269 = fsub fast float -0.000000e+00, %2267
  %2270 = select i1 %2268, float %2269, float %2267
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 1
  %2273 = fadd fast float %2270, %2272
  %2274 = fcmp fast ogt float %2273, 0.000000e+00
  br i1 %2274, label %2275, label %2306, !dx.controlflow.hints !106

; <label>:2275                                    ; preds = %2231
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2278 = fsub fast float %2277, %2258
  %2279 = extractvalue %dx.types.CBufRet.f32 %2276, 2
  %2280 = fmul fast float %2278, %2279
  %2281 = fsub fast float 1.000000e+00, %2280
  %2282 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2286 = fsub fast float %2265, %2284
  %2287 = fsub fast float %2266, %2285
  %2288 = fcmp fast olt float %2286, 0.000000e+00
  %2289 = fcmp fast olt float %2287, 0.000000e+00
  %2290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.CBufRet.f32 %2290, 1
  %2293 = extractvalue %dx.types.CBufRet.f32 %2290, 2
  %2294 = extractvalue %dx.types.CBufRet.f32 %2290, 3
  %2295 = select i1 %2288, float %2291, float %2293
  %2296 = select i1 %2289, float %2292, float %2294
  %2297 = fmul fast float %2295, %2286
  %2298 = fmul fast float %2296, %2287
  %2299 = call float @dx.op.unary.f32(i32 6, float %2297)  ; FAbs(value)
  %2300 = call float @dx.op.unary.f32(i32 6, float %2298)  ; FAbs(value)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2222, 0
  %2302 = call float @dx.op.binary.f32(i32 35, float %2299, float %2300)  ; FMax(a,b)
  %2303 = fsub fast float %2301, %2302
  %2304 = call float @dx.op.unary.f32(i32 7, float %2303)  ; Saturate(value)
  %2305 = fmul fast float %2304, %2282
  br label %2306

; <label>:2306                                    ; preds = %2275, %2231
  %2307 = phi float [ %2305, %2275 ], [ 0.000000e+00, %2231 ]
  %2308 = call float @dx.op.binary.f32(i32 35, float %2307, float 0.000000e+00)  ; FMax(a,b)
  %2309 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2308)  ; FMax(a,b)
  %2310 = fcmp fast olt float %2309, 1.000000e+00
  br i1 %2310, label %2311, label %2709, !dx.controlflow.hints !107

; <label>:2311                                    ; preds = %2306
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 0
  %2314 = fcmp fast une float %2313, 0.000000e+00
  br i1 %2314, label %2315, label %2709, !dx.controlflow.hints !108

; <label>:2315                                    ; preds = %2311
  %2316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.f32 %2316, 0
  %2318 = extractvalue %dx.types.CBufRet.f32 %2316, 1
  %2319 = extractvalue %dx.types.CBufRet.f32 %2316, 2
  %2320 = extractvalue %dx.types.CBufRet.f32 %2316, 3
  %2321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.CBufRet.f32 %2321, 1
  %2324 = extractvalue %dx.types.CBufRet.f32 %2321, 2
  %2325 = extractvalue %dx.types.CBufRet.f32 %2321, 3
  %2326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2327 = extractvalue %dx.types.CBufRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.CBufRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.CBufRet.f32 %2326, 2
  %2330 = extractvalue %dx.types.CBufRet.f32 %2326, 3
  %2331 = fmul fast float %2317, %2227
  %2332 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2318, float %2331)  ; FMad(a,b,c)
  %2333 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2319, float %2332)  ; FMad(a,b,c)
  %2334 = fadd fast float %2333, %2320
  %2335 = fmul fast float %2322, %2227
  %2336 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2323, float %2335)  ; FMad(a,b,c)
  %2337 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2324, float %2336)  ; FMad(a,b,c)
  %2338 = fadd fast float %2337, %2325
  %2339 = fmul fast float %2327, %2227
  %2340 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2328, float %2339)  ; FMad(a,b,c)
  %2341 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2329, float %2340)  ; FMad(a,b,c)
  %2342 = fadd fast float %2341, %2330
  %2343 = fcmp fast oge float %2334, 1.000000e+00
  %2344 = fcmp fast oge float %2338, 1.000000e+00
  %2345 = or i1 %2343, %2344
  %2346 = fcmp fast olt float %2334, 0.000000e+00
  %2347 = fcmp fast olt float %2338, 0.000000e+00
  %2348 = or i1 %2346, %2347
  %2349 = or i1 %2345, %2348
  br i1 %2349, label %2709, label %2350, !dx.controlflow.hints !109

; <label>:2350                                    ; preds = %2315
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.CBufRet.f32 %2351, 2
  %2355 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.i32 %2355, 2
  %2357 = uitofp i32 %2356 to float
  %2358 = extractvalue %dx.types.CBufRet.i32 %2355, 3
  %2359 = uitofp i32 %2358 to float
  %2360 = extractvalue %dx.types.CBufRet.f32 %2351, 3
  %2361 = fmul fast float %2360, 2.000000e+00
  %2362 = fsub fast float %2334, %2352
  %2363 = fsub fast float %2338, %2353
  %2364 = fmul fast float %2361, %2362
  %2365 = fmul fast float %2361, %2363
  %2366 = fdiv fast float 1.000000e+00, %2217
  %2367 = fmul fast float %2365, %2366
  %2368 = call float @dx.op.unary.f32(i32 6, float %2367)  ; FAbs(value)
  %2369 = fmul fast float %2354, %2229
  %2370 = fmul fast float %2369, %2361
  %2371 = call float @dx.op.unary.f32(i32 6, float %2370)  ; FAbs(value)
  %2372 = call float @dx.op.unary.f32(i32 6, float %2364)  ; FAbs(value)
  %2373 = call float @dx.op.binary.f32(i32 35, float %2371, float %2368)  ; FMax(a,b)
  %2374 = call float @dx.op.binary.f32(i32 35, float %2372, float %2373)  ; FMax(a,b)
  %2375 = fmul fast float %2374, 2.000000e+00
  %2376 = call float @dx.op.unary.f32(i32 23, float %2375)  ; Log(value)
  %2377 = call float @dx.op.binary.f32(i32 35, float %2376, float %2357)  ; FMax(a,b)
  %2378 = call float @dx.op.unary.f32(i32 22, float %2377)  ; Frc(value)
  %2379 = fadd fast float %2378, 0xBFEA666660000000
  %2380 = fmul fast float %2379, 8.000000e+00
  %2381 = call float @dx.op.unary.f32(i32 7, float %2380)  ; Saturate(value)
  %2382 = call float @dx.op.unary.f32(i32 27, float %2377)  ; Round_ni(value)
  %2383 = fadd fast float %2382, %2381
  %2384 = call float @dx.op.binary.f32(i32 36, float %2383, float %2359)  ; FMin(a,b)
  %2385 = call float @dx.op.unary.f32(i32 27, float %2384)  ; Round_ni(value)
  %2386 = fsub fast float -0.000000e+00, %2385
  %2387 = call float @dx.op.unary.f32(i32 21, float %2386)  ; Exp(value)
  %2388 = fmul fast float %2387, %2361
  %2389 = fmul fast float %2388, %2334
  %2390 = fmul fast float %2388, %2338
  %2391 = fmul fast float %2389, 2.500000e-01
  %2392 = fmul fast float %2390, 2.500000e-01
  %2393 = fadd fast float %2391, 5.000000e-01
  %2394 = fadd fast float %2392, 5.000000e-01
  %2395 = fsub fast float %2359, %2357
  %2396 = fptoui float %2395 to i32
  %2397 = add i32 %2396, 320
  %2398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %2397)  ; CBufferLoadLegacy(handle,regIndex)
  %2399 = extractvalue %dx.types.CBufRet.f32 %2398, 0
  %2400 = extractvalue %dx.types.CBufRet.f32 %2398, 1
  %2401 = fcmp fast une float %2384, %2359
  %2402 = fsub fast float %2334, %2399
  %2403 = fsub fast float %2338, %2400
  %2404 = call float @dx.op.unary.f32(i32 6, float %2402)  ; FAbs(value)
  %2405 = call float @dx.op.unary.f32(i32 6, float %2403)  ; FAbs(value)
  %2406 = fmul fast float %2404, %2388
  %2407 = fmul fast float %2405, %2388
  %2408 = fcmp fast olt float %2406, 1.000000e+00
  %2409 = fcmp fast olt float %2407, 1.000000e+00
  %2410 = and i1 %2408, %2409
  %2411 = or i1 %2401, %2410
  br i1 %2411, label %2412, label %2709, !dx.controlflow.hints !110

; <label>:2412                                    ; preds = %2350
  %2413 = fmul fast float %2390, 5.000000e-01
  %2414 = fmul fast float %2389, 5.000000e-01
  %2415 = fadd fast float %2413, 5.000000e-01
  %2416 = fadd fast float %2414, 5.000000e-01
  %2417 = sitofp i32 %2356 to float
  %2418 = fsub fast float %2384, %2417
  %2419 = call float @dx.op.unary.f32(i32 27, float %2418)  ; Round_ni(value)
  %2420 = call float @dx.op.unary.f32(i32 22, float %2384)  ; Frc(value)
  %2421 = call float @dx.op.unary.f32(i32 22, float %2416)  ; Frc(value)
  %2422 = call float @dx.op.unary.f32(i32 22, float %2415)  ; Frc(value)
  %2423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %40, float %2421, float %2422, float %2419, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2424 = extractvalue %dx.types.ResRet.f32 %2423, 0
  %2425 = extractvalue %dx.types.ResRet.f32 %2423, 1
  %2426 = extractvalue %dx.types.ResRet.f32 %2423, 2
  %2427 = extractvalue %dx.types.ResRet.f32 %2423, 3
  %2428 = fcmp fast ogt float %2420, 0.000000e+00
  br i1 %2428, label %2429, label %2450, !dx.controlflow.hints !111

; <label>:2429                                    ; preds = %2412
  %2430 = fadd fast float %2419, 1.000000e+00
  %2431 = call float @dx.op.unary.f32(i32 22, float %2393)  ; Frc(value)
  %2432 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %40, float %2431, float %2432, float %2430, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2434 = extractvalue %dx.types.ResRet.f32 %2433, 0
  %2435 = extractvalue %dx.types.ResRet.f32 %2433, 1
  %2436 = extractvalue %dx.types.ResRet.f32 %2433, 2
  %2437 = extractvalue %dx.types.ResRet.f32 %2433, 3
  %2438 = fsub fast float %2434, %2424
  %2439 = fsub fast float %2435, %2425
  %2440 = fsub fast float %2436, %2426
  %2441 = fsub fast float %2437, %2427
  %2442 = fmul fast float %2438, %2420
  %2443 = fmul fast float %2439, %2420
  %2444 = fmul fast float %2440, %2420
  %2445 = fmul fast float %2441, %2420
  %2446 = fadd fast float %2442, %2424
  %2447 = fadd fast float %2443, %2425
  %2448 = fadd fast float %2444, %2426
  %2449 = fadd fast float %2445, %2427
  br label %2450

; <label>:2450                                    ; preds = %2429, %2412
  %2451 = phi float [ %2446, %2429 ], [ %2424, %2412 ]
  %2452 = phi float [ %2447, %2429 ], [ %2425, %2412 ]
  %2453 = phi float [ %2448, %2429 ], [ %2426, %2412 ]
  %2454 = phi float [ %2449, %2429 ], [ %2427, %2412 ]
  %2455 = fadd fast float %2451, -5.000000e-01
  %2456 = fadd fast float %2453, -5.000000e-01
  %2457 = fmul fast float %2455, 0xBFD5555560000000
  %2458 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2456, float %2457)  ; FMad(a,b,c)
  %2459 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2452, float 0.000000e+00)  ; FMad(a,b,c)
  %2460 = fadd fast float %2459, %2454
  %2461 = fmul fast float %2455, -7.500000e-01
  %2462 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2456, float %2461)  ; FMad(a,b,c)
  %2463 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2452, float 0.000000e+00)  ; FMad(a,b,c)
  %2464 = fadd fast float %2463, %2454
  %2465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2466 = extractvalue %dx.types.CBufRet.f32 %2465, 0
  %2467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.f32 %2467, 0
  %2469 = extractvalue %dx.types.CBufRet.f32 %2467, 1
  %2470 = extractvalue %dx.types.CBufRet.f32 %2467, 2
  %2471 = extractvalue %dx.types.CBufRet.f32 %2467, 3
  %2472 = fsub fast float %2468, %2458
  %2473 = fsub fast float %2469, %2460
  %2474 = fsub fast float %2470, %2462
  %2475 = fsub fast float %2471, %2464
  %2476 = fmul fast float %2472, %2466
  %2477 = fmul fast float %2473, %2466
  %2478 = fmul fast float %2474, %2466
  %2479 = fmul fast float %2475, %2466
  %2480 = fadd fast float %2476, %2458
  %2481 = fadd fast float %2477, %2460
  %2482 = fadd fast float %2478, %2462
  %2483 = fadd fast float %2479, %2464
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %2485, 536870911
  %2487 = uitofp i32 %2486 to float
  %2488 = fmul fast float %2487, %2334
  %2489 = fmul fast float %2487, %2338
  %2490 = fptoui float %2488 to i32
  %2491 = fptoui float %2489 to i32
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = and i32 %2493, 31
  %2495 = lshr i32 %2490, %2494
  %2496 = lshr i32 %2491, %2494
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 31
  %2500 = shl i32 1, %2499
  %2501 = call i32 @dx.op.binary.i32(i32 40, i32 %2500, i32 4)  ; UMin(a,b)
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = extractvalue %dx.types.ResRet.i32 %2502, 1
  %2505 = icmp eq i32 %2501, 0
  br i1 %2505, label %2547, label %2506

; <label>:2506                                    ; preds = %2450
  br label %2507

; <label>:2507                                    ; preds = %2535, %2506
  %2508 = phi i32 [ %2538, %2535 ], [ 0, %2506 ]
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = lshr i32 %2510, 16
  %2512 = and i32 %2511, 31
  %2513 = shl i32 %2496, %2512
  %2514 = add i32 %2513, %2495
  %2515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2516 = extractvalue %dx.types.ResRet.i32 %2515, 0
  %2517 = and i32 %2516, 31
  %2518 = shl i32 %2514, %2517
  %2519 = add i32 %2518, %2508
  %2520 = shl i32 %2519, 2
  %2521 = add i32 %2520, 32
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = icmp slt i32 %2523, 0
  %2525 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2508
  %2526 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2508
  %2527 = bitcast float* %2525 to i32*
  %2528 = bitcast float* %2526 to i32*
  br i1 %2524, label %2529, label %2535, !dx.controlflow.hints !112

; <label>:2529                                    ; preds = %2507
  %2530 = and i32 %2523, 1073741823
  %2531 = add nuw nsw i32 %2530, 20
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = extractvalue %dx.types.ResRet.i32 %2532, 1
  br label %2535

; <label>:2535                                    ; preds = %2529, %2507
  %2536 = phi i32 [ %2533, %2529 ], [ %2503, %2507 ]
  %2537 = phi i32 [ %2534, %2529 ], [ %2504, %2507 ]
  store i32 %2536, i32* %2527, align 4
  store i32 %2537, i32* %2528, align 4
  %2538 = add nuw i32 %2508, 1
  %2539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.i32 %2539, 2
  %2541 = icmp eq i32 %2540, 0
  %2542 = icmp ugt i32 %2523, -1073741825
  %2543 = and i1 %2542, %2541
  %2544 = icmp ult i32 %2538, %2501
  %2545 = and i1 %2543, %2544
  br i1 %2545, label %2507, label %2546, !dx.controlflow.hints !113

; <label>:2546                                    ; preds = %2535
  br label %2547

; <label>:2547                                    ; preds = %2546, %2450
  %2548 = phi i32 [ 0, %2450 ], [ %2538, %2546 ]
  %2549 = extractvalue %dx.types.CBufRet.f32 %2312, 2
  %2550 = fptoui float %2549 to i32
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %2603, label %2552

; <label>:2552                                    ; preds = %2547
  br label %2553

; <label>:2553                                    ; preds = %2598, %2552
  %2554 = phi i32 [ %2599, %2598 ], [ %2548, %2552 ]
  %2555 = phi i32 [ %2600, %2598 ], [ 0, %2552 ]
  %2556 = lshr i32 %2555, 2
  %2557 = and i32 %2555, 3
  %2558 = add nuw nsw i32 %2556, 83
  %2559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 %2558)  ; CBufferLoadLegacy(handle,regIndex)
  %2560 = extractvalue %dx.types.CBufRet.i32 %2559, 0
  %2561 = extractvalue %dx.types.CBufRet.i32 %2559, 1
  %2562 = extractvalue %dx.types.CBufRet.i32 %2559, 2
  %2563 = extractvalue %dx.types.CBufRet.i32 %2559, 3
  %2564 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 0
  store i32 %2560, i32* %2564, align 4
  %2565 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 1
  store i32 %2561, i32* %2565, align 4
  %2566 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 2
  store i32 %2562, i32* %2566, align 4
  %2567 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 3
  store i32 %2563, i32* %2567, align 4
  %2568 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 %2557
  %2569 = load i32, i32* %2568, align 4, !tbaa !114, !noalias !118
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = lshr i32 %2571, 16
  %2573 = and i32 %2572, 31
  %2574 = shl i32 %2496, %2573
  %2575 = add i32 %2574, %2495
  %2576 = shl i32 %2575, 2
  %2577 = add i32 %2576, %2569
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = icmp eq i32 %2579, 0
  br i1 %2580, label %2598, label %2581, !dx.controlflow.hints !128

; <label>:2581                                    ; preds = %2553
  %2582 = icmp slt i32 %2579, 0
  %2583 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2554
  %2584 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2554
  %2585 = bitcast float* %2583 to i32*
  %2586 = bitcast float* %2584 to i32*
  br i1 %2582, label %2587, label %2594, !dx.controlflow.hints !129

; <label>:2587                                    ; preds = %2581
  %2588 = and i32 %2579, 1073741823
  %2589 = add i32 %2569, 20
  %2590 = add i32 %2589, %2588
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = extractvalue %dx.types.ResRet.i32 %2591, 1
  br label %2594

; <label>:2594                                    ; preds = %2587, %2581
  %2595 = phi i32 [ %2592, %2587 ], [ %2503, %2581 ]
  %2596 = phi i32 [ %2593, %2587 ], [ %2504, %2581 ]
  store i32 %2595, i32* %2585, align 4
  store i32 %2596, i32* %2586, align 4
  %2597 = add i32 %2554, 1
  br label %2598

; <label>:2598                                    ; preds = %2594, %2553
  %2599 = phi i32 [ %2554, %2553 ], [ %2597, %2594 ]
  %2600 = add nuw i32 %2555, 1
  %2601 = icmp eq i32 %2600, %2550
  br i1 %2601, label %2602, label %2553

; <label>:2602                                    ; preds = %2598
  br label %2603

; <label>:2603                                    ; preds = %2602, %2547
  %2604 = phi i32 [ %2548, %2547 ], [ %2599, %2602 ]
  %2605 = icmp eq i32 %2604, 1
  %2606 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 0
  %2607 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 0
  br i1 %2605, label %2608, label %2611, !dx.controlflow.hints !130

; <label>:2608                                    ; preds = %2603
  %2609 = load float, float* %2606, align 4
  %2610 = load float, float* %2607, align 4
  br label %2638

; <label>:2611                                    ; preds = %2603
  %2612 = load float, float* %2606, align 4
  %2613 = load float, float* %2607, align 4
  %2614 = fdiv fast float 1.000000e+00, %2613
  %2615 = fsub fast float %2612, %2614
  %2616 = icmp ugt i32 %2604, 1
  br i1 %2616, label %2617, label %2633

; <label>:2617                                    ; preds = %2611
  br label %2618

; <label>:2618                                    ; preds = %2618, %2617
  %2619 = phi float [ %2628, %2618 ], [ %2615, %2617 ]
  %2620 = phi float [ %2629, %2618 ], [ %2612, %2617 ]
  %2621 = phi i32 [ %2630, %2618 ], [ 1, %2617 ]
  %2622 = getelementptr [12 x float], [12 x float]* %51, i32 0, i32 %2621
  %2623 = load float, float* %2622, align 4
  %2624 = getelementptr [12 x float], [12 x float]* %52, i32 0, i32 %2621
  %2625 = load float, float* %2624, align 4
  %2626 = fdiv fast float 1.000000e+00, %2625
  %2627 = fsub fast float %2623, %2626
  %2628 = call float @dx.op.binary.f32(i32 36, float %2619, float %2627)  ; FMin(a,b)
  %2629 = call float @dx.op.binary.f32(i32 35, float %2620, float %2623)  ; FMax(a,b)
  %2630 = add nuw i32 %2621, 1
  %2631 = icmp eq i32 %2630, %2604
  br i1 %2631, label %2632, label %2618

; <label>:2632                                    ; preds = %2618
  br label %2633

; <label>:2633                                    ; preds = %2632, %2611
  %2634 = phi float [ %2615, %2611 ], [ %2628, %2632 ]
  %2635 = phi float [ %2612, %2611 ], [ %2629, %2632 ]
  %2636 = fsub fast float %2635, %2634
  %2637 = fdiv fast float 1.000000e+00, %2636
  br label %2638

; <label>:2638                                    ; preds = %2633, %2608
  %2639 = phi float [ %2609, %2608 ], [ %2635, %2633 ]
  %2640 = phi float [ %2610, %2608 ], [ %2637, %2633 ]
  %2641 = fadd fast float %2342, %2639
  %2642 = fmul fast float %2641, %2640
  %2643 = call float @dx.op.unary.f32(i32 7, float %2642)  ; Saturate(value)
  %2644 = fmul fast float %2643, 2.000000e+00
  %2645 = fsub fast float 1.000000e+00, %2644
  %2646 = fmul fast float %2480, %2480
  %2647 = fsub fast float %2481, %2646
  %2648 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2647)  ; FMax(a,b)
  %2649 = fdiv fast float 1.000000e+00, %2648
  %2650 = fmul fast float %2481, %2480
  %2651 = fsub fast float %2482, %2650
  %2652 = fsub fast float %2645, %2480
  %2653 = fmul fast float %2645, %2645
  %2654 = fsub fast float %2653, %2481
  %2655 = fmul fast float %2649, %2651
  %2656 = fmul fast float %2655, %2652
  %2657 = fsub fast float %2654, %2656
  %2658 = fmul fast float %2481, %2481
  %2659 = fsub fast float %2483, %2658
  %2660 = fmul fast float %2651, %2651
  %2661 = fmul fast float %2660, %2649
  %2662 = fsub fast float %2659, %2661
  %2663 = fdiv fast float %2657, %2662
  %2664 = fmul fast float %2663, %2651
  %2665 = fsub fast float %2652, %2664
  %2666 = fmul fast float %2665, %2649
  %2667 = fmul fast float %2666, %2480
  %2668 = fsub fast float 1.000000e+00, %2667
  %2669 = fmul fast float %2663, %2481
  %2670 = fsub fast float %2668, %2669
  %2671 = fmul fast float %2666, %2666
  %2672 = fmul fast float %2663, 4.000000e+00
  %2673 = fmul fast float %2672, %2670
  %2674 = fsub fast float %2671, %2673
  %2675 = call float @dx.op.unary.f32(i32 24, float %2674)  ; Sqrt(value)
  %2676 = fcmp fast oge float %2666, 0.000000e+00
  %2677 = fsub fast float -0.000000e+00, %2675
  %2678 = select i1 %2676, float %2677, float %2675
  %2679 = fsub fast float %2678, %2666
  %2680 = fdiv fast float %2679, %2663
  %2681 = fdiv fast float %2670, %2679
  %2682 = fmul fast float %2680, 5.000000e-01
  %2683 = fmul fast float %2681, 2.000000e+00
  %2684 = select i1 %2676, float %2682, float %2683
  %2685 = select i1 %2676, float %2683, float %2682
  %2686 = call float @dx.op.binary.f32(i32 35, float %2684, float %2685)  ; FMax(a,b)
  %2687 = call float @dx.op.binary.f32(i32 36, float %2684, float %2685)  ; FMin(a,b)
  %2688 = fcmp fast ogt float %2645, %2686
  %2689 = fsub fast float %2645, %2687
  %2690 = fsub fast float %2645, %2686
  %2691 = fsub fast float %2686, %2687
  %2692 = select i1 %2688, float %2690, float %2691
  %2693 = fmul float %2689, %2692
  %2694 = select i1 %2688, float %2687, float %2645
  %2695 = fcmp fast ogt float %2645, %2687
  %2696 = fmul fast float %2694, %2686
  %2697 = fadd fast float %2694, %2686
  %2698 = fmul fast float %2697, %2480
  %2699 = fadd fast float %2696, %2481
  %2700 = fsub fast float %2699, %2698
  %2701 = fdiv fast float %2700, %2693
  %2702 = select i1 %2695, float %2701, float 0.000000e+00
  %2703 = fsub fast float 1.000000e+00, %2702
  %2704 = select i1 %2688, float %2703, float %2702
  %2705 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2465, 3
  %2707 = fmul fast float %2706, %2705
  %2708 = fsub fast float 1.000000e+00, %2707
  br label %2709

; <label>:2709                                    ; preds = %2638, %2350, %2315, %2311, %2306
  %2710 = phi float [ 1.000000e+00, %2306 ], [ %2708, %2638 ], [ 1.000000e+00, %2315 ], [ 1.000000e+00, %2350 ], [ 1.000000e+00, %2311 ]
  %2711 = fcmp fast ogt float %2307, 0.000000e+00
  br i1 %2711, label %2712, label %2718, !dx.controlflow.hints !131

; <label>:2712                                    ; preds = %2709
  %2713 = fadd fast float %2272, %2258
  %2714 = call float @dx.op.binary.f32(i32 35, float %2713, float 0.000000e+00)  ; FMax(a,b)
  %2715 = fadd fast float %2714, 0x3F10000000000000
  %2716 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %2265, float %2266, float undef, float undef, i32 0, i32 0, i32 undef, float %2715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2717 = extractvalue %dx.types.ResRet.f32 %2716, 0
  br label %2718

; <label>:2718                                    ; preds = %2712, %2709
  %2719 = phi float [ %2717, %2712 ], [ 1.000000e+00, %2709 ]
  %2720 = fsub fast float %2719, %2710
  %2721 = fmul fast float %2720, %2307
  %2722 = fadd fast float %2721, %2710
  %2723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2724 = extractvalue %dx.types.CBufRet.f32 %2723, 2
  %2725 = fcmp fast ogt float %2724, 0.000000e+00
  br i1 %2725, label %2726, label %2762, !dx.controlflow.hints !132

; <label>:2726                                    ; preds = %2718
  %2727 = fcmp fast ugt float %2724, 0.000000e+00
  br i1 %2727, label %2728, label %2759, !dx.controlflow.hints !133

; <label>:2728                                    ; preds = %2726
  %2729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2730 = extractvalue %dx.types.CBufRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.CBufRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.CBufRet.f32 %2729, 2
  %2733 = extractvalue %dx.types.CBufRet.f32 %2729, 3
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.CBufRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.CBufRet.f32 %2734, 2
  %2738 = extractvalue %dx.types.CBufRet.f32 %2734, 3
  %2739 = extractvalue %dx.types.CBufRet.f32 %2723, 0
  %2740 = extractvalue %dx.types.CBufRet.f32 %2723, 1
  %2741 = fadd fast float %2162, %2227
  %2742 = fadd fast float %2163, %2228
  %2743 = fadd fast float %2164, %2229
  %2744 = fmul fast float %2741, %2730
  %2745 = call float @dx.op.tertiary.f32(i32 46, float %2731, float %2742, float %2744)  ; FMad(a,b,c)
  %2746 = call float @dx.op.tertiary.f32(i32 46, float %2732, float %2743, float %2745)  ; FMad(a,b,c)
  %2747 = fadd fast float %2746, %2733
  %2748 = fmul fast float %2741, %2735
  %2749 = call float @dx.op.tertiary.f32(i32 46, float %2736, float %2742, float %2748)  ; FMad(a,b,c)
  %2750 = call float @dx.op.tertiary.f32(i32 46, float %2737, float %2743, float %2749)  ; FMad(a,b,c)
  %2751 = fadd fast float %2750, %2738
  %2752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %38, float %2747, float %2751, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = fmul fast float %2753, %2740
  %2755 = fadd fast float %2754, %2739
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = fmul fast float %2756, %2724
  %2758 = fsub fast float 1.000000e+00, %2757
  br label %2759

; <label>:2759                                    ; preds = %2728, %2726
  %2760 = phi float [ %2758, %2728 ], [ 1.000000e+00, %2726 ]
  %2761 = fmul fast float %2760, %2722
  br label %2762

; <label>:2762                                    ; preds = %2759, %2718, %2212
  %2763 = phi float [ 1.000000e+00, %2212 ], [ %2761, %2759 ], [ %2722, %2718 ]
  %2764 = call float @dx.op.binary.f32(i32 36, float %2763, float %2763)  ; FMin(a,b)
  %2765 = call float @dx.op.binary.f32(i32 36, float %2763, float %2764)  ; FMin(a,b)
  %2766 = fcmp fast ogt float %2765, 0.000000e+00
  br i1 %2766, label %2767, label %2925, !dx.controlflow.hints !134

; <label>:2767                                    ; preds = %2762
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.CBufRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.CBufRet.f32 %2768, 2
  %2772 = extractvalue %dx.types.CBufRet.f32 %2768, 3
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2776 = extractvalue %dx.types.CBufRet.f32 %2773, 2
  %2777 = extractvalue %dx.types.CBufRet.f32 %2773, 3
  %2778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2779 = extractvalue %dx.types.CBufRet.f32 %2778, 0
  %2780 = extractvalue %dx.types.CBufRet.f32 %2778, 1
  %2781 = extractvalue %dx.types.CBufRet.f32 %2778, 2
  %2782 = extractvalue %dx.types.CBufRet.f32 %2778, 3
  %2783 = fmul fast float %2769, %2227
  %2784 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2770, float %2783)  ; FMad(a,b,c)
  %2785 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2771, float %2784)  ; FMad(a,b,c)
  %2786 = fadd fast float %2785, %2772
  %2787 = fmul fast float %2774, %2227
  %2788 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2775, float %2787)  ; FMad(a,b,c)
  %2789 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2776, float %2788)  ; FMad(a,b,c)
  %2790 = fadd fast float %2789, %2777
  %2791 = fmul fast float %2779, %2227
  %2792 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2780, float %2791)  ; FMad(a,b,c)
  %2793 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2781, float %2792)  ; FMad(a,b,c)
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2798 = fmul fast float %2797, %2786
  %2799 = fmul fast float %2797, %2790
  %2800 = fadd fast float %2798, %2795
  %2801 = fadd fast float %2799, %2796
  %2802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2802, 0
  %2804 = extractvalue %dx.types.CBufRet.f32 %2802, 1
  %2805 = fsub fast float %2800, %2803
  %2806 = fsub fast float %2801, %2804
  %2807 = fcmp fast olt float %2805, 0.000000e+00
  %2808 = fcmp fast olt float %2806, 0.000000e+00
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2813 = extractvalue %dx.types.CBufRet.f32 %2809, 3
  %2814 = select i1 %2807, float %2810, float %2812
  %2815 = select i1 %2808, float %2811, float %2813
  %2816 = fmul fast float %2814, %2805
  %2817 = fmul fast float %2815, %2806
  %2818 = call float @dx.op.unary.f32(i32 6, float %2816)  ; FAbs(value)
  %2819 = call float @dx.op.unary.f32(i32 6, float %2817)  ; FAbs(value)
  %2820 = extractvalue %dx.types.CBufRet.f32 %2222, 0
  %2821 = call float @dx.op.binary.f32(i32 35, float %2818, float %2819)  ; FMax(a,b)
  %2822 = fsub fast float %2820, %2821
  %2823 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  %2824 = fcmp fast ogt float %2823, 0.000000e+00
  br i1 %2824, label %2825, label %2866, !dx.controlflow.hints !135

; <label>:2825                                    ; preds = %2767
  %2826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %2800, float %2801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2827 = extractvalue %dx.types.ResRet.f32 %2826, 1
  %2828 = fcmp fast ogt float %2827, 0.000000e+00
  br i1 %2828, label %2829, label %2862, !dx.controlflow.hints !136

; <label>:2829                                    ; preds = %2825
  %2830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %41, float %2800, float %2801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.ResRet.f32 %2830, 1
  %2833 = extractvalue %dx.types.ResRet.f32 %2830, 2
  %2834 = extractvalue %dx.types.ResRet.f32 %2830, 3
  %2835 = fsub fast float 1.000000e+00, %2782
  %2836 = fsub fast float %2835, %2793
  %2837 = fmul fast float %2836, 0x400921FB60000000
  %2838 = fadd fast float %2837, 0x3FF921FB60000000
  %2839 = call float @dx.op.unary.f32(i32 13, float %2838)  ; Sin(value)
  %2840 = fadd fast float %2839, -1.000000e+00
  %2841 = fmul fast float %2840, 0x3FD45F3060000000
  %2842 = fmul fast float %2836, 0x401921FB60000000
  %2843 = fadd fast float %2842, 0x400921FB60000000
  %2844 = call float @dx.op.unary.f32(i32 13, float %2843)  ; Sin(value)
  %2845 = fadd fast float %2844, 0x3E7777A5C0000000
  %2846 = fmul fast float %2845, 0x3FC45F3060000000
  %2847 = fmul fast float %2836, 0x4022D97C80000000
  %2848 = fadd fast float %2847, 0x4012D97C80000000
  %2849 = call float @dx.op.unary.f32(i32 13, float %2848)  ; Sin(value)
  %2850 = fadd fast float %2849, 1.000000e+00
  %2851 = fmul fast float %2850, 0x3FBB2995E0000000
  %2852 = fmul fast float %2836, 0x402921FB60000000
  %2853 = fadd fast float %2852, 0x401921FB60000000
  %2854 = call float @dx.op.unary.f32(i32 13, float %2853)  ; Sin(value)
  %2855 = fadd fast float %2854, 0xBE8777A5C0000000
  %2856 = fmul fast float %2855, 0x3FB45F3060000000
  %2857 = call float @dx.op.dot4.f32(i32 56, float %2831, float %2832, float %2833, float %2834, float %2841, float %2846, float %2851, float %2856)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2858 = fmul fast float %2857, 0xBFF7154760000000
  %2859 = call float @dx.op.unary.f32(i32 21, float %2858)  ; Exp(value)
  %2860 = call float @dx.op.unary.f32(i32 7, float %2859)  ; Saturate(value)
  %2861 = fadd float %2860, -1.000000e+00
  br label %2862

; <label>:2862                                    ; preds = %2829, %2825
  %2863 = phi float [ %2861, %2829 ], [ 0.000000e+00, %2825 ]
  %2864 = fmul fast float %2863, %2823
  %2865 = fadd fast float %2864, 1.000000e+00
  br label %2866

; <label>:2866                                    ; preds = %2862, %2767
  %2867 = phi float [ %2865, %2862 ], [ 1.000000e+00, %2767 ]
  %2868 = fmul fast float %2867, %2763
  %2869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2869, 1
  %2871 = fsub fast float -0.000000e+00, %199
  %2872 = fsub fast float -0.000000e+00, %200
  %2873 = fsub fast float -0.000000e+00, %2165
  %2874 = fsub fast float %2873, %2164
  %2875 = fadd fast float %2874, %2870
  %2876 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2871, float %2872, float %2875)  ; Dot3(ax,ay,az,bx,by,bz)
  %2877 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2215, float %2216, float %2217)  ; Dot3(ax,ay,az,bx,by,bz)
  %2878 = fdiv fast float 1.000000e+00, %2877
  %2879 = fmul fast float %2878, %2876
  %2880 = fmul fast float %2215, %2879
  %2881 = fmul fast float %2216, %2879
  %2882 = fadd fast float %2880, %199
  %2883 = fadd fast float %2881, %200
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 0
  %2886 = extractvalue %dx.types.CBufRet.f32 %2884, 1
  %2887 = fsub fast float %2882, %2885
  %2888 = fsub fast float %2883, %2886
  %2889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2890 = extractvalue %dx.types.CBufRet.f32 %2889, 2
  %2891 = extractvalue %dx.types.CBufRet.f32 %2889, 3
  %2892 = fmul fast float %2887, %2890
  %2893 = fmul fast float %2888, %2891
  %2894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.i32 %2894, 3
  %2896 = icmp eq i32 %2895, 0
  br i1 %2896, label %2902, label %2897, !dx.controlflow.hints !137

; <label>:2897                                    ; preds = %2866
  %2898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %2892, float %2893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.ResRet.f32 %2898, 1
  %2901 = extractvalue %dx.types.ResRet.f32 %2898, 2
  br label %2907

; <label>:2902                                    ; preds = %2866
  %2903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %41, float %2892, float %2893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2904 = extractvalue %dx.types.ResRet.f32 %2903, 0
  %2905 = extractvalue %dx.types.ResRet.f32 %2903, 1
  %2906 = extractvalue %dx.types.ResRet.f32 %2903, 2
  br label %2907

; <label>:2907                                    ; preds = %2902, %2897
  %2908 = phi float [ %2899, %2897 ], [ %2904, %2902 ]
  %2909 = phi float [ %2900, %2897 ], [ %2905, %2902 ]
  %2910 = phi float [ %2901, %2897 ], [ %2906, %2902 ]
  %2911 = extractvalue %dx.types.CBufRet.f32 %2869, 2
  %2912 = fmul fast float %2911, %2908
  %2913 = extractvalue %dx.types.CBufRet.f32 %2869, 0
  %2914 = fsub fast float %2879, %2913
  %2915 = fsub fast float %2914, %2912
  %2916 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2915)  ; FMax(a,b)
  %2917 = fmul fast float %2916, %2909
  %2918 = call float @dx.op.binary.f32(i32 36, float %2910, float %2917)  ; FMin(a,b)
  %2919 = fmul fast float %2918, 0xBFF7154760000000
  %2920 = call float @dx.op.unary.f32(i32 21, float %2919)  ; Exp(value)
  %2921 = fadd fast float %2920, -1.000000e+00
  %2922 = fmul fast float %2921, %2159
  %2923 = fadd fast float %2922, 1.000000e+00
  %2924 = fmul fast float %2868, %2923
  br label %2925

; <label>:2925                                    ; preds = %2907, %2762
  %2926 = phi float [ %2924, %2907 ], [ %2763, %2762 ]
  %2927 = call float @dx.op.binary.f32(i32 36, float %2926, float %2926)  ; FMin(a,b)
  %2928 = call float @dx.op.binary.f32(i32 36, float %2926, float %2927)  ; FMin(a,b)
  %2929 = fcmp fast ogt float %2928, 0.000000e+00
  br i1 %2929, label %2930, label %2954, !dx.controlflow.hints !138

; <label>:2930                                    ; preds = %2925
  %2931 = call float @dx.op.dot3.f32(i32 55, float %2215, float %2216, float %2217, float %212, float %213, float %214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2932 = fcmp fast ogt float %2153, 0.000000e+00
  %2933 = select i1 %2932, float 1.000000e+00, float -1.000000e+00
  %2934 = fmul fast float %123, 7.812500e-03
  %2935 = fmul fast float %123, 3.125000e-02
  %2936 = fadd fast float %2935, -3.125000e-02
  %2937 = fmul fast float %2933, 5.000000e-01
  %2938 = fmul fast float %2937, %2931
  %2939 = fmul fast float %2933, %2153
  %2940 = fadd fast float %2934, 4.921875e-01
  %2941 = fadd fast float %2940, %2938
  %2942 = fadd fast float %2934, 0x3FB25F3060000000
  %2943 = fadd fast float %2936, %2939
  %2944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %41, float %2941, float %2942, float %2943, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2945 = extractvalue %dx.types.ResRet.f32 %2944, 0
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 0
  %2948 = fmul fast float %2926, 0x400921FB60000000
  %2949 = fmul fast float %2948, %2945
  %2950 = fmul fast float %2949, %2947
  %2951 = fmul fast float %2950, %2219
  %2952 = fmul fast float %2950, %2220
  %2953 = fmul fast float %2950, %2221
  br label %2954

; <label>:2954                                    ; preds = %2930, %2925, %2148
  %2955 = phi float [ %2951, %2930 ], [ 0.000000e+00, %2148 ], [ 0.000000e+00, %2925 ]
  %2956 = phi float [ %2952, %2930 ], [ 0.000000e+00, %2148 ], [ 0.000000e+00, %2925 ]
  %2957 = phi float [ %2953, %2930 ], [ 0.000000e+00, %2148 ], [ 0.000000e+00, %2925 ]
  %2958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2959 = extractvalue %dx.types.CBufRet.i32 %2958, 0
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %3555, label %2961, !dx.controlflow.hints !139

; <label>:2961                                    ; preds = %2954
  %2962 = add nsw i32 %2959, -1
  %2963 = call i32 @dx.op.binary.i32(i32 37, i32 %2962, i32 0)  ; IMax(a,b)
  br label %2964

; <label>:2964                                    ; preds = %3548, %2961
  %2965 = phi i32 [ 0, %2961 ], [ %3552, %3548 ]
  %2966 = phi float [ %2955, %2961 ], [ %3549, %3548 ]
  %2967 = phi float [ %2956, %2961 ], [ %3550, %3548 ]
  %2968 = phi float [ %2957, %2961 ], [ %3551, %3548 ]
  %2969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2970 = extractvalue %dx.types.CBufRet.i32 %2969, 0
  %2971 = call i32 @dx.op.tertiary.i32(i32 49, i32 %360, i32 %2970, i32 %2965)  ; UMad(a,b,c)
  %2972 = shl i32 %2971, 2
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = icmp eq i32 %2974, 0
  br i1 %2975, label %3548, label %2976

; <label>:2976                                    ; preds = %2964
  br label %2977

; <label>:2977                                    ; preds = %3416, %2976
  %2978 = phi i32 [ %2987, %3416 ], [ %2974, %2976 ]
  %2979 = phi float [ %3417, %3416 ], [ %2966, %2976 ]
  %2980 = phi float [ %3418, %3416 ], [ %2967, %2976 ]
  %2981 = phi float [ %3419, %3416 ], [ %2968, %2976 ]
  %2982 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2978)  ; FirstbitLo(value)
  %2983 = shl i32 %2965, 5
  %2984 = add i32 %2982, %2983
  %2985 = and i32 %2982, 31
  %2986 = shl i32 1, %2985
  %2987 = xor i32 %2986, %2978
  %2988 = mul i32 %2984, 112
  %2989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.f32 %2989, 0
  %2991 = extractvalue %dx.types.ResRet.f32 %2989, 1
  %2992 = extractvalue %dx.types.ResRet.f32 %2989, 2
  %2993 = or i32 %2988, 12
  %2994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = add i32 %2988, 16
  %2997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.ResRet.f32 %2997, 1
  %3000 = extractvalue %dx.types.ResRet.f32 %2997, 2
  %3001 = add i32 %2988, 28
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = add i32 %2988, 32
  %3005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.f32 %3005, 0
  %3007 = extractvalue %dx.types.ResRet.f32 %3005, 1
  %3008 = extractvalue %dx.types.ResRet.f32 %3005, 2
  %3009 = add i32 %2988, 44
  %3010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.f32 %3010, 0
  %3012 = add i32 %2988, 48
  %3013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.f32 %3013, 0
  %3015 = extractvalue %dx.types.ResRet.f32 %3013, 1
  %3016 = extractvalue %dx.types.ResRet.f32 %3013, 2
  %3017 = extractvalue %dx.types.ResRet.f32 %3013, 3
  %3018 = add i32 %2988, 64
  %3019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.f32 %3019, 0
  %3021 = extractvalue %dx.types.ResRet.f32 %3019, 1
  %3022 = extractvalue %dx.types.ResRet.f32 %3019, 2
  %3023 = extractvalue %dx.types.ResRet.f32 %3019, 3
  %3024 = add i32 %2988, 92
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = and i32 %3026, 65535
  %3028 = uitofp i32 %3027 to float
  %3029 = lshr i32 %3026, 16
  %3030 = uitofp i32 %3029 to float
  %3031 = and i32 %3003, 65535
  %3032 = and i32 %3003, 50331648
  %3033 = icmp eq i32 %3032, 33554432
  %3034 = fdiv fast float 1.000000e+00, %2205
  br i1 %3033, label %3035, label %3227, !dx.controlflow.hints !140

; <label>:3035                                    ; preds = %2977
  %3036 = fsub fast float %3014, %3006
  %3037 = fsub fast float %3015, %3007
  %3038 = fsub fast float %3016, %3008
  %3039 = fmul fast float %2206, %2205
  %3040 = fmul fast float %2207, %2205
  %3041 = fmul fast float %2208, %2205
  %3042 = fadd fast float %3039, %2188
  %3043 = fadd fast float %3040, %2189
  %3044 = fadd fast float %3041, %2190
  %3045 = fmul fast float %3006, 2.000000e+00
  %3046 = fmul fast float %3007, 2.000000e+00
  %3047 = fmul fast float %3008, 2.000000e+00
  %3048 = call float @dx.op.dot3.f32(i32 55, float %3045, float %3046, float %3047, float %3045, float %3046, float %3047)  ; Dot3(ax,ay,az,bx,by,bz)
  %3049 = fdiv fast float %3045, %3048
  %3050 = fdiv fast float %3046, %3048
  %3051 = fdiv fast float %3047, %3048
  %3052 = fsub fast float %2188, %3036
  %3053 = fsub fast float %2189, %3037
  %3054 = fsub fast float %2190, %3038
  %3055 = call float @dx.op.dot3.f32(i32 55, float %3052, float %3053, float %3054, float %3045, float %3046, float %3047)  ; Dot3(ax,ay,az,bx,by,bz)
  %3056 = fmul fast float %3055, %3049
  %3057 = fmul fast float %3055, %3050
  %3058 = fmul fast float %3055, %3051
  %3059 = fsub fast float %2188, %3056
  %3060 = fsub fast float %2189, %3057
  %3061 = fsub fast float %2190, %3058
  %3062 = fsub fast float %3042, %3036
  %3063 = fsub fast float %3043, %3037
  %3064 = fsub fast float %3044, %3038
  %3065 = call float @dx.op.dot3.f32(i32 55, float %3062, float %3063, float %3064, float %3045, float %3046, float %3047)  ; Dot3(ax,ay,az,bx,by,bz)
  %3066 = fmul fast float %3065, %3049
  %3067 = fmul fast float %3065, %3050
  %3068 = fmul fast float %3065, %3051
  %3069 = fsub fast float %3042, %3066
  %3070 = fsub fast float %3043, %3067
  %3071 = fsub fast float %3044, %3068
  %3072 = fsub fast float %3069, %3059
  %3073 = fsub fast float %3070, %3060
  %3074 = fsub fast float %3071, %3061
  %3075 = fsub fast float %3036, %3059
  %3076 = fsub fast float %3037, %3060
  %3077 = fsub fast float %3038, %3061
  %3078 = call float @dx.op.dot3.f32(i32 55, float %3075, float %3076, float %3077, float %3072, float %3073, float %3074)  ; Dot3(ax,ay,az,bx,by,bz)
  %3079 = call float @dx.op.dot3.f32(i32 55, float %3072, float %3073, float %3074, float %3072, float %3073, float %3074)  ; Dot3(ax,ay,az,bx,by,bz)
  %3080 = fdiv fast float %3078, %3079
  %3081 = fcmp fast une float %3059, %3069
  %3082 = fcmp fast une float %3060, %3070
  %3083 = fcmp fast une float %3061, %3071
  %3084 = or i1 %3081, %3082
  %3085 = or i1 %3083, %3084
  %3086 = select i1 %3085, float %3080, float 0.000000e+00
  %3087 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3088 = fmul fast float %3087, %3039
  %3089 = fmul fast float %3087, %3040
  %3090 = fmul fast float %3087, %3041
  %3091 = fadd fast float %3052, %3088
  %3092 = fadd fast float %3053, %3089
  %3093 = fadd fast float %3054, %3090
  %3094 = call float @dx.op.dot3.f32(i32 55, float %3091, float %3092, float %3093, float %3045, float %3046, float %3047)  ; Dot3(ax,ay,az,bx,by,bz)
  %3095 = fdiv fast float %3094, %3048
  %3096 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  %3097 = fmul fast float %3045, %3096
  %3098 = fmul fast float %3046, %3096
  %3099 = fmul fast float %3047, %3096
  %3100 = fadd fast float %3097, %3036
  %3101 = fadd fast float %3098, %3037
  %3102 = fadd fast float %3099, %3038
  %3103 = fmul fast float %3022, %2998
  %3104 = fmul fast float %3022, %2999
  %3105 = fmul fast float %3022, %3000
  %3106 = fadd fast float %3100, %3103
  %3107 = fadd fast float %3101, %3104
  %3108 = fadd fast float %3102, %3105
  %3109 = fsub fast float -0.000000e+00, %3021
  %3110 = fdiv fast float %3109, %3020
  %3111 = fmul fast float %3110, %3110
  %3112 = call float @dx.op.dot3.f32(i32 55, float %2206, float %2207, float %2208, float %2998, float %2999, float %3000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3113 = fsub fast float %2188, %3106
  %3114 = fsub fast float %2189, %3107
  %3115 = fsub fast float %2190, %3108
  %3116 = call float @dx.op.dot3.f32(i32 55, float %3113, float %3114, float %3115, float %2998, float %2999, float %3000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3117 = fsub fast float %3106, %2188
  %3118 = fsub fast float %3107, %2189
  %3119 = fsub fast float %3108, %2190
  %3120 = fmul fast float %3112, %3112
  %3121 = fsub fast float %3120, %3111
  %3122 = fmul fast float %3116, %3112
  %3123 = call float @dx.op.dot3.f32(i32 55, float %3117, float %3118, float %3119, float %2206, float %2207, float %2208)  ; Dot3(ax,ay,az,bx,by,bz)
  %3124 = fmul fast float %3123, %3111
  %3125 = fadd fast float %3124, %3122
  %3126 = fmul fast float %3125, 2.000000e+00
  %3127 = fmul fast float %3116, %3116
  %3128 = call float @dx.op.dot3.f32(i32 55, float %3117, float %3118, float %3119, float %3117, float %3118, float %3119)  ; Dot3(ax,ay,az,bx,by,bz)
  %3129 = fmul fast float %3128, %3111
  %3130 = fsub fast float %3127, %3129
  %3131 = fmul fast float %3126, %3126
  %3132 = fmul fast float %3121, 4.000000e+00
  %3133 = fmul fast float %3132, %3130
  %3134 = fsub fast float %3131, %3133
  %3135 = fcmp fast ogt float %3134, 0.000000e+00
  br i1 %3135, label %3136, label %3227, !dx.controlflow.hints !141

; <label>:3136                                    ; preds = %3035
  %3137 = call float @dx.op.unary.f32(i32 24, float %3134)  ; Sqrt(value)
  %3138 = fdiv fast float 5.000000e-01, %3121
  %3139 = fsub fast float -0.000000e+00, %3126
  %3140 = fsub fast float %3139, %3137
  %3141 = fmul fast float %3140, %3138
  %3142 = fsub fast float %3137, %3126
  %3143 = fmul fast float %3142, %3138
  %3144 = call float @dx.op.binary.f32(i32 35, float %3141, float %3143)  ; FMax(a,b)
  %3145 = call float @dx.op.binary.f32(i32 36, float %3141, float %3143)  ; FMin(a,b)
  %3146 = fsub fast float %3100, %2188
  %3147 = fsub fast float %3101, %2189
  %3148 = fsub fast float %3102, %2190
  %3149 = call float @dx.op.dot3.f32(i32 55, float %3146, float %3147, float %3148, float %2998, float %2999, float %3000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3150 = fdiv fast float %3149, %3112
  %3151 = fcmp fast ogt float %3112, 0.000000e+00
  br i1 %3151, label %3152, label %3155, !dx.controlflow.hints !142

; <label>:3152                                    ; preds = %3136
  %3153 = call float @dx.op.binary.f32(i32 36, float %3145, float %3150)  ; FMin(a,b)
  %3154 = call float @dx.op.binary.f32(i32 36, float %3144, float %3150)  ; FMin(a,b)
  br label %3158

; <label>:3155                                    ; preds = %3136
  %3156 = call float @dx.op.binary.f32(i32 35, float %3145, float %3150)  ; FMax(a,b)
  %3157 = call float @dx.op.binary.f32(i32 35, float %3144, float %3150)  ; FMax(a,b)
  br label %3158

; <label>:3158                                    ; preds = %3155, %3152
  %3159 = phi float [ %3153, %3152 ], [ %3156, %3155 ]
  %3160 = phi float [ %3154, %3152 ], [ %3157, %3155 ]
  %3161 = fcmp fast oge float %3159, 0.000000e+00
  %3162 = fcmp fast olt float %3159, %2205
  %3163 = and i1 %3161, %3162
  %3164 = fcmp fast ogt float %3160, 0.000000e+00
  %3165 = fcmp fast ole float %3160, %2205
  %3166 = and i1 %3164, %3165
  %3167 = or i1 %3163, %3166
  br i1 %3167, label %3168, label %3227, !dx.controlflow.hints !143

; <label>:3168                                    ; preds = %3158
  %3169 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3159)  ; FMax(a,b)
  %3170 = call float @dx.op.binary.f32(i32 36, float %2205, float %3160)  ; FMin(a,b)
  br i1 %3151, label %3171, label %3193, !dx.controlflow.hints !144

; <label>:3171                                    ; preds = %3168
  %3172 = fmul fast float %3170, %2206
  %3173 = fmul fast float %3170, %2207
  %3174 = fmul fast float %3170, %2208
  %3175 = fsub fast float %3117, %3172
  %3176 = fsub fast float %3118, %3173
  %3177 = fsub fast float %3119, %3174
  %3178 = call float @dx.op.dot3.f32(i32 55, float %3175, float %3176, float %3177, float %3175, float %3176, float %3177)  ; Dot3(ax,ay,az,bx,by,bz)
  %3179 = call float @dx.op.unary.f32(i32 25, float %3178)  ; Rsqrt(value)
  %3180 = fmul fast float %3179, %3175
  %3181 = fmul fast float %3179, %3176
  %3182 = fmul fast float %3179, %3177
  %3183 = call float @dx.op.dot3.f32(i32 55, float %3180, float %3181, float %3182, float %2998, float %2999, float %3000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = fmul fast float %3183, %3020
  %3185 = fadd fast float %3184, %3021
  %3186 = fcmp fast olt float %3185, 0xBF1A36E2E0000000
  %3187 = select i1 %3186, float 0.000000e+00, float %3169
  %3188 = select i1 %3186, float %3169, float %3170
  %3189 = fsub fast float %3187, %3188
  %3190 = call float @dx.op.unary.f32(i32 6, float %3189)  ; FAbs(value)
  %3191 = fcmp fast olt float %3190, 0x3F1A36E2E0000000
  br i1 %3191, label %3192, label %3215, !dx.controlflow.hints !145

; <label>:3192                                    ; preds = %3171
  br label %3215

; <label>:3193                                    ; preds = %3168
  %3194 = fmul fast float %3169, %2206
  %3195 = fmul fast float %3169, %2207
  %3196 = fmul fast float %3169, %2208
  %3197 = fsub fast float %3117, %3194
  %3198 = fsub fast float %3118, %3195
  %3199 = fsub fast float %3119, %3196
  %3200 = call float @dx.op.dot3.f32(i32 55, float %3197, float %3198, float %3199, float %3197, float %3198, float %3199)  ; Dot3(ax,ay,az,bx,by,bz)
  %3201 = call float @dx.op.unary.f32(i32 25, float %3200)  ; Rsqrt(value)
  %3202 = fmul fast float %3201, %3197
  %3203 = fmul fast float %3201, %3198
  %3204 = fmul fast float %3201, %3199
  %3205 = call float @dx.op.dot3.f32(i32 55, float %3202, float %3203, float %3204, float %2998, float %2999, float %3000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3206 = fmul fast float %3205, %3020
  %3207 = fadd fast float %3206, %3021
  %3208 = fcmp fast olt float %3207, 0xBF1A36E2E0000000
  %3209 = select i1 %3208, float %3170, float %3169
  %3210 = select i1 %3208, float %2205, float %3170
  %3211 = fsub fast float %3209, %3210
  %3212 = call float @dx.op.unary.f32(i32 6, float %3211)  ; FAbs(value)
  %3213 = fcmp fast olt float %3212, 0x3F1A36E2E0000000
  br i1 %3213, label %3214, label %3215, !dx.controlflow.hints !146

; <label>:3214                                    ; preds = %3193
  br label %3215

; <label>:3215                                    ; preds = %3214, %3193, %3192, %3171
  %3216 = phi float [ 0.000000e+00, %3192 ], [ %3187, %3171 ], [ %3209, %3214 ], [ %3209, %3193 ]
  %3217 = phi float [ %3188, %3192 ], [ %3188, %3171 ], [ %2205, %3214 ], [ %3210, %3193 ]
  %3218 = fmul fast float %3216, %2206
  %3219 = fmul fast float %3216, %2207
  %3220 = fmul fast float %3216, %2208
  %3221 = fadd fast float %3218, %2188
  %3222 = fadd fast float %3219, %2189
  %3223 = fadd fast float %3220, %2190
  %3224 = fsub fast float %3217, %3216
  %3225 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %3224)  ; FMax(a,b)
  %3226 = fmul fast float %3225, %3034
  br label %3227

; <label>:3227                                    ; preds = %3215, %3158, %3035, %2977
  %3228 = phi float [ %3106, %3215 ], [ %3106, %3158 ], [ %3106, %3035 ], [ %3014, %2977 ]
  %3229 = phi float [ %3107, %3215 ], [ %3107, %3158 ], [ %3107, %3035 ], [ %3015, %2977 ]
  %3230 = phi float [ %3108, %3215 ], [ %3108, %3158 ], [ %3108, %3035 ], [ %3016, %2977 ]
  %3231 = phi float [ %3221, %3215 ], [ %2188, %3158 ], [ %2188, %3035 ], [ %2188, %2977 ]
  %3232 = phi float [ %3222, %3215 ], [ %2189, %3158 ], [ %2189, %3035 ], [ %2189, %2977 ]
  %3233 = phi float [ %3223, %3215 ], [ %2190, %3158 ], [ %2190, %3035 ], [ %2190, %2977 ]
  %3234 = phi float [ %3225, %3215 ], [ %2205, %3158 ], [ %2205, %3035 ], [ %2205, %2977 ]
  %3235 = phi float [ %3226, %3215 ], [ 1.000000e+00, %3158 ], [ 1.000000e+00, %3035 ], [ 1.000000e+00, %2977 ]
  %3236 = fsub fast float %3228, %3231
  %3237 = fsub fast float %3229, %3232
  %3238 = fsub fast float %3230, %3233
  %3239 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3238, float %2206, float %2207, float %2208)  ; Dot3(ax,ay,az,bx,by,bz)
  %3240 = call float @dx.op.binary.f32(i32 35, float %3239, float 0.000000e+00)  ; FMax(a,b)
  %3241 = call float @dx.op.binary.f32(i32 36, float %3240, float %3234)  ; FMin(a,b)
  %3242 = fmul fast float %3241, %2206
  %3243 = fmul fast float %3241, %2207
  %3244 = fmul fast float %3241, %2208
  %3245 = fsub fast float %3231, %3228
  %3246 = fadd fast float %3245, %3242
  %3247 = fsub fast float %3232, %3229
  %3248 = fadd fast float %3247, %3243
  %3249 = fsub fast float %3233, %3230
  %3250 = fadd fast float %3249, %3244
  %3251 = fmul fast float %3246, %3246
  %3252 = fmul fast float %3248, %3248
  %3253 = fadd fast float %3251, %3252
  %3254 = fmul fast float %3250, %3250
  %3255 = fadd fast float %3253, %3254
  %3256 = call float @dx.op.unary.f32(i32 24, float %3255)  ; Sqrt(value)
  %3257 = fsub fast float -0.000000e+00, %3241
  %3258 = call float @dx.op.unary.f32(i32 6, float %3257)  ; FAbs(value)
  %3259 = fadd fast float %3258, 0x3DDB7CDFE0000000
  %3260 = fcmp fast oge float %3256, 0.000000e+00
  %3261 = fsub fast float -0.000000e+00, %3259
  %3262 = select i1 %3260, float %3261, float %3259
  %3263 = fadd fast float %3262, %3256
  %3264 = fsub fast float -0.000000e+00, %3256
  %3265 = select i1 %3260, float %3256, float %3264
  %3266 = fadd fast float %3259, %3265
  %3267 = fdiv fast float %3263, %3266
  %3268 = select i1 %3260, float 0x3FE921FB60000000, float 0x4002D97C80000000
  %3269 = fmul fast float %3267, %3267
  %3270 = fmul fast float %3269, 0x3FC9205BC0000000
  %3271 = fadd fast float %3270, 0xBFEF6A1620000000
  %3272 = fmul fast float %3271, %3267
  %3273 = fadd fast float %3272, %3268
  %3274 = fcmp ole float %3241, -0.000000e+00
  %3275 = fsub fast float -0.000000e+00, %3273
  %3276 = select i1 %3274, float %3273, float %3275
  %3277 = fsub fast float %3234, %3241
  %3278 = call float @dx.op.unary.f32(i32 6, float %3277)  ; FAbs(value)
  %3279 = fadd fast float %3278, 0x3DDB7CDFE0000000
  %3280 = fsub fast float -0.000000e+00, %3279
  %3281 = select i1 %3260, float %3280, float %3279
  %3282 = fadd fast float %3281, %3256
  %3283 = fadd fast float %3279, %3265
  %3284 = fdiv fast float %3282, %3283
  %3285 = fmul fast float %3284, %3284
  %3286 = fmul fast float %3285, 0x3FC9205BC0000000
  %3287 = fadd fast float %3286, 0xBFEF6A1620000000
  %3288 = fmul fast float %3287, %3284
  %3289 = fadd fast float %3288, %3268
  %3290 = fcmp fast oge float %3277, 0.000000e+00
  %3291 = fsub fast float -0.000000e+00, %3289
  %3292 = select i1 %3290, float %3289, float %3291
  %3293 = fsub fast float %3292, %3276
  %3294 = fmul fast float %3293, %123
  %3295 = fadd fast float %3294, %3276
  %3296 = call float @dx.op.unary.f32(i32 14, float %3295)  ; Tan(value)
  %3297 = fmul fast float %3296, %3256
  %3298 = fadd fast float %3297, %3241
  %3299 = fmul fast float %3256, %3256
  %3300 = fmul fast float %3297, %3297
  %3301 = fadd fast float %3300, %3299
  %3302 = fmul fast float %3293, %3301
  %3303 = fdiv fast float %3256, %3302
  %3304 = fdiv fast float 1.000000e+00, %3303
  %3305 = fmul fast float %3235, %3034
  %3306 = fmul fast float %3305, %3304
  %3307 = fmul fast float %3298, %2206
  %3308 = fmul fast float %3298, %2207
  %3309 = fmul fast float %3298, %2208
  %3310 = fadd fast float %3307, %3231
  %3311 = fadd fast float %3308, %3232
  %3312 = fadd fast float %3309, %3233
  %3313 = call float @dx.op.dot3.f32(i32 55, float %3006, float %3007, float %3008, float %3006, float %3007, float %3008)  ; Dot3(ax,ay,az,bx,by,bz)
  %3314 = fsub fast float %3310, %3014
  %3315 = fsub fast float %3311, %3015
  %3316 = fsub fast float %3312, %3016
  %3317 = call float @dx.op.dot3.f32(i32 55, float %3314, float %3315, float %3316, float %3006, float %3007, float %3008)  ; Dot3(ax,ay,az,bx,by,bz)
  %3318 = fdiv fast float %3317, %3313
  %3319 = call float @dx.op.binary.f32(i32 35, float %3318, float -1.000000e+00)  ; FMax(a,b)
  %3320 = call float @dx.op.binary.f32(i32 36, float %3319, float 1.000000e+00)  ; FMin(a,b)
  %3321 = fmul fast float %3320, %3006
  %3322 = fmul fast float %3320, %3007
  %3323 = fmul fast float %3320, %3008
  %3324 = fadd fast float %3321, %3014
  %3325 = fadd fast float %3322, %3015
  %3326 = fadd fast float %3323, %3016
  %3327 = fsub fast float %3324, %3310
  %3328 = fsub fast float %3325, %3311
  %3329 = fsub fast float %3326, %3312
  %3330 = call float @dx.op.dot3.f32(i32 55, float %3327, float %3328, float %3329, float %3327, float %3328, float %3329)  ; Dot3(ax,ay,az,bx,by,bz)
  %3331 = call float @dx.op.unary.f32(i32 24, float %3330)  ; Sqrt(value)
  %3332 = fdiv fast float 1.000000e+00, %3331
  %3333 = fmul fast float %3327, %3332
  %3334 = fmul fast float %3328, %3332
  %3335 = fmul fast float %3329, %3332
  %3336 = fadd fast float %3331, %2995
  %3337 = fdiv fast float 1.000000e+00, %3336
  %3338 = fmul float %3011, %3337
  %3339 = fmul float %3338, %3338
  %3340 = call float @dx.op.unary.f32(i32 7, float %3339)  ; Saturate(value)
  br i1 %3033, label %3341, label %3365, !dx.controlflow.hints !147

; <label>:3341                                    ; preds = %3227
  %3342 = fmul fast float %3022, %2998
  %3343 = fmul fast float %3022, %2999
  %3344 = fmul fast float %3022, %3000
  %3345 = fsub fast float %3342, %3310
  %3346 = fadd fast float %3345, %3324
  %3347 = fsub fast float %3343, %3311
  %3348 = fadd fast float %3347, %3325
  %3349 = fsub fast float %3344, %3312
  %3350 = fadd fast float %3349, %3326
  %3351 = call float @dx.op.dot3.f32(i32 55, float %3346, float %3348, float %3350, float %3346, float %3348, float %3350)  ; Dot3(ax,ay,az,bx,by,bz)
  %3352 = call float @dx.op.unary.f32(i32 25, float %3351)  ; Rsqrt(value)
  %3353 = fmul fast float %3352, %3346
  %3354 = fmul fast float %3352, %3348
  %3355 = fmul fast float %3352, %3350
  %3356 = fsub fast float %3310, %3324
  %3357 = fsub fast float %3311, %3325
  %3358 = fsub fast float %3312, %3326
  %3359 = fsub fast float -0.000000e+00, %3356
  %3360 = fsub fast float -0.000000e+00, %3357
  %3361 = fsub fast float -0.000000e+00, %3358
  %3362 = call float @dx.op.dot3.f32(i32 55, float %3359, float %3360, float %3361, float %2998, float %2999, float %3000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3363 = fcmp fast ogt float %3362, 0.000000e+00
  %3364 = uitofp i1 %3363 to float
  br label %3365

; <label>:3365                                    ; preds = %3341, %3227
  %3366 = phi float [ %3364, %3341 ], [ 1.000000e+00, %3227 ]
  %3367 = phi float [ %3353, %3341 ], [ %3333, %3227 ]
  %3368 = phi float [ %3354, %3341 ], [ %3334, %3227 ]
  %3369 = phi float [ %3355, %3341 ], [ %3335, %3227 ]
  %3370 = call float @dx.op.dot3.f32(i32 55, float %2998, float %2999, float %3000, float %3367, float %3368, float %3369)  ; Dot3(ax,ay,az,bx,by,bz)
  %3371 = fmul fast float %3370, %3370
  %3372 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3373 = fsub fast float 1.000000e+00, %3372
  %3374 = fmul fast float %3373, 5.000000e-01
  %3375 = fcmp fast ogt float %3370, 0.000000e+00
  %3376 = fsub fast float 1.000000e+00, %3374
  %3377 = select i1 %3375, float %3374, float %3376
  %3378 = fmul fast float %3377, %3030
  %3379 = fadd fast float %3378, %3028
  %3380 = fmul fast float %3379, 0x3EF0001000000000
  %3381 = fsub fast float %3324, %433
  %3382 = fsub fast float %3325, %434
  %3383 = fsub fast float %3326, %435
  %3384 = call float @dx.op.dot3.f32(i32 55, float %3381, float %3382, float %3383, float %3381, float %3382, float %3383)  ; Dot3(ax,ay,az,bx,by,bz)
  %3385 = fmul fast float %2160, %2160
  %3386 = fsub fast float %3384, %3385
  %3387 = fdiv fast float %3386, %3384
  %3388 = call float @dx.op.unary.f32(i32 24, float %3387)  ; Sqrt(value)
  %3389 = fsub fast float 1.000000e+00, %3388
  %3390 = fcmp fast olt float %3384, %3385
  %3391 = fmul fast float %3389, 2.560000e+02
  %3392 = select i1 %3390, float 2.560000e+02, float %3391
  %3393 = call float @dx.op.unary.f32(i32 23, float %3392)  ; Log(value)
  %3394 = call float @dx.op.binary.f32(i32 36, float %3393, float 7.000000e+00)  ; FMin(a,b)
  %3395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %39, float %3380, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float %3394)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3397 = fmul fast float %3370, %3020
  %3398 = fadd fast float %3397, %3021
  %3399 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3400 = select i1 %3033, float 1.000000e+00, float %3399
  %3401 = select i1 %3033, float %3399, float 1.000000e+00
  %3402 = fmul fast float %3331, %3017
  %3403 = fsub fast float 1.000000e+00, %3402
  %3404 = fmul fast float %3403, %3023
  %3405 = call float @dx.op.unary.f32(i32 7, float %3404)  ; Saturate(value)
  %3406 = fmul fast float %3405, %3401
  %3407 = fmul fast float %3406, 2.000000e+00
  %3408 = fsub fast float 3.000000e+00, %3407
  %3409 = fmul fast float %3396, %3366
  %3410 = fmul fast float %3406, %3406
  %3411 = fmul fast float %3410, %3409
  %3412 = fmul fast float %3411, %3408
  %3413 = call float @dx.op.binary.f32(i32 36, float %3412, float %3412)  ; FMin(a,b)
  %3414 = call float @dx.op.binary.f32(i32 36, float %3412, float %3413)  ; FMin(a,b)
  %3415 = fcmp fast ogt float %3414, 0.000000e+00
  br i1 %3415, label %3421, label %3416, !dx.controlflow.hints !148

; <label>:3416                                    ; preds = %3514, %3509, %3365
  %3417 = phi float [ %3544, %3514 ], [ %2979, %3509 ], [ %2979, %3365 ]
  %3418 = phi float [ %3545, %3514 ], [ %2980, %3509 ], [ %2980, %3365 ]
  %3419 = phi float [ %3546, %3514 ], [ %2981, %3509 ], [ %2981, %3365 ]
  %3420 = icmp eq i32 %2978, %2986
  br i1 %3420, label %3547, label %2977

; <label>:3421                                    ; preds = %3365
  %3422 = icmp eq i32 %3031, 255
  br i1 %3422, label %3509, label %3423, !dx.controlflow.hints !149

; <label>:3423                                    ; preds = %3421
  %3424 = mul nuw nsw i32 %3031, 176
  %3425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.f32 %3425, 0
  %3427 = extractvalue %dx.types.ResRet.f32 %3425, 1
  %3428 = extractvalue %dx.types.ResRet.f32 %3425, 2
  %3429 = extractvalue %dx.types.ResRet.f32 %3425, 3
  %3430 = add nuw nsw i32 %3424, 16
  %3431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.f32 %3431, 0
  %3433 = extractvalue %dx.types.ResRet.f32 %3431, 1
  %3434 = add nuw nsw i32 %3424, 32
  %3435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.ResRet.f32 %3435, 2
  %3438 = add nuw nsw i32 %3424, 48
  %3439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.f32 %3439, 0
  %3441 = extractvalue %dx.types.ResRet.f32 %3439, 1
  %3442 = extractvalue %dx.types.ResRet.f32 %3439, 2
  %3443 = extractvalue %dx.types.ResRet.f32 %3439, 3
  %3444 = add nuw nsw i32 %3424, 64
  %3445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.ResRet.f32 %3445, 1
  %3448 = extractvalue %dx.types.ResRet.f32 %3445, 2
  %3449 = extractvalue %dx.types.ResRet.f32 %3445, 3
  %3450 = add nuw nsw i32 %3424, 80
  %3451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.f32 %3451, 0
  %3453 = extractvalue %dx.types.ResRet.f32 %3451, 1
  %3454 = extractvalue %dx.types.ResRet.f32 %3451, 2
  %3455 = extractvalue %dx.types.ResRet.f32 %3451, 3
  %3456 = add nuw nsw i32 %3424, 96
  %3457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3460 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3461 = extractvalue %dx.types.ResRet.f32 %3457, 3
  %3462 = bitcast float %3433 to i32
  %3463 = fmul fast float %3437, %3333
  %3464 = fmul fast float %3437, %3334
  %3465 = fmul fast float %3437, %3335
  %3466 = fsub fast float %3310, %3463
  %3467 = fsub fast float %3311, %3464
  %3468 = fsub fast float %3312, %3465
  %3469 = fmul fast float %3466, %3440
  %3470 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3446, float %3469)  ; FMad(a,b,c)
  %3471 = call float @dx.op.tertiary.f32(i32 46, float %3468, float %3452, float %3470)  ; FMad(a,b,c)
  %3472 = fadd fast float %3471, %3458
  %3473 = fmul fast float %3466, %3441
  %3474 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3447, float %3473)  ; FMad(a,b,c)
  %3475 = call float @dx.op.tertiary.f32(i32 46, float %3468, float %3453, float %3474)  ; FMad(a,b,c)
  %3476 = fadd fast float %3475, %3459
  %3477 = fmul fast float %3466, %3442
  %3478 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3448, float %3477)  ; FMad(a,b,c)
  %3479 = call float @dx.op.tertiary.f32(i32 46, float %3468, float %3454, float %3478)  ; FMad(a,b,c)
  %3480 = fadd fast float %3479, %3460
  %3481 = fmul fast float %3466, %3443
  %3482 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3449, float %3481)  ; FMad(a,b,c)
  %3483 = call float @dx.op.tertiary.f32(i32 46, float %3468, float %3455, float %3482)  ; FMad(a,b,c)
  %3484 = fadd fast float %3483, %3461
  %3485 = fdiv fast float %3472, %3484
  %3486 = fdiv fast float %3476, %3484
  %3487 = fdiv fast float %3480, %3484
  %3488 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3487)  ; FMax(a,b)
  %3489 = fmul fast float %3428, 5.000000e-01
  %3490 = call float @dx.op.tertiary.f32(i32 46, float %3489, float -0.000000e+00, float 0.000000e+00)  ; FMad(a,b,c)
  %3491 = fadd fast float %3490, %3485
  %3492 = fadd fast float %3486, %3489
  %3493 = fmul fast float %3491, %3432
  %3494 = fmul fast float %3492, %3432
  %3495 = call float @dx.op.binary.f32(i32 35, float %3493, float %3428)  ; FMax(a,b)
  %3496 = call float @dx.op.binary.f32(i32 35, float %3494, float %3428)  ; FMax(a,b)
  %3497 = call float @dx.op.binary.f32(i32 36, float %3495, float %3429)  ; FMin(a,b)
  %3498 = call float @dx.op.binary.f32(i32 36, float %3496, float %3429)  ; FMin(a,b)
  %3499 = fadd fast float %3497, %3426
  %3500 = fadd fast float %3498, %3427
  %3501 = uitofp i32 %3462 to float
  %3502 = fadd fast float %3488, %3436
  %3503 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %3499, float %3500, float %3501, float undef, i32 0, i32 0, i32 undef, float %3502)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 0
  %3505 = fadd fast float %3504, -1.000000e+00
  %3506 = fmul fast float %3505, %3400
  %3507 = fadd fast float %3506, 1.000000e+00
  %3508 = fmul fast float %3507, %3412
  br label %3509

; <label>:3509                                    ; preds = %3423, %3421
  %3510 = phi float [ %3508, %3423 ], [ %3412, %3421 ]
  %3511 = call float @dx.op.binary.f32(i32 36, float %3510, float %3510)  ; FMin(a,b)
  %3512 = call float @dx.op.binary.f32(i32 36, float %3510, float %3511)  ; FMin(a,b)
  %3513 = fcmp fast ogt float %3512, 0.000000e+00
  br i1 %3513, label %3514, label %3416, !dx.controlflow.hints !150

; <label>:3514                                    ; preds = %3509
  %3515 = call float @dx.op.dot3.f32(i32 55, float %3333, float %3334, float %3335, float %212, float %213, float %214)  ; Dot3(ax,ay,az,bx,by,bz)
  %3516 = fcmp fast ogt float %2153, 0.000000e+00
  %3517 = select i1 %3516, float 1.000000e+00, float -1.000000e+00
  %3518 = fmul fast float %123, 7.812500e-03
  %3519 = fmul fast float %123, 3.125000e-02
  %3520 = fadd fast float %3519, -3.125000e-02
  %3521 = fmul fast float %3517, 5.000000e-01
  %3522 = fmul fast float %3521, %3515
  %3523 = fmul fast float %3517, %2153
  %3524 = fadd fast float %3518, 4.921875e-01
  %3525 = fadd fast float %3524, %3522
  %3526 = fadd fast float %3518, 0x3FB25F3060000000
  %3527 = fadd fast float %3520, %3523
  %3528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %41, float %3525, float %3526, float %3527, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3529 = extractvalue %dx.types.ResRet.f32 %3528, 0
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 1
  %3532 = extractvalue %dx.types.CBufRet.f32 %3530, 2
  %3533 = select i1 %3033, float %3531, float %3532
  %3534 = fmul fast float %3340, 0x400921FB60000000
  %3535 = fmul fast float %3534, %3510
  %3536 = fmul fast float %3535, %3529
  %3537 = fmul fast float %3536, %3533
  %3538 = fmul fast float %3306, %2990
  %3539 = fmul fast float %3538, %3537
  %3540 = fmul fast float %3306, %2991
  %3541 = fmul fast float %3540, %3537
  %3542 = fmul fast float %3306, %2992
  %3543 = fmul fast float %3542, %3537
  %3544 = fadd fast float %3539, %2979
  %3545 = fadd fast float %3541, %2980
  %3546 = fadd fast float %3543, %2981
  br label %3416

; <label>:3547                                    ; preds = %3416
  br label %3548

; <label>:3548                                    ; preds = %3547, %2964
  %3549 = phi float [ %2966, %2964 ], [ %3417, %3547 ]
  %3550 = phi float [ %2967, %2964 ], [ %3418, %3547 ]
  %3551 = phi float [ %2968, %2964 ], [ %3419, %3547 ]
  %3552 = add i32 %2965, 1
  %3553 = icmp ugt i32 %3552, %2963
  br i1 %3553, label %3554, label %2964

; <label>:3554                                    ; preds = %3548
  br label %3555

; <label>:3555                                    ; preds = %3554, %2954
  %3556 = phi float [ %2955, %2954 ], [ %3549, %3554 ]
  %3557 = phi float [ %2956, %2954 ], [ %3550, %3554 ]
  %3558 = phi float [ %2957, %2954 ], [ %3551, %3554 ]
  %3559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %39, float %148, float %149, float %150, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3560 = extractvalue %dx.types.ResRet.f32 %3559, 0
  %3561 = extractvalue %dx.types.ResRet.f32 %3559, 1
  %3562 = extractvalue %dx.types.ResRet.f32 %3559, 2
  %3563 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3560)  ; IsNaN(value)
  %3564 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3561)  ; IsNaN(value)
  %3565 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %3562)  ; IsNaN(value)
  %3566 = or i1 %3563, %3564
  %3567 = or i1 %3566, %3565
  %3568 = select i1 %3567, float 0.000000e+00, float %3560
  %3569 = select i1 %3567, float 0.000000e+00, float %3561
  %3570 = select i1 %3567, float 0.000000e+00, float %3562
  %3571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3572 = extractvalue %dx.types.CBufRet.f32 %3571, 1
  %3573 = fmul fast float %3568, %3572
  %3574 = fmul fast float %3569, %3572
  %3575 = fmul fast float %3570, %3572
  %3576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3576, 3
  %3578 = fmul fast float %3573, %3577
  %3579 = fmul fast float %3574, %3577
  %3580 = fmul fast float %3575, %3577
  %3581 = fadd fast float %3578, %3556
  %3582 = fadd fast float %3579, %3557
  %3583 = fadd fast float %3580, %3558
  br label %3584

; <label>:3584                                    ; preds = %3555, %2141
  %3585 = phi float [ %2150, %3555 ], [ %2142, %2141 ]
  %3586 = phi float [ %2151, %3555 ], [ %2143, %2141 ]
  %3587 = phi float [ %2152, %3555 ], [ %2144, %2141 ]
  %3588 = phi float [ %3581, %3555 ], [ 0.000000e+00, %2141 ]
  %3589 = phi float [ %3582, %3555 ], [ 0.000000e+00, %2141 ]
  %3590 = phi float [ %3583, %3555 ], [ 0.000000e+00, %2141 ]
  %3591 = fmul fast float %3585, %2146
  %3592 = fmul fast float %3586, %2146
  %3593 = fmul fast float %3587, %2146
  %3594 = fmul fast float %3591, %3588
  %3595 = fmul fast float %3592, %3589
  %3596 = fmul fast float %3593, %3590
  %3597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %3598 = extractvalue %dx.types.CBufRet.f32 %3597, 0
  %3599 = fmul fast float %3594, %3598
  %3600 = fmul fast float %3595, %3598
  %3601 = fmul fast float %3596, %3598
  %3602 = fmul fast float %3600, 5.000000e-01
  %3603 = fadd fast float %3596, %3594
  %3604 = fmul fast float %3598, %3603
  %3605 = fmul fast float %3604, 2.500000e-01
  %3606 = fadd fast float %3605, %3602
  %3607 = call float @dx.op.unary.f32(i32 23, float %3606)  ; Log(value)
  %3608 = fmul fast float %3607, 0x3FE62E4300000000
  %3609 = fmul fast float %3608, %3608
  %3610 = icmp ugt i32 %215, 31
  %3611 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %3612 = add i32 %215, -1
  %3613 = add i32 %215, 7
  %3614 = and i32 %3613, 4
  %3615 = and i32 %3612, %3611
  %3616 = xor i32 %3615, %3614
  %3617 = and i32 %3611, -4
  %3618 = shl i32 %3611, 1
  %3619 = and i32 %3618, 6
  %3620 = lshr i32 177, %3619
  %3621 = and i32 %3620, 3
  %3622 = or i32 %3621, %3617
  br i1 %3610, label %3623, label %3639, !dx.controlflow.hints !151

; <label>:3623                                    ; preds = %3584
  %3624 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3608, i32 %3616)  ; WaveReadLaneAt(value,lane)
  %3625 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3609, i32 %3616)  ; WaveReadLaneAt(value,lane)
  %3626 = fadd fast float %3624, %3608
  %3627 = fadd fast float %3625, %3609
  %3628 = add i32 %215, 31
  %3629 = and i32 %3628, 16
  %3630 = xor i32 %3615, %3629
  %3631 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3626, i32 %3630)  ; WaveReadLaneAt(value,lane)
  %3632 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3627, i32 %3630)  ; WaveReadLaneAt(value,lane)
  %3633 = fadd fast float %3631, %3626
  %3634 = fadd fast float %3632, %3627
  %3635 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3633, i32 %3622)  ; WaveReadLaneAt(value,lane)
  %3636 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3634, i32 %3622)  ; WaveReadLaneAt(value,lane)
  %3637 = fadd fast float %3635, %3633
  %3638 = fadd fast float %3636, %3634
  br label %3675

; <label>:3639                                    ; preds = %3584
  %3640 = udiv i32 %50, %215
  %3641 = shl i32 %3640, 2
  %3642 = lshr i32 %3611, 1
  %3643 = and i32 %3642, 1
  %3644 = or i32 %3641, %3643
  %3645 = lshr i32 %3611, 2
  %3646 = and i32 %3645, 2
  %3647 = or i32 %3644, %3646
  %3648 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3608, i32 %3616)  ; WaveReadLaneAt(value,lane)
  %3649 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3609, i32 %3616)  ; WaveReadLaneAt(value,lane)
  %3650 = fadd fast float %3648, %3608
  %3651 = fadd fast float %3649, %3609
  %3652 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3650, i32 %3622)  ; WaveReadLaneAt(value,lane)
  %3653 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3651, i32 %3622)  ; WaveReadLaneAt(value,lane)
  %3654 = fadd fast float %3652, %3650
  %3655 = fadd fast float %3653, %3651
  %3656 = mul i32 %3647, 2
  %3657 = add i32 0, %3656
  %3658 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3657
  store float %3654, float addrspace(3)* %3658, align 4
  %3659 = mul i32 %3647, 2
  %3660 = add i32 1, %3659
  %3661 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3660
  store float %3655, float addrspace(3)* %3661, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3662 = load float, float addrspace(3)* %3658, align 4
  %3663 = load float, float addrspace(3)* %3661, align 4
  %3664 = xor i32 %3647, 4
  %3665 = mul i32 %3664, 2
  %3666 = add i32 0, %3665
  %3667 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3666
  %3668 = load float, float addrspace(3)* %3667, align 4
  %3669 = mul i32 %3664, 2
  %3670 = add i32 1, %3669
  %3671 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3670
  %3672 = load float, float addrspace(3)* %3671, align 4
  %3673 = fadd fast float %3668, %3662
  %3674 = fadd fast float %3672, %3663
  br label %3675

; <label>:3675                                    ; preds = %3639, %3623
  %3676 = phi float [ %3637, %3623 ], [ %3673, %3639 ]
  %3677 = phi float [ %3638, %3623 ], [ %3674, %3639 ]
  %3678 = fmul fast float %3676, 1.250000e-01
  %3679 = and i32 %73, 1
  %3680 = and i32 %3679, %74
  %3681 = and i32 %3680, %75
  %3682 = icmp ne i32 %3681, 0
  %3683 = and i1 %3682, %85
  br i1 %3683, label %3684, label %3689, !dx.controlflow.hints !62

; <label>:3684                                    ; preds = %3675
  %3685 = fmul fast float %3677, 1.250000e-01
  %3686 = lshr i32 %73, 1
  %3687 = lshr i32 %74, 1
  %3688 = lshr i32 %75, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %3686, i32 %3687, i32 %3688, float %3678, float %3685, float %3678, float %3678, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3689

; <label>:3689                                    ; preds = %3684, %3675
  br i1 %84, label %3724, label %3690, !dx.controlflow.hints !63

; <label>:3690                                    ; preds = %3689
  %3691 = fadd fast float %123, 0x3FE3C6EF40000000
  %3692 = call float @dx.op.unary.f32(i32 22, float %3691)  ; Frc(value)
  %3693 = call float @dx.op.unary.f32(i32 23, float %3599)  ; Log(value)
  %3694 = fadd fast float %3693, -7.000000e+00
  %3695 = call float @dx.op.unary.f32(i32 21, float %3694)  ; Exp(value)
  %3696 = fmul fast float %3692, 2.000000e+00
  %3697 = fadd fast float %3696, -1.000000e+00
  %3698 = fmul fast float %3695, %3697
  %3699 = fcmp fast ogt float %3599, 0.000000e+00
  %3700 = select i1 %3699, float %3698, float 0.000000e+00
  %3701 = fadd fast float %3700, %3599
  %3702 = fadd fast float %123, 0x3FF3C6EF40000000
  %3703 = call float @dx.op.unary.f32(i32 22, float %3702)  ; Frc(value)
  %3704 = call float @dx.op.unary.f32(i32 23, float %3600)  ; Log(value)
  %3705 = fadd fast float %3704, -7.000000e+00
  %3706 = call float @dx.op.unary.f32(i32 21, float %3705)  ; Exp(value)
  %3707 = fmul fast float %3703, 2.000000e+00
  %3708 = fadd fast float %3707, -1.000000e+00
  %3709 = fmul fast float %3706, %3708
  %3710 = fcmp fast ogt float %3600, 0.000000e+00
  %3711 = select i1 %3710, float %3709, float 0.000000e+00
  %3712 = fadd fast float %3711, %3600
  %3713 = fadd fast float %123, 0x3FFDAA66E0000000
  %3714 = call float @dx.op.unary.f32(i32 22, float %3713)  ; Frc(value)
  %3715 = call float @dx.op.unary.f32(i32 23, float %3601)  ; Log(value)
  %3716 = fadd fast float %3715, -6.000000e+00
  %3717 = call float @dx.op.unary.f32(i32 21, float %3716)  ; Exp(value)
  %3718 = fmul fast float %3714, 2.000000e+00
  %3719 = fadd fast float %3718, -1.000000e+00
  %3720 = fmul fast float %3717, %3719
  %3721 = fcmp fast ogt float %3601, 0.000000e+00
  %3722 = select i1 %3721, float %3720, float 0.000000e+00
  %3723 = fadd fast float %3722, %3601
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %73, i32 %74, i32 %75, float %3701, float %3712, float %3723, float %3701, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3724

; <label>:3724                                    ; preds = %3690, %3689
  %3725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %3726 = extractvalue %dx.types.CBufRet.f32 %3725, 0
  %3727 = fmul fast float %3726, %2146
  %3728 = fmul fast float %3727, 5.000000e-01
  %3729 = fadd fast float %2146, %2146
  %3730 = fmul fast float %3726, %3729
  %3731 = fmul fast float %3730, 2.500000e-01
  %3732 = fadd fast float %3731, %3728
  %3733 = fmul fast float %3732, %3732
  %3734 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %3735 = add i32 %215, -1
  %3736 = add i32 %215, 7
  %3737 = and i32 %3736, 4
  %3738 = and i32 %3735, %3734
  %3739 = xor i32 %3738, %3737
  %3740 = and i32 %3734, -4
  %3741 = shl i32 %3734, 1
  %3742 = and i32 %3741, 6
  %3743 = lshr i32 177, %3742
  %3744 = and i32 %3743, 3
  %3745 = or i32 %3744, %3740
  br i1 %3610, label %3746, label %3762, !dx.controlflow.hints !151

; <label>:3746                                    ; preds = %3724
  %3747 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3732, i32 %3739)  ; WaveReadLaneAt(value,lane)
  %3748 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3733, i32 %3739)  ; WaveReadLaneAt(value,lane)
  %3749 = fadd fast float %3747, %3732
  %3750 = fadd fast float %3748, %3733
  %3751 = add i32 %215, 31
  %3752 = and i32 %3751, 16
  %3753 = xor i32 %3738, %3752
  %3754 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3749, i32 %3753)  ; WaveReadLaneAt(value,lane)
  %3755 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3750, i32 %3753)  ; WaveReadLaneAt(value,lane)
  %3756 = fadd fast float %3754, %3749
  %3757 = fadd fast float %3755, %3750
  %3758 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3756, i32 %3745)  ; WaveReadLaneAt(value,lane)
  %3759 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3757, i32 %3745)  ; WaveReadLaneAt(value,lane)
  %3760 = fadd fast float %3758, %3756
  %3761 = fadd fast float %3759, %3757
  br label %3798

; <label>:3762                                    ; preds = %3724
  %3763 = udiv i32 %50, %215
  %3764 = shl i32 %3763, 2
  %3765 = lshr i32 %3734, 1
  %3766 = and i32 %3765, 1
  %3767 = or i32 %3764, %3766
  %3768 = lshr i32 %3734, 2
  %3769 = and i32 %3768, 2
  %3770 = or i32 %3767, %3769
  %3771 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3732, i32 %3739)  ; WaveReadLaneAt(value,lane)
  %3772 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3733, i32 %3739)  ; WaveReadLaneAt(value,lane)
  %3773 = fadd fast float %3771, %3732
  %3774 = fadd fast float %3772, %3733
  %3775 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3773, i32 %3745)  ; WaveReadLaneAt(value,lane)
  %3776 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %3774, i32 %3745)  ; WaveReadLaneAt(value,lane)
  %3777 = fadd fast float %3775, %3773
  %3778 = fadd fast float %3776, %3774
  %3779 = mul i32 %3770, 2
  %3780 = add i32 0, %3779
  %3781 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3780
  store float %3777, float addrspace(3)* %3781, align 4
  %3782 = mul i32 %3770, 2
  %3783 = add i32 1, %3782
  %3784 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3783
  store float %3778, float addrspace(3)* %3784, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3785 = load float, float addrspace(3)* %3781, align 4
  %3786 = load float, float addrspace(3)* %3784, align 4
  %3787 = xor i32 %3770, 4
  %3788 = mul i32 %3787, 2
  %3789 = add i32 0, %3788
  %3790 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3789
  %3791 = load float, float addrspace(3)* %3790, align 4
  %3792 = mul i32 %3787, 2
  %3793 = add i32 1, %3792
  %3794 = getelementptr [32 x float], [32 x float] addrspace(3)* @"\01?sharedMomentXY@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %3793
  %3795 = load float, float addrspace(3)* %3794, align 4
  %3796 = fadd fast float %3791, %3785
  %3797 = fadd fast float %3795, %3786
  br label %3798

; <label>:3798                                    ; preds = %3762, %3746
  %3799 = phi float [ %3760, %3746 ], [ %3796, %3762 ]
  %3800 = phi float [ %3761, %3746 ], [ %3797, %3762 ]
  %3801 = fmul fast float %3799, 1.250000e-01
  br i1 %3683, label %3802, label %3807, !dx.controlflow.hints !64

; <label>:3802                                    ; preds = %3798
  %3803 = fmul fast float %3800, 1.250000e-01
  %3804 = lshr i32 %73, 1
  %3805 = lshr i32 %74, 1
  %3806 = lshr i32 %75, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3804, i32 %3805, i32 %3806, float %3801, float %3803, float %3801, float %3801, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3807

; <label>:3807                                    ; preds = %3802, %3798
  br i1 %84, label %3836, label %3808, !dx.controlflow.hints !65

; <label>:3808                                    ; preds = %3807
  %3809 = fadd fast float %123, 0x3FE3C6EF40000000
  %3810 = call float @dx.op.unary.f32(i32 22, float %3809)  ; Frc(value)
  %3811 = call float @dx.op.unary.f32(i32 23, float %3727)  ; Log(value)
  %3812 = fadd fast float %3811, -7.000000e+00
  %3813 = call float @dx.op.unary.f32(i32 21, float %3812)  ; Exp(value)
  %3814 = fmul fast float %3810, 2.000000e+00
  %3815 = fadd fast float %3814, -1.000000e+00
  %3816 = fmul fast float %3813, %3815
  %3817 = fcmp fast ogt float %3727, 0.000000e+00
  %3818 = select i1 %3817, float %3816, float 0.000000e+00
  %3819 = fadd fast float %3818, %3727
  %3820 = fadd fast float %123, 0x3FF3C6EF40000000
  %3821 = call float @dx.op.unary.f32(i32 22, float %3820)  ; Frc(value)
  %3822 = fmul fast float %3821, 2.000000e+00
  %3823 = fadd fast float %3822, -1.000000e+00
  %3824 = fmul fast float %3813, %3823
  %3825 = select i1 %3817, float %3824, float 0.000000e+00
  %3826 = fadd fast float %3825, %3727
  %3827 = fadd fast float %123, 0x3FFDAA66E0000000
  %3828 = call float @dx.op.unary.f32(i32 22, float %3827)  ; Frc(value)
  %3829 = fadd fast float %3811, -6.000000e+00
  %3830 = call float @dx.op.unary.f32(i32 21, float %3829)  ; Exp(value)
  %3831 = fmul fast float %3828, 2.000000e+00
  %3832 = fadd fast float %3831, -1.000000e+00
  %3833 = fmul fast float %3830, %3832
  %3834 = select i1 %3817, float %3833, float 0.000000e+00
  %3835 = fadd fast float %3834, %3727
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %73, i32 %74, i32 %75, float %3819, float %3826, float %3835, float %3819, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3836

; <label>:3836                                    ; preds = %3808, %3807
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
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare float @dx.op.waveReadLaneAt.f32(i32, float, i32) #2

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
!59 = !{i32 0, i64 524560, i32 4, !60}
!60 = !{i32 4, i32 4, i32 4}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
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
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C/C++ TBAA"}
!118 = !{!119, !121, !123, !125, !127}
!119 = distinct !{!119, !120, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!120 = distinct !{!120, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!121 = distinct !{!121, !122, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z: %lightingOutput"}
!122 = distinct !{!122, !"\01?Lights_Iterate_Volumetric@@YAXULocalAttributes@@ULightIteratorInput_Volumetric@@ULightIteratorOutput_Volumetric@@@Z"}
!123 = distinct !{!123, !124, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z: %agg.result"}
!124 = distinct !{!124, !"\01?ForwardPlusLighting@@YA?AULightIteratorOutput_Volumetric@@IV?$vector@M$03@@V?$vector@M$02@@1V?$vector@I$02@@1MMMM_N3M1@Z"}
!125 = distinct !{!125, !126, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepInScattering"}
!126 = distinct !{!126, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z"}
!127 = distinct !{!127, !126, !"\01?VolumetricScatterInternal@@YAXV?$vector@I$02@@V?$vector@M$02@@I0MM_NAIAV2@3_N44@Z: %stepExtinction"}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 2}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 2}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 2}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 2}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 2}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 2}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 2}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 2}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 2}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 2}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 2}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 2}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 2}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 2}

