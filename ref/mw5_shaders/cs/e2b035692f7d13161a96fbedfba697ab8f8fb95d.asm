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
; shader hash: 304b287b6ab35019f05a4d1028d69512
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
;   [176 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32     2darray      T0      t0,space6unbounded
;                                   texture     f32          2d      T1             t7     1
;                                   texture     u32        2dMS      T2             t8     1
;                                   texture     u32     2darray      T3            t16     1
;                                   texture    byte         r/o      T4            t13     1
;                                   texture    byte         r/o      T5            t24     1
;                                   texture     f32          2d      T6            t19     1
;                                   texture     f32          2d      T7            t20     1
;                                   texture     f32          2d      T8            t21     1
;                                   texture     f32          2d      T9            t22     1
;                                   texture     f32          2d     T10            t23     1
;                                   texture    byte         r/o     T11            t25     1
;                                   texture    byte         r/o     T12            t26     1
;                                   texture    byte         r/o     T13            t27     1
;                                   texture    byte         r/o     T14            t28     1
;                                   texture     f32          2d     T15            t17     1
;                                   texture    byte         r/o     T16            t12     1
;                                   texture     f32          2d     T17             t3     1
;                                   texture     f32          2d     T18             t0     1
;                                   texture     f32          2d     T19             t1     1
;                                   texture     f32          2d     T20             t2     1
;                                   textureunorm_f32     2darray     T21            t15     1
;                                   texture    byte         r/o     T22             t9     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>" = type { <4 x i32>, %"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.SunvisConstants = type { <4 x float>, <4 x i32>, [4 x <4 x float>], [4 x <4 x float>], i32, i32, i32, i32 }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4
@MSM_VOGEL_DISK.v.1dim = internal constant [32 x float] [float 0xBFD19D7780000000, float 0xBFA8ED4440000000, float 0xBFC0AF4F00000000, float 0x3FBE91B820000000, float 0x3FD088BDA0000000, float 0xBFC5090F80000000, float 0xBFB07314C0000000, float 0xBFDFBC1260000000, float 0xBFC4DBB5A0000000, float 0xBFD414A4E0000000, float 0xBFB5FAA700000000, float 0x3FD470B8C0000000, float 0x3FC3785720000000, float 0x3FC9652BE0000000, float 0x3FD68B32C0000000, float 0x3FC0773E20000000, float 0xBFD8F4E020000000, float 0xBFCCECF200000000, float 1.250000e-01, float 0.000000e+00, float 0x3FC0968940000000, float 0x3FDA714BA0000000, float 0xBFD76262C0000000, float 0x3FC34E3360000000, float 0x3FDD3C2DA0000000, float 0xBFB9B584C0000000, float 0xBFD1D1D8A0000000, float 0x3FD958C4C0000000, float 0x3F9361EA00000000, float 0xBFCB9B4DC0000000, float 0x3FC67DE500000000, float 0xBFD80828C0000000], align 4
@MSM_VOGEL_DISK_ROTATIONS.v.1dim = internal constant [128 x float] [float 1.000000e+00, float -0.000000e+00, float 0xBFE79886E0000000, float 0xBFE59D9D40000000, float 0x3FB6618480000000, float 0x3FEFE0A200000000, float 0x3FE3785520000000, float 0xBFE9652DE0000000, float 0xBFEF82C6E0000000, float 0x3FC64B9880000000, float 0x3FEB000A80000000, float 0x3FE12CE040000000, float 0xBFD09D5A20000000, float 0xBFEEE72320000000, float 0xBFDD7F8440000000, float 0x3FEC65F960000000, float 0x3FEE0EED00000000, float 0xBFD5F455A0000000, float 0xBFED943C00000000, float 0xBFD86B6E00000000, float 0x3FDB2046C0000000, float 0x3FECFBC800000000, float 0x3FD3277C40000000, float 0xBFEE888300000000, float 0xBFEBAFD120000000, float 0x3FE00B86C0000000, float 0x3FEF40EE00000000, float 0x3FCB7BFA40000000, float 0xBFE26772E0000000, float 0xBFEA2D9280000000, float 0xBFC07314C0000000, float 0x3FEFBC1260000000, float 0x3FE8780340000000, float 0xBFE49F4D40000000, float 0xBFEFF90100000000, float 0xBFA527CDA0000000, float 0x3FE6AEB800000000, float 0x3FE6927B20000000, float 0xBFA7A63080000000, float 0xBFEFF74260000000, float 0xBFE480B460000000, float 0x3FE891ADA0000000, float 0x3FEFB6D860000000, float 0xBFC11172E0000000, float 0xBFEA4475E0000000, float 0xBFE246B8C0000000, float 0x3FCC17E340000000, float 0x3FEF384120000000, float 0x3FDFD1D8A0000000, float 0xBFEBC3C180000000, float 0xBFEE7C7600000000, float 0x3FD373A360000000, float 0x3FED0C9DA0000000, float 0x3FDAD7DC00000000, float 0xBFD8B530C0000000, float 0xBFED84E840000000, float 0xBFD5A93F20000000, float 0x3FEE1C8860000000, float 0x3FEC537C20000000, float 0xBFDDC64BA0000000, float 0xBFEEF16900000000, float 0xBFD0502AC0000000, float 0x3FE14E8540000000, float 0x3FEAEA8540000000, float 0x3FC5AE3600000000, float 0xBFEF89A240000000, float 0xBFE94CCCC0000000, float 0x3FE397F840000000, float 0x3FEFE40640000000, float 0x3FB5232EE0000000, float 0xBFE5BAFFC0000000, float 0xBFE77D7A20000000, float 0x3F73F7DF00000000, float 0x3FEFFFE6E0000000, float 0x3FE5801B40000000, float 0xBFE7B36DE0000000, float 0xBFEFDD0B80000000, float 0x3FB79FB8A0000000, float 0x3FE97D6520000000, float 0x3FE3589480000000, float 0xBFC6E8D100000000, float 0xBFEF7BB940000000, float 0xBFE10B2200000000, float 0x3FEB1565C0000000, float 0x3FEEDCAD20000000, float 0xBFD0EA7040000000, float 0xBFEC784CA0000000, float 0xBFDD388A80000000, float 0x3FD63F4AA0000000, float 0x3FEE012160000000, float 0x3FD8218580000000, float 0xBFEDA361A0000000, float 0xBFECEAC420000000, float 0x3FDB688BE0000000, float 0x3FEE945FA0000000, float 0x3FD2DB37C0000000, float 0xBFE02E07E0000000, float 0xBFEB9BB4A0000000, float 0xBFCADFDF00000000, float 0x3FEF4968A0000000, float 0x3FEA168720000000, float 0xBFE28811C0000000, float 0xBFEFC11C20000000, float 0xBFBFA93B00000000, float 0x3FE4BDC6A0000000, float 0x3FE85E3320000000, float 0x3FA2A94CA0000000, float 0xBFEFFA8F80000000, float 0xBFE6761AA0000000, float 0x3FE6CAD360000000, float 0x3FEFF55160000000, float 0xBFAA246B20000000, float 0xBFE8AB3020000000, float 0xBFE461FA00000000, float 0x3FC1AFB7E0000000, float 0x3FEFB16C20000000, float 0x3FE225E360000000, float 0xBFEA5B3180000000, float 0xBFEF2F6620000000, float 0x3FCCB3AAC0000000, float 0x3FEBD78600000000, float 0x3FDF8C71A0000000, float 0xBFD3BFAD20000000, float 0xBFEE703B00000000, float 0xBFDA8F4300000000, float 0x3FED1D4740000000, float 0x3FED756640000000, float 0xBFD8FEC9A0000000], align 4

define void @cs_sunvis_trans() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = alloca [4 x i32], align 4
  %32 = alloca [4 x i32], align 4
  %33 = alloca [4 x i32], align 4
  %34 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %35 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %36 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %37 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %38 = alloca [12 x float], align 4
  %39 = alloca [12 x float], align 4
  %40 = alloca [12 x float], align 4
  %41 = alloca [12 x float], align 4
  %42 = alloca [12 x float], align 4
  %43 = alloca [12 x float], align 4
  %44 = alloca [4 x float], align 4
  %45 = alloca [4 x float], align 4
  %46 = alloca [4 x float], align 4
  %47 = alloca [4 x float], align 4
  %48 = alloca [4 x float], align 4
  %49 = alloca [4 x float], align 4
  %50 = alloca [4 x float], align 4
  %51 = alloca [4 x float], align 4
  %52 = alloca [4 x float], align 4
  %53 = alloca [4 x float], align 4
  %54 = alloca [4 x float], align 4
  %55 = alloca [4 x float], align 4
  %56 = alloca [4 x i32], align 4
  %57 = shl i32 %36, 1
  %58 = shl i32 %37, 1
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %94, label %62, !dx.controlflow.hints !46

; <label>:62                                      ; preds = %0
  %63 = shl i32 %34, 2
  %64 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.i32 %64, 0
  %66 = lshr i32 %65, 28
  %67 = and i32 %66, 3
  %68 = lshr i32 %65, 14
  %69 = and i32 %68, 16383
  %70 = and i32 %65, 16383
  %71 = icmp eq i32 %67, 0
  %72 = shl nuw nsw i32 %69, 4
  %73 = shl nuw nsw i32 %70, 4
  br i1 %71, label %91, label %74, !dx.controlflow.hints !47

; <label>:74                                      ; preds = %62
  %75 = shl nuw nsw i32 %69, 3
  %76 = shl nuw nsw i32 %70, 3
  %77 = or i32 %75, %36
  %78 = or i32 %76, %37
  %79 = add nsw i32 %67, -1
  %80 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %77, i32 %78, i32 %79, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %81 = extractvalue %dx.types.ResRet.i32 %80, 0
  %82 = lshr i32 %81, 4
  %83 = and i32 %82, 15
  %84 = and i32 %81, 15
  %85 = or i32 %83, %72
  %86 = or i32 %84, %73
  %87 = and i32 %82, 1
  %88 = shl i32 %81, 1
  %89 = and i32 %88, 2
  %90 = or i32 %87, %89
  br label %94

; <label>:91                                      ; preds = %62
  %92 = or i32 %72, %57
  %93 = or i32 %73, %58
  br label %94

; <label>:94                                      ; preds = %91, %74, %0
  %95 = phi i32 [ %69, %74 ], [ %69, %91 ], [ %34, %0 ]
  %96 = phi i32 [ %70, %74 ], [ %70, %91 ], [ %35, %0 ]
  %97 = phi i32 [ %90, %74 ], [ 0, %91 ], [ 0, %0 ]
  %98 = phi i32 [ %85, %74 ], [ %92, %91 ], [ 0, %0 ]
  %99 = phi i32 [ %86, %74 ], [ %93, %91 ], [ 0, %0 ]
  %100 = uitofp i32 %98 to float
  %101 = uitofp i32 %99 to float
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %98, i32 %99, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = fcmp fast olt float %104, -1.000000e+00
  %106 = fcmp fast ogt float %104, -1.000000e+00
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %109 = select i1 %106, float %108, float 1.000000e+00
  %110 = fadd fast float %104, 1.000000e+00
  %111 = fmul fast float %109, %110
  %112 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %113 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %114 = fcmp fast ult float %112, %113
  br i1 %114, label %118, label %115, !dx.controlflow.hints !48

; <label>:115                                     ; preds = %94
  %116 = lshr i32 %98, 1
  %117 = lshr i32 %99, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %116, i32 %117, i32 %97, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5435

; <label>:118                                     ; preds = %94
  %119 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %120 = fmul fast float %119, %101
  %121 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %122 = fmul fast float %121, %100
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %125 = fcmp fast oeq float %124, 0.000000e+00
  %126 = fmul fast float %122, 2.000000e+00
  %127 = fmul fast float %120, 2.000000e+00
  %128 = fsub fast float 1.000000e+00, %126
  %129 = fsub fast float 1.000000e+00, %127
  br i1 %125, label %130, label %159, !dx.controlflow.hints !49

; <label>:130                                     ; preds = %118
  %131 = fsub fast float -0.000000e+00, %128
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 107)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 108)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 109)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %147 = fmul fast float %133, %131
  %148 = call float @dx.op.tertiary.f32(i32 46, float %129, float %134, float %147)  ; FMad(a,b,c)
  %149 = call float @dx.op.tertiary.f32(i32 46, float %112, float %135, float %148)  ; FMad(a,b,c)
  %150 = fadd fast float %149, %136
  %151 = fmul fast float %138, %131
  %152 = call float @dx.op.tertiary.f32(i32 46, float %129, float %139, float %151)  ; FMad(a,b,c)
  %153 = call float @dx.op.tertiary.f32(i32 46, float %112, float %140, float %152)  ; FMad(a,b,c)
  %154 = fadd fast float %153, %141
  %155 = fmul fast float %143, %131
  %156 = call float @dx.op.tertiary.f32(i32 46, float %129, float %144, float %155)  ; FMad(a,b,c)
  %157 = call float @dx.op.tertiary.f32(i32 46, float %112, float %145, float %156)  ; FMad(a,b,c)
  %158 = fadd fast float %157, %146
  br label %208

; <label>:159                                     ; preds = %118
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = select i1 %105, float %161, float %165
  %169 = select i1 %105, float %162, float %166
  %170 = select i1 %105, float %163, float %167
  %171 = fmul fast float %168, %128
  %172 = fmul fast float %169, %128
  %173 = fmul fast float %170, %128
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = select i1 %105, float %175, float %179
  %183 = select i1 %105, float %176, float %180
  %184 = select i1 %105, float %177, float %181
  %185 = fmul fast float %182, %129
  %186 = fmul fast float %183, %129
  %187 = fmul fast float %184, %129
  %188 = fadd fast float %185, %171
  %189 = fadd fast float %186, %172
  %190 = fadd fast float %187, %173
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = select i1 %105, float %192, float %196
  %200 = select i1 %105, float %193, float %197
  %201 = select i1 %105, float %194, float %198
  %202 = fadd fast float %188, %199
  %203 = fadd fast float %189, %200
  %204 = fadd fast float %190, %201
  %205 = fmul fast float %202, %112
  %206 = fmul fast float %203, %112
  %207 = fmul fast float %204, %112
  br label %208

; <label>:208                                     ; preds = %159, %130
  %209 = phi float [ %150, %130 ], [ %205, %159 ]
  %210 = phi float [ %154, %130 ], [ %206, %159 ]
  %211 = phi float [ %158, %130 ], [ %207, %159 ]
  %212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.i32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.i32 %212, 1
  %215 = extractvalue %dx.types.CBufRet.i32 %212, 2
  %216 = extractvalue %dx.types.CBufRet.i32 %212, 3
  %217 = lshr i32 %98, 1
  %218 = lshr i32 %99, 1
  %219 = and i32 %98, 1
  %220 = shl i32 %99, 1
  %221 = and i32 %220, 2
  %222 = or i32 %221, %219
  %223 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %213, i32* %223, align 4
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %214, i32* %224, align 4
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %215, i32* %225, align 4
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %216, i32* %226, align 4
  %227 = getelementptr [4 x i32], [4 x i32]* %56, i32 0, i32 %222
  %228 = load i32, i32* %227, align 4, !tbaa !50
  %229 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 %228, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = lshr i32 %230, 8
  %232 = and i32 %230, 255
  %233 = and i32 %231, 255
  %234 = uitofp i32 %232 to float
  %235 = uitofp i32 %233 to float
  %236 = fmul fast float %234, 0x3F80101020000000
  %237 = fmul fast float %235, 0x3F80101020000000
  %238 = fadd fast float %236, -1.000000e+00
  %239 = fadd fast float %237, -1.000000e+00
  %240 = call float @dx.op.unary.f32(i32 6, float %238)  ; FAbs(value)
  %241 = fsub fast float 1.000000e+00, %240
  %242 = call float @dx.op.unary.f32(i32 6, float %239)  ; FAbs(value)
  %243 = fsub fast float %241, %242
  %244 = fsub fast float -0.000000e+00, %243
  %245 = call float @dx.op.binary.f32(i32 35, float %244, float 0.000000e+00)  ; FMax(a,b)
  %246 = fcmp fast ogt float %238, 0.000000e+00
  %247 = fsub fast float -0.000000e+00, %245
  %248 = select i1 %246, float %247, float %245
  %249 = fadd fast float %248, %238
  %250 = fcmp fast ogt float %239, 0.000000e+00
  %251 = select i1 %250, float %247, float %245
  %252 = fadd fast float %251, %239
  %253 = call float @dx.op.dot3.f32(i32 55, float %249, float %252, float %243, float %249, float %252, float %243)  ; Dot3(ax,ay,az,bx,by,bz)
  %254 = call float @dx.op.unary.f32(i32 25, float %253)  ; Rsqrt(value)
  %255 = fmul fast float %249, %254
  %256 = fmul fast float %252, %254
  %257 = fmul fast float %254, %243
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 1
  %261 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %262 = call float @dx.op.dot3.f32(i32 55, float %259, float %260, float %261, float %255, float %256, float %257)  ; Dot3(ax,ay,az,bx,by,bz)
  %263 = call float @dx.op.unary.f32(i32 6, float %262)  ; FAbs(value)
  %264 = fsub fast float 1.000000e+00, %263
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 3
  %267 = fsub fast float -0.000000e+00, %262
  %268 = call float @dx.op.unary.f32(i32 7, float %267)  ; Saturate(value)
  %269 = fmul fast float %266, %268
  %270 = fsub fast float %264, %269
  %271 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %272 = fmul fast float %270, %271
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %275 = extractvalue %dx.types.CBufRet.f32 %273, 1
  %276 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %277 = extractvalue %dx.types.CBufRet.f32 %273, 3
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 0
  %280 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %281 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %282 = extractvalue %dx.types.CBufRet.f32 %278, 3
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %286 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %287 = extractvalue %dx.types.CBufRet.f32 %283, 3
  %288 = fmul fast float %274, %209
  %289 = call float @dx.op.tertiary.f32(i32 46, float %210, float %275, float %288)  ; FMad(a,b,c)
  %290 = call float @dx.op.tertiary.f32(i32 46, float %211, float %276, float %289)  ; FMad(a,b,c)
  %291 = fadd fast float %290, %277
  %292 = fmul fast float %279, %209
  %293 = call float @dx.op.tertiary.f32(i32 46, float %210, float %280, float %292)  ; FMad(a,b,c)
  %294 = call float @dx.op.tertiary.f32(i32 46, float %211, float %281, float %293)  ; FMad(a,b,c)
  %295 = fadd fast float %294, %282
  %296 = fmul fast float %284, %209
  %297 = call float @dx.op.tertiary.f32(i32 46, float %210, float %285, float %296)  ; FMad(a,b,c)
  %298 = call float @dx.op.tertiary.f32(i32 46, float %211, float %286, float %297)  ; FMad(a,b,c)
  %299 = fadd fast float %298, %287
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %302 = fmul fast float %301, 0x3FE3C6EF40000000
  %303 = frem fast float %100, 2.560000e+02
  %304 = frem fast float %101, 2.560000e+02
  %305 = fptoui float %303 to i32
  %306 = fptoui float %304 to i32
  %307 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %305, i32 %306, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 2
  %309 = fadd fast float %308, %302
  %310 = call float @dx.op.unary.f32(i32 22, float %309)  ; Frc(value)
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %313 = fcmp fast une float %312, 0.000000e+00
  br i1 %313, label %314, label %3177, !dx.controlflow.hints !54

; <label>:314                                     ; preds = %208
  %315 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %316 = fptoui float %315 to i32
  %317 = add i32 %316, 15
  %318 = lshr i32 %317, 4
  %319 = mul i32 %318, %96
  %320 = add i32 %319, %95
  %321 = shl i32 %320, 3
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = lshr i32 %323, 28
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %501, !dx.controlflow.hints !55

; <label>:326                                     ; preds = %314
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = fmul fast float %328, %272
  %332 = fadd fast float %330, %299
  %333 = fadd fast float %332, %331
  %334 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %327, 3
  %337 = fmul fast float %336, %291
  %338 = fmul fast float %336, %295
  %339 = fadd fast float %337, %334
  %340 = fadd fast float %338, %335
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 3
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = call float @dx.op.binary.f32(i32 35, float %333, float 0.000000e+00)  ; FMax(a,b)
  %347 = fadd fast float %346, 0x3F10000000000000
  %348 = fcmp fast oeq float %345, 0.000000e+00
  br i1 %348, label %349, label %416, !dx.controlflow.hints !56

; <label>:349                                     ; preds = %326
  %350 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %351 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %352 = fmul fast float %339, %351
  %353 = fmul fast float %340, %350
  %354 = fadd fast float %352, 5.000000e-01
  %355 = call float @dx.op.unary.f32(i32 27, float %354)  ; Round_ni(value)
  %356 = fadd fast float %353, 5.000000e-01
  %357 = call float @dx.op.unary.f32(i32 27, float %356)  ; Round_ni(value)
  %358 = fsub fast float %354, %355
  %359 = fsub fast float %356, %357
  %360 = fadd fast float %355, -5.000000e-01
  %361 = fadd fast float %357, -5.000000e-01
  %362 = fmul fast float %358, 2.000000e+00
  %363 = fsub fast float 3.000000e+00, %362
  %364 = fadd fast float %362, 1.000000e+00
  %365 = fsub fast float 2.000000e+00, %358
  %366 = bitcast float %363 to i32
  %367 = sub nsw i32 2129859010, %366
  %368 = bitcast i32 %367 to float
  %369 = fmul fast float %368, %365
  %370 = fadd fast float %369, -1.000000e+00
  %371 = bitcast float %364 to i32
  %372 = sub nsw i32 2129859010, %371
  %373 = bitcast i32 %372 to float
  %374 = fmul fast float %373, %358
  %375 = fadd fast float %374, 1.000000e+00
  %376 = fmul fast float %359, 2.000000e+00
  %377 = fsub fast float 3.000000e+00, %376
  %378 = fadd fast float %376, 1.000000e+00
  %379 = fsub fast float 2.000000e+00, %359
  %380 = bitcast float %377 to i32
  %381 = sub nsw i32 2129859010, %380
  %382 = bitcast i32 %381 to float
  %383 = fmul fast float %382, %379
  %384 = fadd fast float %383, -1.000000e+00
  %385 = bitcast float %378 to i32
  %386 = sub nsw i32 2129859010, %385
  %387 = bitcast i32 %386 to float
  %388 = fmul fast float %387, %359
  %389 = fadd fast float %388, 1.000000e+00
  %390 = fadd fast float %370, %360
  %391 = fmul fast float %390, %342
  %392 = fadd fast float %384, %361
  %393 = fmul fast float %392, %343
  %394 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %391, float %393, float undef, float undef, i32 0, i32 0, i32 undef, float %347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = fmul fast float %395, %363
  %397 = fadd fast float %375, %360
  %398 = fmul fast float %397, %342
  %399 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %398, float %393, float undef, float undef, i32 0, i32 0, i32 undef, float %347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = fmul fast float %400, %364
  %402 = fadd fast float %389, %361
  %403 = fmul fast float %402, %343
  %404 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %391, float %403, float undef, float undef, i32 0, i32 0, i32 undef, float %347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = fmul fast float %405, %363
  %407 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %398, float %403, float undef, float undef, i32 0, i32 0, i32 undef, float %347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = fmul fast float %408, %364
  %410 = fadd fast float %409, %406
  %411 = fmul fast float %410, %378
  %412 = fadd fast float %401, %396
  %413 = fmul fast float %412, %377
  %414 = fadd fast float %413, %411
  %415 = fmul fast float %414, 6.250000e-02
  br label %4648

; <label>:416                                     ; preds = %326
  %417 = fmul fast float %310, 0x401921FB60000000
  %418 = call float @dx.op.unary.f32(i32 13, float %417)  ; Sin(value)
  %419 = call float @dx.op.unary.f32(i32 12, float %417)  ; Cos(value)
  %420 = fsub fast float -0.000000e+00, %418
  br label %421

; <label>:421                                     ; preds = %470, %416
  %422 = phi float [ 0.000000e+00, %416 ], [ %465, %470 ]
  %423 = phi float [ 0.000000e+00, %416 ], [ %467, %470 ]
  %424 = phi i32 [ 0, %416 ], [ %471, %470 ]
  %425 = mul i32 %424, 2
  %426 = add i32 0, %425
  %427 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %426
  %428 = load float, float* %427, align 4
  %429 = mul i32 %424, 2
  %430 = add i32 1, %429
  %431 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %430
  %432 = load float, float* %431, align 4
  %433 = fmul fast float %428, %419
  %434 = call float @dx.op.tertiary.f32(i32 46, float %432, float %420, float %433)  ; FMad(a,b,c)
  %435 = fmul fast float %428, %418
  %436 = call float @dx.op.tertiary.f32(i32 46, float %432, float %419, float %435)  ; FMad(a,b,c)
  %437 = fmul fast float %434, %345
  %438 = fmul fast float %436, %345
  %439 = fadd fast float %437, %339
  %440 = fadd fast float %438, %340
  %441 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %27, float %439, float %440, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 0
  store float %442, float* %446, align 4
  %447 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 1
  store float %443, float* %447, align 4
  %448 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 2
  store float %444, float* %448, align 4
  %449 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 3
  store float %445, float* %449, align 4
  %450 = fsub fast float %442, %347
  %451 = fcmp fast olt float %450, 0.000000e+00
  %452 = select i1 %451, float 0.000000e+00, float 1.000000e+00
  %453 = fadd fast float %452, %422
  %454 = fmul fast float %452, %450
  %455 = fadd fast float %454, %423
  br label %456

; <label>:456                                     ; preds = %456, %421
  %457 = phi i32 [ 1, %421 ], [ %468, %456 ]
  %458 = phi float [ %455, %421 ], [ %467, %456 ]
  %459 = phi float [ %453, %421 ], [ %465, %456 ]
  %460 = getelementptr [4 x float], [4 x float]* %55, i32 0, i32 %457
  %461 = load float, float* %460, align 4, !tbaa !57
  %462 = fsub fast float %461, %347
  %463 = fcmp fast olt float %462, 0.000000e+00
  %464 = select i1 %463, float 0.000000e+00, float 1.000000e+00
  %465 = fadd fast float %464, %459
  %466 = fmul fast float %464, %462
  %467 = fadd fast float %466, %458
  %468 = add nuw nsw i32 %457, 1
  %469 = icmp eq i32 %468, 4
  br i1 %469, label %470, label %456, !llvm.loop !59

; <label>:470                                     ; preds = %456
  %471 = add nuw nsw i32 %424, 1
  %472 = icmp eq i32 %471, 8
  br i1 %472, label %473, label %421, !llvm.loop !61

; <label>:473                                     ; preds = %470
  %474 = fdiv fast float 1.000000e+00, %465
  %475 = fmul fast float %474, %467
  %476 = fdiv fast float 1.000000e+00, %347
  %477 = fmul fast float %475, %476
  %478 = call float @dx.op.unary.f32(i32 7, float %477)  ; Saturate(value)
  %479 = call float @dx.op.binary.f32(i32 35, float %478, float 0.000000e+00)  ; FMax(a,b)
  %480 = fmul fast float %465, 3.125000e-02
  %481 = call float @dx.op.unary.f32(i32 7, float %480)  ; Saturate(value)
  %482 = fmul fast float %481, 2.000000e+00
  %483 = fadd fast float %482, -1.000000e+00
  %484 = fcmp fast ogt float %483, 0.000000e+00
  %485 = fcmp fast olt float %483, 0.000000e+00
  %486 = zext i1 %484 to i32
  %487 = zext i1 %485 to i32
  %488 = sub nsw i32 %486, %487
  %489 = sitofp i32 %488 to float
  %490 = fmul fast float %489, %483
  %491 = fsub fast float 1.000000e+00, %490
  %492 = fmul fast float %491, %491
  %493 = fmul fast float %492, %491
  %494 = fsub fast float %491, %493
  %495 = fmul fast float %494, %479
  %496 = fsub fast float 1.000000e+00, %493
  %497 = fsub fast float %496, %495
  %498 = fmul fast float %489, 5.000000e-01
  %499 = fmul fast float %498, %497
  %500 = fsub fast float 5.000000e-01, %499
  br label %4648

; <label>:501                                     ; preds = %314
  %502 = icmp eq i32 %324, 1
  br i1 %502, label %503, label %678, !dx.controlflow.hints !62

; <label>:503                                     ; preds = %501
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 2
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 1
  %508 = fmul fast float %505, %272
  %509 = fadd fast float %507, %299
  %510 = fadd fast float %509, %508
  %511 = extractvalue %dx.types.CBufRet.f32 %504, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %513 = extractvalue %dx.types.CBufRet.f32 %504, 3
  %514 = fmul fast float %513, %291
  %515 = fmul fast float %513, %295
  %516 = fadd fast float %514, %511
  %517 = fadd fast float %515, %512
  %518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %519 = extractvalue %dx.types.CBufRet.f32 %518, 2
  %520 = extractvalue %dx.types.CBufRet.f32 %518, 3
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %523 = call float @dx.op.binary.f32(i32 35, float %510, float 0.000000e+00)  ; FMax(a,b)
  %524 = fadd fast float %523, 0x3F10000000000000
  %525 = fcmp fast oeq float %522, 0.000000e+00
  br i1 %525, label %526, label %593, !dx.controlflow.hints !56

; <label>:526                                     ; preds = %503
  %527 = extractvalue %dx.types.CBufRet.f32 %518, 1
  %528 = extractvalue %dx.types.CBufRet.f32 %518, 0
  %529 = fmul fast float %516, %528
  %530 = fmul fast float %517, %527
  %531 = fadd fast float %529, 5.000000e-01
  %532 = call float @dx.op.unary.f32(i32 27, float %531)  ; Round_ni(value)
  %533 = fadd fast float %530, 5.000000e-01
  %534 = call float @dx.op.unary.f32(i32 27, float %533)  ; Round_ni(value)
  %535 = fsub fast float %531, %532
  %536 = fsub fast float %533, %534
  %537 = fadd fast float %532, -5.000000e-01
  %538 = fadd fast float %534, -5.000000e-01
  %539 = fmul fast float %535, 2.000000e+00
  %540 = fsub fast float 3.000000e+00, %539
  %541 = fadd fast float %539, 1.000000e+00
  %542 = fsub fast float 2.000000e+00, %535
  %543 = bitcast float %540 to i32
  %544 = sub nsw i32 2129859010, %543
  %545 = bitcast i32 %544 to float
  %546 = fmul fast float %545, %542
  %547 = fadd fast float %546, -1.000000e+00
  %548 = bitcast float %541 to i32
  %549 = sub nsw i32 2129859010, %548
  %550 = bitcast i32 %549 to float
  %551 = fmul fast float %550, %535
  %552 = fadd fast float %551, 1.000000e+00
  %553 = fmul fast float %536, 2.000000e+00
  %554 = fsub fast float 3.000000e+00, %553
  %555 = fadd fast float %553, 1.000000e+00
  %556 = fsub fast float 2.000000e+00, %536
  %557 = bitcast float %554 to i32
  %558 = sub nsw i32 2129859010, %557
  %559 = bitcast i32 %558 to float
  %560 = fmul fast float %559, %556
  %561 = fadd fast float %560, -1.000000e+00
  %562 = bitcast float %555 to i32
  %563 = sub nsw i32 2129859010, %562
  %564 = bitcast i32 %563 to float
  %565 = fmul fast float %564, %536
  %566 = fadd fast float %565, 1.000000e+00
  %567 = fadd fast float %547, %537
  %568 = fmul fast float %567, %519
  %569 = fadd fast float %561, %538
  %570 = fmul fast float %569, %520
  %571 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %568, float %570, float undef, float undef, i32 0, i32 0, i32 undef, float %524)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = fmul fast float %572, %540
  %574 = fadd fast float %552, %537
  %575 = fmul fast float %574, %519
  %576 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %575, float %570, float undef, float undef, i32 0, i32 0, i32 undef, float %524)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = fmul fast float %577, %541
  %579 = fadd fast float %566, %538
  %580 = fmul fast float %579, %520
  %581 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %568, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float %524)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = fmul fast float %582, %540
  %584 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %575, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float %524)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = fmul fast float %585, %541
  %587 = fadd fast float %586, %583
  %588 = fmul fast float %587, %555
  %589 = fadd fast float %578, %573
  %590 = fmul fast float %589, %554
  %591 = fadd fast float %590, %588
  %592 = fmul fast float %591, 6.250000e-02
  br label %4648

; <label>:593                                     ; preds = %503
  %594 = fmul fast float %310, 0x401921FB60000000
  %595 = call float @dx.op.unary.f32(i32 13, float %594)  ; Sin(value)
  %596 = call float @dx.op.unary.f32(i32 12, float %594)  ; Cos(value)
  %597 = fsub fast float -0.000000e+00, %595
  br label %598

; <label>:598                                     ; preds = %647, %593
  %599 = phi float [ 0.000000e+00, %593 ], [ %642, %647 ]
  %600 = phi float [ 0.000000e+00, %593 ], [ %644, %647 ]
  %601 = phi i32 [ 0, %593 ], [ %648, %647 ]
  %602 = mul i32 %601, 2
  %603 = add i32 0, %602
  %604 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %603
  %605 = load float, float* %604, align 4
  %606 = mul i32 %601, 2
  %607 = add i32 1, %606
  %608 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %607
  %609 = load float, float* %608, align 4
  %610 = fmul fast float %605, %596
  %611 = call float @dx.op.tertiary.f32(i32 46, float %609, float %597, float %610)  ; FMad(a,b,c)
  %612 = fmul fast float %605, %595
  %613 = call float @dx.op.tertiary.f32(i32 46, float %609, float %596, float %612)  ; FMad(a,b,c)
  %614 = fmul fast float %611, %522
  %615 = fmul fast float %613, %522
  %616 = fadd fast float %614, %516
  %617 = fadd fast float %615, %517
  %618 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %27, float %616, float %617, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = extractvalue %dx.types.ResRet.f32 %618, 3
  %623 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %619, float* %623, align 4
  %624 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %620, float* %624, align 4
  %625 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %621, float* %625, align 4
  %626 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %622, float* %626, align 4
  %627 = fsub fast float %619, %524
  %628 = fcmp fast olt float %627, 0.000000e+00
  %629 = select i1 %628, float 0.000000e+00, float 1.000000e+00
  %630 = fadd fast float %629, %599
  %631 = fmul fast float %629, %627
  %632 = fadd fast float %631, %600
  br label %633

; <label>:633                                     ; preds = %633, %598
  %634 = phi i32 [ 1, %598 ], [ %645, %633 ]
  %635 = phi float [ %632, %598 ], [ %644, %633 ]
  %636 = phi float [ %630, %598 ], [ %642, %633 ]
  %637 = getelementptr [4 x float], [4 x float]* %54, i32 0, i32 %634
  %638 = load float, float* %637, align 4, !tbaa !57
  %639 = fsub fast float %638, %524
  %640 = fcmp fast olt float %639, 0.000000e+00
  %641 = select i1 %640, float 0.000000e+00, float 1.000000e+00
  %642 = fadd fast float %641, %636
  %643 = fmul fast float %641, %639
  %644 = fadd fast float %643, %635
  %645 = add nuw nsw i32 %634, 1
  %646 = icmp eq i32 %645, 4
  br i1 %646, label %647, label %633, !llvm.loop !59

; <label>:647                                     ; preds = %633
  %648 = add nuw nsw i32 %601, 1
  %649 = icmp eq i32 %648, 8
  br i1 %649, label %650, label %598, !llvm.loop !61

; <label>:650                                     ; preds = %647
  %651 = fdiv fast float 1.000000e+00, %642
  %652 = fmul fast float %651, %644
  %653 = fdiv fast float 1.000000e+00, %524
  %654 = fmul fast float %652, %653
  %655 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %656 = call float @dx.op.binary.f32(i32 35, float %655, float 0.000000e+00)  ; FMax(a,b)
  %657 = fmul fast float %642, 3.125000e-02
  %658 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %659 = fmul fast float %658, 2.000000e+00
  %660 = fadd fast float %659, -1.000000e+00
  %661 = fcmp fast ogt float %660, 0.000000e+00
  %662 = fcmp fast olt float %660, 0.000000e+00
  %663 = zext i1 %661 to i32
  %664 = zext i1 %662 to i32
  %665 = sub nsw i32 %663, %664
  %666 = sitofp i32 %665 to float
  %667 = fmul fast float %666, %660
  %668 = fsub fast float 1.000000e+00, %667
  %669 = fmul fast float %668, %668
  %670 = fmul fast float %669, %668
  %671 = fsub fast float %668, %670
  %672 = fmul fast float %671, %656
  %673 = fsub fast float 1.000000e+00, %670
  %674 = fsub fast float %673, %672
  %675 = fmul fast float %666, 5.000000e-01
  %676 = fmul fast float %675, %674
  %677 = fsub fast float 5.000000e-01, %676
  br label %4648

; <label>:678                                     ; preds = %501
  %679 = icmp eq i32 %324, 2
  br i1 %679, label %680, label %855, !dx.controlflow.hints !63

; <label>:680                                     ; preds = %678
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 2
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 2
  %685 = fmul fast float %682, %272
  %686 = fadd fast float %684, %299
  %687 = fadd fast float %686, %685
  %688 = extractvalue %dx.types.CBufRet.f32 %681, 0
  %689 = extractvalue %dx.types.CBufRet.f32 %681, 1
  %690 = extractvalue %dx.types.CBufRet.f32 %681, 3
  %691 = fmul fast float %690, %291
  %692 = fmul fast float %690, %295
  %693 = fadd fast float %691, %688
  %694 = fadd fast float %692, %689
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 2
  %697 = extractvalue %dx.types.CBufRet.f32 %695, 3
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 2
  %700 = call float @dx.op.binary.f32(i32 35, float %687, float 0.000000e+00)  ; FMax(a,b)
  %701 = fadd fast float %700, 0x3F10000000000000
  %702 = fcmp fast oeq float %699, 0.000000e+00
  br i1 %702, label %703, label %770, !dx.controlflow.hints !56

