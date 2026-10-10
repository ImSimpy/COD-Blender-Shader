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
; shader hash: 882c9df19e68b7f41fd4ac94b5e9f253
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
;                                   sampler      NA          NA      S5             s5     1
;                                   texture     f32     2darray      T0      t0,space6unbounded
;                                   texture     f32          2d      T1            t18     1
;                                   texture     f32          2d      T2             t7     1
;                                   texture     u32        2dMS      T3             t8     1
;                                   texture     u32     2darray      T4            t16     1
;                                   texture    byte         r/o      T5            t13     1
;                                   texture    byte         r/o      T6            t24     1
;                                   texture     f32          2d      T7            t19     1
;                                   texture     f32          2d      T8            t20     1
;                                   texture     f32          2d      T9            t21     1
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
;                                   texture     f32          2d     T23             t4     1
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>" = type { <4 x i32>, %"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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

@MSM_VOGEL_DISK.v.1dim = internal constant [32 x float] [float 0xBFD19D7780000000, float 0xBFA8ED4440000000, float 0xBFC0AF4F00000000, float 0x3FBE91B820000000, float 0x3FD088BDA0000000, float 0xBFC5090F80000000, float 0xBFB07314C0000000, float 0xBFDFBC1260000000, float 0xBFC4DBB5A0000000, float 0xBFD414A4E0000000, float 0xBFB5FAA700000000, float 0x3FD470B8C0000000, float 0x3FC3785720000000, float 0x3FC9652BE0000000, float 0x3FD68B32C0000000, float 0x3FC0773E20000000, float 0xBFD8F4E020000000, float 0xBFCCECF200000000, float 1.250000e-01, float 0.000000e+00, float 0x3FC0968940000000, float 0x3FDA714BA0000000, float 0xBFD76262C0000000, float 0x3FC34E3360000000, float 0x3FDD3C2DA0000000, float 0xBFB9B584C0000000, float 0xBFD1D1D8A0000000, float 0x3FD958C4C0000000, float 0x3F9361EA00000000, float 0xBFCB9B4DC0000000, float 0x3FC67DE500000000, float 0xBFD80828C0000000], align 4
@MSM_VOGEL_DISK_ROTATIONS.v.1dim = internal constant [128 x float] [float 1.000000e+00, float -0.000000e+00, float 0xBFE79886E0000000, float 0xBFE59D9D40000000, float 0x3FB6618480000000, float 0x3FEFE0A200000000, float 0x3FE3785520000000, float 0xBFE9652DE0000000, float 0xBFEF82C6E0000000, float 0x3FC64B9880000000, float 0x3FEB000A80000000, float 0x3FE12CE040000000, float 0xBFD09D5A20000000, float 0xBFEEE72320000000, float 0xBFDD7F8440000000, float 0x3FEC65F960000000, float 0x3FEE0EED00000000, float 0xBFD5F455A0000000, float 0xBFED943C00000000, float 0xBFD86B6E00000000, float 0x3FDB2046C0000000, float 0x3FECFBC800000000, float 0x3FD3277C40000000, float 0xBFEE888300000000, float 0xBFEBAFD120000000, float 0x3FE00B86C0000000, float 0x3FEF40EE00000000, float 0x3FCB7BFA40000000, float 0xBFE26772E0000000, float 0xBFEA2D9280000000, float 0xBFC07314C0000000, float 0x3FEFBC1260000000, float 0x3FE8780340000000, float 0xBFE49F4D40000000, float 0xBFEFF90100000000, float 0xBFA527CDA0000000, float 0x3FE6AEB800000000, float 0x3FE6927B20000000, float 0xBFA7A63080000000, float 0xBFEFF74260000000, float 0xBFE480B460000000, float 0x3FE891ADA0000000, float 0x3FEFB6D860000000, float 0xBFC11172E0000000, float 0xBFEA4475E0000000, float 0xBFE246B8C0000000, float 0x3FCC17E340000000, float 0x3FEF384120000000, float 0x3FDFD1D8A0000000, float 0xBFEBC3C180000000, float 0xBFEE7C7600000000, float 0x3FD373A360000000, float 0x3FED0C9DA0000000, float 0x3FDAD7DC00000000, float 0xBFD8B530C0000000, float 0xBFED84E840000000, float 0xBFD5A93F20000000, float 0x3FEE1C8860000000, float 0x3FEC537C20000000, float 0xBFDDC64BA0000000, float 0xBFEEF16900000000, float 0xBFD0502AC0000000, float 0x3FE14E8540000000, float 0x3FEAEA8540000000, float 0x3FC5AE3600000000, float 0xBFEF89A240000000, float 0xBFE94CCCC0000000, float 0x3FE397F840000000, float 0x3FEFE40640000000, float 0x3FB5232EE0000000, float 0xBFE5BAFFC0000000, float 0xBFE77D7A20000000, float 0x3F73F7DF00000000, float 0x3FEFFFE6E0000000, float 0x3FE5801B40000000, float 0xBFE7B36DE0000000, float 0xBFEFDD0B80000000, float 0x3FB79FB8A0000000, float 0x3FE97D6520000000, float 0x3FE3589480000000, float 0xBFC6E8D100000000, float 0xBFEF7BB940000000, float 0xBFE10B2200000000, float 0x3FEB1565C0000000, float 0x3FEEDCAD20000000, float 0xBFD0EA7040000000, float 0xBFEC784CA0000000, float 0xBFDD388A80000000, float 0x3FD63F4AA0000000, float 0x3FEE012160000000, float 0x3FD8218580000000, float 0xBFEDA361A0000000, float 0xBFECEAC420000000, float 0x3FDB688BE0000000, float 0x3FEE945FA0000000, float 0x3FD2DB37C0000000, float 0xBFE02E07E0000000, float 0xBFEB9BB4A0000000, float 0xBFCADFDF00000000, float 0x3FEF4968A0000000, float 0x3FEA168720000000, float 0xBFE28811C0000000, float 0xBFEFC11C20000000, float 0xBFBFA93B00000000, float 0x3FE4BDC6A0000000, float 0x3FE85E3320000000, float 0x3FA2A94CA0000000, float 0xBFEFFA8F80000000, float 0xBFE6761AA0000000, float 0x3FE6CAD360000000, float 0x3FEFF55160000000, float 0xBFAA246B20000000, float 0xBFE8AB3020000000, float 0xBFE461FA00000000, float 0x3FC1AFB7E0000000, float 0x3FEFB16C20000000, float 0x3FE225E360000000, float 0xBFEA5B3180000000, float 0xBFEF2F6620000000, float 0x3FCCB3AAC0000000, float 0x3FEBD78600000000, float 0x3FDF8C71A0000000, float 0xBFD3BFAD20000000, float 0xBFEE703B00000000, float 0xBFDA8F4300000000, float 0x3FED1D4740000000, float 0x3FED756640000000, float 0xBFD8FEC9A0000000], align 4

define void @cs_sunvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = alloca [4 x i32], align 4
  %34 = alloca [4 x i32], align 4
  %35 = alloca [4 x i32], align 4
  %36 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %37 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %38 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %39 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %40 = alloca [12 x float], align 4
  %41 = alloca [12 x float], align 4
  %42 = alloca [12 x float], align 4
  %43 = alloca [12 x float], align 4
  %44 = alloca [12 x float], align 4
  %45 = alloca [12 x float], align 4
  %46 = alloca [4 x i32], align 4
  %47 = shl i32 %38, 1
  %48 = shl i32 %39, 1
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %84, label %52, !dx.controlflow.hints !48

; <label>:52                                      ; preds = %0
  %53 = shl i32 %36, 2
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %53, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  %56 = lshr i32 %55, 28
  %57 = and i32 %56, 3
  %58 = lshr i32 %55, 14
  %59 = and i32 %58, 16383
  %60 = and i32 %55, 16383
  %61 = icmp eq i32 %57, 0
  %62 = shl nuw nsw i32 %59, 4
  %63 = shl nuw nsw i32 %60, 4
  br i1 %61, label %81, label %64, !dx.controlflow.hints !49

; <label>:64                                      ; preds = %52
  %65 = shl nuw nsw i32 %59, 3
  %66 = shl nuw nsw i32 %60, 3
  %67 = or i32 %65, %38
  %68 = or i32 %66, %39
  %69 = add nsw i32 %57, -1
  %70 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %67, i32 %68, i32 %69, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = lshr i32 %71, 4
  %73 = and i32 %72, 15
  %74 = and i32 %71, 15
  %75 = or i32 %73, %62
  %76 = or i32 %74, %63
  %77 = and i32 %72, 1
  %78 = shl i32 %71, 1
  %79 = and i32 %78, 2
  %80 = or i32 %77, %79
  br label %84

; <label>:81                                      ; preds = %52
  %82 = or i32 %62, %47
  %83 = or i32 %63, %48
  br label %84

; <label>:84                                      ; preds = %81, %64, %0
  %85 = phi i32 [ %59, %64 ], [ %59, %81 ], [ %36, %0 ]
  %86 = phi i32 [ %60, %64 ], [ %60, %81 ], [ %37, %0 ]
  %87 = phi i32 [ %80, %64 ], [ 0, %81 ], [ 0, %0 ]
  %88 = phi i32 [ %75, %64 ], [ %82, %81 ], [ 0, %0 ]
  %89 = phi i32 [ %76, %64 ], [ %83, %81 ], [ 0, %0 ]
  %90 = uitofp i32 %88 to float
  %91 = uitofp i32 %89 to float
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %95 = fmul fast float %93, %90
  %96 = fmul fast float %94, %91
  %97 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %88, i32 %89, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fcmp fast olt float %98, -1.000000e+00
  %100 = fcmp fast ogt float %98, -1.000000e+00
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %103 = select i1 %100, float %102, float 1.000000e+00
  %104 = fadd fast float %98, 1.000000e+00
  %105 = fmul fast float %103, %104
  %106 = call float @dx.op.unary.f32(i32 6, float %105)  ; FAbs(value)
  %107 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %108 = fcmp fast ult float %106, %107
  %109 = lshr i32 %88, 1
  %110 = lshr i32 %89, 1
  br i1 %108, label %112, label %111, !dx.controlflow.hints !50

; <label>:111                                     ; preds = %84
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %109, i32 %110, i32 %87, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3567

; <label>:112                                     ; preds = %84
  %113 = fmul fast float %95, 2.000000e+00
  %114 = fmul fast float %96, 2.000000e+00
  %115 = fsub fast float 1.000000e+00, %113
  %116 = fsub fast float 1.000000e+00, %114
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = select i1 %99, float %118, float %122
  %126 = select i1 %99, float %119, float %123
  %127 = select i1 %99, float %120, float %124
  %128 = fmul fast float %125, %115
  %129 = fmul fast float %126, %115
  %130 = fmul fast float %127, %115
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = select i1 %99, float %132, float %136
  %140 = select i1 %99, float %133, float %137
  %141 = select i1 %99, float %134, float %138
  %142 = fmul fast float %139, %116
  %143 = fmul fast float %140, %116
  %144 = fmul fast float %141, %116
  %145 = fadd fast float %142, %128
  %146 = fadd fast float %143, %129
  %147 = fadd fast float %144, %130
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = select i1 %99, float %149, float %153
  %157 = select i1 %99, float %150, float %154
  %158 = select i1 %99, float %151, float %155
  %159 = fadd fast float %145, %156
  %160 = fadd fast float %146, %157
  %161 = fadd fast float %147, %158
  %162 = fmul fast float %159, %106
  %163 = fmul fast float %160, %106
  %164 = fmul fast float %161, %106
  %165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.i32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.i32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.i32 %165, 2
  %169 = extractvalue %dx.types.CBufRet.i32 %165, 3
  %170 = and i32 %88, 1
  %171 = shl i32 %89, 1
  %172 = and i32 %171, 2
  %173 = or i32 %172, %170
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 0
  store i32 %166, i32* %174, align 4
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 1
  store i32 %167, i32* %175, align 4
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 2
  store i32 %168, i32* %176, align 4
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 3
  store i32 %169, i32* %177, align 4
  %178 = getelementptr [4 x i32], [4 x i32]* %46, i32 0, i32 %173
  %179 = load i32, i32* %178, align 4, !tbaa !51
  %180 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 %179, i32 %109, i32 %110, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = lshr i32 %181, 8
  %183 = and i32 %181, 255
  %184 = and i32 %182, 255
  %185 = uitofp i32 %183 to float
  %186 = uitofp i32 %184 to float
  %187 = fmul fast float %185, 0x3F80101020000000
  %188 = fmul fast float %186, 0x3F80101020000000
  %189 = fadd fast float %187, -1.000000e+00
  %190 = fadd fast float %188, -1.000000e+00
  %191 = call float @dx.op.unary.f32(i32 6, float %189)  ; FAbs(value)
  %192 = fsub fast float 1.000000e+00, %191
  %193 = call float @dx.op.unary.f32(i32 6, float %190)  ; FAbs(value)
  %194 = fsub fast float %192, %193
  %195 = fsub fast float -0.000000e+00, %194
  %196 = call float @dx.op.binary.f32(i32 35, float %195, float 0.000000e+00)  ; FMax(a,b)
  %197 = fcmp fast ogt float %189, 0.000000e+00
  %198 = fsub fast float -0.000000e+00, %196
  %199 = select i1 %197, float %198, float %196
  %200 = fadd fast float %199, %189
  %201 = fcmp fast ogt float %190, 0.000000e+00
  %202 = select i1 %201, float %198, float %196
  %203 = fadd fast float %202, %190
  %204 = call float @dx.op.dot3.f32(i32 55, float %200, float %203, float %194, float %200, float %203, float %194)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call float @dx.op.unary.f32(i32 25, float %204)  ; Rsqrt(value)
  %206 = fmul fast float %200, %205
  %207 = fmul fast float %203, %205
  %208 = fmul fast float %205, %194
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %211 = extractvalue %dx.types.CBufRet.f32 %209, 1
  %212 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %213 = call float @dx.op.dot3.f32(i32 55, float %210, float %211, float %212, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %214 = call float @dx.op.unary.f32(i32 6, float %213)  ; FAbs(value)
  %215 = fsub fast float 1.000000e+00, %214
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %218 = fsub fast float -0.000000e+00, %213
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  %220 = fmul fast float %217, %219
  %221 = fsub fast float %215, %220
  %222 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %223 = fmul fast float %221, %222
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %227 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %228 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %232 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %237 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %238 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %239 = fmul fast float %225, %162
  %240 = call float @dx.op.tertiary.f32(i32 46, float %163, float %226, float %239)  ; FMad(a,b,c)
  %241 = call float @dx.op.tertiary.f32(i32 46, float %164, float %227, float %240)  ; FMad(a,b,c)
  %242 = fadd fast float %241, %228
  %243 = fmul fast float %230, %162
  %244 = call float @dx.op.tertiary.f32(i32 46, float %163, float %231, float %243)  ; FMad(a,b,c)
  %245 = call float @dx.op.tertiary.f32(i32 46, float %164, float %232, float %244)  ; FMad(a,b,c)
  %246 = fadd fast float %245, %233
  %247 = fmul fast float %235, %162
  %248 = call float @dx.op.tertiary.f32(i32 46, float %163, float %236, float %247)  ; FMad(a,b,c)
  %249 = call float @dx.op.tertiary.f32(i32 46, float %164, float %237, float %248)  ; FMad(a,b,c)
  %250 = fadd fast float %249, %238
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %253 = fmul fast float %252, 0x3FE3C6EF40000000
  %254 = frem fast float %90, 2.560000e+02
  %255 = frem fast float %91, 2.560000e+02
  %256 = fptoui float %254 to i32
  %257 = fptoui float %255 to i32
  %258 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %256, i32 %257, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 2
  %260 = fadd fast float %259, %253
  %261 = call float @dx.op.unary.f32(i32 22, float %260)  ; Frc(value)
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 1
  %264 = fcmp fast une float %263, 0.000000e+00
  br i1 %264, label %265, label %1886, !dx.controlflow.hints !55

; <label>:265                                     ; preds = %112
  %266 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %267 = fptoui float %266 to i32
  %268 = add i32 %267, 15
  %269 = lshr i32 %268, 4
  %270 = mul i32 %269, %86
  %271 = add i32 %270, %85
  %272 = shl i32 %271, 3
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = lshr i32 %274, 28
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %296, !dx.controlflow.hints !56

; <label>:277                                     ; preds = %265
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %282 = fmul fast float %279, %223
  %283 = fadd fast float %281, %250
  %284 = fadd fast float %283, %282
  %285 = extractvalue %dx.types.CBufRet.f32 %278, 0
  %286 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %287 = extractvalue %dx.types.CBufRet.f32 %278, 3
  %288 = fmul fast float %287, %242
  %289 = fmul fast float %287, %246
  %290 = fadd fast float %288, %285
  %291 = fadd fast float %289, %286
  %292 = call float @dx.op.binary.f32(i32 35, float %284, float 0.000000e+00)  ; FMax(a,b)
  %293 = fadd fast float %292, 0x3F10000000000000
  %294 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %290, float %291, float undef, float undef, i32 0, i32 0, i32 undef, float %293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  br label %2739

; <label>:296                                     ; preds = %265
  %297 = icmp eq i32 %275, 1
  br i1 %297, label %298, label %317, !dx.controlflow.hints !57

; <label>:298                                     ; preds = %296
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %303 = fmul fast float %300, %223
  %304 = fadd fast float %302, %250
  %305 = fadd fast float %304, %303
  %306 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %307 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %308 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %309 = fmul fast float %308, %242
  %310 = fmul fast float %308, %246
  %311 = fadd fast float %309, %306
  %312 = fadd fast float %310, %307
  %313 = call float @dx.op.binary.f32(i32 35, float %305, float 0.000000e+00)  ; FMax(a,b)
  %314 = fadd fast float %313, 0x3F10000000000000
  %315 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %311, float %312, float undef, float undef, i32 0, i32 0, i32 undef, float %314)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  br label %2739

; <label>:317                                     ; preds = %296
  %318 = icmp eq i32 %275, 2
  br i1 %318, label %319, label %338, !dx.controlflow.hints !58

; <label>:319                                     ; preds = %317
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %324 = fmul fast float %321, %223
  %325 = fadd fast float %323, %250
  %326 = fadd fast float %325, %324
  %327 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %330 = fmul fast float %329, %242
  %331 = fmul fast float %329, %246
  %332 = fadd fast float %330, %327
  %333 = fadd fast float %331, %328
  %334 = call float @dx.op.binary.f32(i32 35, float %326, float 0.000000e+00)  ; FMax(a,b)
  %335 = fadd fast float %334, 0x3F10000000000000
  %336 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %332, float %333, float undef, float undef, i32 0, i32 0, i32 undef, float %335)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  br label %2739

; <label>:338                                     ; preds = %317
  %339 = icmp eq i32 %275, 12
  br i1 %339, label %340, label %359, !dx.controlflow.hints !59

; <label>:340                                     ; preds = %338
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = fmul fast float %342, %223
  %346 = fadd fast float %344, %250
  %347 = fadd fast float %346, %345
  %348 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %341, 3
  %351 = fmul fast float %350, %242
  %352 = fmul fast float %350, %246
  %353 = fadd fast float %351, %348
  %354 = fadd fast float %352, %349
  %355 = call float @dx.op.binary.f32(i32 35, float %347, float 0.000000e+00)  ; FMax(a,b)
  %356 = fadd fast float %355, 0x3F10000000000000
  %357 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %353, float %354, float undef, float undef, i32 0, i32 0, i32 undef, float %356)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %358 = extractvalue %dx.types.ResRet.f32 %357, 0
  br label %2739

; <label>:359                                     ; preds = %338
  %360 = icmp eq i32 %275, 13
  br i1 %360, label %361, label %1031, !dx.controlflow.hints !60

; <label>:361                                     ; preds = %359
  %362 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %363 = fcmp fast une float %362, 0.000000e+00
  br i1 %363, label %364, label %2739, !dx.controlflow.hints !61

; <label>:364                                     ; preds = %361
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %369 = extractvalue %dx.types.CBufRet.f32 %365, 3
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %374 = extractvalue %dx.types.CBufRet.f32 %370, 3
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %379 = extractvalue %dx.types.CBufRet.f32 %375, 3
  %380 = fmul fast float %366, %162
  %381 = call float @dx.op.tertiary.f32(i32 46, float %163, float %367, float %380)  ; FMad(a,b,c)
  %382 = call float @dx.op.tertiary.f32(i32 46, float %164, float %368, float %381)  ; FMad(a,b,c)
  %383 = fadd fast float %382, %369
  %384 = fmul fast float %371, %162
  %385 = call float @dx.op.tertiary.f32(i32 46, float %163, float %372, float %384)  ; FMad(a,b,c)
  %386 = call float @dx.op.tertiary.f32(i32 46, float %164, float %373, float %385)  ; FMad(a,b,c)
  %387 = fadd fast float %386, %374
  %388 = fmul fast float %376, %162
  %389 = call float @dx.op.tertiary.f32(i32 46, float %163, float %377, float %388)  ; FMad(a,b,c)
  %390 = call float @dx.op.tertiary.f32(i32 46, float %164, float %378, float %389)  ; FMad(a,b,c)
  %391 = fadd fast float %390, %379
  %392 = fcmp fast oge float %383, 1.000000e+00
  %393 = fcmp fast oge float %387, 1.000000e+00
  %394 = or i1 %392, %393
  %395 = fcmp fast olt float %383, 0.000000e+00
  %396 = fcmp fast olt float %387, 0.000000e+00
  %397 = or i1 %395, %396
  %398 = or i1 %394, %397
  br i1 %398, label %2739, label %399, !dx.controlflow.hints !62

; <label>:399                                     ; preds = %364
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.i32 %406, 2
  %408 = uitofp i32 %407 to float
  %409 = extractvalue %dx.types.CBufRet.i32 %406, 3
  %410 = uitofp i32 %409 to float
  %411 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %412 = fmul fast float %411, 2.000000e+00
  %413 = fsub fast float %383, %401
  %414 = fsub fast float %387, %402
  %415 = fmul fast float %412, %413
  %416 = fmul fast float %412, %414
  %417 = fdiv fast float 1.000000e+00, %212
  %418 = fmul fast float %416, %417
  %419 = call float @dx.op.unary.f32(i32 6, float %418)  ; FAbs(value)
  %420 = fmul fast float %403, %164
  %421 = fmul fast float %420, %412
  %422 = call float @dx.op.unary.f32(i32 6, float %421)  ; FAbs(value)
  %423 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %424 = call float @dx.op.binary.f32(i32 35, float %422, float %419)  ; FMax(a,b)
  %425 = call float @dx.op.binary.f32(i32 35, float %423, float %424)  ; FMax(a,b)
  %426 = fmul fast float %425, 2.000000e+00
  %427 = call float @dx.op.unary.f32(i32 23, float %426)  ; Log(value)
  %428 = call float @dx.op.binary.f32(i32 35, float %427, float %408)  ; FMax(a,b)
  %429 = call float @dx.op.unary.f32(i32 22, float %428)  ; Frc(value)
  %430 = fadd fast float %429, 0xBFEA666660000000
  %431 = fmul fast float %430, 8.000000e+00
  %432 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %433 = call float @dx.op.unary.f32(i32 27, float %428)  ; Round_ni(value)
  %434 = fadd fast float %433, %432
  %435 = call float @dx.op.binary.f32(i32 36, float %434, float %410)  ; FMin(a,b)
  %436 = call float @dx.op.unary.f32(i32 27, float %435)  ; Round_ni(value)
  %437 = fsub fast float -0.000000e+00, %436
  %438 = call float @dx.op.unary.f32(i32 21, float %437)  ; Exp(value)
  %439 = fmul fast float %438, %412
  %440 = fmul fast float %439, %383
  %441 = fmul fast float %439, %387
  %442 = fmul fast float %440, 5.000000e-01
  %443 = fmul fast float %441, 5.000000e-01
  %444 = fadd fast float %442, 5.000000e-01
  %445 = fadd fast float %443, 5.000000e-01
  %446 = fmul fast float %440, 2.500000e-01
  %447 = fmul fast float %441, 2.500000e-01
  %448 = fadd fast float %446, 5.000000e-01
  %449 = fadd fast float %447, 5.000000e-01
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 536870911
  %453 = lshr i32 %452, 9
  %454 = uitofp i32 %453 to float
  %455 = fmul fast float %454, %383
  %456 = fmul fast float %454, %387
  %457 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %458 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %459 = call float @dx.op.unary.f32(i32 22, float %432)  ; Frc(value)
  %460 = fcmp fast une float %459, 0.000000e+00
  br i1 %460, label %461, label %559, !dx.controlflow.hints !63

; <label>:461                                     ; preds = %399
  %462 = call float @dx.op.unary.f32(i32 21, float %433)  ; Exp(value)
  %463 = fmul fast float %462, 1.953125e-03
  %464 = fcmp fast olt float %457, %463
  %465 = fcmp fast olt float %458, %463
  %466 = or i1 %464, %465
  %467 = fsub fast float 1.000000e+00, %463
  %468 = fcmp fast ogt float %457, %467
  %469 = fcmp fast ogt float %458, %467
  %470 = or i1 %468, %469
  %471 = or i1 %466, %470
  br i1 %471, label %472, label %638, !dx.controlflow.hints !64

; <label>:472                                     ; preds = %461
  %473 = fmul fast float %405, 5.000000e-01
  %474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.i32 %474, 0
  %476 = fmul fast float %387, 3.530000e+02
  %477 = uitofp i32 %452 to float
  %478 = fmul fast float %476, %477
  %479 = fmul fast float %383, 6.130000e+02
  %480 = fadd fast float %478, %479
  %481 = fptoui float %480 to i32
  %482 = add i32 %475, %481
  %483 = mul i32 %482, -63
  %484 = lshr i32 %483, 17
  %485 = xor i32 %484, %483
  %486 = mul i32 %485, -511
  %487 = mul i32 %485, -8176
  %488 = xor i32 %486, %487
  %489 = mul i32 %488, -7
  %490 = mul i32 %488, -7168
  %491 = xor i32 %489, %490
  %492 = lshr i32 %491, 15
  %493 = xor i32 %492, %489
  %494 = and i32 %493, 15
  %495 = mul i32 %494, 2
  %496 = add i32 0, %495
  %497 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %496
  %498 = load float, float* %497, align 4
  %499 = mul i32 %494, 2
  %500 = add i32 1, %499
  %501 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %500
  %502 = load float, float* %501, align 4
  %503 = fmul fast float %387, 2.770000e+02
  %504 = fmul fast float %503, %477
  %505 = fmul fast float %383, 5.990000e+02
  %506 = fadd fast float %504, %505
  %507 = fptoui float %506 to i32
  %508 = mul i32 %507, -63
  %509 = lshr i32 %508, 17
  %510 = xor i32 %509, %508
  %511 = mul i32 %510, -511
  %512 = mul i32 %510, -8176
  %513 = xor i32 %511, %512
  %514 = mul i32 %513, -7
  %515 = mul i32 %513, -7168
  %516 = xor i32 %514, %515
  %517 = lshr i32 %516, 15
  %518 = xor i32 %517, %514
  %519 = and i32 %518, 63
  %520 = mul i32 %519, 2
  %521 = add i32 0, %520
  %522 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %521
  %523 = load float, float* %522, align 4
  %524 = mul i32 %519, 2
  %525 = add i32 1, %524
  %526 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %525
  %527 = load float, float* %526, align 4
  %528 = call float @dx.op.dot2.f32(i32 54, float %498, float %502, float %523, float %527)  ; Dot2(ax,ay,bx,by)
  %529 = fsub fast float -0.000000e+00, %523
  %530 = call float @dx.op.dot2.f32(i32 54, float %498, float %502, float %529, float %527)  ; Dot2(ax,ay,bx,by)
  %531 = fmul fast float %528, %473
  %532 = fmul fast float %530, %473
  %533 = fdiv fast float 2.000000e+00, %439
  %534 = fmul fast float %462, 9.765625e-04
  %535 = fcmp fast olt float %457, %534
  %536 = fcmp fast olt float %458, %534
  %537 = or i1 %535, %536
  %538 = fsub fast float 1.000000e+00, %534
  %539 = fcmp fast ogt float %457, %538
  %540 = fcmp fast ogt float %458, %538
  %541 = or i1 %539, %540
  %542 = or i1 %537, %541
  %543 = fmul fast float %531, 2.000000e+00
  br i1 %542, label %544, label %548, !dx.controlflow.hints !65

; <label>:544                                     ; preds = %472
  %545 = fmul fast float %532, 2.000000e+00
  %546 = fadd fast float %543, %444
  %547 = fadd fast float %545, %445
  br label %548

; <label>:548                                     ; preds = %544, %472
  %549 = phi float [ %546, %544 ], [ %444, %472 ]
  %550 = phi float [ %547, %544 ], [ %445, %472 ]
  %551 = phi i32 [ 3, %544 ], [ 2, %472 ]
  %552 = fadd fast float %531, %448
  %553 = fadd fast float %532, %449
  %554 = fmul fast float %543, %533
  %555 = fmul fast float %533, 2.000000e+00
  %556 = fmul fast float %555, %532
  %557 = fadd fast float %554, %383
  %558 = fadd fast float %556, %387
  br label %638

; <label>:559                                     ; preds = %399
  %560 = call float @dx.op.unary.f32(i32 21, float %436)  ; Exp(value)
  %561 = fmul fast float %560, 9.765625e-04
  %562 = fcmp fast olt float %457, %561
  %563 = fcmp fast olt float %458, %561
  %564 = or i1 %562, %563
  %565 = fsub fast float 1.000000e+00, %561
  %566 = fcmp fast ogt float %457, %565
  %567 = fcmp fast ogt float %458, %565
  %568 = or i1 %566, %567
  %569 = or i1 %564, %568
  br i1 %569, label %570, label %638, !dx.controlflow.hints !66

; <label>:570                                     ; preds = %559
  %571 = fmul fast float %405, 5.000000e-01
  %572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.i32 %572, 0
  %574 = fmul fast float %387, 3.530000e+02
  %575 = uitofp i32 %452 to float
  %576 = fmul fast float %574, %575
  %577 = fmul fast float %383, 6.130000e+02
  %578 = fadd fast float %576, %577
  %579 = fptoui float %578 to i32
  %580 = add i32 %573, %579
  %581 = mul i32 %580, -63
  %582 = lshr i32 %581, 17
  %583 = xor i32 %582, %581
  %584 = mul i32 %583, -511
  %585 = mul i32 %583, -8176
  %586 = xor i32 %584, %585
  %587 = mul i32 %586, -7
  %588 = mul i32 %586, -7168
  %589 = xor i32 %587, %588
  %590 = lshr i32 %589, 15
  %591 = xor i32 %590, %587
  %592 = and i32 %591, 15
  %593 = mul i32 %592, 2
  %594 = add i32 0, %593
  %595 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %594
  %596 = load float, float* %595, align 4
  %597 = mul i32 %592, 2
  %598 = add i32 1, %597
  %599 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %598
  %600 = load float, float* %599, align 4
  %601 = fmul fast float %387, 2.770000e+02
  %602 = fmul fast float %601, %575
  %603 = fmul fast float %383, 5.990000e+02
  %604 = fadd fast float %602, %603
  %605 = fptoui float %604 to i32
  %606 = mul i32 %605, -63
  %607 = lshr i32 %606, 17
  %608 = xor i32 %607, %606
  %609 = mul i32 %608, -511
  %610 = mul i32 %608, -8176
  %611 = xor i32 %609, %610
  %612 = mul i32 %611, -7
  %613 = mul i32 %611, -7168
  %614 = xor i32 %612, %613
  %615 = lshr i32 %614, 15
  %616 = xor i32 %615, %612
  %617 = and i32 %616, 63
  %618 = mul i32 %617, 2
  %619 = add i32 0, %618
  %620 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %619
  %621 = load float, float* %620, align 4
  %622 = mul i32 %617, 2
  %623 = add i32 1, %622
  %624 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %623
  %625 = load float, float* %624, align 4
  %626 = call float @dx.op.dot2.f32(i32 54, float %596, float %600, float %621, float %625)  ; Dot2(ax,ay,bx,by)
  %627 = fsub fast float -0.000000e+00, %621
  %628 = call float @dx.op.dot2.f32(i32 54, float %596, float %600, float %627, float %625)  ; Dot2(ax,ay,bx,by)
  %629 = fmul fast float %626, %571
  %630 = fmul fast float %628, %571
  %631 = fadd fast float %629, %444
  %632 = fadd fast float %630, %445
  %633 = fdiv fast float 2.000000e+00, %439
  %634 = fmul fast float %633, %629
  %635 = fmul fast float %630, %633
  %636 = fadd fast float %634, %383
  %637 = fadd fast float %635, %387
  br label %638

; <label>:638                                     ; preds = %570, %559, %548, %461
  %639 = phi float [ %552, %548 ], [ %448, %461 ], [ %448, %570 ], [ %448, %559 ]
  %640 = phi float [ %553, %548 ], [ %449, %461 ], [ %449, %570 ], [ %449, %559 ]
  %641 = phi float [ %549, %548 ], [ %444, %461 ], [ %631, %570 ], [ %444, %559 ]
  %642 = phi float [ %550, %548 ], [ %445, %461 ], [ %632, %570 ], [ %445, %559 ]
  %643 = phi i32 [ %551, %548 ], [ 0, %461 ], [ 1, %570 ], [ 0, %559 ]
  %644 = phi float [ %557, %548 ], [ %383, %461 ], [ %636, %570 ], [ %383, %559 ]
  %645 = phi float [ %558, %548 ], [ %387, %461 ], [ %637, %570 ], [ %387, %559 ]
  %646 = fsub fast float %410, %408
  %647 = fptoui float %646 to i32
  %648 = add i32 %647, 320
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %648)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %651 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %652 = fcmp fast une float %435, %410
  %653 = fsub fast float %644, %650
  %654 = fsub fast float %645, %651
  %655 = call float @dx.op.unary.f32(i32 6, float %653)  ; FAbs(value)
  %656 = call float @dx.op.unary.f32(i32 6, float %654)  ; FAbs(value)
  %657 = fmul fast float %655, %439
  %658 = fmul fast float %656, %439
  %659 = fcmp fast olt float %657, 1.000000e+00
  %660 = fcmp fast olt float %658, 1.000000e+00
  %661 = and i1 %659, %660
  %662 = or i1 %652, %661
  br i1 %662, label %663, label %2739, !dx.controlflow.hints !67

; <label>:663                                     ; preds = %638
  %664 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.i32 %664, 2
  %666 = sitofp i32 %665 to float
  %667 = fsub fast float %435, %666
  %668 = call float @dx.op.unary.f32(i32 27, float %667)  ; Round_ni(value)
  %669 = call float @dx.op.unary.f32(i32 22, float %435)  ; Frc(value)
  %670 = icmp eq i32 %643, 0
  %671 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %672 = call float @dx.op.unary.f32(i32 22, float %642)  ; Frc(value)
  br i1 %670, label %743, label %673, !dx.controlflow.hints !68

; <label>:673                                     ; preds = %663
  %674 = and i32 %643, 1
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %689, label %676, !dx.controlflow.hints !69

; <label>:676                                     ; preds = %673
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = fmul fast float %671, %678
  %680 = fmul fast float %672, %678
  %681 = fptoui float %679 to i32
  %682 = fptoui float %680 to i32
  %683 = fptoui float %668 to i32
  %684 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %681, i32 %682, i32 %683, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = extractvalue %dx.types.ResRet.f32 %684, 3
  br label %695

; <label>:689                                     ; preds = %673
  %690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %671, float %672, float %668, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = extractvalue %dx.types.ResRet.f32 %690, 1
  %693 = extractvalue %dx.types.ResRet.f32 %690, 2
  %694 = extractvalue %dx.types.ResRet.f32 %690, 3
  br label %695

; <label>:695                                     ; preds = %689, %676
  %696 = phi float [ %685, %676 ], [ %691, %689 ]
  %697 = phi float [ %686, %676 ], [ %692, %689 ]
  %698 = phi float [ %687, %676 ], [ %693, %689 ]
  %699 = phi float [ %688, %676 ], [ %694, %689 ]
  %700 = fcmp fast ogt float %669, 0.000000e+00
  br i1 %700, label %701, label %771, !dx.controlflow.hints !70

; <label>:701                                     ; preds = %695
  %702 = and i32 %643, 2
  %703 = icmp eq i32 %702, 0
  %704 = fadd fast float %668, 1.000000e+00
  %705 = call float @dx.op.unary.f32(i32 22, float %639)  ; Frc(value)
  %706 = call float @dx.op.unary.f32(i32 22, float %640)  ; Frc(value)
  br i1 %703, label %720, label %707, !dx.controlflow.hints !71

; <label>:707                                     ; preds = %701
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 0
  %710 = fmul fast float %705, %709
  %711 = fmul fast float %706, %709
  %712 = fptoui float %710 to i32
  %713 = fptoui float %711 to i32
  %714 = fptoui float %704 to i32
  %715 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %712, i32 %713, i32 %714, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = extractvalue %dx.types.ResRet.f32 %715, 1
  %718 = extractvalue %dx.types.ResRet.f32 %715, 2
  %719 = extractvalue %dx.types.ResRet.f32 %715, 3
  br label %726

; <label>:720                                     ; preds = %701
  %721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %705, float %706, float %704, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = extractvalue %dx.types.ResRet.f32 %721, 1
  %724 = extractvalue %dx.types.ResRet.f32 %721, 2
  %725 = extractvalue %dx.types.ResRet.f32 %721, 3
  br label %726

; <label>:726                                     ; preds = %720, %707
  %727 = phi float [ %716, %707 ], [ %722, %720 ]
  %728 = phi float [ %717, %707 ], [ %723, %720 ]
  %729 = phi float [ %718, %707 ], [ %724, %720 ]
  %730 = phi float [ %719, %707 ], [ %725, %720 ]
  %731 = fsub fast float %727, %696
  %732 = fsub fast float %728, %697
  %733 = fsub fast float %729, %698
  %734 = fsub fast float %730, %699
  %735 = fmul fast float %731, %669
  %736 = fmul fast float %732, %669
  %737 = fmul fast float %733, %669
  %738 = fmul fast float %734, %669
  %739 = fadd fast float %735, %696
  %740 = fadd fast float %736, %697
  %741 = fadd fast float %737, %698
  %742 = fadd fast float %738, %699
  br label %771

; <label>:743                                     ; preds = %663
  %744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %671, float %672, float %668, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = extractvalue %dx.types.ResRet.f32 %744, 1
  %747 = extractvalue %dx.types.ResRet.f32 %744, 2
  %748 = extractvalue %dx.types.ResRet.f32 %744, 3
  %749 = fcmp fast ogt float %669, 0.000000e+00
  br i1 %749, label %750, label %771, !dx.controlflow.hints !72

; <label>:750                                     ; preds = %743
  %751 = fadd fast float %668, 1.000000e+00
  %752 = call float @dx.op.unary.f32(i32 22, float %639)  ; Frc(value)
  %753 = call float @dx.op.unary.f32(i32 22, float %640)  ; Frc(value)
  %754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %752, float %753, float %751, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  %756 = extractvalue %dx.types.ResRet.f32 %754, 1
  %757 = extractvalue %dx.types.ResRet.f32 %754, 2
  %758 = extractvalue %dx.types.ResRet.f32 %754, 3
  %759 = fsub fast float %755, %745
  %760 = fsub fast float %756, %746
  %761 = fsub fast float %757, %747
  %762 = fsub fast float %758, %748
  %763 = fmul fast float %759, %669
  %764 = fmul fast float %760, %669
  %765 = fmul fast float %761, %669
  %766 = fmul fast float %762, %669
  %767 = fadd fast float %763, %745
  %768 = fadd fast float %764, %746
  %769 = fadd fast float %765, %747
  %770 = fadd fast float %766, %748
  br label %771

; <label>:771                                     ; preds = %750, %743, %726, %695
  %772 = phi float [ %739, %726 ], [ %696, %695 ], [ %767, %750 ], [ %745, %743 ]
  %773 = phi float [ %740, %726 ], [ %697, %695 ], [ %768, %750 ], [ %746, %743 ]
  %774 = phi float [ %741, %726 ], [ %698, %695 ], [ %769, %750 ], [ %747, %743 ]
  %775 = phi float [ %742, %726 ], [ %699, %695 ], [ %770, %750 ], [ %748, %743 ]
  %776 = fadd fast float %772, -5.000000e-01
  %777 = fadd fast float %774, -5.000000e-01
  %778 = fmul fast float %776, 0xBFD5555560000000
  %779 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %777, float %778)  ; FMad(a,b,c)
  %780 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %773, float 0.000000e+00)  ; FMad(a,b,c)
  %781 = fadd fast float %780, %775
  %782 = fmul fast float %776, -7.500000e-01
  %783 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %777, float %782)  ; FMad(a,b,c)
  %784 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %773, float 0.000000e+00)  ; FMad(a,b,c)
  %785 = fadd fast float %784, %775
  %786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.f32 %786, 0
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = extractvalue %dx.types.CBufRet.f32 %788, 1
  %791 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %792 = extractvalue %dx.types.CBufRet.f32 %788, 3
  %793 = fsub fast float %789, %779
  %794 = fsub fast float %790, %781
  %795 = fsub fast float %791, %783
  %796 = fsub fast float %792, %785
  %797 = fmul fast float %793, %787
  %798 = fmul fast float %794, %787
  %799 = fmul fast float %795, %787
  %800 = fmul fast float %796, %787
  %801 = fadd fast float %797, %779
  %802 = fadd fast float %798, %781
  %803 = fadd fast float %799, %783
  %804 = fadd fast float %800, %785
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 536870911
  %808 = uitofp i32 %807 to float
  %809 = fmul fast float %808, %644
  %810 = fmul fast float %808, %645
  %811 = fptoui float %809 to i32
  %812 = fptoui float %810 to i32
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 31
  %816 = lshr i32 %811, %815
  %817 = lshr i32 %812, %815
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, 31
  %821 = shl i32 1, %820
  %822 = call i32 @dx.op.binary.i32(i32 40, i32 %821, i32 4)  ; UMin(a,b)
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = extractvalue %dx.types.ResRet.i32 %823, 1
  %826 = icmp eq i32 %822, 0
  br i1 %826, label %868, label %827

; <label>:827                                     ; preds = %771
  br label %828

; <label>:828                                     ; preds = %856, %827
  %829 = phi i32 [ %859, %856 ], [ 0, %827 ]
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = lshr i32 %831, 16
  %833 = and i32 %832, 31
  %834 = shl i32 %817, %833
  %835 = add i32 %834, %816
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = and i32 %837, 31
  %839 = shl i32 %835, %838
  %840 = add i32 %839, %829
  %841 = shl i32 %840, 2
  %842 = add i32 %841, 32
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = icmp slt i32 %844, 0
  %846 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %829
  %847 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %829
  %848 = bitcast float* %846 to i32*
  %849 = bitcast float* %847 to i32*
  br i1 %845, label %850, label %856, !dx.controlflow.hints !73

; <label>:850                                     ; preds = %828
  %851 = and i32 %844, 1073741823
  %852 = add nuw nsw i32 %851, 20
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = extractvalue %dx.types.ResRet.i32 %853, 1
  br label %856

; <label>:856                                     ; preds = %850, %828
  %857 = phi i32 [ %854, %850 ], [ %824, %828 ]
  %858 = phi i32 [ %855, %850 ], [ %825, %828 ]
  store i32 %857, i32* %848, align 4
  store i32 %858, i32* %849, align 4
  %859 = add nuw i32 %829, 1
  %860 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.i32 %860, 2
  %862 = icmp eq i32 %861, 0
  %863 = icmp ugt i32 %844, -1073741825
  %864 = and i1 %863, %862
  %865 = icmp ult i32 %859, %822
  %866 = and i1 %864, %865
  br i1 %866, label %828, label %867, !dx.controlflow.hints !74

; <label>:867                                     ; preds = %856
  br label %868

; <label>:868                                     ; preds = %867, %771
  %869 = phi i32 [ 0, %771 ], [ %859, %867 ]
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %872 = fptoui float %871 to i32
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %925, label %874

; <label>:874                                     ; preds = %868
  br label %875

; <label>:875                                     ; preds = %920, %874
  %876 = phi i32 [ %921, %920 ], [ %869, %874 ]
  %877 = phi i32 [ %922, %920 ], [ 0, %874 ]
  %878 = lshr i32 %877, 2
  %879 = and i32 %877, 3
  %880 = add nuw nsw i32 %878, 83
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 %880)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.i32 %881, 1
  %884 = extractvalue %dx.types.CBufRet.i32 %881, 2
  %885 = extractvalue %dx.types.CBufRet.i32 %881, 3
  %886 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %882, i32* %886, align 4
  %887 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %883, i32* %887, align 4
  %888 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %884, i32* %888, align 4
  %889 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %885, i32* %889, align 4
  %890 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 %879
  %891 = load i32, i32* %890, align 4, !tbaa !51
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = lshr i32 %893, 16
  %895 = and i32 %894, 31
  %896 = shl i32 %817, %895
  %897 = add i32 %896, %816
  %898 = shl i32 %897, 2
  %899 = add i32 %898, %891
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %920, label %903, !dx.controlflow.hints !75

; <label>:903                                     ; preds = %875
  %904 = icmp slt i32 %901, 0
  %905 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %876
  %906 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %876
  %907 = bitcast float* %905 to i32*
  %908 = bitcast float* %906 to i32*
  br i1 %904, label %909, label %916, !dx.controlflow.hints !76

; <label>:909                                     ; preds = %903
  %910 = and i32 %901, 1073741823
  %911 = add i32 %891, 20
  %912 = add i32 %911, %910
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = extractvalue %dx.types.ResRet.i32 %913, 1
  br label %916

; <label>:916                                     ; preds = %909, %903
  %917 = phi i32 [ %914, %909 ], [ %824, %903 ]
  %918 = phi i32 [ %915, %909 ], [ %825, %903 ]
  store i32 %917, i32* %907, align 4
  store i32 %918, i32* %908, align 4
  %919 = add i32 %876, 1
  br label %920

; <label>:920                                     ; preds = %916, %875
  %921 = phi i32 [ %876, %875 ], [ %919, %916 ]
  %922 = add nuw i32 %877, 1
  %923 = icmp eq i32 %922, %872
  br i1 %923, label %924, label %875

; <label>:924                                     ; preds = %920
  br label %925

; <label>:925                                     ; preds = %924, %868
  %926 = phi i32 [ %869, %868 ], [ %921, %924 ]
  %927 = icmp eq i32 %926, 1
  %928 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 0
  %929 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 0
  br i1 %927, label %930, label %933, !dx.controlflow.hints !77

; <label>:930                                     ; preds = %925
  %931 = load float, float* %928, align 4
  %932 = load float, float* %929, align 4
  br label %960

; <label>:933                                     ; preds = %925
  %934 = load float, float* %928, align 4
  %935 = load float, float* %929, align 4
  %936 = fdiv fast float 1.000000e+00, %935
  %937 = fsub fast float %934, %936
  %938 = icmp ugt i32 %926, 1
  br i1 %938, label %939, label %955

; <label>:939                                     ; preds = %933
  br label %940

; <label>:940                                     ; preds = %940, %939
  %941 = phi float [ %950, %940 ], [ %937, %939 ]
  %942 = phi float [ %951, %940 ], [ %934, %939 ]
  %943 = phi i32 [ %952, %940 ], [ 1, %939 ]
  %944 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %943
  %945 = load float, float* %944, align 4
  %946 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %943
  %947 = load float, float* %946, align 4
  %948 = fdiv fast float 1.000000e+00, %947
  %949 = fsub fast float %945, %948
  %950 = call float @dx.op.binary.f32(i32 36, float %941, float %949)  ; FMin(a,b)
  %951 = call float @dx.op.binary.f32(i32 35, float %942, float %945)  ; FMax(a,b)
  %952 = add nuw i32 %943, 1
  %953 = icmp eq i32 %952, %926
  br i1 %953, label %954, label %940

; <label>:954                                     ; preds = %940
  br label %955

; <label>:955                                     ; preds = %954, %933
  %956 = phi float [ %937, %933 ], [ %950, %954 ]
  %957 = phi float [ %934, %933 ], [ %951, %954 ]
  %958 = fsub fast float %957, %956
  %959 = fdiv fast float 1.000000e+00, %958
  br label %960