; <label>:703                                     ; preds = %680
  %704 = extractvalue %dx.types.CBufRet.f32 %695, 1
  %705 = extractvalue %dx.types.CBufRet.f32 %695, 0
  %706 = fmul fast float %693, %705
  %707 = fmul fast float %694, %704
  %708 = fadd fast float %706, 5.000000e-01
  %709 = call float @dx.op.unary.f32(i32 27, float %708)  ; Round_ni(value)
  %710 = fadd fast float %707, 5.000000e-01
  %711 = call float @dx.op.unary.f32(i32 27, float %710)  ; Round_ni(value)
  %712 = fsub fast float %708, %709
  %713 = fsub fast float %710, %711
  %714 = fadd fast float %709, -5.000000e-01
  %715 = fadd fast float %711, -5.000000e-01
  %716 = fmul fast float %712, 2.000000e+00
  %717 = fsub fast float 3.000000e+00, %716
  %718 = fadd fast float %716, 1.000000e+00
  %719 = fsub fast float 2.000000e+00, %712
  %720 = bitcast float %717 to i32
  %721 = sub nsw i32 2129859010, %720
  %722 = bitcast i32 %721 to float
  %723 = fmul fast float %722, %719
  %724 = fadd fast float %723, -1.000000e+00
  %725 = bitcast float %718 to i32
  %726 = sub nsw i32 2129859010, %725
  %727 = bitcast i32 %726 to float
  %728 = fmul fast float %727, %712
  %729 = fadd fast float %728, 1.000000e+00
  %730 = fmul fast float %713, 2.000000e+00
  %731 = fsub fast float 3.000000e+00, %730
  %732 = fadd fast float %730, 1.000000e+00
  %733 = fsub fast float 2.000000e+00, %713
  %734 = bitcast float %731 to i32
  %735 = sub nsw i32 2129859010, %734
  %736 = bitcast i32 %735 to float
  %737 = fmul fast float %736, %733
  %738 = fadd fast float %737, -1.000000e+00
  %739 = bitcast float %732 to i32
  %740 = sub nsw i32 2129859010, %739
  %741 = bitcast i32 %740 to float
  %742 = fmul fast float %741, %713
  %743 = fadd fast float %742, 1.000000e+00
  %744 = fadd fast float %724, %714
  %745 = fmul fast float %744, %696
  %746 = fadd fast float %738, %715
  %747 = fmul fast float %746, %697
  %748 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %745, float %747, float undef, float undef, i32 0, i32 0, i32 undef, float %701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = fmul fast float %749, %717
  %751 = fadd fast float %729, %714
  %752 = fmul fast float %751, %696
  %753 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %752, float %747, float undef, float undef, i32 0, i32 0, i32 undef, float %701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = fmul fast float %754, %718
  %756 = fadd fast float %743, %715
  %757 = fmul fast float %756, %697
  %758 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %745, float %757, float undef, float undef, i32 0, i32 0, i32 undef, float %701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = fmul fast float %759, %717
  %761 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %752, float %757, float undef, float undef, i32 0, i32 0, i32 undef, float %701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = fmul fast float %762, %718
  %764 = fadd fast float %763, %760
  %765 = fmul fast float %764, %732
  %766 = fadd fast float %755, %750
  %767 = fmul fast float %766, %731
  %768 = fadd fast float %767, %765
  %769 = fmul fast float %768, 6.250000e-02
  br label %4648

; <label>:770                                     ; preds = %680
  %771 = fmul fast float %310, 0x401921FB60000000
  %772 = call float @dx.op.unary.f32(i32 13, float %771)  ; Sin(value)
  %773 = call float @dx.op.unary.f32(i32 12, float %771)  ; Cos(value)
  %774 = fsub fast float -0.000000e+00, %772
  br label %775

; <label>:775                                     ; preds = %824, %770
  %776 = phi float [ 0.000000e+00, %770 ], [ %819, %824 ]
  %777 = phi float [ 0.000000e+00, %770 ], [ %821, %824 ]
  %778 = phi i32 [ 0, %770 ], [ %825, %824 ]
  %779 = mul i32 %778, 2
  %780 = add i32 0, %779
  %781 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %780
  %782 = load float, float* %781, align 4
  %783 = mul i32 %778, 2
  %784 = add i32 1, %783
  %785 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %784
  %786 = load float, float* %785, align 4
  %787 = fmul fast float %782, %773
  %788 = call float @dx.op.tertiary.f32(i32 46, float %786, float %774, float %787)  ; FMad(a,b,c)
  %789 = fmul fast float %782, %772
  %790 = call float @dx.op.tertiary.f32(i32 46, float %786, float %773, float %789)  ; FMad(a,b,c)
  %791 = fmul fast float %788, %699
  %792 = fmul fast float %790, %699
  %793 = fadd fast float %791, %693
  %794 = fadd fast float %792, %694
  %795 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %27, float %793, float %794, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 0
  store float %796, float* %800, align 4
  %801 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 1
  store float %797, float* %801, align 4
  %802 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 2
  store float %798, float* %802, align 4
  %803 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 3
  store float %799, float* %803, align 4
  %804 = fsub fast float %796, %701
  %805 = fcmp fast olt float %804, 0.000000e+00
  %806 = select i1 %805, float 0.000000e+00, float 1.000000e+00
  %807 = fadd fast float %806, %776
  %808 = fmul fast float %806, %804
  %809 = fadd fast float %808, %777
  br label %810

; <label>:810                                     ; preds = %810, %775
  %811 = phi i32 [ 1, %775 ], [ %822, %810 ]
  %812 = phi float [ %809, %775 ], [ %821, %810 ]
  %813 = phi float [ %807, %775 ], [ %819, %810 ]
  %814 = getelementptr [4 x float], [4 x float]* %53, i32 0, i32 %811
  %815 = load float, float* %814, align 4, !tbaa !57
  %816 = fsub fast float %815, %701
  %817 = fcmp fast olt float %816, 0.000000e+00
  %818 = select i1 %817, float 0.000000e+00, float 1.000000e+00
  %819 = fadd fast float %818, %813
  %820 = fmul fast float %818, %816
  %821 = fadd fast float %820, %812
  %822 = add nuw nsw i32 %811, 1
  %823 = icmp eq i32 %822, 4
  br i1 %823, label %824, label %810, !llvm.loop !59

; <label>:824                                     ; preds = %810
  %825 = add nuw nsw i32 %778, 1
  %826 = icmp eq i32 %825, 8
  br i1 %826, label %827, label %775, !llvm.loop !61

; <label>:827                                     ; preds = %824
  %828 = fdiv fast float 1.000000e+00, %819
  %829 = fmul fast float %828, %821
  %830 = fdiv fast float 1.000000e+00, %701
  %831 = fmul fast float %829, %830
  %832 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %833 = call float @dx.op.binary.f32(i32 35, float %832, float 0.000000e+00)  ; FMax(a,b)
  %834 = fmul fast float %819, 3.125000e-02
  %835 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %836 = fmul fast float %835, 2.000000e+00
  %837 = fadd fast float %836, -1.000000e+00
  %838 = fcmp fast ogt float %837, 0.000000e+00
  %839 = fcmp fast olt float %837, 0.000000e+00
  %840 = zext i1 %838 to i32
  %841 = zext i1 %839 to i32
  %842 = sub nsw i32 %840, %841
  %843 = sitofp i32 %842 to float
  %844 = fmul fast float %843, %837
  %845 = fsub fast float 1.000000e+00, %844
  %846 = fmul fast float %845, %845
  %847 = fmul fast float %846, %845
  %848 = fsub fast float %845, %847
  %849 = fmul fast float %848, %833
  %850 = fsub fast float 1.000000e+00, %847
  %851 = fsub fast float %850, %849
  %852 = fmul fast float %843, 5.000000e-01
  %853 = fmul fast float %852, %851
  %854 = fsub fast float 5.000000e-01, %853
  br label %4648

; <label>:855                                     ; preds = %678
  %856 = icmp eq i32 %324, 12
  br i1 %856, label %857, label %1032, !dx.controlflow.hints !64

; <label>:857                                     ; preds = %855
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 2
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = fmul fast float %859, %272
  %863 = fadd fast float %861, %299
  %864 = fadd fast float %863, %862
  %865 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %858, 3
  %868 = fmul fast float %867, %291
  %869 = fmul fast float %867, %295
  %870 = fadd fast float %868, %865
  %871 = fadd fast float %869, %866
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = call float @dx.op.binary.f32(i32 35, float %864, float 0.000000e+00)  ; FMax(a,b)
  %878 = fadd fast float %877, 0x3F10000000000000
  %879 = fcmp fast oeq float %876, 0.000000e+00
  br i1 %879, label %880, label %947, !dx.controlflow.hints !56

; <label>:880                                     ; preds = %857
  %881 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %882 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %883 = fmul fast float %870, %882
  %884 = fmul fast float %871, %881
  %885 = fadd fast float %883, 5.000000e-01
  %886 = call float @dx.op.unary.f32(i32 27, float %885)  ; Round_ni(value)
  %887 = fadd fast float %884, 5.000000e-01
  %888 = call float @dx.op.unary.f32(i32 27, float %887)  ; Round_ni(value)
  %889 = fsub fast float %885, %886
  %890 = fsub fast float %887, %888
  %891 = fadd fast float %886, -5.000000e-01
  %892 = fadd fast float %888, -5.000000e-01
  %893 = fmul fast float %889, 2.000000e+00
  %894 = fsub fast float 3.000000e+00, %893
  %895 = fadd fast float %893, 1.000000e+00
  %896 = fsub fast float 2.000000e+00, %889
  %897 = bitcast float %894 to i32
  %898 = sub nsw i32 2129859010, %897
  %899 = bitcast i32 %898 to float
  %900 = fmul fast float %899, %896
  %901 = fadd fast float %900, -1.000000e+00
  %902 = bitcast float %895 to i32
  %903 = sub nsw i32 2129859010, %902
  %904 = bitcast i32 %903 to float
  %905 = fmul fast float %904, %889
  %906 = fadd fast float %905, 1.000000e+00
  %907 = fmul fast float %890, 2.000000e+00
  %908 = fsub fast float 3.000000e+00, %907
  %909 = fadd fast float %907, 1.000000e+00
  %910 = fsub fast float 2.000000e+00, %890
  %911 = bitcast float %908 to i32
  %912 = sub nsw i32 2129859010, %911
  %913 = bitcast i32 %912 to float
  %914 = fmul fast float %913, %910
  %915 = fadd fast float %914, -1.000000e+00
  %916 = bitcast float %909 to i32
  %917 = sub nsw i32 2129859010, %916
  %918 = bitcast i32 %917 to float
  %919 = fmul fast float %918, %890
  %920 = fadd fast float %919, 1.000000e+00
  %921 = fadd fast float %901, %891
  %922 = fmul fast float %921, %873
  %923 = fadd fast float %915, %892
  %924 = fmul fast float %923, %874
  %925 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %922, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float %878)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = fmul fast float %926, %894
  %928 = fadd fast float %906, %891
  %929 = fmul fast float %928, %873
  %930 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %929, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float %878)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = fmul fast float %931, %895
  %933 = fadd fast float %920, %892
  %934 = fmul fast float %933, %874
  %935 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %922, float %934, float undef, float undef, i32 0, i32 0, i32 undef, float %878)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = fmul fast float %936, %894
  %938 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %929, float %934, float undef, float undef, i32 0, i32 0, i32 undef, float %878)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = fmul fast float %939, %895
  %941 = fadd fast float %940, %937
  %942 = fmul fast float %941, %909
  %943 = fadd fast float %932, %927
  %944 = fmul fast float %943, %908
  %945 = fadd fast float %944, %942
  %946 = fmul fast float %945, 6.250000e-02
  br label %4648

; <label>:947                                     ; preds = %857
  %948 = fmul fast float %310, 0x401921FB60000000
  %949 = call float @dx.op.unary.f32(i32 13, float %948)  ; Sin(value)
  %950 = call float @dx.op.unary.f32(i32 12, float %948)  ; Cos(value)
  %951 = fsub fast float -0.000000e+00, %949
  br label %952

; <label>:952                                     ; preds = %1001, %947
  %953 = phi float [ 0.000000e+00, %947 ], [ %996, %1001 ]
  %954 = phi float [ 0.000000e+00, %947 ], [ %998, %1001 ]
  %955 = phi i32 [ 0, %947 ], [ %1002, %1001 ]
  %956 = mul i32 %955, 2
  %957 = add i32 0, %956
  %958 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %957
  %959 = load float, float* %958, align 4
  %960 = mul i32 %955, 2
  %961 = add i32 1, %960
  %962 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %961
  %963 = load float, float* %962, align 4
  %964 = fmul fast float %959, %950
  %965 = call float @dx.op.tertiary.f32(i32 46, float %963, float %951, float %964)  ; FMad(a,b,c)
  %966 = fmul fast float %959, %949
  %967 = call float @dx.op.tertiary.f32(i32 46, float %963, float %950, float %966)  ; FMad(a,b,c)
  %968 = fmul fast float %965, %876
  %969 = fmul fast float %967, %876
  %970 = fadd fast float %968, %870
  %971 = fadd fast float %969, %871
  %972 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %27, float %970, float %971, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = extractvalue %dx.types.ResRet.f32 %972, 1
  %975 = extractvalue %dx.types.ResRet.f32 %972, 2
  %976 = extractvalue %dx.types.ResRet.f32 %972, 3
  %977 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 0
  store float %973, float* %977, align 4
  %978 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 1
  store float %974, float* %978, align 4
  %979 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 2
  store float %975, float* %979, align 4
  %980 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 3
  store float %976, float* %980, align 4
  %981 = fsub fast float %973, %878
  %982 = fcmp fast olt float %981, 0.000000e+00
  %983 = select i1 %982, float 0.000000e+00, float 1.000000e+00
  %984 = fadd fast float %983, %953
  %985 = fmul fast float %983, %981
  %986 = fadd fast float %985, %954
  br label %987

; <label>:987                                     ; preds = %987, %952
  %988 = phi i32 [ 1, %952 ], [ %999, %987 ]
  %989 = phi float [ %986, %952 ], [ %998, %987 ]
  %990 = phi float [ %984, %952 ], [ %996, %987 ]
  %991 = getelementptr [4 x float], [4 x float]* %52, i32 0, i32 %988
  %992 = load float, float* %991, align 4, !tbaa !57
  %993 = fsub fast float %992, %878
  %994 = fcmp fast olt float %993, 0.000000e+00
  %995 = select i1 %994, float 0.000000e+00, float 1.000000e+00
  %996 = fadd fast float %995, %990
  %997 = fmul fast float %995, %993
  %998 = fadd fast float %997, %989
  %999 = add nuw nsw i32 %988, 1
  %1000 = icmp eq i32 %999, 4
  br i1 %1000, label %1001, label %987, !llvm.loop !59

; <label>:1001                                    ; preds = %987
  %1002 = add nuw nsw i32 %955, 1
  %1003 = icmp eq i32 %1002, 8
  br i1 %1003, label %1004, label %952, !llvm.loop !61

; <label>:1004                                    ; preds = %1001
  %1005 = fdiv fast float 1.000000e+00, %996
  %1006 = fmul fast float %1005, %998
  %1007 = fdiv fast float 1.000000e+00, %878
  %1008 = fmul fast float %1006, %1007
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1010 = call float @dx.op.binary.f32(i32 35, float %1009, float 0.000000e+00)  ; FMax(a,b)
  %1011 = fmul fast float %996, 3.125000e-02
  %1012 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  %1013 = fmul fast float %1012, 2.000000e+00
  %1014 = fadd fast float %1013, -1.000000e+00
  %1015 = fcmp fast ogt float %1014, 0.000000e+00
  %1016 = fcmp fast olt float %1014, 0.000000e+00
  %1017 = zext i1 %1015 to i32
  %1018 = zext i1 %1016 to i32
  %1019 = sub nsw i32 %1017, %1018
  %1020 = sitofp i32 %1019 to float
  %1021 = fmul fast float %1020, %1014
  %1022 = fsub fast float 1.000000e+00, %1021
  %1023 = fmul fast float %1022, %1022
  %1024 = fmul fast float %1023, %1022
  %1025 = fsub fast float %1022, %1024
  %1026 = fmul fast float %1025, %1010
  %1027 = fsub fast float 1.000000e+00, %1024
  %1028 = fsub fast float %1027, %1026
  %1029 = fmul fast float %1020, 5.000000e-01
  %1030 = fmul fast float %1029, %1028
  %1031 = fsub fast float 5.000000e-01, %1030
  br label %4648

; <label>:1032                                    ; preds = %855
  %1033 = icmp eq i32 %324, 13
  br i1 %1033, label %1034, label %1704, !dx.controlflow.hints !65

; <label>:1034                                    ; preds = %1032
  %1035 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %1036 = fcmp fast une float %1035, 0.000000e+00
  br i1 %1036, label %1037, label %4648, !dx.controlflow.hints !66

; <label>:1037                                    ; preds = %1034
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.CBufRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1042 = extractvalue %dx.types.CBufRet.f32 %1038, 3
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.CBufRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.CBufRet.f32 %1043, 2
  %1047 = extractvalue %dx.types.CBufRet.f32 %1043, 3
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.CBufRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.CBufRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.CBufRet.f32 %1048, 3
  %1053 = fmul fast float %1039, %209
  %1054 = call float @dx.op.tertiary.f32(i32 46, float %210, float %1040, float %1053)  ; FMad(a,b,c)
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1041, float %1054)  ; FMad(a,b,c)
  %1056 = fadd fast float %1055, %1042
  %1057 = fmul fast float %1044, %209
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %210, float %1045, float %1057)  ; FMad(a,b,c)
  %1059 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1046, float %1058)  ; FMad(a,b,c)
  %1060 = fadd fast float %1059, %1047
  %1061 = fmul fast float %1049, %209
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %210, float %1050, float %1061)  ; FMad(a,b,c)
  %1063 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1051, float %1062)  ; FMad(a,b,c)
  %1064 = fadd fast float %1063, %1052
  %1065 = fcmp fast oge float %1056, 1.000000e+00
  %1066 = fcmp fast oge float %1060, 1.000000e+00
  %1067 = or i1 %1065, %1066
  %1068 = fcmp fast olt float %1056, 0.000000e+00
  %1069 = fcmp fast olt float %1060, 0.000000e+00
  %1070 = or i1 %1068, %1069
  %1071 = or i1 %1067, %1070
  br i1 %1071, label %4648, label %1072, !dx.controlflow.hints !67

; <label>:1072                                    ; preds = %1037
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 1
  %1079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.i32 %1079, 2
  %1081 = uitofp i32 %1080 to float
  %1082 = extractvalue %dx.types.CBufRet.i32 %1079, 3
  %1083 = uitofp i32 %1082 to float
  %1084 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1085 = fmul fast float %1084, 2.000000e+00
  %1086 = fsub fast float %1056, %1074
  %1087 = fsub fast float %1060, %1075
  %1088 = fmul fast float %1085, %1086
  %1089 = fmul fast float %1085, %1087
  %1090 = fdiv fast float 1.000000e+00, %261
  %1091 = fmul fast float %1089, %1090
  %1092 = call float @dx.op.unary.f32(i32 6, float %1091)  ; FAbs(value)
  %1093 = fmul fast float %1076, %211
  %1094 = fmul fast float %1093, %1085
  %1095 = call float @dx.op.unary.f32(i32 6, float %1094)  ; FAbs(value)
  %1096 = call float @dx.op.unary.f32(i32 6, float %1088)  ; FAbs(value)
  %1097 = call float @dx.op.binary.f32(i32 35, float %1095, float %1092)  ; FMax(a,b)
  %1098 = call float @dx.op.binary.f32(i32 35, float %1096, float %1097)  ; FMax(a,b)
  %1099 = fmul fast float %1098, 2.000000e+00
  %1100 = call float @dx.op.unary.f32(i32 23, float %1099)  ; Log(value)
  %1101 = call float @dx.op.binary.f32(i32 35, float %1100, float %1081)  ; FMax(a,b)
  %1102 = call float @dx.op.unary.f32(i32 22, float %1101)  ; Frc(value)
  %1103 = fadd fast float %1102, 0xBFEA666660000000
  %1104 = fmul fast float %1103, 8.000000e+00
  %1105 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1106 = call float @dx.op.unary.f32(i32 27, float %1101)  ; Round_ni(value)
  %1107 = fadd fast float %1106, %1105
  %1108 = call float @dx.op.binary.f32(i32 36, float %1107, float %1083)  ; FMin(a,b)
  %1109 = call float @dx.op.unary.f32(i32 27, float %1108)  ; Round_ni(value)
  %1110 = fsub fast float -0.000000e+00, %1109
  %1111 = call float @dx.op.unary.f32(i32 21, float %1110)  ; Exp(value)
  %1112 = fmul fast float %1111, %1085
  %1113 = fmul fast float %1112, %1056
  %1114 = fmul fast float %1112, %1060
  %1115 = fmul fast float %1113, 5.000000e-01
  %1116 = fmul fast float %1114, 5.000000e-01
  %1117 = fadd fast float %1115, 5.000000e-01
  %1118 = fadd fast float %1116, 5.000000e-01
  %1119 = fmul fast float %1113, 2.500000e-01
  %1120 = fmul fast float %1114, 2.500000e-01
  %1121 = fadd fast float %1119, 5.000000e-01
  %1122 = fadd fast float %1120, 5.000000e-01
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = and i32 %1124, 536870911
  %1126 = lshr i32 %1125, 9
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, %1056
  %1129 = fmul fast float %1127, %1060
  %1130 = call float @dx.op.unary.f32(i32 22, float %1128)  ; Frc(value)
  %1131 = call float @dx.op.unary.f32(i32 22, float %1129)  ; Frc(value)
  %1132 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1133 = fcmp fast une float %1132, 0.000000e+00
  br i1 %1133, label %1134, label %1232, !dx.controlflow.hints !68

; <label>:1134                                    ; preds = %1072
  %1135 = call float @dx.op.unary.f32(i32 21, float %1106)  ; Exp(value)
  %1136 = fmul fast float %1135, 1.953125e-03
  %1137 = fcmp fast olt float %1130, %1136
  %1138 = fcmp fast olt float %1131, %1136
  %1139 = or i1 %1137, %1138
  %1140 = fsub fast float 1.000000e+00, %1136
  %1141 = fcmp fast ogt float %1130, %1140
  %1142 = fcmp fast ogt float %1131, %1140
  %1143 = or i1 %1141, %1142
  %1144 = or i1 %1139, %1143
  br i1 %1144, label %1145, label %1311, !dx.controlflow.hints !69

; <label>:1145                                    ; preds = %1134
  %1146 = fmul fast float %1078, 5.000000e-01
  %1147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.i32 %1147, 0
  %1149 = fmul fast float %1060, 3.530000e+02
  %1150 = uitofp i32 %1125 to float
  %1151 = fmul fast float %1149, %1150
  %1152 = fmul fast float %1056, 6.130000e+02
  %1153 = fadd fast float %1151, %1152
  %1154 = fptoui float %1153 to i32
  %1155 = add i32 %1148, %1154
  %1156 = mul i32 %1155, -63
  %1157 = lshr i32 %1156, 17
  %1158 = xor i32 %1157, %1156
  %1159 = mul i32 %1158, -511
  %1160 = mul i32 %1158, -8176
  %1161 = xor i32 %1159, %1160
  %1162 = mul i32 %1161, -7
  %1163 = mul i32 %1161, -7168
  %1164 = xor i32 %1162, %1163
  %1165 = lshr i32 %1164, 15
  %1166 = xor i32 %1165, %1162
  %1167 = and i32 %1166, 15
  %1168 = mul i32 %1167, 2
  %1169 = add i32 0, %1168
  %1170 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1169
  %1171 = load float, float* %1170, align 4
  %1172 = mul i32 %1167, 2
  %1173 = add i32 1, %1172
  %1174 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1173
  %1175 = load float, float* %1174, align 4
  %1176 = fmul fast float %1060, 2.770000e+02
  %1177 = fmul fast float %1176, %1150
  %1178 = fmul fast float %1056, 5.990000e+02
  %1179 = fadd fast float %1177, %1178
  %1180 = fptoui float %1179 to i32
  %1181 = mul i32 %1180, -63
  %1182 = lshr i32 %1181, 17
  %1183 = xor i32 %1182, %1181
  %1184 = mul i32 %1183, -511
  %1185 = mul i32 %1183, -8176
  %1186 = xor i32 %1184, %1185
  %1187 = mul i32 %1186, -7
  %1188 = mul i32 %1186, -7168
  %1189 = xor i32 %1187, %1188
  %1190 = lshr i32 %1189, 15
  %1191 = xor i32 %1190, %1187
  %1192 = and i32 %1191, 63
  %1193 = mul i32 %1192, 2
  %1194 = add i32 0, %1193
  %1195 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1194
  %1196 = load float, float* %1195, align 4
  %1197 = mul i32 %1192, 2
  %1198 = add i32 1, %1197
  %1199 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1198
  %1200 = load float, float* %1199, align 4
  %1201 = call float @dx.op.dot2.f32(i32 54, float %1171, float %1175, float %1196, float %1200)  ; Dot2(ax,ay,bx,by)
  %1202 = fsub fast float -0.000000e+00, %1196
  %1203 = call float @dx.op.dot2.f32(i32 54, float %1171, float %1175, float %1202, float %1200)  ; Dot2(ax,ay,bx,by)
  %1204 = fmul fast float %1201, %1146
  %1205 = fmul fast float %1203, %1146
  %1206 = fdiv fast float 2.000000e+00, %1112
  %1207 = fmul fast float %1135, 9.765625e-04
  %1208 = fcmp fast olt float %1130, %1207
  %1209 = fcmp fast olt float %1131, %1207
  %1210 = or i1 %1208, %1209
  %1211 = fsub fast float 1.000000e+00, %1207
  %1212 = fcmp fast ogt float %1130, %1211
  %1213 = fcmp fast ogt float %1131, %1211
  %1214 = or i1 %1212, %1213
  %1215 = or i1 %1210, %1214
  %1216 = fmul fast float %1204, 2.000000e+00
  br i1 %1215, label %1217, label %1221, !dx.controlflow.hints !70

; <label>:1217                                    ; preds = %1145
  %1218 = fmul fast float %1205, 2.000000e+00
  %1219 = fadd fast float %1216, %1117
  %1220 = fadd fast float %1218, %1118
  br label %1221

; <label>:1221                                    ; preds = %1217, %1145
  %1222 = phi float [ %1219, %1217 ], [ %1117, %1145 ]
  %1223 = phi float [ %1220, %1217 ], [ %1118, %1145 ]
  %1224 = phi i32 [ 3, %1217 ], [ 2, %1145 ]
  %1225 = fadd fast float %1204, %1121
  %1226 = fadd fast float %1205, %1122
  %1227 = fmul fast float %1216, %1206
  %1228 = fmul fast float %1206, 2.000000e+00
  %1229 = fmul fast float %1228, %1205
  %1230 = fadd fast float %1227, %1056
  %1231 = fadd fast float %1229, %1060
  br label %1311

; <label>:1232                                    ; preds = %1072
  %1233 = call float @dx.op.unary.f32(i32 21, float %1109)  ; Exp(value)
  %1234 = fmul fast float %1233, 9.765625e-04
  %1235 = fcmp fast olt float %1130, %1234
  %1236 = fcmp fast olt float %1131, %1234
  %1237 = or i1 %1235, %1236
  %1238 = fsub fast float 1.000000e+00, %1234
  %1239 = fcmp fast ogt float %1130, %1238
  %1240 = fcmp fast ogt float %1131, %1238
  %1241 = or i1 %1239, %1240
  %1242 = or i1 %1237, %1241
  br i1 %1242, label %1243, label %1311, !dx.controlflow.hints !71

; <label>:1243                                    ; preds = %1232
  %1244 = fmul fast float %1078, 5.000000e-01
  %1245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1246 = extractvalue %dx.types.CBufRet.i32 %1245, 0
  %1247 = fmul fast float %1060, 3.530000e+02
  %1248 = uitofp i32 %1125 to float
  %1249 = fmul fast float %1247, %1248
  %1250 = fmul fast float %1056, 6.130000e+02
  %1251 = fadd fast float %1249, %1250
  %1252 = fptoui float %1251 to i32
  %1253 = add i32 %1246, %1252
  %1254 = mul i32 %1253, -63
  %1255 = lshr i32 %1254, 17
  %1256 = xor i32 %1255, %1254
  %1257 = mul i32 %1256, -511
  %1258 = mul i32 %1256, -8176
  %1259 = xor i32 %1257, %1258
  %1260 = mul i32 %1259, -7
  %1261 = mul i32 %1259, -7168
  %1262 = xor i32 %1260, %1261
  %1263 = lshr i32 %1262, 15
  %1264 = xor i32 %1263, %1260
  %1265 = and i32 %1264, 15
  %1266 = mul i32 %1265, 2
  %1267 = add i32 0, %1266
  %1268 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1267
  %1269 = load float, float* %1268, align 4
  %1270 = mul i32 %1265, 2
  %1271 = add i32 1, %1270
  %1272 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1271
  %1273 = load float, float* %1272, align 4
  %1274 = fmul fast float %1060, 2.770000e+02
  %1275 = fmul fast float %1274, %1248
  %1276 = fmul fast float %1056, 5.990000e+02
  %1277 = fadd fast float %1275, %1276
  %1278 = fptoui float %1277 to i32
  %1279 = mul i32 %1278, -63
  %1280 = lshr i32 %1279, 17
  %1281 = xor i32 %1280, %1279
  %1282 = mul i32 %1281, -511
  %1283 = mul i32 %1281, -8176
  %1284 = xor i32 %1282, %1283
  %1285 = mul i32 %1284, -7
  %1286 = mul i32 %1284, -7168
  %1287 = xor i32 %1285, %1286
  %1288 = lshr i32 %1287, 15
  %1289 = xor i32 %1288, %1285
  %1290 = and i32 %1289, 63
  %1291 = mul i32 %1290, 2
  %1292 = add i32 0, %1291
  %1293 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1292
  %1294 = load float, float* %1293, align 4
  %1295 = mul i32 %1290, 2
  %1296 = add i32 1, %1295
  %1297 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1296
  %1298 = load float, float* %1297, align 4
  %1299 = call float @dx.op.dot2.f32(i32 54, float %1269, float %1273, float %1294, float %1298)  ; Dot2(ax,ay,bx,by)
  %1300 = fsub fast float -0.000000e+00, %1294
  %1301 = call float @dx.op.dot2.f32(i32 54, float %1269, float %1273, float %1300, float %1298)  ; Dot2(ax,ay,bx,by)
  %1302 = fmul fast float %1299, %1244
  %1303 = fmul fast float %1301, %1244
  %1304 = fadd fast float %1302, %1117
  %1305 = fadd fast float %1303, %1118
  %1306 = fdiv fast float 2.000000e+00, %1112
  %1307 = fmul fast float %1306, %1302
  %1308 = fmul fast float %1303, %1306
  %1309 = fadd fast float %1307, %1056
  %1310 = fadd fast float %1308, %1060
  br label %1311

; <label>:1311                                    ; preds = %1243, %1232, %1221, %1134
  %1312 = phi float [ %1225, %1221 ], [ %1121, %1134 ], [ %1121, %1243 ], [ %1121, %1232 ]
  %1313 = phi float [ %1226, %1221 ], [ %1122, %1134 ], [ %1122, %1243 ], [ %1122, %1232 ]
  %1314 = phi float [ %1222, %1221 ], [ %1117, %1134 ], [ %1304, %1243 ], [ %1117, %1232 ]
  %1315 = phi float [ %1223, %1221 ], [ %1118, %1134 ], [ %1305, %1243 ], [ %1118, %1232 ]
  %1316 = phi i32 [ %1224, %1221 ], [ 0, %1134 ], [ 1, %1243 ], [ 0, %1232 ]
  %1317 = phi float [ %1230, %1221 ], [ %1056, %1134 ], [ %1309, %1243 ], [ %1056, %1232 ]
  %1318 = phi float [ %1231, %1221 ], [ %1060, %1134 ], [ %1310, %1243 ], [ %1060, %1232 ]
  %1319 = fsub fast float %1083, %1081
  %1320 = fptoui float %1319 to i32
  %1321 = add i32 %1320, 320
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %1321)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 0
  %1324 = extractvalue %dx.types.CBufRet.f32 %1322, 1
  %1325 = fcmp fast une float %1108, %1083
  %1326 = fsub fast float %1317, %1323
  %1327 = fsub fast float %1318, %1324
  %1328 = call float @dx.op.unary.f32(i32 6, float %1326)  ; FAbs(value)
  %1329 = call float @dx.op.unary.f32(i32 6, float %1327)  ; FAbs(value)
  %1330 = fmul fast float %1328, %1112
  %1331 = fmul fast float %1329, %1112
  %1332 = fcmp fast olt float %1330, 1.000000e+00
  %1333 = fcmp fast olt float %1331, 1.000000e+00
  %1334 = and i1 %1332, %1333
  %1335 = or i1 %1325, %1334
  br i1 %1335, label %1336, label %4648, !dx.controlflow.hints !72

; <label>:1336                                    ; preds = %1311
  %1337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.i32 %1337, 2
  %1339 = sitofp i32 %1338 to float
  %1340 = fsub fast float %1108, %1339
  %1341 = call float @dx.op.unary.f32(i32 27, float %1340)  ; Round_ni(value)
  %1342 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1343 = icmp eq i32 %1316, 0
  %1344 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1345 = call float @dx.op.unary.f32(i32 22, float %1315)  ; Frc(value)
  br i1 %1343, label %1416, label %1346, !dx.controlflow.hints !73

; <label>:1346                                    ; preds = %1336
  %1347 = and i32 %1316, 1
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1362, label %1349, !dx.controlflow.hints !74

; <label>:1349                                    ; preds = %1346
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 0
  %1352 = fmul fast float %1344, %1351
  %1353 = fmul fast float %1345, %1351
  %1354 = fptoui float %1352 to i32
  %1355 = fptoui float %1353 to i32
  %1356 = fptoui float %1341 to i32
  %1357 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1354, i32 %1355, i32 %1356, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.ResRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.ResRet.f32 %1357, 2
  %1361 = extractvalue %dx.types.ResRet.f32 %1357, 3
  br label %1368

; <label>:1362                                    ; preds = %1346
  %1363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %1344, float %1345, float %1341, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.ResRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1363, 2
  %1367 = extractvalue %dx.types.ResRet.f32 %1363, 3
  br label %1368

; <label>:1368                                    ; preds = %1362, %1349
  %1369 = phi float [ %1358, %1349 ], [ %1364, %1362 ]
  %1370 = phi float [ %1359, %1349 ], [ %1365, %1362 ]
  %1371 = phi float [ %1360, %1349 ], [ %1366, %1362 ]
  %1372 = phi float [ %1361, %1349 ], [ %1367, %1362 ]
  %1373 = fcmp fast ogt float %1342, 0.000000e+00
  br i1 %1373, label %1374, label %1444, !dx.controlflow.hints !75

; <label>:1374                                    ; preds = %1368
  %1375 = and i32 %1316, 2
  %1376 = icmp eq i32 %1375, 0
  %1377 = fadd fast float %1341, 1.000000e+00
  %1378 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1379 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  br i1 %1376, label %1393, label %1380, !dx.controlflow.hints !76

; <label>:1380                                    ; preds = %1374
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 0
  %1383 = fmul fast float %1378, %1382
  %1384 = fmul fast float %1379, %1382
  %1385 = fptoui float %1383 to i32
  %1386 = fptoui float %1384 to i32
  %1387 = fptoui float %1377 to i32
  %1388 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1385, i32 %1386, i32 %1387, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.ResRet.f32 %1388, 3
  br label %1399

; <label>:1393                                    ; preds = %1374
  %1394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %1378, float %1379, float %1377, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.ResRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.ResRet.f32 %1394, 2
  %1398 = extractvalue %dx.types.ResRet.f32 %1394, 3
  br label %1399

; <label>:1399                                    ; preds = %1393, %1380
  %1400 = phi float [ %1389, %1380 ], [ %1395, %1393 ]
  %1401 = phi float [ %1390, %1380 ], [ %1396, %1393 ]
  %1402 = phi float [ %1391, %1380 ], [ %1397, %1393 ]
  %1403 = phi float [ %1392, %1380 ], [ %1398, %1393 ]
  %1404 = fsub fast float %1400, %1369
  %1405 = fsub fast float %1401, %1370
  %1406 = fsub fast float %1402, %1371
  %1407 = fsub fast float %1403, %1372
  %1408 = fmul fast float %1404, %1342
  %1409 = fmul fast float %1405, %1342
  %1410 = fmul fast float %1406, %1342
  %1411 = fmul fast float %1407, %1342
  %1412 = fadd fast float %1408, %1369
  %1413 = fadd fast float %1409, %1370
  %1414 = fadd fast float %1410, %1371
  %1415 = fadd fast float %1411, %1372
  br label %1444

; <label>:1416                                    ; preds = %1336
  %1417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %1344, float %1345, float %1341, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1418 = extractvalue %dx.types.ResRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.ResRet.f32 %1417, 1
  %1420 = extractvalue %dx.types.ResRet.f32 %1417, 2
  %1421 = extractvalue %dx.types.ResRet.f32 %1417, 3
  %1422 = fcmp fast ogt float %1342, 0.000000e+00
  br i1 %1422, label %1423, label %1444, !dx.controlflow.hints !77

; <label>:1423                                    ; preds = %1416
  %1424 = fadd fast float %1341, 1.000000e+00
  %1425 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1426 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %1425, float %1426, float %1424, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.ResRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.ResRet.f32 %1427, 2
  %1431 = extractvalue %dx.types.ResRet.f32 %1427, 3
  %1432 = fsub fast float %1428, %1418
  %1433 = fsub fast float %1429, %1419
  %1434 = fsub fast float %1430, %1420
  %1435 = fsub fast float %1431, %1421
  %1436 = fmul fast float %1432, %1342
  %1437 = fmul fast float %1433, %1342
  %1438 = fmul fast float %1434, %1342
  %1439 = fmul fast float %1435, %1342
  %1440 = fadd fast float %1436, %1418
  %1441 = fadd fast float %1437, %1419
  %1442 = fadd fast float %1438, %1420
  %1443 = fadd fast float %1439, %1421
  br label %1444

; <label>:1444                                    ; preds = %1423, %1416, %1399, %1368
  %1445 = phi float [ %1412, %1399 ], [ %1369, %1368 ], [ %1440, %1423 ], [ %1418, %1416 ]
  %1446 = phi float [ %1413, %1399 ], [ %1370, %1368 ], [ %1441, %1423 ], [ %1419, %1416 ]
  %1447 = phi float [ %1414, %1399 ], [ %1371, %1368 ], [ %1442, %1423 ], [ %1420, %1416 ]
  %1448 = phi float [ %1415, %1399 ], [ %1372, %1368 ], [ %1443, %1423 ], [ %1421, %1416 ]
  %1449 = fadd fast float %1445, -5.000000e-01
  %1450 = fadd fast float %1447, -5.000000e-01
  %1451 = fmul fast float %1449, 0xBFD5555560000000
  %1452 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1450, float %1451)  ; FMad(a,b,c)
  %1453 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1446, float 0.000000e+00)  ; FMad(a,b,c)
  %1454 = fadd fast float %1453, %1448
  %1455 = fmul fast float %1449, -7.500000e-01
  %1456 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1450, float %1455)  ; FMad(a,b,c)
  %1457 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1446, float 0.000000e+00)  ; FMad(a,b,c)
  %1458 = fadd fast float %1457, %1448
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 0
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.CBufRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1465 = extractvalue %dx.types.CBufRet.f32 %1461, 3
  %1466 = fsub fast float %1462, %1452
  %1467 = fsub fast float %1463, %1454
  %1468 = fsub fast float %1464, %1456
  %1469 = fsub fast float %1465, %1458
  %1470 = fmul fast float %1466, %1460
  %1471 = fmul fast float %1467, %1460
  %1472 = fmul fast float %1468, %1460
  %1473 = fmul fast float %1469, %1460
  %1474 = fadd fast float %1470, %1452
  %1475 = fadd fast float %1471, %1454
  %1476 = fadd fast float %1472, %1456
  %1477 = fadd fast float %1473, %1458
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 536870911
  %1481 = uitofp i32 %1480 to float
  %1482 = fmul fast float %1481, %1317
  %1483 = fmul fast float %1481, %1318
  %1484 = fptoui float %1482 to i32
  %1485 = fptoui float %1483 to i32
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 31
  %1489 = lshr i32 %1484, %1488
  %1490 = lshr i32 %1485, %1488
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 31
  %1494 = shl i32 1, %1493
  %1495 = call i32 @dx.op.binary.i32(i32 40, i32 %1494, i32 4)  ; UMin(a,b)
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = extractvalue %dx.types.ResRet.i32 %1496, 1
  %1499 = icmp eq i32 %1495, 0
  br i1 %1499, label %1541, label %1500

; <label>:1500                                    ; preds = %1444
  br label %1501

; <label>:1501                                    ; preds = %1529, %1500
  %1502 = phi i32 [ %1532, %1529 ], [ 0, %1500 ]
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = lshr i32 %1504, 16
  %1506 = and i32 %1505, 31
  %1507 = shl i32 %1490, %1506
  %1508 = add i32 %1507, %1489
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 31
  %1512 = shl i32 %1508, %1511
  %1513 = add i32 %1512, %1502
  %1514 = shl i32 %1513, 2
  %1515 = add i32 %1514, 32
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = icmp slt i32 %1517, 0
  %1519 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1502
  %1520 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1502
  %1521 = bitcast float* %1519 to i32*
  %1522 = bitcast float* %1520 to i32*
  br i1 %1518, label %1523, label %1529, !dx.controlflow.hints !78

; <label>:1523                                    ; preds = %1501
  %1524 = and i32 %1517, 1073741823
  %1525 = add nuw nsw i32 %1524, 20
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = extractvalue %dx.types.ResRet.i32 %1526, 1
  br label %1529

; <label>:1529                                    ; preds = %1523, %1501
  %1530 = phi i32 [ %1527, %1523 ], [ %1497, %1501 ]
  %1531 = phi i32 [ %1528, %1523 ], [ %1498, %1501 ]
  store i32 %1530, i32* %1521, align 4
  store i32 %1531, i32* %1522, align 4
  %1532 = add nuw i32 %1502, 1
  %1533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.i32 %1533, 2
  %1535 = icmp eq i32 %1534, 0
  %1536 = icmp ugt i32 %1517, -1073741825
  %1537 = and i1 %1536, %1535
  %1538 = icmp ult i32 %1532, %1495
  %1539 = and i1 %1537, %1538
  br i1 %1539, label %1501, label %1540, !dx.controlflow.hints !79

; <label>:1540                                    ; preds = %1529
  br label %1541

; <label>:1541                                    ; preds = %1540, %1444
  %1542 = phi i32 [ 0, %1444 ], [ %1532, %1540 ]
  %1543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1543, 2
  %1545 = fptoui float %1544 to i32
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1598, label %1547

; <label>:1547                                    ; preds = %1541
  br label %1548

; <label>:1548                                    ; preds = %1593, %1547
  %1549 = phi i32 [ %1594, %1593 ], [ %1542, %1547 ]
  %1550 = phi i32 [ %1595, %1593 ], [ 0, %1547 ]
  %1551 = lshr i32 %1550, 2
  %1552 = and i32 %1550, 3
  %1553 = add nuw nsw i32 %1551, 83
  %1554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 %1553)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.i32 %1554, 0
  %1556 = extractvalue %dx.types.CBufRet.i32 %1554, 1
  %1557 = extractvalue %dx.types.CBufRet.i32 %1554, 2
  %1558 = extractvalue %dx.types.CBufRet.i32 %1554, 3
  %1559 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %1555, i32* %1559, align 4
  %1560 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %1556, i32* %1560, align 4
  %1561 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %1557, i32* %1561, align 4
  %1562 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %1558, i32* %1562, align 4
  %1563 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 %1552
  %1564 = load i32, i32* %1563, align 4, !tbaa !50
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = lshr i32 %1566, 16
  %1568 = and i32 %1567, 31
  %1569 = shl i32 %1490, %1568
  %1570 = add i32 %1569, %1489
  %1571 = shl i32 %1570, 2
  %1572 = add i32 %1571, %1564
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1593, label %1576, !dx.controlflow.hints !80

; <label>:1576                                    ; preds = %1548
  %1577 = icmp slt i32 %1574, 0
  %1578 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1549
  %1579 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1549
  %1580 = bitcast float* %1578 to i32*
  %1581 = bitcast float* %1579 to i32*
  br i1 %1577, label %1582, label %1589, !dx.controlflow.hints !81

; <label>:1582                                    ; preds = %1576
  %1583 = and i32 %1574, 1073741823
  %1584 = add i32 %1564, 20
  %1585 = add i32 %1584, %1583
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = extractvalue %dx.types.ResRet.i32 %1586, 1
  br label %1589

; <label>:1589                                    ; preds = %1582, %1576
  %1590 = phi i32 [ %1587, %1582 ], [ %1497, %1576 ]
  %1591 = phi i32 [ %1588, %1582 ], [ %1498, %1576 ]
  store i32 %1590, i32* %1580, align 4
  store i32 %1591, i32* %1581, align 4
  %1592 = add i32 %1549, 1
  br label %1593

; <label>:1593                                    ; preds = %1589, %1548
  %1594 = phi i32 [ %1549, %1548 ], [ %1592, %1589 ]
  %1595 = add nuw i32 %1550, 1
  %1596 = icmp eq i32 %1595, %1545
  br i1 %1596, label %1597, label %1548

; <label>:1597                                    ; preds = %1593
  br label %1598

; <label>:1598                                    ; preds = %1597, %1541
  %1599 = phi i32 [ %1542, %1541 ], [ %1594, %1597 ]
  %1600 = icmp eq i32 %1599, 1
  %1601 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 0
  %1602 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 0
  br i1 %1600, label %1603, label %1606, !dx.controlflow.hints !82

; <label>:1603                                    ; preds = %1598
  %1604 = load float, float* %1601, align 4
  %1605 = load float, float* %1602, align 4
  br label %1633

; <label>:1606                                    ; preds = %1598
  %1607 = load float, float* %1601, align 4
  %1608 = load float, float* %1602, align 4
  %1609 = fdiv fast float 1.000000e+00, %1608
  %1610 = fsub fast float %1607, %1609
  %1611 = icmp ugt i32 %1599, 1
  br i1 %1611, label %1612, label %1628

; <label>:1612                                    ; preds = %1606
  br label %1613

; <label>:1613                                    ; preds = %1613, %1612
  %1614 = phi float [ %1623, %1613 ], [ %1610, %1612 ]
  %1615 = phi float [ %1624, %1613 ], [ %1607, %1612 ]
  %1616 = phi i32 [ %1625, %1613 ], [ 1, %1612 ]
  %1617 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1616
  %1618 = load float, float* %1617, align 4
  %1619 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1616
  %1620 = load float, float* %1619, align 4
  %1621 = fdiv fast float 1.000000e+00, %1620
  %1622 = fsub fast float %1618, %1621
  %1623 = call float @dx.op.binary.f32(i32 36, float %1614, float %1622)  ; FMin(a,b)
  %1624 = call float @dx.op.binary.f32(i32 35, float %1615, float %1618)  ; FMax(a,b)
  %1625 = add nuw i32 %1616, 1
  %1626 = icmp eq i32 %1625, %1599
  br i1 %1626, label %1627, label %1613

; <label>:1627                                    ; preds = %1613
  br label %1628

; <label>:1628                                    ; preds = %1627, %1606
  %1629 = phi float [ %1610, %1606 ], [ %1623, %1627 ]
  %1630 = phi float [ %1607, %1606 ], [ %1624, %1627 ]
  %1631 = fsub fast float %1630, %1629
  %1632 = fdiv fast float 1.000000e+00, %1631
  br label %1633

; <label>:1633                                    ; preds = %1628, %1603
  %1634 = phi float [ %1604, %1603 ], [ %1630, %1628 ]
  %1635 = phi float [ %1605, %1603 ], [ %1632, %1628 ]
  %1636 = fadd fast float %1064, %1634
  %1637 = fmul fast float %1636, %1635
  %1638 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1639 = fmul fast float %1638, 2.000000e+00
  %1640 = fsub fast float 1.000000e+00, %1639
  %1641 = fmul fast float %1474, %1474
  %1642 = fsub fast float %1475, %1641
  %1643 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1642)  ; FMax(a,b)
  %1644 = fdiv fast float 1.000000e+00, %1643
  %1645 = fmul fast float %1475, %1474
  %1646 = fsub fast float %1476, %1645
  %1647 = fsub fast float %1640, %1474
  %1648 = fmul fast float %1640, %1640
  %1649 = fsub fast float %1648, %1475
  %1650 = fmul fast float %1644, %1646
  %1651 = fmul fast float %1650, %1647
  %1652 = fsub fast float %1649, %1651
  %1653 = fmul fast float %1475, %1475
  %1654 = fsub fast float %1477, %1653
  %1655 = fmul fast float %1646, %1646
  %1656 = fmul fast float %1655, %1644
  %1657 = fsub fast float %1654, %1656
  %1658 = fdiv fast float %1652, %1657
  %1659 = fmul fast float %1658, %1646
  %1660 = fsub fast float %1647, %1659
  %1661 = fmul fast float %1660, %1644
  %1662 = fmul fast float %1661, %1474
  %1663 = fsub fast float 1.000000e+00, %1662
  %1664 = fmul fast float %1658, %1475
  %1665 = fsub fast float %1663, %1664
  %1666 = fmul fast float %1661, %1661
  %1667 = fmul fast float %1658, 4.000000e+00
  %1668 = fmul fast float %1667, %1665
  %1669 = fsub fast float %1666, %1668
  %1670 = call float @dx.op.unary.f32(i32 24, float %1669)  ; Sqrt(value)
  %1671 = fcmp fast oge float %1661, 0.000000e+00
  %1672 = fsub fast float -0.000000e+00, %1670
  %1673 = select i1 %1671, float %1672, float %1670
  %1674 = fsub fast float %1673, %1661
  %1675 = fdiv fast float %1674, %1658
  %1676 = fdiv fast float %1665, %1674
  %1677 = fmul fast float %1675, 5.000000e-01
  %1678 = fmul fast float %1676, 2.000000e+00
  %1679 = select i1 %1671, float %1677, float %1678
  %1680 = select i1 %1671, float %1678, float %1677
  %1681 = call float @dx.op.binary.f32(i32 35, float %1679, float %1680)  ; FMax(a,b)
  %1682 = call float @dx.op.binary.f32(i32 36, float %1679, float %1680)  ; FMin(a,b)
  %1683 = fcmp fast ogt float %1640, %1681
  %1684 = fsub fast float %1640, %1682
  %1685 = fsub fast float %1640, %1681
  %1686 = fsub fast float %1681, %1682
  %1687 = select i1 %1683, float %1685, float %1686
  %1688 = fmul float %1684, %1687
  %1689 = select i1 %1683, float %1682, float %1640
  %1690 = fcmp fast ogt float %1640, %1682
  %1691 = fmul fast float %1689, %1681
  %1692 = fadd fast float %1689, %1681
  %1693 = fmul fast float %1692, %1474
  %1694 = fadd fast float %1691, %1475
  %1695 = fsub fast float %1694, %1693
  %1696 = fdiv fast float %1695, %1688
  %1697 = select i1 %1690, float %1696, float 0.000000e+00
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = select i1 %1683, float %1698, float %1697
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1701 = extractvalue %dx.types.CBufRet.f32 %1459, 3
  %1702 = fmul fast float %1701, %1700
  %1703 = fsub fast float 1.000000e+00, %1702
  br label %4648

; <label>:1704                                    ; preds = %1032
  %1705 = icmp eq i32 %324, 11
  br i1 %1705, label %4648, label %1706, !dx.controlflow.hints !83

; <label>:1706                                    ; preds = %1704
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.CBufRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.CBufRet.f32 %1707, 3
  %1711 = fmul fast float %1710, %291
  %1712 = fmul fast float %1710, %295
  %1713 = fadd fast float %1711, %1708
  %1714 = fadd fast float %1712, %1709
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.CBufRet.f32 %1715, 3
  %1719 = fmul fast float %1718, %291
  %1720 = fmul fast float %1718, %295
  %1721 = fadd fast float %1719, %1716
  %1722 = fadd fast float %1720, %1717
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 1
  %1725 = fsub fast float %1724, %299
  %1726 = extractvalue %dx.types.CBufRet.f32 %1723, 2
  %1727 = fmul fast float %1725, %1726
  %1728 = fsub fast float 1.000000e+00, %1727
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  br i1 %105, label %1790, label %1730, !dx.controlflow.hints !84

; <label>:1730                                    ; preds = %1706
  %1731 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1732, 2
  %1734 = fadd fast float %1733, %1731
  %1735 = fcmp fast ogt float %1734, 0.000000e+00
  br i1 %1735, label %1736, label %1760, !dx.controlflow.hints !85

; <label>:1736                                    ; preds = %1730
  %1737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1738 = extractvalue %dx.types.CBufRet.f32 %1737, 0
  %1739 = extractvalue %dx.types.CBufRet.f32 %1737, 1
  %1740 = fsub fast float %1721, %1738
  %1741 = fsub fast float %1722, %1739
  %1742 = fcmp fast olt float %1740, 0.000000e+00
  %1743 = fcmp fast olt float %1741, 0.000000e+00
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1747 = extractvalue %dx.types.CBufRet.f32 %1744, 2
  %1748 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1749 = select i1 %1742, float %1745, float %1747
  %1750 = select i1 %1743, float %1746, float %1748
  %1751 = fmul fast float %1749, %1740
  %1752 = fmul fast float %1750, %1741
  %1753 = call float @dx.op.unary.f32(i32 6, float %1751)  ; FAbs(value)
  %1754 = call float @dx.op.unary.f32(i32 6, float %1752)  ; FAbs(value)
  %1755 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %1756 = call float @dx.op.binary.f32(i32 35, float %1753, float %1754)  ; FMax(a,b)
  %1757 = fsub fast float %1755, %1756
  %1758 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1759 = fmul fast float %1758, %1729
  br label %1760

; <label>:1760                                    ; preds = %1736, %1730
  %1761 = phi float [ %1759, %1736 ], [ 0.000000e+00, %1730 ]
  %1762 = extractvalue %dx.types.CBufRet.f32 %1707, 2
  %1763 = extractvalue %dx.types.CBufRet.f32 %1732, 1
  %1764 = fadd fast float %1763, %1762
  %1765 = fcmp fast ogt float %1764, 0.000000e+00
  br i1 %1765, label %1766, label %1790, !dx.controlflow.hints !86

; <label>:1766                                    ; preds = %1760
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1767, 0
  %1769 = extractvalue %dx.types.CBufRet.f32 %1767, 1
  %1770 = fsub fast float %1713, %1768
  %1771 = fsub fast float %1714, %1769
  %1772 = fcmp fast olt float %1770, 0.000000e+00
  %1773 = fcmp fast olt float %1771, 0.000000e+00
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 0
  %1776 = extractvalue %dx.types.CBufRet.f32 %1774, 1
  %1777 = extractvalue %dx.types.CBufRet.f32 %1774, 2
  %1778 = extractvalue %dx.types.CBufRet.f32 %1774, 3
  %1779 = select i1 %1772, float %1775, float %1777
  %1780 = select i1 %1773, float %1776, float %1778
  %1781 = fmul fast float %1779, %1770
  %1782 = fmul fast float %1780, %1771
  %1783 = call float @dx.op.unary.f32(i32 6, float %1781)  ; FAbs(value)
  %1784 = call float @dx.op.unary.f32(i32 6, float %1782)  ; FAbs(value)
  %1785 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %1786 = call float @dx.op.binary.f32(i32 35, float %1783, float %1784)  ; FMax(a,b)
  %1787 = fsub fast float %1785, %1786
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1789 = fmul fast float %1788, %1729
  br label %1790

; <label>:1790                                    ; preds = %1766, %1760, %1706
  %1791 = phi float [ 0.000000e+00, %1706 ], [ %1789, %1766 ], [ 0.000000e+00, %1760 ]
  %1792 = phi float [ 0.000000e+00, %1706 ], [ %1761, %1766 ], [ %1761, %1760 ]
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 0
  %1795 = extractvalue %dx.types.CBufRet.f32 %1793, 1
  %1796 = fmul fast float %1794, %112
  %1797 = fadd fast float %1796, %1795
  %1798 = call float @dx.op.unary.f32(i32 7, float %1797)  ; Saturate(value)
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.CBufRet.f32 %1799, 1
  %1802 = fsub fast float %291, %1800
  %1803 = fsub fast float %295, %1801
  %1804 = fcmp fast olt float %1802, 0.000000e+00
  %1805 = fcmp fast olt float %1803, 0.000000e+00
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 0
  %1808 = extractvalue %dx.types.CBufRet.f32 %1806, 1
  %1809 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %1810 = extractvalue %dx.types.CBufRet.f32 %1806, 3
  %1811 = select i1 %1804, float %1807, float %1809
  %1812 = select i1 %1805, float %1808, float %1810
  %1813 = fmul fast float %1811, %1802
  %1814 = fmul fast float %1812, %1803
  %1815 = call float @dx.op.unary.f32(i32 6, float %1813)  ; FAbs(value)
  %1816 = call float @dx.op.unary.f32(i32 6, float %1814)  ; FAbs(value)
  %1817 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %1818 = call float @dx.op.binary.f32(i32 35, float %1815, float %1816)  ; FMax(a,b)
  %1819 = fsub fast float %1817, %1818
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  %1821 = call float @dx.op.binary.f32(i32 36, float %1820, float %1798)  ; FMin(a,b)
  %1822 = fmul fast float %1821, %1729
  %1823 = fsub fast float %1791, %1822
  %1824 = fsub fast float %1792, %1791
  %1825 = fsub fast float %1824, %1822
  %1826 = call float @dx.op.binary.f32(i32 35, float %1791, float %1792)  ; FMax(a,b)
  %1827 = call float @dx.op.binary.f32(i32 35, float %1822, float %1826)  ; FMax(a,b)
  %1828 = fcmp fast olt float %1827, 1.000000e+00
  %1829 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %1830 = fcmp fast une float %1829, 0.000000e+00
  %1831 = and i1 %1828, %1830
  br i1 %1831, label %1832, label %2499, !dx.controlflow.hints !87

; <label>:1832                                    ; preds = %1790
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %1837 = extractvalue %dx.types.CBufRet.f32 %1833, 3
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.CBufRet.f32 %1838, 1
  %1841 = extractvalue %dx.types.CBufRet.f32 %1838, 2
  %1842 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.CBufRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1847 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1848 = fmul fast float %1834, %209
  %1849 = call float @dx.op.tertiary.f32(i32 46, float %210, float %1835, float %1848)  ; FMad(a,b,c)
  %1850 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1836, float %1849)  ; FMad(a,b,c)
  %1851 = fadd fast float %1850, %1837
  %1852 = fmul fast float %1839, %209
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %210, float %1840, float %1852)  ; FMad(a,b,c)
  %1854 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1841, float %1853)  ; FMad(a,b,c)
  %1855 = fadd fast float %1854, %1842
  %1856 = fmul fast float %1844, %209
  %1857 = call float @dx.op.tertiary.f32(i32 46, float %210, float %1845, float %1856)  ; FMad(a,b,c)
  %1858 = call float @dx.op.tertiary.f32(i32 46, float %211, float %1846, float %1857)  ; FMad(a,b,c)
  %1859 = fadd fast float %1858, %1847
  %1860 = fcmp fast oge float %1851, 1.000000e+00
  %1861 = fcmp fast oge float %1855, 1.000000e+00
  %1862 = or i1 %1860, %1861
  %1863 = fcmp fast olt float %1851, 0.000000e+00
  %1864 = fcmp fast olt float %1855, 0.000000e+00
  %1865 = or i1 %1863, %1864
  %1866 = or i1 %1862, %1865
  br i1 %1866, label %2499, label %1867, !dx.controlflow.hints !67

; <label>:1867                                    ; preds = %1832
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.CBufRet.f32 %1868, 1
  %1871 = extractvalue %dx.types.CBufRet.f32 %1868, 2
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 1
  %1874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.i32 %1874, 2
  %1876 = uitofp i32 %1875 to float
  %1877 = extractvalue %dx.types.CBufRet.i32 %1874, 3
  %1878 = uitofp i32 %1877 to float
  %1879 = extractvalue %dx.types.CBufRet.f32 %1868, 3
  %1880 = fmul fast float %1879, 2.000000e+00
  %1881 = fsub fast float %1851, %1869
  %1882 = fsub fast float %1855, %1870
  %1883 = fmul fast float %1880, %1881
  %1884 = fmul fast float %1880, %1882
  %1885 = fdiv fast float 1.000000e+00, %261
  %1886 = fmul fast float %1884, %1885
  %1887 = call float @dx.op.unary.f32(i32 6, float %1886)  ; FAbs(value)
  %1888 = fmul fast float %1871, %211
  %1889 = fmul fast float %1888, %1880
  %1890 = call float @dx.op.unary.f32(i32 6, float %1889)  ; FAbs(value)
  %1891 = call float @dx.op.unary.f32(i32 6, float %1883)  ; FAbs(value)
  %1892 = call float @dx.op.binary.f32(i32 35, float %1890, float %1887)  ; FMax(a,b)
  %1893 = call float @dx.op.binary.f32(i32 35, float %1891, float %1892)  ; FMax(a,b)
  %1894 = fmul fast float %1893, 2.000000e+00
  %1895 = call float @dx.op.unary.f32(i32 23, float %1894)  ; Log(value)
  %1896 = call float @dx.op.binary.f32(i32 35, float %1895, float %1876)  ; FMax(a,b)
  %1897 = call float @dx.op.unary.f32(i32 22, float %1896)  ; Frc(value)
  %1898 = fadd fast float %1897, 0xBFEA666660000000
  %1899 = fmul fast float %1898, 8.000000e+00
  %1900 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1901 = call float @dx.op.unary.f32(i32 27, float %1896)  ; Round_ni(value)
  %1902 = fadd fast float %1901, %1900
  %1903 = call float @dx.op.binary.f32(i32 36, float %1902, float %1878)  ; FMin(a,b)
  %1904 = call float @dx.op.unary.f32(i32 27, float %1903)  ; Round_ni(value)
  %1905 = fsub fast float -0.000000e+00, %1904
  %1906 = call float @dx.op.unary.f32(i32 21, float %1905)  ; Exp(value)
  %1907 = fmul fast float %1906, %1880
  %1908 = fmul fast float %1907, %1851
  %1909 = fmul fast float %1907, %1855
  %1910 = fmul fast float %1908, 5.000000e-01
  %1911 = fmul fast float %1909, 5.000000e-01
  %1912 = fadd fast float %1910, 5.000000e-01
  %1913 = fadd fast float %1911, 5.000000e-01
  %1914 = fmul fast float %1908, 2.500000e-01
  %1915 = fmul fast float %1909, 2.500000e-01
  %1916 = fadd fast float %1914, 5.000000e-01
  %1917 = fadd fast float %1915, 5.000000e-01
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 536870911
  %1921 = lshr i32 %1920, 9
  %1922 = uitofp i32 %1921 to float
  %1923 = fmul fast float %1922, %1851
  %1924 = fmul fast float %1922, %1855
  %1925 = call float @dx.op.unary.f32(i32 22, float %1923)  ; Frc(value)
  %1926 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1927 = call float @dx.op.unary.f32(i32 22, float %1900)  ; Frc(value)
  %1928 = fcmp fast une float %1927, 0.000000e+00
  br i1 %1928, label %1929, label %2027, !dx.controlflow.hints !68

; <label>:1929                                    ; preds = %1867
  %1930 = call float @dx.op.unary.f32(i32 21, float %1901)  ; Exp(value)
  %1931 = fmul fast float %1930, 1.953125e-03
  %1932 = fcmp fast olt float %1925, %1931
  %1933 = fcmp fast olt float %1926, %1931
  %1934 = or i1 %1932, %1933
  %1935 = fsub fast float 1.000000e+00, %1931
  %1936 = fcmp fast ogt float %1925, %1935
  %1937 = fcmp fast ogt float %1926, %1935
  %1938 = or i1 %1936, %1937
  %1939 = or i1 %1934, %1938
  br i1 %1939, label %1940, label %2106, !dx.controlflow.hints !69

; <label>:1940                                    ; preds = %1929
  %1941 = fmul fast float %1873, 5.000000e-01
  %1942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.i32 %1942, 0
  %1944 = fmul fast float %1855, 3.530000e+02
  %1945 = uitofp i32 %1920 to float
  %1946 = fmul fast float %1944, %1945
  %1947 = fmul fast float %1851, 6.130000e+02
  %1948 = fadd fast float %1946, %1947
  %1949 = fptoui float %1948 to i32
  %1950 = add i32 %1943, %1949
  %1951 = mul i32 %1950, -63
  %1952 = lshr i32 %1951, 17
  %1953 = xor i32 %1952, %1951
  %1954 = mul i32 %1953, -511
  %1955 = mul i32 %1953, -8176
  %1956 = xor i32 %1954, %1955
  %1957 = mul i32 %1956, -7
  %1958 = mul i32 %1956, -7168
  %1959 = xor i32 %1957, %1958
  %1960 = lshr i32 %1959, 15
  %1961 = xor i32 %1960, %1957
  %1962 = and i32 %1961, 15
  %1963 = mul i32 %1962, 2
  %1964 = add i32 0, %1963
  %1965 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1964
  %1966 = load float, float* %1965, align 4
  %1967 = mul i32 %1962, 2
  %1968 = add i32 1, %1967
  %1969 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1968
  %1970 = load float, float* %1969, align 4
  %1971 = fmul fast float %1855, 2.770000e+02
  %1972 = fmul fast float %1971, %1945
  %1973 = fmul fast float %1851, 5.990000e+02
  %1974 = fadd fast float %1972, %1973
  %1975 = fptoui float %1974 to i32
  %1976 = mul i32 %1975, -63
  %1977 = lshr i32 %1976, 17
  %1978 = xor i32 %1977, %1976
  %1979 = mul i32 %1978, -511
  %1980 = mul i32 %1978, -8176
  %1981 = xor i32 %1979, %1980
  %1982 = mul i32 %1981, -7
  %1983 = mul i32 %1981, -7168
  %1984 = xor i32 %1982, %1983
  %1985 = lshr i32 %1984, 15
  %1986 = xor i32 %1985, %1982
  %1987 = and i32 %1986, 63
  %1988 = mul i32 %1987, 2
  %1989 = add i32 0, %1988
  %1990 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1989
  %1991 = load float, float* %1990, align 4
  %1992 = mul i32 %1987, 2
  %1993 = add i32 1, %1992
  %1994 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1993
  %1995 = load float, float* %1994, align 4
  %1996 = call float @dx.op.dot2.f32(i32 54, float %1966, float %1970, float %1991, float %1995)  ; Dot2(ax,ay,bx,by)
  %1997 = fsub fast float -0.000000e+00, %1991
  %1998 = call float @dx.op.dot2.f32(i32 54, float %1966, float %1970, float %1997, float %1995)  ; Dot2(ax,ay,bx,by)
  %1999 = fmul fast float %1996, %1941
  %2000 = fmul fast float %1998, %1941
  %2001 = fdiv fast float 2.000000e+00, %1907
  %2002 = fmul fast float %1930, 9.765625e-04
  %2003 = fcmp fast olt float %1925, %2002
  %2004 = fcmp fast olt float %1926, %2002
  %2005 = or i1 %2003, %2004
  %2006 = fsub fast float 1.000000e+00, %2002
  %2007 = fcmp fast ogt float %1925, %2006
  %2008 = fcmp fast ogt float %1926, %2006
  %2009 = or i1 %2007, %2008
  %2010 = or i1 %2005, %2009
  %2011 = fmul fast float %1999, 2.000000e+00
  br i1 %2010, label %2012, label %2016, !dx.controlflow.hints !70

; <label>:2012                                    ; preds = %1940
  %2013 = fmul fast float %2000, 2.000000e+00
  %2014 = fadd fast float %2011, %1912
  %2015 = fadd fast float %2013, %1913
  br label %2016

; <label>:2016                                    ; preds = %2012, %1940
  %2017 = phi float [ %2014, %2012 ], [ %1912, %1940 ]
  %2018 = phi float [ %2015, %2012 ], [ %1913, %1940 ]
  %2019 = phi i32 [ 3, %2012 ], [ 2, %1940 ]
  %2020 = fadd fast float %1999, %1916
  %2021 = fadd fast float %2000, %1917
  %2022 = fmul fast float %2011, %2001
  %2023 = fmul fast float %2001, 2.000000e+00
  %2024 = fmul fast float %2023, %2000
  %2025 = fadd fast float %2022, %1851
  %2026 = fadd fast float %2024, %1855
  br label %2106

; <label>:2027                                    ; preds = %1867
  %2028 = call float @dx.op.unary.f32(i32 21, float %1904)  ; Exp(value)
  %2029 = fmul fast float %2028, 9.765625e-04
  %2030 = fcmp fast olt float %1925, %2029
  %2031 = fcmp fast olt float %1926, %2029
  %2032 = or i1 %2030, %2031
  %2033 = fsub fast float 1.000000e+00, %2029
  %2034 = fcmp fast ogt float %1925, %2033
  %2035 = fcmp fast ogt float %1926, %2033
  %2036 = or i1 %2034, %2035
  %2037 = or i1 %2032, %2036
  br i1 %2037, label %2038, label %2106, !dx.controlflow.hints !71

; <label>:2038                                    ; preds = %2027
  %2039 = fmul fast float %1873, 5.000000e-01
  %2040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.i32 %2040, 0
  %2042 = fmul fast float %1855, 3.530000e+02
  %2043 = uitofp i32 %1920 to float
  %2044 = fmul fast float %2042, %2043
  %2045 = fmul fast float %1851, 6.130000e+02
  %2046 = fadd fast float %2044, %2045
  %2047 = fptoui float %2046 to i32
  %2048 = add i32 %2041, %2047
  %2049 = mul i32 %2048, -63
  %2050 = lshr i32 %2049, 17
  %2051 = xor i32 %2050, %2049
  %2052 = mul i32 %2051, -511
  %2053 = mul i32 %2051, -8176
  %2054 = xor i32 %2052, %2053
  %2055 = mul i32 %2054, -7
  %2056 = mul i32 %2054, -7168
  %2057 = xor i32 %2055, %2056
  %2058 = lshr i32 %2057, 15
  %2059 = xor i32 %2058, %2055
  %2060 = and i32 %2059, 15
  %2061 = mul i32 %2060, 2
  %2062 = add i32 0, %2061
  %2063 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2062
  %2064 = load float, float* %2063, align 4
  %2065 = mul i32 %2060, 2
  %2066 = add i32 1, %2065
  %2067 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2066
  %2068 = load float, float* %2067, align 4
  %2069 = fmul fast float %1855, 2.770000e+02
  %2070 = fmul fast float %2069, %2043
  %2071 = fmul fast float %1851, 5.990000e+02
  %2072 = fadd fast float %2070, %2071
  %2073 = fptoui float %2072 to i32
  %2074 = mul i32 %2073, -63
  %2075 = lshr i32 %2074, 17
  %2076 = xor i32 %2075, %2074
  %2077 = mul i32 %2076, -511
  %2078 = mul i32 %2076, -8176
  %2079 = xor i32 %2077, %2078
  %2080 = mul i32 %2079, -7
  %2081 = mul i32 %2079, -7168
  %2082 = xor i32 %2080, %2081
  %2083 = lshr i32 %2082, 15
  %2084 = xor i32 %2083, %2080
  %2085 = and i32 %2084, 63
  %2086 = mul i32 %2085, 2
  %2087 = add i32 0, %2086
  %2088 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2087
  %2089 = load float, float* %2088, align 4
  %2090 = mul i32 %2085, 2
  %2091 = add i32 1, %2090
  %2092 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2091
  %2093 = load float, float* %2092, align 4
  %2094 = call float @dx.op.dot2.f32(i32 54, float %2064, float %2068, float %2089, float %2093)  ; Dot2(ax,ay,bx,by)
  %2095 = fsub fast float -0.000000e+00, %2089
  %2096 = call float @dx.op.dot2.f32(i32 54, float %2064, float %2068, float %2095, float %2093)  ; Dot2(ax,ay,bx,by)
  %2097 = fmul fast float %2094, %2039
  %2098 = fmul fast float %2096, %2039
  %2099 = fadd fast float %2097, %1912
  %2100 = fadd fast float %2098, %1913
  %2101 = fdiv fast float 2.000000e+00, %1907
  %2102 = fmul fast float %2101, %2097
  %2103 = fmul fast float %2098, %2101
  %2104 = fadd fast float %2102, %1851
  %2105 = fadd fast float %2103, %1855
  br label %2106

; <label>:2106                                    ; preds = %2038, %2027, %2016, %1929
  %2107 = phi float [ %2020, %2016 ], [ %1916, %1929 ], [ %1916, %2038 ], [ %1916, %2027 ]
  %2108 = phi float [ %2021, %2016 ], [ %1917, %1929 ], [ %1917, %2038 ], [ %1917, %2027 ]
  %2109 = phi float [ %2017, %2016 ], [ %1912, %1929 ], [ %2099, %2038 ], [ %1912, %2027 ]
  %2110 = phi float [ %2018, %2016 ], [ %1913, %1929 ], [ %2100, %2038 ], [ %1913, %2027 ]
  %2111 = phi i32 [ %2019, %2016 ], [ 0, %1929 ], [ 1, %2038 ], [ 0, %2027 ]
  %2112 = phi float [ %2025, %2016 ], [ %1851, %1929 ], [ %2104, %2038 ], [ %1851, %2027 ]
  %2113 = phi float [ %2026, %2016 ], [ %1855, %1929 ], [ %2105, %2038 ], [ %1855, %2027 ]
  %2114 = fsub fast float %1878, %1876
  %2115 = fptoui float %2114 to i32
  %2116 = add i32 %2115, 320
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %2116)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2120 = fcmp fast une float %1903, %1878
  %2121 = fsub fast float %2112, %2118
  %2122 = fsub fast float %2113, %2119
  %2123 = call float @dx.op.unary.f32(i32 6, float %2121)  ; FAbs(value)
  %2124 = call float @dx.op.unary.f32(i32 6, float %2122)  ; FAbs(value)
  %2125 = fmul fast float %2123, %1907
  %2126 = fmul fast float %2124, %1907
  %2127 = fcmp fast olt float %2125, 1.000000e+00
  %2128 = fcmp fast olt float %2126, 1.000000e+00
  %2129 = and i1 %2127, %2128
  %2130 = or i1 %2120, %2129
  br i1 %2130, label %2131, label %2499, !dx.controlflow.hints !72

; <label>:2131                                    ; preds = %2106
  %2132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.i32 %2132, 2
  %2134 = sitofp i32 %2133 to float
  %2135 = fsub fast float %1903, %2134
  %2136 = call float @dx.op.unary.f32(i32 27, float %2135)  ; Round_ni(value)
  %2137 = call float @dx.op.unary.f32(i32 22, float %1903)  ; Frc(value)
  %2138 = icmp eq i32 %2111, 0
  %2139 = call float @dx.op.unary.f32(i32 22, float %2109)  ; Frc(value)
  %2140 = call float @dx.op.unary.f32(i32 22, float %2110)  ; Frc(value)
  br i1 %2138, label %2211, label %2141, !dx.controlflow.hints !73

; <label>:2141                                    ; preds = %2131
  %2142 = and i32 %2111, 1
  %2143 = icmp eq i32 %2142, 0
  br i1 %2143, label %2157, label %2144, !dx.controlflow.hints !74

; <label>:2144                                    ; preds = %2141
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2147 = fmul fast float %2139, %2146
  %2148 = fmul fast float %2140, %2146
  %2149 = fptoui float %2147 to i32
  %2150 = fptoui float %2148 to i32
  %2151 = fptoui float %2136 to i32
  %2152 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %2149, i32 %2150, i32 %2151, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2153 = extractvalue %dx.types.ResRet.f32 %2152, 0
  %2154 = extractvalue %dx.types.ResRet.f32 %2152, 1
  %2155 = extractvalue %dx.types.ResRet.f32 %2152, 2
  %2156 = extractvalue %dx.types.ResRet.f32 %2152, 3
  br label %2163

; <label>:2157                                    ; preds = %2141
  %2158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %2139, float %2140, float %2136, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 0
  %2160 = extractvalue %dx.types.ResRet.f32 %2158, 1
  %2161 = extractvalue %dx.types.ResRet.f32 %2158, 2
  %2162 = extractvalue %dx.types.ResRet.f32 %2158, 3
  br label %2163