; <label>:960                                     ; preds = %955, %930
  %961 = phi float [ %931, %930 ], [ %957, %955 ]
  %962 = phi float [ %932, %930 ], [ %959, %955 ]
  %963 = fadd fast float %391, %961
  %964 = fmul fast float %963, %962
  %965 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  %966 = fmul fast float %965, 2.000000e+00
  %967 = fsub fast float 1.000000e+00, %966
  %968 = fmul fast float %801, %801
  %969 = fsub fast float %802, %968
  %970 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %969)  ; FMax(a,b)
  %971 = fdiv fast float 1.000000e+00, %970
  %972 = fmul fast float %802, %801
  %973 = fsub fast float %803, %972
  %974 = fsub fast float %967, %801
  %975 = fmul fast float %967, %967
  %976 = fsub fast float %975, %802
  %977 = fmul fast float %971, %973
  %978 = fmul fast float %977, %974
  %979 = fsub fast float %976, %978
  %980 = fmul fast float %802, %802
  %981 = fsub fast float %804, %980
  %982 = fmul fast float %973, %973
  %983 = fmul fast float %982, %971
  %984 = fsub fast float %981, %983
  %985 = fdiv fast float %979, %984
  %986 = fmul fast float %985, %973
  %987 = fsub fast float %974, %986
  %988 = fmul fast float %987, %971
  %989 = fmul fast float %988, %801
  %990 = fsub fast float 1.000000e+00, %989
  %991 = fmul fast float %985, %802
  %992 = fsub fast float %990, %991
  %993 = fmul fast float %988, %988
  %994 = fmul fast float %985, 4.000000e+00
  %995 = fmul fast float %994, %992
  %996 = fsub fast float %993, %995
  %997 = call float @dx.op.unary.f32(i32 24, float %996)  ; Sqrt(value)
  %998 = fcmp fast oge float %988, 0.000000e+00
  %999 = fsub fast float -0.000000e+00, %997
  %1000 = select i1 %998, float %999, float %997
  %1001 = fsub fast float %1000, %988
  %1002 = fdiv fast float %1001, %985
  %1003 = fdiv fast float %992, %1001
  %1004 = fmul fast float %1002, 5.000000e-01
  %1005 = fmul fast float %1003, 2.000000e+00
  %1006 = select i1 %998, float %1004, float %1005
  %1007 = select i1 %998, float %1005, float %1004
  %1008 = call float @dx.op.binary.f32(i32 35, float %1006, float %1007)  ; FMax(a,b)
  %1009 = call float @dx.op.binary.f32(i32 36, float %1006, float %1007)  ; FMin(a,b)
  %1010 = fcmp fast ogt float %967, %1008
  %1011 = fsub fast float %967, %1009
  %1012 = fsub fast float %967, %1008
  %1013 = fsub fast float %1008, %1009
  %1014 = select i1 %1010, float %1012, float %1013
  %1015 = fmul float %1011, %1014
  %1016 = select i1 %1010, float %1009, float %967
  %1017 = fcmp fast ogt float %967, %1009
  %1018 = fmul fast float %1016, %1008
  %1019 = fadd fast float %1016, %1008
  %1020 = fmul fast float %1019, %801
  %1021 = fadd fast float %1018, %802
  %1022 = fsub fast float %1021, %1020
  %1023 = fdiv fast float %1022, %1015
  %1024 = select i1 %1017, float %1023, float 0.000000e+00
  %1025 = fsub fast float 1.000000e+00, %1024
  %1026 = select i1 %1010, float %1025, float %1024
  %1027 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1028 = extractvalue %dx.types.CBufRet.f32 %786, 3
  %1029 = fmul fast float %1028, %1027
  %1030 = fsub fast float 1.000000e+00, %1029
  br label %2739

; <label>:1031                                    ; preds = %359
  %1032 = icmp eq i32 %275, 11
  br i1 %1032, label %2739, label %1033, !dx.controlflow.hints !78

; <label>:1033                                    ; preds = %1031
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %1034, 3
  %1038 = fmul fast float %1037, %242
  %1039 = fmul fast float %1037, %246
  %1040 = fadd fast float %1038, %1035
  %1041 = fadd fast float %1039, %1036
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.CBufRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.CBufRet.f32 %1042, 3
  %1046 = fmul fast float %1045, %242
  %1047 = fmul fast float %1045, %246
  %1048 = fadd fast float %1046, %1043
  %1049 = fadd fast float %1047, %1044
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1052 = fsub fast float %1051, %250
  %1053 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1054 = fmul fast float %1052, %1053
  %1055 = fsub fast float 1.000000e+00, %1054
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  br i1 %99, label %1117, label %1057, !dx.controlflow.hints !79

; <label>:1057                                    ; preds = %1033
  %1058 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1061 = fadd fast float %1060, %1058
  %1062 = fcmp fast ogt float %1061, 0.000000e+00
  br i1 %1062, label %1063, label %1087, !dx.controlflow.hints !80

; <label>:1063                                    ; preds = %1057
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = fsub fast float %1048, %1065
  %1068 = fsub fast float %1049, %1066
  %1069 = fcmp fast olt float %1067, 0.000000e+00
  %1070 = fcmp fast olt float %1068, 0.000000e+00
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1075 = extractvalue %dx.types.CBufRet.f32 %1071, 3
  %1076 = select i1 %1069, float %1072, float %1074
  %1077 = select i1 %1070, float %1073, float %1075
  %1078 = fmul fast float %1076, %1067
  %1079 = fmul fast float %1077, %1068
  %1080 = call float @dx.op.unary.f32(i32 6, float %1078)  ; FAbs(value)
  %1081 = call float @dx.op.unary.f32(i32 6, float %1079)  ; FAbs(value)
  %1082 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %1083 = call float @dx.op.binary.f32(i32 35, float %1080, float %1081)  ; FMax(a,b)
  %1084 = fsub fast float %1082, %1083
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1086 = fmul fast float %1085, %1056
  br label %1087

; <label>:1087                                    ; preds = %1063, %1057
  %1088 = phi float [ %1086, %1063 ], [ 0.000000e+00, %1057 ]
  %1089 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1090 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1091 = fadd fast float %1090, %1089
  %1092 = fcmp fast ogt float %1091, 0.000000e+00
  br i1 %1092, label %1093, label %1117, !dx.controlflow.hints !81

; <label>:1093                                    ; preds = %1087
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1096 = extractvalue %dx.types.CBufRet.f32 %1094, 1
  %1097 = fsub fast float %1040, %1095
  %1098 = fsub fast float %1041, %1096
  %1099 = fcmp fast olt float %1097, 0.000000e+00
  %1100 = fcmp fast olt float %1098, 0.000000e+00
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.CBufRet.f32 %1101, 1
  %1104 = extractvalue %dx.types.CBufRet.f32 %1101, 2
  %1105 = extractvalue %dx.types.CBufRet.f32 %1101, 3
  %1106 = select i1 %1099, float %1102, float %1104
  %1107 = select i1 %1100, float %1103, float %1105
  %1108 = fmul fast float %1106, %1097
  %1109 = fmul fast float %1107, %1098
  %1110 = call float @dx.op.unary.f32(i32 6, float %1108)  ; FAbs(value)
  %1111 = call float @dx.op.unary.f32(i32 6, float %1109)  ; FAbs(value)
  %1112 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %1113 = call float @dx.op.binary.f32(i32 35, float %1110, float %1111)  ; FMax(a,b)
  %1114 = fsub fast float %1112, %1113
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1116 = fmul fast float %1115, %1056
  br label %1117

; <label>:1117                                    ; preds = %1093, %1087, %1033
  %1118 = phi float [ 0.000000e+00, %1033 ], [ %1116, %1093 ], [ 0.000000e+00, %1087 ]
  %1119 = phi float [ 0.000000e+00, %1033 ], [ %1088, %1093 ], [ %1088, %1087 ]
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.CBufRet.f32 %1120, 1
  %1123 = fmul fast float %1121, %106
  %1124 = fadd fast float %1123, %1122
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1129 = fsub fast float %242, %1127
  %1130 = fsub fast float %246, %1128
  %1131 = fcmp fast olt float %1129, 0.000000e+00
  %1132 = fcmp fast olt float %1130, 0.000000e+00
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1137 = extractvalue %dx.types.CBufRet.f32 %1133, 3
  %1138 = select i1 %1131, float %1134, float %1136
  %1139 = select i1 %1132, float %1135, float %1137
  %1140 = fmul fast float %1138, %1129
  %1141 = fmul fast float %1139, %1130
  %1142 = call float @dx.op.unary.f32(i32 6, float %1140)  ; FAbs(value)
  %1143 = call float @dx.op.unary.f32(i32 6, float %1141)  ; FAbs(value)
  %1144 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %1145 = call float @dx.op.binary.f32(i32 35, float %1142, float %1143)  ; FMax(a,b)
  %1146 = fsub fast float %1144, %1145
  %1147 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1148 = call float @dx.op.binary.f32(i32 36, float %1147, float %1125)  ; FMin(a,b)
  %1149 = fmul fast float %1148, %1056
  %1150 = fsub fast float %1118, %1149
  %1151 = fsub fast float %1119, %1118
  %1152 = fsub fast float %1151, %1149
  %1153 = call float @dx.op.binary.f32(i32 35, float %1118, float %1119)  ; FMax(a,b)
  %1154 = call float @dx.op.binary.f32(i32 35, float %1149, float %1153)  ; FMax(a,b)
  %1155 = fcmp fast olt float %1154, 1.000000e+00
  %1156 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %1157 = fcmp fast une float %1156, 0.000000e+00
  %1158 = and i1 %1155, %1157
  br i1 %1158, label %1159, label %1826, !dx.controlflow.hints !82

; <label>:1159                                    ; preds = %1117
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.CBufRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.CBufRet.f32 %1160, 2
  %1164 = extractvalue %dx.types.CBufRet.f32 %1160, 3
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = extractvalue %dx.types.CBufRet.f32 %1165, 1
  %1168 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1169 = extractvalue %dx.types.CBufRet.f32 %1165, 3
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1174 = extractvalue %dx.types.CBufRet.f32 %1170, 3
  %1175 = fmul fast float %1161, %162
  %1176 = call float @dx.op.tertiary.f32(i32 46, float %163, float %1162, float %1175)  ; FMad(a,b,c)
  %1177 = call float @dx.op.tertiary.f32(i32 46, float %164, float %1163, float %1176)  ; FMad(a,b,c)
  %1178 = fadd fast float %1177, %1164
  %1179 = fmul fast float %1166, %162
  %1180 = call float @dx.op.tertiary.f32(i32 46, float %163, float %1167, float %1179)  ; FMad(a,b,c)
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %164, float %1168, float %1180)  ; FMad(a,b,c)
  %1182 = fadd fast float %1181, %1169
  %1183 = fmul fast float %1171, %162
  %1184 = call float @dx.op.tertiary.f32(i32 46, float %163, float %1172, float %1183)  ; FMad(a,b,c)
  %1185 = call float @dx.op.tertiary.f32(i32 46, float %164, float %1173, float %1184)  ; FMad(a,b,c)
  %1186 = fadd fast float %1185, %1174
  %1187 = fcmp fast oge float %1178, 1.000000e+00
  %1188 = fcmp fast oge float %1182, 1.000000e+00
  %1189 = or i1 %1187, %1188
  %1190 = fcmp fast olt float %1178, 0.000000e+00
  %1191 = fcmp fast olt float %1182, 0.000000e+00
  %1192 = or i1 %1190, %1191
  %1193 = or i1 %1189, %1192
  br i1 %1193, label %1826, label %1194, !dx.controlflow.hints !62

; <label>:1194                                    ; preds = %1159
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.CBufRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.i32 %1201, 2
  %1203 = uitofp i32 %1202 to float
  %1204 = extractvalue %dx.types.CBufRet.i32 %1201, 3
  %1205 = uitofp i32 %1204 to float
  %1206 = extractvalue %dx.types.CBufRet.f32 %1195, 3
  %1207 = fmul fast float %1206, 2.000000e+00
  %1208 = fsub fast float %1178, %1196
  %1209 = fsub fast float %1182, %1197
  %1210 = fmul fast float %1207, %1208
  %1211 = fmul fast float %1207, %1209
  %1212 = fdiv fast float 1.000000e+00, %212
  %1213 = fmul fast float %1211, %1212
  %1214 = call float @dx.op.unary.f32(i32 6, float %1213)  ; FAbs(value)
  %1215 = fmul fast float %1198, %164
  %1216 = fmul fast float %1215, %1207
  %1217 = call float @dx.op.unary.f32(i32 6, float %1216)  ; FAbs(value)
  %1218 = call float @dx.op.unary.f32(i32 6, float %1210)  ; FAbs(value)
  %1219 = call float @dx.op.binary.f32(i32 35, float %1217, float %1214)  ; FMax(a,b)
  %1220 = call float @dx.op.binary.f32(i32 35, float %1218, float %1219)  ; FMax(a,b)
  %1221 = fmul fast float %1220, 2.000000e+00
  %1222 = call float @dx.op.unary.f32(i32 23, float %1221)  ; Log(value)
  %1223 = call float @dx.op.binary.f32(i32 35, float %1222, float %1203)  ; FMax(a,b)
  %1224 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1225 = fadd fast float %1224, 0xBFEA666660000000
  %1226 = fmul fast float %1225, 8.000000e+00
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1228 = call float @dx.op.unary.f32(i32 27, float %1223)  ; Round_ni(value)
  %1229 = fadd fast float %1228, %1227
  %1230 = call float @dx.op.binary.f32(i32 36, float %1229, float %1205)  ; FMin(a,b)
  %1231 = call float @dx.op.unary.f32(i32 27, float %1230)  ; Round_ni(value)
  %1232 = fsub fast float -0.000000e+00, %1231
  %1233 = call float @dx.op.unary.f32(i32 21, float %1232)  ; Exp(value)
  %1234 = fmul fast float %1233, %1207
  %1235 = fmul fast float %1234, %1178
  %1236 = fmul fast float %1234, %1182
  %1237 = fmul fast float %1235, 5.000000e-01
  %1238 = fmul fast float %1236, 5.000000e-01
  %1239 = fadd fast float %1237, 5.000000e-01
  %1240 = fadd fast float %1238, 5.000000e-01
  %1241 = fmul fast float %1235, 2.500000e-01
  %1242 = fmul fast float %1236, 2.500000e-01
  %1243 = fadd fast float %1241, 5.000000e-01
  %1244 = fadd fast float %1242, 5.000000e-01
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = and i32 %1246, 536870911
  %1248 = lshr i32 %1247, 9
  %1249 = uitofp i32 %1248 to float
  %1250 = fmul fast float %1249, %1178
  %1251 = fmul fast float %1249, %1182
  %1252 = call float @dx.op.unary.f32(i32 22, float %1250)  ; Frc(value)
  %1253 = call float @dx.op.unary.f32(i32 22, float %1251)  ; Frc(value)
  %1254 = call float @dx.op.unary.f32(i32 22, float %1227)  ; Frc(value)
  %1255 = fcmp fast une float %1254, 0.000000e+00
  br i1 %1255, label %1256, label %1354, !dx.controlflow.hints !63

; <label>:1256                                    ; preds = %1194
  %1257 = call float @dx.op.unary.f32(i32 21, float %1228)  ; Exp(value)
  %1258 = fmul fast float %1257, 1.953125e-03
  %1259 = fcmp fast olt float %1252, %1258
  %1260 = fcmp fast olt float %1253, %1258
  %1261 = or i1 %1259, %1260
  %1262 = fsub fast float 1.000000e+00, %1258
  %1263 = fcmp fast ogt float %1252, %1262
  %1264 = fcmp fast ogt float %1253, %1262
  %1265 = or i1 %1263, %1264
  %1266 = or i1 %1261, %1265
  br i1 %1266, label %1267, label %1433, !dx.controlflow.hints !64

; <label>:1267                                    ; preds = %1256
  %1268 = fmul fast float %1200, 5.000000e-01
  %1269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.i32 %1269, 0
  %1271 = fmul fast float %1182, 3.530000e+02
  %1272 = uitofp i32 %1247 to float
  %1273 = fmul fast float %1271, %1272
  %1274 = fmul fast float %1178, 6.130000e+02
  %1275 = fadd fast float %1273, %1274
  %1276 = fptoui float %1275 to i32
  %1277 = add i32 %1270, %1276
  %1278 = mul i32 %1277, -63
  %1279 = lshr i32 %1278, 17
  %1280 = xor i32 %1279, %1278
  %1281 = mul i32 %1280, -511
  %1282 = mul i32 %1280, -8176
  %1283 = xor i32 %1281, %1282
  %1284 = mul i32 %1283, -7
  %1285 = mul i32 %1283, -7168
  %1286 = xor i32 %1284, %1285
  %1287 = lshr i32 %1286, 15
  %1288 = xor i32 %1287, %1284
  %1289 = and i32 %1288, 15
  %1290 = mul i32 %1289, 2
  %1291 = add i32 0, %1290
  %1292 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1291
  %1293 = load float, float* %1292, align 4
  %1294 = mul i32 %1289, 2
  %1295 = add i32 1, %1294
  %1296 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1295
  %1297 = load float, float* %1296, align 4
  %1298 = fmul fast float %1182, 2.770000e+02
  %1299 = fmul fast float %1298, %1272
  %1300 = fmul fast float %1178, 5.990000e+02
  %1301 = fadd fast float %1299, %1300
  %1302 = fptoui float %1301 to i32
  %1303 = mul i32 %1302, -63
  %1304 = lshr i32 %1303, 17
  %1305 = xor i32 %1304, %1303
  %1306 = mul i32 %1305, -511
  %1307 = mul i32 %1305, -8176
  %1308 = xor i32 %1306, %1307
  %1309 = mul i32 %1308, -7
  %1310 = mul i32 %1308, -7168
  %1311 = xor i32 %1309, %1310
  %1312 = lshr i32 %1311, 15
  %1313 = xor i32 %1312, %1309
  %1314 = and i32 %1313, 63
  %1315 = mul i32 %1314, 2
  %1316 = add i32 0, %1315
  %1317 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1316
  %1318 = load float, float* %1317, align 4
  %1319 = mul i32 %1314, 2
  %1320 = add i32 1, %1319
  %1321 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1320
  %1322 = load float, float* %1321, align 4
  %1323 = call float @dx.op.dot2.f32(i32 54, float %1293, float %1297, float %1318, float %1322)  ; Dot2(ax,ay,bx,by)
  %1324 = fsub fast float -0.000000e+00, %1318
  %1325 = call float @dx.op.dot2.f32(i32 54, float %1293, float %1297, float %1324, float %1322)  ; Dot2(ax,ay,bx,by)
  %1326 = fmul fast float %1323, %1268
  %1327 = fmul fast float %1325, %1268
  %1328 = fdiv fast float 2.000000e+00, %1234
  %1329 = fmul fast float %1257, 9.765625e-04
  %1330 = fcmp fast olt float %1252, %1329
  %1331 = fcmp fast olt float %1253, %1329
  %1332 = or i1 %1330, %1331
  %1333 = fsub fast float 1.000000e+00, %1329
  %1334 = fcmp fast ogt float %1252, %1333
  %1335 = fcmp fast ogt float %1253, %1333
  %1336 = or i1 %1334, %1335
  %1337 = or i1 %1332, %1336
  %1338 = fmul fast float %1326, 2.000000e+00
  br i1 %1337, label %1339, label %1343, !dx.controlflow.hints !65

; <label>:1339                                    ; preds = %1267
  %1340 = fmul fast float %1327, 2.000000e+00
  %1341 = fadd fast float %1338, %1239
  %1342 = fadd fast float %1340, %1240
  br label %1343

; <label>:1343                                    ; preds = %1339, %1267
  %1344 = phi float [ %1341, %1339 ], [ %1239, %1267 ]
  %1345 = phi float [ %1342, %1339 ], [ %1240, %1267 ]
  %1346 = phi i32 [ 3, %1339 ], [ 2, %1267 ]
  %1347 = fadd fast float %1326, %1243
  %1348 = fadd fast float %1327, %1244
  %1349 = fmul fast float %1338, %1328
  %1350 = fmul fast float %1328, 2.000000e+00
  %1351 = fmul fast float %1350, %1327
  %1352 = fadd fast float %1349, %1178
  %1353 = fadd fast float %1351, %1182
  br label %1433

; <label>:1354                                    ; preds = %1194
  %1355 = call float @dx.op.unary.f32(i32 21, float %1231)  ; Exp(value)
  %1356 = fmul fast float %1355, 9.765625e-04
  %1357 = fcmp fast olt float %1252, %1356
  %1358 = fcmp fast olt float %1253, %1356
  %1359 = or i1 %1357, %1358
  %1360 = fsub fast float 1.000000e+00, %1356
  %1361 = fcmp fast ogt float %1252, %1360
  %1362 = fcmp fast ogt float %1253, %1360
  %1363 = or i1 %1361, %1362
  %1364 = or i1 %1359, %1363
  br i1 %1364, label %1365, label %1433, !dx.controlflow.hints !66

; <label>:1365                                    ; preds = %1354
  %1366 = fmul fast float %1200, 5.000000e-01
  %1367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.i32 %1367, 0
  %1369 = fmul fast float %1182, 3.530000e+02
  %1370 = uitofp i32 %1247 to float
  %1371 = fmul fast float %1369, %1370
  %1372 = fmul fast float %1178, 6.130000e+02
  %1373 = fadd fast float %1371, %1372
  %1374 = fptoui float %1373 to i32
  %1375 = add i32 %1368, %1374
  %1376 = mul i32 %1375, -63
  %1377 = lshr i32 %1376, 17
  %1378 = xor i32 %1377, %1376
  %1379 = mul i32 %1378, -511
  %1380 = mul i32 %1378, -8176
  %1381 = xor i32 %1379, %1380
  %1382 = mul i32 %1381, -7
  %1383 = mul i32 %1381, -7168
  %1384 = xor i32 %1382, %1383
  %1385 = lshr i32 %1384, 15
  %1386 = xor i32 %1385, %1382
  %1387 = and i32 %1386, 15
  %1388 = mul i32 %1387, 2
  %1389 = add i32 0, %1388
  %1390 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1389
  %1391 = load float, float* %1390, align 4
  %1392 = mul i32 %1387, 2
  %1393 = add i32 1, %1392
  %1394 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1393
  %1395 = load float, float* %1394, align 4
  %1396 = fmul fast float %1182, 2.770000e+02
  %1397 = fmul fast float %1396, %1370
  %1398 = fmul fast float %1178, 5.990000e+02
  %1399 = fadd fast float %1397, %1398
  %1400 = fptoui float %1399 to i32
  %1401 = mul i32 %1400, -63
  %1402 = lshr i32 %1401, 17
  %1403 = xor i32 %1402, %1401
  %1404 = mul i32 %1403, -511
  %1405 = mul i32 %1403, -8176
  %1406 = xor i32 %1404, %1405
  %1407 = mul i32 %1406, -7
  %1408 = mul i32 %1406, -7168
  %1409 = xor i32 %1407, %1408
  %1410 = lshr i32 %1409, 15
  %1411 = xor i32 %1410, %1407
  %1412 = and i32 %1411, 63
  %1413 = mul i32 %1412, 2
  %1414 = add i32 0, %1413
  %1415 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1414
  %1416 = load float, float* %1415, align 4
  %1417 = mul i32 %1412, 2
  %1418 = add i32 1, %1417
  %1419 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1418
  %1420 = load float, float* %1419, align 4
  %1421 = call float @dx.op.dot2.f32(i32 54, float %1391, float %1395, float %1416, float %1420)  ; Dot2(ax,ay,bx,by)
  %1422 = fsub fast float -0.000000e+00, %1416
  %1423 = call float @dx.op.dot2.f32(i32 54, float %1391, float %1395, float %1422, float %1420)  ; Dot2(ax,ay,bx,by)
  %1424 = fmul fast float %1421, %1366
  %1425 = fmul fast float %1423, %1366
  %1426 = fadd fast float %1424, %1239
  %1427 = fadd fast float %1425, %1240
  %1428 = fdiv fast float 2.000000e+00, %1234
  %1429 = fmul fast float %1428, %1424
  %1430 = fmul fast float %1425, %1428
  %1431 = fadd fast float %1429, %1178
  %1432 = fadd fast float %1430, %1182
  br label %1433

; <label>:1433                                    ; preds = %1365, %1354, %1343, %1256
  %1434 = phi float [ %1347, %1343 ], [ %1243, %1256 ], [ %1243, %1365 ], [ %1243, %1354 ]
  %1435 = phi float [ %1348, %1343 ], [ %1244, %1256 ], [ %1244, %1365 ], [ %1244, %1354 ]
  %1436 = phi float [ %1344, %1343 ], [ %1239, %1256 ], [ %1426, %1365 ], [ %1239, %1354 ]
  %1437 = phi float [ %1345, %1343 ], [ %1240, %1256 ], [ %1427, %1365 ], [ %1240, %1354 ]
  %1438 = phi i32 [ %1346, %1343 ], [ 0, %1256 ], [ 1, %1365 ], [ 0, %1354 ]
  %1439 = phi float [ %1352, %1343 ], [ %1178, %1256 ], [ %1431, %1365 ], [ %1178, %1354 ]
  %1440 = phi float [ %1353, %1343 ], [ %1182, %1256 ], [ %1432, %1365 ], [ %1182, %1354 ]
  %1441 = fsub fast float %1205, %1203
  %1442 = fptoui float %1441 to i32
  %1443 = add i32 %1442, 320
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %1443)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.CBufRet.f32 %1444, 1
  %1447 = fcmp fast une float %1230, %1205
  %1448 = fsub fast float %1439, %1445
  %1449 = fsub fast float %1440, %1446
  %1450 = call float @dx.op.unary.f32(i32 6, float %1448)  ; FAbs(value)
  %1451 = call float @dx.op.unary.f32(i32 6, float %1449)  ; FAbs(value)
  %1452 = fmul fast float %1450, %1234
  %1453 = fmul fast float %1451, %1234
  %1454 = fcmp fast olt float %1452, 1.000000e+00
  %1455 = fcmp fast olt float %1453, 1.000000e+00
  %1456 = and i1 %1454, %1455
  %1457 = or i1 %1447, %1456
  br i1 %1457, label %1458, label %1826, !dx.controlflow.hints !67

; <label>:1458                                    ; preds = %1433
  %1459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.i32 %1459, 2
  %1461 = sitofp i32 %1460 to float
  %1462 = fsub fast float %1230, %1461
  %1463 = call float @dx.op.unary.f32(i32 27, float %1462)  ; Round_ni(value)
  %1464 = call float @dx.op.unary.f32(i32 22, float %1230)  ; Frc(value)
  %1465 = icmp eq i32 %1438, 0
  %1466 = call float @dx.op.unary.f32(i32 22, float %1436)  ; Frc(value)
  %1467 = call float @dx.op.unary.f32(i32 22, float %1437)  ; Frc(value)
  br i1 %1465, label %1538, label %1468, !dx.controlflow.hints !68

; <label>:1468                                    ; preds = %1458
  %1469 = and i32 %1438, 1
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1484, label %1471, !dx.controlflow.hints !69

; <label>:1471                                    ; preds = %1468
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = fmul fast float %1466, %1473
  %1475 = fmul fast float %1467, %1473
  %1476 = fptoui float %1474 to i32
  %1477 = fptoui float %1475 to i32
  %1478 = fptoui float %1463 to i32
  %1479 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1476, i32 %1477, i32 %1478, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.ResRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.ResRet.f32 %1479, 2
  %1483 = extractvalue %dx.types.ResRet.f32 %1479, 3
  br label %1490

; <label>:1484                                    ; preds = %1468
  %1485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %1466, float %1467, float %1463, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = extractvalue %dx.types.ResRet.f32 %1485, 1
  %1488 = extractvalue %dx.types.ResRet.f32 %1485, 2
  %1489 = extractvalue %dx.types.ResRet.f32 %1485, 3
  br label %1490

; <label>:1490                                    ; preds = %1484, %1471
  %1491 = phi float [ %1480, %1471 ], [ %1486, %1484 ]
  %1492 = phi float [ %1481, %1471 ], [ %1487, %1484 ]
  %1493 = phi float [ %1482, %1471 ], [ %1488, %1484 ]
  %1494 = phi float [ %1483, %1471 ], [ %1489, %1484 ]
  %1495 = fcmp fast ogt float %1464, 0.000000e+00
  br i1 %1495, label %1496, label %1566, !dx.controlflow.hints !70

; <label>:1496                                    ; preds = %1490
  %1497 = and i32 %1438, 2
  %1498 = icmp eq i32 %1497, 0
  %1499 = fadd fast float %1463, 1.000000e+00
  %1500 = call float @dx.op.unary.f32(i32 22, float %1434)  ; Frc(value)
  %1501 = call float @dx.op.unary.f32(i32 22, float %1435)  ; Frc(value)
  br i1 %1498, label %1515, label %1502, !dx.controlflow.hints !71

; <label>:1502                                    ; preds = %1496
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 0
  %1505 = fmul fast float %1500, %1504
  %1506 = fmul fast float %1501, %1504
  %1507 = fptoui float %1505 to i32
  %1508 = fptoui float %1506 to i32
  %1509 = fptoui float %1499 to i32
  %1510 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1507, i32 %1508, i32 %1509, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1511 = extractvalue %dx.types.ResRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.ResRet.f32 %1510, 1
  %1513 = extractvalue %dx.types.ResRet.f32 %1510, 2
  %1514 = extractvalue %dx.types.ResRet.f32 %1510, 3
  br label %1521

; <label>:1515                                    ; preds = %1496
  %1516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %1500, float %1501, float %1499, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.ResRet.f32 %1516, 1
  %1519 = extractvalue %dx.types.ResRet.f32 %1516, 2
  %1520 = extractvalue %dx.types.ResRet.f32 %1516, 3
  br label %1521

; <label>:1521                                    ; preds = %1515, %1502
  %1522 = phi float [ %1511, %1502 ], [ %1517, %1515 ]
  %1523 = phi float [ %1512, %1502 ], [ %1518, %1515 ]
  %1524 = phi float [ %1513, %1502 ], [ %1519, %1515 ]
  %1525 = phi float [ %1514, %1502 ], [ %1520, %1515 ]
  %1526 = fsub fast float %1522, %1491
  %1527 = fsub fast float %1523, %1492
  %1528 = fsub fast float %1524, %1493
  %1529 = fsub fast float %1525, %1494
  %1530 = fmul fast float %1526, %1464
  %1531 = fmul fast float %1527, %1464
  %1532 = fmul fast float %1528, %1464
  %1533 = fmul fast float %1529, %1464
  %1534 = fadd fast float %1530, %1491
  %1535 = fadd fast float %1531, %1492
  %1536 = fadd fast float %1532, %1493
  %1537 = fadd fast float %1533, %1494
  br label %1566

; <label>:1538                                    ; preds = %1458
  %1539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %1466, float %1467, float %1463, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.ResRet.f32 %1539, 1
  %1542 = extractvalue %dx.types.ResRet.f32 %1539, 2
  %1543 = extractvalue %dx.types.ResRet.f32 %1539, 3
  %1544 = fcmp fast ogt float %1464, 0.000000e+00
  br i1 %1544, label %1545, label %1566, !dx.controlflow.hints !72

; <label>:1545                                    ; preds = %1538
  %1546 = fadd fast float %1463, 1.000000e+00
  %1547 = call float @dx.op.unary.f32(i32 22, float %1434)  ; Frc(value)
  %1548 = call float @dx.op.unary.f32(i32 22, float %1435)  ; Frc(value)
  %1549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %1547, float %1548, float %1546, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.ResRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.ResRet.f32 %1549, 2
  %1553 = extractvalue %dx.types.ResRet.f32 %1549, 3
  %1554 = fsub fast float %1550, %1540
  %1555 = fsub fast float %1551, %1541
  %1556 = fsub fast float %1552, %1542
  %1557 = fsub fast float %1553, %1543
  %1558 = fmul fast float %1554, %1464
  %1559 = fmul fast float %1555, %1464
  %1560 = fmul fast float %1556, %1464
  %1561 = fmul fast float %1557, %1464
  %1562 = fadd fast float %1558, %1540
  %1563 = fadd fast float %1559, %1541
  %1564 = fadd fast float %1560, %1542
  %1565 = fadd fast float %1561, %1543
  br label %1566

; <label>:1566                                    ; preds = %1545, %1538, %1521, %1490
  %1567 = phi float [ %1534, %1521 ], [ %1491, %1490 ], [ %1562, %1545 ], [ %1540, %1538 ]
  %1568 = phi float [ %1535, %1521 ], [ %1492, %1490 ], [ %1563, %1545 ], [ %1541, %1538 ]
  %1569 = phi float [ %1536, %1521 ], [ %1493, %1490 ], [ %1564, %1545 ], [ %1542, %1538 ]
  %1570 = phi float [ %1537, %1521 ], [ %1494, %1490 ], [ %1565, %1545 ], [ %1543, %1538 ]
  %1571 = fadd fast float %1567, -5.000000e-01
  %1572 = fadd fast float %1569, -5.000000e-01
  %1573 = fmul fast float %1571, 0xBFD5555560000000
  %1574 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1572, float %1573)  ; FMad(a,b,c)
  %1575 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1568, float 0.000000e+00)  ; FMad(a,b,c)
  %1576 = fadd fast float %1575, %1570
  %1577 = fmul fast float %1571, -7.500000e-01
  %1578 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1572, float %1577)  ; FMad(a,b,c)
  %1579 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1568, float 0.000000e+00)  ; FMad(a,b,c)
  %1580 = fadd fast float %1579, %1570
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.CBufRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.CBufRet.f32 %1583, 2
  %1587 = extractvalue %dx.types.CBufRet.f32 %1583, 3
  %1588 = fsub fast float %1584, %1574
  %1589 = fsub fast float %1585, %1576
  %1590 = fsub fast float %1586, %1578
  %1591 = fsub fast float %1587, %1580
  %1592 = fmul fast float %1588, %1582
  %1593 = fmul fast float %1589, %1582
  %1594 = fmul fast float %1590, %1582
  %1595 = fmul fast float %1591, %1582
  %1596 = fadd fast float %1592, %1574
  %1597 = fadd fast float %1593, %1576
  %1598 = fadd fast float %1594, %1578
  %1599 = fadd fast float %1595, %1580
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 536870911
  %1603 = uitofp i32 %1602 to float
  %1604 = fmul fast float %1603, %1439
  %1605 = fmul fast float %1603, %1440
  %1606 = fptoui float %1604 to i32
  %1607 = fptoui float %1605 to i32
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 31
  %1611 = lshr i32 %1606, %1610
  %1612 = lshr i32 %1607, %1610
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 31
  %1616 = shl i32 1, %1615
  %1617 = call i32 @dx.op.binary.i32(i32 40, i32 %1616, i32 4)  ; UMin(a,b)
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = extractvalue %dx.types.ResRet.i32 %1618, 1
  %1621 = icmp eq i32 %1617, 0
  br i1 %1621, label %1663, label %1622

; <label>:1622                                    ; preds = %1566
  br label %1623

; <label>:1623                                    ; preds = %1651, %1622
  %1624 = phi i32 [ %1654, %1651 ], [ 0, %1622 ]
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = lshr i32 %1626, 16
  %1628 = and i32 %1627, 31
  %1629 = shl i32 %1612, %1628
  %1630 = add i32 %1629, %1611
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = and i32 %1632, 31
  %1634 = shl i32 %1630, %1633
  %1635 = add i32 %1634, %1624
  %1636 = shl i32 %1635, 2
  %1637 = add i32 %1636, 32
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = icmp slt i32 %1639, 0
  %1641 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1624
  %1642 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1624
  %1643 = bitcast float* %1641 to i32*
  %1644 = bitcast float* %1642 to i32*
  br i1 %1640, label %1645, label %1651, !dx.controlflow.hints !73

; <label>:1645                                    ; preds = %1623
  %1646 = and i32 %1639, 1073741823
  %1647 = add nuw nsw i32 %1646, 20
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = extractvalue %dx.types.ResRet.i32 %1648, 1
  br label %1651

; <label>:1651                                    ; preds = %1645, %1623
  %1652 = phi i32 [ %1649, %1645 ], [ %1619, %1623 ]
  %1653 = phi i32 [ %1650, %1645 ], [ %1620, %1623 ]
  store i32 %1652, i32* %1643, align 4
  store i32 %1653, i32* %1644, align 4
  %1654 = add nuw i32 %1624, 1
  %1655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.i32 %1655, 2
  %1657 = icmp eq i32 %1656, 0
  %1658 = icmp ugt i32 %1639, -1073741825
  %1659 = and i1 %1658, %1657
  %1660 = icmp ult i32 %1654, %1617
  %1661 = and i1 %1659, %1660
  br i1 %1661, label %1623, label %1662, !dx.controlflow.hints !74

; <label>:1662                                    ; preds = %1651
  br label %1663

; <label>:1663                                    ; preds = %1662, %1566
  %1664 = phi i32 [ 0, %1566 ], [ %1654, %1662 ]
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 2
  %1667 = fptoui float %1666 to i32
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1720, label %1669

; <label>:1669                                    ; preds = %1663
  br label %1670

; <label>:1670                                    ; preds = %1715, %1669
  %1671 = phi i32 [ %1716, %1715 ], [ %1664, %1669 ]
  %1672 = phi i32 [ %1717, %1715 ], [ 0, %1669 ]
  %1673 = lshr i32 %1672, 2
  %1674 = and i32 %1672, 3
  %1675 = add nuw nsw i32 %1673, 83
  %1676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 %1675)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.i32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.i32 %1676, 1
  %1679 = extractvalue %dx.types.CBufRet.i32 %1676, 2
  %1680 = extractvalue %dx.types.CBufRet.i32 %1676, 3
  %1681 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %1677, i32* %1681, align 4
  %1682 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %1678, i32* %1682, align 4
  %1683 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %1679, i32* %1683, align 4
  %1684 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %1680, i32* %1684, align 4
  %1685 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 %1674
  %1686 = load i32, i32* %1685, align 4, !tbaa !51
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = lshr i32 %1688, 16
  %1690 = and i32 %1689, 31
  %1691 = shl i32 %1612, %1690
  %1692 = add i32 %1691, %1611
  %1693 = shl i32 %1692, 2
  %1694 = add i32 %1693, %1686
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1694, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = icmp eq i32 %1696, 0
  br i1 %1697, label %1715, label %1698, !dx.controlflow.hints !75

; <label>:1698                                    ; preds = %1670
  %1699 = icmp slt i32 %1696, 0
  %1700 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1671
  %1701 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1671
  %1702 = bitcast float* %1700 to i32*
  %1703 = bitcast float* %1701 to i32*
  br i1 %1699, label %1704, label %1711, !dx.controlflow.hints !76

; <label>:1704                                    ; preds = %1698
  %1705 = and i32 %1696, 1073741823
  %1706 = add i32 %1686, 20
  %1707 = add i32 %1706, %1705
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.i32 %1708, 1
  br label %1711

; <label>:1711                                    ; preds = %1704, %1698
  %1712 = phi i32 [ %1709, %1704 ], [ %1619, %1698 ]
  %1713 = phi i32 [ %1710, %1704 ], [ %1620, %1698 ]
  store i32 %1712, i32* %1702, align 4
  store i32 %1713, i32* %1703, align 4
  %1714 = add i32 %1671, 1
  br label %1715

; <label>:1715                                    ; preds = %1711, %1670
  %1716 = phi i32 [ %1671, %1670 ], [ %1714, %1711 ]
  %1717 = add nuw i32 %1672, 1
  %1718 = icmp eq i32 %1717, %1667
  br i1 %1718, label %1719, label %1670

; <label>:1719                                    ; preds = %1715
  br label %1720

; <label>:1720                                    ; preds = %1719, %1663
  %1721 = phi i32 [ %1664, %1663 ], [ %1716, %1719 ]
  %1722 = icmp eq i32 %1721, 1
  %1723 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 0
  %1724 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 0
  br i1 %1722, label %1725, label %1728, !dx.controlflow.hints !77

; <label>:1725                                    ; preds = %1720
  %1726 = load float, float* %1723, align 4
  %1727 = load float, float* %1724, align 4
  br label %1755

; <label>:1728                                    ; preds = %1720
  %1729 = load float, float* %1723, align 4
  %1730 = load float, float* %1724, align 4
  %1731 = fdiv fast float 1.000000e+00, %1730
  %1732 = fsub fast float %1729, %1731
  %1733 = icmp ugt i32 %1721, 1
  br i1 %1733, label %1734, label %1750

; <label>:1734                                    ; preds = %1728
  br label %1735

; <label>:1735                                    ; preds = %1735, %1734
  %1736 = phi float [ %1745, %1735 ], [ %1732, %1734 ]
  %1737 = phi float [ %1746, %1735 ], [ %1729, %1734 ]
  %1738 = phi i32 [ %1747, %1735 ], [ 1, %1734 ]
  %1739 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1738
  %1740 = load float, float* %1739, align 4
  %1741 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1738
  %1742 = load float, float* %1741, align 4
  %1743 = fdiv fast float 1.000000e+00, %1742
  %1744 = fsub fast float %1740, %1743
  %1745 = call float @dx.op.binary.f32(i32 36, float %1736, float %1744)  ; FMin(a,b)
  %1746 = call float @dx.op.binary.f32(i32 35, float %1737, float %1740)  ; FMax(a,b)
  %1747 = add nuw i32 %1738, 1
  %1748 = icmp eq i32 %1747, %1721
  br i1 %1748, label %1749, label %1735

; <label>:1749                                    ; preds = %1735
  br label %1750

; <label>:1750                                    ; preds = %1749, %1728
  %1751 = phi float [ %1732, %1728 ], [ %1745, %1749 ]
  %1752 = phi float [ %1729, %1728 ], [ %1746, %1749 ]
  %1753 = fsub fast float %1752, %1751
  %1754 = fdiv fast float 1.000000e+00, %1753
  br label %1755

; <label>:1755                                    ; preds = %1750, %1725
  %1756 = phi float [ %1726, %1725 ], [ %1752, %1750 ]
  %1757 = phi float [ %1727, %1725 ], [ %1754, %1750 ]
  %1758 = fadd fast float %1186, %1756
  %1759 = fmul fast float %1758, %1757
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  %1761 = fmul fast float %1760, 2.000000e+00
  %1762 = fsub fast float 1.000000e+00, %1761
  %1763 = fmul fast float %1596, %1596
  %1764 = fsub fast float %1597, %1763
  %1765 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1764)  ; FMax(a,b)
  %1766 = fdiv fast float 1.000000e+00, %1765
  %1767 = fmul fast float %1597, %1596
  %1768 = fsub fast float %1598, %1767
  %1769 = fsub fast float %1762, %1596
  %1770 = fmul fast float %1762, %1762
  %1771 = fsub fast float %1770, %1597
  %1772 = fmul fast float %1766, %1768
  %1773 = fmul fast float %1772, %1769
  %1774 = fsub fast float %1771, %1773
  %1775 = fmul fast float %1597, %1597
  %1776 = fsub fast float %1599, %1775
  %1777 = fmul fast float %1768, %1768
  %1778 = fmul fast float %1777, %1766
  %1779 = fsub fast float %1776, %1778
  %1780 = fdiv fast float %1774, %1779
  %1781 = fmul fast float %1780, %1768
  %1782 = fsub fast float %1769, %1781
  %1783 = fmul fast float %1782, %1766
  %1784 = fmul fast float %1783, %1596
  %1785 = fsub fast float 1.000000e+00, %1784
  %1786 = fmul fast float %1780, %1597
  %1787 = fsub fast float %1785, %1786
  %1788 = fmul fast float %1783, %1783
  %1789 = fmul fast float %1780, 4.000000e+00
  %1790 = fmul fast float %1789, %1787
  %1791 = fsub fast float %1788, %1790
  %1792 = call float @dx.op.unary.f32(i32 24, float %1791)  ; Sqrt(value)
  %1793 = fcmp fast oge float %1783, 0.000000e+00
  %1794 = fsub fast float -0.000000e+00, %1792
  %1795 = select i1 %1793, float %1794, float %1792
  %1796 = fsub fast float %1795, %1783
  %1797 = fdiv fast float %1796, %1780
  %1798 = fdiv fast float %1787, %1796
  %1799 = fmul fast float %1797, 5.000000e-01
  %1800 = fmul fast float %1798, 2.000000e+00
  %1801 = select i1 %1793, float %1799, float %1800
  %1802 = select i1 %1793, float %1800, float %1799
  %1803 = call float @dx.op.binary.f32(i32 35, float %1801, float %1802)  ; FMax(a,b)
  %1804 = call float @dx.op.binary.f32(i32 36, float %1801, float %1802)  ; FMin(a,b)
  %1805 = fcmp fast ogt float %1762, %1803
  %1806 = fsub fast float %1762, %1804
  %1807 = fsub fast float %1762, %1803
  %1808 = fsub fast float %1803, %1804
  %1809 = select i1 %1805, float %1807, float %1808
  %1810 = fmul float %1806, %1809
  %1811 = select i1 %1805, float %1804, float %1762
  %1812 = fcmp fast ogt float %1762, %1804
  %1813 = fmul fast float %1811, %1803
  %1814 = fadd fast float %1811, %1803
  %1815 = fmul fast float %1814, %1596
  %1816 = fadd fast float %1813, %1597
  %1817 = fsub fast float %1816, %1815
  %1818 = fdiv fast float %1817, %1810
  %1819 = select i1 %1812, float %1818, float 0.000000e+00
  %1820 = fsub fast float 1.000000e+00, %1819
  %1821 = select i1 %1805, float %1820, float %1819
  %1822 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1581, 3
  %1824 = fmul fast float %1823, %1822
  %1825 = fsub fast float 1.000000e+00, %1824
  br label %1826

; <label>:1826                                    ; preds = %1755, %1433, %1159, %1117
  %1827 = phi float [ 1.000000e+00, %1117 ], [ %1825, %1755 ], [ 1.000000e+00, %1159 ], [ 1.000000e+00, %1433 ]
  %1828 = fcmp fast ogt float %1152, 0.000000e+00
  br i1 %1828, label %1829, label %1841, !dx.controlflow.hints !83

; <label>:1829                                    ; preds = %1826
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 2
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 2
  %1834 = fmul fast float %1831, %223
  %1835 = fadd fast float %1833, %250
  %1836 = fadd fast float %1835, %1834
  %1837 = call float @dx.op.binary.f32(i32 35, float %1836, float 0.000000e+00)  ; FMax(a,b)
  %1838 = fadd fast float %1837, 0x3F10000000000000
  %1839 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float %1838)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  br label %1841

; <label>:1841                                    ; preds = %1829, %1826
  %1842 = phi float [ %1840, %1829 ], [ 1.000000e+00, %1826 ]
  %1843 = fcmp fast ogt float %1150, 0.000000e+00
  br i1 %1843, label %1844, label %1856, !dx.controlflow.hints !84

; <label>:1844                                    ; preds = %1841
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 2
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1849 = fmul fast float %1846, %223
  %1850 = fadd fast float %1848, %250
  %1851 = fadd fast float %1850, %1849
  %1852 = call float @dx.op.binary.f32(i32 35, float %1851, float 0.000000e+00)  ; FMax(a,b)
  %1853 = fadd fast float %1852, 0x3F10000000000000
  %1854 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %1040, float %1041, float undef, float undef, i32 0, i32 0, i32 undef, float %1853)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  br label %1856

; <label>:1856                                    ; preds = %1844, %1841
  %1857 = phi float [ %1855, %1844 ], [ 1.000000e+00, %1841 ]
  %1858 = fcmp fast ogt float %1149, 0.000000e+00
  br i1 %1858, label %1859, label %1875, !dx.controlflow.hints !85

; <label>:1859                                    ; preds = %1856
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 2
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 0
  %1864 = fmul fast float %1861, %223
  %1865 = fadd fast float %1863, %250
  %1866 = fadd fast float %1865, %1864
  %1867 = call float @dx.op.binary.f32(i32 35, float %1866, float 0.000000e+00)  ; FMax(a,b)
  %1868 = fadd fast float %1867, 0x3F10000000000000
  br i1 %99, label %1869, label %1872, !dx.controlflow.hints !86

; <label>:1869                                    ; preds = %1859
  %1870 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %242, float %246, float undef, float undef, i32 0, i32 0, i32 undef, float %1868)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1871 = extractvalue %dx.types.ResRet.f32 %1870, 0
  br label %1875

; <label>:1872                                    ; preds = %1859
  %1873 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %242, float %246, float undef, float undef, i32 0, i32 0, i32 undef, float %1868)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  br label %1875

; <label>:1875                                    ; preds = %1872, %1869, %1856
  %1876 = phi float [ %1871, %1869 ], [ %1874, %1872 ], [ 1.000000e+00, %1856 ]
  %1877 = fsub fast float %1842, %1827
  %1878 = fmul fast float %1877, %1119
  %1879 = fadd fast float %1878, %1827
  %1880 = fsub fast float %1857, %1879
  %1881 = fmul fast float %1880, %1118
  %1882 = fadd fast float %1881, %1879
  %1883 = fsub fast float %1876, %1882
  %1884 = fmul fast float %1883, %1149
  %1885 = fadd fast float %1884, %1882
  br label %2739