; <label>:2163                                    ; preds = %2157, %2144
  %2164 = phi float [ %2153, %2144 ], [ %2159, %2157 ]
  %2165 = phi float [ %2154, %2144 ], [ %2160, %2157 ]
  %2166 = phi float [ %2155, %2144 ], [ %2161, %2157 ]
  %2167 = phi float [ %2156, %2144 ], [ %2162, %2157 ]
  %2168 = fcmp fast ogt float %2137, 0.000000e+00
  br i1 %2168, label %2169, label %2239, !dx.controlflow.hints !75

; <label>:2169                                    ; preds = %2163
  %2170 = and i32 %2111, 2
  %2171 = icmp eq i32 %2170, 0
  %2172 = fadd fast float %2136, 1.000000e+00
  %2173 = call float @dx.op.unary.f32(i32 22, float %2107)  ; Frc(value)
  %2174 = call float @dx.op.unary.f32(i32 22, float %2108)  ; Frc(value)
  br i1 %2171, label %2188, label %2175, !dx.controlflow.hints !76

; <label>:2175                                    ; preds = %2169
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2178 = fmul fast float %2173, %2177
  %2179 = fmul fast float %2174, %2177
  %2180 = fptoui float %2178 to i32
  %2181 = fptoui float %2179 to i32
  %2182 = fptoui float %2172 to i32
  %2183 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %2180, i32 %2181, i32 %2182, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2184 = extractvalue %dx.types.ResRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.ResRet.f32 %2183, 1
  %2186 = extractvalue %dx.types.ResRet.f32 %2183, 2
  %2187 = extractvalue %dx.types.ResRet.f32 %2183, 3
  br label %2194

; <label>:2188                                    ; preds = %2169
  %2189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %2173, float %2174, float %2172, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2190 = extractvalue %dx.types.ResRet.f32 %2189, 0
  %2191 = extractvalue %dx.types.ResRet.f32 %2189, 1
  %2192 = extractvalue %dx.types.ResRet.f32 %2189, 2
  %2193 = extractvalue %dx.types.ResRet.f32 %2189, 3
  br label %2194

; <label>:2194                                    ; preds = %2188, %2175
  %2195 = phi float [ %2184, %2175 ], [ %2190, %2188 ]
  %2196 = phi float [ %2185, %2175 ], [ %2191, %2188 ]
  %2197 = phi float [ %2186, %2175 ], [ %2192, %2188 ]
  %2198 = phi float [ %2187, %2175 ], [ %2193, %2188 ]
  %2199 = fsub fast float %2195, %2164
  %2200 = fsub fast float %2196, %2165
  %2201 = fsub fast float %2197, %2166
  %2202 = fsub fast float %2198, %2167
  %2203 = fmul fast float %2199, %2137
  %2204 = fmul fast float %2200, %2137
  %2205 = fmul fast float %2201, %2137
  %2206 = fmul fast float %2202, %2137
  %2207 = fadd fast float %2203, %2164
  %2208 = fadd fast float %2204, %2165
  %2209 = fadd fast float %2205, %2166
  %2210 = fadd fast float %2206, %2167
  br label %2239

; <label>:2211                                    ; preds = %2131
  %2212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %2139, float %2140, float %2136, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2213 = extractvalue %dx.types.ResRet.f32 %2212, 0
  %2214 = extractvalue %dx.types.ResRet.f32 %2212, 1
  %2215 = extractvalue %dx.types.ResRet.f32 %2212, 2
  %2216 = extractvalue %dx.types.ResRet.f32 %2212, 3
  %2217 = fcmp fast ogt float %2137, 0.000000e+00
  br i1 %2217, label %2218, label %2239, !dx.controlflow.hints !77

; <label>:2218                                    ; preds = %2211
  %2219 = fadd fast float %2136, 1.000000e+00
  %2220 = call float @dx.op.unary.f32(i32 22, float %2107)  ; Frc(value)
  %2221 = call float @dx.op.unary.f32(i32 22, float %2108)  ; Frc(value)
  %2222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %2220, float %2221, float %2219, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.ResRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.ResRet.f32 %2222, 2
  %2226 = extractvalue %dx.types.ResRet.f32 %2222, 3
  %2227 = fsub fast float %2223, %2213
  %2228 = fsub fast float %2224, %2214
  %2229 = fsub fast float %2225, %2215
  %2230 = fsub fast float %2226, %2216
  %2231 = fmul fast float %2227, %2137
  %2232 = fmul fast float %2228, %2137
  %2233 = fmul fast float %2229, %2137
  %2234 = fmul fast float %2230, %2137
  %2235 = fadd fast float %2231, %2213
  %2236 = fadd fast float %2232, %2214
  %2237 = fadd fast float %2233, %2215
  %2238 = fadd fast float %2234, %2216
  br label %2239

; <label>:2239                                    ; preds = %2218, %2211, %2194, %2163
  %2240 = phi float [ %2207, %2194 ], [ %2164, %2163 ], [ %2235, %2218 ], [ %2213, %2211 ]
  %2241 = phi float [ %2208, %2194 ], [ %2165, %2163 ], [ %2236, %2218 ], [ %2214, %2211 ]
  %2242 = phi float [ %2209, %2194 ], [ %2166, %2163 ], [ %2237, %2218 ], [ %2215, %2211 ]
  %2243 = phi float [ %2210, %2194 ], [ %2167, %2163 ], [ %2238, %2218 ], [ %2216, %2211 ]
  %2244 = fadd fast float %2240, -5.000000e-01
  %2245 = fadd fast float %2242, -5.000000e-01
  %2246 = fmul fast float %2244, 0xBFD5555560000000
  %2247 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2245, float %2246)  ; FMad(a,b,c)
  %2248 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2241, float 0.000000e+00)  ; FMad(a,b,c)
  %2249 = fadd fast float %2248, %2243
  %2250 = fmul fast float %2244, -7.500000e-01
  %2251 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2245, float %2250)  ; FMad(a,b,c)
  %2252 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2241, float 0.000000e+00)  ; FMad(a,b,c)
  %2253 = fadd fast float %2252, %2243
  %2254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.f32 %2254, 0
  %2256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2257 = extractvalue %dx.types.CBufRet.f32 %2256, 0
  %2258 = extractvalue %dx.types.CBufRet.f32 %2256, 1
  %2259 = extractvalue %dx.types.CBufRet.f32 %2256, 2
  %2260 = extractvalue %dx.types.CBufRet.f32 %2256, 3
  %2261 = fsub fast float %2257, %2247
  %2262 = fsub fast float %2258, %2249
  %2263 = fsub fast float %2259, %2251
  %2264 = fsub fast float %2260, %2253
  %2265 = fmul fast float %2261, %2255
  %2266 = fmul fast float %2262, %2255
  %2267 = fmul fast float %2263, %2255
  %2268 = fmul fast float %2264, %2255
  %2269 = fadd fast float %2265, %2247
  %2270 = fadd fast float %2266, %2249
  %2271 = fadd fast float %2267, %2251
  %2272 = fadd fast float %2268, %2253
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 536870911
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, %2112
  %2278 = fmul fast float %2276, %2113
  %2279 = fptoui float %2277 to i32
  %2280 = fptoui float %2278 to i32
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = and i32 %2282, 31
  %2284 = lshr i32 %2279, %2283
  %2285 = lshr i32 %2280, %2283
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = and i32 %2287, 31
  %2289 = shl i32 1, %2288
  %2290 = call i32 @dx.op.binary.i32(i32 40, i32 %2289, i32 4)  ; UMin(a,b)
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = extractvalue %dx.types.ResRet.i32 %2291, 1
  %2294 = icmp eq i32 %2290, 0
  br i1 %2294, label %2336, label %2295

; <label>:2295                                    ; preds = %2239
  br label %2296

; <label>:2296                                    ; preds = %2324, %2295
  %2297 = phi i32 [ %2327, %2324 ], [ 0, %2295 ]
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = lshr i32 %2299, 16
  %2301 = and i32 %2300, 31
  %2302 = shl i32 %2285, %2301
  %2303 = add i32 %2302, %2284
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = and i32 %2305, 31
  %2307 = shl i32 %2303, %2306
  %2308 = add i32 %2307, %2297
  %2309 = shl i32 %2308, 2
  %2310 = add i32 %2309, 32
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = icmp slt i32 %2312, 0
  %2314 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %2297
  %2315 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2297
  %2316 = bitcast float* %2314 to i32*
  %2317 = bitcast float* %2315 to i32*
  br i1 %2313, label %2318, label %2324, !dx.controlflow.hints !78

; <label>:2318                                    ; preds = %2296
  %2319 = and i32 %2312, 1073741823
  %2320 = add nuw nsw i32 %2319, 20
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = extractvalue %dx.types.ResRet.i32 %2321, 1
  br label %2324

; <label>:2324                                    ; preds = %2318, %2296
  %2325 = phi i32 [ %2322, %2318 ], [ %2292, %2296 ]
  %2326 = phi i32 [ %2323, %2318 ], [ %2293, %2296 ]
  store i32 %2325, i32* %2316, align 4
  store i32 %2326, i32* %2317, align 4
  %2327 = add nuw i32 %2297, 1
  %2328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.i32 %2328, 2
  %2330 = icmp eq i32 %2329, 0
  %2331 = icmp ugt i32 %2312, -1073741825
  %2332 = and i1 %2331, %2330
  %2333 = icmp ult i32 %2327, %2290
  %2334 = and i1 %2332, %2333
  br i1 %2334, label %2296, label %2335, !dx.controlflow.hints !79

; <label>:2335                                    ; preds = %2324
  br label %2336

; <label>:2336                                    ; preds = %2335, %2239
  %2337 = phi i32 [ 0, %2239 ], [ %2327, %2335 ]
  %2338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2339 = extractvalue %dx.types.CBufRet.f32 %2338, 2
  %2340 = fptoui float %2339 to i32
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2393, label %2342

; <label>:2342                                    ; preds = %2336
  br label %2343

; <label>:2343                                    ; preds = %2388, %2342
  %2344 = phi i32 [ %2389, %2388 ], [ %2337, %2342 ]
  %2345 = phi i32 [ %2390, %2388 ], [ 0, %2342 ]
  %2346 = lshr i32 %2345, 2
  %2347 = and i32 %2345, 3
  %2348 = add nuw nsw i32 %2346, 83
  %2349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 %2348)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.i32 %2349, 0
  %2351 = extractvalue %dx.types.CBufRet.i32 %2349, 1
  %2352 = extractvalue %dx.types.CBufRet.i32 %2349, 2
  %2353 = extractvalue %dx.types.CBufRet.i32 %2349, 3
  %2354 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %2350, i32* %2354, align 4
  %2355 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %2351, i32* %2355, align 4
  %2356 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %2352, i32* %2356, align 4
  %2357 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %2353, i32* %2357, align 4
  %2358 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 %2347
  %2359 = load i32, i32* %2358, align 4, !tbaa !50
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = lshr i32 %2361, 16
  %2363 = and i32 %2362, 31
  %2364 = shl i32 %2285, %2363
  %2365 = add i32 %2364, %2284
  %2366 = shl i32 %2365, 2
  %2367 = add i32 %2366, %2359
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %2388, label %2371, !dx.controlflow.hints !80

; <label>:2371                                    ; preds = %2343
  %2372 = icmp slt i32 %2369, 0
  %2373 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %2344
  %2374 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2344
  %2375 = bitcast float* %2373 to i32*
  %2376 = bitcast float* %2374 to i32*
  br i1 %2372, label %2377, label %2384, !dx.controlflow.hints !81

; <label>:2377                                    ; preds = %2371
  %2378 = and i32 %2369, 1073741823
  %2379 = add i32 %2359, 20
  %2380 = add i32 %2379, %2378
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = extractvalue %dx.types.ResRet.i32 %2381, 1
  br label %2384

; <label>:2384                                    ; preds = %2377, %2371
  %2385 = phi i32 [ %2382, %2377 ], [ %2292, %2371 ]
  %2386 = phi i32 [ %2383, %2377 ], [ %2293, %2371 ]
  store i32 %2385, i32* %2375, align 4
  store i32 %2386, i32* %2376, align 4
  %2387 = add i32 %2344, 1
  br label %2388

; <label>:2388                                    ; preds = %2384, %2343
  %2389 = phi i32 [ %2344, %2343 ], [ %2387, %2384 ]
  %2390 = add nuw i32 %2345, 1
  %2391 = icmp eq i32 %2390, %2340
  br i1 %2391, label %2392, label %2343

; <label>:2392                                    ; preds = %2388
  br label %2393

; <label>:2393                                    ; preds = %2392, %2336
  %2394 = phi i32 [ %2337, %2336 ], [ %2389, %2392 ]
  %2395 = icmp eq i32 %2394, 1
  %2396 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 0
  %2397 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 0
  br i1 %2395, label %2398, label %2401, !dx.controlflow.hints !82

; <label>:2398                                    ; preds = %2393
  %2399 = load float, float* %2396, align 4
  %2400 = load float, float* %2397, align 4
  br label %2428

; <label>:2401                                    ; preds = %2393
  %2402 = load float, float* %2396, align 4
  %2403 = load float, float* %2397, align 4
  %2404 = fdiv fast float 1.000000e+00, %2403
  %2405 = fsub fast float %2402, %2404
  %2406 = icmp ugt i32 %2394, 1
  br i1 %2406, label %2407, label %2423

; <label>:2407                                    ; preds = %2401
  br label %2408

; <label>:2408                                    ; preds = %2408, %2407
  %2409 = phi float [ %2418, %2408 ], [ %2405, %2407 ]
  %2410 = phi float [ %2419, %2408 ], [ %2402, %2407 ]
  %2411 = phi i32 [ %2420, %2408 ], [ 1, %2407 ]
  %2412 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %2411
  %2413 = load float, float* %2412, align 4
  %2414 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %2411
  %2415 = load float, float* %2414, align 4
  %2416 = fdiv fast float 1.000000e+00, %2415
  %2417 = fsub fast float %2413, %2416
  %2418 = call float @dx.op.binary.f32(i32 36, float %2409, float %2417)  ; FMin(a,b)
  %2419 = call float @dx.op.binary.f32(i32 35, float %2410, float %2413)  ; FMax(a,b)
  %2420 = add nuw i32 %2411, 1
  %2421 = icmp eq i32 %2420, %2394
  br i1 %2421, label %2422, label %2408

; <label>:2422                                    ; preds = %2408
  br label %2423

; <label>:2423                                    ; preds = %2422, %2401
  %2424 = phi float [ %2405, %2401 ], [ %2418, %2422 ]
  %2425 = phi float [ %2402, %2401 ], [ %2419, %2422 ]
  %2426 = fsub fast float %2425, %2424
  %2427 = fdiv fast float 1.000000e+00, %2426
  br label %2428

; <label>:2428                                    ; preds = %2423, %2398
  %2429 = phi float [ %2399, %2398 ], [ %2425, %2423 ]
  %2430 = phi float [ %2400, %2398 ], [ %2427, %2423 ]
  %2431 = fadd fast float %1859, %2429
  %2432 = fmul fast float %2431, %2430
  %2433 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2434 = fmul fast float %2433, 2.000000e+00
  %2435 = fsub fast float 1.000000e+00, %2434
  %2436 = fmul fast float %2269, %2269
  %2437 = fsub fast float %2270, %2436
  %2438 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2437)  ; FMax(a,b)
  %2439 = fdiv fast float 1.000000e+00, %2438
  %2440 = fmul fast float %2270, %2269
  %2441 = fsub fast float %2271, %2440
  %2442 = fsub fast float %2435, %2269
  %2443 = fmul fast float %2435, %2435
  %2444 = fsub fast float %2443, %2270
  %2445 = fmul fast float %2439, %2441
  %2446 = fmul fast float %2445, %2442
  %2447 = fsub fast float %2444, %2446
  %2448 = fmul fast float %2270, %2270
  %2449 = fsub fast float %2272, %2448
  %2450 = fmul fast float %2441, %2441
  %2451 = fmul fast float %2450, %2439
  %2452 = fsub fast float %2449, %2451
  %2453 = fdiv fast float %2447, %2452
  %2454 = fmul fast float %2453, %2441
  %2455 = fsub fast float %2442, %2454
  %2456 = fmul fast float %2455, %2439
  %2457 = fmul fast float %2456, %2269
  %2458 = fsub fast float 1.000000e+00, %2457
  %2459 = fmul fast float %2453, %2270
  %2460 = fsub fast float %2458, %2459
  %2461 = fmul fast float %2456, %2456
  %2462 = fmul fast float %2453, 4.000000e+00
  %2463 = fmul fast float %2462, %2460
  %2464 = fsub fast float %2461, %2463
  %2465 = call float @dx.op.unary.f32(i32 24, float %2464)  ; Sqrt(value)
  %2466 = fcmp fast oge float %2456, 0.000000e+00
  %2467 = fsub fast float -0.000000e+00, %2465
  %2468 = select i1 %2466, float %2467, float %2465
  %2469 = fsub fast float %2468, %2456
  %2470 = fdiv fast float %2469, %2453
  %2471 = fdiv fast float %2460, %2469
  %2472 = fmul fast float %2470, 5.000000e-01
  %2473 = fmul fast float %2471, 2.000000e+00
  %2474 = select i1 %2466, float %2472, float %2473
  %2475 = select i1 %2466, float %2473, float %2472
  %2476 = call float @dx.op.binary.f32(i32 35, float %2474, float %2475)  ; FMax(a,b)
  %2477 = call float @dx.op.binary.f32(i32 36, float %2474, float %2475)  ; FMin(a,b)
  %2478 = fcmp fast ogt float %2435, %2476
  %2479 = fsub fast float %2435, %2477
  %2480 = fsub fast float %2435, %2476
  %2481 = fsub fast float %2476, %2477
  %2482 = select i1 %2478, float %2480, float %2481
  %2483 = fmul float %2479, %2482
  %2484 = select i1 %2478, float %2477, float %2435
  %2485 = fcmp fast ogt float %2435, %2477
  %2486 = fmul fast float %2484, %2476
  %2487 = fadd fast float %2484, %2476
  %2488 = fmul fast float %2487, %2269
  %2489 = fadd fast float %2486, %2270
  %2490 = fsub fast float %2489, %2488
  %2491 = fdiv fast float %2490, %2483
  %2492 = select i1 %2485, float %2491, float 0.000000e+00
  %2493 = fsub fast float 1.000000e+00, %2492
  %2494 = select i1 %2478, float %2493, float %2492
  %2495 = call float @dx.op.unary.f32(i32 7, float %2494)  ; Saturate(value)
  %2496 = extractvalue %dx.types.CBufRet.f32 %2254, 3
  %2497 = fmul fast float %2496, %2495
  %2498 = fsub fast float 1.000000e+00, %2497
  br label %2499

; <label>:2499                                    ; preds = %2428, %2106, %1832, %1790
  %2500 = phi float [ 1.000000e+00, %1790 ], [ %2498, %2428 ], [ 1.000000e+00, %1832 ], [ 1.000000e+00, %2106 ]
  %2501 = fcmp fast ogt float %1825, 0.000000e+00
  br i1 %2501, label %2502, label %2670, !dx.controlflow.hints !88

; <label>:2502                                    ; preds = %2499
  %2503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.f32 %2503, 2
  %2505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2506 = extractvalue %dx.types.CBufRet.f32 %2505, 2
  %2507 = fmul fast float %2504, %272
  %2508 = fadd fast float %2506, %299
  %2509 = fadd fast float %2508, %2507
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 2
  %2512 = extractvalue %dx.types.CBufRet.f32 %2510, 3
  %2513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2514 = extractvalue %dx.types.CBufRet.f32 %2513, 2
  %2515 = call float @dx.op.binary.f32(i32 35, float %2509, float 0.000000e+00)  ; FMax(a,b)
  %2516 = fadd fast float %2515, 0x3F10000000000000
  %2517 = fcmp fast oeq float %2514, 0.000000e+00
  br i1 %2517, label %2518, label %2585, !dx.controlflow.hints !56

; <label>:2518                                    ; preds = %2502
  %2519 = extractvalue %dx.types.CBufRet.f32 %2510, 1
  %2520 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2521 = fmul fast float %2520, %1721
  %2522 = fmul fast float %2519, %1722
  %2523 = fadd fast float %2521, 5.000000e-01
  %2524 = call float @dx.op.unary.f32(i32 27, float %2523)  ; Round_ni(value)
  %2525 = fadd fast float %2522, 5.000000e-01
  %2526 = call float @dx.op.unary.f32(i32 27, float %2525)  ; Round_ni(value)
  %2527 = fsub fast float %2523, %2524
  %2528 = fsub fast float %2525, %2526
  %2529 = fadd fast float %2524, -5.000000e-01
  %2530 = fadd fast float %2526, -5.000000e-01
  %2531 = fmul fast float %2527, 2.000000e+00
  %2532 = fsub fast float 3.000000e+00, %2531
  %2533 = fadd fast float %2531, 1.000000e+00
  %2534 = fsub fast float 2.000000e+00, %2527
  %2535 = bitcast float %2532 to i32
  %2536 = sub nsw i32 2129859010, %2535
  %2537 = bitcast i32 %2536 to float
  %2538 = fmul fast float %2537, %2534
  %2539 = fadd fast float %2538, -1.000000e+00
  %2540 = bitcast float %2533 to i32
  %2541 = sub nsw i32 2129859010, %2540
  %2542 = bitcast i32 %2541 to float
  %2543 = fmul fast float %2542, %2527
  %2544 = fadd fast float %2543, 1.000000e+00
  %2545 = fmul fast float %2528, 2.000000e+00
  %2546 = fsub fast float 3.000000e+00, %2545
  %2547 = fadd fast float %2545, 1.000000e+00
  %2548 = fsub fast float 2.000000e+00, %2528
  %2549 = bitcast float %2546 to i32
  %2550 = sub nsw i32 2129859010, %2549
  %2551 = bitcast i32 %2550 to float
  %2552 = fmul fast float %2551, %2548
  %2553 = fadd fast float %2552, -1.000000e+00
  %2554 = bitcast float %2547 to i32
  %2555 = sub nsw i32 2129859010, %2554
  %2556 = bitcast i32 %2555 to float
  %2557 = fmul fast float %2556, %2528
  %2558 = fadd fast float %2557, 1.000000e+00
  %2559 = fadd fast float %2539, %2529
  %2560 = fmul fast float %2559, %2511
  %2561 = fadd fast float %2553, %2530
  %2562 = fmul fast float %2561, %2512
  %2563 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %2560, float %2562, float undef, float undef, i32 0, i32 0, i32 undef, float %2516)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2564 = extractvalue %dx.types.ResRet.f32 %2563, 0
  %2565 = fmul fast float %2564, %2532
  %2566 = fadd fast float %2544, %2529
  %2567 = fmul fast float %2566, %2511
  %2568 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %2567, float %2562, float undef, float undef, i32 0, i32 0, i32 undef, float %2516)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2569 = extractvalue %dx.types.ResRet.f32 %2568, 0
  %2570 = fmul fast float %2569, %2533
  %2571 = fadd fast float %2558, %2530
  %2572 = fmul fast float %2571, %2512
  %2573 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %2560, float %2572, float undef, float undef, i32 0, i32 0, i32 undef, float %2516)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2574 = extractvalue %dx.types.ResRet.f32 %2573, 0
  %2575 = fmul fast float %2574, %2532
  %2576 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %2567, float %2572, float undef, float undef, i32 0, i32 0, i32 undef, float %2516)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2577 = extractvalue %dx.types.ResRet.f32 %2576, 0
  %2578 = fmul fast float %2577, %2533
  %2579 = fadd fast float %2578, %2575
  %2580 = fmul fast float %2579, %2547
  %2581 = fadd fast float %2570, %2565
  %2582 = fmul fast float %2581, %2546
  %2583 = fadd fast float %2582, %2580
  %2584 = fmul fast float %2583, 6.250000e-02
  br label %2670

; <label>:2585                                    ; preds = %2502
  %2586 = fmul fast float %310, 0x401921FB60000000
  %2587 = call float @dx.op.unary.f32(i32 13, float %2586)  ; Sin(value)
  %2588 = call float @dx.op.unary.f32(i32 12, float %2586)  ; Cos(value)
  %2589 = fsub fast float -0.000000e+00, %2587
  br label %2590

; <label>:2590                                    ; preds = %2639, %2585
  %2591 = phi float [ 0.000000e+00, %2585 ], [ %2634, %2639 ]
  %2592 = phi float [ 0.000000e+00, %2585 ], [ %2636, %2639 ]
  %2593 = phi i32 [ 0, %2585 ], [ %2640, %2639 ]
  %2594 = mul i32 %2593, 2
  %2595 = add i32 0, %2594
  %2596 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2595
  %2597 = load float, float* %2596, align 4
  %2598 = mul i32 %2593, 2
  %2599 = add i32 1, %2598
  %2600 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2599
  %2601 = load float, float* %2600, align 4
  %2602 = fmul fast float %2597, %2588
  %2603 = call float @dx.op.tertiary.f32(i32 46, float %2601, float %2589, float %2602)  ; FMad(a,b,c)
  %2604 = fmul fast float %2597, %2587
  %2605 = call float @dx.op.tertiary.f32(i32 46, float %2601, float %2588, float %2604)  ; FMad(a,b,c)
  %2606 = fmul fast float %2603, %2514
  %2607 = fmul fast float %2605, %2514
  %2608 = fadd fast float %2606, %1721
  %2609 = fadd fast float %2607, %1722
  %2610 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %27, float %2608, float %2609, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2611 = extractvalue %dx.types.ResRet.f32 %2610, 0
  %2612 = extractvalue %dx.types.ResRet.f32 %2610, 1
  %2613 = extractvalue %dx.types.ResRet.f32 %2610, 2
  %2614 = extractvalue %dx.types.ResRet.f32 %2610, 3
  %2615 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %2611, float* %2615, align 4
  %2616 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %2612, float* %2616, align 4
  %2617 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %2613, float* %2617, align 4
  %2618 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %2614, float* %2618, align 4
  %2619 = fsub fast float %2611, %2516
  %2620 = fcmp fast olt float %2619, 0.000000e+00
  %2621 = select i1 %2620, float 0.000000e+00, float 1.000000e+00
  %2622 = fadd fast float %2621, %2591
  %2623 = fmul fast float %2621, %2619
  %2624 = fadd fast float %2623, %2592
  br label %2625

; <label>:2625                                    ; preds = %2625, %2590
  %2626 = phi i32 [ 1, %2590 ], [ %2637, %2625 ]
  %2627 = phi float [ %2624, %2590 ], [ %2636, %2625 ]
  %2628 = phi float [ %2622, %2590 ], [ %2634, %2625 ]
  %2629 = getelementptr [4 x float], [4 x float]* %51, i32 0, i32 %2626
  %2630 = load float, float* %2629, align 4, !tbaa !57
  %2631 = fsub fast float %2630, %2516
  %2632 = fcmp fast olt float %2631, 0.000000e+00
  %2633 = select i1 %2632, float 0.000000e+00, float 1.000000e+00
  %2634 = fadd fast float %2633, %2628
  %2635 = fmul fast float %2633, %2631
  %2636 = fadd fast float %2635, %2627
  %2637 = add nuw nsw i32 %2626, 1
  %2638 = icmp eq i32 %2637, 4
  br i1 %2638, label %2639, label %2625, !llvm.loop !59

; <label>:2639                                    ; preds = %2625
  %2640 = add nuw nsw i32 %2593, 1
  %2641 = icmp eq i32 %2640, 8
  br i1 %2641, label %2642, label %2590, !llvm.loop !61

; <label>:2642                                    ; preds = %2639
  %2643 = fdiv fast float 1.000000e+00, %2634
  %2644 = fmul fast float %2643, %2636
  %2645 = fdiv fast float 1.000000e+00, %2516
  %2646 = fmul fast float %2644, %2645
  %2647 = call float @dx.op.unary.f32(i32 7, float %2646)  ; Saturate(value)
  %2648 = call float @dx.op.binary.f32(i32 35, float %2647, float 0.000000e+00)  ; FMax(a,b)
  %2649 = fmul fast float %2634, 3.125000e-02
  %2650 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  %2651 = fmul fast float %2650, 2.000000e+00
  %2652 = fadd fast float %2651, -1.000000e+00
  %2653 = fcmp fast ogt float %2652, 0.000000e+00
  %2654 = fcmp fast olt float %2652, 0.000000e+00
  %2655 = zext i1 %2653 to i32
  %2656 = zext i1 %2654 to i32
  %2657 = sub nsw i32 %2655, %2656
  %2658 = sitofp i32 %2657 to float
  %2659 = fmul fast float %2658, %2652
  %2660 = fsub fast float 1.000000e+00, %2659
  %2661 = fmul fast float %2660, %2660
  %2662 = fmul fast float %2661, %2660
  %2663 = fsub fast float %2660, %2662
  %2664 = fmul fast float %2663, %2648
  %2665 = fsub fast float 1.000000e+00, %2662
  %2666 = fsub fast float %2665, %2664
  %2667 = fmul fast float %2658, 5.000000e-01
  %2668 = fmul fast float %2667, %2666
  %2669 = fsub fast float 5.000000e-01, %2668
  br label %2670

; <label>:2670                                    ; preds = %2642, %2518, %2499
  %2671 = phi float [ 1.000000e+00, %2499 ], [ %2584, %2518 ], [ %2669, %2642 ]
  %2672 = fcmp fast ogt float %1823, 0.000000e+00
  br i1 %2672, label %2673, label %2841, !dx.controlflow.hints !89

; <label>:2673                                    ; preds = %2670
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 2
  %2676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2677 = extractvalue %dx.types.CBufRet.f32 %2676, 1
  %2678 = fmul fast float %2675, %272
  %2679 = fadd fast float %2677, %299
  %2680 = fadd fast float %2679, %2678
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 2
  %2683 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2684, 1
  %2686 = call float @dx.op.binary.f32(i32 35, float %2680, float 0.000000e+00)  ; FMax(a,b)
  %2687 = fadd fast float %2686, 0x3F10000000000000
  %2688 = fcmp fast oeq float %2685, 0.000000e+00
  br i1 %2688, label %2689, label %2756, !dx.controlflow.hints !56

; <label>:2689                                    ; preds = %2673
  %2690 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2691 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2692 = fmul fast float %2691, %1713
  %2693 = fmul fast float %2690, %1714
  %2694 = fadd fast float %2692, 5.000000e-01
  %2695 = call float @dx.op.unary.f32(i32 27, float %2694)  ; Round_ni(value)
  %2696 = fadd fast float %2693, 5.000000e-01
  %2697 = call float @dx.op.unary.f32(i32 27, float %2696)  ; Round_ni(value)
  %2698 = fsub fast float %2694, %2695
  %2699 = fsub fast float %2696, %2697
  %2700 = fadd fast float %2695, -5.000000e-01
  %2701 = fadd fast float %2697, -5.000000e-01
  %2702 = fmul fast float %2698, 2.000000e+00
  %2703 = fsub fast float 3.000000e+00, %2702
  %2704 = fadd fast float %2702, 1.000000e+00
  %2705 = fsub fast float 2.000000e+00, %2698
  %2706 = bitcast float %2703 to i32
  %2707 = sub nsw i32 2129859010, %2706
  %2708 = bitcast i32 %2707 to float
  %2709 = fmul fast float %2708, %2705
  %2710 = fadd fast float %2709, -1.000000e+00
  %2711 = bitcast float %2704 to i32
  %2712 = sub nsw i32 2129859010, %2711
  %2713 = bitcast i32 %2712 to float
  %2714 = fmul fast float %2713, %2698
  %2715 = fadd fast float %2714, 1.000000e+00
  %2716 = fmul fast float %2699, 2.000000e+00
  %2717 = fsub fast float 3.000000e+00, %2716
  %2718 = fadd fast float %2716, 1.000000e+00
  %2719 = fsub fast float 2.000000e+00, %2699
  %2720 = bitcast float %2717 to i32
  %2721 = sub nsw i32 2129859010, %2720
  %2722 = bitcast i32 %2721 to float
  %2723 = fmul fast float %2722, %2719
  %2724 = fadd fast float %2723, -1.000000e+00
  %2725 = bitcast float %2718 to i32
  %2726 = sub nsw i32 2129859010, %2725
  %2727 = bitcast i32 %2726 to float
  %2728 = fmul fast float %2727, %2699
  %2729 = fadd fast float %2728, 1.000000e+00
  %2730 = fadd fast float %2710, %2700
  %2731 = fmul fast float %2730, %2682
  %2732 = fadd fast float %2724, %2701
  %2733 = fmul fast float %2732, %2683
  %2734 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %2731, float %2733, float undef, float undef, i32 0, i32 0, i32 undef, float %2687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = fmul fast float %2735, %2703
  %2737 = fadd fast float %2715, %2700
  %2738 = fmul fast float %2737, %2682
  %2739 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %2738, float %2733, float undef, float undef, i32 0, i32 0, i32 undef, float %2687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 0
  %2741 = fmul fast float %2740, %2704
  %2742 = fadd fast float %2729, %2701
  %2743 = fmul fast float %2742, %2683
  %2744 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %2731, float %2743, float undef, float undef, i32 0, i32 0, i32 undef, float %2687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = fmul fast float %2745, %2703
  %2747 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %2738, float %2743, float undef, float undef, i32 0, i32 0, i32 undef, float %2687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = fmul fast float %2748, %2704
  %2750 = fadd fast float %2749, %2746
  %2751 = fmul fast float %2750, %2718
  %2752 = fadd fast float %2741, %2736
  %2753 = fmul fast float %2752, %2717
  %2754 = fadd fast float %2753, %2751
  %2755 = fmul fast float %2754, 6.250000e-02
  br label %2841

; <label>:2756                                    ; preds = %2673
  %2757 = fmul fast float %310, 0x401921FB60000000
  %2758 = call float @dx.op.unary.f32(i32 13, float %2757)  ; Sin(value)
  %2759 = call float @dx.op.unary.f32(i32 12, float %2757)  ; Cos(value)
  %2760 = fsub fast float -0.000000e+00, %2758
  br label %2761

; <label>:2761                                    ; preds = %2810, %2756
  %2762 = phi float [ 0.000000e+00, %2756 ], [ %2805, %2810 ]
  %2763 = phi float [ 0.000000e+00, %2756 ], [ %2807, %2810 ]
  %2764 = phi i32 [ 0, %2756 ], [ %2811, %2810 ]
  %2765 = mul i32 %2764, 2
  %2766 = add i32 0, %2765
  %2767 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2766
  %2768 = load float, float* %2767, align 4
  %2769 = mul i32 %2764, 2
  %2770 = add i32 1, %2769
  %2771 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2770
  %2772 = load float, float* %2771, align 4
  %2773 = fmul fast float %2768, %2759
  %2774 = call float @dx.op.tertiary.f32(i32 46, float %2772, float %2760, float %2773)  ; FMad(a,b,c)
  %2775 = fmul fast float %2768, %2758
  %2776 = call float @dx.op.tertiary.f32(i32 46, float %2772, float %2759, float %2775)  ; FMad(a,b,c)
  %2777 = fmul fast float %2774, %2685
  %2778 = fmul fast float %2776, %2685
  %2779 = fadd fast float %2777, %1713
  %2780 = fadd fast float %2778, %1714
  %2781 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %27, float %2779, float %2780, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2782 = extractvalue %dx.types.ResRet.f32 %2781, 0
  %2783 = extractvalue %dx.types.ResRet.f32 %2781, 1
  %2784 = extractvalue %dx.types.ResRet.f32 %2781, 2
  %2785 = extractvalue %dx.types.ResRet.f32 %2781, 3
  %2786 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 0
  store float %2782, float* %2786, align 4
  %2787 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 1
  store float %2783, float* %2787, align 4
  %2788 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 2
  store float %2784, float* %2788, align 4
  %2789 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 3
  store float %2785, float* %2789, align 4
  %2790 = fsub fast float %2782, %2687
  %2791 = fcmp fast olt float %2790, 0.000000e+00
  %2792 = select i1 %2791, float 0.000000e+00, float 1.000000e+00
  %2793 = fadd fast float %2792, %2762
  %2794 = fmul fast float %2792, %2790
  %2795 = fadd fast float %2794, %2763
  br label %2796

; <label>:2796                                    ; preds = %2796, %2761
  %2797 = phi i32 [ 1, %2761 ], [ %2808, %2796 ]
  %2798 = phi float [ %2795, %2761 ], [ %2807, %2796 ]
  %2799 = phi float [ %2793, %2761 ], [ %2805, %2796 ]
  %2800 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 %2797
  %2801 = load float, float* %2800, align 4, !tbaa !57
  %2802 = fsub fast float %2801, %2687
  %2803 = fcmp fast olt float %2802, 0.000000e+00
  %2804 = select i1 %2803, float 0.000000e+00, float 1.000000e+00
  %2805 = fadd fast float %2804, %2799
  %2806 = fmul fast float %2804, %2802
  %2807 = fadd fast float %2806, %2798
  %2808 = add nuw nsw i32 %2797, 1
  %2809 = icmp eq i32 %2808, 4
  br i1 %2809, label %2810, label %2796, !llvm.loop !59

; <label>:2810                                    ; preds = %2796
  %2811 = add nuw nsw i32 %2764, 1
  %2812 = icmp eq i32 %2811, 8
  br i1 %2812, label %2813, label %2761, !llvm.loop !61

; <label>:2813                                    ; preds = %2810
  %2814 = fdiv fast float 1.000000e+00, %2805
  %2815 = fmul fast float %2814, %2807
  %2816 = fdiv fast float 1.000000e+00, %2687
  %2817 = fmul fast float %2815, %2816
  %2818 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2819 = call float @dx.op.binary.f32(i32 35, float %2818, float 0.000000e+00)  ; FMax(a,b)
  %2820 = fmul fast float %2805, 3.125000e-02
  %2821 = call float @dx.op.unary.f32(i32 7, float %2820)  ; Saturate(value)
  %2822 = fmul fast float %2821, 2.000000e+00
  %2823 = fadd fast float %2822, -1.000000e+00
  %2824 = fcmp fast ogt float %2823, 0.000000e+00
  %2825 = fcmp fast olt float %2823, 0.000000e+00
  %2826 = zext i1 %2824 to i32
  %2827 = zext i1 %2825 to i32
  %2828 = sub nsw i32 %2826, %2827
  %2829 = sitofp i32 %2828 to float
  %2830 = fmul fast float %2829, %2823
  %2831 = fsub fast float 1.000000e+00, %2830
  %2832 = fmul fast float %2831, %2831
  %2833 = fmul fast float %2832, %2831
  %2834 = fsub fast float %2831, %2833
  %2835 = fmul fast float %2834, %2819
  %2836 = fsub fast float 1.000000e+00, %2833
  %2837 = fsub fast float %2836, %2835
  %2838 = fmul fast float %2829, 5.000000e-01
  %2839 = fmul fast float %2838, %2837
  %2840 = fsub fast float 5.000000e-01, %2839
  br label %2841