; <label>:1886                                    ; preds = %112
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.CBufRet.f32 %1887, 1
  %1890 = extractvalue %dx.types.CBufRet.f32 %1887, 3
  %1891 = fmul fast float %1890, %242
  %1892 = fmul fast float %1890, %246
  %1893 = fadd fast float %1891, %1888
  %1894 = fadd fast float %1892, %1889
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.CBufRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1899 = fmul fast float %1898, %242
  %1900 = fmul fast float %1898, %246
  %1901 = fadd fast float %1899, %1896
  %1902 = fadd fast float %1900, %1897
  %1903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1904 = extractvalue %dx.types.CBufRet.f32 %1903, 1
  %1905 = fsub fast float %1904, %250
  %1906 = extractvalue %dx.types.CBufRet.f32 %1903, 2
  %1907 = fmul fast float %1905, %1906
  %1908 = fsub fast float 1.000000e+00, %1907
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  br i1 %99, label %1970, label %1910, !dx.controlflow.hints !79

; <label>:1910                                    ; preds = %1886
  %1911 = extractvalue %dx.types.CBufRet.f32 %1895, 2
  %1912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.f32 %1912, 2
  %1914 = fadd fast float %1913, %1911
  %1915 = fcmp fast ogt float %1914, 0.000000e+00
  br i1 %1915, label %1916, label %1940, !dx.controlflow.hints !80

; <label>:1916                                    ; preds = %1910
  %1917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1917, 0
  %1919 = extractvalue %dx.types.CBufRet.f32 %1917, 1
  %1920 = fsub fast float %1901, %1918
  %1921 = fsub fast float %1902, %1919
  %1922 = fcmp fast olt float %1920, 0.000000e+00
  %1923 = fcmp fast olt float %1921, 0.000000e+00
  %1924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1925 = extractvalue %dx.types.CBufRet.f32 %1924, 0
  %1926 = extractvalue %dx.types.CBufRet.f32 %1924, 1
  %1927 = extractvalue %dx.types.CBufRet.f32 %1924, 2
  %1928 = extractvalue %dx.types.CBufRet.f32 %1924, 3
  %1929 = select i1 %1922, float %1925, float %1927
  %1930 = select i1 %1923, float %1926, float %1928
  %1931 = fmul fast float %1929, %1920
  %1932 = fmul fast float %1930, %1921
  %1933 = call float @dx.op.unary.f32(i32 6, float %1931)  ; FAbs(value)
  %1934 = call float @dx.op.unary.f32(i32 6, float %1932)  ; FAbs(value)
  %1935 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %1936 = call float @dx.op.binary.f32(i32 35, float %1933, float %1934)  ; FMax(a,b)
  %1937 = fsub fast float %1935, %1936
  %1938 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1939 = fmul fast float %1938, %1909
  br label %1940

; <label>:1940                                    ; preds = %1916, %1910
  %1941 = phi float [ %1939, %1916 ], [ 0.000000e+00, %1910 ]
  %1942 = extractvalue %dx.types.CBufRet.f32 %1887, 2
  %1943 = extractvalue %dx.types.CBufRet.f32 %1912, 1
  %1944 = fadd fast float %1943, %1942
  %1945 = fcmp fast ogt float %1944, 0.000000e+00
  br i1 %1945, label %1946, label %1970, !dx.controlflow.hints !81

; <label>:1946                                    ; preds = %1940
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1950 = fsub fast float %1893, %1948
  %1951 = fsub fast float %1894, %1949
  %1952 = fcmp fast olt float %1950, 0.000000e+00
  %1953 = fcmp fast olt float %1951, 0.000000e+00
  %1954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1955 = extractvalue %dx.types.CBufRet.f32 %1954, 0
  %1956 = extractvalue %dx.types.CBufRet.f32 %1954, 1
  %1957 = extractvalue %dx.types.CBufRet.f32 %1954, 2
  %1958 = extractvalue %dx.types.CBufRet.f32 %1954, 3
  %1959 = select i1 %1952, float %1955, float %1957
  %1960 = select i1 %1953, float %1956, float %1958
  %1961 = fmul fast float %1959, %1950
  %1962 = fmul fast float %1960, %1951
  %1963 = call float @dx.op.unary.f32(i32 6, float %1961)  ; FAbs(value)
  %1964 = call float @dx.op.unary.f32(i32 6, float %1962)  ; FAbs(value)
  %1965 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %1966 = call float @dx.op.binary.f32(i32 35, float %1963, float %1964)  ; FMax(a,b)
  %1967 = fsub fast float %1965, %1966
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fmul fast float %1968, %1909
  br label %1970

; <label>:1970                                    ; preds = %1946, %1940, %1886
  %1971 = phi float [ 0.000000e+00, %1886 ], [ %1969, %1946 ], [ 0.000000e+00, %1940 ]
  %1972 = phi float [ 0.000000e+00, %1886 ], [ %1941, %1946 ], [ %1941, %1940 ]
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 0
  %1975 = extractvalue %dx.types.CBufRet.f32 %1973, 1
  %1976 = fmul fast float %1974, %106
  %1977 = fadd fast float %1976, %1975
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 0
  %1981 = extractvalue %dx.types.CBufRet.f32 %1979, 1
  %1982 = fsub fast float %242, %1980
  %1983 = fsub fast float %246, %1981
  %1984 = fcmp fast olt float %1982, 0.000000e+00
  %1985 = fcmp fast olt float %1983, 0.000000e+00
  %1986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.CBufRet.f32 %1986, 1
  %1989 = extractvalue %dx.types.CBufRet.f32 %1986, 2
  %1990 = extractvalue %dx.types.CBufRet.f32 %1986, 3
  %1991 = select i1 %1984, float %1987, float %1989
  %1992 = select i1 %1985, float %1988, float %1990
  %1993 = fmul fast float %1991, %1982
  %1994 = fmul fast float %1992, %1983
  %1995 = call float @dx.op.unary.f32(i32 6, float %1993)  ; FAbs(value)
  %1996 = call float @dx.op.unary.f32(i32 6, float %1994)  ; FAbs(value)
  %1997 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %1998 = call float @dx.op.binary.f32(i32 35, float %1995, float %1996)  ; FMax(a,b)
  %1999 = fsub fast float %1997, %1998
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = call float @dx.op.binary.f32(i32 36, float %2000, float %1978)  ; FMin(a,b)
  %2002 = fmul fast float %2001, %1909
  %2003 = fsub fast float %1971, %2002
  %2004 = fsub fast float %1972, %1971
  %2005 = fsub fast float %2004, %2002
  %2006 = call float @dx.op.binary.f32(i32 35, float %1971, float %1972)  ; FMax(a,b)
  %2007 = call float @dx.op.binary.f32(i32 35, float %2002, float %2006)  ; FMax(a,b)
  %2008 = fcmp fast olt float %2007, 1.000000e+00
  %2009 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %2010 = fcmp fast une float %2009, 0.000000e+00
  %2011 = and i1 %2008, %2010
  br i1 %2011, label %2012, label %2679, !dx.controlflow.hints !82

; <label>:2012                                    ; preds = %1970
  %2013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.CBufRet.f32 %2013, 1
  %2016 = extractvalue %dx.types.CBufRet.f32 %2013, 2
  %2017 = extractvalue %dx.types.CBufRet.f32 %2013, 3
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.CBufRet.f32 %2018, 1
  %2021 = extractvalue %dx.types.CBufRet.f32 %2018, 2
  %2022 = extractvalue %dx.types.CBufRet.f32 %2018, 3
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.CBufRet.f32 %2023, 2
  %2027 = extractvalue %dx.types.CBufRet.f32 %2023, 3
  %2028 = fmul fast float %2014, %162
  %2029 = call float @dx.op.tertiary.f32(i32 46, float %163, float %2015, float %2028)  ; FMad(a,b,c)
  %2030 = call float @dx.op.tertiary.f32(i32 46, float %164, float %2016, float %2029)  ; FMad(a,b,c)
  %2031 = fadd fast float %2030, %2017
  %2032 = fmul fast float %2019, %162
  %2033 = call float @dx.op.tertiary.f32(i32 46, float %163, float %2020, float %2032)  ; FMad(a,b,c)
  %2034 = call float @dx.op.tertiary.f32(i32 46, float %164, float %2021, float %2033)  ; FMad(a,b,c)
  %2035 = fadd fast float %2034, %2022
  %2036 = fmul fast float %2024, %162
  %2037 = call float @dx.op.tertiary.f32(i32 46, float %163, float %2025, float %2036)  ; FMad(a,b,c)
  %2038 = call float @dx.op.tertiary.f32(i32 46, float %164, float %2026, float %2037)  ; FMad(a,b,c)
  %2039 = fadd fast float %2038, %2027
  %2040 = fcmp fast oge float %2031, 1.000000e+00
  %2041 = fcmp fast oge float %2035, 1.000000e+00
  %2042 = or i1 %2040, %2041
  %2043 = fcmp fast olt float %2031, 0.000000e+00
  %2044 = fcmp fast olt float %2035, 0.000000e+00
  %2045 = or i1 %2043, %2044
  %2046 = or i1 %2042, %2045
  br i1 %2046, label %2679, label %2047, !dx.controlflow.hints !62

; <label>:2047                                    ; preds = %2012
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.CBufRet.f32 %2048, 1
  %2051 = extractvalue %dx.types.CBufRet.f32 %2048, 2
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 1
  %2054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.i32 %2054, 2
  %2056 = uitofp i32 %2055 to float
  %2057 = extractvalue %dx.types.CBufRet.i32 %2054, 3
  %2058 = uitofp i32 %2057 to float
  %2059 = extractvalue %dx.types.CBufRet.f32 %2048, 3
  %2060 = fmul fast float %2059, 2.000000e+00
  %2061 = fsub fast float %2031, %2049
  %2062 = fsub fast float %2035, %2050
  %2063 = fmul fast float %2060, %2061
  %2064 = fmul fast float %2060, %2062
  %2065 = fdiv fast float 1.000000e+00, %212
  %2066 = fmul fast float %2064, %2065
  %2067 = call float @dx.op.unary.f32(i32 6, float %2066)  ; FAbs(value)
  %2068 = fmul fast float %2051, %164
  %2069 = fmul fast float %2068, %2060
  %2070 = call float @dx.op.unary.f32(i32 6, float %2069)  ; FAbs(value)
  %2071 = call float @dx.op.unary.f32(i32 6, float %2063)  ; FAbs(value)
  %2072 = call float @dx.op.binary.f32(i32 35, float %2070, float %2067)  ; FMax(a,b)
  %2073 = call float @dx.op.binary.f32(i32 35, float %2071, float %2072)  ; FMax(a,b)
  %2074 = fmul fast float %2073, 2.000000e+00
  %2075 = call float @dx.op.unary.f32(i32 23, float %2074)  ; Log(value)
  %2076 = call float @dx.op.binary.f32(i32 35, float %2075, float %2056)  ; FMax(a,b)
  %2077 = call float @dx.op.unary.f32(i32 22, float %2076)  ; Frc(value)
  %2078 = fadd fast float %2077, 0xBFEA666660000000
  %2079 = fmul fast float %2078, 8.000000e+00
  %2080 = call float @dx.op.unary.f32(i32 7, float %2079)  ; Saturate(value)
  %2081 = call float @dx.op.unary.f32(i32 27, float %2076)  ; Round_ni(value)
  %2082 = fadd fast float %2081, %2080
  %2083 = call float @dx.op.binary.f32(i32 36, float %2082, float %2058)  ; FMin(a,b)
  %2084 = call float @dx.op.unary.f32(i32 27, float %2083)  ; Round_ni(value)
  %2085 = fsub fast float -0.000000e+00, %2084
  %2086 = call float @dx.op.unary.f32(i32 21, float %2085)  ; Exp(value)
  %2087 = fmul fast float %2086, %2060
  %2088 = fmul fast float %2087, %2031
  %2089 = fmul fast float %2087, %2035
  %2090 = fmul fast float %2088, 5.000000e-01
  %2091 = fmul fast float %2089, 5.000000e-01
  %2092 = fadd fast float %2090, 5.000000e-01
  %2093 = fadd fast float %2091, 5.000000e-01
  %2094 = fmul fast float %2088, 2.500000e-01
  %2095 = fmul fast float %2089, 2.500000e-01
  %2096 = fadd fast float %2094, 5.000000e-01
  %2097 = fadd fast float %2095, 5.000000e-01
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = and i32 %2099, 536870911
  %2101 = lshr i32 %2100, 9
  %2102 = uitofp i32 %2101 to float
  %2103 = fmul fast float %2102, %2031
  %2104 = fmul fast float %2102, %2035
  %2105 = call float @dx.op.unary.f32(i32 22, float %2103)  ; Frc(value)
  %2106 = call float @dx.op.unary.f32(i32 22, float %2104)  ; Frc(value)
  %2107 = call float @dx.op.unary.f32(i32 22, float %2080)  ; Frc(value)
  %2108 = fcmp fast une float %2107, 0.000000e+00
  br i1 %2108, label %2109, label %2207, !dx.controlflow.hints !63

; <label>:2109                                    ; preds = %2047
  %2110 = call float @dx.op.unary.f32(i32 21, float %2081)  ; Exp(value)
  %2111 = fmul fast float %2110, 1.953125e-03
  %2112 = fcmp fast olt float %2105, %2111
  %2113 = fcmp fast olt float %2106, %2111
  %2114 = or i1 %2112, %2113
  %2115 = fsub fast float 1.000000e+00, %2111
  %2116 = fcmp fast ogt float %2105, %2115
  %2117 = fcmp fast ogt float %2106, %2115
  %2118 = or i1 %2116, %2117
  %2119 = or i1 %2114, %2118
  br i1 %2119, label %2120, label %2286, !dx.controlflow.hints !64

; <label>:2120                                    ; preds = %2109
  %2121 = fmul fast float %2053, 5.000000e-01
  %2122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.i32 %2122, 0
  %2124 = fmul fast float %2035, 3.530000e+02
  %2125 = uitofp i32 %2100 to float
  %2126 = fmul fast float %2124, %2125
  %2127 = fmul fast float %2031, 6.130000e+02
  %2128 = fadd fast float %2126, %2127
  %2129 = fptoui float %2128 to i32
  %2130 = add i32 %2123, %2129
  %2131 = mul i32 %2130, -63
  %2132 = lshr i32 %2131, 17
  %2133 = xor i32 %2132, %2131
  %2134 = mul i32 %2133, -511
  %2135 = mul i32 %2133, -8176
  %2136 = xor i32 %2134, %2135
  %2137 = mul i32 %2136, -7
  %2138 = mul i32 %2136, -7168
  %2139 = xor i32 %2137, %2138
  %2140 = lshr i32 %2139, 15
  %2141 = xor i32 %2140, %2137
  %2142 = and i32 %2141, 15
  %2143 = mul i32 %2142, 2
  %2144 = add i32 0, %2143
  %2145 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2144
  %2146 = load float, float* %2145, align 4
  %2147 = mul i32 %2142, 2
  %2148 = add i32 1, %2147
  %2149 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2148
  %2150 = load float, float* %2149, align 4
  %2151 = fmul fast float %2035, 2.770000e+02
  %2152 = fmul fast float %2151, %2125
  %2153 = fmul fast float %2031, 5.990000e+02
  %2154 = fadd fast float %2152, %2153
  %2155 = fptoui float %2154 to i32
  %2156 = mul i32 %2155, -63
  %2157 = lshr i32 %2156, 17
  %2158 = xor i32 %2157, %2156
  %2159 = mul i32 %2158, -511
  %2160 = mul i32 %2158, -8176
  %2161 = xor i32 %2159, %2160
  %2162 = mul i32 %2161, -7
  %2163 = mul i32 %2161, -7168
  %2164 = xor i32 %2162, %2163
  %2165 = lshr i32 %2164, 15
  %2166 = xor i32 %2165, %2162
  %2167 = and i32 %2166, 63
  %2168 = mul i32 %2167, 2
  %2169 = add i32 0, %2168
  %2170 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2169
  %2171 = load float, float* %2170, align 4
  %2172 = mul i32 %2167, 2
  %2173 = add i32 1, %2172
  %2174 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2173
  %2175 = load float, float* %2174, align 4
  %2176 = call float @dx.op.dot2.f32(i32 54, float %2146, float %2150, float %2171, float %2175)  ; Dot2(ax,ay,bx,by)
  %2177 = fsub fast float -0.000000e+00, %2171
  %2178 = call float @dx.op.dot2.f32(i32 54, float %2146, float %2150, float %2177, float %2175)  ; Dot2(ax,ay,bx,by)
  %2179 = fmul fast float %2176, %2121
  %2180 = fmul fast float %2178, %2121
  %2181 = fdiv fast float 2.000000e+00, %2087
  %2182 = fmul fast float %2110, 9.765625e-04
  %2183 = fcmp fast olt float %2105, %2182
  %2184 = fcmp fast olt float %2106, %2182
  %2185 = or i1 %2183, %2184
  %2186 = fsub fast float 1.000000e+00, %2182
  %2187 = fcmp fast ogt float %2105, %2186
  %2188 = fcmp fast ogt float %2106, %2186
  %2189 = or i1 %2187, %2188
  %2190 = or i1 %2185, %2189
  %2191 = fmul fast float %2179, 2.000000e+00
  br i1 %2190, label %2192, label %2196, !dx.controlflow.hints !65

; <label>:2192                                    ; preds = %2120
  %2193 = fmul fast float %2180, 2.000000e+00
  %2194 = fadd fast float %2191, %2092
  %2195 = fadd fast float %2193, %2093
  br label %2196

; <label>:2196                                    ; preds = %2192, %2120
  %2197 = phi float [ %2194, %2192 ], [ %2092, %2120 ]
  %2198 = phi float [ %2195, %2192 ], [ %2093, %2120 ]
  %2199 = phi i32 [ 3, %2192 ], [ 2, %2120 ]
  %2200 = fadd fast float %2179, %2096
  %2201 = fadd fast float %2180, %2097
  %2202 = fmul fast float %2191, %2181
  %2203 = fmul fast float %2181, 2.000000e+00
  %2204 = fmul fast float %2203, %2180
  %2205 = fadd fast float %2202, %2031
  %2206 = fadd fast float %2204, %2035
  br label %2286

; <label>:2207                                    ; preds = %2047
  %2208 = call float @dx.op.unary.f32(i32 21, float %2084)  ; Exp(value)
  %2209 = fmul fast float %2208, 9.765625e-04
  %2210 = fcmp fast olt float %2105, %2209
  %2211 = fcmp fast olt float %2106, %2209
  %2212 = or i1 %2210, %2211
  %2213 = fsub fast float 1.000000e+00, %2209
  %2214 = fcmp fast ogt float %2105, %2213
  %2215 = fcmp fast ogt float %2106, %2213
  %2216 = or i1 %2214, %2215
  %2217 = or i1 %2212, %2216
  br i1 %2217, label %2218, label %2286, !dx.controlflow.hints !66

; <label>:2218                                    ; preds = %2207
  %2219 = fmul fast float %2053, 5.000000e-01
  %2220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.i32 %2220, 0
  %2222 = fmul fast float %2035, 3.530000e+02
  %2223 = uitofp i32 %2100 to float
  %2224 = fmul fast float %2222, %2223
  %2225 = fmul fast float %2031, 6.130000e+02
  %2226 = fadd fast float %2224, %2225
  %2227 = fptoui float %2226 to i32
  %2228 = add i32 %2221, %2227
  %2229 = mul i32 %2228, -63
  %2230 = lshr i32 %2229, 17
  %2231 = xor i32 %2230, %2229
  %2232 = mul i32 %2231, -511
  %2233 = mul i32 %2231, -8176
  %2234 = xor i32 %2232, %2233
  %2235 = mul i32 %2234, -7
  %2236 = mul i32 %2234, -7168
  %2237 = xor i32 %2235, %2236
  %2238 = lshr i32 %2237, 15
  %2239 = xor i32 %2238, %2235
  %2240 = and i32 %2239, 15
  %2241 = mul i32 %2240, 2
  %2242 = add i32 0, %2241
  %2243 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2242
  %2244 = load float, float* %2243, align 4
  %2245 = mul i32 %2240, 2
  %2246 = add i32 1, %2245
  %2247 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2246
  %2248 = load float, float* %2247, align 4
  %2249 = fmul fast float %2035, 2.770000e+02
  %2250 = fmul fast float %2249, %2223
  %2251 = fmul fast float %2031, 5.990000e+02
  %2252 = fadd fast float %2250, %2251
  %2253 = fptoui float %2252 to i32
  %2254 = mul i32 %2253, -63
  %2255 = lshr i32 %2254, 17
  %2256 = xor i32 %2255, %2254
  %2257 = mul i32 %2256, -511
  %2258 = mul i32 %2256, -8176
  %2259 = xor i32 %2257, %2258
  %2260 = mul i32 %2259, -7
  %2261 = mul i32 %2259, -7168
  %2262 = xor i32 %2260, %2261
  %2263 = lshr i32 %2262, 15
  %2264 = xor i32 %2263, %2260
  %2265 = and i32 %2264, 63
  %2266 = mul i32 %2265, 2
  %2267 = add i32 0, %2266
  %2268 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2267
  %2269 = load float, float* %2268, align 4
  %2270 = mul i32 %2265, 2
  %2271 = add i32 1, %2270
  %2272 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2271
  %2273 = load float, float* %2272, align 4
  %2274 = call float @dx.op.dot2.f32(i32 54, float %2244, float %2248, float %2269, float %2273)  ; Dot2(ax,ay,bx,by)
  %2275 = fsub fast float -0.000000e+00, %2269
  %2276 = call float @dx.op.dot2.f32(i32 54, float %2244, float %2248, float %2275, float %2273)  ; Dot2(ax,ay,bx,by)
  %2277 = fmul fast float %2274, %2219
  %2278 = fmul fast float %2276, %2219
  %2279 = fadd fast float %2277, %2092
  %2280 = fadd fast float %2278, %2093
  %2281 = fdiv fast float 2.000000e+00, %2087
  %2282 = fmul fast float %2281, %2277
  %2283 = fmul fast float %2278, %2281
  %2284 = fadd fast float %2282, %2031
  %2285 = fadd fast float %2283, %2035
  br label %2286

; <label>:2286                                    ; preds = %2218, %2207, %2196, %2109
  %2287 = phi float [ %2200, %2196 ], [ %2096, %2109 ], [ %2096, %2218 ], [ %2096, %2207 ]
  %2288 = phi float [ %2201, %2196 ], [ %2097, %2109 ], [ %2097, %2218 ], [ %2097, %2207 ]
  %2289 = phi float [ %2197, %2196 ], [ %2092, %2109 ], [ %2279, %2218 ], [ %2092, %2207 ]
  %2290 = phi float [ %2198, %2196 ], [ %2093, %2109 ], [ %2280, %2218 ], [ %2093, %2207 ]
  %2291 = phi i32 [ %2199, %2196 ], [ 0, %2109 ], [ 1, %2218 ], [ 0, %2207 ]
  %2292 = phi float [ %2205, %2196 ], [ %2031, %2109 ], [ %2284, %2218 ], [ %2031, %2207 ]
  %2293 = phi float [ %2206, %2196 ], [ %2035, %2109 ], [ %2285, %2218 ], [ %2035, %2207 ]
  %2294 = fsub fast float %2058, %2056
  %2295 = fptoui float %2294 to i32
  %2296 = add i32 %2295, 320
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %2296)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.CBufRet.f32 %2297, 1
  %2300 = fcmp fast une float %2083, %2058
  %2301 = fsub fast float %2292, %2298
  %2302 = fsub fast float %2293, %2299
  %2303 = call float @dx.op.unary.f32(i32 6, float %2301)  ; FAbs(value)
  %2304 = call float @dx.op.unary.f32(i32 6, float %2302)  ; FAbs(value)
  %2305 = fmul fast float %2303, %2087
  %2306 = fmul fast float %2304, %2087
  %2307 = fcmp fast olt float %2305, 1.000000e+00
  %2308 = fcmp fast olt float %2306, 1.000000e+00
  %2309 = and i1 %2307, %2308
  %2310 = or i1 %2300, %2309
  br i1 %2310, label %2311, label %2679, !dx.controlflow.hints !67