; <label>:2841                                    ; preds = %2813, %2689, %2670
  %2842 = phi float [ 1.000000e+00, %2670 ], [ %2755, %2689 ], [ %2840, %2813 ]
  %2843 = fcmp fast ogt float %1822, 0.000000e+00
  br i1 %2843, label %2844, label %3166, !dx.controlflow.hints !90

; <label>:2844                                    ; preds = %2841
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 2
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 0
  %2849 = fmul fast float %2846, %272
  %2850 = fadd fast float %2848, %299
  %2851 = fadd fast float %2850, %2849
  %2852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2852, 2
  %2854 = extractvalue %dx.types.CBufRet.f32 %2852, 3
  %2855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.f32 %2855, 0
  %2857 = call float @dx.op.binary.f32(i32 35, float %2851, float 0.000000e+00)  ; FMax(a,b)
  %2858 = fadd fast float %2857, 0x3F10000000000000
  %2859 = fcmp fast oeq float %2856, 0.000000e+00
  br i1 %105, label %2860, label %3013, !dx.controlflow.hints !91

; <label>:2860                                    ; preds = %2844
  br i1 %2859, label %2861, label %2928, !dx.controlflow.hints !56

; <label>:2861                                    ; preds = %2860
  %2862 = extractvalue %dx.types.CBufRet.f32 %2852, 1
  %2863 = extractvalue %dx.types.CBufRet.f32 %2852, 0
  %2864 = fmul fast float %2863, %291
  %2865 = fmul fast float %2862, %295
  %2866 = fadd fast float %2864, 5.000000e-01
  %2867 = call float @dx.op.unary.f32(i32 27, float %2866)  ; Round_ni(value)
  %2868 = fadd fast float %2865, 5.000000e-01
  %2869 = call float @dx.op.unary.f32(i32 27, float %2868)  ; Round_ni(value)
  %2870 = fsub fast float %2866, %2867
  %2871 = fsub fast float %2868, %2869
  %2872 = fadd fast float %2867, -5.000000e-01
  %2873 = fadd fast float %2869, -5.000000e-01
  %2874 = fmul fast float %2870, 2.000000e+00
  %2875 = fsub fast float 3.000000e+00, %2874
  %2876 = fadd fast float %2874, 1.000000e+00
  %2877 = fsub fast float 2.000000e+00, %2870
  %2878 = bitcast float %2875 to i32
  %2879 = sub nsw i32 2129859010, %2878
  %2880 = bitcast i32 %2879 to float
  %2881 = fmul fast float %2880, %2877
  %2882 = fadd fast float %2881, -1.000000e+00
  %2883 = bitcast float %2876 to i32
  %2884 = sub nsw i32 2129859010, %2883
  %2885 = bitcast i32 %2884 to float
  %2886 = fmul fast float %2885, %2870
  %2887 = fadd fast float %2886, 1.000000e+00
  %2888 = fmul fast float %2871, 2.000000e+00
  %2889 = fsub fast float 3.000000e+00, %2888
  %2890 = fadd fast float %2888, 1.000000e+00
  %2891 = fsub fast float 2.000000e+00, %2871
  %2892 = bitcast float %2889 to i32
  %2893 = sub nsw i32 2129859010, %2892
  %2894 = bitcast i32 %2893 to float
  %2895 = fmul fast float %2894, %2891
  %2896 = fadd fast float %2895, -1.000000e+00
  %2897 = bitcast float %2890 to i32
  %2898 = sub nsw i32 2129859010, %2897
  %2899 = bitcast i32 %2898 to float
  %2900 = fmul fast float %2899, %2871
  %2901 = fadd fast float %2900, 1.000000e+00
  %2902 = fadd fast float %2882, %2872
  %2903 = fmul fast float %2902, %2853
  %2904 = fadd fast float %2896, %2873
  %2905 = fmul fast float %2904, %2854
  %2906 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %2903, float %2905, float undef, float undef, i32 0, i32 0, i32 undef, float %2858)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2907 = extractvalue %dx.types.ResRet.f32 %2906, 0
  %2908 = fmul fast float %2907, %2875
  %2909 = fadd fast float %2887, %2872
  %2910 = fmul fast float %2909, %2853
  %2911 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %2910, float %2905, float undef, float undef, i32 0, i32 0, i32 undef, float %2858)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = fmul fast float %2912, %2876
  %2914 = fadd fast float %2901, %2873
  %2915 = fmul fast float %2914, %2854
  %2916 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %2903, float %2915, float undef, float undef, i32 0, i32 0, i32 undef, float %2858)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2917 = extractvalue %dx.types.ResRet.f32 %2916, 0
  %2918 = fmul fast float %2917, %2875
  %2919 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %2910, float %2915, float undef, float undef, i32 0, i32 0, i32 undef, float %2858)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = fmul fast float %2920, %2876
  %2922 = fadd fast float %2921, %2918
  %2923 = fmul fast float %2922, %2890
  %2924 = fadd fast float %2913, %2908
  %2925 = fmul fast float %2924, %2889
  %2926 = fadd fast float %2925, %2923
  %2927 = fmul fast float %2926, 6.250000e-02
  br label %3166

; <label>:2928                                    ; preds = %2860
  %2929 = fmul fast float %310, 0x401921FB60000000
  %2930 = call float @dx.op.unary.f32(i32 13, float %2929)  ; Sin(value)
  %2931 = call float @dx.op.unary.f32(i32 12, float %2929)  ; Cos(value)
  %2932 = fsub fast float -0.000000e+00, %2930
  br label %2933

; <label>:2933                                    ; preds = %2982, %2928
  %2934 = phi float [ 0.000000e+00, %2928 ], [ %2977, %2982 ]
  %2935 = phi float [ 0.000000e+00, %2928 ], [ %2979, %2982 ]
  %2936 = phi i32 [ 0, %2928 ], [ %2983, %2982 ]
  %2937 = mul i32 %2936, 2
  %2938 = add i32 0, %2937
  %2939 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2938
  %2940 = load float, float* %2939, align 4
  %2941 = mul i32 %2936, 2
  %2942 = add i32 1, %2941
  %2943 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2942
  %2944 = load float, float* %2943, align 4
  %2945 = fmul fast float %2940, %2931
  %2946 = call float @dx.op.tertiary.f32(i32 46, float %2944, float %2932, float %2945)  ; FMad(a,b,c)
  %2947 = fmul fast float %2940, %2930
  %2948 = call float @dx.op.tertiary.f32(i32 46, float %2944, float %2931, float %2947)  ; FMad(a,b,c)
  %2949 = fmul fast float %2946, %2856
  %2950 = fmul fast float %2948, %2856
  %2951 = fadd fast float %2949, %291
  %2952 = fadd fast float %2950, %295
  %2953 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %27, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2954 = extractvalue %dx.types.ResRet.f32 %2953, 0
  %2955 = extractvalue %dx.types.ResRet.f32 %2953, 1
  %2956 = extractvalue %dx.types.ResRet.f32 %2953, 2
  %2957 = extractvalue %dx.types.ResRet.f32 %2953, 3
  %2958 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 0
  store float %2954, float* %2958, align 4
  %2959 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 1
  store float %2955, float* %2959, align 4
  %2960 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 2
  store float %2956, float* %2960, align 4
  %2961 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 3
  store float %2957, float* %2961, align 4
  %2962 = fsub fast float %2954, %2858
  %2963 = fcmp fast olt float %2962, 0.000000e+00
  %2964 = select i1 %2963, float 0.000000e+00, float 1.000000e+00
  %2965 = fadd fast float %2964, %2934
  %2966 = fmul fast float %2964, %2962
  %2967 = fadd fast float %2966, %2935
  br label %2968

; <label>:2968                                    ; preds = %2968, %2933
  %2969 = phi i32 [ 1, %2933 ], [ %2980, %2968 ]
  %2970 = phi float [ %2967, %2933 ], [ %2979, %2968 ]
  %2971 = phi float [ %2965, %2933 ], [ %2977, %2968 ]
  %2972 = getelementptr [4 x float], [4 x float]* %49, i32 0, i32 %2969
  %2973 = load float, float* %2972, align 4, !tbaa !57
  %2974 = fsub fast float %2973, %2858
  %2975 = fcmp fast olt float %2974, 0.000000e+00
  %2976 = select i1 %2975, float 0.000000e+00, float 1.000000e+00
  %2977 = fadd fast float %2976, %2971
  %2978 = fmul fast float %2976, %2974
  %2979 = fadd fast float %2978, %2970
  %2980 = add nuw nsw i32 %2969, 1
  %2981 = icmp eq i32 %2980, 4
  br i1 %2981, label %2982, label %2968, !llvm.loop !59

; <label>:2982                                    ; preds = %2968
  %2983 = add nuw nsw i32 %2936, 1
  %2984 = icmp eq i32 %2983, 8
  br i1 %2984, label %2985, label %2933, !llvm.loop !61

; <label>:2985                                    ; preds = %2982
  %2986 = fdiv fast float 1.000000e+00, %2977
  %2987 = fmul fast float %2986, %2979
  %2988 = fdiv fast float 1.000000e+00, %2858
  %2989 = fmul fast float %2987, %2988
  %2990 = call float @dx.op.unary.f32(i32 7, float %2989)  ; Saturate(value)
  %2991 = call float @dx.op.binary.f32(i32 35, float %2990, float 0.000000e+00)  ; FMax(a,b)
  %2992 = fmul fast float %2977, 3.125000e-02
  %2993 = call float @dx.op.unary.f32(i32 7, float %2992)  ; Saturate(value)
  %2994 = fmul fast float %2993, 2.000000e+00
  %2995 = fadd fast float %2994, -1.000000e+00
  %2996 = fcmp fast ogt float %2995, 0.000000e+00
  %2997 = fcmp fast olt float %2995, 0.000000e+00
  %2998 = zext i1 %2996 to i32
  %2999 = zext i1 %2997 to i32
  %3000 = sub nsw i32 %2998, %2999
  %3001 = sitofp i32 %3000 to float
  %3002 = fmul fast float %3001, %2995
  %3003 = fsub fast float 1.000000e+00, %3002
  %3004 = fmul fast float %3003, %3003
  %3005 = fmul fast float %3004, %3003
  %3006 = fsub fast float %3003, %3005
  %3007 = fmul fast float %3006, %2991
  %3008 = fsub fast float 1.000000e+00, %3005
  %3009 = fsub fast float %3008, %3007
  %3010 = fmul fast float %3001, 5.000000e-01
  %3011 = fmul fast float %3010, %3009
  %3012 = fsub fast float 5.000000e-01, %3011
  br label %3166

; <label>:3013                                    ; preds = %2844
  br i1 %2859, label %3014, label %3081, !dx.controlflow.hints !56

; <label>:3014                                    ; preds = %3013
  %3015 = extractvalue %dx.types.CBufRet.f32 %2852, 1
  %3016 = extractvalue %dx.types.CBufRet.f32 %2852, 0
  %3017 = fmul fast float %3016, %291
  %3018 = fmul fast float %3015, %295
  %3019 = fadd fast float %3017, 5.000000e-01
  %3020 = call float @dx.op.unary.f32(i32 27, float %3019)  ; Round_ni(value)
  %3021 = fadd fast float %3018, 5.000000e-01
  %3022 = call float @dx.op.unary.f32(i32 27, float %3021)  ; Round_ni(value)
  %3023 = fsub fast float %3019, %3020
  %3024 = fsub fast float %3021, %3022
  %3025 = fadd fast float %3020, -5.000000e-01
  %3026 = fadd fast float %3022, -5.000000e-01
  %3027 = fmul fast float %3023, 2.000000e+00
  %3028 = fsub fast float 3.000000e+00, %3027
  %3029 = fadd fast float %3027, 1.000000e+00
  %3030 = fsub fast float 2.000000e+00, %3023
  %3031 = bitcast float %3028 to i32
  %3032 = sub nsw i32 2129859010, %3031
  %3033 = bitcast i32 %3032 to float
  %3034 = fmul fast float %3033, %3030
  %3035 = fadd fast float %3034, -1.000000e+00
  %3036 = bitcast float %3029 to i32
  %3037 = sub nsw i32 2129859010, %3036
  %3038 = bitcast i32 %3037 to float
  %3039 = fmul fast float %3038, %3023
  %3040 = fadd fast float %3039, 1.000000e+00
  %3041 = fmul fast float %3024, 2.000000e+00
  %3042 = fsub fast float 3.000000e+00, %3041
  %3043 = fadd fast float %3041, 1.000000e+00
  %3044 = fsub fast float 2.000000e+00, %3024
  %3045 = bitcast float %3042 to i32
  %3046 = sub nsw i32 2129859010, %3045
  %3047 = bitcast i32 %3046 to float
  %3048 = fmul fast float %3047, %3044
  %3049 = fadd fast float %3048, -1.000000e+00
  %3050 = bitcast float %3043 to i32
  %3051 = sub nsw i32 2129859010, %3050
  %3052 = bitcast i32 %3051 to float
  %3053 = fmul fast float %3052, %3024
  %3054 = fadd fast float %3053, 1.000000e+00
  %3055 = fadd fast float %3035, %3025
  %3056 = fmul fast float %3055, %2853
  %3057 = fadd fast float %3049, %3026
  %3058 = fmul fast float %3057, %2854
  %3059 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %3056, float %3058, float undef, float undef, i32 0, i32 0, i32 undef, float %2858)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  %3061 = fmul fast float %3060, %3028
  %3062 = fadd fast float %3040, %3025
  %3063 = fmul fast float %3062, %2853
  %3064 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %3063, float %3058, float undef, float undef, i32 0, i32 0, i32 undef, float %2858)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3065 = extractvalue %dx.types.ResRet.f32 %3064, 0
  %3066 = fmul fast float %3065, %3029
  %3067 = fadd fast float %3054, %3026
  %3068 = fmul fast float %3067, %2854
  %3069 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %3056, float %3068, float undef, float undef, i32 0, i32 0, i32 undef, float %2858)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3070 = extractvalue %dx.types.ResRet.f32 %3069, 0
  %3071 = fmul fast float %3070, %3028
  %3072 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %3063, float %3068, float undef, float undef, i32 0, i32 0, i32 undef, float %2858)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = fmul fast float %3073, %3029
  %3075 = fadd fast float %3074, %3071
  %3076 = fmul fast float %3075, %3043
  %3077 = fadd fast float %3066, %3061
  %3078 = fmul fast float %3077, %3042
  %3079 = fadd fast float %3078, %3076
  %3080 = fmul fast float %3079, 6.250000e-02
  br label %3166

; <label>:3081                                    ; preds = %3013
  %3082 = fmul fast float %310, 0x401921FB60000000
  %3083 = call float @dx.op.unary.f32(i32 13, float %3082)  ; Sin(value)
  %3084 = call float @dx.op.unary.f32(i32 12, float %3082)  ; Cos(value)
  %3085 = fsub fast float -0.000000e+00, %3083
  br label %3086

; <label>:3086                                    ; preds = %3135, %3081
  %3087 = phi float [ 0.000000e+00, %3081 ], [ %3130, %3135 ]
  %3088 = phi float [ 0.000000e+00, %3081 ], [ %3132, %3135 ]
  %3089 = phi i32 [ 0, %3081 ], [ %3136, %3135 ]
  %3090 = mul i32 %3089, 2
  %3091 = add i32 0, %3090
  %3092 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3091
  %3093 = load float, float* %3092, align 4
  %3094 = mul i32 %3089, 2
  %3095 = add i32 1, %3094
  %3096 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3095
  %3097 = load float, float* %3096, align 4
  %3098 = fmul fast float %3093, %3084
  %3099 = call float @dx.op.tertiary.f32(i32 46, float %3097, float %3085, float %3098)  ; FMad(a,b,c)
  %3100 = fmul fast float %3093, %3083
  %3101 = call float @dx.op.tertiary.f32(i32 46, float %3097, float %3084, float %3100)  ; FMad(a,b,c)
  %3102 = fmul fast float %3099, %2856
  %3103 = fmul fast float %3101, %2856
  %3104 = fadd fast float %3102, %291
  %3105 = fadd fast float %3103, %295
  %3106 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %27, float %3104, float %3105, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3107 = extractvalue %dx.types.ResRet.f32 %3106, 0
  %3108 = extractvalue %dx.types.ResRet.f32 %3106, 1
  %3109 = extractvalue %dx.types.ResRet.f32 %3106, 2
  %3110 = extractvalue %dx.types.ResRet.f32 %3106, 3
  %3111 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 0
  store float %3107, float* %3111, align 4
  %3112 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 1
  store float %3108, float* %3112, align 4
  %3113 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 2
  store float %3109, float* %3113, align 4
  %3114 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 3
  store float %3110, float* %3114, align 4
  %3115 = fsub fast float %3107, %2858
  %3116 = fcmp fast olt float %3115, 0.000000e+00
  %3117 = select i1 %3116, float 0.000000e+00, float 1.000000e+00
  %3118 = fadd fast float %3117, %3087
  %3119 = fmul fast float %3117, %3115
  %3120 = fadd fast float %3119, %3088
  br label %3121

; <label>:3121                                    ; preds = %3121, %3086
  %3122 = phi i32 [ 1, %3086 ], [ %3133, %3121 ]
  %3123 = phi float [ %3120, %3086 ], [ %3132, %3121 ]
  %3124 = phi float [ %3118, %3086 ], [ %3130, %3121 ]
  %3125 = getelementptr [4 x float], [4 x float]* %48, i32 0, i32 %3122
  %3126 = load float, float* %3125, align 4, !tbaa !57
  %3127 = fsub fast float %3126, %2858
  %3128 = fcmp fast olt float %3127, 0.000000e+00
  %3129 = select i1 %3128, float 0.000000e+00, float 1.000000e+00
  %3130 = fadd fast float %3129, %3124
  %3131 = fmul fast float %3129, %3127
  %3132 = fadd fast float %3131, %3123
  %3133 = add nuw nsw i32 %3122, 1
  %3134 = icmp eq i32 %3133, 4
  br i1 %3134, label %3135, label %3121, !llvm.loop !59

; <label>:3135                                    ; preds = %3121
  %3136 = add nuw nsw i32 %3089, 1
  %3137 = icmp eq i32 %3136, 8
  br i1 %3137, label %3138, label %3086, !llvm.loop !61

; <label>:3138                                    ; preds = %3135
  %3139 = fdiv fast float 1.000000e+00, %3130
  %3140 = fmul fast float %3139, %3132
  %3141 = fdiv fast float 1.000000e+00, %2858
  %3142 = fmul fast float %3140, %3141
  %3143 = call float @dx.op.unary.f32(i32 7, float %3142)  ; Saturate(value)
  %3144 = call float @dx.op.binary.f32(i32 35, float %3143, float 0.000000e+00)  ; FMax(a,b)
  %3145 = fmul fast float %3130, 3.125000e-02
  %3146 = call float @dx.op.unary.f32(i32 7, float %3145)  ; Saturate(value)
  %3147 = fmul fast float %3146, 2.000000e+00
  %3148 = fadd fast float %3147, -1.000000e+00
  %3149 = fcmp fast ogt float %3148, 0.000000e+00
  %3150 = fcmp fast olt float %3148, 0.000000e+00
  %3151 = zext i1 %3149 to i32
  %3152 = zext i1 %3150 to i32
  %3153 = sub nsw i32 %3151, %3152
  %3154 = sitofp i32 %3153 to float
  %3155 = fmul fast float %3154, %3148
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = fmul fast float %3156, %3156
  %3158 = fmul fast float %3157, %3156
  %3159 = fsub fast float %3156, %3158
  %3160 = fmul fast float %3159, %3144
  %3161 = fsub fast float 1.000000e+00, %3158
  %3162 = fsub fast float %3161, %3160
  %3163 = fmul fast float %3154, 5.000000e-01
  %3164 = fmul fast float %3163, %3162
  %3165 = fsub fast float 5.000000e-01, %3164
  br label %3166

; <label>:3166                                    ; preds = %3138, %3014, %2985, %2861, %2841
  %3167 = phi float [ 1.000000e+00, %2841 ], [ %2927, %2861 ], [ %3012, %2985 ], [ %3080, %3014 ], [ %3165, %3138 ]
  %3168 = fsub fast float %2671, %2500
  %3169 = fmul fast float %3168, %1792
  %3170 = fadd fast float %3169, %2500
  %3171 = fsub fast float %2842, %3170
  %3172 = fmul fast float %3171, %1791
  %3173 = fadd fast float %3172, %3170
  %3174 = fsub fast float %3167, %3173
  %3175 = fmul fast float %3174, %1822
  %3176 = fadd fast float %3175, %3173
  br label %4648

; <label>:3177                                    ; preds = %208
  %3178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.CBufRet.f32 %3178, 1
  %3181 = extractvalue %dx.types.CBufRet.f32 %3178, 3
  %3182 = fmul fast float %3181, %291
  %3183 = fmul fast float %3181, %295
  %3184 = fadd fast float %3182, %3179
  %3185 = fadd fast float %3183, %3180
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.CBufRet.f32 %3186, 1
  %3189 = extractvalue %dx.types.CBufRet.f32 %3186, 3
  %3190 = fmul fast float %3189, %291
  %3191 = fmul fast float %3189, %295
  %3192 = fadd fast float %3190, %3187
  %3193 = fadd fast float %3191, %3188
  %3194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3195 = extractvalue %dx.types.CBufRet.f32 %3194, 1
  %3196 = fsub fast float %3195, %299
  %3197 = extractvalue %dx.types.CBufRet.f32 %3194, 2
  %3198 = fmul fast float %3196, %3197
  %3199 = fsub fast float 1.000000e+00, %3198
  %3200 = call float @dx.op.unary.f32(i32 7, float %3199)  ; Saturate(value)
  br i1 %105, label %3261, label %3201, !dx.controlflow.hints !84

; <label>:3201                                    ; preds = %3177
  %3202 = extractvalue %dx.types.CBufRet.f32 %3186, 2
  %3203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3204 = extractvalue %dx.types.CBufRet.f32 %3203, 2
  %3205 = fadd fast float %3204, %3202
  %3206 = fcmp fast ogt float %3205, 0.000000e+00
  br i1 %3206, label %3207, label %3231, !dx.controlflow.hints !85

; <label>:3207                                    ; preds = %3201
  %3208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3209 = extractvalue %dx.types.CBufRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.CBufRet.f32 %3208, 1
  %3211 = fsub fast float %3192, %3209
  %3212 = fsub fast float %3193, %3210
  %3213 = fcmp fast olt float %3211, 0.000000e+00
  %3214 = fcmp fast olt float %3212, 0.000000e+00
  %3215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3216 = extractvalue %dx.types.CBufRet.f32 %3215, 0
  %3217 = extractvalue %dx.types.CBufRet.f32 %3215, 1
  %3218 = extractvalue %dx.types.CBufRet.f32 %3215, 2
  %3219 = extractvalue %dx.types.CBufRet.f32 %3215, 3
  %3220 = select i1 %3213, float %3216, float %3218
  %3221 = select i1 %3214, float %3217, float %3219
  %3222 = fmul fast float %3220, %3211
  %3223 = fmul fast float %3221, %3212
  %3224 = call float @dx.op.unary.f32(i32 6, float %3222)  ; FAbs(value)
  %3225 = call float @dx.op.unary.f32(i32 6, float %3223)  ; FAbs(value)
  %3226 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %3227 = call float @dx.op.binary.f32(i32 35, float %3224, float %3225)  ; FMax(a,b)
  %3228 = fsub fast float %3226, %3227
  %3229 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  %3230 = fmul fast float %3229, %3200
  br label %3231

; <label>:3231                                    ; preds = %3207, %3201
  %3232 = phi float [ %3230, %3207 ], [ 0.000000e+00, %3201 ]
  %3233 = extractvalue %dx.types.CBufRet.f32 %3178, 2
  %3234 = extractvalue %dx.types.CBufRet.f32 %3203, 1
  %3235 = fadd fast float %3234, %3233
  %3236 = fcmp fast ogt float %3235, 0.000000e+00
  br i1 %3236, label %3237, label %3261, !dx.controlflow.hints !86

; <label>:3237                                    ; preds = %3231
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 0
  %3240 = extractvalue %dx.types.CBufRet.f32 %3238, 1
  %3241 = fsub fast float %3184, %3239
  %3242 = fsub fast float %3185, %3240
  %3243 = fcmp fast olt float %3241, 0.000000e+00
  %3244 = fcmp fast olt float %3242, 0.000000e+00
  %3245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3246 = extractvalue %dx.types.CBufRet.f32 %3245, 0
  %3247 = extractvalue %dx.types.CBufRet.f32 %3245, 1
  %3248 = extractvalue %dx.types.CBufRet.f32 %3245, 2
  %3249 = extractvalue %dx.types.CBufRet.f32 %3245, 3
  %3250 = select i1 %3243, float %3246, float %3248
  %3251 = select i1 %3244, float %3247, float %3249
  %3252 = fmul fast float %3250, %3241
  %3253 = fmul fast float %3251, %3242
  %3254 = call float @dx.op.unary.f32(i32 6, float %3252)  ; FAbs(value)
  %3255 = call float @dx.op.unary.f32(i32 6, float %3253)  ; FAbs(value)
  %3256 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %3257 = call float @dx.op.binary.f32(i32 35, float %3254, float %3255)  ; FMax(a,b)
  %3258 = fsub fast float %3256, %3257
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3260 = fmul fast float %3259, %3200
  br label %3261

; <label>:3261                                    ; preds = %3237, %3231, %3177
  %3262 = phi float [ 0.000000e+00, %3177 ], [ %3260, %3237 ], [ 0.000000e+00, %3231 ]
  %3263 = phi float [ 0.000000e+00, %3177 ], [ %3232, %3237 ], [ %3232, %3231 ]
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 0
  %3266 = extractvalue %dx.types.CBufRet.f32 %3264, 1
  %3267 = fmul fast float %3265, %112
  %3268 = fadd fast float %3267, %3266
  %3269 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 0
  %3272 = extractvalue %dx.types.CBufRet.f32 %3270, 1
  %3273 = fsub fast float %291, %3271
  %3274 = fsub fast float %295, %3272
  %3275 = fcmp fast olt float %3273, 0.000000e+00
  %3276 = fcmp fast olt float %3274, 0.000000e+00
  %3277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.f32 %3277, 0
  %3279 = extractvalue %dx.types.CBufRet.f32 %3277, 1
  %3280 = extractvalue %dx.types.CBufRet.f32 %3277, 2
  %3281 = extractvalue %dx.types.CBufRet.f32 %3277, 3
  %3282 = select i1 %3275, float %3278, float %3280
  %3283 = select i1 %3276, float %3279, float %3281
  %3284 = fmul fast float %3282, %3273
  %3285 = fmul fast float %3283, %3274
  %3286 = call float @dx.op.unary.f32(i32 6, float %3284)  ; FAbs(value)
  %3287 = call float @dx.op.unary.f32(i32 6, float %3285)  ; FAbs(value)
  %3288 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %3289 = call float @dx.op.binary.f32(i32 35, float %3286, float %3287)  ; FMax(a,b)
  %3290 = fsub fast float %3288, %3289
  %3291 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  %3292 = call float @dx.op.binary.f32(i32 36, float %3291, float %3269)  ; FMin(a,b)
  %3293 = fmul fast float %3292, %3200
  %3294 = fsub fast float %3262, %3293
  %3295 = fsub fast float %3263, %3262
  %3296 = fsub fast float %3295, %3293
  %3297 = call float @dx.op.binary.f32(i32 35, float %3262, float %3263)  ; FMax(a,b)
  %3298 = call float @dx.op.binary.f32(i32 35, float %3293, float %3297)  ; FMax(a,b)
  %3299 = fcmp fast olt float %3298, 1.000000e+00
  %3300 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %3301 = fcmp fast une float %3300, 0.000000e+00
  %3302 = and i1 %3299, %3301
  br i1 %3302, label %3303, label %3970, !dx.controlflow.hints !87

; <label>:3303                                    ; preds = %3261
  %3304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3305 = extractvalue %dx.types.CBufRet.f32 %3304, 0
  %3306 = extractvalue %dx.types.CBufRet.f32 %3304, 1
  %3307 = extractvalue %dx.types.CBufRet.f32 %3304, 2
  %3308 = extractvalue %dx.types.CBufRet.f32 %3304, 3
  %3309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.CBufRet.f32 %3309, 1
  %3312 = extractvalue %dx.types.CBufRet.f32 %3309, 2
  %3313 = extractvalue %dx.types.CBufRet.f32 %3309, 3
  %3314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3314, 0
  %3316 = extractvalue %dx.types.CBufRet.f32 %3314, 1
  %3317 = extractvalue %dx.types.CBufRet.f32 %3314, 2
  %3318 = extractvalue %dx.types.CBufRet.f32 %3314, 3
  %3319 = fmul fast float %3305, %209
  %3320 = call float @dx.op.tertiary.f32(i32 46, float %210, float %3306, float %3319)  ; FMad(a,b,c)
  %3321 = call float @dx.op.tertiary.f32(i32 46, float %211, float %3307, float %3320)  ; FMad(a,b,c)
  %3322 = fadd fast float %3321, %3308
  %3323 = fmul fast float %3310, %209
  %3324 = call float @dx.op.tertiary.f32(i32 46, float %210, float %3311, float %3323)  ; FMad(a,b,c)
  %3325 = call float @dx.op.tertiary.f32(i32 46, float %211, float %3312, float %3324)  ; FMad(a,b,c)
  %3326 = fadd fast float %3325, %3313
  %3327 = fmul fast float %3315, %209
  %3328 = call float @dx.op.tertiary.f32(i32 46, float %210, float %3316, float %3327)  ; FMad(a,b,c)
  %3329 = call float @dx.op.tertiary.f32(i32 46, float %211, float %3317, float %3328)  ; FMad(a,b,c)
  %3330 = fadd fast float %3329, %3318
  %3331 = fcmp fast oge float %3322, 1.000000e+00
  %3332 = fcmp fast oge float %3326, 1.000000e+00
  %3333 = or i1 %3331, %3332
  %3334 = fcmp fast olt float %3322, 0.000000e+00
  %3335 = fcmp fast olt float %3326, 0.000000e+00
  %3336 = or i1 %3334, %3335
  %3337 = or i1 %3333, %3336
  br i1 %3337, label %3970, label %3338, !dx.controlflow.hints !67

; <label>:3338                                    ; preds = %3303
  %3339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3340 = extractvalue %dx.types.CBufRet.f32 %3339, 0
  %3341 = extractvalue %dx.types.CBufRet.f32 %3339, 1
  %3342 = extractvalue %dx.types.CBufRet.f32 %3339, 2
  %3343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.f32 %3343, 1
  %3345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.i32 %3345, 2
  %3347 = uitofp i32 %3346 to float
  %3348 = extractvalue %dx.types.CBufRet.i32 %3345, 3
  %3349 = uitofp i32 %3348 to float
  %3350 = extractvalue %dx.types.CBufRet.f32 %3339, 3
  %3351 = fmul fast float %3350, 2.000000e+00
  %3352 = fsub fast float %3322, %3340
  %3353 = fsub fast float %3326, %3341
  %3354 = fmul fast float %3351, %3352
  %3355 = fmul fast float %3351, %3353
  %3356 = fdiv fast float 1.000000e+00, %261
  %3357 = fmul fast float %3355, %3356
  %3358 = call float @dx.op.unary.f32(i32 6, float %3357)  ; FAbs(value)
  %3359 = fmul fast float %3342, %211
  %3360 = fmul fast float %3359, %3351
  %3361 = call float @dx.op.unary.f32(i32 6, float %3360)  ; FAbs(value)
  %3362 = call float @dx.op.unary.f32(i32 6, float %3354)  ; FAbs(value)
  %3363 = call float @dx.op.binary.f32(i32 35, float %3361, float %3358)  ; FMax(a,b)
  %3364 = call float @dx.op.binary.f32(i32 35, float %3362, float %3363)  ; FMax(a,b)
  %3365 = fmul fast float %3364, 2.000000e+00
  %3366 = call float @dx.op.unary.f32(i32 23, float %3365)  ; Log(value)
  %3367 = call float @dx.op.binary.f32(i32 35, float %3366, float %3347)  ; FMax(a,b)
  %3368 = call float @dx.op.unary.f32(i32 22, float %3367)  ; Frc(value)
  %3369 = fadd fast float %3368, 0xBFEA666660000000
  %3370 = fmul fast float %3369, 8.000000e+00
  %3371 = call float @dx.op.unary.f32(i32 7, float %3370)  ; Saturate(value)
  %3372 = call float @dx.op.unary.f32(i32 27, float %3367)  ; Round_ni(value)
  %3373 = fadd fast float %3372, %3371
  %3374 = call float @dx.op.binary.f32(i32 36, float %3373, float %3349)  ; FMin(a,b)
  %3375 = call float @dx.op.unary.f32(i32 27, float %3374)  ; Round_ni(value)
  %3376 = fsub fast float -0.000000e+00, %3375
  %3377 = call float @dx.op.unary.f32(i32 21, float %3376)  ; Exp(value)
  %3378 = fmul fast float %3377, %3351
  %3379 = fmul fast float %3378, %3322
  %3380 = fmul fast float %3378, %3326
  %3381 = fmul fast float %3379, 5.000000e-01
  %3382 = fmul fast float %3380, 5.000000e-01
  %3383 = fadd fast float %3381, 5.000000e-01
  %3384 = fadd fast float %3382, 5.000000e-01
  %3385 = fmul fast float %3379, 2.500000e-01
  %3386 = fmul fast float %3380, 2.500000e-01
  %3387 = fadd fast float %3385, 5.000000e-01
  %3388 = fadd fast float %3386, 5.000000e-01
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = and i32 %3390, 536870911
  %3392 = lshr i32 %3391, 9
  %3393 = uitofp i32 %3392 to float
  %3394 = fmul fast float %3393, %3322
  %3395 = fmul fast float %3393, %3326
  %3396 = call float @dx.op.unary.f32(i32 22, float %3394)  ; Frc(value)
  %3397 = call float @dx.op.unary.f32(i32 22, float %3395)  ; Frc(value)
  %3398 = call float @dx.op.unary.f32(i32 22, float %3371)  ; Frc(value)
  %3399 = fcmp fast une float %3398, 0.000000e+00
  br i1 %3399, label %3400, label %3498, !dx.controlflow.hints !68

; <label>:3400                                    ; preds = %3338
  %3401 = call float @dx.op.unary.f32(i32 21, float %3372)  ; Exp(value)
  %3402 = fmul fast float %3401, 1.953125e-03
  %3403 = fcmp fast olt float %3396, %3402
  %3404 = fcmp fast olt float %3397, %3402
  %3405 = or i1 %3403, %3404
  %3406 = fsub fast float 1.000000e+00, %3402
  %3407 = fcmp fast ogt float %3396, %3406
  %3408 = fcmp fast ogt float %3397, %3406
  %3409 = or i1 %3407, %3408
  %3410 = or i1 %3405, %3409
  br i1 %3410, label %3411, label %3577, !dx.controlflow.hints !69

; <label>:3411                                    ; preds = %3400
  %3412 = fmul fast float %3344, 5.000000e-01
  %3413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.i32 %3413, 0
  %3415 = fmul fast float %3326, 3.530000e+02
  %3416 = uitofp i32 %3391 to float
  %3417 = fmul fast float %3415, %3416
  %3418 = fmul fast float %3322, 6.130000e+02
  %3419 = fadd fast float %3417, %3418
  %3420 = fptoui float %3419 to i32
  %3421 = add i32 %3414, %3420
  %3422 = mul i32 %3421, -63
  %3423 = lshr i32 %3422, 17
  %3424 = xor i32 %3423, %3422
  %3425 = mul i32 %3424, -511
  %3426 = mul i32 %3424, -8176
  %3427 = xor i32 %3425, %3426
  %3428 = mul i32 %3427, -7
  %3429 = mul i32 %3427, -7168
  %3430 = xor i32 %3428, %3429
  %3431 = lshr i32 %3430, 15
  %3432 = xor i32 %3431, %3428
  %3433 = and i32 %3432, 15
  %3434 = mul i32 %3433, 2
  %3435 = add i32 0, %3434
  %3436 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3435
  %3437 = load float, float* %3436, align 4
  %3438 = mul i32 %3433, 2
  %3439 = add i32 1, %3438
  %3440 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3439
  %3441 = load float, float* %3440, align 4
  %3442 = fmul fast float %3326, 2.770000e+02
  %3443 = fmul fast float %3442, %3416
  %3444 = fmul fast float %3322, 5.990000e+02
  %3445 = fadd fast float %3443, %3444
  %3446 = fptoui float %3445 to i32
  %3447 = mul i32 %3446, -63
  %3448 = lshr i32 %3447, 17
  %3449 = xor i32 %3448, %3447
  %3450 = mul i32 %3449, -511
  %3451 = mul i32 %3449, -8176
  %3452 = xor i32 %3450, %3451
  %3453 = mul i32 %3452, -7
  %3454 = mul i32 %3452, -7168
  %3455 = xor i32 %3453, %3454
  %3456 = lshr i32 %3455, 15
  %3457 = xor i32 %3456, %3453
  %3458 = and i32 %3457, 63
  %3459 = mul i32 %3458, 2
  %3460 = add i32 0, %3459
  %3461 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3460
  %3462 = load float, float* %3461, align 4
  %3463 = mul i32 %3458, 2
  %3464 = add i32 1, %3463
  %3465 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3464
  %3466 = load float, float* %3465, align 4
  %3467 = call float @dx.op.dot2.f32(i32 54, float %3437, float %3441, float %3462, float %3466)  ; Dot2(ax,ay,bx,by)
  %3468 = fsub fast float -0.000000e+00, %3462
  %3469 = call float @dx.op.dot2.f32(i32 54, float %3437, float %3441, float %3468, float %3466)  ; Dot2(ax,ay,bx,by)
  %3470 = fmul fast float %3467, %3412
  %3471 = fmul fast float %3469, %3412
  %3472 = fdiv fast float 2.000000e+00, %3378
  %3473 = fmul fast float %3401, 9.765625e-04
  %3474 = fcmp fast olt float %3396, %3473
  %3475 = fcmp fast olt float %3397, %3473
  %3476 = or i1 %3474, %3475
  %3477 = fsub fast float 1.000000e+00, %3473
  %3478 = fcmp fast ogt float %3396, %3477
  %3479 = fcmp fast ogt float %3397, %3477
  %3480 = or i1 %3478, %3479
  %3481 = or i1 %3476, %3480
  %3482 = fmul fast float %3470, 2.000000e+00
  br i1 %3481, label %3483, label %3487, !dx.controlflow.hints !70

; <label>:3483                                    ; preds = %3411
  %3484 = fmul fast float %3471, 2.000000e+00
  %3485 = fadd fast float %3482, %3383
  %3486 = fadd fast float %3484, %3384
  br label %3487

; <label>:3487                                    ; preds = %3483, %3411
  %3488 = phi float [ %3485, %3483 ], [ %3383, %3411 ]
  %3489 = phi float [ %3486, %3483 ], [ %3384, %3411 ]
  %3490 = phi i32 [ 3, %3483 ], [ 2, %3411 ]
  %3491 = fadd fast float %3470, %3387
  %3492 = fadd fast float %3471, %3388
  %3493 = fmul fast float %3482, %3472
  %3494 = fmul fast float %3472, 2.000000e+00
  %3495 = fmul fast float %3494, %3471
  %3496 = fadd fast float %3493, %3322
  %3497 = fadd fast float %3495, %3326
  br label %3577

; <label>:3498                                    ; preds = %3338
  %3499 = call float @dx.op.unary.f32(i32 21, float %3375)  ; Exp(value)
  %3500 = fmul fast float %3499, 9.765625e-04
  %3501 = fcmp fast olt float %3396, %3500
  %3502 = fcmp fast olt float %3397, %3500
  %3503 = or i1 %3501, %3502
  %3504 = fsub fast float 1.000000e+00, %3500
  %3505 = fcmp fast ogt float %3396, %3504
  %3506 = fcmp fast ogt float %3397, %3504
  %3507 = or i1 %3505, %3506
  %3508 = or i1 %3503, %3507
  br i1 %3508, label %3509, label %3577, !dx.controlflow.hints !71

; <label>:3509                                    ; preds = %3498
  %3510 = fmul fast float %3344, 5.000000e-01
  %3511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.i32 %3511, 0
  %3513 = fmul fast float %3326, 3.530000e+02
  %3514 = uitofp i32 %3391 to float
  %3515 = fmul fast float %3513, %3514
  %3516 = fmul fast float %3322, 6.130000e+02
  %3517 = fadd fast float %3515, %3516
  %3518 = fptoui float %3517 to i32
  %3519 = add i32 %3512, %3518
  %3520 = mul i32 %3519, -63
  %3521 = lshr i32 %3520, 17
  %3522 = xor i32 %3521, %3520
  %3523 = mul i32 %3522, -511
  %3524 = mul i32 %3522, -8176
  %3525 = xor i32 %3523, %3524
  %3526 = mul i32 %3525, -7
  %3527 = mul i32 %3525, -7168
  %3528 = xor i32 %3526, %3527
  %3529 = lshr i32 %3528, 15
  %3530 = xor i32 %3529, %3526
  %3531 = and i32 %3530, 15
  %3532 = mul i32 %3531, 2
  %3533 = add i32 0, %3532
  %3534 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3533
  %3535 = load float, float* %3534, align 4
  %3536 = mul i32 %3531, 2
  %3537 = add i32 1, %3536
  %3538 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3537
  %3539 = load float, float* %3538, align 4
  %3540 = fmul fast float %3326, 2.770000e+02
  %3541 = fmul fast float %3540, %3514
  %3542 = fmul fast float %3322, 5.990000e+02
  %3543 = fadd fast float %3541, %3542
  %3544 = fptoui float %3543 to i32
  %3545 = mul i32 %3544, -63
  %3546 = lshr i32 %3545, 17
  %3547 = xor i32 %3546, %3545
  %3548 = mul i32 %3547, -511
  %3549 = mul i32 %3547, -8176
  %3550 = xor i32 %3548, %3549
  %3551 = mul i32 %3550, -7
  %3552 = mul i32 %3550, -7168
  %3553 = xor i32 %3551, %3552
  %3554 = lshr i32 %3553, 15
  %3555 = xor i32 %3554, %3551
  %3556 = and i32 %3555, 63
  %3557 = mul i32 %3556, 2
  %3558 = add i32 0, %3557
  %3559 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3558
  %3560 = load float, float* %3559, align 4
  %3561 = mul i32 %3556, 2
  %3562 = add i32 1, %3561
  %3563 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3562
  %3564 = load float, float* %3563, align 4
  %3565 = call float @dx.op.dot2.f32(i32 54, float %3535, float %3539, float %3560, float %3564)  ; Dot2(ax,ay,bx,by)
  %3566 = fsub fast float -0.000000e+00, %3560
  %3567 = call float @dx.op.dot2.f32(i32 54, float %3535, float %3539, float %3566, float %3564)  ; Dot2(ax,ay,bx,by)
  %3568 = fmul fast float %3565, %3510
  %3569 = fmul fast float %3567, %3510
  %3570 = fadd fast float %3568, %3383
  %3571 = fadd fast float %3569, %3384
  %3572 = fdiv fast float 2.000000e+00, %3378
  %3573 = fmul fast float %3572, %3568
  %3574 = fmul fast float %3569, %3572
  %3575 = fadd fast float %3573, %3322
  %3576 = fadd fast float %3574, %3326
  br label %3577

; <label>:3577                                    ; preds = %3509, %3498, %3487, %3400
  %3578 = phi float [ %3491, %3487 ], [ %3387, %3400 ], [ %3387, %3509 ], [ %3387, %3498 ]
  %3579 = phi float [ %3492, %3487 ], [ %3388, %3400 ], [ %3388, %3509 ], [ %3388, %3498 ]
  %3580 = phi float [ %3488, %3487 ], [ %3383, %3400 ], [ %3570, %3509 ], [ %3383, %3498 ]
  %3581 = phi float [ %3489, %3487 ], [ %3384, %3400 ], [ %3571, %3509 ], [ %3384, %3498 ]
  %3582 = phi i32 [ %3490, %3487 ], [ 0, %3400 ], [ 1, %3509 ], [ 0, %3498 ]
  %3583 = phi float [ %3496, %3487 ], [ %3322, %3400 ], [ %3575, %3509 ], [ %3322, %3498 ]
  %3584 = phi float [ %3497, %3487 ], [ %3326, %3400 ], [ %3576, %3509 ], [ %3326, %3498 ]
  %3585 = fsub fast float %3349, %3347
  %3586 = fptoui float %3585 to i32
  %3587 = add i32 %3586, 320
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 %3587)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.CBufRet.f32 %3588, 1
  %3591 = fcmp fast une float %3374, %3349
  %3592 = fsub fast float %3583, %3589
  %3593 = fsub fast float %3584, %3590
  %3594 = call float @dx.op.unary.f32(i32 6, float %3592)  ; FAbs(value)
  %3595 = call float @dx.op.unary.f32(i32 6, float %3593)  ; FAbs(value)
  %3596 = fmul fast float %3594, %3378
  %3597 = fmul fast float %3595, %3378
  %3598 = fcmp fast olt float %3596, 1.000000e+00
  %3599 = fcmp fast olt float %3597, 1.000000e+00
  %3600 = and i1 %3598, %3599
  %3601 = or i1 %3591, %3600
  br i1 %3601, label %3602, label %3970, !dx.controlflow.hints !72

; <label>:3602                                    ; preds = %3577
  %3603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3604 = extractvalue %dx.types.CBufRet.i32 %3603, 2
  %3605 = sitofp i32 %3604 to float
  %3606 = fsub fast float %3374, %3605
  %3607 = call float @dx.op.unary.f32(i32 27, float %3606)  ; Round_ni(value)
  %3608 = call float @dx.op.unary.f32(i32 22, float %3374)  ; Frc(value)
  %3609 = icmp eq i32 %3582, 0
  %3610 = call float @dx.op.unary.f32(i32 22, float %3580)  ; Frc(value)
  %3611 = call float @dx.op.unary.f32(i32 22, float %3581)  ; Frc(value)
  br i1 %3609, label %3682, label %3612, !dx.controlflow.hints !73

; <label>:3612                                    ; preds = %3602
  %3613 = and i32 %3582, 1
  %3614 = icmp eq i32 %3613, 0
  br i1 %3614, label %3628, label %3615, !dx.controlflow.hints !74

; <label>:3615                                    ; preds = %3612
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = fmul fast float %3610, %3617
  %3619 = fmul fast float %3611, %3617
  %3620 = fptoui float %3618 to i32
  %3621 = fptoui float %3619 to i32
  %3622 = fptoui float %3607 to i32
  %3623 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %3620, i32 %3621, i32 %3622, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.ResRet.f32 %3623, 3
  br label %3634

; <label>:3628                                    ; preds = %3612
  %3629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %3610, float %3611, float %3607, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3632 = extractvalue %dx.types.ResRet.f32 %3629, 2
  %3633 = extractvalue %dx.types.ResRet.f32 %3629, 3
  br label %3634

; <label>:3634                                    ; preds = %3628, %3615
  %3635 = phi float [ %3624, %3615 ], [ %3630, %3628 ]
  %3636 = phi float [ %3625, %3615 ], [ %3631, %3628 ]
  %3637 = phi float [ %3626, %3615 ], [ %3632, %3628 ]
  %3638 = phi float [ %3627, %3615 ], [ %3633, %3628 ]
  %3639 = fcmp fast ogt float %3608, 0.000000e+00
  br i1 %3639, label %3640, label %3710, !dx.controlflow.hints !75

; <label>:3640                                    ; preds = %3634
  %3641 = and i32 %3582, 2
  %3642 = icmp eq i32 %3641, 0
  %3643 = fadd fast float %3607, 1.000000e+00
  %3644 = call float @dx.op.unary.f32(i32 22, float %3578)  ; Frc(value)
  %3645 = call float @dx.op.unary.f32(i32 22, float %3579)  ; Frc(value)
  br i1 %3642, label %3659, label %3646, !dx.controlflow.hints !76

; <label>:3646                                    ; preds = %3640
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = fmul fast float %3644, %3648
  %3650 = fmul fast float %3645, %3648
  %3651 = fptoui float %3649 to i32
  %3652 = fptoui float %3650 to i32
  %3653 = fptoui float %3643 to i32
  %3654 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %3651, i32 %3652, i32 %3653, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3657 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3658 = extractvalue %dx.types.ResRet.f32 %3654, 3
  br label %3665

; <label>:3659                                    ; preds = %3640
  %3660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %3644, float %3645, float %3643, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3661 = extractvalue %dx.types.ResRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.ResRet.f32 %3660, 1
  %3663 = extractvalue %dx.types.ResRet.f32 %3660, 2
  %3664 = extractvalue %dx.types.ResRet.f32 %3660, 3
  br label %3665

; <label>:3665                                    ; preds = %3659, %3646
  %3666 = phi float [ %3655, %3646 ], [ %3661, %3659 ]
  %3667 = phi float [ %3656, %3646 ], [ %3662, %3659 ]
  %3668 = phi float [ %3657, %3646 ], [ %3663, %3659 ]
  %3669 = phi float [ %3658, %3646 ], [ %3664, %3659 ]
  %3670 = fsub fast float %3666, %3635
  %3671 = fsub fast float %3667, %3636
  %3672 = fsub fast float %3668, %3637
  %3673 = fsub fast float %3669, %3638
  %3674 = fmul fast float %3670, %3608
  %3675 = fmul fast float %3671, %3608
  %3676 = fmul fast float %3672, %3608
  %3677 = fmul fast float %3673, %3608
  %3678 = fadd fast float %3674, %3635
  %3679 = fadd fast float %3675, %3636
  %3680 = fadd fast float %3676, %3637
  %3681 = fadd fast float %3677, %3638
  br label %3710

; <label>:3682                                    ; preds = %3602
  %3683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %3610, float %3611, float %3607, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.ResRet.f32 %3683, 1
  %3686 = extractvalue %dx.types.ResRet.f32 %3683, 2
  %3687 = extractvalue %dx.types.ResRet.f32 %3683, 3
  %3688 = fcmp fast ogt float %3608, 0.000000e+00
  br i1 %3688, label %3689, label %3710, !dx.controlflow.hints !77

; <label>:3689                                    ; preds = %3682
  %3690 = fadd fast float %3607, 1.000000e+00
  %3691 = call float @dx.op.unary.f32(i32 22, float %3578)  ; Frc(value)
  %3692 = call float @dx.op.unary.f32(i32 22, float %3579)  ; Frc(value)
  %3693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %3691, float %3692, float %3690, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = extractvalue %dx.types.ResRet.f32 %3693, 1
  %3696 = extractvalue %dx.types.ResRet.f32 %3693, 2
  %3697 = extractvalue %dx.types.ResRet.f32 %3693, 3
  %3698 = fsub fast float %3694, %3684
  %3699 = fsub fast float %3695, %3685
  %3700 = fsub fast float %3696, %3686
  %3701 = fsub fast float %3697, %3687
  %3702 = fmul fast float %3698, %3608
  %3703 = fmul fast float %3699, %3608
  %3704 = fmul fast float %3700, %3608
  %3705 = fmul fast float %3701, %3608
  %3706 = fadd fast float %3702, %3684
  %3707 = fadd fast float %3703, %3685
  %3708 = fadd fast float %3704, %3686
  %3709 = fadd fast float %3705, %3687
  br label %3710

; <label>:3710                                    ; preds = %3689, %3682, %3665, %3634
  %3711 = phi float [ %3678, %3665 ], [ %3635, %3634 ], [ %3706, %3689 ], [ %3684, %3682 ]
  %3712 = phi float [ %3679, %3665 ], [ %3636, %3634 ], [ %3707, %3689 ], [ %3685, %3682 ]
  %3713 = phi float [ %3680, %3665 ], [ %3637, %3634 ], [ %3708, %3689 ], [ %3686, %3682 ]
  %3714 = phi float [ %3681, %3665 ], [ %3638, %3634 ], [ %3709, %3689 ], [ %3687, %3682 ]
  %3715 = fadd fast float %3711, -5.000000e-01
  %3716 = fadd fast float %3713, -5.000000e-01
  %3717 = fmul fast float %3715, 0xBFD5555560000000
  %3718 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3716, float %3717)  ; FMad(a,b,c)
  %3719 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3712, float 0.000000e+00)  ; FMad(a,b,c)
  %3720 = fadd fast float %3719, %3714
  %3721 = fmul fast float %3715, -7.500000e-01
  %3722 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3716, float %3721)  ; FMad(a,b,c)
  %3723 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3712, float 0.000000e+00)  ; FMad(a,b,c)
  %3724 = fadd fast float %3723, %3714
  %3725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3726 = extractvalue %dx.types.CBufRet.f32 %3725, 0
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.CBufRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3731 = extractvalue %dx.types.CBufRet.f32 %3727, 3
  %3732 = fsub fast float %3728, %3718
  %3733 = fsub fast float %3729, %3720
  %3734 = fsub fast float %3730, %3722
  %3735 = fsub fast float %3731, %3724
  %3736 = fmul fast float %3732, %3726
  %3737 = fmul fast float %3733, %3726
  %3738 = fmul fast float %3734, %3726
  %3739 = fmul fast float %3735, %3726
  %3740 = fadd fast float %3736, %3718
  %3741 = fadd fast float %3737, %3720
  %3742 = fadd fast float %3738, %3722
  %3743 = fadd fast float %3739, %3724
  %3744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = and i32 %3745, 536870911
  %3747 = uitofp i32 %3746 to float
  %3748 = fmul fast float %3747, %3583
  %3749 = fmul fast float %3747, %3584
  %3750 = fptoui float %3748 to i32
  %3751 = fptoui float %3749 to i32
  %3752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.i32 %3752, 0
  %3754 = and i32 %3753, 31
  %3755 = lshr i32 %3750, %3754
  %3756 = lshr i32 %3751, %3754
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = and i32 %3758, 31
  %3760 = shl i32 1, %3759
  %3761 = call i32 @dx.op.binary.i32(i32 40, i32 %3760, i32 4)  ; UMin(a,b)
  %3762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.i32 %3762, 0
  %3764 = extractvalue %dx.types.ResRet.i32 %3762, 1
  %3765 = icmp eq i32 %3761, 0
  br i1 %3765, label %3807, label %3766

; <label>:3766                                    ; preds = %3710
  br label %3767

; <label>:3767                                    ; preds = %3795, %3766
  %3768 = phi i32 [ %3798, %3795 ], [ 0, %3766 ]
  %3769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3770 = extractvalue %dx.types.ResRet.i32 %3769, 0
  %3771 = lshr i32 %3770, 16
  %3772 = and i32 %3771, 31
  %3773 = shl i32 %3756, %3772
  %3774 = add i32 %3773, %3755
  %3775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.i32 %3775, 0
  %3777 = and i32 %3776, 31
  %3778 = shl i32 %3774, %3777
  %3779 = add i32 %3778, %3768
  %3780 = shl i32 %3779, 2
  %3781 = add i32 %3780, 32
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = icmp slt i32 %3783, 0
  %3785 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %3768
  %3786 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %3768
  %3787 = bitcast float* %3785 to i32*
  %3788 = bitcast float* %3786 to i32*
  br i1 %3784, label %3789, label %3795, !dx.controlflow.hints !78

; <label>:3789                                    ; preds = %3767
  %3790 = and i32 %3783, 1073741823
  %3791 = add nuw nsw i32 %3790, 20
  %3792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3791, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.i32 %3792, 0
  %3794 = extractvalue %dx.types.ResRet.i32 %3792, 1
  br label %3795

; <label>:3795                                    ; preds = %3789, %3767
  %3796 = phi i32 [ %3793, %3789 ], [ %3763, %3767 ]
  %3797 = phi i32 [ %3794, %3789 ], [ %3764, %3767 ]
  store i32 %3796, i32* %3787, align 4
  store i32 %3797, i32* %3788, align 4
  %3798 = add nuw i32 %3768, 1
  %3799 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.i32 %3799, 2
  %3801 = icmp eq i32 %3800, 0
  %3802 = icmp ugt i32 %3783, -1073741825
  %3803 = and i1 %3802, %3801
  %3804 = icmp ult i32 %3798, %3761
  %3805 = and i1 %3803, %3804
  br i1 %3805, label %3767, label %3806, !dx.controlflow.hints !79

; <label>:3806                                    ; preds = %3795
  br label %3807

; <label>:3807                                    ; preds = %3806, %3710
  %3808 = phi i32 [ 0, %3710 ], [ %3798, %3806 ]
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 2
  %3811 = fptoui float %3810 to i32
  %3812 = icmp eq i32 %3811, 0
  br i1 %3812, label %3864, label %3813

; <label>:3813                                    ; preds = %3807
  br label %3814

; <label>:3814                                    ; preds = %3859, %3813
  %3815 = phi i32 [ %3860, %3859 ], [ %3808, %3813 ]
  %3816 = phi i32 [ %3861, %3859 ], [ 0, %3813 ]
  %3817 = lshr i32 %3816, 2
  %3818 = and i32 %3816, 3
  %3819 = add nuw nsw i32 %3817, 83
  %3820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 %3819)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.i32 %3820, 0
  %3822 = extractvalue %dx.types.CBufRet.i32 %3820, 1
  %3823 = extractvalue %dx.types.CBufRet.i32 %3820, 2
  %3824 = extractvalue %dx.types.CBufRet.i32 %3820, 3
  %3825 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %3821, i32* %3825, align 4
  %3826 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %3822, i32* %3826, align 4
  %3827 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %3823, i32* %3827, align 4
  %3828 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %3824, i32* %3828, align 4
  %3829 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 %3818
  %3830 = load i32, i32* %3829, align 4, !tbaa !50
  %3831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.i32 %3831, 0
  %3833 = lshr i32 %3832, 16
  %3834 = and i32 %3833, 31
  %3835 = shl i32 %3756, %3834
  %3836 = add i32 %3835, %3755
  %3837 = shl i32 %3836, 2
  %3838 = add i32 %3837, %3830
  %3839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.i32 %3839, 0
  %3841 = icmp eq i32 %3840, 0
  br i1 %3841, label %3859, label %3842, !dx.controlflow.hints !80

; <label>:3842                                    ; preds = %3814
  %3843 = icmp slt i32 %3840, 0
  %3844 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %3815
  %3845 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %3815
  %3846 = bitcast float* %3844 to i32*
  %3847 = bitcast float* %3845 to i32*
  br i1 %3843, label %3848, label %3855, !dx.controlflow.hints !81

; <label>:3848                                    ; preds = %3842
  %3849 = and i32 %3840, 1073741823
  %3850 = add i32 %3830, 20
  %3851 = add i32 %3850, %3849
  %3852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.i32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.i32 %3852, 1
  br label %3855

; <label>:3855                                    ; preds = %3848, %3842
  %3856 = phi i32 [ %3853, %3848 ], [ %3763, %3842 ]
  %3857 = phi i32 [ %3854, %3848 ], [ %3764, %3842 ]
  store i32 %3856, i32* %3846, align 4
  store i32 %3857, i32* %3847, align 4
  %3858 = add i32 %3815, 1
  br label %3859

; <label>:3859                                    ; preds = %3855, %3814
  %3860 = phi i32 [ %3815, %3814 ], [ %3858, %3855 ]
  %3861 = add nuw i32 %3816, 1
  %3862 = icmp eq i32 %3861, %3811
  br i1 %3862, label %3863, label %3814

; <label>:3863                                    ; preds = %3859
  br label %3864

; <label>:3864                                    ; preds = %3863, %3807
  %3865 = phi i32 [ %3808, %3807 ], [ %3860, %3863 ]
  %3866 = icmp eq i32 %3865, 1
  %3867 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 0
  %3868 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 0
  br i1 %3866, label %3869, label %3872, !dx.controlflow.hints !82

; <label>:3869                                    ; preds = %3864
  %3870 = load float, float* %3867, align 4
  %3871 = load float, float* %3868, align 4
  br label %3899

; <label>:3872                                    ; preds = %3864
  %3873 = load float, float* %3867, align 4
  %3874 = load float, float* %3868, align 4
  %3875 = fdiv fast float 1.000000e+00, %3874
  %3876 = fsub fast float %3873, %3875
  %3877 = icmp ugt i32 %3865, 1
  br i1 %3877, label %3878, label %3894

; <label>:3878                                    ; preds = %3872
  br label %3879

; <label>:3879                                    ; preds = %3879, %3878
  %3880 = phi float [ %3889, %3879 ], [ %3876, %3878 ]
  %3881 = phi float [ %3890, %3879 ], [ %3873, %3878 ]
  %3882 = phi i32 [ %3891, %3879 ], [ 1, %3878 ]
  %3883 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %3882
  %3884 = load float, float* %3883, align 4
  %3885 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %3882
  %3886 = load float, float* %3885, align 4
  %3887 = fdiv fast float 1.000000e+00, %3886
  %3888 = fsub fast float %3884, %3887
  %3889 = call float @dx.op.binary.f32(i32 36, float %3880, float %3888)  ; FMin(a,b)
  %3890 = call float @dx.op.binary.f32(i32 35, float %3881, float %3884)  ; FMax(a,b)
  %3891 = add nuw i32 %3882, 1
  %3892 = icmp eq i32 %3891, %3865
  br i1 %3892, label %3893, label %3879

; <label>:3893                                    ; preds = %3879
  br label %3894

; <label>:3894                                    ; preds = %3893, %3872
  %3895 = phi float [ %3876, %3872 ], [ %3889, %3893 ]
  %3896 = phi float [ %3873, %3872 ], [ %3890, %3893 ]
  %3897 = fsub fast float %3896, %3895
  %3898 = fdiv fast float 1.000000e+00, %3897
  br label %3899

; <label>:3899                                    ; preds = %3894, %3869
  %3900 = phi float [ %3870, %3869 ], [ %3896, %3894 ]
  %3901 = phi float [ %3871, %3869 ], [ %3898, %3894 ]
  %3902 = fadd fast float %3330, %3900
  %3903 = fmul fast float %3902, %3901
  %3904 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3905 = fmul fast float %3904, 2.000000e+00
  %3906 = fsub fast float 1.000000e+00, %3905
  %3907 = fmul fast float %3740, %3740
  %3908 = fsub fast float %3741, %3907
  %3909 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3908)  ; FMax(a,b)
  %3910 = fdiv fast float 1.000000e+00, %3909
  %3911 = fmul fast float %3741, %3740
  %3912 = fsub fast float %3742, %3911
  %3913 = fsub fast float %3906, %3740
  %3914 = fmul fast float %3906, %3906
  %3915 = fsub fast float %3914, %3741
  %3916 = fmul fast float %3910, %3912
  %3917 = fmul fast float %3916, %3913
  %3918 = fsub fast float %3915, %3917
  %3919 = fmul fast float %3741, %3741
  %3920 = fsub fast float %3743, %3919
  %3921 = fmul fast float %3912, %3912
  %3922 = fmul fast float %3921, %3910
  %3923 = fsub fast float %3920, %3922
  %3924 = fdiv fast float %3918, %3923
  %3925 = fmul fast float %3924, %3912
  %3926 = fsub fast float %3913, %3925
  %3927 = fmul fast float %3926, %3910
  %3928 = fmul fast float %3927, %3740
  %3929 = fsub fast float 1.000000e+00, %3928
  %3930 = fmul fast float %3924, %3741
  %3931 = fsub fast float %3929, %3930
  %3932 = fmul fast float %3927, %3927
  %3933 = fmul fast float %3924, 4.000000e+00
  %3934 = fmul fast float %3933, %3931
  %3935 = fsub fast float %3932, %3934
  %3936 = call float @dx.op.unary.f32(i32 24, float %3935)  ; Sqrt(value)
  %3937 = fcmp fast oge float %3927, 0.000000e+00
  %3938 = fsub fast float -0.000000e+00, %3936
  %3939 = select i1 %3937, float %3938, float %3936
  %3940 = fsub fast float %3939, %3927
  %3941 = fdiv fast float %3940, %3924
  %3942 = fdiv fast float %3931, %3940
  %3943 = fmul fast float %3941, 5.000000e-01
  %3944 = fmul fast float %3942, 2.000000e+00
  %3945 = select i1 %3937, float %3943, float %3944
  %3946 = select i1 %3937, float %3944, float %3943
  %3947 = call float @dx.op.binary.f32(i32 35, float %3945, float %3946)  ; FMax(a,b)
  %3948 = call float @dx.op.binary.f32(i32 36, float %3945, float %3946)  ; FMin(a,b)
  %3949 = fcmp fast ogt float %3906, %3947
  %3950 = fsub fast float %3906, %3948
  %3951 = fsub fast float %3906, %3947
  %3952 = fsub fast float %3947, %3948
  %3953 = select i1 %3949, float %3951, float %3952
  %3954 = fmul float %3950, %3953
  %3955 = select i1 %3949, float %3948, float %3906
  %3956 = fcmp fast ogt float %3906, %3948
  %3957 = fmul fast float %3955, %3947
  %3958 = fadd fast float %3955, %3947
  %3959 = fmul fast float %3958, %3740
  %3960 = fadd fast float %3957, %3741
  %3961 = fsub fast float %3960, %3959
  %3962 = fdiv fast float %3961, %3954
  %3963 = select i1 %3956, float %3962, float 0.000000e+00
  %3964 = fsub fast float 1.000000e+00, %3963
  %3965 = select i1 %3949, float %3964, float %3963
  %3966 = call float @dx.op.unary.f32(i32 7, float %3965)  ; Saturate(value)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3725, 3
  %3968 = fmul fast float %3967, %3966
  %3969 = fsub fast float 1.000000e+00, %3968
  br label %3970

; <label>:3970                                    ; preds = %3899, %3577, %3303, %3261
  %3971 = phi float [ 1.000000e+00, %3261 ], [ %3969, %3899 ], [ 1.000000e+00, %3303 ], [ 1.000000e+00, %3577 ]
  %3972 = fcmp fast ogt float %3296, 0.000000e+00
  br i1 %3972, label %3973, label %4141, !dx.controlflow.hints !88

; <label>:3973                                    ; preds = %3970
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 2
  %3976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3976, 2
  %3978 = fmul fast float %3975, %272
  %3979 = fadd fast float %3977, %299
  %3980 = fadd fast float %3979, %3978
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 2
  %3983 = extractvalue %dx.types.CBufRet.f32 %3981, 3
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 2
  %3986 = call float @dx.op.binary.f32(i32 35, float %3980, float 0.000000e+00)  ; FMax(a,b)
  %3987 = fadd fast float %3986, 0x3F10000000000000
  %3988 = fcmp fast oeq float %3985, 0.000000e+00
  br i1 %3988, label %3989, label %4056, !dx.controlflow.hints !56

; <label>:3989                                    ; preds = %3973
  %3990 = extractvalue %dx.types.CBufRet.f32 %3981, 1
  %3991 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3992 = fmul fast float %3991, %3192
  %3993 = fmul fast float %3990, %3193
  %3994 = fadd fast float %3992, 5.000000e-01
  %3995 = call float @dx.op.unary.f32(i32 27, float %3994)  ; Round_ni(value)
  %3996 = fadd fast float %3993, 5.000000e-01
  %3997 = call float @dx.op.unary.f32(i32 27, float %3996)  ; Round_ni(value)
  %3998 = fsub fast float %3994, %3995
  %3999 = fsub fast float %3996, %3997
  %4000 = fadd fast float %3995, -5.000000e-01
  %4001 = fadd fast float %3997, -5.000000e-01
  %4002 = fmul fast float %3998, 2.000000e+00
  %4003 = fsub fast float 3.000000e+00, %4002
  %4004 = fadd fast float %4002, 1.000000e+00
  %4005 = fsub fast float 2.000000e+00, %3998
  %4006 = bitcast float %4003 to i32
  %4007 = sub nsw i32 2129859010, %4006
  %4008 = bitcast i32 %4007 to float
  %4009 = fmul fast float %4008, %4005
  %4010 = fadd fast float %4009, -1.000000e+00
  %4011 = bitcast float %4004 to i32
  %4012 = sub nsw i32 2129859010, %4011
  %4013 = bitcast i32 %4012 to float
  %4014 = fmul fast float %4013, %3998
  %4015 = fadd fast float %4014, 1.000000e+00
  %4016 = fmul fast float %3999, 2.000000e+00
  %4017 = fsub fast float 3.000000e+00, %4016
  %4018 = fadd fast float %4016, 1.000000e+00
  %4019 = fsub fast float 2.000000e+00, %3999
  %4020 = bitcast float %4017 to i32
  %4021 = sub nsw i32 2129859010, %4020
  %4022 = bitcast i32 %4021 to float
  %4023 = fmul fast float %4022, %4019
  %4024 = fadd fast float %4023, -1.000000e+00
  %4025 = bitcast float %4018 to i32
  %4026 = sub nsw i32 2129859010, %4025
  %4027 = bitcast i32 %4026 to float
  %4028 = fmul fast float %4027, %3999
  %4029 = fadd fast float %4028, 1.000000e+00
  %4030 = fadd fast float %4010, %4000
  %4031 = fmul fast float %4030, %3982
  %4032 = fadd fast float %4024, %4001
  %4033 = fmul fast float %4032, %3983
  %4034 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %4031, float %4033, float undef, float undef, i32 0, i32 0, i32 undef, float %3987)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = fmul fast float %4035, %4003
  %4037 = fadd fast float %4015, %4000
  %4038 = fmul fast float %4037, %3982
  %4039 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %4038, float %4033, float undef, float undef, i32 0, i32 0, i32 undef, float %3987)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4040 = extractvalue %dx.types.ResRet.f32 %4039, 0
  %4041 = fmul fast float %4040, %4004
  %4042 = fadd fast float %4029, %4001
  %4043 = fmul fast float %4042, %3983
  %4044 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %4031, float %4043, float undef, float undef, i32 0, i32 0, i32 undef, float %3987)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = fmul fast float %4045, %4003
  %4047 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %28, float %4038, float %4043, float undef, float undef, i32 0, i32 0, i32 undef, float %3987)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = fmul fast float %4048, %4004
  %4050 = fadd fast float %4049, %4046
  %4051 = fmul fast float %4050, %4018
  %4052 = fadd fast float %4041, %4036
  %4053 = fmul fast float %4052, %4017
  %4054 = fadd fast float %4053, %4051
  %4055 = fmul fast float %4054, 6.250000e-02
  br label %4141

; <label>:4056                                    ; preds = %3973
  %4057 = fmul fast float %310, 0x401921FB60000000
  %4058 = call float @dx.op.unary.f32(i32 13, float %4057)  ; Sin(value)
  %4059 = call float @dx.op.unary.f32(i32 12, float %4057)  ; Cos(value)
  %4060 = fsub fast float -0.000000e+00, %4058
  br label %4061

; <label>:4061                                    ; preds = %4110, %4056
  %4062 = phi float [ 0.000000e+00, %4056 ], [ %4105, %4110 ]
  %4063 = phi float [ 0.000000e+00, %4056 ], [ %4107, %4110 ]
  %4064 = phi i32 [ 0, %4056 ], [ %4111, %4110 ]
  %4065 = mul i32 %4064, 2
  %4066 = add i32 0, %4065
  %4067 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4066
  %4068 = load float, float* %4067, align 4
  %4069 = mul i32 %4064, 2
  %4070 = add i32 1, %4069
  %4071 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4070
  %4072 = load float, float* %4071, align 4
  %4073 = fmul fast float %4068, %4059
  %4074 = call float @dx.op.tertiary.f32(i32 46, float %4072, float %4060, float %4073)  ; FMad(a,b,c)
  %4075 = fmul fast float %4068, %4058
  %4076 = call float @dx.op.tertiary.f32(i32 46, float %4072, float %4059, float %4075)  ; FMad(a,b,c)
  %4077 = fmul fast float %4074, %3985
  %4078 = fmul fast float %4076, %3985
  %4079 = fadd fast float %4077, %3192
  %4080 = fadd fast float %4078, %3193
  %4081 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %27, float %4079, float %4080, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4082 = extractvalue %dx.types.ResRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.ResRet.f32 %4081, 1
  %4084 = extractvalue %dx.types.ResRet.f32 %4081, 2
  %4085 = extractvalue %dx.types.ResRet.f32 %4081, 3
  %4086 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 0
  store float %4082, float* %4086, align 4
  %4087 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 1
  store float %4083, float* %4087, align 4
  %4088 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 2
  store float %4084, float* %4088, align 4
  %4089 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 3
  store float %4085, float* %4089, align 4
  %4090 = fsub fast float %4082, %3987
  %4091 = fcmp fast olt float %4090, 0.000000e+00
  %4092 = select i1 %4091, float 0.000000e+00, float 1.000000e+00
  %4093 = fadd fast float %4092, %4062
  %4094 = fmul fast float %4092, %4090
  %4095 = fadd fast float %4094, %4063
  br label %4096

; <label>:4096                                    ; preds = %4096, %4061
  %4097 = phi i32 [ 1, %4061 ], [ %4108, %4096 ]
  %4098 = phi float [ %4095, %4061 ], [ %4107, %4096 ]
  %4099 = phi float [ %4093, %4061 ], [ %4105, %4096 ]
  %4100 = getelementptr [4 x float], [4 x float]* %47, i32 0, i32 %4097
  %4101 = load float, float* %4100, align 4, !tbaa !57
  %4102 = fsub fast float %4101, %3987
  %4103 = fcmp fast olt float %4102, 0.000000e+00
  %4104 = select i1 %4103, float 0.000000e+00, float 1.000000e+00
  %4105 = fadd fast float %4104, %4099
  %4106 = fmul fast float %4104, %4102
  %4107 = fadd fast float %4106, %4098
  %4108 = add nuw nsw i32 %4097, 1
  %4109 = icmp eq i32 %4108, 4
  br i1 %4109, label %4110, label %4096, !llvm.loop !59

; <label>:4110                                    ; preds = %4096
  %4111 = add nuw nsw i32 %4064, 1
  %4112 = icmp eq i32 %4111, 8
  br i1 %4112, label %4113, label %4061, !llvm.loop !61

; <label>:4113                                    ; preds = %4110
  %4114 = fdiv fast float 1.000000e+00, %4105
  %4115 = fmul fast float %4114, %4107
  %4116 = fdiv fast float 1.000000e+00, %3987
  %4117 = fmul fast float %4115, %4116
  %4118 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4119 = call float @dx.op.binary.f32(i32 35, float %4118, float 0.000000e+00)  ; FMax(a,b)
  %4120 = fmul fast float %4105, 3.125000e-02
  %4121 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4122 = fmul fast float %4121, 2.000000e+00
  %4123 = fadd fast float %4122, -1.000000e+00
  %4124 = fcmp fast ogt float %4123, 0.000000e+00
  %4125 = fcmp fast olt float %4123, 0.000000e+00
  %4126 = zext i1 %4124 to i32
  %4127 = zext i1 %4125 to i32
  %4128 = sub nsw i32 %4126, %4127
  %4129 = sitofp i32 %4128 to float
  %4130 = fmul fast float %4129, %4123
  %4131 = fsub fast float 1.000000e+00, %4130
  %4132 = fmul fast float %4131, %4131
  %4133 = fmul fast float %4132, %4131
  %4134 = fsub fast float %4131, %4133
  %4135 = fmul fast float %4134, %4119
  %4136 = fsub fast float 1.000000e+00, %4133
  %4137 = fsub fast float %4136, %4135
  %4138 = fmul fast float %4129, 5.000000e-01
  %4139 = fmul fast float %4138, %4137
  %4140 = fsub fast float 5.000000e-01, %4139
  br label %4141

; <label>:4141                                    ; preds = %4113, %3989, %3970
  %4142 = phi float [ 1.000000e+00, %3970 ], [ %4055, %3989 ], [ %4140, %4113 ]
  %4143 = fcmp fast ogt float %3294, 0.000000e+00
  br i1 %4143, label %4144, label %4312, !dx.controlflow.hints !89