; <label>:2311                                    ; preds = %2286
  %2312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.i32 %2312, 2
  %2314 = sitofp i32 %2313 to float
  %2315 = fsub fast float %2083, %2314
  %2316 = call float @dx.op.unary.f32(i32 27, float %2315)  ; Round_ni(value)
  %2317 = call float @dx.op.unary.f32(i32 22, float %2083)  ; Frc(value)
  %2318 = icmp eq i32 %2291, 0
  %2319 = call float @dx.op.unary.f32(i32 22, float %2289)  ; Frc(value)
  %2320 = call float @dx.op.unary.f32(i32 22, float %2290)  ; Frc(value)
  br i1 %2318, label %2391, label %2321, !dx.controlflow.hints !68

; <label>:2321                                    ; preds = %2311
  %2322 = and i32 %2291, 1
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %2337, label %2324, !dx.controlflow.hints !69

; <label>:2324                                    ; preds = %2321
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = fmul fast float %2319, %2326
  %2328 = fmul fast float %2320, %2326
  %2329 = fptoui float %2327 to i32
  %2330 = fptoui float %2328 to i32
  %2331 = fptoui float %2316 to i32
  %2332 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %2329, i32 %2330, i32 %2331, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  %2334 = extractvalue %dx.types.ResRet.f32 %2332, 1
  %2335 = extractvalue %dx.types.ResRet.f32 %2332, 2
  %2336 = extractvalue %dx.types.ResRet.f32 %2332, 3
  br label %2343

; <label>:2337                                    ; preds = %2321
  %2338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %2319, float %2320, float %2316, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = extractvalue %dx.types.ResRet.f32 %2338, 1
  %2341 = extractvalue %dx.types.ResRet.f32 %2338, 2
  %2342 = extractvalue %dx.types.ResRet.f32 %2338, 3
  br label %2343

; <label>:2343                                    ; preds = %2337, %2324
  %2344 = phi float [ %2333, %2324 ], [ %2339, %2337 ]
  %2345 = phi float [ %2334, %2324 ], [ %2340, %2337 ]
  %2346 = phi float [ %2335, %2324 ], [ %2341, %2337 ]
  %2347 = phi float [ %2336, %2324 ], [ %2342, %2337 ]
  %2348 = fcmp fast ogt float %2317, 0.000000e+00
  br i1 %2348, label %2349, label %2419, !dx.controlflow.hints !70

; <label>:2349                                    ; preds = %2343
  %2350 = and i32 %2291, 2
  %2351 = icmp eq i32 %2350, 0
  %2352 = fadd fast float %2316, 1.000000e+00
  %2353 = call float @dx.op.unary.f32(i32 22, float %2287)  ; Frc(value)
  %2354 = call float @dx.op.unary.f32(i32 22, float %2288)  ; Frc(value)
  br i1 %2351, label %2368, label %2355, !dx.controlflow.hints !71

; <label>:2355                                    ; preds = %2349
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 0
  %2358 = fmul fast float %2353, %2357
  %2359 = fmul fast float %2354, %2357
  %2360 = fptoui float %2358 to i32
  %2361 = fptoui float %2359 to i32
  %2362 = fptoui float %2352 to i32
  %2363 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %2360, i32 %2361, i32 %2362, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2364 = extractvalue %dx.types.ResRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.ResRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.ResRet.f32 %2363, 2
  %2367 = extractvalue %dx.types.ResRet.f32 %2363, 3
  br label %2374

; <label>:2368                                    ; preds = %2349
  %2369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %2353, float %2354, float %2352, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.ResRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.ResRet.f32 %2369, 2
  %2373 = extractvalue %dx.types.ResRet.f32 %2369, 3
  br label %2374

; <label>:2374                                    ; preds = %2368, %2355
  %2375 = phi float [ %2364, %2355 ], [ %2370, %2368 ]
  %2376 = phi float [ %2365, %2355 ], [ %2371, %2368 ]
  %2377 = phi float [ %2366, %2355 ], [ %2372, %2368 ]
  %2378 = phi float [ %2367, %2355 ], [ %2373, %2368 ]
  %2379 = fsub fast float %2375, %2344
  %2380 = fsub fast float %2376, %2345
  %2381 = fsub fast float %2377, %2346
  %2382 = fsub fast float %2378, %2347
  %2383 = fmul fast float %2379, %2317
  %2384 = fmul fast float %2380, %2317
  %2385 = fmul fast float %2381, %2317
  %2386 = fmul fast float %2382, %2317
  %2387 = fadd fast float %2383, %2344
  %2388 = fadd fast float %2384, %2345
  %2389 = fadd fast float %2385, %2346
  %2390 = fadd fast float %2386, %2347
  br label %2419

; <label>:2391                                    ; preds = %2311
  %2392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %2319, float %2320, float %2316, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2393 = extractvalue %dx.types.ResRet.f32 %2392, 0
  %2394 = extractvalue %dx.types.ResRet.f32 %2392, 1
  %2395 = extractvalue %dx.types.ResRet.f32 %2392, 2
  %2396 = extractvalue %dx.types.ResRet.f32 %2392, 3
  %2397 = fcmp fast ogt float %2317, 0.000000e+00
  br i1 %2397, label %2398, label %2419, !dx.controlflow.hints !72

; <label>:2398                                    ; preds = %2391
  %2399 = fadd fast float %2316, 1.000000e+00
  %2400 = call float @dx.op.unary.f32(i32 22, float %2287)  ; Frc(value)
  %2401 = call float @dx.op.unary.f32(i32 22, float %2288)  ; Frc(value)
  %2402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %2400, float %2401, float %2399, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2403 = extractvalue %dx.types.ResRet.f32 %2402, 0
  %2404 = extractvalue %dx.types.ResRet.f32 %2402, 1
  %2405 = extractvalue %dx.types.ResRet.f32 %2402, 2
  %2406 = extractvalue %dx.types.ResRet.f32 %2402, 3
  %2407 = fsub fast float %2403, %2393
  %2408 = fsub fast float %2404, %2394
  %2409 = fsub fast float %2405, %2395
  %2410 = fsub fast float %2406, %2396
  %2411 = fmul fast float %2407, %2317
  %2412 = fmul fast float %2408, %2317
  %2413 = fmul fast float %2409, %2317
  %2414 = fmul fast float %2410, %2317
  %2415 = fadd fast float %2411, %2393
  %2416 = fadd fast float %2412, %2394
  %2417 = fadd fast float %2413, %2395
  %2418 = fadd fast float %2414, %2396
  br label %2419

; <label>:2419                                    ; preds = %2398, %2391, %2374, %2343
  %2420 = phi float [ %2387, %2374 ], [ %2344, %2343 ], [ %2415, %2398 ], [ %2393, %2391 ]
  %2421 = phi float [ %2388, %2374 ], [ %2345, %2343 ], [ %2416, %2398 ], [ %2394, %2391 ]
  %2422 = phi float [ %2389, %2374 ], [ %2346, %2343 ], [ %2417, %2398 ], [ %2395, %2391 ]
  %2423 = phi float [ %2390, %2374 ], [ %2347, %2343 ], [ %2418, %2398 ], [ %2396, %2391 ]
  %2424 = fadd fast float %2420, -5.000000e-01
  %2425 = fadd fast float %2422, -5.000000e-01
  %2426 = fmul fast float %2424, 0xBFD5555560000000
  %2427 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2425, float %2426)  ; FMad(a,b,c)
  %2428 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2421, float 0.000000e+00)  ; FMad(a,b,c)
  %2429 = fadd fast float %2428, %2423
  %2430 = fmul fast float %2424, -7.500000e-01
  %2431 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2425, float %2430)  ; FMad(a,b,c)
  %2432 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2421, float 0.000000e+00)  ; FMad(a,b,c)
  %2433 = fadd fast float %2432, %2423
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.f32 %2436, 0
  %2438 = extractvalue %dx.types.CBufRet.f32 %2436, 1
  %2439 = extractvalue %dx.types.CBufRet.f32 %2436, 2
  %2440 = extractvalue %dx.types.CBufRet.f32 %2436, 3
  %2441 = fsub fast float %2437, %2427
  %2442 = fsub fast float %2438, %2429
  %2443 = fsub fast float %2439, %2431
  %2444 = fsub fast float %2440, %2433
  %2445 = fmul fast float %2441, %2435
  %2446 = fmul fast float %2442, %2435
  %2447 = fmul fast float %2443, %2435
  %2448 = fmul fast float %2444, %2435
  %2449 = fadd fast float %2445, %2427
  %2450 = fadd fast float %2446, %2429
  %2451 = fadd fast float %2447, %2431
  %2452 = fadd fast float %2448, %2433
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 536870911
  %2456 = uitofp i32 %2455 to float
  %2457 = fmul fast float %2456, %2292
  %2458 = fmul fast float %2456, %2293
  %2459 = fptoui float %2457 to i32
  %2460 = fptoui float %2458 to i32
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 31
  %2464 = lshr i32 %2459, %2463
  %2465 = lshr i32 %2460, %2463
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 31
  %2469 = shl i32 1, %2468
  %2470 = call i32 @dx.op.binary.i32(i32 40, i32 %2469, i32 4)  ; UMin(a,b)
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = extractvalue %dx.types.ResRet.i32 %2471, 1
  %2474 = icmp eq i32 %2470, 0
  br i1 %2474, label %2516, label %2475

; <label>:2475                                    ; preds = %2419
  br label %2476

; <label>:2476                                    ; preds = %2504, %2475
  %2477 = phi i32 [ %2507, %2504 ], [ 0, %2475 ]
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = lshr i32 %2479, 16
  %2481 = and i32 %2480, 31
  %2482 = shl i32 %2465, %2481
  %2483 = add i32 %2482, %2464
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %2485, 31
  %2487 = shl i32 %2483, %2486
  %2488 = add i32 %2487, %2477
  %2489 = shl i32 %2488, 2
  %2490 = add i32 %2489, 32
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = icmp slt i32 %2492, 0
  %2494 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %2477
  %2495 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %2477
  %2496 = bitcast float* %2494 to i32*
  %2497 = bitcast float* %2495 to i32*
  br i1 %2493, label %2498, label %2504, !dx.controlflow.hints !73

; <label>:2498                                    ; preds = %2476
  %2499 = and i32 %2492, 1073741823
  %2500 = add nuw nsw i32 %2499, 20
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = extractvalue %dx.types.ResRet.i32 %2501, 1
  br label %2504

; <label>:2504                                    ; preds = %2498, %2476
  %2505 = phi i32 [ %2502, %2498 ], [ %2472, %2476 ]
  %2506 = phi i32 [ %2503, %2498 ], [ %2473, %2476 ]
  store i32 %2505, i32* %2496, align 4
  store i32 %2506, i32* %2497, align 4
  %2507 = add nuw i32 %2477, 1
  %2508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.i32 %2508, 2
  %2510 = icmp eq i32 %2509, 0
  %2511 = icmp ugt i32 %2492, -1073741825
  %2512 = and i1 %2511, %2510
  %2513 = icmp ult i32 %2507, %2470
  %2514 = and i1 %2512, %2513
  br i1 %2514, label %2476, label %2515, !dx.controlflow.hints !74

; <label>:2515                                    ; preds = %2504
  br label %2516

; <label>:2516                                    ; preds = %2515, %2419
  %2517 = phi i32 [ 0, %2419 ], [ %2507, %2515 ]
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 2
  %2520 = fptoui float %2519 to i32
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2573, label %2522

; <label>:2522                                    ; preds = %2516
  br label %2523

; <label>:2523                                    ; preds = %2568, %2522
  %2524 = phi i32 [ %2569, %2568 ], [ %2517, %2522 ]
  %2525 = phi i32 [ %2570, %2568 ], [ 0, %2522 ]
  %2526 = lshr i32 %2525, 2
  %2527 = and i32 %2525, 3
  %2528 = add nuw nsw i32 %2526, 83
  %2529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 %2528)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.i32 %2529, 0
  %2531 = extractvalue %dx.types.CBufRet.i32 %2529, 1
  %2532 = extractvalue %dx.types.CBufRet.i32 %2529, 2
  %2533 = extractvalue %dx.types.CBufRet.i32 %2529, 3
  %2534 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %2530, i32* %2534, align 4
  %2535 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %2531, i32* %2535, align 4
  %2536 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %2532, i32* %2536, align 4
  %2537 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %2533, i32* %2537, align 4
  %2538 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 %2527
  %2539 = load i32, i32* %2538, align 4, !tbaa !51
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = lshr i32 %2541, 16
  %2543 = and i32 %2542, 31
  %2544 = shl i32 %2465, %2543
  %2545 = add i32 %2544, %2464
  %2546 = shl i32 %2545, 2
  %2547 = add i32 %2546, %2539
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = icmp eq i32 %2549, 0
  br i1 %2550, label %2568, label %2551, !dx.controlflow.hints !75

; <label>:2551                                    ; preds = %2523
  %2552 = icmp slt i32 %2549, 0
  %2553 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %2524
  %2554 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %2524
  %2555 = bitcast float* %2553 to i32*
  %2556 = bitcast float* %2554 to i32*
  br i1 %2552, label %2557, label %2564, !dx.controlflow.hints !76

; <label>:2557                                    ; preds = %2551
  %2558 = and i32 %2549, 1073741823
  %2559 = add i32 %2539, 20
  %2560 = add i32 %2559, %2558
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = extractvalue %dx.types.ResRet.i32 %2561, 1
  br label %2564

; <label>:2564                                    ; preds = %2557, %2551
  %2565 = phi i32 [ %2562, %2557 ], [ %2472, %2551 ]
  %2566 = phi i32 [ %2563, %2557 ], [ %2473, %2551 ]
  store i32 %2565, i32* %2555, align 4
  store i32 %2566, i32* %2556, align 4
  %2567 = add i32 %2524, 1
  br label %2568

; <label>:2568                                    ; preds = %2564, %2523
  %2569 = phi i32 [ %2524, %2523 ], [ %2567, %2564 ]
  %2570 = add nuw i32 %2525, 1
  %2571 = icmp eq i32 %2570, %2520
  br i1 %2571, label %2572, label %2523

; <label>:2572                                    ; preds = %2568
  br label %2573

; <label>:2573                                    ; preds = %2572, %2516
  %2574 = phi i32 [ %2517, %2516 ], [ %2569, %2572 ]
  %2575 = icmp eq i32 %2574, 1
  %2576 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 0
  %2577 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 0
  br i1 %2575, label %2578, label %2581, !dx.controlflow.hints !77

; <label>:2578                                    ; preds = %2573
  %2579 = load float, float* %2576, align 4
  %2580 = load float, float* %2577, align 4
  br label %2608

; <label>:2581                                    ; preds = %2573
  %2582 = load float, float* %2576, align 4
  %2583 = load float, float* %2577, align 4
  %2584 = fdiv fast float 1.000000e+00, %2583
  %2585 = fsub fast float %2582, %2584
  %2586 = icmp ugt i32 %2574, 1
  br i1 %2586, label %2587, label %2603

; <label>:2587                                    ; preds = %2581
  br label %2588

; <label>:2588                                    ; preds = %2588, %2587
  %2589 = phi float [ %2598, %2588 ], [ %2585, %2587 ]
  %2590 = phi float [ %2599, %2588 ], [ %2582, %2587 ]
  %2591 = phi i32 [ %2600, %2588 ], [ 1, %2587 ]
  %2592 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %2591
  %2593 = load float, float* %2592, align 4
  %2594 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %2591
  %2595 = load float, float* %2594, align 4
  %2596 = fdiv fast float 1.000000e+00, %2595
  %2597 = fsub fast float %2593, %2596
  %2598 = call float @dx.op.binary.f32(i32 36, float %2589, float %2597)  ; FMin(a,b)
  %2599 = call float @dx.op.binary.f32(i32 35, float %2590, float %2593)  ; FMax(a,b)
  %2600 = add nuw i32 %2591, 1
  %2601 = icmp eq i32 %2600, %2574
  br i1 %2601, label %2602, label %2588

; <label>:2602                                    ; preds = %2588
  br label %2603

; <label>:2603                                    ; preds = %2602, %2581
  %2604 = phi float [ %2585, %2581 ], [ %2598, %2602 ]
  %2605 = phi float [ %2582, %2581 ], [ %2599, %2602 ]
  %2606 = fsub fast float %2605, %2604
  %2607 = fdiv fast float 1.000000e+00, %2606
  br label %2608

; <label>:2608                                    ; preds = %2603, %2578
  %2609 = phi float [ %2579, %2578 ], [ %2605, %2603 ]
  %2610 = phi float [ %2580, %2578 ], [ %2607, %2603 ]
  %2611 = fadd fast float %2039, %2609
  %2612 = fmul fast float %2611, %2610
  %2613 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2614 = fmul fast float %2613, 2.000000e+00
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2449, %2449
  %2617 = fsub fast float %2450, %2616
  %2618 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2617)  ; FMax(a,b)
  %2619 = fdiv fast float 1.000000e+00, %2618
  %2620 = fmul fast float %2450, %2449
  %2621 = fsub fast float %2451, %2620
  %2622 = fsub fast float %2615, %2449
  %2623 = fmul fast float %2615, %2615
  %2624 = fsub fast float %2623, %2450
  %2625 = fmul fast float %2619, %2621
  %2626 = fmul fast float %2625, %2622
  %2627 = fsub fast float %2624, %2626
  %2628 = fmul fast float %2450, %2450
  %2629 = fsub fast float %2452, %2628
  %2630 = fmul fast float %2621, %2621
  %2631 = fmul fast float %2630, %2619
  %2632 = fsub fast float %2629, %2631
  %2633 = fdiv fast float %2627, %2632
  %2634 = fmul fast float %2633, %2621
  %2635 = fsub fast float %2622, %2634
  %2636 = fmul fast float %2635, %2619
  %2637 = fmul fast float %2636, %2449
  %2638 = fsub fast float 1.000000e+00, %2637
  %2639 = fmul fast float %2633, %2450
  %2640 = fsub fast float %2638, %2639
  %2641 = fmul fast float %2636, %2636
  %2642 = fmul fast float %2633, 4.000000e+00
  %2643 = fmul fast float %2642, %2640
  %2644 = fsub fast float %2641, %2643
  %2645 = call float @dx.op.unary.f32(i32 24, float %2644)  ; Sqrt(value)
  %2646 = fcmp fast oge float %2636, 0.000000e+00
  %2647 = fsub fast float -0.000000e+00, %2645
  %2648 = select i1 %2646, float %2647, float %2645
  %2649 = fsub fast float %2648, %2636
  %2650 = fdiv fast float %2649, %2633
  %2651 = fdiv fast float %2640, %2649
  %2652 = fmul fast float %2650, 5.000000e-01
  %2653 = fmul fast float %2651, 2.000000e+00
  %2654 = select i1 %2646, float %2652, float %2653
  %2655 = select i1 %2646, float %2653, float %2652
  %2656 = call float @dx.op.binary.f32(i32 35, float %2654, float %2655)  ; FMax(a,b)
  %2657 = call float @dx.op.binary.f32(i32 36, float %2654, float %2655)  ; FMin(a,b)
  %2658 = fcmp fast ogt float %2615, %2656
  %2659 = fsub fast float %2615, %2657
  %2660 = fsub fast float %2615, %2656
  %2661 = fsub fast float %2656, %2657
  %2662 = select i1 %2658, float %2660, float %2661
  %2663 = fmul float %2659, %2662
  %2664 = select i1 %2658, float %2657, float %2615
  %2665 = fcmp fast ogt float %2615, %2657
  %2666 = fmul fast float %2664, %2656
  %2667 = fadd fast float %2664, %2656
  %2668 = fmul fast float %2667, %2449
  %2669 = fadd fast float %2666, %2450
  %2670 = fsub fast float %2669, %2668
  %2671 = fdiv fast float %2670, %2663
  %2672 = select i1 %2665, float %2671, float 0.000000e+00
  %2673 = fsub fast float 1.000000e+00, %2672
  %2674 = select i1 %2658, float %2673, float %2672
  %2675 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2434, 3
  %2677 = fmul fast float %2676, %2675
  %2678 = fsub fast float 1.000000e+00, %2677
  br label %2679

; <label>:2679                                    ; preds = %2608, %2286, %2012, %1970
  %2680 = phi float [ 1.000000e+00, %1970 ], [ %2678, %2608 ], [ 1.000000e+00, %2012 ], [ 1.000000e+00, %2286 ]
  %2681 = fcmp fast ogt float %2005, 0.000000e+00
  br i1 %2681, label %2682, label %2694, !dx.controlflow.hints !83

; <label>:2682                                    ; preds = %2679
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 2
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 2
  %2687 = fmul fast float %2684, %223
  %2688 = fadd fast float %2686, %250
  %2689 = fadd fast float %2688, %2687
  %2690 = call float @dx.op.binary.f32(i32 35, float %2689, float 0.000000e+00)  ; FMax(a,b)
  %2691 = fadd fast float %2690, 0x3F10000000000000
  %2692 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %1901, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float %2691)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2693 = extractvalue %dx.types.ResRet.f32 %2692, 0
  br label %2694

; <label>:2694                                    ; preds = %2682, %2679
  %2695 = phi float [ %2693, %2682 ], [ 1.000000e+00, %2679 ]
  %2696 = fcmp fast ogt float %2003, 0.000000e+00
  br i1 %2696, label %2697, label %2709, !dx.controlflow.hints !84

; <label>:2697                                    ; preds = %2694
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 2
  %2700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2701 = extractvalue %dx.types.CBufRet.f32 %2700, 1
  %2702 = fmul fast float %2699, %223
  %2703 = fadd fast float %2701, %250
  %2704 = fadd fast float %2703, %2702
  %2705 = call float @dx.op.binary.f32(i32 35, float %2704, float 0.000000e+00)  ; FMax(a,b)
  %2706 = fadd fast float %2705, 0x3F10000000000000
  %2707 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %1893, float %1894, float undef, float undef, i32 0, i32 0, i32 undef, float %2706)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2708 = extractvalue %dx.types.ResRet.f32 %2707, 0
  br label %2709

; <label>:2709                                    ; preds = %2697, %2694
  %2710 = phi float [ %2708, %2697 ], [ 1.000000e+00, %2694 ]
  %2711 = fcmp fast ogt float %2002, 0.000000e+00
  br i1 %2711, label %2712, label %2728, !dx.controlflow.hints !85

; <label>:2712                                    ; preds = %2709
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 2
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = fmul fast float %2714, %223
  %2718 = fadd fast float %2716, %250
  %2719 = fadd fast float %2718, %2717
  %2720 = call float @dx.op.binary.f32(i32 35, float %2719, float 0.000000e+00)  ; FMax(a,b)
  %2721 = fadd fast float %2720, 0x3F10000000000000
  br i1 %99, label %2722, label %2725, !dx.controlflow.hints !86

; <label>:2722                                    ; preds = %2712
  %2723 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %242, float %246, float undef, float undef, i32 0, i32 0, i32 undef, float %2721)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2724 = extractvalue %dx.types.ResRet.f32 %2723, 0
  br label %2728

; <label>:2725                                    ; preds = %2712
  %2726 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %242, float %246, float undef, float undef, i32 0, i32 0, i32 undef, float %2721)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  br label %2728

; <label>:2728                                    ; preds = %2725, %2722, %2709
  %2729 = phi float [ %2724, %2722 ], [ %2727, %2725 ], [ 1.000000e+00, %2709 ]
  %2730 = fsub fast float %2695, %2680
  %2731 = fmul fast float %2730, %1972
  %2732 = fadd fast float %2731, %2680
  %2733 = fsub fast float %2710, %2732
  %2734 = fmul fast float %2733, %1971
  %2735 = fadd fast float %2734, %2732
  %2736 = fsub fast float %2729, %2735
  %2737 = fmul fast float %2736, %2002
  %2738 = fadd fast float %2737, %2735
  br label %2739

; <label>:2739                                    ; preds = %2728, %1875, %1031, %960, %638, %364, %361, %340, %319, %298, %277
  %2740 = phi float [ %2738, %2728 ], [ %295, %277 ], [ %316, %298 ], [ %337, %319 ], [ %358, %340 ], [ %1885, %1875 ], [ %1030, %960 ], [ 1.000000e+00, %364 ], [ 1.000000e+00, %638 ], [ 1.000000e+00, %361 ], [ 0.000000e+00, %1031 ]
  %2741 = fcmp fast une float %2740, 0.000000e+00
  br i1 %2741, label %2742, label %2847, !dx.controlflow.hints !87