; <label>:4144                                    ; preds = %4141
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 2
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4149 = fmul fast float %4146, %272
  %4150 = fadd fast float %4148, %299
  %4151 = fadd fast float %4150, %4149
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 2
  %4154 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4157 = call float @dx.op.binary.f32(i32 35, float %4151, float 0.000000e+00)  ; FMax(a,b)
  %4158 = fadd fast float %4157, 0x3F10000000000000
  %4159 = fcmp fast oeq float %4156, 0.000000e+00
  br i1 %4159, label %4160, label %4227, !dx.controlflow.hints !56

; <label>:4160                                    ; preds = %4144
  %4161 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4162 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4163 = fmul fast float %4162, %3184
  %4164 = fmul fast float %4161, %3185
  %4165 = fadd fast float %4163, 5.000000e-01
  %4166 = call float @dx.op.unary.f32(i32 27, float %4165)  ; Round_ni(value)
  %4167 = fadd fast float %4164, 5.000000e-01
  %4168 = call float @dx.op.unary.f32(i32 27, float %4167)  ; Round_ni(value)
  %4169 = fsub fast float %4165, %4166
  %4170 = fsub fast float %4167, %4168
  %4171 = fadd fast float %4166, -5.000000e-01
  %4172 = fadd fast float %4168, -5.000000e-01
  %4173 = fmul fast float %4169, 2.000000e+00
  %4174 = fsub fast float 3.000000e+00, %4173
  %4175 = fadd fast float %4173, 1.000000e+00
  %4176 = fsub fast float 2.000000e+00, %4169
  %4177 = bitcast float %4174 to i32
  %4178 = sub nsw i32 2129859010, %4177
  %4179 = bitcast i32 %4178 to float
  %4180 = fmul fast float %4179, %4176
  %4181 = fadd fast float %4180, -1.000000e+00
  %4182 = bitcast float %4175 to i32
  %4183 = sub nsw i32 2129859010, %4182
  %4184 = bitcast i32 %4183 to float
  %4185 = fmul fast float %4184, %4169
  %4186 = fadd fast float %4185, 1.000000e+00
  %4187 = fmul fast float %4170, 2.000000e+00
  %4188 = fsub fast float 3.000000e+00, %4187
  %4189 = fadd fast float %4187, 1.000000e+00
  %4190 = fsub fast float 2.000000e+00, %4170
  %4191 = bitcast float %4188 to i32
  %4192 = sub nsw i32 2129859010, %4191
  %4193 = bitcast i32 %4192 to float
  %4194 = fmul fast float %4193, %4190
  %4195 = fadd fast float %4194, -1.000000e+00
  %4196 = bitcast float %4189 to i32
  %4197 = sub nsw i32 2129859010, %4196
  %4198 = bitcast i32 %4197 to float
  %4199 = fmul fast float %4198, %4170
  %4200 = fadd fast float %4199, 1.000000e+00
  %4201 = fadd fast float %4181, %4171
  %4202 = fmul fast float %4201, %4153
  %4203 = fadd fast float %4195, %4172
  %4204 = fmul fast float %4203, %4154
  %4205 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %4202, float %4204, float undef, float undef, i32 0, i32 0, i32 undef, float %4158)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = fmul fast float %4206, %4174
  %4208 = fadd fast float %4186, %4171
  %4209 = fmul fast float %4208, %4153
  %4210 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %4209, float %4204, float undef, float undef, i32 0, i32 0, i32 undef, float %4158)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4211 = extractvalue %dx.types.ResRet.f32 %4210, 0
  %4212 = fmul fast float %4211, %4175
  %4213 = fadd fast float %4200, %4172
  %4214 = fmul fast float %4213, %4154
  %4215 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %4202, float %4214, float undef, float undef, i32 0, i32 0, i32 undef, float %4158)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = fmul fast float %4216, %4174
  %4218 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %28, float %4209, float %4214, float undef, float undef, i32 0, i32 0, i32 undef, float %4158)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = fmul fast float %4219, %4175
  %4221 = fadd fast float %4220, %4217
  %4222 = fmul fast float %4221, %4189
  %4223 = fadd fast float %4212, %4207
  %4224 = fmul fast float %4223, %4188
  %4225 = fadd fast float %4224, %4222
  %4226 = fmul fast float %4225, 6.250000e-02
  br label %4312

; <label>:4227                                    ; preds = %4144
  %4228 = fmul fast float %310, 0x401921FB60000000
  %4229 = call float @dx.op.unary.f32(i32 13, float %4228)  ; Sin(value)
  %4230 = call float @dx.op.unary.f32(i32 12, float %4228)  ; Cos(value)
  %4231 = fsub fast float -0.000000e+00, %4229
  br label %4232

; <label>:4232                                    ; preds = %4281, %4227
  %4233 = phi float [ 0.000000e+00, %4227 ], [ %4276, %4281 ]
  %4234 = phi float [ 0.000000e+00, %4227 ], [ %4278, %4281 ]
  %4235 = phi i32 [ 0, %4227 ], [ %4282, %4281 ]
  %4236 = mul i32 %4235, 2
  %4237 = add i32 0, %4236
  %4238 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4237
  %4239 = load float, float* %4238, align 4
  %4240 = mul i32 %4235, 2
  %4241 = add i32 1, %4240
  %4242 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4241
  %4243 = load float, float* %4242, align 4
  %4244 = fmul fast float %4239, %4230
  %4245 = call float @dx.op.tertiary.f32(i32 46, float %4243, float %4231, float %4244)  ; FMad(a,b,c)
  %4246 = fmul fast float %4239, %4229
  %4247 = call float @dx.op.tertiary.f32(i32 46, float %4243, float %4230, float %4246)  ; FMad(a,b,c)
  %4248 = fmul fast float %4245, %4156
  %4249 = fmul fast float %4247, %4156
  %4250 = fadd fast float %4248, %3184
  %4251 = fadd fast float %4249, %3185
  %4252 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %27, float %4250, float %4251, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4253 = extractvalue %dx.types.ResRet.f32 %4252, 0
  %4254 = extractvalue %dx.types.ResRet.f32 %4252, 1
  %4255 = extractvalue %dx.types.ResRet.f32 %4252, 2
  %4256 = extractvalue %dx.types.ResRet.f32 %4252, 3
  %4257 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 0
  store float %4253, float* %4257, align 4
  %4258 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 1
  store float %4254, float* %4258, align 4
  %4259 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 2
  store float %4255, float* %4259, align 4
  %4260 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 3
  store float %4256, float* %4260, align 4
  %4261 = fsub fast float %4253, %4158
  %4262 = fcmp fast olt float %4261, 0.000000e+00
  %4263 = select i1 %4262, float 0.000000e+00, float 1.000000e+00
  %4264 = fadd fast float %4263, %4233
  %4265 = fmul fast float %4263, %4261
  %4266 = fadd fast float %4265, %4234
  br label %4267

; <label>:4267                                    ; preds = %4267, %4232
  %4268 = phi i32 [ 1, %4232 ], [ %4279, %4267 ]
  %4269 = phi float [ %4266, %4232 ], [ %4278, %4267 ]
  %4270 = phi float [ %4264, %4232 ], [ %4276, %4267 ]
  %4271 = getelementptr [4 x float], [4 x float]* %46, i32 0, i32 %4268
  %4272 = load float, float* %4271, align 4, !tbaa !57
  %4273 = fsub fast float %4272, %4158
  %4274 = fcmp fast olt float %4273, 0.000000e+00
  %4275 = select i1 %4274, float 0.000000e+00, float 1.000000e+00
  %4276 = fadd fast float %4275, %4270
  %4277 = fmul fast float %4275, %4273
  %4278 = fadd fast float %4277, %4269
  %4279 = add nuw nsw i32 %4268, 1
  %4280 = icmp eq i32 %4279, 4
  br i1 %4280, label %4281, label %4267, !llvm.loop !59

; <label>:4281                                    ; preds = %4267
  %4282 = add nuw nsw i32 %4235, 1
  %4283 = icmp eq i32 %4282, 8
  br i1 %4283, label %4284, label %4232, !llvm.loop !61

; <label>:4284                                    ; preds = %4281
  %4285 = fdiv fast float 1.000000e+00, %4276
  %4286 = fmul fast float %4285, %4278
  %4287 = fdiv fast float 1.000000e+00, %4158
  %4288 = fmul fast float %4286, %4287
  %4289 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4290 = call float @dx.op.binary.f32(i32 35, float %4289, float 0.000000e+00)  ; FMax(a,b)
  %4291 = fmul fast float %4276, 3.125000e-02
  %4292 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4293 = fmul fast float %4292, 2.000000e+00
  %4294 = fadd fast float %4293, -1.000000e+00
  %4295 = fcmp fast ogt float %4294, 0.000000e+00
  %4296 = fcmp fast olt float %4294, 0.000000e+00
  %4297 = zext i1 %4295 to i32
  %4298 = zext i1 %4296 to i32
  %4299 = sub nsw i32 %4297, %4298
  %4300 = sitofp i32 %4299 to float
  %4301 = fmul fast float %4300, %4294
  %4302 = fsub fast float 1.000000e+00, %4301
  %4303 = fmul fast float %4302, %4302
  %4304 = fmul fast float %4303, %4302
  %4305 = fsub fast float %4302, %4304
  %4306 = fmul fast float %4305, %4290
  %4307 = fsub fast float 1.000000e+00, %4304
  %4308 = fsub fast float %4307, %4306
  %4309 = fmul fast float %4300, 5.000000e-01
  %4310 = fmul fast float %4309, %4308
  %4311 = fsub fast float 5.000000e-01, %4310
  br label %4312

; <label>:4312                                    ; preds = %4284, %4160, %4141
  %4313 = phi float [ 1.000000e+00, %4141 ], [ %4226, %4160 ], [ %4311, %4284 ]
  %4314 = fcmp fast ogt float %3293, 0.000000e+00
  br i1 %4314, label %4315, label %4637, !dx.controlflow.hints !90

; <label>:4315                                    ; preds = %4312
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 2
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 0
  %4320 = fmul fast float %4317, %272
  %4321 = fadd fast float %4319, %299
  %4322 = fadd fast float %4321, %4320
  %4323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.f32 %4323, 2
  %4325 = extractvalue %dx.types.CBufRet.f32 %4323, 3
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 0
  %4328 = call float @dx.op.binary.f32(i32 35, float %4322, float 0.000000e+00)  ; FMax(a,b)
  %4329 = fadd fast float %4328, 0x3F10000000000000
  %4330 = fcmp fast oeq float %4327, 0.000000e+00
  br i1 %105, label %4331, label %4484, !dx.controlflow.hints !91

; <label>:4331                                    ; preds = %4315
  br i1 %4330, label %4332, label %4399, !dx.controlflow.hints !56

; <label>:4332                                    ; preds = %4331
  %4333 = extractvalue %dx.types.CBufRet.f32 %4323, 1
  %4334 = extractvalue %dx.types.CBufRet.f32 %4323, 0
  %4335 = fmul fast float %4334, %291
  %4336 = fmul fast float %4333, %295
  %4337 = fadd fast float %4335, 5.000000e-01
  %4338 = call float @dx.op.unary.f32(i32 27, float %4337)  ; Round_ni(value)
  %4339 = fadd fast float %4336, 5.000000e-01
  %4340 = call float @dx.op.unary.f32(i32 27, float %4339)  ; Round_ni(value)
  %4341 = fsub fast float %4337, %4338
  %4342 = fsub fast float %4339, %4340
  %4343 = fadd fast float %4338, -5.000000e-01
  %4344 = fadd fast float %4340, -5.000000e-01
  %4345 = fmul fast float %4341, 2.000000e+00
  %4346 = fsub fast float 3.000000e+00, %4345
  %4347 = fadd fast float %4345, 1.000000e+00
  %4348 = fsub fast float 2.000000e+00, %4341
  %4349 = bitcast float %4346 to i32
  %4350 = sub nsw i32 2129859010, %4349
  %4351 = bitcast i32 %4350 to float
  %4352 = fmul fast float %4351, %4348
  %4353 = fadd fast float %4352, -1.000000e+00
  %4354 = bitcast float %4347 to i32
  %4355 = sub nsw i32 2129859010, %4354
  %4356 = bitcast i32 %4355 to float
  %4357 = fmul fast float %4356, %4341
  %4358 = fadd fast float %4357, 1.000000e+00
  %4359 = fmul fast float %4342, 2.000000e+00
  %4360 = fsub fast float 3.000000e+00, %4359
  %4361 = fadd fast float %4359, 1.000000e+00
  %4362 = fsub fast float 2.000000e+00, %4342
  %4363 = bitcast float %4360 to i32
  %4364 = sub nsw i32 2129859010, %4363
  %4365 = bitcast i32 %4364 to float
  %4366 = fmul fast float %4365, %4362
  %4367 = fadd fast float %4366, -1.000000e+00
  %4368 = bitcast float %4361 to i32
  %4369 = sub nsw i32 2129859010, %4368
  %4370 = bitcast i32 %4369 to float
  %4371 = fmul fast float %4370, %4342
  %4372 = fadd fast float %4371, 1.000000e+00
  %4373 = fadd fast float %4353, %4343
  %4374 = fmul fast float %4373, %4324
  %4375 = fadd fast float %4367, %4344
  %4376 = fmul fast float %4375, %4325
  %4377 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %4374, float %4376, float undef, float undef, i32 0, i32 0, i32 undef, float %4329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = fmul fast float %4378, %4346
  %4380 = fadd fast float %4358, %4343
  %4381 = fmul fast float %4380, %4324
  %4382 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %4381, float %4376, float undef, float undef, i32 0, i32 0, i32 undef, float %4329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 0
  %4384 = fmul fast float %4383, %4347
  %4385 = fadd fast float %4372, %4344
  %4386 = fmul fast float %4385, %4325
  %4387 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %4374, float %4386, float undef, float undef, i32 0, i32 0, i32 undef, float %4329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = fmul fast float %4388, %4346
  %4390 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %28, float %4381, float %4386, float undef, float undef, i32 0, i32 0, i32 undef, float %4329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = fmul fast float %4391, %4347
  %4393 = fadd fast float %4392, %4389
  %4394 = fmul fast float %4393, %4361
  %4395 = fadd fast float %4384, %4379
  %4396 = fmul fast float %4395, %4360
  %4397 = fadd fast float %4396, %4394
  %4398 = fmul fast float %4397, 6.250000e-02
  br label %4637

; <label>:4399                                    ; preds = %4331
  %4400 = fmul fast float %310, 0x401921FB60000000
  %4401 = call float @dx.op.unary.f32(i32 13, float %4400)  ; Sin(value)
  %4402 = call float @dx.op.unary.f32(i32 12, float %4400)  ; Cos(value)
  %4403 = fsub fast float -0.000000e+00, %4401
  br label %4404

; <label>:4404                                    ; preds = %4453, %4399
  %4405 = phi float [ 0.000000e+00, %4399 ], [ %4448, %4453 ]
  %4406 = phi float [ 0.000000e+00, %4399 ], [ %4450, %4453 ]
  %4407 = phi i32 [ 0, %4399 ], [ %4454, %4453 ]
  %4408 = mul i32 %4407, 2
  %4409 = add i32 0, %4408
  %4410 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4409
  %4411 = load float, float* %4410, align 4
  %4412 = mul i32 %4407, 2
  %4413 = add i32 1, %4412
  %4414 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4413
  %4415 = load float, float* %4414, align 4
  %4416 = fmul fast float %4411, %4402
  %4417 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4403, float %4416)  ; FMad(a,b,c)
  %4418 = fmul fast float %4411, %4401
  %4419 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4402, float %4418)  ; FMad(a,b,c)
  %4420 = fmul fast float %4417, %4327
  %4421 = fmul fast float %4419, %4327
  %4422 = fadd fast float %4420, %291
  %4423 = fadd fast float %4421, %295
  %4424 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %27, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.ResRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.ResRet.f32 %4424, 2
  %4428 = extractvalue %dx.types.ResRet.f32 %4424, 3
  %4429 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 0
  store float %4425, float* %4429, align 4
  %4430 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 1
  store float %4426, float* %4430, align 4
  %4431 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 2
  store float %4427, float* %4431, align 4
  %4432 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 3
  store float %4428, float* %4432, align 4
  %4433 = fsub fast float %4425, %4329
  %4434 = fcmp fast olt float %4433, 0.000000e+00
  %4435 = select i1 %4434, float 0.000000e+00, float 1.000000e+00
  %4436 = fadd fast float %4435, %4405
  %4437 = fmul fast float %4435, %4433
  %4438 = fadd fast float %4437, %4406
  br label %4439

; <label>:4439                                    ; preds = %4439, %4404
  %4440 = phi i32 [ 1, %4404 ], [ %4451, %4439 ]
  %4441 = phi float [ %4438, %4404 ], [ %4450, %4439 ]
  %4442 = phi float [ %4436, %4404 ], [ %4448, %4439 ]
  %4443 = getelementptr [4 x float], [4 x float]* %45, i32 0, i32 %4440
  %4444 = load float, float* %4443, align 4, !tbaa !57
  %4445 = fsub fast float %4444, %4329
  %4446 = fcmp fast olt float %4445, 0.000000e+00
  %4447 = select i1 %4446, float 0.000000e+00, float 1.000000e+00
  %4448 = fadd fast float %4447, %4442
  %4449 = fmul fast float %4447, %4445
  %4450 = fadd fast float %4449, %4441
  %4451 = add nuw nsw i32 %4440, 1
  %4452 = icmp eq i32 %4451, 4
  br i1 %4452, label %4453, label %4439, !llvm.loop !59

; <label>:4453                                    ; preds = %4439
  %4454 = add nuw nsw i32 %4407, 1
  %4455 = icmp eq i32 %4454, 8
  br i1 %4455, label %4456, label %4404, !llvm.loop !61

; <label>:4456                                    ; preds = %4453
  %4457 = fdiv fast float 1.000000e+00, %4448
  %4458 = fmul fast float %4457, %4450
  %4459 = fdiv fast float 1.000000e+00, %4329
  %4460 = fmul fast float %4458, %4459
  %4461 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4462 = call float @dx.op.binary.f32(i32 35, float %4461, float 0.000000e+00)  ; FMax(a,b)
  %4463 = fmul fast float %4448, 3.125000e-02
  %4464 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4465 = fmul fast float %4464, 2.000000e+00
  %4466 = fadd fast float %4465, -1.000000e+00
  %4467 = fcmp fast ogt float %4466, 0.000000e+00
  %4468 = fcmp fast olt float %4466, 0.000000e+00
  %4469 = zext i1 %4467 to i32
  %4470 = zext i1 %4468 to i32
  %4471 = sub nsw i32 %4469, %4470
  %4472 = sitofp i32 %4471 to float
  %4473 = fmul fast float %4472, %4466
  %4474 = fsub fast float 1.000000e+00, %4473
  %4475 = fmul fast float %4474, %4474
  %4476 = fmul fast float %4475, %4474
  %4477 = fsub fast float %4474, %4476
  %4478 = fmul fast float %4477, %4462
  %4479 = fsub fast float 1.000000e+00, %4476
  %4480 = fsub fast float %4479, %4478
  %4481 = fmul fast float %4472, 5.000000e-01
  %4482 = fmul fast float %4481, %4480
  %4483 = fsub fast float 5.000000e-01, %4482
  br label %4637

; <label>:4484                                    ; preds = %4315
  br i1 %4330, label %4485, label %4552, !dx.controlflow.hints !56

; <label>:4485                                    ; preds = %4484
  %4486 = extractvalue %dx.types.CBufRet.f32 %4323, 1
  %4487 = extractvalue %dx.types.CBufRet.f32 %4323, 0
  %4488 = fmul fast float %4487, %291
  %4489 = fmul fast float %4486, %295
  %4490 = fadd fast float %4488, 5.000000e-01
  %4491 = call float @dx.op.unary.f32(i32 27, float %4490)  ; Round_ni(value)
  %4492 = fadd fast float %4489, 5.000000e-01
  %4493 = call float @dx.op.unary.f32(i32 27, float %4492)  ; Round_ni(value)
  %4494 = fsub fast float %4490, %4491
  %4495 = fsub fast float %4492, %4493
  %4496 = fadd fast float %4491, -5.000000e-01
  %4497 = fadd fast float %4493, -5.000000e-01
  %4498 = fmul fast float %4494, 2.000000e+00
  %4499 = fsub fast float 3.000000e+00, %4498
  %4500 = fadd fast float %4498, 1.000000e+00
  %4501 = fsub fast float 2.000000e+00, %4494
  %4502 = bitcast float %4499 to i32
  %4503 = sub nsw i32 2129859010, %4502
  %4504 = bitcast i32 %4503 to float
  %4505 = fmul fast float %4504, %4501
  %4506 = fadd fast float %4505, -1.000000e+00
  %4507 = bitcast float %4500 to i32
  %4508 = sub nsw i32 2129859010, %4507
  %4509 = bitcast i32 %4508 to float
  %4510 = fmul fast float %4509, %4494
  %4511 = fadd fast float %4510, 1.000000e+00
  %4512 = fmul fast float %4495, 2.000000e+00
  %4513 = fsub fast float 3.000000e+00, %4512
  %4514 = fadd fast float %4512, 1.000000e+00
  %4515 = fsub fast float 2.000000e+00, %4495
  %4516 = bitcast float %4513 to i32
  %4517 = sub nsw i32 2129859010, %4516
  %4518 = bitcast i32 %4517 to float
  %4519 = fmul fast float %4518, %4515
  %4520 = fadd fast float %4519, -1.000000e+00
  %4521 = bitcast float %4514 to i32
  %4522 = sub nsw i32 2129859010, %4521
  %4523 = bitcast i32 %4522 to float
  %4524 = fmul fast float %4523, %4495
  %4525 = fadd fast float %4524, 1.000000e+00
  %4526 = fadd fast float %4506, %4496
  %4527 = fmul fast float %4526, %4324
  %4528 = fadd fast float %4520, %4497
  %4529 = fmul fast float %4528, %4325
  %4530 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %4527, float %4529, float undef, float undef, i32 0, i32 0, i32 undef, float %4329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4531 = extractvalue %dx.types.ResRet.f32 %4530, 0
  %4532 = fmul fast float %4531, %4499
  %4533 = fadd fast float %4511, %4496
  %4534 = fmul fast float %4533, %4324
  %4535 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %4534, float %4529, float undef, float undef, i32 0, i32 0, i32 undef, float %4329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = fmul fast float %4536, %4500
  %4538 = fadd fast float %4525, %4497
  %4539 = fmul fast float %4538, %4325
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %4527, float %4539, float undef, float undef, i32 0, i32 0, i32 undef, float %4329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = fmul fast float %4541, %4499
  %4543 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %28, float %4534, float %4539, float undef, float undef, i32 0, i32 0, i32 undef, float %4329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = fmul fast float %4544, %4500
  %4546 = fadd fast float %4545, %4542
  %4547 = fmul fast float %4546, %4514
  %4548 = fadd fast float %4537, %4532
  %4549 = fmul fast float %4548, %4513
  %4550 = fadd fast float %4549, %4547
  %4551 = fmul fast float %4550, 6.250000e-02
  br label %4637

; <label>:4552                                    ; preds = %4484
  %4553 = fmul fast float %310, 0x401921FB60000000
  %4554 = call float @dx.op.unary.f32(i32 13, float %4553)  ; Sin(value)
  %4555 = call float @dx.op.unary.f32(i32 12, float %4553)  ; Cos(value)
  %4556 = fsub fast float -0.000000e+00, %4554
  br label %4557

; <label>:4557                                    ; preds = %4606, %4552
  %4558 = phi float [ 0.000000e+00, %4552 ], [ %4601, %4606 ]
  %4559 = phi float [ 0.000000e+00, %4552 ], [ %4603, %4606 ]
  %4560 = phi i32 [ 0, %4552 ], [ %4607, %4606 ]
  %4561 = mul i32 %4560, 2
  %4562 = add i32 0, %4561
  %4563 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4562
  %4564 = load float, float* %4563, align 4
  %4565 = mul i32 %4560, 2
  %4566 = add i32 1, %4565
  %4567 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4566
  %4568 = load float, float* %4567, align 4
  %4569 = fmul fast float %4564, %4555
  %4570 = call float @dx.op.tertiary.f32(i32 46, float %4568, float %4556, float %4569)  ; FMad(a,b,c)
  %4571 = fmul fast float %4564, %4554
  %4572 = call float @dx.op.tertiary.f32(i32 46, float %4568, float %4555, float %4571)  ; FMad(a,b,c)
  %4573 = fmul fast float %4570, %4327
  %4574 = fmul fast float %4572, %4327
  %4575 = fadd fast float %4573, %291
  %4576 = fadd fast float %4574, %295
  %4577 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %27, float %4575, float %4576, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = extractvalue %dx.types.ResRet.f32 %4577, 3
  %4582 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 0
  store float %4578, float* %4582, align 4
  %4583 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 1
  store float %4579, float* %4583, align 4
  %4584 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 2
  store float %4580, float* %4584, align 4
  %4585 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 3
  store float %4581, float* %4585, align 4
  %4586 = fsub fast float %4578, %4329
  %4587 = fcmp fast olt float %4586, 0.000000e+00
  %4588 = select i1 %4587, float 0.000000e+00, float 1.000000e+00
  %4589 = fadd fast float %4588, %4558
  %4590 = fmul fast float %4588, %4586
  %4591 = fadd fast float %4590, %4559
  br label %4592

; <label>:4592                                    ; preds = %4592, %4557
  %4593 = phi i32 [ 1, %4557 ], [ %4604, %4592 ]
  %4594 = phi float [ %4591, %4557 ], [ %4603, %4592 ]
  %4595 = phi float [ %4589, %4557 ], [ %4601, %4592 ]
  %4596 = getelementptr [4 x float], [4 x float]* %44, i32 0, i32 %4593
  %4597 = load float, float* %4596, align 4, !tbaa !57
  %4598 = fsub fast float %4597, %4329
  %4599 = fcmp fast olt float %4598, 0.000000e+00
  %4600 = select i1 %4599, float 0.000000e+00, float 1.000000e+00
  %4601 = fadd fast float %4600, %4595
  %4602 = fmul fast float %4600, %4598
  %4603 = fadd fast float %4602, %4594
  %4604 = add nuw nsw i32 %4593, 1
  %4605 = icmp eq i32 %4604, 4
  br i1 %4605, label %4606, label %4592, !llvm.loop !59

; <label>:4606                                    ; preds = %4592
  %4607 = add nuw nsw i32 %4560, 1
  %4608 = icmp eq i32 %4607, 8
  br i1 %4608, label %4609, label %4557, !llvm.loop !61

; <label>:4609                                    ; preds = %4606
  %4610 = fdiv fast float 1.000000e+00, %4601
  %4611 = fmul fast float %4610, %4603
  %4612 = fdiv fast float 1.000000e+00, %4329
  %4613 = fmul fast float %4611, %4612
  %4614 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4615 = call float @dx.op.binary.f32(i32 35, float %4614, float 0.000000e+00)  ; FMax(a,b)
  %4616 = fmul fast float %4601, 3.125000e-02
  %4617 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4618 = fmul fast float %4617, 2.000000e+00
  %4619 = fadd fast float %4618, -1.000000e+00
  %4620 = fcmp fast ogt float %4619, 0.000000e+00
  %4621 = fcmp fast olt float %4619, 0.000000e+00
  %4622 = zext i1 %4620 to i32
  %4623 = zext i1 %4621 to i32
  %4624 = sub nsw i32 %4622, %4623
  %4625 = sitofp i32 %4624 to float
  %4626 = fmul fast float %4625, %4619
  %4627 = fsub fast float 1.000000e+00, %4626
  %4628 = fmul fast float %4627, %4627
  %4629 = fmul fast float %4628, %4627
  %4630 = fsub fast float %4627, %4629
  %4631 = fmul fast float %4630, %4615
  %4632 = fsub fast float 1.000000e+00, %4629
  %4633 = fsub fast float %4632, %4631
  %4634 = fmul fast float %4625, 5.000000e-01
  %4635 = fmul fast float %4634, %4633
  %4636 = fsub fast float 5.000000e-01, %4635
  br label %4637

; <label>:4637                                    ; preds = %4609, %4485, %4456, %4332, %4312
  %4638 = phi float [ 1.000000e+00, %4312 ], [ %4398, %4332 ], [ %4483, %4456 ], [ %4551, %4485 ], [ %4636, %4609 ]
  %4639 = fsub fast float %4142, %3971
  %4640 = fmul fast float %4639, %3263
  %4641 = fadd fast float %4640, %3971
  %4642 = fsub fast float %4313, %4641
  %4643 = fmul fast float %4642, %3262
  %4644 = fadd fast float %4643, %4641
  %4645 = fsub fast float %4638, %4644
  %4646 = fmul fast float %4645, %3293
  %4647 = fadd fast float %4646, %4644
  br label %4648

; <label>:4648                                    ; preds = %4637, %3166, %1704, %1633, %1311, %1037, %1034, %1004, %880, %827, %703, %650, %526, %473, %349
  %4649 = phi float [ %4647, %4637 ], [ %3176, %3166 ], [ %415, %349 ], [ %500, %473 ], [ %592, %526 ], [ %677, %650 ], [ %769, %703 ], [ %854, %827 ], [ %946, %880 ], [ %1031, %1004 ], [ %1703, %1633 ], [ 1.000000e+00, %1037 ], [ 1.000000e+00, %1311 ], [ 1.000000e+00, %1034 ], [ 0.000000e+00, %1704 ]
  %4650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %4651 = extractvalue %dx.types.ResRet.i32 %4650, 0
  %4652 = and i32 %4651, 114688
  %4653 = icmp ne i32 %4652, 0
  %4654 = fcmp fast ogt float %4649, 0.000000e+00
  %4655 = and i1 %4654, %4653
  br i1 %4655, label %4656, label %5431, !dx.controlflow.hints !92

; <label>:4656                                    ; preds = %4648
  %4657 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %98, i32 %99, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = fmul fast float %4658, 2.550000e+02
  %4660 = fptoui float %4659 to i32
  %4661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.f32 %4661, 2
  %4663 = call float @dx.op.dot3.f32(i32 55, float %255, float %256, float %257, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = call float @dx.op.unary.f32(i32 6, float %4663)  ; FAbs(value)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = icmp eq i32 %4660, 0
  %4667 = fcmp ugt float %4665, %4662
  %4668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.i32 %4668, 0
  %4670 = and i32 %4669, 64
  %4671 = icmp eq i32 %4670, 0
  %4672 = or i1 %4667, %4671
  %4673 = and i1 %4666, %4672
  br i1 %4673, label %5012, label %4674, !dx.controlflow.hints !93

; <label>:4674                                    ; preds = %4656
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 0
  %4677 = extractvalue %dx.types.CBufRet.f32 %4675, 1
  %4678 = extractvalue %dx.types.CBufRet.f32 %4675, 2
  %4679 = fadd fast float %4676, %209
  %4680 = fadd fast float %4677, %210
  %4681 = fadd fast float %4678, %211
  %4682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.CBufRet.f32 %4682, 1
  %4685 = fsub fast float %4679, %4683
  %4686 = fsub fast float %4680, %4684
  %4687 = fmul fast float %4685, %4685
  %4688 = fmul fast float %4686, %4686
  %4689 = fadd fast float %4687, %4688
  %4690 = call float @dx.op.unary.f32(i32 24, float %4689)  ; Sqrt(value)
  %4691 = extractvalue %dx.types.CBufRet.f32 %4682, 2
  %4692 = fcmp fast olt float %4690, %4691
  br i1 %4692, label %4693, label %4758, !dx.controlflow.hints !94

; <label>:4693                                    ; preds = %4674
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 0
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 0
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.CBufRet.f32 %4694, 1
  %4701 = extractvalue %dx.types.CBufRet.f32 %4696, 1
  %4702 = extractvalue %dx.types.CBufRet.f32 %4698, 1
  %4703 = extractvalue %dx.types.CBufRet.f32 %4694, 3
  %4704 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4705 = extractvalue %dx.types.CBufRet.f32 %4698, 3
  %4706 = fadd fast float %4703, %4679
  %4707 = fadd fast float %4704, %4680
  %4708 = fadd fast float %4705, %4681
  %4709 = fmul fast float %4706, %4695
  %4710 = call float @dx.op.tertiary.f32(i32 46, float %4707, float %4697, float %4709)  ; FMad(a,b,c)
  %4711 = call float @dx.op.tertiary.f32(i32 46, float %4708, float %4699, float %4710)  ; FMad(a,b,c)
  %4712 = fmul fast float %4706, %4700
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4707, float %4701, float %4712)  ; FMad(a,b,c)
  %4714 = call float @dx.op.tertiary.f32(i32 46, float %4708, float %4702, float %4713)  ; FMad(a,b,c)
  %4715 = fsub fast float %4711, %4703
  %4716 = fsub fast float %4714, %4704
  %4717 = fsub fast float %4715, %4683
  %4718 = fadd fast float %4717, %4691
  %4719 = fsub fast float %4716, %4684
  %4720 = fadd fast float %4719, %4691
  %4721 = extractvalue %dx.types.CBufRet.f32 %4682, 3
  %4722 = fmul fast float %4718, %4721
  %4723 = fmul fast float %4720, %4721
  %4724 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4726 = fsub fast float 1.000000e+00, %4724
  %4727 = fsub fast float 1.000000e+00, %4725
  %4728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %26, float %4726, float %4727, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4729 = extractvalue %dx.types.ResRet.f32 %4728, 0
  %4730 = fcmp fast ugt float %4729, 0.000000e+00
  br i1 %4730, label %4731, label %5012, !dx.controlflow.hints !95

; <label>:4731                                    ; preds = %4693
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 2
  %4734 = fmul fast float %4733, %4729
  %4735 = extractvalue %dx.types.CBufRet.f32 %4732, 3
  %4736 = fadd fast float %4735, %4734
  %4737 = extractvalue %dx.types.CBufRet.f32 %4698, 2
  %4738 = fadd fast float %4736, %4705
  %4739 = fmul fast float %4711, %4699
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4714, float %4702, float %4739)  ; FMad(a,b,c)
  %4741 = call float @dx.op.tertiary.f32(i32 46, float %4738, float %4737, float %4740)  ; FMad(a,b,c)
  %4742 = fsub fast float %4741, %4705
  %4743 = fsub fast float %4742, %4678
  %4744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %26, float %4726, float %4727, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4745 = extractvalue %dx.types.ResRet.f32 %4744, 0
  %4746 = extractvalue %dx.types.ResRet.f32 %4744, 1
  %4747 = extractvalue %dx.types.ResRet.f32 %4744, 2
  %4748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %4726, float %4727, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4749 = extractvalue %dx.types.ResRet.f32 %4748, 0
  %4750 = extractvalue %dx.types.ResRet.f32 %4748, 1
  %4751 = extractvalue %dx.types.ResRet.f32 %4748, 2
  %4752 = fadd fast float %4749, %4745
  %4753 = fmul fast float %4752, 0x3F847AE140000000
  %4754 = fadd fast float %4750, %4746
  %4755 = fmul fast float %4754, 0x3F847AE140000000
  %4756 = fadd fast float %4751, %4747
  %4757 = fmul fast float %4756, 0x3F847AE140000000
  br label %5012

; <label>:4758                                    ; preds = %4674
  %4759 = and i32 %4660, -3
  %4760 = icmp eq i32 %4759, 1
  br i1 %4760, label %4761, label %5012, !dx.controlflow.hints !96

; <label>:4761                                    ; preds = %4758
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4765 = extractvalue %dx.types.CBufRet.f32 %4764, 0
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 0
  %4768 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4769 = extractvalue %dx.types.CBufRet.f32 %4764, 1
  %4770 = extractvalue %dx.types.CBufRet.f32 %4766, 1
  %4771 = extractvalue %dx.types.CBufRet.f32 %4762, 3
  %4772 = extractvalue %dx.types.CBufRet.f32 %4764, 3
  %4773 = extractvalue %dx.types.CBufRet.f32 %4766, 3
  %4774 = fadd fast float %4771, %4679
  %4775 = fadd fast float %4772, %4680
  %4776 = fadd fast float %4773, %4681
  %4777 = fmul fast float %4774, %4763
  %4778 = call float @dx.op.tertiary.f32(i32 46, float %4775, float %4765, float %4777)  ; FMad(a,b,c)
  %4779 = call float @dx.op.tertiary.f32(i32 46, float %4776, float %4767, float %4778)  ; FMad(a,b,c)
  %4780 = fmul fast float %4774, %4768
  %4781 = call float @dx.op.tertiary.f32(i32 46, float %4775, float %4769, float %4780)  ; FMad(a,b,c)
  %4782 = call float @dx.op.tertiary.f32(i32 46, float %4776, float %4770, float %4781)  ; FMad(a,b,c)
  %4783 = fsub fast float %4779, %4771
  %4784 = fsub fast float %4782, %4772
  %4785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.CBufRet.f32 %4785, 1
  %4788 = extractvalue %dx.types.CBufRet.f32 %4785, 2
  %4789 = extractvalue %dx.types.CBufRet.f32 %4785, 3
  %4790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4791 = extractvalue %dx.types.CBufRet.f32 %4790, 3
  %4792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.i32 %4792, 0
  %4794 = extractvalue %dx.types.CBufRet.i32 %4792, 1
  %4795 = udiv i32 %4794, %4793
  %4796 = fsub fast float %4783, %4786
  %4797 = fsub fast float %4784, %4787
  %4798 = call float @dx.op.binary.f32(i32 35, float %4796, float 0.000000e+00)  ; FMax(a,b)
  %4799 = call float @dx.op.binary.f32(i32 35, float %4797, float 0.000000e+00)  ; FMax(a,b)
  %4800 = call float @dx.op.binary.f32(i32 36, float %4798, float %4788)  ; FMin(a,b)
  %4801 = call float @dx.op.binary.f32(i32 36, float %4799, float %4789)  ; FMin(a,b)
  %4802 = add i32 %4793, -1
  %4803 = add i32 %4795, -1
  %4804 = fmul fast float %4800, %4791
  %4805 = fmul fast float %4801, %4791
  %4806 = fptoui float %4804 to i32
  %4807 = fptoui float %4805 to i32
  %4808 = call i32 @dx.op.binary.i32(i32 40, i32 %4806, i32 %4802)  ; UMin(a,b)
  %4809 = call i32 @dx.op.binary.i32(i32 40, i32 %4807, i32 %4803)  ; UMin(a,b)
  %4810 = mul i32 %4809, %4793
  %4811 = add i32 %4810, %4808
  %4812 = shl i32 %4811, 2
  %4813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4812, i32 undef)  ; BufferLoad(srv,index,wot)
  %4814 = extractvalue %dx.types.ResRet.i32 %4813, 0
  %4815 = icmp eq i32 %4814, -1
  br i1 %4815, label %5012, label %4816, !dx.controlflow.hints !97