; <label>:2742                                    ; preds = %2739
  %2743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2744 = extractvalue %dx.types.CBufRet.f32 %2743, 2
  %2745 = fcmp fast ugt float %2744, 0.000000e+00
  br i1 %2745, label %2746, label %2781, !dx.controlflow.hints !88

; <label>:2746                                    ; preds = %2742
  %2747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2748 = extractvalue %dx.types.CBufRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.CBufRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.CBufRet.f32 %2747, 2
  %2751 = extractvalue %dx.types.CBufRet.f32 %2747, 3
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.CBufRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.CBufRet.f32 %2752, 2
  %2756 = extractvalue %dx.types.CBufRet.f32 %2752, 3
  %2757 = extractvalue %dx.types.CBufRet.f32 %2743, 0
  %2758 = extractvalue %dx.types.CBufRet.f32 %2743, 1
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.CBufRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.CBufRet.f32 %2759, 2
  %2763 = fadd fast float %2760, %162
  %2764 = fadd fast float %2761, %163
  %2765 = fadd fast float %2762, %164
  %2766 = fmul fast float %2763, %2748
  %2767 = call float @dx.op.tertiary.f32(i32 46, float %2749, float %2764, float %2766)  ; FMad(a,b,c)
  %2768 = call float @dx.op.tertiary.f32(i32 46, float %2750, float %2765, float %2767)  ; FMad(a,b,c)
  %2769 = fadd fast float %2768, %2751
  %2770 = fmul fast float %2763, %2753
  %2771 = call float @dx.op.tertiary.f32(i32 46, float %2754, float %2764, float %2770)  ; FMad(a,b,c)
  %2772 = call float @dx.op.tertiary.f32(i32 46, float %2755, float %2765, float %2771)  ; FMad(a,b,c)
  %2773 = fadd fast float %2772, %2756
  %2774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %25, float %2769, float %2773, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2775 = extractvalue %dx.types.ResRet.f32 %2774, 0
  %2776 = fmul fast float %2775, %2758
  %2777 = fadd fast float %2776, %2757
  %2778 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2779 = fmul fast float %2778, %2744
  %2780 = fsub fast float 1.000000e+00, %2779
  br label %2781

; <label>:2781                                    ; preds = %2746, %2742
  %2782 = phi float [ %2780, %2746 ], [ 1.000000e+00, %2742 ]
  %2783 = fmul fast float %2782, %2740
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.CBufRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.CBufRet.f32 %2784, 2
  %2788 = fadd fast float %2785, %162
  %2789 = fadd fast float %2786, %163
  %2790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.f32 %2790, 1
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2796 = fsub fast float -0.000000e+00, %2788
  %2797 = fsub fast float -0.000000e+00, %2789
  %2798 = fsub fast float -0.000000e+00, %164
  %2799 = fsub fast float %2798, %2787
  %2800 = fadd fast float %2799, %2791
  %2801 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2796, float %2797, float %2800)  ; Dot3(ax,ay,az,bx,by,bz)
  %2802 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2793, float %2794, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2803 = fdiv fast float 1.000000e+00, %2802
  %2804 = fmul fast float %2803, %2801
  %2805 = fmul fast float %2793, %2804
  %2806 = fmul fast float %2794, %2804
  %2807 = fadd fast float %2805, %2788
  %2808 = fadd fast float %2806, %2789
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2812 = fsub fast float %2807, %2810
  %2813 = fsub fast float %2808, %2811
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 2
  %2816 = extractvalue %dx.types.CBufRet.f32 %2814, 3
  %2817 = fmul fast float %2812, %2815
  %2818 = fmul fast float %2813, %2816
  %2819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.i32 %2819, 3
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %2827, label %2822, !dx.controlflow.hints !89

; <label>:2822                                    ; preds = %2781
  %2823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %27, float %2817, float %2818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2824 = extractvalue %dx.types.ResRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.ResRet.f32 %2823, 1
  %2826 = extractvalue %dx.types.ResRet.f32 %2823, 2
  br label %2832

; <label>:2827                                    ; preds = %2781
  %2828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %2817, float %2818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2829 = extractvalue %dx.types.ResRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.ResRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.ResRet.f32 %2828, 2
  br label %2832

; <label>:2832                                    ; preds = %2827, %2822
  %2833 = phi float [ %2824, %2822 ], [ %2829, %2827 ]
  %2834 = phi float [ %2825, %2822 ], [ %2830, %2827 ]
  %2835 = phi float [ %2826, %2822 ], [ %2831, %2827 ]
  %2836 = extractvalue %dx.types.CBufRet.f32 %2790, 2
  %2837 = fmul fast float %2836, %2833
  %2838 = extractvalue %dx.types.CBufRet.f32 %2790, 0
  %2839 = fsub fast float %2804, %2838
  %2840 = fsub fast float %2839, %2837
  %2841 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2840)  ; FMax(a,b)
  %2842 = fmul fast float %2841, %2834
  %2843 = call float @dx.op.binary.f32(i32 36, float %2835, float %2842)  ; FMin(a,b)
  %2844 = fmul fast float %2843, 0xBFF7154760000000
  %2845 = call float @dx.op.unary.f32(i32 21, float %2844)  ; Exp(value)
  %2846 = fmul fast float %2783, %2845
  br label %2847

; <label>:2847                                    ; preds = %2832, %2739
  %2848 = phi float [ %2846, %2832 ], [ %2740, %2739 ]
  %2849 = fcmp fast ogt float %2848, 0.000000e+00
  %2850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2850, 1
  %2852 = fcmp fast ogt float %213, %2851
  %2853 = and i1 %2849, %2852
  br i1 %2853, label %2854, label %3123, !dx.controlflow.hints !90

; <label>:2854                                    ; preds = %2847
  %2855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.i32 %2855, 0
  %2857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.i32 %2857, 0
  %2859 = select i1 %99, i32 %2856, i32 %2858
  %2860 = icmp sgt i32 %2859, 0
  br i1 %2860, label %2861, label %3123, !dx.controlflow.hints !91

; <label>:2861                                    ; preds = %2854
  %2862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %2863 = extractvalue %dx.types.CBufRet.f32 %2862, 1
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 1
  %2866 = select i1 %99, float %2863, float %2865
  %2867 = extractvalue %dx.types.CBufRet.f32 %2862, 2
  %2868 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %2869 = select i1 %99, float %2867, float %2868
  %2870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %2871 = extractvalue %dx.types.CBufRet.i32 %2870, 0
  %2872 = uitofp i32 %2871 to float
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 2
  %2875 = extractvalue %dx.types.CBufRet.f32 %2873, 3
  %2876 = fmul fast float %2874, 5.000000e-01
  %2877 = fmul fast float %2875, 5.000000e-01
  %2878 = fsub fast float %95, %2876
  %2879 = fsub fast float %96, %2877
  %2880 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %23, %dx.types.Handle %29, float %2878, float %2879, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.ResRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.ResRet.f32 %2880, 2
  %2884 = fcmp fast ogt float %2881, -1.000000e+00
  %2885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2886 = extractvalue %dx.types.CBufRet.f32 %2885, 1
  %2887 = select i1 %2884, float %2886, float 1.000000e+00
  %2888 = fadd fast float %2881, 1.000000e+00
  %2889 = fmul fast float %2887, %2888
  %2890 = call float @dx.op.unary.f32(i32 6, float %2889)  ; FAbs(value)
  %2891 = fcmp fast ogt float %2882, -1.000000e+00
  %2892 = select i1 %2891, float %2886, float 1.000000e+00
  %2893 = fadd fast float %2882, 1.000000e+00
  %2894 = fmul fast float %2892, %2893
  %2895 = call float @dx.op.unary.f32(i32 6, float %2894)  ; FAbs(value)
  %2896 = fcmp fast ogt float %2883, -1.000000e+00
  %2897 = select i1 %2896, float %2886, float 1.000000e+00
  %2898 = fadd fast float %2883, 1.000000e+00
  %2899 = fmul fast float %2897, %2898
  %2900 = call float @dx.op.unary.f32(i32 6, float %2899)  ; FAbs(value)
  %2901 = fadd fast float %2876, %95
  %2902 = fadd fast float %2877, %96
  %2903 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %23, %dx.types.Handle %29, float %2901, float %2902, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2904 = extractvalue %dx.types.ResRet.f32 %2903, 0
  %2905 = extractvalue %dx.types.ResRet.f32 %2903, 2
  %2906 = fcmp fast ogt float %2904, -1.000000e+00
  %2907 = select i1 %2906, float %2886, float 1.000000e+00
  %2908 = fadd fast float %2904, 1.000000e+00
  %2909 = fmul fast float %2907, %2908
  %2910 = call float @dx.op.unary.f32(i32 6, float %2909)  ; FAbs(value)
  %2911 = fcmp fast ogt float %2905, -1.000000e+00
  %2912 = select i1 %2911, float %2886, float 1.000000e+00
  %2913 = fadd fast float %2905, 1.000000e+00
  %2914 = fmul fast float %2912, %2913
  %2915 = call float @dx.op.unary.f32(i32 6, float %2914)  ; FAbs(value)
  %2916 = fsub fast float %2900, %2895
  %2917 = fsub fast float %2910, %2895
  %2918 = fsub fast float %2890, %2895
  %2919 = fsub fast float %2915, %2895
  %2920 = call float @dx.op.unary.f32(i32 6, float %2917)  ; FAbs(value)
  %2921 = call float @dx.op.unary.f32(i32 6, float %2916)  ; FAbs(value)
  %2922 = call float @dx.op.binary.f32(i32 35, float %2921, float %2920)  ; FMax(a,b)
  %2923 = call float @dx.op.unary.f32(i32 6, float %2919)  ; FAbs(value)
  %2924 = call float @dx.op.unary.f32(i32 6, float %2918)  ; FAbs(value)
  %2925 = call float @dx.op.binary.f32(i32 35, float %2924, float %2923)  ; FMax(a,b)
  %2926 = fadd fast float %2917, %2916
  %2927 = call float @dx.op.unary.f32(i32 6, float %2926)  ; FAbs(value)
  %2928 = fadd fast float %2919, %2918
  %2929 = call float @dx.op.unary.f32(i32 6, float %2928)  ; FAbs(value)
  %2930 = fsub fast float %2925, %2929
  %2931 = call float @dx.op.unary.f32(i32 6, float %2930)  ; FAbs(value)
  %2932 = fsub fast float %2922, %2927
  %2933 = call float @dx.op.unary.f32(i32 6, float %2932)  ; FAbs(value)
  %2934 = call float @dx.op.binary.f32(i32 35, float %2933, float %2931)  ; FMax(a,b)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2873, 0
  %2936 = extractvalue %dx.types.CBufRet.f32 %2873, 1
  %2937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.CBufRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.CBufRet.f32 %2937, 2
  %2941 = extractvalue %dx.types.CBufRet.f32 %2937, 3
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.CBufRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.CBufRet.f32 %2942, 2
  %2946 = extractvalue %dx.types.CBufRet.f32 %2942, 3
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.CBufRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.CBufRet.f32 %2947, 2
  %2951 = extractvalue %dx.types.CBufRet.f32 %2947, 3
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.CBufRet.f32 %2952, 1
  %2955 = extractvalue %dx.types.CBufRet.f32 %2952, 2
  %2956 = extractvalue %dx.types.CBufRet.f32 %2952, 3
  %2957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.f32 %2957, 0
  %2959 = extractvalue %dx.types.CBufRet.f32 %2957, 1
  %2960 = extractvalue %dx.types.CBufRet.f32 %2957, 2
  %2961 = extractvalue %dx.types.CBufRet.f32 %2957, 3
  %2962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.CBufRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.CBufRet.f32 %2962, 2
  %2966 = extractvalue %dx.types.CBufRet.f32 %2962, 3
  %2967 = select i1 %99, float %2938, float %2953
  %2968 = select i1 %99, float %2943, float %2958
  %2969 = select i1 %99, float %2948, float %2963
  %2970 = select i1 %99, float %2939, float %2954
  %2971 = select i1 %99, float %2944, float %2959
  %2972 = select i1 %99, float %2949, float %2964
  %2973 = select i1 %99, float %2940, float %2955
  %2974 = select i1 %99, float %2945, float %2960
  %2975 = select i1 %99, float %2950, float %2965
  %2976 = select i1 %99, float %2941, float %2956
  %2977 = select i1 %99, float %2946, float %2961
  %2978 = select i1 %99, float %2951, float %2966
  %2979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2980 = extractvalue %dx.types.CBufRet.f32 %2979, 0
  %2981 = extractvalue %dx.types.CBufRet.f32 %2979, 1
  %2982 = extractvalue %dx.types.CBufRet.f32 %2979, 2
  %2983 = fdiv fast float 1.000000e+00, %106
  %2984 = fmul fast float %2874, %90
  %2985 = fmul fast float %2875, %91
  %2986 = fmul fast float %2980, %2866
  %2987 = fmul fast float %2981, %2866
  %2988 = fmul fast float %2982, %2866
  %2989 = fadd fast float %2986, %162
  %2990 = fadd fast float %2987, %163
  %2991 = fadd fast float %2988, %164
  %2992 = fmul fast float %2989, %2967
  %2993 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %2970, float %2992)  ; FMad(a,b,c)
  %2994 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %2973, float %2993)  ; FMad(a,b,c)
  %2995 = fadd fast float %2994, %2976
  %2996 = fmul fast float %2989, %2968
  %2997 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %2971, float %2996)  ; FMad(a,b,c)
  %2998 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %2974, float %2997)  ; FMad(a,b,c)
  %2999 = fadd fast float %2998, %2977
  %3000 = fmul fast float %2989, %2969
  %3001 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %2972, float %3000)  ; FMad(a,b,c)
  %3002 = call float @dx.op.tertiary.f32(i32 46, float %2991, float %2975, float %3001)  ; FMad(a,b,c)
  %3003 = fadd fast float %3002, %2978
  %3004 = fdiv fast float 1.000000e+00, %3003
  %3005 = fmul fast float %2995, 5.000000e-01
  %3006 = fmul fast float %2999, -5.000000e-01
  %3007 = fmul fast float %3005, %3004
  %3008 = fmul fast float %3006, %3004
  %3009 = fsub fast float 5.000000e-01, %2984
  %3010 = fadd fast float %3009, %3007
  %3011 = fsub fast float 5.000000e-01, %2985
  %3012 = fadd fast float %3011, %3008
  %3013 = fsub fast float %3004, %2983
  %3014 = call float @dx.op.dot2.f32(i32 54, float %3010, float %3012, float %3010, float %3012)  ; Dot2(ax,ay,bx,by)
  %3015 = call float @dx.op.binary.f32(i32 35, float %3014, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %3016 = call float @dx.op.dot2.f32(i32 54, float %2935, float %2936, float %2935, float %2936)  ; Dot2(ax,ay,bx,by)
  %3017 = fmul fast float %3016, %3015
  %3018 = call float @dx.op.unary.f32(i32 25, float %3017)  ; Rsqrt(value)
  %3019 = fmul fast float %3018, %3010
  %3020 = fmul fast float %3018, %3012
  %3021 = fadd fast float %3019, %2984
  %3022 = fadd fast float %3020, %2985
  %3023 = fmul fast float %3010, %2935
  %3024 = fmul fast float %3012, %2936
  %3025 = fmul fast float %3023, %3023
  %3026 = fmul fast float %3024, %3024
  %3027 = fadd fast float %3025, %3026
  %3028 = call float @dx.op.unary.f32(i32 24, float %3027)  ; Sqrt(value)
  %3029 = fdiv fast float 1.000000e+00, %3028
  %3030 = fmul fast float %3028, 3.906250e-03
  %3031 = fmul fast float %2934, 0x3F70624DE0000000
  %3032 = fadd fast float %3031, 0x3F70624DE0000000
  br label %3033

; <label>:3033                                    ; preds = %3089, %2861
  %3034 = phi float [ %3065, %3089 ], [ %106, %2861 ]
  %3035 = phi float [ %3052, %3089 ], [ %106, %2861 ]
  %3036 = phi float [ %3035, %3089 ], [ %106, %2861 ]
  %3037 = phi i32 [ %3090, %3089 ], [ 0, %2861 ]
  %3038 = sitofp i32 %3037 to float
  %3039 = fadd fast float %261, 5.000000e-01
  %3040 = call float @dx.op.unary.f32(i32 22, float %3039)  ; Frc(value)
  %3041 = fadd fast float %3038, %3040
  %3042 = sitofp i32 %2859 to float
  %3043 = fdiv fast float %3041, %3042
  %3044 = fmul fast float %3043, %3043
  %3045 = call float @dx.op.binary.f32(i32 36, float %3044, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %3046 = fmul fast float %3045, %3010
  %3047 = fmul fast float %3045, %3012
  %3048 = fmul fast float %3045, %3013
  %3049 = fadd fast float %3046, %3021
  %3050 = fadd fast float %3047, %3022
  %3051 = fadd fast float %3048, %2983
  %3052 = fdiv fast float 1.000000e+00, %3051
  %3053 = icmp ne i32 %2871, 0
  %3054 = fmul fast float %3030, %3045
  %3055 = call float @dx.op.binary.f32(i32 36, float %3054, float %2872)  ; FMin(a,b)
  %3056 = select i1 %3053, float %3055, float 0.000000e+00
  %3057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %29, float %3049, float %3050, float undef, float undef, i32 0, i32 0, i32 undef, float %3056)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  %3059 = fcmp fast ogt float %3058, -1.000000e+00
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 1
  %3062 = select i1 %3059, float %3061, float 1.000000e+00
  %3063 = fadd fast float %3058, 1.000000e+00
  %3064 = fmul fast float %3062, %3063
  %3065 = call float @dx.op.unary.f32(i32 6, float %3064)  ; FAbs(value)
  %3066 = fmul fast float %3065, %3032
  %3067 = fsub fast float %3052, %3065
  %3068 = fsub fast float %3067, %3066
  %3069 = fcmp fast ogt float %3068, 0.000000e+00
  %3070 = fcmp fast ogt float %2869, 0.000000e+00
  br i1 %3070, label %3071, label %3074, !dx.controlflow.hints !92

; <label>:3071                                    ; preds = %3033
  %3072 = fsub fast float %3052, %3036
  %3073 = call float @dx.op.binary.f32(i32 35, float %3072, float %2869)  ; FMax(a,b)
  br label %3074

; <label>:3074                                    ; preds = %3071, %3033
  %3075 = phi float [ %3073, %3071 ], [ %2866, %3033 ]
  %3076 = fcmp fast olt float %3068, %3075
  %3077 = fcmp uge float %3058, -1.000000e+00
  %3078 = xor i1 %99, %3077
  %3079 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3080 = call float @dx.op.unary.f32(i32 7, float %3050)  ; Saturate(value)
  %3081 = fcmp fast oeq float %3049, %3079
  %3082 = fcmp fast oeq float %3050, %3080
  %3083 = and i1 %3081, %3082
  %3084 = and i1 %3078, %3083
  %3085 = and i1 %3069, %3076
  %3086 = and i1 %3085, %3084
  %3087 = fcmp fast ogt float %3045, %3029
  %3088 = and i1 %3087, %3086
  br i1 %3088, label %3092, label %3089, !dx.controlflow.hints !93

; <label>:3089                                    ; preds = %3074
  %3090 = add nuw nsw i32 %3037, 1
  %3091 = icmp slt i32 %3037, %2859
  br i1 %3091, label %3033, label %3092

; <label>:3092                                    ; preds = %3089, %3074
  %3093 = phi i1 [ false, %3089 ], [ true, %3074 ]
  %3094 = fsub fast float %3035, %3034
  %3095 = fsub fast float %3094, %3067
  %3096 = fcmp fast une float %3095, 0.000000e+00
  %3097 = fmul fast float %3052, %3094
  %3098 = fmul fast float %3067, %3035
  %3099 = fsub fast float %3097, %3098
  %3100 = fdiv fast float 1.000000e+00, %3095
  %3101 = fmul fast float %3100, %3099
  %3102 = select i1 %3096, float %3101, float %3052
  %3103 = fdiv fast float 1.000000e+00, %3102
  %3104 = fsub fast float %3103, %2983
  %3105 = fdiv fast float %3104, %3013
  %3106 = call float @dx.op.unary.f32(i32 7, float %3105)  ; Saturate(value)
  %3107 = fmul fast float %3106, %3010
  %3108 = fmul fast float %3106, %3012
  %3109 = fadd fast float %3021, -5.000000e-01
  %3110 = fadd fast float %3109, %3107
  %3111 = fadd fast float %3022, -5.000000e-01
  %3112 = fadd fast float %3111, %3108
  %3113 = call float @dx.op.unary.f32(i32 6, float %3110)  ; FAbs(value)
  %3114 = call float @dx.op.unary.f32(i32 6, float %3112)  ; FAbs(value)
  %3115 = fadd fast float %3113, -5.000000e-01
  %3116 = fadd fast float %3114, -5.000000e-01
  %3117 = call float @dx.op.binary.f32(i32 35, float %3115, float %3116)  ; FMax(a,b)
  %3118 = fcmp fast olt float %3117, 0.000000e+00
  %3119 = or i1 %99, %3118
  %3120 = and i1 %3093, %3119
  %3121 = select i1 %3120, float 0.000000e+00, float 1.000000e+00
  %3122 = call float @dx.op.binary.f32(i32 36, float %2848, float %3121)  ; FMin(a,b)
  br label %3123

; <label>:3123                                    ; preds = %3092, %2854, %2847
  %3124 = phi float [ %3122, %3092 ], [ %2848, %2854 ], [ %2848, %2847 ]
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 114688
  %3128 = icmp ne i32 %3127, 0
  %3129 = fcmp fast ogt float %3124, 0.000000e+00
  %3130 = and i1 %3129, %3128
  br i1 %3130, label %3131, label %3563, !dx.controlflow.hints !94

; <label>:3131                                    ; preds = %3123
  %3132 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %88, i32 %89, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3133 = extractvalue %dx.types.ResRet.f32 %3132, 0
  %3134 = fmul fast float %3133, 2.550000e+02
  %3135 = fptoui float %3134 to i32
  %3136 = icmp eq i32 %3135, 0
  br i1 %3136, label %3476, label %3137, !dx.controlflow.hints !95

; <label>:3137                                    ; preds = %3131
  %3138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3139 = extractvalue %dx.types.CBufRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.CBufRet.f32 %3138, 1
  %3141 = extractvalue %dx.types.CBufRet.f32 %3138, 2
  %3142 = fadd fast float %3139, %162
  %3143 = fadd fast float %3140, %163
  %3144 = fadd fast float %3141, %164
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 0
  %3147 = extractvalue %dx.types.CBufRet.f32 %3145, 1
  %3148 = fsub fast float %3142, %3146
  %3149 = fsub fast float %3143, %3147
  %3150 = fmul fast float %3148, %3148
  %3151 = fmul fast float %3149, %3149
  %3152 = fadd fast float %3150, %3151
  %3153 = call float @dx.op.unary.f32(i32 24, float %3152)  ; Sqrt(value)
  %3154 = extractvalue %dx.types.CBufRet.f32 %3145, 2
  %3155 = fcmp fast olt float %3153, %3154
  br i1 %3155, label %3156, label %3221, !dx.controlflow.hints !96

; <label>:3156                                    ; preds = %3137
  %3157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.f32 %3157, 0
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 0
  %3161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.f32 %3161, 0
  %3163 = extractvalue %dx.types.CBufRet.f32 %3157, 1
  %3164 = extractvalue %dx.types.CBufRet.f32 %3159, 1
  %3165 = extractvalue %dx.types.CBufRet.f32 %3161, 1
  %3166 = extractvalue %dx.types.CBufRet.f32 %3157, 3
  %3167 = extractvalue %dx.types.CBufRet.f32 %3159, 3
  %3168 = extractvalue %dx.types.CBufRet.f32 %3161, 3
  %3169 = fadd fast float %3166, %3142
  %3170 = fadd fast float %3167, %3143
  %3171 = fadd fast float %3168, %3144
  %3172 = fmul fast float %3169, %3158
  %3173 = call float @dx.op.tertiary.f32(i32 46, float %3170, float %3160, float %3172)  ; FMad(a,b,c)
  %3174 = call float @dx.op.tertiary.f32(i32 46, float %3171, float %3162, float %3173)  ; FMad(a,b,c)
  %3175 = fmul fast float %3169, %3163
  %3176 = call float @dx.op.tertiary.f32(i32 46, float %3170, float %3164, float %3175)  ; FMad(a,b,c)
  %3177 = call float @dx.op.tertiary.f32(i32 46, float %3171, float %3165, float %3176)  ; FMad(a,b,c)
  %3178 = fsub fast float %3174, %3166
  %3179 = fsub fast float %3177, %3167
  %3180 = fsub fast float %3178, %3146
  %3181 = fadd fast float %3180, %3154
  %3182 = fsub fast float %3179, %3147
  %3183 = fadd fast float %3182, %3154
  %3184 = extractvalue %dx.types.CBufRet.f32 %3145, 3
  %3185 = fmul fast float %3181, %3184
  %3186 = fmul fast float %3183, %3184
  %3187 = call float @dx.op.unary.f32(i32 7, float %3185)  ; Saturate(value)
  %3188 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  %3189 = fsub fast float 1.000000e+00, %3187
  %3190 = fsub fast float 1.000000e+00, %3188
  %3191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %28, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3192 = extractvalue %dx.types.ResRet.f32 %3191, 0
  %3193 = fcmp fast ugt float %3192, 0.000000e+00
  br i1 %3193, label %3194, label %3476, !dx.controlflow.hints !97

; <label>:3194                                    ; preds = %3156
  %3195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.f32 %3195, 2
  %3197 = fmul fast float %3196, %3192
  %3198 = extractvalue %dx.types.CBufRet.f32 %3195, 3
  %3199 = fadd fast float %3198, %3197
  %3200 = extractvalue %dx.types.CBufRet.f32 %3161, 2
  %3201 = fadd fast float %3199, %3168
  %3202 = fmul fast float %3174, %3162
  %3203 = call float @dx.op.tertiary.f32(i32 46, float %3177, float %3165, float %3202)  ; FMad(a,b,c)
  %3204 = call float @dx.op.tertiary.f32(i32 46, float %3201, float %3200, float %3203)  ; FMad(a,b,c)
  %3205 = fsub fast float %3204, %3168
  %3206 = fsub fast float %3205, %3141
  %3207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %28, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3208 = extractvalue %dx.types.ResRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.ResRet.f32 %3207, 1
  %3210 = extractvalue %dx.types.ResRet.f32 %3207, 2
  %3211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %28, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3212 = extractvalue %dx.types.ResRet.f32 %3211, 0
  %3213 = extractvalue %dx.types.ResRet.f32 %3211, 1
  %3214 = extractvalue %dx.types.ResRet.f32 %3211, 2
  %3215 = fadd fast float %3212, %3208
  %3216 = fmul fast float %3215, 0x3F847AE140000000
  %3217 = fadd fast float %3213, %3209
  %3218 = fmul fast float %3217, 0x3F847AE140000000
  %3219 = fadd fast float %3214, %3210
  %3220 = fmul fast float %3219, 0x3F847AE140000000
  br label %3476

; <label>:3221                                    ; preds = %3137
  %3222 = and i32 %3135, -3
  %3223 = icmp eq i32 %3222, 1
  br i1 %3223, label %3224, label %3476, !dx.controlflow.hints !98

; <label>:3224                                    ; preds = %3221
  %3225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.f32 %3225, 0
  %3227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3228 = extractvalue %dx.types.CBufRet.f32 %3227, 0
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.CBufRet.f32 %3225, 1
  %3232 = extractvalue %dx.types.CBufRet.f32 %3227, 1
  %3233 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3234 = extractvalue %dx.types.CBufRet.f32 %3225, 3
  %3235 = extractvalue %dx.types.CBufRet.f32 %3227, 3
  %3236 = extractvalue %dx.types.CBufRet.f32 %3229, 3
  %3237 = fadd fast float %3234, %3142
  %3238 = fadd fast float %3235, %3143
  %3239 = fadd fast float %3236, %3144
  %3240 = fmul fast float %3237, %3226
  %3241 = call float @dx.op.tertiary.f32(i32 46, float %3238, float %3228, float %3240)  ; FMad(a,b,c)
  %3242 = call float @dx.op.tertiary.f32(i32 46, float %3239, float %3230, float %3241)  ; FMad(a,b,c)
  %3243 = fmul fast float %3237, %3231
  %3244 = call float @dx.op.tertiary.f32(i32 46, float %3238, float %3232, float %3243)  ; FMad(a,b,c)
  %3245 = call float @dx.op.tertiary.f32(i32 46, float %3239, float %3233, float %3244)  ; FMad(a,b,c)
  %3246 = fsub fast float %3242, %3234
  %3247 = fsub fast float %3245, %3235
  %3248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3249 = extractvalue %dx.types.CBufRet.f32 %3248, 0
  %3250 = extractvalue %dx.types.CBufRet.f32 %3248, 1
  %3251 = extractvalue %dx.types.CBufRet.f32 %3248, 2
  %3252 = extractvalue %dx.types.CBufRet.f32 %3248, 3
  %3253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3254 = extractvalue %dx.types.CBufRet.f32 %3253, 3
  %3255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3256 = extractvalue %dx.types.CBufRet.i32 %3255, 0
  %3257 = extractvalue %dx.types.CBufRet.i32 %3255, 1
  %3258 = udiv i32 %3257, %3256
  %3259 = fsub fast float %3246, %3249
  %3260 = fsub fast float %3247, %3250
  %3261 = call float @dx.op.binary.f32(i32 35, float %3259, float 0.000000e+00)  ; FMax(a,b)
  %3262 = call float @dx.op.binary.f32(i32 35, float %3260, float 0.000000e+00)  ; FMax(a,b)
  %3263 = call float @dx.op.binary.f32(i32 36, float %3261, float %3251)  ; FMin(a,b)
  %3264 = call float @dx.op.binary.f32(i32 36, float %3262, float %3252)  ; FMin(a,b)
  %3265 = add i32 %3256, -1
  %3266 = add i32 %3258, -1
  %3267 = fmul fast float %3263, %3254
  %3268 = fmul fast float %3264, %3254
  %3269 = fptoui float %3267 to i32
  %3270 = fptoui float %3268 to i32
  %3271 = call i32 @dx.op.binary.i32(i32 40, i32 %3269, i32 %3265)  ; UMin(a,b)
  %3272 = call i32 @dx.op.binary.i32(i32 40, i32 %3270, i32 %3266)  ; UMin(a,b)
  %3273 = mul i32 %3272, %3256
  %3274 = add i32 %3273, %3271
  %3275 = shl i32 %3274, 2
  %3276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.i32 %3276, 0
  %3278 = icmp eq i32 %3277, -1
  br i1 %3278, label %3476, label %3279, !dx.controlflow.hints !99

; <label>:3279                                    ; preds = %3224
  %3280 = mul i32 %3277, 148
  %3281 = add i32 %3280, 4
  %3282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = add i32 %3280, 8
  %3285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = add i32 %3280, 36
  %3288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = add i32 %3280, 60
  %3291 = add i32 %3280, 92
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = add i32 %3280, 116
  %3295 = fsub fast float %3246, %3283
  %3296 = fsub fast float %3247, %3286
  %3297 = fmul fast float %3254, %3295
  %3298 = fmul fast float %3254, %3296
  %3299 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3300 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  %3301 = fsub fast float 1.000000e+00, %3300
  %3302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3303 = extractvalue %dx.types.CBufRet.f32 %3302, 3
  %3304 = fadd fast float %3303, 2.000000e+00
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 3
  %3307 = fadd fast float %3304, %3306
  %3308 = add i32 %3293, 0
  %3309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3308, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3310 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3309, i32 0)  ; GetDimensions(handle,mipLevel)
  %3311 = extractvalue %dx.types.Dimensions %3310, 0
  %3312 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3311)  ; FirstbitLo(value)
  %3313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3314 = extractvalue %dx.types.CBufRet.i32 %3313, 1
  %3315 = sub nsw i32 %3314, %3312
  %3316 = sitofp i32 %3315 to float
  %3317 = fsub fast float %3307, %3316
  %3318 = call float @dx.op.binary.f32(i32 35, float %3317, float 0.000000e+00)  ; FMax(a,b)
  %3319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3309, %dx.types.Handle %26, float %3299, float %3301, float %3289, float undef, i32 0, i32 0, i32 undef, float %3318)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3320 = extractvalue %dx.types.ResRet.f32 %3319, 0
  %3321 = fcmp ule float %3320, 0x3FE0101020000000
  %3322 = extractvalue %dx.types.CBufRet.i32 %3313, 0
  %3323 = and i32 %3322, 128
  %3324 = icmp ne i32 %3323, 0
  %3325 = and i1 %3321, %3324
  br i1 %3325, label %3476, label %3326, !dx.controlflow.hints !100