; <label>:4816                                    ; preds = %4761
  %4817 = mul i32 %4814, 148
  %4818 = add i32 %4817, 4
  %4819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4818, i32 undef)  ; BufferLoad(srv,index,wot)
  %4820 = extractvalue %dx.types.ResRet.f32 %4819, 0
  %4821 = add i32 %4817, 8
  %4822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4821, i32 undef)  ; BufferLoad(srv,index,wot)
  %4823 = extractvalue %dx.types.ResRet.f32 %4822, 0
  %4824 = add i32 %4817, 36
  %4825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4824, i32 undef)  ; BufferLoad(srv,index,wot)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = add i32 %4817, 60
  %4828 = add i32 %4817, 92
  %4829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4828, i32 undef)  ; BufferLoad(srv,index,wot)
  %4830 = extractvalue %dx.types.ResRet.i32 %4829, 0
  %4831 = add i32 %4817, 116
  %4832 = fsub fast float %4783, %4820
  %4833 = fsub fast float %4784, %4823
  %4834 = fmul fast float %4791, %4832
  %4835 = fmul fast float %4791, %4833
  %4836 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4837 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4838 = fsub fast float 1.000000e+00, %4837
  %4839 = extractvalue %dx.types.CBufRet.f32 %4661, 3
  %4840 = fadd fast float %4839, 2.000000e+00
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 3
  %4843 = fadd fast float %4840, %4842
  %4844 = add i32 %4830, 0
  %4845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4844, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4846 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4845, i32 0)  ; GetDimensions(handle,mipLevel)
  %4847 = extractvalue %dx.types.Dimensions %4846, 0
  %4848 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4847)  ; FirstbitLo(value)
  %4849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.i32 %4849, 1
  %4851 = sub nsw i32 %4850, %4848
  %4852 = sitofp i32 %4851 to float
  %4853 = fsub fast float %4843, %4852
  %4854 = call float @dx.op.binary.f32(i32 35, float %4853, float 0.000000e+00)  ; FMax(a,b)
  %4855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4845, %dx.types.Handle %24, float %4836, float %4838, float %4826, float undef, i32 0, i32 0, i32 undef, float %4854)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4856 = extractvalue %dx.types.ResRet.f32 %4855, 0
  %4857 = fcmp ule float %4856, 0x3FE0101020000000
  %4858 = extractvalue %dx.types.CBufRet.i32 %4849, 0
  %4859 = and i32 %4858, 128
  %4860 = icmp ne i32 %4859, 0
  %4861 = and i1 %4857, %4860
  br i1 %4861, label %5012, label %4862, !dx.controlflow.hints !98

; <label>:4862                                    ; preds = %4816
  %4863 = add i32 %4817, 20
  %4864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4863, i32 undef)  ; BufferLoad(srv,index,wot)
  %4865 = extractvalue %dx.types.ResRet.f32 %4864, 0
  %4866 = add i32 %4817, 24
  %4867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4866, i32 undef)  ; BufferLoad(srv,index,wot)
  %4868 = extractvalue %dx.types.ResRet.f32 %4867, 0
  %4869 = add i32 %4817, 40
  %4870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4869, i32 undef)  ; BufferLoad(srv,index,wot)
  %4871 = extractvalue %dx.types.ResRet.f32 %4870, 0
  %4872 = add i32 %4817, 96
  %4873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4872, i32 undef)  ; BufferLoad(srv,index,wot)
  %4874 = extractvalue %dx.types.ResRet.i32 %4873, 0
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 2
  %4877 = fmul fast float %4876, %4836
  %4878 = fmul fast float %4876, %4838
  %4879 = extractvalue %dx.types.CBufRet.f32 %4875, 3
  %4880 = fadd fast float %4877, %4879
  %4881 = fadd fast float %4878, %4879
  %4882 = add i32 %4874, 0
  %4883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4882, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4884 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4883, i32 0)  ; GetDimensions(handle,mipLevel)
  %4885 = extractvalue %dx.types.Dimensions %4884, 0
  %4886 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4885)  ; FirstbitLo(value)
  %4887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.i32 %4887, 1
  %4889 = sub nsw i32 %4888, %4886
  %4890 = sitofp i32 %4889 to float
  %4891 = fsub fast float %4840, %4890
  %4892 = call float @dx.op.binary.f32(i32 35, float %4891, float 0.000000e+00)  ; FMax(a,b)
  %4893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4883, %dx.types.Handle %24, float %4880, float %4881, float %4871, float undef, i32 0, i32 0, i32 undef, float %4892)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4894 = extractvalue %dx.types.ResRet.f32 %4893, 0
  %4895 = fmul fast float %4894, %4865
  %4896 = fadd fast float %4895, %4868
  %4897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4898 = extractvalue %dx.types.CBufRet.f32 %4897, 0
  %4899 = extractvalue %dx.types.CBufRet.f32 %4897, 1
  %4900 = extractvalue %dx.types.CBufRet.f32 %4897, 2
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 3
  %4903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4904 = extractvalue %dx.types.CBufRet.f32 %4903, 3
  %4905 = extractvalue %dx.types.CBufRet.f32 %4897, 3
  %4906 = fadd fast float %4902, %4783
  %4907 = fadd fast float %4904, %4784
  %4908 = fadd fast float %4896, %4905
  %4909 = fmul fast float %4906, %4898
  %4910 = call float @dx.op.tertiary.f32(i32 46, float %4907, float %4899, float %4909)  ; FMad(a,b,c)
  %4911 = call float @dx.op.tertiary.f32(i32 46, float %4908, float %4900, float %4910)  ; FMad(a,b,c)
  %4912 = fsub fast float %4911, %4905
  %4913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4914 = extractvalue %dx.types.CBufRet.f32 %4913, 2
  %4915 = fsub fast float %4912, %4914
  %4916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.i32 %4916, 0
  %4918 = call i32 @dx.op.binary.i32(i32 40, i32 %4814, i32 %4917)  ; UMin(a,b)
  %4919 = mul i32 %4918, 36
  %4920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4919, i32 undef)  ; BufferLoad(srv,index,wot)
  %4921 = extractvalue %dx.types.ResRet.i32 %4920, 0
  %4922 = add i32 %4919, 4
  %4923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4924 = extractvalue %dx.types.CBufRet.f32 %4923, 0
  %4925 = fmul fast float %4924, %4836
  %4926 = fmul fast float %4924, %4838
  %4927 = extractvalue %dx.types.CBufRet.f32 %4923, 1
  %4928 = fadd fast float %4925, %4927
  %4929 = fadd fast float %4926, %4927
  %4930 = icmp eq i32 %4921, 0
  br i1 %4930, label %4999, label %4931

; <label>:4931                                    ; preds = %4862
  br label %4932

; <label>:4932                                    ; preds = %4989, %4931
  %4933 = phi float [ %4990, %4989 ], [ 0.000000e+00, %4931 ]
  %4934 = phi float [ %4991, %4989 ], [ 0.000000e+00, %4931 ]
  %4935 = phi float [ %4992, %4989 ], [ 0.000000e+00, %4931 ]
  %4936 = phi float [ %4993, %4989 ], [ 0.000000e+00, %4931 ]
  %4937 = phi float [ %4994, %4989 ], [ 0.000000e+00, %4931 ]
  %4938 = phi float [ %4995, %4989 ], [ 0.000000e+00, %4931 ]
  %4939 = phi i32 [ %4996, %4989 ], [ 0, %4931 ]
  %4940 = shl i32 %4939, 2
  %4941 = add i32 %4827, %4940
  %4942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4941, i32 undef)  ; BufferLoad(srv,index,wot)
  %4943 = extractvalue %dx.types.ResRet.f32 %4942, 0
  %4944 = add i32 %4831, %4940
  %4945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4944, i32 undef)  ; BufferLoad(srv,index,wot)
  %4946 = extractvalue %dx.types.ResRet.i32 %4945, 0
  %4947 = add i32 %4946, 0
  %4948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4947, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4949 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4948, i32 0)  ; GetDimensions(handle,mipLevel)
  %4950 = extractvalue %dx.types.Dimensions %4949, 0
  %4951 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4950)  ; FirstbitLo(value)
  %4952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.i32 %4952, 1
  %4954 = sub nsw i32 %4953, %4951
  %4955 = sitofp i32 %4954 to float
  %4956 = fsub fast float %4840, %4955
  %4957 = call float @dx.op.binary.f32(i32 35, float %4956, float 0.000000e+00)  ; FMax(a,b)
  %4958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4948, %dx.types.Handle %24, float %4928, float %4929, float %4943, float undef, i32 0, i32 0, i32 undef, float %4957)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4959 = extractvalue %dx.types.ResRet.f32 %4958, 0
  %4960 = fcmp fast ogt float %4959, 0.000000e+00
  br i1 %4960, label %4961, label %4989, !dx.controlflow.hints !99

; <label>:4961                                    ; preds = %4932
  %4962 = add i32 %4922, %4940
  %4963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4962, i32 undef)  ; BufferLoad(srv,index,wot)
  %4964 = extractvalue %dx.types.ResRet.i32 %4963, 0
  %4965 = and i32 %4964, 32767
  %4966 = mul nuw nsw i32 %4965, 928
  %4967 = add nuw nsw i32 %4966, 48
  %4968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4967, i32 undef)  ; BufferLoad(srv,index,wot)
  %4969 = extractvalue %dx.types.ResRet.f32 %4968, 0
  %4970 = extractvalue %dx.types.ResRet.f32 %4968, 1
  %4971 = extractvalue %dx.types.ResRet.f32 %4968, 2
  %4972 = add nuw nsw i32 %4966, 60
  %4973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4972, i32 undef)  ; BufferLoad(srv,index,wot)
  %4974 = extractvalue %dx.types.ResRet.f32 %4973, 0
  %4975 = extractvalue %dx.types.ResRet.f32 %4973, 1
  %4976 = extractvalue %dx.types.ResRet.f32 %4973, 2
  %4977 = fmul fast float %4969, %4959
  %4978 = fmul fast float %4970, %4959
  %4979 = fmul fast float %4971, %4959
  %4980 = fadd fast float %4977, %4933
  %4981 = fadd fast float %4978, %4934
  %4982 = fadd fast float %4979, %4935
  %4983 = fmul fast float %4974, %4959
  %4984 = fmul fast float %4975, %4959
  %4985 = fmul fast float %4976, %4959
  %4986 = fadd fast float %4983, %4936
  %4987 = fadd fast float %4984, %4937
  %4988 = fadd fast float %4985, %4938
  br label %4989

; <label>:4989                                    ; preds = %4961, %4932
  %4990 = phi float [ %4980, %4961 ], [ %4933, %4932 ]
  %4991 = phi float [ %4981, %4961 ], [ %4934, %4932 ]
  %4992 = phi float [ %4982, %4961 ], [ %4935, %4932 ]
  %4993 = phi float [ %4986, %4961 ], [ %4936, %4932 ]
  %4994 = phi float [ %4987, %4961 ], [ %4937, %4932 ]
  %4995 = phi float [ %4988, %4961 ], [ %4938, %4932 ]
  %4996 = add nuw i32 %4939, 1
  %4997 = icmp eq i32 %4996, %4921
  br i1 %4997, label %4998, label %4932

; <label>:4998                                    ; preds = %4989
  br label %4999

; <label>:4999                                    ; preds = %4998, %4862
  %5000 = phi float [ 0.000000e+00, %4862 ], [ %4990, %4998 ]
  %5001 = phi float [ 0.000000e+00, %4862 ], [ %4991, %4998 ]
  %5002 = phi float [ 0.000000e+00, %4862 ], [ %4992, %4998 ]
  %5003 = phi float [ 0.000000e+00, %4862 ], [ %4993, %4998 ]
  %5004 = phi float [ 0.000000e+00, %4862 ], [ %4994, %4998 ]
  %5005 = phi float [ 0.000000e+00, %4862 ], [ %4995, %4998 ]
  %5006 = fadd fast float %5003, %5000
  %5007 = fmul fast float %5006, 0x3F847AE140000000
  %5008 = fadd fast float %5004, %5001
  %5009 = fmul fast float %5008, 0x3F847AE140000000
  %5010 = fadd fast float %5005, %5002
  %5011 = fmul fast float %5010, 0x3F847AE140000000
  br label %5012

; <label>:5012                                    ; preds = %4999, %4816, %4761, %4758, %4731, %4693, %4656
  %5013 = phi i1 [ true, %4656 ], [ false, %4731 ], [ true, %4693 ], [ false, %4999 ], [ true, %4761 ], [ true, %4816 ], [ true, %4758 ]
  %5014 = phi float [ 0.000000e+00, %4656 ], [ %4743, %4731 ], [ -1.310720e+05, %4693 ], [ %4915, %4999 ], [ -1.310720e+05, %4761 ], [ -1.310720e+05, %4816 ], [ -1.310720e+05, %4758 ]
  %5015 = phi float [ 0.000000e+00, %4656 ], [ %4753, %4731 ], [ 0.000000e+00, %4693 ], [ %5007, %4999 ], [ 0.000000e+00, %4761 ], [ 0.000000e+00, %4816 ], [ 0.000000e+00, %4758 ]
  %5016 = phi float [ 0.000000e+00, %4656 ], [ %4755, %4731 ], [ 0.000000e+00, %4693 ], [ %5009, %4999 ], [ 0.000000e+00, %4761 ], [ 0.000000e+00, %4816 ], [ 0.000000e+00, %4758 ]
  %5017 = phi float [ 0.000000e+00, %4656 ], [ %4757, %4731 ], [ 0.000000e+00, %4693 ], [ %5011, %4999 ], [ 0.000000e+00, %4761 ], [ 0.000000e+00, %4816 ], [ 0.000000e+00, %4758 ]
  br i1 %5013, label %5431, label %5018, !dx.controlflow.hints !100

; <label>:5018                                    ; preds = %5012
  %5019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.i32 %5019, 0
  %5021 = and i32 %5020, 64
  %5022 = icmp ne i32 %5021, 0
  %5023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.CBufRet.f32 %5023, 1
  %5026 = extractvalue %dx.types.CBufRet.f32 %5023, 2
  %5027 = fsub fast float %211, %5014
  %5028 = fcmp fast ogt float %5027, 0.000000e+00
  %5029 = xor i1 %5028, true
  %5030 = fmul fast float %5024, 5.120000e+02
  %5031 = fmul fast float %5025, 5.120000e+02
  %5032 = fmul fast float %5026, 5.120000e+02
  %5033 = fadd fast float %5032, %211
  %5034 = fsub fast float %5014, %5033
  %5035 = fmul fast float %5034, 2.000000e+00
  %5036 = fadd fast float %5035, %5033
  %5037 = select i1 %5028, float %5036, float %5033
  %5038 = fsub fast float %5037, %211
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5038, float %5030, float %5031, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.unary.f32(i32 25, float %5039)  ; Rsqrt(value)
  %5041 = fmul fast float %5030, %5040
  %5042 = fmul fast float %5031, %5040
  %5043 = fmul fast float %5038, %5040
  %5044 = fsub fast float %5014, %211
  %5045 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5041, float %5042, float %5043)  ; Dot3(ax,ay,az,bx,by,bz)
  %5047 = fdiv fast float 1.000000e+00, %5046
  %5048 = fmul fast float %5047, %5045
  %5049 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5027, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = fcmp fast ogt float %5049, 0.000000e+00
  %5051 = fcmp fast olt float %5049, 0.000000e+00
  %5052 = zext i1 %5050 to i32
  %5053 = zext i1 %5051 to i32
  %5054 = sub nsw i32 %5052, %5053
  %5055 = sitofp i32 %5054 to float
  %5056 = fsub fast float %5037, %5014
  %5057 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5056, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = fcmp fast ogt float %5057, 0.000000e+00
  %5059 = fcmp fast olt float %5057, 0.000000e+00
  %5060 = zext i1 %5058 to i32
  %5061 = zext i1 %5059 to i32
  %5062 = sub nsw i32 %5060, %5061
  %5063 = sitofp i32 %5062 to float
  %5064 = fcmp fast une float %5055, %5063
  br i1 %5064, label %5065, label %5075, !dx.controlflow.hints !101

; <label>:5065                                    ; preds = %5018
  %5066 = fmul fast float %5043, %5048
  %5067 = fmul fast float %5048, %5042
  %5068 = fmul fast float %5048, %5041
  %5069 = fmul fast float %5068, %5068
  %5070 = fmul fast float %5067, %5067
  %5071 = fadd fast float %5069, %5070
  %5072 = fmul fast float %5066, %5066
  %5073 = fadd fast float %5071, %5072
  %5074 = call float @dx.op.unary.f32(i32 24, float %5073)  ; Sqrt(value)
  br label %5085

; <label>:5075                                    ; preds = %5018
  %5076 = icmp slt i32 %5054, 0
  br i1 %5076, label %5077, label %5085, !dx.controlflow.hints !102

; <label>:5077                                    ; preds = %5075
  %5078 = fsub fast float %211, %5037
  %5079 = fmul fast float %5030, %5030
  %5080 = fmul fast float %5031, %5031
  %5081 = fadd fast float %5079, %5080
  %5082 = fmul fast float %5078, %5078
  %5083 = fadd fast float %5081, %5082
  %5084 = call float @dx.op.unary.f32(i32 24, float %5083)  ; Sqrt(value)
  br label %5085

; <label>:5085                                    ; preds = %5077, %5075, %5065
  %5086 = phi float [ %5074, %5065 ], [ %5084, %5077 ], [ 0.000000e+00, %5075 ]
  %5087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.i32 %5087, 1
  %5089 = icmp ne i32 %5088, 0
  %5090 = and i1 %5089, %5029
  %5091 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5043, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5092 = fmul fast float %5091, %5091
  %5093 = fsub fast float 1.000000e+00, %5092
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 0
  %5096 = extractvalue %dx.types.CBufRet.f32 %5094, 1
  %5097 = extractvalue %dx.types.CBufRet.f32 %5094, 2
  %5098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5098, 0
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 0
  %5102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.f32 %5102, 0
  %5104 = extractvalue %dx.types.CBufRet.f32 %5098, 1
  %5105 = extractvalue %dx.types.CBufRet.f32 %5100, 1
  %5106 = extractvalue %dx.types.CBufRet.f32 %5102, 1
  %5107 = extractvalue %dx.types.CBufRet.f32 %5098, 3
  %5108 = extractvalue %dx.types.CBufRet.f32 %5100, 3
  %5109 = extractvalue %dx.types.CBufRet.f32 %5102, 3
  %5110 = fadd fast float %5095, %209
  %5111 = fadd fast float %5096, %210
  %5112 = fadd fast float %5097, %211
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.CBufRet.f32 %5113, 1
  %5116 = extractvalue %dx.types.CBufRet.f32 %5113, 2
  %5117 = extractvalue %dx.types.CBufRet.f32 %5113, 3
  br i1 %5090, label %5118, label %5311, !dx.controlflow.hints !103

; <label>:5118                                    ; preds = %5085
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 0
  %5121 = fmul fast float %5120, %5120
  %5122 = fmul fast float %5121, %5093
  %5123 = fsub fast float 1.000000e+00, %5122
  %5124 = fcmp fast oge float %5123, 0.000000e+00
  %5125 = fmul fast float %5120, %5041
  %5126 = fmul fast float %5120, %5042
  %5127 = fmul fast float %5120, %5043
  %5128 = call float @dx.op.unary.f32(i32 24, float %5123)  ; Sqrt(value)
  %5129 = fmul fast float %5120, %5091
  %5130 = fsub fast float -0.000000e+00, %5128
  %5131 = fsub fast float %5130, %5129
  %5132 = fadd fast float %5131, %5127
  %5133 = select i1 %5124, float %5125, float 0.000000e+00
  %5134 = select i1 %5124, float %5126, float 0.000000e+00
  %5135 = select i1 %5124, float %5132, float 0.000000e+00
  %5136 = fmul fast float %5133, %5086
  %5137 = fmul fast float %5134, %5086
  %5138 = fmul fast float %5135, %5086
  %5139 = fadd fast float %5110, %5136
  %5140 = fadd fast float %5139, %5107
  %5141 = fadd fast float %5111, %5137
  %5142 = fadd fast float %5141, %5108
  %5143 = fadd fast float %5112, %5138
  %5144 = fadd fast float %5143, %5109
  %5145 = fmul fast float %5140, %5099
  %5146 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5101, float %5145)  ; FMad(a,b,c)
  %5147 = call float @dx.op.tertiary.f32(i32 46, float %5144, float %5103, float %5146)  ; FMad(a,b,c)
  %5148 = fmul fast float %5140, %5104
  %5149 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5105, float %5148)  ; FMad(a,b,c)
  %5150 = call float @dx.op.tertiary.f32(i32 46, float %5144, float %5106, float %5149)  ; FMad(a,b,c)
  %5151 = fsub fast float %5147, %5107
  %5152 = fsub fast float %5151, %5114
  %5153 = fadd fast float %5152, %5116
  %5154 = fsub fast float %5150, %5108
  %5155 = fsub fast float %5154, %5115
  %5156 = fadd fast float %5155, %5116
  %5157 = fmul fast float %5153, %5117
  %5158 = fmul fast float %5156, %5117
  %5159 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5161 = fsub fast float 1.000000e+00, %5159
  %5162 = fsub fast float 1.000000e+00, %5160
  %5163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %26, float %5161, float %5162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5164 = extractvalue %dx.types.ResRet.f32 %5163, 0
  %5165 = fmul fast float %5164, 0x3FBC5ABC00000000
  %5166 = extractvalue %dx.types.CBufRet.f32 %5119, 1
  %5167 = fmul fast float %5166, %5166
  %5168 = fmul fast float %5167, %5093
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = fcmp fast oge float %5169, 0.000000e+00
  %5171 = fmul fast float %5166, %5041
  %5172 = fmul fast float %5166, %5042
  %5173 = fmul fast float %5166, %5043
  %5174 = call float @dx.op.unary.f32(i32 24, float %5169)  ; Sqrt(value)
  %5175 = fmul fast float %5166, %5091
  %5176 = fsub fast float -0.000000e+00, %5174
  %5177 = fsub fast float %5176, %5175
  %5178 = fadd fast float %5177, %5173
  %5179 = select i1 %5170, float %5171, float 0.000000e+00
  %5180 = select i1 %5170, float %5172, float 0.000000e+00
  %5181 = select i1 %5170, float %5178, float 0.000000e+00
  %5182 = fmul fast float %5179, %5086
  %5183 = fmul fast float %5180, %5086
  %5184 = fmul fast float %5181, %5086
  %5185 = fadd fast float %5110, %5182
  %5186 = fadd fast float %5185, %5107
  %5187 = fadd fast float %5111, %5183
  %5188 = fadd fast float %5187, %5108
  %5189 = fadd fast float %5112, %5184
  %5190 = fadd fast float %5189, %5109
  %5191 = fmul fast float %5186, %5099
  %5192 = call float @dx.op.tertiary.f32(i32 46, float %5188, float %5101, float %5191)  ; FMad(a,b,c)
  %5193 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5103, float %5192)  ; FMad(a,b,c)
  %5194 = fmul fast float %5186, %5104
  %5195 = call float @dx.op.tertiary.f32(i32 46, float %5188, float %5105, float %5194)  ; FMad(a,b,c)
  %5196 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5106, float %5195)  ; FMad(a,b,c)
  %5197 = fsub fast float %5193, %5107
  %5198 = fsub fast float %5197, %5114
  %5199 = fadd fast float %5198, %5116
  %5200 = fsub fast float %5196, %5108
  %5201 = fsub fast float %5200, %5115
  %5202 = fadd fast float %5201, %5116
  %5203 = fmul fast float %5199, %5117
  %5204 = fmul fast float %5202, %5117
  %5205 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5206 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5207 = fsub fast float 1.000000e+00, %5205
  %5208 = fsub fast float 1.000000e+00, %5206
  %5209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %26, float %5207, float %5208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = fmul fast float %5210, 0x3F9E4BBD60000000
  %5212 = extractvalue %dx.types.CBufRet.f32 %5119, 2
  %5213 = fmul fast float %5212, %5212
  %5214 = fmul fast float %5213, %5093
  %5215 = fsub fast float 1.000000e+00, %5214
  %5216 = fcmp fast oge float %5215, 0.000000e+00
  %5217 = fmul fast float %5212, %5041
  %5218 = fmul fast float %5212, %5042
  %5219 = fmul fast float %5212, %5043
  %5220 = call float @dx.op.unary.f32(i32 24, float %5215)  ; Sqrt(value)
  %5221 = fmul fast float %5212, %5091
  %5222 = fsub fast float -0.000000e+00, %5220
  %5223 = fsub fast float %5222, %5221
  %5224 = fadd fast float %5223, %5219
  %5225 = select i1 %5216, float %5217, float 0.000000e+00
  %5226 = select i1 %5216, float %5218, float 0.000000e+00
  %5227 = select i1 %5216, float %5224, float 0.000000e+00
  %5228 = fmul fast float %5225, %5086
  %5229 = fmul fast float %5226, %5086
  %5230 = fmul fast float %5227, %5086
  %5231 = fadd fast float %5110, %5228
  %5232 = fadd fast float %5231, %5107
  %5233 = fadd fast float %5111, %5229
  %5234 = fadd fast float %5233, %5108
  %5235 = fadd fast float %5112, %5230
  %5236 = fadd fast float %5235, %5109
  %5237 = fmul fast float %5232, %5099
  %5238 = call float @dx.op.tertiary.f32(i32 46, float %5234, float %5101, float %5237)  ; FMad(a,b,c)
  %5239 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5103, float %5238)  ; FMad(a,b,c)
  %5240 = fmul fast float %5232, %5104
  %5241 = call float @dx.op.tertiary.f32(i32 46, float %5234, float %5105, float %5240)  ; FMad(a,b,c)
  %5242 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5106, float %5241)  ; FMad(a,b,c)
  %5243 = fsub fast float %5239, %5107
  %5244 = fsub fast float %5243, %5114
  %5245 = fadd fast float %5244, %5116
  %5246 = fsub fast float %5242, %5108
  %5247 = fsub fast float %5246, %5115
  %5248 = fadd fast float %5247, %5116
  %5249 = fmul fast float %5245, %5117
  %5250 = fmul fast float %5248, %5117
  %5251 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5252 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5253 = fsub fast float 1.000000e+00, %5251
  %5254 = fsub fast float 1.000000e+00, %5252
  %5255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %26, float %5253, float %5254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5256 = extractvalue %dx.types.ResRet.f32 %5255, 0
  %5257 = fmul fast float %5256, 0x3FDDEACB00000000
  %5258 = fadd fast float %5257, %5211
  %5259 = extractvalue %dx.types.CBufRet.f32 %5119, 3
  %5260 = fmul fast float %5259, %5259
  %5261 = fmul fast float %5260, %5093
  %5262 = fsub fast float 1.000000e+00, %5261
  %5263 = fcmp fast oge float %5262, 0.000000e+00
  %5264 = fmul fast float %5259, %5041
  %5265 = fmul fast float %5259, %5042
  %5266 = fmul fast float %5259, %5043
  %5267 = call float @dx.op.unary.f32(i32 24, float %5262)  ; Sqrt(value)
  %5268 = fmul fast float %5259, %5091
  %5269 = fsub fast float -0.000000e+00, %5267
  %5270 = fsub fast float %5269, %5268
  %5271 = fadd fast float %5270, %5266
  %5272 = select i1 %5263, float %5264, float 0.000000e+00
  %5273 = select i1 %5263, float %5265, float 0.000000e+00
  %5274 = select i1 %5263, float %5271, float 0.000000e+00
  %5275 = fmul fast float %5272, %5086
  %5276 = fmul fast float %5273, %5086
  %5277 = fmul fast float %5274, %5086
  %5278 = fadd fast float %5110, %5275
  %5279 = fadd fast float %5278, %5107
  %5280 = fadd fast float %5111, %5276
  %5281 = fadd fast float %5280, %5108
  %5282 = fadd fast float %5112, %5277
  %5283 = fadd fast float %5282, %5109
  %5284 = fmul fast float %5279, %5099
  %5285 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5101, float %5284)  ; FMad(a,b,c)
  %5286 = call float @dx.op.tertiary.f32(i32 46, float %5283, float %5103, float %5285)  ; FMad(a,b,c)
  %5287 = fmul fast float %5279, %5104
  %5288 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5105, float %5287)  ; FMad(a,b,c)
  %5289 = call float @dx.op.tertiary.f32(i32 46, float %5283, float %5106, float %5288)  ; FMad(a,b,c)
  %5290 = fsub fast float %5286, %5107
  %5291 = fsub fast float %5290, %5114
  %5292 = fadd fast float %5291, %5116
  %5293 = fsub fast float %5289, %5108
  %5294 = fsub fast float %5293, %5115
  %5295 = fadd fast float %5294, %5116
  %5296 = fmul fast float %5292, %5117
  %5297 = fmul fast float %5295, %5117
  %5298 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5300 = fsub fast float 1.000000e+00, %5298
  %5301 = fsub fast float 1.000000e+00, %5299
  %5302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %26, float %5300, float %5301, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5303 = extractvalue %dx.types.ResRet.f32 %5302, 0
  %5304 = fmul fast float %5303, 0x3FE0183CA0000000
  %5305 = fmul fast float %5303, 0x3FB51033E0000000
  %5306 = fadd fast float %5258, %5304
  %5307 = fadd fast float %5256, %5210
  %5308 = fmul fast float %5307, 0x3FD9D2A200000000
  %5309 = fadd fast float %5305, %5165
  %5310 = fadd fast float %5309, %5308
  br label %5357

; <label>:5311                                    ; preds = %5085
  %5312 = fmul fast float %5093, 0x3FE2024E20000000
  %5313 = fsub fast float 1.000000e+00, %5312
  %5314 = fcmp fast oge float %5313, 0.000000e+00
  %5315 = fmul fast float %5041, 0x3FE8018960000000
  %5316 = fmul fast float %5042, 0x3FE8018960000000
  %5317 = fmul fast float %5043, 0x3FE8018960000000
  %5318 = call float @dx.op.unary.f32(i32 24, float %5313)  ; Sqrt(value)
  %5319 = fmul fast float %5091, 0x3FE8018960000000
  %5320 = fsub fast float %5317, %5318
  %5321 = fsub fast float %5320, %5319
  %5322 = select i1 %5314, float %5315, float 0.000000e+00
  %5323 = select i1 %5314, float %5316, float 0.000000e+00
  %5324 = select i1 %5314, float %5321, float 0.000000e+00
  %5325 = select i1 %5028, float %5041, float %5322
  %5326 = select i1 %5028, float %5042, float %5323
  %5327 = select i1 %5028, float %5043, float %5324
  %5328 = fmul fast float %5325, %5086
  %5329 = fmul fast float %5326, %5086
  %5330 = fmul fast float %5327, %5086
  %5331 = fadd fast float %5110, %5328
  %5332 = fadd fast float %5331, %5107
  %5333 = fadd fast float %5111, %5329
  %5334 = fadd fast float %5333, %5108
  %5335 = fadd fast float %5112, %5330
  %5336 = fadd fast float %5335, %5109
  %5337 = fmul fast float %5332, %5099
  %5338 = call float @dx.op.tertiary.f32(i32 46, float %5334, float %5101, float %5337)  ; FMad(a,b,c)
  %5339 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5103, float %5338)  ; FMad(a,b,c)
  %5340 = fmul fast float %5332, %5104
  %5341 = call float @dx.op.tertiary.f32(i32 46, float %5334, float %5105, float %5340)  ; FMad(a,b,c)
  %5342 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5106, float %5341)  ; FMad(a,b,c)
  %5343 = fsub fast float %5339, %5107
  %5344 = fsub fast float %5343, %5114
  %5345 = fadd fast float %5344, %5116
  %5346 = fsub fast float %5342, %5108
  %5347 = fsub fast float %5346, %5115
  %5348 = fadd fast float %5347, %5116
  %5349 = fmul fast float %5345, %5117
  %5350 = fmul fast float %5348, %5117
  %5351 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5352 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5353 = fsub fast float 1.000000e+00, %5351
  %5354 = fsub fast float 1.000000e+00, %5352
  %5355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %26, float %5353, float %5354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5356 = extractvalue %dx.types.ResRet.f32 %5355, 0
  br label %5357

; <label>:5357                                    ; preds = %5311, %5118
  %5358 = phi float [ %5356, %5311 ], [ %5306, %5118 ]
  %5359 = phi float [ %5356, %5311 ], [ %5310, %5118 ]
  %5360 = phi float [ %5356, %5311 ], [ %5164, %5118 ]
  %5361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.f32 %5361, 0
  %5363 = call float @dx.op.unary.f32(i32 6, float %5362)  ; FAbs(value)
  %5364 = fmul fast float %5086, %5086
  %5365 = fadd fast float %5364, 1.000000e+00
  %5366 = fdiv fast float %5363, %5365
  %5367 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5368 = fsub fast float -0.000000e+00, %5086
  %5369 = select i1 %5028, float -0.000000e+00, float %5368
  %5370 = fmul fast float %5015, 0x3FF7154760000000
  %5371 = fmul fast float %5370, %5369
  %5372 = fmul fast float %5016, 0x3FF7154760000000
  %5373 = fmul fast float %5372, %5369
  %5374 = fmul fast float %5017, 0x3FF7154760000000
  %5375 = fmul fast float %5374, %5369
  %5376 = call float @dx.op.unary.f32(i32 21, float %5371)  ; Exp(value)
  %5377 = call float @dx.op.unary.f32(i32 21, float %5373)  ; Exp(value)
  %5378 = call float @dx.op.unary.f32(i32 21, float %5375)  ; Exp(value)
  %5379 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5380 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5381 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5382 = call float @dx.op.unary.f32(i32 6, float %5091)  ; FAbs(value)
  %5383 = fsub fast float 1.000000e+00, %5382
  %5384 = bitcast float %5383 to i32
  %5385 = sitofp i32 %5384 to float
  %5386 = fptosi float %5385 to i32
  %5387 = bitcast i32 %5386 to float
  %5388 = fmul fast float %5387, 0x3FEF333340000000
  %5389 = fadd fast float %5388, 0x3F999999A0000000
  %5390 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5391 = fsub fast float 1.000000e+00, %5390
  %5392 = fadd fast float %5358, 1.000000e+00
  %5393 = fadd fast float %5359, 1.000000e+00
  %5394 = fadd fast float %5360, 1.000000e+00
  %5395 = fmul fast float %5379, %5392
  %5396 = fmul fast float %5380, %5393
  %5397 = fmul fast float %5381, %5394
  %5398 = fmul fast float %5395, %5391
  %5399 = fmul fast float %5396, %5391
  %5400 = fmul fast float %5397, %5391
  %5401 = fmul fast float %5367, %5392
  %5402 = fmul fast float %5401, %5379
  %5403 = fmul fast float %5402, %5390
  %5404 = fmul fast float %5367, %5393
  %5405 = fmul fast float %5404, %5380
  %5406 = fmul fast float %5405, %5390
  %5407 = fmul fast float %5367, %5394
  %5408 = fmul fast float %5407, %5381
  %5409 = fmul fast float %5408, %5390
  %5410 = fadd fast float %5403, %5379
  %5411 = fadd fast float %5406, %5380
  %5412 = fadd fast float %5409, %5381
  %5413 = call float @dx.op.unary.f32(i32 6, float %5027)  ; FAbs(value)
  %5414 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  %5415 = select i1 %5028, float %5410, float %5398
  %5416 = select i1 %5028, float %5411, float %5399
  %5417 = select i1 %5028, float %5412, float %5400
  %5418 = select i1 %5022, float %5414, float 0.000000e+00
  %5419 = fsub fast float %5415, %5379
  %5420 = fsub fast float %5416, %5380
  %5421 = fsub fast float %5417, %5381
  %5422 = fmul fast float %5419, %5418
  %5423 = fmul fast float %5420, %5418
  %5424 = fmul fast float %5421, %5418
  %5425 = fadd fast float %5422, %5379
  %5426 = fadd fast float %5423, %5380
  %5427 = fadd fast float %5424, %5381
  %5428 = fmul fast float %5425, %4649
  %5429 = fmul fast float %5426, %4649
  %5430 = fmul fast float %5427, %4649
  br label %5431

; <label>:5431                                    ; preds = %5357, %5012, %4648
  %5432 = phi float [ %5428, %5357 ], [ %4649, %5012 ], [ %4649, %4648 ]
  %5433 = phi float [ %5429, %5357 ], [ %4649, %5012 ], [ %4649, %4648 ]
  %5434 = phi float [ %5430, %5357 ], [ %4649, %5012 ], [ %4649, %4648 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %217, i32 %218, i32 %97, float %5432, float %5433, float %5434, float %5432, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5435

; <label>:5435                                    ; preds = %5431, %115
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

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

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!43}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !32, !34, !37}
!5 = !{!6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31}
!6 = !{i32 0, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 8, i32 1, i32 3, i32 0, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 3, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 16, i32 1, i32 7, i32 0, !10}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 24, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 19, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 20, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 25, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 26, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 27, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 17, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 15, i32 1, i32 7, i32 0, !30}
!30 = !{i32 0, i32 14}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!32 = !{!33}
!33 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!34 = !{!35, !36}
!35 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{i32 1, %hostlayout.SunvisConstants* undef, !"", i32 0, i32 1, i32 1, i32 176, null}
!37 = !{!38, !39, !40, !41, !42}
!38 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!42 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!43 = !{void ()* @cs_sunvis_trans, !"cs_sunvis_trans", null, !4, !44}
!44 = !{i32 0, i64 272, i32 4, !45}
!45 = !{i32 8, i32 8, i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !52, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
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
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}