; <label>:3326                                    ; preds = %3279
  %3327 = add i32 %3280, 20
  %3328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.f32 %3328, 0
  %3330 = add i32 %3280, 24
  %3331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = add i32 %3280, 40
  %3334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.f32 %3334, 0
  %3336 = add i32 %3280, 96
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3340 = extractvalue %dx.types.CBufRet.f32 %3339, 2
  %3341 = fmul fast float %3340, %3299
  %3342 = fmul fast float %3340, %3301
  %3343 = extractvalue %dx.types.CBufRet.f32 %3339, 3
  %3344 = fadd fast float %3341, %3343
  %3345 = fadd fast float %3342, %3343
  %3346 = add i32 %3338, 0
  %3347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3346, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3348 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3347, i32 0)  ; GetDimensions(handle,mipLevel)
  %3349 = extractvalue %dx.types.Dimensions %3348, 0
  %3350 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3349)  ; FirstbitLo(value)
  %3351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.i32 %3351, 1
  %3353 = sub nsw i32 %3352, %3350
  %3354 = sitofp i32 %3353 to float
  %3355 = fsub fast float %3304, %3354
  %3356 = call float @dx.op.binary.f32(i32 35, float %3355, float 0.000000e+00)  ; FMax(a,b)
  %3357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3347, %dx.types.Handle %26, float %3344, float %3345, float %3335, float undef, i32 0, i32 0, i32 undef, float %3356)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3358 = extractvalue %dx.types.ResRet.f32 %3357, 0
  %3359 = fmul fast float %3358, %3329
  %3360 = fadd fast float %3359, %3332
  %3361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3362 = extractvalue %dx.types.CBufRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.CBufRet.f32 %3361, 1
  %3364 = extractvalue %dx.types.CBufRet.f32 %3361, 2
  %3365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3366 = extractvalue %dx.types.CBufRet.f32 %3365, 3
  %3367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.f32 %3367, 3
  %3369 = extractvalue %dx.types.CBufRet.f32 %3361, 3
  %3370 = fadd fast float %3366, %3246
  %3371 = fadd fast float %3368, %3247
  %3372 = fadd fast float %3360, %3369
  %3373 = fmul fast float %3370, %3362
  %3374 = call float @dx.op.tertiary.f32(i32 46, float %3371, float %3363, float %3373)  ; FMad(a,b,c)
  %3375 = call float @dx.op.tertiary.f32(i32 46, float %3372, float %3364, float %3374)  ; FMad(a,b,c)
  %3376 = fsub fast float %3375, %3369
  %3377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3378 = extractvalue %dx.types.CBufRet.f32 %3377, 2
  %3379 = fsub fast float %3376, %3378
  %3380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3381 = extractvalue %dx.types.CBufRet.i32 %3380, 0
  %3382 = call i32 @dx.op.binary.i32(i32 40, i32 %3277, i32 %3381)  ; UMin(a,b)
  %3383 = mul i32 %3382, 36
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = add i32 %3383, 4
  %3387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3388 = extractvalue %dx.types.CBufRet.f32 %3387, 0
  %3389 = fmul fast float %3388, %3299
  %3390 = fmul fast float %3388, %3301
  %3391 = extractvalue %dx.types.CBufRet.f32 %3387, 1
  %3392 = fadd fast float %3389, %3391
  %3393 = fadd fast float %3390, %3391
  %3394 = icmp eq i32 %3385, 0
  br i1 %3394, label %3463, label %3395

; <label>:3395                                    ; preds = %3326
  br label %3396

; <label>:3396                                    ; preds = %3453, %3395
  %3397 = phi float [ %3454, %3453 ], [ 0.000000e+00, %3395 ]
  %3398 = phi float [ %3455, %3453 ], [ 0.000000e+00, %3395 ]
  %3399 = phi float [ %3456, %3453 ], [ 0.000000e+00, %3395 ]
  %3400 = phi float [ %3457, %3453 ], [ 0.000000e+00, %3395 ]
  %3401 = phi float [ %3458, %3453 ], [ 0.000000e+00, %3395 ]
  %3402 = phi float [ %3459, %3453 ], [ 0.000000e+00, %3395 ]
  %3403 = phi i32 [ %3460, %3453 ], [ 0, %3395 ]
  %3404 = shl i32 %3403, 2
  %3405 = add i32 %3290, %3404
  %3406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.f32 %3406, 0
  %3408 = add i32 %3294, %3404
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = add i32 %3410, 0
  %3412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3411, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3413 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3412, i32 0)  ; GetDimensions(handle,mipLevel)
  %3414 = extractvalue %dx.types.Dimensions %3413, 0
  %3415 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3414)  ; FirstbitLo(value)
  %3416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.i32 %3416, 1
  %3418 = sub nsw i32 %3417, %3415
  %3419 = sitofp i32 %3418 to float
  %3420 = fsub fast float %3304, %3419
  %3421 = call float @dx.op.binary.f32(i32 35, float %3420, float 0.000000e+00)  ; FMax(a,b)
  %3422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3412, %dx.types.Handle %26, float %3392, float %3393, float %3407, float undef, i32 0, i32 0, i32 undef, float %3421)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = fcmp fast ogt float %3423, 0.000000e+00
  br i1 %3424, label %3425, label %3453, !dx.controlflow.hints !101

; <label>:3425                                    ; preds = %3396
  %3426 = add i32 %3386, %3404
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 32767
  %3430 = mul nuw nsw i32 %3429, 928
  %3431 = add nuw nsw i32 %3430, 48
  %3432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = extractvalue %dx.types.ResRet.f32 %3432, 1
  %3435 = extractvalue %dx.types.ResRet.f32 %3432, 2
  %3436 = add nuw nsw i32 %3430, 60
  %3437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.f32 %3437, 0
  %3439 = extractvalue %dx.types.ResRet.f32 %3437, 1
  %3440 = extractvalue %dx.types.ResRet.f32 %3437, 2
  %3441 = fmul fast float %3433, %3423
  %3442 = fmul fast float %3434, %3423
  %3443 = fmul fast float %3435, %3423
  %3444 = fadd fast float %3441, %3397
  %3445 = fadd fast float %3442, %3398
  %3446 = fadd fast float %3443, %3399
  %3447 = fmul fast float %3438, %3423
  %3448 = fmul fast float %3439, %3423
  %3449 = fmul fast float %3440, %3423
  %3450 = fadd fast float %3447, %3400
  %3451 = fadd fast float %3448, %3401
  %3452 = fadd fast float %3449, %3402
  br label %3453

; <label>:3453                                    ; preds = %3425, %3396
  %3454 = phi float [ %3444, %3425 ], [ %3397, %3396 ]
  %3455 = phi float [ %3445, %3425 ], [ %3398, %3396 ]
  %3456 = phi float [ %3446, %3425 ], [ %3399, %3396 ]
  %3457 = phi float [ %3450, %3425 ], [ %3400, %3396 ]
  %3458 = phi float [ %3451, %3425 ], [ %3401, %3396 ]
  %3459 = phi float [ %3452, %3425 ], [ %3402, %3396 ]
  %3460 = add nuw i32 %3403, 1
  %3461 = icmp eq i32 %3460, %3385
  br i1 %3461, label %3462, label %3396

; <label>:3462                                    ; preds = %3453
  br label %3463

; <label>:3463                                    ; preds = %3462, %3326
  %3464 = phi float [ 0.000000e+00, %3326 ], [ %3454, %3462 ]
  %3465 = phi float [ 0.000000e+00, %3326 ], [ %3455, %3462 ]
  %3466 = phi float [ 0.000000e+00, %3326 ], [ %3456, %3462 ]
  %3467 = phi float [ 0.000000e+00, %3326 ], [ %3457, %3462 ]
  %3468 = phi float [ 0.000000e+00, %3326 ], [ %3458, %3462 ]
  %3469 = phi float [ 0.000000e+00, %3326 ], [ %3459, %3462 ]
  %3470 = fadd fast float %3467, %3464
  %3471 = fmul fast float %3470, 0x3F847AE140000000
  %3472 = fadd fast float %3468, %3465
  %3473 = fmul fast float %3472, 0x3F847AE140000000
  %3474 = fadd fast float %3469, %3466
  %3475 = fmul fast float %3474, 0x3F847AE140000000
  br label %3476

; <label>:3476                                    ; preds = %3463, %3279, %3224, %3221, %3194, %3156, %3131
  %3477 = phi i1 [ true, %3131 ], [ false, %3194 ], [ true, %3156 ], [ false, %3463 ], [ true, %3224 ], [ true, %3279 ], [ true, %3221 ]
  %3478 = phi float [ 0.000000e+00, %3131 ], [ %3206, %3194 ], [ -1.310720e+05, %3156 ], [ %3379, %3463 ], [ -1.310720e+05, %3224 ], [ -1.310720e+05, %3279 ], [ -1.310720e+05, %3221 ]
  %3479 = phi float [ 0.000000e+00, %3131 ], [ %3216, %3194 ], [ 0.000000e+00, %3156 ], [ %3471, %3463 ], [ 0.000000e+00, %3224 ], [ 0.000000e+00, %3279 ], [ 0.000000e+00, %3221 ]
  %3480 = phi float [ 0.000000e+00, %3131 ], [ %3218, %3194 ], [ 0.000000e+00, %3156 ], [ %3473, %3463 ], [ 0.000000e+00, %3224 ], [ 0.000000e+00, %3279 ], [ 0.000000e+00, %3221 ]
  %3481 = phi float [ 0.000000e+00, %3131 ], [ %3220, %3194 ], [ 0.000000e+00, %3156 ], [ %3475, %3463 ], [ 0.000000e+00, %3224 ], [ 0.000000e+00, %3279 ], [ 0.000000e+00, %3221 ]
  br i1 %3477, label %3563, label %3482, !dx.controlflow.hints !102

; <label>:3482                                    ; preds = %3476
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.CBufRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3487 = fsub fast float %164, %3478
  %3488 = fcmp fast ogt float %3487, 0.000000e+00
  %3489 = fmul fast float %3484, 5.120000e+02
  %3490 = fmul fast float %3485, 5.120000e+02
  %3491 = fmul fast float %3486, 5.120000e+02
  %3492 = fadd fast float %3491, %164
  %3493 = fsub fast float %3478, %3492
  %3494 = fmul fast float %3493, 2.000000e+00
  %3495 = fadd fast float %3494, %3492
  %3496 = select i1 %3488, float %3495, float %3492
  %3497 = fsub fast float %3496, %164
  %3498 = call float @dx.op.dot3.f32(i32 55, float %3489, float %3490, float %3497, float %3489, float %3490, float %3497)  ; Dot3(ax,ay,az,bx,by,bz)
  %3499 = call float @dx.op.unary.f32(i32 25, float %3498)  ; Rsqrt(value)
  %3500 = fmul fast float %3489, %3499
  %3501 = fmul fast float %3490, %3499
  %3502 = fmul fast float %3497, %3499
  %3503 = fsub fast float %3478, %164
  %3504 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3503)  ; Dot3(ax,ay,az,bx,by,bz)
  %3505 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3500, float %3501, float %3502)  ; Dot3(ax,ay,az,bx,by,bz)
  %3506 = fdiv fast float 1.000000e+00, %3505
  %3507 = fmul fast float %3506, %3504
  %3508 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3487, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3509 = fcmp fast ogt float %3508, 0.000000e+00
  %3510 = fcmp fast olt float %3508, 0.000000e+00
  %3511 = zext i1 %3509 to i32
  %3512 = zext i1 %3510 to i32
  %3513 = sub nsw i32 %3511, %3512
  %3514 = sitofp i32 %3513 to float
  %3515 = fsub fast float %3496, %3478
  %3516 = call float @dx.op.dot3.f32(i32 55, float %3489, float %3490, float %3515, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3517 = fcmp fast ogt float %3516, 0.000000e+00
  %3518 = fcmp fast olt float %3516, 0.000000e+00
  %3519 = zext i1 %3517 to i32
  %3520 = zext i1 %3518 to i32
  %3521 = sub nsw i32 %3519, %3520
  %3522 = sitofp i32 %3521 to float
  %3523 = fcmp fast une float %3514, %3522
  br i1 %3523, label %3524, label %3534, !dx.controlflow.hints !103

; <label>:3524                                    ; preds = %3482
  %3525 = fmul fast float %3502, %3507
  %3526 = fmul fast float %3507, %3501
  %3527 = fmul fast float %3507, %3500
  %3528 = fmul fast float %3527, %3527
  %3529 = fmul fast float %3526, %3526
  %3530 = fadd fast float %3528, %3529
  %3531 = fmul fast float %3525, %3525
  %3532 = fadd fast float %3530, %3531
  %3533 = call float @dx.op.unary.f32(i32 24, float %3532)  ; Sqrt(value)
  br label %3544

; <label>:3534                                    ; preds = %3482
  %3535 = icmp slt i32 %3513, 0
  br i1 %3535, label %3536, label %3544, !dx.controlflow.hints !104

; <label>:3536                                    ; preds = %3534
  %3537 = fsub fast float %164, %3496
  %3538 = fmul fast float %3489, %3489
  %3539 = fmul fast float %3490, %3490
  %3540 = fadd fast float %3538, %3539
  %3541 = fmul fast float %3537, %3537
  %3542 = fadd fast float %3540, %3541
  %3543 = call float @dx.op.unary.f32(i32 24, float %3542)  ; Sqrt(value)
  br label %3544

; <label>:3544                                    ; preds = %3536, %3534, %3524
  %3545 = phi float [ %3533, %3524 ], [ %3543, %3536 ], [ 0.000000e+00, %3534 ]
  %3546 = fsub fast float -0.000000e+00, %3545
  %3547 = select i1 %3488, float -0.000000e+00, float %3546
  %3548 = fmul fast float %3479, 0x3FF7154760000000
  %3549 = fmul fast float %3548, %3547
  %3550 = fmul fast float %3480, 0x3FF7154760000000
  %3551 = fmul fast float %3550, %3547
  %3552 = fmul fast float %3481, 0x3FF7154760000000
  %3553 = fmul fast float %3552, %3547
  %3554 = call float @dx.op.unary.f32(i32 21, float %3549)  ; Exp(value)
  %3555 = call float @dx.op.unary.f32(i32 21, float %3551)  ; Exp(value)
  %3556 = call float @dx.op.unary.f32(i32 21, float %3553)  ; Exp(value)
  %3557 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  %3558 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3559 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3560 = fmul fast float %3557, %3124
  %3561 = fmul fast float %3558, %3124
  %3562 = fmul fast float %3559, %3124
  br label %3563

; <label>:3563                                    ; preds = %3544, %3476, %3123
  %3564 = phi float [ %3560, %3544 ], [ %3124, %3476 ], [ %3124, %3123 ]
  %3565 = phi float [ %3561, %3544 ], [ %3124, %3476 ], [ %3124, %3123 ]
  %3566 = phi float [ %3562, %3544 ], [ %3124, %3476 ], [ %3124, %3123 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %109, i32 %110, i32 %87, float %3564, float %3565, float %3566, float %3564, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3567

; <label>:3567                                    ; preds = %3563, %111
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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

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
!dx.entryPoints = !{!45}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !33, !35, !38}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32}
!6 = !{i32 0, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 8, i32 1, i32 3, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{i32 4, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 16, i32 1, i32 7, i32 0, !11}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 24, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 19, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 20, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
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
!32 = !{i32 23, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!33 = !{!34}
!34 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!35 = !{!36, !37}
!36 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 1, %hostlayout.SunvisConstants* undef, !"", i32 0, i32 1, i32 1, i32 176, null}
!38 = !{!39, !40, !41, !42, !43, !44}
!39 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!40 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!41 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!42 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!43 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!44 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!45 = !{void ()* @cs_sunvis, !"cs_sunvis", null, !4, !46}
!46 = !{i32 0, i64 272, i32 4, !47}
!47 = !{i32 8, i32 8, i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = !{!52, !52, i64 0}
!52 = !{!"int", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
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
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
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
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}

